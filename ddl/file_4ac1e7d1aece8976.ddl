// file .... ddl_4ac1e7d1aece8976

#redirect hash_7efbaff4a5cb549b;

version hash_d1a4c33f37e092ec {
    // enums ..... 14 (0xe)
    // structs ... 9 (0x9)
    // header bit size .. 5496 (0x1578)
    // header byte size . 687 (0x2af)

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
    struct hash_1c86958671ff27fd {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_50ab8b7df567cd2a;
    };

    // bitSize: 0x108, members: 6
    struct lootcontracts {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint xp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint contractid;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:3 contractgamemode;
        // offset: 0x48, bitSize: 0x40(0x8 Byte(s))
        xhash contracthash;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 progress;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 target;
    };

    // bitSize: 0x10, members: 3
    struct hash_33944d215cff6222 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_174d79c341ec2c6c;
        // offset: 0x8, bitSize: 0x1
        bool hash_2401d7a2dc706a6c;
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

    // idx 0x5 members: 0xcb
    enum hash_10d50fe10481423c {
        ww_mega_barrel_fullauto_blazer_beam_t9, // 0x0
        tr_fastburst_t9, // 0x1
        napalm_strike_zm, // 0x2
        ability_smart_cover, // 0x3
        dart, // 0x4
        ultimate_turret, // 0x5
        hash_5a7fd1af4a1d5c9, // 0x6
        ar_season6_t9, // 0x7
        hash_7a083f7ba43fa06, // 0x8
        lmg_accurate_t9, // 0x9
        melee_etool_t9, // 0xa
        ray_gun_mk2z, // 0xb
        ray_gun_mk2y, // 0xc
        ray_gun_mk2x, // 0xd
        sniper_powersemi_t9, // 0xe
        eq_wraith_fire, // 0xf
        counteruav, // 0x10
        missile_turret, // 0x11
        eq_shroud, // 0x12
        gadget_supplypod, // 0x13
        ar_damage_t9, // 0x14
        homunculus, // 0x15
        spknifeork, // 0x16
        shotgun_leveraction_t9, // 0x17
        melee_bowie, // 0x18
        ww_mega_barrel_fullauto_diffusion_beam_t9, // 0x19
        ww_random_ray_gun1, // 0x1a
        recon_plane, // 0x1b
        sig_buckler_dw, // 0x1c
        hash_18696150427f2efb, // 0x1d
        gadget_vision_pulse, // 0x1e
        waterballoon, // 0x1f
        special_crossbow_t9, // 0x20
        weapon_armor, // 0x21
        eq_arm_blade, // 0x22
        ww_blundergat_t8, // 0x23
        gadget_heat_wave, // 0x24
        eq_localheal, // 0x25
        hoverjet, // 0x26
        nightingale, // 0x27
        pistol_fullauto_t9, // 0x28
        remote_missile, // 0x29
        gadget_smart_cover, // 0x2a
        willy_pete, // 0x2b
        eq_emp_grenade, // 0x2c
        special_grenadelauncher_t9, // 0x2d
        melee_machete_t9, // 0x2e
        launcher_freefire_t9, // 0x2f
        ar_accurate_t9, // 0x30
        sig_lmg, // 0x31
        ww_crossbow_impaler_t8, // 0x32
        ar_soviet_t9, // 0x33
        ww_freezegun_t8, // 0x34
        frag_grenade, // 0x35
        smg_cqb_t9, // 0x36
        knife_loadout, // 0x37
        feature_default_class_1, // 0x38
        feature_default_class_3, // 0x39
        feature_default_class_2, // 0x3a
        feature_default_class_5, // 0x3b
        feature_default_class_4, // 0x3c
        feature_default_class_6, // 0x3d
        hash_28fdaa999c8aa3af, // 0x3e
        spy_wanted_order, // 0x3f
        swat_team, // 0x40
        land_mine, // 0x41
        hatchet, // 0x42
        supplydrop_marker, // 0x43
        mute_smoke, // 0x44
        hash_2ea46ca74ebdfcac, // 0x45
        smg_capacity_t9, // 0x46
        chopper_gunner, // 0x47
        melee_baseballbat_t9, // 0x48
        null_offhand_secondary, // 0x49
        gadget_health_regen, // 0x4a
        hash_31be8125c7d0f273, // 0x4b
        pistol_shotgun_t9, // 0x4c
        listening_device, // 0x4d
        spork_alcatraz, // 0x4e
        drone_squadron, // 0x4f
        pistol_semiauto_t9, // 0x50
        melee_mace_t9, // 0x51
        null_offhand_primary, // 0x52
        smg_burst_t9, // 0x53
        hash_3507beb47a6b634e, // 0x54
        pistol_revolver_t9, // 0x55
        eq_stimshot, // 0x56
        ww_mega_barrel_fullauto_copycat_t9, // 0x57
        overwatch_helicopter, // 0x58
        gadget_jammer, // 0x59
        hash_3ab58e40011df941, // 0x5a
        melee_coldwar_t9_dw, // 0x5b
        launcher_standard_t9, // 0x5c
        melee_sai_t9_dw, // 0x5d
        melee_bowie_bloody, // 0x5e
        eq_sticky_grenade, // 0x5f
        special_ballisticknife_t9_dw, // 0x60
        hash_3f47e8be065a0dc0, // 0x61
        ww_ieu_shockwave_t9, // 0x62
        melee_sledgehammer_t9, // 0x63
        sig_blade, // 0x64
        pistol_burst_t9, // 0x65
        hash_4385cf507401820f, // 0x66
        napalm_strike, // 0x67
        sniper_accurate_t9, // 0x68
        ar_fastfire_t9, // 0x69
        melee_wakizashi_t9, // 0x6a
        hero_pineapplegun, // 0x6b
        hash_48206b17d50533c2, // 0x6c
        sniper_quickscope_t9, // 0x6d
        ability_dog, // 0x6e
        straferun, // 0x6f
        eq_seeker_mine, // 0x70
        ww_crossbow_t8, // 0x71
        recon_car, // 0x72
        hash_4b1854c2ff5135b2, // 0x73
        snowball, // 0x74
        feature_custom_class_9, // 0x75
        feature_custom_class_8, // 0x76
        feature_custom_class_3, // 0x77
        feature_custom_class_2, // 0x78
        feature_custom_class_1, // 0x79
        feature_custom_class_7, // 0x7a
        feature_custom_class_6, // 0x7b
        feature_custom_class_5, // 0x7c
        feature_custom_class_4, // 0x7d
        uav, // 0x7e
        eq_concertina_wire, // 0x7f
        feature_custom_class_10, // 0x80
        ar_slowhandling_t9, // 0x81
        eq_acid_bomb, // 0x82
        gadget_spawnbeacon, // 0x83
        ac130, // 0x84
        tr_precisionsemi_t9, // 0x85
        helicopter_comlink, // 0x86
        gadget_armor, // 0x87
        tr_damagesemi_t9, // 0x88
        feature_cac, // 0x89
        tomahawk_t8, // 0x8a
        shotgun_pump_t9, // 0x8b
        gadget_health_boost, // 0x8c
        spectre_grenade, // 0x8d
        eq_flash_grenade, // 0x8e
        hash_55c23f24d806e3a6, // 0x8f
        bare_hands, // 0x90
        ar_slowfire_t9, // 0x91
        tr_powerburst_t9, // 0x92
        trophy_system, // 0x93
        ray_gun_mk2, // 0x94
        tr_longburst_t9, // 0x95
        nuke, // 0x96
        ww_ray_rifle_t9, // 0x97
        smg_standard_t9, // 0x98
        sig_bow_flame, // 0x99
        eq_slow_grenade, // 0x9a
        special_nailgun_t9, // 0x9b
        smg_accurate_t9, // 0x9c
        hash_603c083704cefb0c, // 0x9d
        jetfighter, // 0x9e
        smg_heavy_t9, // 0x9f
        tear_gas, // 0xa0
        eq_molotov, // 0xa1
        smg_fastfire_t9, // 0xa2
        lmg_light_t9, // 0xa3
        melee_scythe_t9, // 0xa4
        ai_tank_marker, // 0xa5
        gadget_cleanse, // 0xa6
        ar_british_t9, // 0xa7
        hero_flamethrower, // 0xa8
        melee_battleaxe_t9, // 0xa9
        ww_axe_gun_melee_t9, // 0xaa
        sniper_standard_t9, // 0xab
        melee_cane_t9, // 0xac
        smg_spray_t9, // 0xad
        hero_annihilator, // 0xae
        ar_fasthandling_t9, // 0xaf
        ar_mobility_t9, // 0xb0
        planemortar, // 0xb1
        sniper_cannon_t9, // 0xb2
        shotgun_semiauto_t9, // 0xb3
        lmg_fastfire_t9, // 0xb4
        ar_standard_t9, // 0xb5
        weapon_null, // 0xb6
        satchel_charge, // 0xb7
        default_specialist_equipment, // 0xb8
        gadget_health_regen_squad, // 0xb9
        hash_76b56e7e0b3b7aac, // 0xba
        eq_decoy_grenade, // 0xbb
        smg_season6_t9, // 0xbc
        smg_semiauto_t9, // 0xbd
        ray_gun, // 0xbe
        hash_788c96e19cc7a46e, // 0xbf
        claymore, // 0xc0
        smg_handling_t9, // 0xc1
        cymbal_monkey, // 0xc2
        shotgun_fullauto_t9, // 0xc3
        smg_flechette_t9, // 0xc4
        hash_7ab3f9a730359659, // 0xc5
        gadget_icepick, // 0xc6
        ww_mega_barrel_fullauto_micro_missile_t9, // 0xc7
        basketball, // 0xc8
        gadget_camo, // 0xc9
        lmg_slowfire_t9 // 0xca
    };

    // idx 0x6 members: 0x61
    enum hash_4b8d95aacf149fb9 {
        ww_mega_barrel_fullauto_blazer_beam_t9, // 0x0
        tr_fastburst_t9, // 0x1
        ar_season6_t9, // 0x2
        lmg_accurate_t9, // 0x3
        melee_etool_t9, // 0x4
        ray_gun_mk2z, // 0x5
        ray_gun_mk2y, // 0x6
        ray_gun_mk2x, // 0x7
        sniper_powersemi_t9, // 0x8
        hash_c21b61b32a5d972, // 0x9
        ar_damage_t9, // 0xa
        homunculus, // 0xb
        spknifeork, // 0xc
        shotgun_leveraction_t9, // 0xd
        melee_bowie, // 0xe
        ww_mega_barrel_fullauto_diffusion_beam_t9, // 0xf
        ww_random_ray_gun1, // 0x10
        hash_165cf52ce418f5a1, // 0x11
        hash_18696150427f2efb, // 0x12
        special_crossbow_t9, // 0x13
        ww_blundergat_t8, // 0x14
        pistol_fullauto_t9, // 0x15
        special_grenadelauncher_t9, // 0x16
        melee_machete_t9, // 0x17
        launcher_freefire_t9, // 0x18
        ar_accurate_t9, // 0x19
        ww_crossbow_impaler_t8, // 0x1a
        ar_soviet_t9, // 0x1b
        ww_freezegun_t8, // 0x1c
        smg_cqb_t9, // 0x1d
        knife_loadout, // 0x1e
        hash_28fdaa999c8aa3af, // 0x1f
        hash_2ea46ca74ebdfcac, // 0x20
        smg_capacity_t9, // 0x21
        melee_baseballbat_t9, // 0x22
        pistol_shotgun_t9, // 0x23
        spork_alcatraz, // 0x24
        pistol_semiauto_t9, // 0x25
        melee_mace_t9, // 0x26
        smg_burst_t9, // 0x27
        pistol_revolver_t9, // 0x28
        ww_mega_barrel_fullauto_copycat_t9, // 0x29
        melee_coldwar_t9_dw, // 0x2a
        launcher_standard_t9, // 0x2b
        melee_sai_t9_dw, // 0x2c
        melee_bowie_bloody, // 0x2d
        special_ballisticknife_t9_dw, // 0x2e
        hash_3f47e8be065a0dc0, // 0x2f
        ww_ieu_shockwave_t9, // 0x30
        melee_sledgehammer_t9, // 0x31
        pistol_burst_t9, // 0x32
        hash_4385cf507401820f, // 0x33
        sniper_accurate_t9, // 0x34
        ar_fastfire_t9, // 0x35
        melee_wakizashi_t9, // 0x36
        hash_48206b17d50533c2, // 0x37
        sniper_quickscope_t9, // 0x38
        ww_crossbow_t8, // 0x39
        ar_slowhandling_t9, // 0x3a
        tr_precisionsemi_t9, // 0x3b
        tr_damagesemi_t9, // 0x3c
        shotgun_pump_t9, // 0x3d
        hash_55c23f24d806e3a6, // 0x3e
        ar_slowfire_t9, // 0x3f
        tr_powerburst_t9, // 0x40
        ray_gun_mk2, // 0x41
        tr_longburst_t9, // 0x42
        ww_ray_rifle_t9, // 0x43
        smg_standard_t9, // 0x44
        special_nailgun_t9, // 0x45
        smg_accurate_t9, // 0x46
        hash_603c083704cefb0c, // 0x47
        smg_heavy_t9, // 0x48
        smg_fastfire_t9, // 0x49
        lmg_light_t9, // 0x4a
        melee_scythe_t9, // 0x4b
        ar_british_t9, // 0x4c
        melee_battleaxe_t9, // 0x4d
        ww_axe_gun_melee_t9, // 0x4e
        sniper_standard_t9, // 0x4f
        melee_cane_t9, // 0x50
        smg_spray_t9, // 0x51
        ar_fasthandling_t9, // 0x52
        ar_mobility_t9, // 0x53
        sniper_cannon_t9, // 0x54
        shotgun_semiauto_t9, // 0x55
        lmg_fastfire_t9, // 0x56
        ar_standard_t9, // 0x57
        smg_season6_t9, // 0x58
        smg_semiauto_t9, // 0x59
        ray_gun, // 0x5a
        smg_handling_t9, // 0x5b
        shotgun_fullauto_t9, // 0x5c
        smg_flechette_t9, // 0x5d
        ww_mega_barrel_fullauto_micro_missile_t9, // 0x5e
        basketball, // 0x5f
        lmg_slowfire_t9 // 0x60
    };

    // idx 0x7 members: 0x13
    enum hash_7493d39e2637c1e7 {
        bonuscard, // 0x0
        hero, // 0x1
        feature, // 0x2
        weapon_special, // 0x3
        weapon_knife, // 0x4
        character, // 0x5
        miscweapon, // 0x6
        weapon_pistol, // 0x7
        killstreak, // 0x8
        weapon_sniper, // 0x9
        talent, // 0xa
        weapon_launcher, // 0xb
        weapon_grenade, // 0xc
        weapon_lmg, // 0xd
        weapon_tactical, // 0xe
        weapon_smg, // 0xf
        hash_7b68172df6035672, // 0x10
        weapon_cqb, // 0x11
        weapon_assault // 0x12
    };

    // idx 0x8 members: 0x20
    enum hash_d5731f85b8cf294 {
        napalm_strike_zm, // 0x0
        dart, // 0x1
        ultimate_turret, // 0x2
        counteruav, // 0x3
        recon_plane, // 0x4
        weapon_armor, // 0x5
        hoverjet, // 0x6
        remote_missile, // 0x7
        spy_med_pack, // 0x8
        sig_lmg, // 0x9
        spy_wanted_order, // 0xa
        swat_team, // 0xb
        supplydrop_marker, // 0xc
        chopper_gunner, // 0xd
        drone_squadron, // 0xe
        overwatch_helicopter, // 0xf
        napalm_strike, // 0x10
        hero_pineapplegun, // 0x11
        ability_dog, // 0x12
        straferun, // 0x13
        recon_car, // 0x14
        uav, // 0x15
        ac130, // 0x16
        helicopter_comlink, // 0x17
        nuke, // 0x18
        sig_bow_flame, // 0x19
        jetfighter, // 0x1a
        ai_tank_marker, // 0x1b
        helicopter_guard, // 0x1c
        hero_flamethrower, // 0x1d
        hero_annihilator, // 0x1e
        planemortar // 0x1f
    };

    // idx 0x9 members: 0x36
    enum hash_507792265be6dcc4 {
        ability_smart_cover, // 0x0
        hash_7a083f7ba43fa06, // 0x1
        eq_wraith_fire, // 0x2
        missile_turret, // 0x3
        eq_shroud, // 0x4
        gadget_supplypod, // 0x5
        gadget_vision_pulse, // 0x6
        waterballoon, // 0x7
        eq_arm_blade, // 0x8
        gadget_heat_wave, // 0x9
        eq_localheal, // 0xa
        gadget_medicalinjectiongun, // 0xb
        nightingale, // 0xc
        gadget_smart_cover, // 0xd
        willy_pete, // 0xe
        eq_emp_grenade, // 0xf
        frag_grenade, // 0x10
        land_mine, // 0x11
        hatchet, // 0x12
        gadget_health_regen, // 0x13
        listening_device, // 0x14
        hash_3507beb47a6b634e, // 0x15
        trophy_system_spy, // 0x16
        eq_stimshot, // 0x17
        gadget_jammer, // 0x18
        hash_3ab58e40011df941, // 0x19
        eq_sticky_grenade, // 0x1a
        eq_seeker_mine, // 0x1b
        hash_4b1854c2ff5135b2, // 0x1c
        snowball, // 0x1d
        eq_concertina_wire, // 0x1e
        eq_acid_bomb, // 0x1f
        gadget_spawnbeacon, // 0x20
        gadget_armor, // 0x21
        tomahawk_t8, // 0x22
        gadget_health_boost, // 0x23
        spectre_grenade, // 0x24
        eq_flash_grenade, // 0x25
        trophy_system, // 0x26
        eq_slow_grenade, // 0x27
        tear_gas, // 0x28
        eq_molotov, // 0x29
        gadget_cleanse, // 0x2a
        satchel_charge, // 0x2b
        default_specialist_equipment, // 0x2c
        gadget_health_regen_squad, // 0x2d
        hash_76b56e7e0b3b7aac, // 0x2e
        eq_decoy_grenade, // 0x2f
        hash_788c96e19cc7a46e, // 0x30
        claymore, // 0x31
        cymbal_monkey, // 0x32
        hash_7ab3f9a730359659, // 0x33
        gadget_icepick, // 0x34
        gadget_camo // 0x35
    };

    // idx 0xa members: 0x3c
    enum hash_1e2de876fb880be2 {
        quickdraw, // 0x0
        acog, // 0x1
        dw, // 0x2
        ir, // 0x3
        barrel2, // 0x4
        mixunder2, // 0x5
        fastreload, // 0x6
        heavy, // 0x7
        steadyaim, // 0x8
        stalker, // 0x9
        barrel, // 0xa
        mixstock, // 0xb
        smoothzoom2, // 0xc
        mixclip2, // 0xd
        reflex4, // 0xe
        reflex3, // 0xf
        reflex2, // 0x10
        stalker2, // 0x11
        extclip2, // 0x12
        tactical, // 0x13
        steadyaim2, // 0x14
        mixclip, // 0x15
        light, // 0x16
        speedgrip2, // 0x17
        mixhandle, // 0x18
        mixunder, // 0x19
        mixbarrel2, // 0x1a
        mixstock2, // 0x1b
        reddot, // 0x1c
        handle, // 0x1d
        mixmuzzle2, // 0x1e
        extclip, // 0x1f
        light2, // 0x20
        heavy2, // 0x21
        holo, // 0x22
        elo, // 0x23
        fastreload2, // 0x24
        scope3x, // 0x25
        scope4x, // 0x26
        mixhandle2, // 0x27
        compensator, // 0x28
        mixbody, // 0x29
        quickdraw2, // 0x2a
        suppressed2, // 0x2b
        speedgrip, // 0x2c
        sprintout2, // 0x2d
        suppressed, // 0x2e
        sprintout, // 0x2f
        grip2, // 0x30
        mixmuzzle, // 0x31
        handle2, // 0x32
        compensator2, // 0x33
        mixbody2, // 0x34
        dualoptic, // 0x35
        grip, // 0x36
        smoothzoom, // 0x37
        reflex, // 0x38
        mixbarrel, // 0x39
        elo3, // 0x3a
        elo2 // 0x3b
    };

    // idx 0xb members: 0x3e
    enum hash_48d8d533750ed177 {
        talent_gungho, // 0x0
        talent_phdslider, // 0x1
        talent_engineer, // 0x2
        talent_coldblooded, // 0x3
        hash_9fb2125b3e673e5, // 0x4
        gear_armor, // 0x5
        hash_cd70e712f842296, // 0x6
        talent_tracker, // 0x7
        hash_101808cdfcd390d6, // 0x8
        hash_128256155e755170, // 0x9
        hash_16cfc7f70dbd8712, // 0xa
        talent_flakjacket, // 0xb
        talent_logistics, // 0xc
        talent_looter, // 0xd
        gadget_medicalinjectiongun, // 0xe
        hash_1d8863d0b864a48b, // 0xf
        hash_1db03fa9862ba330, // 0x10
        hash_20290a682a974c94, // 0x11
        talent_dexterity, // 0x12
        hash_249e75e962ea5275, // 0x13
        talent_resistance, // 0x14
        gear_awareness, // 0x15
        hash_2c3a32e6e2afd1f2, // 0x16
        hash_311283e3107dec74, // 0x17
        talent_lightweight, // 0x18
        talent_awareness, // 0x19
        gear_equipmentcharge, // 0x1a
        talent_phdslider_1, // 0x1b
        hash_38c08136902fd553, // 0x1c
        hash_39045b0020cc3e00, // 0x1d
        hash_3c323c7819b10b4d, // 0x1e
        hash_3c60422123a9075b, // 0x1f
        talent_scavenger, // 0x20
        talent_skulker, // 0x21
        gear_scorestreakcharge, // 0x22
        talent_ghost, // 0x23
        hash_4f80a2c3398e97c9, // 0x24
        talent_elemental_pop, // 0x25
        talent_brawler, // 0x26
        talent_quartermaster, // 0x27
        hash_59dbe7f72baaa0f0, // 0x28
        hash_59dbe8f72baaa2a3, // 0x29
        hash_59dbecf72baaa96f, // 0x2a
        hash_59dbedf72baaab22, // 0x2b
        hash_59dbeef72baaacd5, // 0x2c
        hash_5c80935e7a319f21, // 0x2d
        talent_paranoia, // 0x2e
        talent_teamlink, // 0x2f
        talent_deadsilence, // 0x30
        hash_646fc27884bdaa02, // 0x31
        gear_medicalinjectiongun, // 0x32
        hash_661cd0d6fb33878c, // 0x33
        talent_spycraft, // 0x34
        hash_7321f9058ee65217, // 0x35
        hash_7716cb3888f5dd8a, // 0x36
        talent_elemental_pop_2, // 0x37
        talent_elemental_pop_3, // 0x38
        talent_elemental_pop_1, // 0x39
        talent_elemental_pop_4, // 0x3a
        talent_elemental_pop_5, // 0x3b
        hash_7ca561e40dc3c5de, // 0x3c
        hash_7f79d3ba6ed1a1d7 // 0x3d
    };

    // idx 0xc members: 0x16
    enum hash_66db207c660e33f3 {
        bonuscard_overkill, // 0x0
        bonuscard_underkill, // 0x1
        bonuscard_perk_1_greed, // 0x2
        talent_mulekick, // 0x3
        talent_deathperception, // 0x4
        talent_mulekick_1, // 0x5
        talent_mulekick_2, // 0x6
        talent_mulekick_3, // 0x7
        talent_mulekick_4, // 0x8
        talent_mulekick_5, // 0x9
        talent_phdslider_4, // 0xa
        talent_phdslider_5, // 0xb
        talent_phdslider_2, // 0xc
        talent_phdslider_3, // 0xd
        hash_4a12859000892dda, // 0xe
        hash_639ebbcda56447e7, // 0xf
        bonuscard_primary_gunfighter, // 0x10
        talent_deathperception_2, // 0x11
        talent_deathperception_3, // 0x12
        talent_deathperception_1, // 0x13
        talent_deathperception_4, // 0x14
        talent_deathperception_5 // 0x15
    };

    // idx 0xd members: 0x11f
    enum hash_1acf39b1d1bee1d5 {
        bonuscard_overkill, // 0x0
        ww_mega_barrel_fullauto_blazer_beam_t9, // 0x1
        talent_gungho, // 0x2
        talent_phdslider, // 0x3
        tr_fastburst_t9, // 0x4
        talent_engineer, // 0x5
        napalm_strike_zm, // 0x6
        ability_smart_cover, // 0x7
        dart, // 0x8
        ultimate_turret, // 0x9
        hash_5a7fd1af4a1d5c9, // 0xa
        ar_season6_t9, // 0xb
        hash_7a083f7ba43fa06, // 0xc
        talent_coldblooded, // 0xd
        lmg_accurate_t9, // 0xe
        melee_etool_t9, // 0xf
        ray_gun_mk2z, // 0x10
        ray_gun_mk2y, // 0x11
        ray_gun_mk2x, // 0x12
        hash_9fb2125b3e673e5, // 0x13
        sniper_powersemi_t9, // 0x14
        eq_wraith_fire, // 0x15
        gear_armor, // 0x16
        counteruav, // 0x17
        hash_cd70e712f842296, // 0x18
        talent_tracker, // 0x19
        missile_turret, // 0x1a
        eq_shroud, // 0x1b
        gadget_supplypod, // 0x1c
        hash_101808cdfcd390d6, // 0x1d
        ar_damage_t9, // 0x1e
        homunculus, // 0x1f
        spknifeork, // 0x20
        shotgun_leveraction_t9, // 0x21
        melee_bowie, // 0x22
        hash_128256155e755170, // 0x23
        ww_mega_barrel_fullauto_diffusion_beam_t9, // 0x24
        ww_random_ray_gun1, // 0x25
        bonuscard_underkill, // 0x26
        recon_plane, // 0x27
        hash_16cfc7f70dbd8712, // 0x28
        bonuscard_perk_1_greed, // 0x29
        sig_buckler_dw, // 0x2a
        talent_mulekick, // 0x2b
        talent_flakjacket, // 0x2c
        hash_18696150427f2efb, // 0x2d
        gadget_vision_pulse, // 0x2e
        waterballoon, // 0x2f
        special_crossbow_t9, // 0x30
        weapon_armor, // 0x31
        eq_arm_blade, // 0x32
        talent_logistics, // 0x33
        ww_blundergat_t8, // 0x34
        gadget_heat_wave, // 0x35
        eq_localheal, // 0x36
        hoverjet, // 0x37
        talent_looter, // 0x38
        gadget_medicalinjectiongun, // 0x39
        hash_1d8863d0b864a48b, // 0x3a
        hash_1db03fa9862ba330, // 0x3b
        nightingale, // 0x3c
        talent_deathperception, // 0x3d
        pistol_fullauto_t9, // 0x3e
        remote_missile, // 0x3f
        gadget_smart_cover, // 0x40
        hash_20290a682a974c94, // 0x41
        willy_pete, // 0x42
        eq_emp_grenade, // 0x43
        special_grenadelauncher_t9, // 0x44
        melee_machete_t9, // 0x45
        talent_dexterity, // 0x46
        launcher_freefire_t9, // 0x47
        hash_249e75e962ea5275, // 0x48
        ar_accurate_t9, // 0x49
        sig_lmg, // 0x4a
        ww_crossbow_impaler_t8, // 0x4b
        ar_soviet_t9, // 0x4c
        ww_freezegun_t8, // 0x4d
        frag_grenade, // 0x4e
        smg_cqb_t9, // 0x4f
        knife_loadout, // 0x50
        feature_default_class_1, // 0x51
        feature_default_class_3, // 0x52
        feature_default_class_2, // 0x53
        feature_default_class_5, // 0x54
        feature_default_class_4, // 0x55
        feature_default_class_6, // 0x56
        hash_28fdaa999c8aa3af, // 0x57
        talent_resistance, // 0x58
        spy_wanted_order, // 0x59
        swat_team, // 0x5a
        gear_awareness, // 0x5b
        land_mine, // 0x5c
        hatchet, // 0x5d
        hash_2c3a32e6e2afd1f2, // 0x5e
        talent_mulekick_1, // 0x5f
        talent_mulekick_2, // 0x60
        talent_mulekick_3, // 0x61
        talent_mulekick_4, // 0x62
        talent_mulekick_5, // 0x63
        supplydrop_marker, // 0x64
        mute_smoke, // 0x65
        hash_2ea46ca74ebdfcac, // 0x66
        smg_capacity_t9, // 0x67
        chopper_gunner, // 0x68
        melee_baseballbat_t9, // 0x69
        hash_311283e3107dec74, // 0x6a
        null_offhand_secondary, // 0x6b
        gadget_health_regen, // 0x6c
        hash_31be8125c7d0f273, // 0x6d
        pistol_shotgun_t9, // 0x6e
        listening_device, // 0x6f
        talent_lightweight, // 0x70
        talent_awareness, // 0x71
        spork_alcatraz, // 0x72
        drone_squadron, // 0x73
        gear_equipmentcharge, // 0x74
        talent_phdslider_4, // 0x75
        talent_phdslider_5, // 0x76
        talent_phdslider_2, // 0x77
        talent_phdslider_3, // 0x78
        talent_phdslider_1, // 0x79
        pistol_semiauto_t9, // 0x7a
        melee_mace_t9, // 0x7b
        null_offhand_primary, // 0x7c
        smg_burst_t9, // 0x7d
        hash_3507beb47a6b634e, // 0x7e
        pistol_revolver_t9, // 0x7f
        eq_stimshot, // 0x80
        ww_mega_barrel_fullauto_copycat_t9, // 0x81
        hash_38c08136902fd553, // 0x82
        hash_39045b0020cc3e00, // 0x83
        overwatch_helicopter, // 0x84
        gadget_jammer, // 0x85
        hash_3ab58e40011df941, // 0x86
        melee_coldwar_t9_dw, // 0x87
        launcher_standard_t9, // 0x88
        melee_sai_t9_dw, // 0x89
        hash_3c323c7819b10b4d, // 0x8a
        hash_3c60422123a9075b, // 0x8b
        melee_bowie_bloody, // 0x8c
        eq_sticky_grenade, // 0x8d
        special_ballisticknife_t9_dw, // 0x8e
        hash_3f47e8be065a0dc0, // 0x8f
        ww_ieu_shockwave_t9, // 0x90
        melee_sledgehammer_t9, // 0x91
        sig_blade, // 0x92
        talent_scavenger, // 0x93
        pistol_burst_t9, // 0x94
        hash_4385cf507401820f, // 0x95
        napalm_strike, // 0x96
        sniper_accurate_t9, // 0x97
        ar_fastfire_t9, // 0x98
        melee_wakizashi_t9, // 0x99
        hero_pineapplegun, // 0x9a
        talent_skulker, // 0x9b
        hash_48206b17d50533c2, // 0x9c
        sniper_quickscope_t9, // 0x9d
        ability_dog, // 0x9e
        straferun, // 0x9f
        hash_4a12859000892dda, // 0xa0
        eq_seeker_mine, // 0xa1
        ww_crossbow_t8, // 0xa2
        recon_car, // 0xa3
        hash_4b1854c2ff5135b2, // 0xa4
        snowball, // 0xa5
        feature_custom_class_9, // 0xa6
        feature_custom_class_8, // 0xa7
        feature_custom_class_3, // 0xa8
        feature_custom_class_2, // 0xa9
        feature_custom_class_1, // 0xaa
        feature_custom_class_7, // 0xab
        feature_custom_class_6, // 0xac
        feature_custom_class_5, // 0xad
        feature_custom_class_4, // 0xae
        uav, // 0xaf
        eq_concertina_wire, // 0xb0
        gear_scorestreakcharge, // 0xb1
        feature_custom_class_10, // 0xb2
        ar_slowhandling_t9, // 0xb3
        eq_acid_bomb, // 0xb4
        gadget_spawnbeacon, // 0xb5
        ac130, // 0xb6
        talent_ghost, // 0xb7
        hash_4f80a2c3398e97c9, // 0xb8
        tr_precisionsemi_t9, // 0xb9
        helicopter_comlink, // 0xba
        gadget_armor, // 0xbb
        tr_damagesemi_t9, // 0xbc
        feature_cac, // 0xbd
        talent_elemental_pop, // 0xbe
        tomahawk_t8, // 0xbf
        shotgun_pump_t9, // 0xc0
        gadget_health_boost, // 0xc1
        spectre_grenade, // 0xc2
        talent_brawler, // 0xc3
        eq_flash_grenade, // 0xc4
        hash_55c23f24d806e3a6, // 0xc5
        bare_hands, // 0xc6
        ar_slowfire_t9, // 0xc7
        tr_powerburst_t9, // 0xc8
        trophy_system, // 0xc9
        talent_quartermaster, // 0xca
        hash_59dbe7f72baaa0f0, // 0xcb
        hash_59dbe8f72baaa2a3, // 0xcc
        hash_59dbecf72baaa96f, // 0xcd
        hash_59dbedf72baaab22, // 0xce
        hash_59dbeef72baaacd5, // 0xcf
        ray_gun_mk2, // 0xd0
        tr_longburst_t9, // 0xd1
        nuke, // 0xd2
        ww_ray_rifle_t9, // 0xd3
        smg_standard_t9, // 0xd4
        hash_5c80935e7a319f21, // 0xd5
        sig_bow_flame, // 0xd6
        eq_slow_grenade, // 0xd7
        talent_paranoia, // 0xd8
        special_nailgun_t9, // 0xd9
        smg_accurate_t9, // 0xda
        hash_603c083704cefb0c, // 0xdb
        jetfighter, // 0xdc
        talent_teamlink, // 0xdd
        smg_heavy_t9, // 0xde
        talent_deadsilence, // 0xdf
        tear_gas, // 0xe0
        hash_639ebbcda56447e7, // 0xe1
        eq_molotov, // 0xe2
        smg_fastfire_t9, // 0xe3
        hash_646fc27884bdaa02, // 0xe4
        bonuscard_primary_gunfighter, // 0xe5
        lmg_light_t9, // 0xe6
        melee_scythe_t9, // 0xe7
        ai_tank_marker, // 0xe8
        gear_medicalinjectiongun, // 0xe9
        hash_661cd0d6fb33878c, // 0xea
        gadget_cleanse, // 0xeb
        ar_british_t9, // 0xec
        hero_flamethrower, // 0xed
        melee_battleaxe_t9, // 0xee
        ww_axe_gun_melee_t9, // 0xef
        sniper_standard_t9, // 0xf0
        melee_cane_t9, // 0xf1
        smg_spray_t9, // 0xf2
        hero_annihilator, // 0xf3
        ar_fasthandling_t9, // 0xf4
        ar_mobility_t9, // 0xf5
        planemortar, // 0xf6
        sniper_cannon_t9, // 0xf7
        shotgun_semiauto_t9, // 0xf8
        talent_deathperception_2, // 0xf9
        talent_deathperception_3, // 0xfa
        talent_deathperception_1, // 0xfb
        talent_deathperception_4, // 0xfc
        talent_deathperception_5, // 0xfd
        lmg_fastfire_t9, // 0xfe
        ar_standard_t9, // 0xff
        weapon_null, // 0x100
        talent_spycraft, // 0x101
        hash_7321f9058ee65217, // 0x102
        satchel_charge, // 0x103
        default_specialist_equipment, // 0x104
        gadget_health_regen_squad, // 0x105
        hash_76b56e7e0b3b7aac, // 0x106
        eq_decoy_grenade, // 0x107
        hash_7716cb3888f5dd8a, // 0x108
        smg_season6_t9, // 0x109
        smg_semiauto_t9, // 0x10a
        ray_gun, // 0x10b
        hash_788c96e19cc7a46e, // 0x10c
        claymore, // 0x10d
        talent_elemental_pop_2, // 0x10e
        talent_elemental_pop_3, // 0x10f
        talent_elemental_pop_1, // 0x110
        talent_elemental_pop_4, // 0x111
        talent_elemental_pop_5, // 0x112
        smg_handling_t9, // 0x113
        cymbal_monkey, // 0x114
        shotgun_fullauto_t9, // 0x115
        smg_flechette_t9, // 0x116
        hash_7ab3f9a730359659, // 0x117
        gadget_icepick, // 0x118
        ww_mega_barrel_fullauto_micro_missile_t9, // 0x119
        hash_7ca561e40dc3c5de, // 0x11a
        basketball, // 0x11b
        gadget_camo, // 0x11c
        hash_7f79d3ba6ed1a1d7, // 0x11d
        lmg_slowfire_t9 // 0x11e
    };

    // root: bitSize: 0x14c8, members: 16

    // offset: 0x0, bitSize: 0x6d8(0xdb Byte(s))
    region_info dml;
    // offset: 0x6d8, bitSize: 0x318(0x63 Byte(s)), array:0x3(hti:0xffff)
    lootcontracts loot_contracts[3];
    // offset: 0x9f0, bitSize: 0x20(0x4 Byte(s))
    uint hash_5a1a5df0cdadbba3;
    // offset: 0xa10, bitSize: 0x20(0x4 Byte(s))
    uint hash_151eef37df5ee845;
    // offset: 0xa30, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_tier_boost;
    // offset: 0xa38, bitSize: 0x8(0x1 Byte(s))
    hash_54196e9e9860f0be platform;
    // offset: 0xa40, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_party_tier_boost;
    // offset: 0xa48, bitSize: 0x20(0x4 Byte(s))
    uint hash_1e4fbbabf3da13fa;
    // offset: 0xa68, bitSize: 0x200(0x40 Byte(s)), array:0x20(hti:0xffff)
    hash_33944d215cff6222 hash_33944d215cff6222[32];
    // offset: 0xc68, bitSize: 0x610(0xc2 Byte(s)), array:0x61(hti:0x6)
    hash_1c86958671ff27fd hash_4953b2b12f1d6b1b[hash_4b8d95aacf149fb9];
    // offset: 0x1278, bitSize: 0xa0(0x14 Byte(s))
    client_header client;
    // offset: 0x1318, bitSize: 0x8(0x1 Byte(s))
    byte tier_boost;
    // offset: 0x1320, bitSize: 0x140(0x28 Byte(s)), array:0xa(hti:0xffff)
    uint hash_3d03353ad0aa2db1[10];
    // offset: 0x1460, bitSize: 0x1
    bool hash_4ca91f34eba5a203;
    // offset: 0x1461, bitSize: 0x61, array:0x61(hti:0x6)
    bool hash_4473319d8a8d9dcf[hash_4b8d95aacf149fb9];
};

version hash_165f6f59a3215e21 {
    // enums ..... 13 (0xd)
    // structs ... 8 (0x8)
    // header bit size .. 4056 (0xfd8)
    // header byte size . 507 (0x1fb)

    // bitSize: 0x280, members: 14
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
        // offset: 0xb8, bitSize: 0x100(0x20 Byte(s))
        string(32) build_version;
        // offset: 0x1b8, bitSize: 0x20(0x4 Byte(s))
        uint title_id;
        // offset: 0x1d8, bitSize: 0x8(0x1 Byte(s))
        hash_69c3102673a86ddb hash_1ca9db94b2870d4c;
        // offset: 0x1e0, bitSize: 0x20(0x4 Byte(s))
        uint hash_56a1b6d783aa7a25;
        // offset: 0x200, bitSize: 0x40(0x8 Byte(s))
        xhash product;
        // offset: 0x240, bitSize: 0x40(0x8 Byte(s))
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

    // bitSize: 0x500, members: 5
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
    struct hash_1c86958671ff27fd {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_50ab8b7df567cd2a;
    };

    // bitSize: 0x108, members: 6
    struct lootcontracts {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint xp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint contractid;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:3 contractgamemode;
        // offset: 0x48, bitSize: 0x40(0x8 Byte(s))
        xhash contracthash;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 progress;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 target;
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

    // idx 0x5 members: 0xab
    enum hash_10d50fe10481423c {
        tr_fastburst_t9, // 0x0
        ability_smart_cover, // 0x1
        dart, // 0x2
        ultimate_turret, // 0x3
        hash_5a7fd1af4a1d5c9, // 0x4
        hash_7a083f7ba43fa06, // 0x5
        lmg_accurate_t9, // 0x6
        ray_gun_mk2z, // 0x7
        ray_gun_mk2y, // 0x8
        ray_gun_mk2x, // 0x9
        sniper_powersemi_t9, // 0xa
        eq_wraith_fire, // 0xb
        counteruav, // 0xc
        missile_turret, // 0xd
        eq_shroud, // 0xe
        gadget_supplypod, // 0xf
        ar_damage_t9, // 0x10
        homunculus, // 0x11
        spknifeork, // 0x12
        melee_bowie, // 0x13
        ww_random_ray_gun1, // 0x14
        recon_plane, // 0x15
        sig_buckler_dw, // 0x16
        gadget_vision_pulse, // 0x17
        waterballoon, // 0x18
        special_crossbow_t9, // 0x19
        weapon_armor, // 0x1a
        eq_arm_blade, // 0x1b
        ww_blundergat_t8, // 0x1c
        gadget_heat_wave, // 0x1d
        eq_localheal, // 0x1e
        hoverjet, // 0x1f
        nightingale, // 0x20
        pistol_fullauto_t9, // 0x21
        remote_missile, // 0x22
        gadget_smart_cover, // 0x23
        willy_pete, // 0x24
        eq_emp_grenade, // 0x25
        special_grenadelauncher_t9, // 0x26
        launcher_freefire_t9, // 0x27
        ar_accurate_t9, // 0x28
        sig_lmg, // 0x29
        ww_crossbow_impaler_t8, // 0x2a
        ww_freezegun_t8, // 0x2b
        frag_grenade, // 0x2c
        knife_loadout, // 0x2d
        feature_default_class_1, // 0x2e
        feature_default_class_3, // 0x2f
        feature_default_class_2, // 0x30
        feature_default_class_5, // 0x31
        feature_default_class_4, // 0x32
        feature_default_class_6, // 0x33
        swat_team, // 0x34
        land_mine, // 0x35
        hatchet, // 0x36
        supplydrop_marker, // 0x37
        mute_smoke, // 0x38
        hash_2ea46ca74ebdfcac, // 0x39
        smg_capacity_t9, // 0x3a
        chopper_gunner, // 0x3b
        null_offhand_secondary, // 0x3c
        gadget_health_regen, // 0x3d
        hash_31be8125c7d0f273, // 0x3e
        listening_device, // 0x3f
        spork_alcatraz, // 0x40
        drone_squadron, // 0x41
        pistol_semiauto_t9, // 0x42
        null_offhand_primary, // 0x43
        smg_burst_t9, // 0x44
        hash_3507beb47a6b634e, // 0x45
        pistol_revolver_t9, // 0x46
        eq_stimshot, // 0x47
        overwatch_helicopter, // 0x48
        gadget_jammer, // 0x49
        hash_3ab58e40011df941, // 0x4a
        launcher_standard_t9, // 0x4b
        melee_bowie_bloody, // 0x4c
        eq_sticky_grenade, // 0x4d
        melee_sledgehammer_t9, // 0x4e
        sig_blade, // 0x4f
        pistol_burst_t9, // 0x50
        hash_4385cf507401820f, // 0x51
        napalm_strike, // 0x52
        sniper_accurate_t9, // 0x53
        ar_fastfire_t9, // 0x54
        melee_wakizashi_t9, // 0x55
        hero_pineapplegun, // 0x56
        hash_48206b17d50533c2, // 0x57
        sniper_quickscope_t9, // 0x58
        ability_dog, // 0x59
        straferun, // 0x5a
        eq_seeker_mine, // 0x5b
        ww_crossbow_t8, // 0x5c
        recon_car, // 0x5d
        hash_4b1854c2ff5135b2, // 0x5e
        snowball, // 0x5f
        feature_custom_class_9, // 0x60
        feature_custom_class_8, // 0x61
        feature_custom_class_3, // 0x62
        feature_custom_class_2, // 0x63
        feature_custom_class_1, // 0x64
        feature_custom_class_7, // 0x65
        feature_custom_class_6, // 0x66
        feature_custom_class_5, // 0x67
        feature_custom_class_4, // 0x68
        uav, // 0x69
        eq_concertina_wire, // 0x6a
        feature_custom_class_10, // 0x6b
        ar_slowhandling_t9, // 0x6c
        eq_acid_bomb, // 0x6d
        gadget_spawnbeacon, // 0x6e
        ac130, // 0x6f
        tr_precisionsemi_t9, // 0x70
        helicopter_comlink, // 0x71
        gadget_armor, // 0x72
        tr_damagesemi_t9, // 0x73
        feature_cac, // 0x74
        tomahawk_t8, // 0x75
        shotgun_pump_t9, // 0x76
        gadget_health_boost, // 0x77
        spectre_grenade, // 0x78
        eq_flash_grenade, // 0x79
        hash_55c23f24d806e3a6, // 0x7a
        bare_hands, // 0x7b
        ar_slowfire_t9, // 0x7c
        tr_powerburst_t9, // 0x7d
        trophy_system, // 0x7e
        ray_gun_mk2, // 0x7f
        tr_longburst_t9, // 0x80
        smg_standard_t9, // 0x81
        sig_bow_flame, // 0x82
        eq_slow_grenade, // 0x83
        smg_accurate_t9, // 0x84
        hash_603c083704cefb0c, // 0x85
        jetfighter, // 0x86
        smg_heavy_t9, // 0x87
        tear_gas, // 0x88
        eq_molotov, // 0x89
        smg_fastfire_t9, // 0x8a
        lmg_light_t9, // 0x8b
        ai_tank_marker, // 0x8c
        gadget_cleanse, // 0x8d
        hero_flamethrower, // 0x8e
        sniper_standard_t9, // 0x8f
        smg_spray_t9, // 0x90
        hero_annihilator, // 0x91
        ar_fasthandling_t9, // 0x92
        ar_mobility_t9, // 0x93
        planemortar, // 0x94
        sniper_cannon_t9, // 0x95
        shotgun_semiauto_t9, // 0x96
        lmg_fastfire_t9, // 0x97
        ar_standard_t9, // 0x98
        weapon_null, // 0x99
        satchel_charge, // 0x9a
        default_specialist_equipment, // 0x9b
        gadget_health_regen_squad, // 0x9c
        hash_76b56e7e0b3b7aac, // 0x9d
        eq_decoy_grenade, // 0x9e
        ray_gun, // 0x9f
        hash_788c96e19cc7a46e, // 0xa0
        claymore, // 0xa1
        smg_handling_t9, // 0xa2
        cymbal_monkey, // 0xa3
        shotgun_fullauto_t9, // 0xa4
        hash_7ab3f9a730359659, // 0xa5
        hash_7ab72fe059175b31, // 0xa6
        gadget_icepick, // 0xa7
        basketball, // 0xa8
        gadget_camo, // 0xa9
        lmg_slowfire_t9 // 0xaa
    };

    // idx 0x6 members: 0x43
    enum hash_4b8d95aacf149fb9 {
        tr_fastburst_t9, // 0x0
        lmg_accurate_t9, // 0x1
        ray_gun_mk2z, // 0x2
        ray_gun_mk2y, // 0x3
        ray_gun_mk2x, // 0x4
        sniper_powersemi_t9, // 0x5
        hash_c21b61b32a5d972, // 0x6
        ar_damage_t9, // 0x7
        homunculus, // 0x8
        spknifeork, // 0x9
        melee_bowie, // 0xa
        ww_random_ray_gun1, // 0xb
        hash_165cf52ce418f5a1, // 0xc
        special_crossbow_t9, // 0xd
        ww_blundergat_t8, // 0xe
        pistol_fullauto_t9, // 0xf
        special_grenadelauncher_t9, // 0x10
        launcher_freefire_t9, // 0x11
        ar_accurate_t9, // 0x12
        ww_crossbow_impaler_t8, // 0x13
        ww_freezegun_t8, // 0x14
        knife_loadout, // 0x15
        hash_2ea46ca74ebdfcac, // 0x16
        smg_capacity_t9, // 0x17
        spork_alcatraz, // 0x18
        pistol_semiauto_t9, // 0x19
        smg_burst_t9, // 0x1a
        pistol_revolver_t9, // 0x1b
        launcher_standard_t9, // 0x1c
        melee_bowie_bloody, // 0x1d
        melee_sledgehammer_t9, // 0x1e
        pistol_burst_t9, // 0x1f
        hash_4385cf507401820f, // 0x20
        sniper_accurate_t9, // 0x21
        ar_fastfire_t9, // 0x22
        melee_wakizashi_t9, // 0x23
        hash_48206b17d50533c2, // 0x24
        sniper_quickscope_t9, // 0x25
        ww_crossbow_t8, // 0x26
        ar_slowhandling_t9, // 0x27
        tr_precisionsemi_t9, // 0x28
        tr_damagesemi_t9, // 0x29
        shotgun_pump_t9, // 0x2a
        hash_55c23f24d806e3a6, // 0x2b
        ar_slowfire_t9, // 0x2c
        tr_powerburst_t9, // 0x2d
        ray_gun_mk2, // 0x2e
        tr_longburst_t9, // 0x2f
        smg_standard_t9, // 0x30
        smg_accurate_t9, // 0x31
        hash_603c083704cefb0c, // 0x32
        smg_heavy_t9, // 0x33
        smg_fastfire_t9, // 0x34
        lmg_light_t9, // 0x35
        sniper_standard_t9, // 0x36
        smg_spray_t9, // 0x37
        ar_fasthandling_t9, // 0x38
        ar_mobility_t9, // 0x39
        sniper_cannon_t9, // 0x3a
        shotgun_semiauto_t9, // 0x3b
        lmg_fastfire_t9, // 0x3c
        ar_standard_t9, // 0x3d
        smg_handling_t9, // 0x3e
        shotgun_fullauto_t9, // 0x3f
        hash_7ab72fe059175b31, // 0x40
        basketball, // 0x41
        lmg_slowfire_t9 // 0x42
    };

    // idx 0x7 members: 0x12
    enum hash_7493d39e2637c1e7 {
        bonuscard, // 0x0
        hero, // 0x1
        feature, // 0x2
        weapon_special, // 0x3
        weapon_knife, // 0x4
        character, // 0x5
        miscweapon, // 0x6
        weapon_pistol, // 0x7
        killstreak, // 0x8
        weapon_sniper, // 0x9
        talent, // 0xa
        weapon_launcher, // 0xb
        weapon_grenade, // 0xc
        weapon_lmg, // 0xd
        weapon_tactical, // 0xe
        weapon_smg, // 0xf
        weapon_cqb, // 0x10
        weapon_assault // 0x11
    };

    // idx 0x8 members: 0x1d
    enum hash_d5731f85b8cf294 {
        dart, // 0x0
        ultimate_turret, // 0x1
        counteruav, // 0x2
        recon_plane, // 0x3
        weapon_armor, // 0x4
        hoverjet, // 0x5
        remote_missile, // 0x6
        sig_lmg, // 0x7
        swat_team, // 0x8
        supplydrop_marker, // 0x9
        chopper_gunner, // 0xa
        drone_squadron, // 0xb
        overwatch_helicopter, // 0xc
        napalm_strike, // 0xd
        hero_pineapplegun, // 0xe
        ability_dog, // 0xf
        straferun, // 0x10
        recon_car, // 0x11
        uav, // 0x12
        ac130, // 0x13
        helicopter_comlink, // 0x14
        sig_bow_flame, // 0x15
        jetfighter, // 0x16
        ai_tank_marker, // 0x17
        helicopter_guard, // 0x18
        hero_flamethrower, // 0x19
        hero_annihilator, // 0x1a
        planemortar, // 0x1b
        ray_gun // 0x1c
    };

    // idx 0x9 members: 0x34
    enum hash_507792265be6dcc4 {
        ability_smart_cover, // 0x0
        hash_7a083f7ba43fa06, // 0x1
        eq_wraith_fire, // 0x2
        missile_turret, // 0x3
        eq_shroud, // 0x4
        gadget_supplypod, // 0x5
        gadget_vision_pulse, // 0x6
        waterballoon, // 0x7
        eq_arm_blade, // 0x8
        gadget_heat_wave, // 0x9
        eq_localheal, // 0xa
        gadget_medicalinjectiongun, // 0xb
        nightingale, // 0xc
        gadget_smart_cover, // 0xd
        willy_pete, // 0xe
        eq_emp_grenade, // 0xf
        frag_grenade, // 0x10
        land_mine, // 0x11
        hatchet, // 0x12
        gadget_health_regen, // 0x13
        listening_device, // 0x14
        hash_3507beb47a6b634e, // 0x15
        eq_stimshot, // 0x16
        hash_3ab58e40011df941, // 0x17
        eq_sticky_grenade, // 0x18
        eq_seeker_mine, // 0x19
        hash_4b1854c2ff5135b2, // 0x1a
        snowball, // 0x1b
        eq_concertina_wire, // 0x1c
        eq_acid_bomb, // 0x1d
        gadget_spawnbeacon, // 0x1e
        gadget_armor, // 0x1f
        tomahawk_t8, // 0x20
        gadget_health_boost, // 0x21
        spectre_grenade, // 0x22
        eq_flash_grenade, // 0x23
        trophy_system, // 0x24
        eq_slow_grenade, // 0x25
        tear_gas, // 0x26
        eq_molotov, // 0x27
        gadget_cleanse, // 0x28
        satchel_charge, // 0x29
        default_specialist_equipment, // 0x2a
        gadget_health_regen_squad, // 0x2b
        hash_76b56e7e0b3b7aac, // 0x2c
        eq_decoy_grenade, // 0x2d
        hash_788c96e19cc7a46e, // 0x2e
        claymore, // 0x2f
        cymbal_monkey, // 0x30
        hash_7ab3f9a730359659, // 0x31
        gadget_icepick, // 0x32
        gadget_camo // 0x33
    };

    // idx 0xa members: 0x3c
    enum hash_1e2de876fb880be2 {
        quickdraw, // 0x0
        acog, // 0x1
        dw, // 0x2
        ir, // 0x3
        barrel2, // 0x4
        mixunder2, // 0x5
        fastreload, // 0x6
        heavy, // 0x7
        steadyaim, // 0x8
        stalker, // 0x9
        barrel, // 0xa
        mixstock, // 0xb
        smoothzoom2, // 0xc
        mixclip2, // 0xd
        reflex4, // 0xe
        reflex3, // 0xf
        reflex2, // 0x10
        stalker2, // 0x11
        extclip2, // 0x12
        tactical, // 0x13
        steadyaim2, // 0x14
        mixclip, // 0x15
        light, // 0x16
        speedgrip2, // 0x17
        mixhandle, // 0x18
        mixunder, // 0x19
        mixbarrel2, // 0x1a
        mixstock2, // 0x1b
        reddot, // 0x1c
        handle, // 0x1d
        mixmuzzle2, // 0x1e
        extclip, // 0x1f
        light2, // 0x20
        heavy2, // 0x21
        holo, // 0x22
        elo, // 0x23
        fastreload2, // 0x24
        scope3x, // 0x25
        scope4x, // 0x26
        mixhandle2, // 0x27
        compensator, // 0x28
        mixbody, // 0x29
        quickdraw2, // 0x2a
        suppressed2, // 0x2b
        speedgrip, // 0x2c
        sprintout2, // 0x2d
        suppressed, // 0x2e
        sprintout, // 0x2f
        grip2, // 0x30
        mixmuzzle, // 0x31
        handle2, // 0x32
        compensator2, // 0x33
        mixbody2, // 0x34
        dualoptic, // 0x35
        grip, // 0x36
        smoothzoom, // 0x37
        reflex, // 0x38
        mixbarrel, // 0x39
        elo3, // 0x3a
        elo2 // 0x3b
    };

    // idx 0xb members: 0x36
    enum hash_48d8d533750ed177 {
        talent_gungho, // 0x0
        talent_engineer, // 0x1
        talent_coldblooded, // 0x2
        hash_9fb2125b3e673e5, // 0x3
        gear_armor, // 0x4
        hash_cd70e712f842296, // 0x5
        talent_tracker, // 0x6
        hash_101808cdfcd390d6, // 0x7
        hash_128256155e755170, // 0x8
        hash_16cfc7f70dbd8712, // 0x9
        talent_flakjacket, // 0xa
        talent_logistics, // 0xb
        talent_looter, // 0xc
        gadget_medicalinjectiongun, // 0xd
        hash_1d8863d0b864a48b, // 0xe
        hash_1db03fa9862ba330, // 0xf
        hash_20290a682a974c94, // 0x10
        talent_dexterity, // 0x11
        hash_249e75e962ea5275, // 0x12
        talent_resistance, // 0x13
        gear_awareness, // 0x14
        hash_2c3a32e6e2afd1f2, // 0x15
        hash_311283e3107dec74, // 0x16
        talent_lightweight, // 0x17
        talent_awareness, // 0x18
        gear_equipmentcharge, // 0x19
        hash_39045b0020cc3e00, // 0x1a
        hash_3c323c7819b10b4d, // 0x1b
        hash_3c60422123a9075b, // 0x1c
        talent_scavenger, // 0x1d
        talent_skulker, // 0x1e
        gear_scorestreakcharge, // 0x1f
        talent_ghost, // 0x20
        hash_4f80a2c3398e97c9, // 0x21
        talent_elemental_pop, // 0x22
        talent_brawler, // 0x23
        talent_quartermaster, // 0x24
        hash_5c80935e7a319f21, // 0x25
        talent_paranoia, // 0x26
        talent_teamlink, // 0x27
        talent_deadsilence, // 0x28
        hash_646fc27884bdaa02, // 0x29
        gear_medicalinjectiongun, // 0x2a
        hash_661cd0d6fb33878c, // 0x2b
        talent_spycraft, // 0x2c
        hash_7321f9058ee65217, // 0x2d
        hash_7716cb3888f5dd8a, // 0x2e
        talent_elemental_pop_2, // 0x2f
        talent_elemental_pop_3, // 0x30
        talent_elemental_pop_1, // 0x31
        talent_elemental_pop_4, // 0x32
        talent_elemental_pop_5, // 0x33
        hash_7ca561e40dc3c5de, // 0x34
        hash_7f79d3ba6ed1a1d7 // 0x35
    };

    // idx 0xc members: 0x6
    enum hash_66db207c660e33f3 {
        bonuscard_overkill, // 0x0
        bonuscard_underkill, // 0x1
        bonuscard_perk_1_greed, // 0x2
        hash_4a12859000892dda, // 0x3
        hash_639ebbcda56447e7, // 0x4
        bonuscard_primary_gunfighter // 0x5
    };

    // root: bitSize: 0xf28, members: 10

    // offset: 0x0, bitSize: 0x6d8(0xdb Byte(s))
    region_info dml;
    // offset: 0x6d8, bitSize: 0x318(0x63 Byte(s)), array:0x3(hti:0xffff)
    lootcontracts loot_contracts[3];
    // offset: 0x9f0, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_tier_boost;
    // offset: 0x9f8, bitSize: 0x8(0x1 Byte(s))
    hash_54196e9e9860f0be platform;
    // offset: 0xa00, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_party_tier_boost;
    // offset: 0xa08, bitSize: 0x430(0x86 Byte(s)), array:0x43(hti:0x6)
    hash_1c86958671ff27fd hash_4953b2b12f1d6b1b[hash_4b8d95aacf149fb9];
    // offset: 0xe38, bitSize: 0xa0(0x14 Byte(s))
    client_header client;
    // offset: 0xed8, bitSize: 0x8(0x1 Byte(s))
    byte tier_boost;
    // offset: 0xee0, bitSize: 0x43, array:0x43(hti:0x6)
    bool hash_4473319d8a8d9dcf[hash_4b8d95aacf149fb9];
};

version hash_11092e88349b34c6 {
    // enums ..... 13 (0xd)
    // structs ... 8 (0x8)
    // header bit size .. 4072 (0xfe8)
    // header byte size . 509 (0x1fd)

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

    // bitSize: 0x500, members: 5
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
    struct hash_1c86958671ff27fd {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_50ab8b7df567cd2a;
    };

    // bitSize: 0x108, members: 6
    struct lootcontracts {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint xp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint contractid;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:3 contractgamemode;
        // offset: 0x48, bitSize: 0x40(0x8 Byte(s))
        xhash contracthash;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 progress;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 target;
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

    // idx 0x5 members: 0xab
    enum hash_10d50fe10481423c {
        tr_fastburst_t9, // 0x0
        ability_smart_cover, // 0x1
        dart, // 0x2
        ultimate_turret, // 0x3
        hash_5a7fd1af4a1d5c9, // 0x4
        hash_7a083f7ba43fa06, // 0x5
        lmg_accurate_t9, // 0x6
        ray_gun_mk2z, // 0x7
        ray_gun_mk2y, // 0x8
        ray_gun_mk2x, // 0x9
        sniper_powersemi_t9, // 0xa
        eq_wraith_fire, // 0xb
        counteruav, // 0xc
        missile_turret, // 0xd
        eq_shroud, // 0xe
        gadget_supplypod, // 0xf
        ar_damage_t9, // 0x10
        homunculus, // 0x11
        spknifeork, // 0x12
        melee_bowie, // 0x13
        ww_random_ray_gun1, // 0x14
        recon_plane, // 0x15
        sig_buckler_dw, // 0x16
        gadget_vision_pulse, // 0x17
        waterballoon, // 0x18
        special_crossbow_t9, // 0x19
        weapon_armor, // 0x1a
        eq_arm_blade, // 0x1b
        ww_blundergat_t8, // 0x1c
        gadget_heat_wave, // 0x1d
        eq_localheal, // 0x1e
        hoverjet, // 0x1f
        nightingale, // 0x20
        pistol_fullauto_t9, // 0x21
        remote_missile, // 0x22
        gadget_smart_cover, // 0x23
        willy_pete, // 0x24
        eq_emp_grenade, // 0x25
        special_grenadelauncher_t9, // 0x26
        launcher_freefire_t9, // 0x27
        ar_accurate_t9, // 0x28
        sig_lmg, // 0x29
        ww_crossbow_impaler_t8, // 0x2a
        ww_freezegun_t8, // 0x2b
        frag_grenade, // 0x2c
        knife_loadout, // 0x2d
        feature_default_class_1, // 0x2e
        feature_default_class_3, // 0x2f
        feature_default_class_2, // 0x30
        feature_default_class_5, // 0x31
        feature_default_class_4, // 0x32
        feature_default_class_6, // 0x33
        swat_team, // 0x34
        land_mine, // 0x35
        hatchet, // 0x36
        supplydrop_marker, // 0x37
        mute_smoke, // 0x38
        hash_2ea46ca74ebdfcac, // 0x39
        smg_capacity_t9, // 0x3a
        chopper_gunner, // 0x3b
        null_offhand_secondary, // 0x3c
        gadget_health_regen, // 0x3d
        hash_31be8125c7d0f273, // 0x3e
        listening_device, // 0x3f
        spork_alcatraz, // 0x40
        drone_squadron, // 0x41
        pistol_semiauto_t9, // 0x42
        null_offhand_primary, // 0x43
        smg_burst_t9, // 0x44
        hash_3507beb47a6b634e, // 0x45
        pistol_revolver_t9, // 0x46
        eq_stimshot, // 0x47
        overwatch_helicopter, // 0x48
        gadget_jammer, // 0x49
        hash_3ab58e40011df941, // 0x4a
        launcher_standard_t9, // 0x4b
        melee_bowie_bloody, // 0x4c
        eq_sticky_grenade, // 0x4d
        melee_sledgehammer_t9, // 0x4e
        sig_blade, // 0x4f
        pistol_burst_t9, // 0x50
        hash_4385cf507401820f, // 0x51
        napalm_strike, // 0x52
        sniper_accurate_t9, // 0x53
        ar_fastfire_t9, // 0x54
        melee_wakizashi_t9, // 0x55
        hero_pineapplegun, // 0x56
        hash_48206b17d50533c2, // 0x57
        sniper_quickscope_t9, // 0x58
        ability_dog, // 0x59
        straferun, // 0x5a
        eq_seeker_mine, // 0x5b
        ww_crossbow_t8, // 0x5c
        recon_car, // 0x5d
        hash_4b1854c2ff5135b2, // 0x5e
        snowball, // 0x5f
        feature_custom_class_9, // 0x60
        feature_custom_class_8, // 0x61
        feature_custom_class_3, // 0x62
        feature_custom_class_2, // 0x63
        feature_custom_class_1, // 0x64
        feature_custom_class_7, // 0x65
        feature_custom_class_6, // 0x66
        feature_custom_class_5, // 0x67
        feature_custom_class_4, // 0x68
        uav, // 0x69
        eq_concertina_wire, // 0x6a
        feature_custom_class_10, // 0x6b
        ar_slowhandling_t9, // 0x6c
        eq_acid_bomb, // 0x6d
        gadget_spawnbeacon, // 0x6e
        ac130, // 0x6f
        tr_precisionsemi_t9, // 0x70
        helicopter_comlink, // 0x71
        gadget_armor, // 0x72
        tr_damagesemi_t9, // 0x73
        feature_cac, // 0x74
        tomahawk_t8, // 0x75
        shotgun_pump_t9, // 0x76
        gadget_health_boost, // 0x77
        spectre_grenade, // 0x78
        eq_flash_grenade, // 0x79
        hash_55c23f24d806e3a6, // 0x7a
        bare_hands, // 0x7b
        ar_slowfire_t9, // 0x7c
        tr_powerburst_t9, // 0x7d
        trophy_system, // 0x7e
        ray_gun_mk2, // 0x7f
        tr_longburst_t9, // 0x80
        smg_standard_t9, // 0x81
        sig_bow_flame, // 0x82
        eq_slow_grenade, // 0x83
        smg_accurate_t9, // 0x84
        hash_603c083704cefb0c, // 0x85
        jetfighter, // 0x86
        smg_heavy_t9, // 0x87
        tear_gas, // 0x88
        eq_molotov, // 0x89
        smg_fastfire_t9, // 0x8a
        lmg_light_t9, // 0x8b
        ai_tank_marker, // 0x8c
        gadget_cleanse, // 0x8d
        hero_flamethrower, // 0x8e
        sniper_standard_t9, // 0x8f
        smg_spray_t9, // 0x90
        hero_annihilator, // 0x91
        ar_fasthandling_t9, // 0x92
        ar_mobility_t9, // 0x93
        planemortar, // 0x94
        sniper_cannon_t9, // 0x95
        shotgun_semiauto_t9, // 0x96
        lmg_fastfire_t9, // 0x97
        ar_standard_t9, // 0x98
        weapon_null, // 0x99
        satchel_charge, // 0x9a
        default_specialist_equipment, // 0x9b
        gadget_health_regen_squad, // 0x9c
        hash_76b56e7e0b3b7aac, // 0x9d
        eq_decoy_grenade, // 0x9e
        ray_gun, // 0x9f
        hash_788c96e19cc7a46e, // 0xa0
        claymore, // 0xa1
        smg_handling_t9, // 0xa2
        cymbal_monkey, // 0xa3
        shotgun_fullauto_t9, // 0xa4
        hash_7ab3f9a730359659, // 0xa5
        hash_7ab72fe059175b31, // 0xa6
        gadget_icepick, // 0xa7
        basketball, // 0xa8
        gadget_camo, // 0xa9
        lmg_slowfire_t9 // 0xaa
    };

    // idx 0x6 members: 0x44
    enum hash_4b8d95aacf149fb9 {
        tr_fastburst_t9, // 0x0
        lmg_accurate_t9, // 0x1
        ray_gun_mk2z, // 0x2
        ray_gun_mk2y, // 0x3
        ray_gun_mk2x, // 0x4
        sniper_powersemi_t9, // 0x5
        hash_c21b61b32a5d972, // 0x6
        ar_damage_t9, // 0x7
        homunculus, // 0x8
        spknifeork, // 0x9
        melee_bowie, // 0xa
        ww_random_ray_gun1, // 0xb
        hash_165cf52ce418f5a1, // 0xc
        special_crossbow_t9, // 0xd
        ww_blundergat_t8, // 0xe
        pistol_fullauto_t9, // 0xf
        special_grenadelauncher_t9, // 0x10
        launcher_freefire_t9, // 0x11
        ar_accurate_t9, // 0x12
        ww_crossbow_impaler_t8, // 0x13
        ww_freezegun_t8, // 0x14
        knife_loadout, // 0x15
        hash_2ea46ca74ebdfcac, // 0x16
        smg_capacity_t9, // 0x17
        spork_alcatraz, // 0x18
        pistol_semiauto_t9, // 0x19
        smg_burst_t9, // 0x1a
        pistol_revolver_t9, // 0x1b
        launcher_standard_t9, // 0x1c
        melee_bowie_bloody, // 0x1d
        melee_sledgehammer_t9, // 0x1e
        pistol_burst_t9, // 0x1f
        hash_4385cf507401820f, // 0x20
        sniper_accurate_t9, // 0x21
        ar_fastfire_t9, // 0x22
        melee_wakizashi_t9, // 0x23
        hash_48206b17d50533c2, // 0x24
        sniper_quickscope_t9, // 0x25
        ww_crossbow_t8, // 0x26
        ar_slowhandling_t9, // 0x27
        tr_precisionsemi_t9, // 0x28
        tr_damagesemi_t9, // 0x29
        shotgun_pump_t9, // 0x2a
        hash_55c23f24d806e3a6, // 0x2b
        ar_slowfire_t9, // 0x2c
        tr_powerburst_t9, // 0x2d
        ray_gun_mk2, // 0x2e
        tr_longburst_t9, // 0x2f
        smg_standard_t9, // 0x30
        smg_accurate_t9, // 0x31
        hash_603c083704cefb0c, // 0x32
        smg_heavy_t9, // 0x33
        smg_fastfire_t9, // 0x34
        lmg_light_t9, // 0x35
        sniper_standard_t9, // 0x36
        smg_spray_t9, // 0x37
        ar_fasthandling_t9, // 0x38
        ar_mobility_t9, // 0x39
        sniper_cannon_t9, // 0x3a
        shotgun_semiauto_t9, // 0x3b
        lmg_fastfire_t9, // 0x3c
        ar_standard_t9, // 0x3d
        ray_gun, // 0x3e
        smg_handling_t9, // 0x3f
        shotgun_fullauto_t9, // 0x40
        hash_7ab72fe059175b31, // 0x41
        basketball, // 0x42
        lmg_slowfire_t9 // 0x43
    };

    // idx 0x7 members: 0x13
    enum hash_7493d39e2637c1e7 {
        bonuscard, // 0x0
        hero, // 0x1
        feature, // 0x2
        weapon_special, // 0x3
        weapon_knife, // 0x4
        character, // 0x5
        miscweapon, // 0x6
        weapon_pistol, // 0x7
        killstreak, // 0x8
        weapon_sniper, // 0x9
        talent, // 0xa
        weapon_launcher, // 0xb
        weapon_grenade, // 0xc
        weapon_lmg, // 0xd
        weapon_tactical, // 0xe
        weapon_smg, // 0xf
        hash_7b68172df6035672, // 0x10
        weapon_cqb, // 0x11
        weapon_assault // 0x12
    };

    // idx 0x8 members: 0x1c
    enum hash_d5731f85b8cf294 {
        dart, // 0x0
        ultimate_turret, // 0x1
        counteruav, // 0x2
        recon_plane, // 0x3
        weapon_armor, // 0x4
        hoverjet, // 0x5
        remote_missile, // 0x6
        sig_lmg, // 0x7
        swat_team, // 0x8
        supplydrop_marker, // 0x9
        chopper_gunner, // 0xa
        drone_squadron, // 0xb
        overwatch_helicopter, // 0xc
        napalm_strike, // 0xd
        hero_pineapplegun, // 0xe
        ability_dog, // 0xf
        straferun, // 0x10
        recon_car, // 0x11
        uav, // 0x12
        ac130, // 0x13
        helicopter_comlink, // 0x14
        sig_bow_flame, // 0x15
        jetfighter, // 0x16
        ai_tank_marker, // 0x17
        helicopter_guard, // 0x18
        hero_flamethrower, // 0x19
        hero_annihilator, // 0x1a
        planemortar // 0x1b
    };

    // idx 0x9 members: 0x2f
    enum hash_507792265be6dcc4 {
        ability_smart_cover, // 0x0
        hash_7a083f7ba43fa06, // 0x1
        eq_wraith_fire, // 0x2
        eq_shroud, // 0x3
        gadget_vision_pulse, // 0x4
        waterballoon, // 0x5
        eq_arm_blade, // 0x6
        gadget_heat_wave, // 0x7
        eq_localheal, // 0x8
        gadget_medicalinjectiongun, // 0x9
        nightingale, // 0xa
        gadget_smart_cover, // 0xb
        willy_pete, // 0xc
        eq_emp_grenade, // 0xd
        frag_grenade, // 0xe
        hatchet, // 0xf
        gadget_health_regen, // 0x10
        hash_3507beb47a6b634e, // 0x11
        eq_stimshot, // 0x12
        hash_3ab58e40011df941, // 0x13
        eq_sticky_grenade, // 0x14
        eq_seeker_mine, // 0x15
        hash_4b1854c2ff5135b2, // 0x16
        snowball, // 0x17
        eq_concertina_wire, // 0x18
        eq_acid_bomb, // 0x19
        gadget_spawnbeacon, // 0x1a
        gadget_armor, // 0x1b
        tomahawk_t8, // 0x1c
        gadget_health_boost, // 0x1d
        spectre_grenade, // 0x1e
        eq_flash_grenade, // 0x1f
        eq_slow_grenade, // 0x20
        tear_gas, // 0x21
        eq_molotov, // 0x22
        gadget_cleanse, // 0x23
        satchel_charge, // 0x24
        default_specialist_equipment, // 0x25
        gadget_health_regen_squad, // 0x26
        hash_76b56e7e0b3b7aac, // 0x27
        eq_decoy_grenade, // 0x28
        hash_788c96e19cc7a46e, // 0x29
        claymore, // 0x2a
        cymbal_monkey, // 0x2b
        hash_7ab3f9a730359659, // 0x2c
        gadget_icepick, // 0x2d
        gadget_camo // 0x2e
    };

    // idx 0xa members: 0x3c
    enum hash_1e2de876fb880be2 {
        quickdraw, // 0x0
        acog, // 0x1
        dw, // 0x2
        ir, // 0x3
        barrel2, // 0x4
        mixunder2, // 0x5
        fastreload, // 0x6
        heavy, // 0x7
        steadyaim, // 0x8
        stalker, // 0x9
        barrel, // 0xa
        mixstock, // 0xb
        smoothzoom2, // 0xc
        mixclip2, // 0xd
        reflex4, // 0xe
        reflex3, // 0xf
        reflex2, // 0x10
        stalker2, // 0x11
        extclip2, // 0x12
        tactical, // 0x13
        steadyaim2, // 0x14
        mixclip, // 0x15
        light, // 0x16
        speedgrip2, // 0x17
        mixhandle, // 0x18
        mixunder, // 0x19
        mixbarrel2, // 0x1a
        mixstock2, // 0x1b
        reddot, // 0x1c
        handle, // 0x1d
        mixmuzzle2, // 0x1e
        extclip, // 0x1f
        light2, // 0x20
        heavy2, // 0x21
        holo, // 0x22
        elo, // 0x23
        fastreload2, // 0x24
        scope3x, // 0x25
        scope4x, // 0x26
        mixhandle2, // 0x27
        compensator, // 0x28
        mixbody, // 0x29
        quickdraw2, // 0x2a
        suppressed2, // 0x2b
        speedgrip, // 0x2c
        sprintout2, // 0x2d
        suppressed, // 0x2e
        sprintout, // 0x2f
        grip2, // 0x30
        mixmuzzle, // 0x31
        handle2, // 0x32
        compensator2, // 0x33
        mixbody2, // 0x34
        dualoptic, // 0x35
        grip, // 0x36
        smoothzoom, // 0x37
        reflex, // 0x38
        mixbarrel, // 0x39
        elo3, // 0x3a
        elo2 // 0x3b
    };

    // idx 0xb members: 0x36
    enum hash_48d8d533750ed177 {
        talent_gungho, // 0x0
        talent_engineer, // 0x1
        talent_coldblooded, // 0x2
        hash_9fb2125b3e673e5, // 0x3
        gear_armor, // 0x4
        hash_cd70e712f842296, // 0x5
        talent_tracker, // 0x6
        hash_101808cdfcd390d6, // 0x7
        hash_128256155e755170, // 0x8
        hash_16cfc7f70dbd8712, // 0x9
        talent_flakjacket, // 0xa
        talent_logistics, // 0xb
        talent_looter, // 0xc
        gadget_medicalinjectiongun, // 0xd
        hash_1d8863d0b864a48b, // 0xe
        hash_1db03fa9862ba330, // 0xf
        hash_20290a682a974c94, // 0x10
        talent_dexterity, // 0x11
        hash_249e75e962ea5275, // 0x12
        talent_resistance, // 0x13
        gear_awareness, // 0x14
        hash_2c3a32e6e2afd1f2, // 0x15
        hash_311283e3107dec74, // 0x16
        talent_lightweight, // 0x17
        talent_awareness, // 0x18
        gear_equipmentcharge, // 0x19
        hash_39045b0020cc3e00, // 0x1a
        hash_3c323c7819b10b4d, // 0x1b
        hash_3c60422123a9075b, // 0x1c
        talent_scavenger, // 0x1d
        talent_skulker, // 0x1e
        gear_scorestreakcharge, // 0x1f
        talent_ghost, // 0x20
        hash_4f80a2c3398e97c9, // 0x21
        talent_elemental_pop, // 0x22
        talent_brawler, // 0x23
        talent_quartermaster, // 0x24
        hash_5c80935e7a319f21, // 0x25
        talent_paranoia, // 0x26
        talent_teamlink, // 0x27
        talent_deadsilence, // 0x28
        hash_646fc27884bdaa02, // 0x29
        gear_medicalinjectiongun, // 0x2a
        hash_661cd0d6fb33878c, // 0x2b
        talent_spycraft, // 0x2c
        hash_7321f9058ee65217, // 0x2d
        hash_7716cb3888f5dd8a, // 0x2e
        talent_elemental_pop_2, // 0x2f
        talent_elemental_pop_3, // 0x30
        talent_elemental_pop_1, // 0x31
        talent_elemental_pop_4, // 0x32
        talent_elemental_pop_5, // 0x33
        hash_7ca561e40dc3c5de, // 0x34
        hash_7f79d3ba6ed1a1d7 // 0x35
    };

    // idx 0xc members: 0x6
    enum hash_66db207c660e33f3 {
        bonuscard_overkill, // 0x0
        bonuscard_underkill, // 0x1
        bonuscard_perk_1_greed, // 0x2
        hash_4a12859000892dda, // 0x3
        hash_639ebbcda56447e7, // 0x4
        bonuscard_primary_gunfighter // 0x5
    };

    // root: bitSize: 0xf38, members: 10

    // offset: 0x0, bitSize: 0x6d8(0xdb Byte(s))
    region_info dml;
    // offset: 0x6d8, bitSize: 0x318(0x63 Byte(s)), array:0x3(hti:0xffff)
    lootcontracts loot_contracts[3];
    // offset: 0x9f0, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_tier_boost;
    // offset: 0x9f8, bitSize: 0x8(0x1 Byte(s))
    hash_54196e9e9860f0be platform;
    // offset: 0xa00, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_party_tier_boost;
    // offset: 0xa08, bitSize: 0x440(0x88 Byte(s)), array:0x44(hti:0x6)
    hash_1c86958671ff27fd hash_4953b2b12f1d6b1b[hash_4b8d95aacf149fb9];
    // offset: 0xe48, bitSize: 0xa0(0x14 Byte(s))
    client_header client;
    // offset: 0xee8, bitSize: 0x8(0x1 Byte(s))
    byte tier_boost;
    // offset: 0xef0, bitSize: 0x44, array:0x44(hti:0x6)
    bool hash_4473319d8a8d9dcf[hash_4b8d95aacf149fb9];
};

version hash_f950b412816f249 {
    // enums ..... 13 (0xd)
    // structs ... 8 (0x8)
    // header bit size .. 4072 (0xfe8)
    // header byte size . 509 (0x1fd)

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

    // bitSize: 0x500, members: 5
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
    struct hash_1c86958671ff27fd {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_50ab8b7df567cd2a;
    };

    // bitSize: 0x108, members: 6
    struct lootcontracts {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint xp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint contractid;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:3 contractgamemode;
        // offset: 0x48, bitSize: 0x40(0x8 Byte(s))
        xhash contracthash;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 progress;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 target;
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

    // idx 0x5 members: 0xab
    enum hash_10d50fe10481423c {
        tr_fastburst_t9, // 0x0
        ability_smart_cover, // 0x1
        dart, // 0x2
        ultimate_turret, // 0x3
        hash_5a7fd1af4a1d5c9, // 0x4
        hash_7a083f7ba43fa06, // 0x5
        lmg_accurate_t9, // 0x6
        ray_gun_mk2z, // 0x7
        ray_gun_mk2y, // 0x8
        ray_gun_mk2x, // 0x9
        sniper_powersemi_t9, // 0xa
        eq_wraith_fire, // 0xb
        counteruav, // 0xc
        missile_turret, // 0xd
        eq_shroud, // 0xe
        gadget_supplypod, // 0xf
        ar_damage_t9, // 0x10
        homunculus, // 0x11
        spknifeork, // 0x12
        melee_bowie, // 0x13
        ww_random_ray_gun1, // 0x14
        recon_plane, // 0x15
        sig_buckler_dw, // 0x16
        gadget_vision_pulse, // 0x17
        waterballoon, // 0x18
        special_crossbow_t9, // 0x19
        weapon_armor, // 0x1a
        eq_arm_blade, // 0x1b
        ww_blundergat_t8, // 0x1c
        gadget_heat_wave, // 0x1d
        eq_localheal, // 0x1e
        hoverjet, // 0x1f
        nightingale, // 0x20
        pistol_fullauto_t9, // 0x21
        remote_missile, // 0x22
        gadget_smart_cover, // 0x23
        willy_pete, // 0x24
        eq_emp_grenade, // 0x25
        special_grenadelauncher_t9, // 0x26
        launcher_freefire_t9, // 0x27
        ar_accurate_t9, // 0x28
        sig_lmg, // 0x29
        ww_crossbow_impaler_t8, // 0x2a
        ww_freezegun_t8, // 0x2b
        frag_grenade, // 0x2c
        knife_loadout, // 0x2d
        feature_default_class_1, // 0x2e
        feature_default_class_3, // 0x2f
        feature_default_class_2, // 0x30
        feature_default_class_5, // 0x31
        feature_default_class_4, // 0x32
        feature_default_class_6, // 0x33
        swat_team, // 0x34
        land_mine, // 0x35
        hatchet, // 0x36
        supplydrop_marker, // 0x37
        mute_smoke, // 0x38
        hash_2ea46ca74ebdfcac, // 0x39
        smg_capacity_t9, // 0x3a
        chopper_gunner, // 0x3b
        null_offhand_secondary, // 0x3c
        gadget_health_regen, // 0x3d
        hash_31be8125c7d0f273, // 0x3e
        listening_device, // 0x3f
        spork_alcatraz, // 0x40
        drone_squadron, // 0x41
        pistol_semiauto_t9, // 0x42
        null_offhand_primary, // 0x43
        smg_burst_t9, // 0x44
        hash_3507beb47a6b634e, // 0x45
        pistol_revolver_t9, // 0x46
        eq_stimshot, // 0x47
        overwatch_helicopter, // 0x48
        gadget_jammer, // 0x49
        hash_3ab58e40011df941, // 0x4a
        launcher_standard_t9, // 0x4b
        melee_bowie_bloody, // 0x4c
        eq_sticky_grenade, // 0x4d
        melee_sledgehammer_t9, // 0x4e
        sig_blade, // 0x4f
        pistol_burst_t9, // 0x50
        hash_4385cf507401820f, // 0x51
        napalm_strike, // 0x52
        sniper_accurate_t9, // 0x53
        ar_fastfire_t9, // 0x54
        melee_wakizashi_t9, // 0x55
        hero_pineapplegun, // 0x56
        hash_48206b17d50533c2, // 0x57
        sniper_quickscope_t9, // 0x58
        ability_dog, // 0x59
        straferun, // 0x5a
        eq_seeker_mine, // 0x5b
        ww_crossbow_t8, // 0x5c
        recon_car, // 0x5d
        hash_4b1854c2ff5135b2, // 0x5e
        snowball, // 0x5f
        feature_custom_class_9, // 0x60
        feature_custom_class_8, // 0x61
        feature_custom_class_3, // 0x62
        feature_custom_class_2, // 0x63
        feature_custom_class_1, // 0x64
        feature_custom_class_7, // 0x65
        feature_custom_class_6, // 0x66
        feature_custom_class_5, // 0x67
        feature_custom_class_4, // 0x68
        uav, // 0x69
        eq_concertina_wire, // 0x6a
        feature_custom_class_10, // 0x6b
        ar_slowhandling_t9, // 0x6c
        eq_acid_bomb, // 0x6d
        gadget_spawnbeacon, // 0x6e
        ac130, // 0x6f
        tr_precisionsemi_t9, // 0x70
        helicopter_comlink, // 0x71
        gadget_armor, // 0x72
        tr_damagesemi_t9, // 0x73
        feature_cac, // 0x74
        tomahawk_t8, // 0x75
        shotgun_pump_t9, // 0x76
        gadget_health_boost, // 0x77
        spectre_grenade, // 0x78
        eq_flash_grenade, // 0x79
        hash_55c23f24d806e3a6, // 0x7a
        bare_hands, // 0x7b
        ar_slowfire_t9, // 0x7c
        tr_powerburst_t9, // 0x7d
        trophy_system, // 0x7e
        ray_gun_mk2, // 0x7f
        tr_longburst_t9, // 0x80
        smg_standard_t9, // 0x81
        sig_bow_flame, // 0x82
        eq_slow_grenade, // 0x83
        smg_accurate_t9, // 0x84
        hash_603c083704cefb0c, // 0x85
        jetfighter, // 0x86
        smg_heavy_t9, // 0x87
        tear_gas, // 0x88
        eq_molotov, // 0x89
        smg_fastfire_t9, // 0x8a
        lmg_light_t9, // 0x8b
        ai_tank_marker, // 0x8c
        gadget_cleanse, // 0x8d
        hero_flamethrower, // 0x8e
        sniper_standard_t9, // 0x8f
        smg_spray_t9, // 0x90
        hero_annihilator, // 0x91
        ar_fasthandling_t9, // 0x92
        ar_mobility_t9, // 0x93
        planemortar, // 0x94
        sniper_cannon_t9, // 0x95
        shotgun_semiauto_t9, // 0x96
        lmg_fastfire_t9, // 0x97
        ar_standard_t9, // 0x98
        weapon_null, // 0x99
        satchel_charge, // 0x9a
        default_specialist_equipment, // 0x9b
        gadget_health_regen_squad, // 0x9c
        hash_76b56e7e0b3b7aac, // 0x9d
        eq_decoy_grenade, // 0x9e
        ray_gun, // 0x9f
        hash_788c96e19cc7a46e, // 0xa0
        claymore, // 0xa1
        smg_handling_t9, // 0xa2
        cymbal_monkey, // 0xa3
        shotgun_fullauto_t9, // 0xa4
        hash_7ab3f9a730359659, // 0xa5
        hash_7ab72fe059175b31, // 0xa6
        gadget_icepick, // 0xa7
        basketball, // 0xa8
        gadget_camo, // 0xa9
        lmg_slowfire_t9 // 0xaa
    };

    // idx 0x6 members: 0x44
    enum hash_4b8d95aacf149fb9 {
        tr_fastburst_t9, // 0x0
        lmg_accurate_t9, // 0x1
        ray_gun_mk2z, // 0x2
        ray_gun_mk2y, // 0x3
        ray_gun_mk2x, // 0x4
        sniper_powersemi_t9, // 0x5
        hash_c21b61b32a5d972, // 0x6
        ar_damage_t9, // 0x7
        homunculus, // 0x8
        spknifeork, // 0x9
        melee_bowie, // 0xa
        ww_random_ray_gun1, // 0xb
        hash_165cf52ce418f5a1, // 0xc
        special_crossbow_t9, // 0xd
        ww_blundergat_t8, // 0xe
        pistol_fullauto_t9, // 0xf
        special_grenadelauncher_t9, // 0x10
        launcher_freefire_t9, // 0x11
        ar_accurate_t9, // 0x12
        ww_crossbow_impaler_t8, // 0x13
        ww_freezegun_t8, // 0x14
        knife_loadout, // 0x15
        hash_2ea46ca74ebdfcac, // 0x16
        smg_capacity_t9, // 0x17
        spork_alcatraz, // 0x18
        pistol_semiauto_t9, // 0x19
        smg_burst_t9, // 0x1a
        pistol_revolver_t9, // 0x1b
        launcher_standard_t9, // 0x1c
        melee_bowie_bloody, // 0x1d
        melee_sledgehammer_t9, // 0x1e
        pistol_burst_t9, // 0x1f
        hash_4385cf507401820f, // 0x20
        sniper_accurate_t9, // 0x21
        ar_fastfire_t9, // 0x22
        melee_wakizashi_t9, // 0x23
        hash_48206b17d50533c2, // 0x24
        sniper_quickscope_t9, // 0x25
        ww_crossbow_t8, // 0x26
        ar_slowhandling_t9, // 0x27
        tr_precisionsemi_t9, // 0x28
        tr_damagesemi_t9, // 0x29
        shotgun_pump_t9, // 0x2a
        hash_55c23f24d806e3a6, // 0x2b
        ar_slowfire_t9, // 0x2c
        tr_powerburst_t9, // 0x2d
        ray_gun_mk2, // 0x2e
        tr_longburst_t9, // 0x2f
        smg_standard_t9, // 0x30
        smg_accurate_t9, // 0x31
        hash_603c083704cefb0c, // 0x32
        smg_heavy_t9, // 0x33
        smg_fastfire_t9, // 0x34
        lmg_light_t9, // 0x35
        sniper_standard_t9, // 0x36
        smg_spray_t9, // 0x37
        ar_fasthandling_t9, // 0x38
        ar_mobility_t9, // 0x39
        sniper_cannon_t9, // 0x3a
        shotgun_semiauto_t9, // 0x3b
        lmg_fastfire_t9, // 0x3c
        ar_standard_t9, // 0x3d
        ray_gun, // 0x3e
        smg_handling_t9, // 0x3f
        shotgun_fullauto_t9, // 0x40
        hash_7ab72fe059175b31, // 0x41
        basketball, // 0x42
        lmg_slowfire_t9 // 0x43
    };

    // idx 0x7 members: 0x13
    enum hash_7493d39e2637c1e7 {
        bonuscard, // 0x0
        hero, // 0x1
        feature, // 0x2
        weapon_special, // 0x3
        weapon_knife, // 0x4
        character, // 0x5
        miscweapon, // 0x6
        weapon_pistol, // 0x7
        killstreak, // 0x8
        weapon_sniper, // 0x9
        talent, // 0xa
        weapon_launcher, // 0xb
        weapon_grenade, // 0xc
        weapon_lmg, // 0xd
        weapon_tactical, // 0xe
        weapon_smg, // 0xf
        hash_7b68172df6035672, // 0x10
        weapon_cqb, // 0x11
        weapon_assault // 0x12
    };

    // idx 0x8 members: 0x1c
    enum hash_d5731f85b8cf294 {
        dart, // 0x0
        ultimate_turret, // 0x1
        counteruav, // 0x2
        recon_plane, // 0x3
        weapon_armor, // 0x4
        hoverjet, // 0x5
        remote_missile, // 0x6
        sig_lmg, // 0x7
        swat_team, // 0x8
        supplydrop_marker, // 0x9
        chopper_gunner, // 0xa
        drone_squadron, // 0xb
        overwatch_helicopter, // 0xc
        napalm_strike, // 0xd
        hero_pineapplegun, // 0xe
        ability_dog, // 0xf
        straferun, // 0x10
        recon_car, // 0x11
        uav, // 0x12
        ac130, // 0x13
        helicopter_comlink, // 0x14
        sig_bow_flame, // 0x15
        jetfighter, // 0x16
        ai_tank_marker, // 0x17
        helicopter_guard, // 0x18
        hero_flamethrower, // 0x19
        hero_annihilator, // 0x1a
        planemortar // 0x1b
    };

    // idx 0x9 members: 0x2e
    enum hash_507792265be6dcc4 {
        ability_smart_cover, // 0x0
        hash_7a083f7ba43fa06, // 0x1
        eq_wraith_fire, // 0x2
        eq_shroud, // 0x3
        gadget_vision_pulse, // 0x4
        waterballoon, // 0x5
        eq_arm_blade, // 0x6
        gadget_heat_wave, // 0x7
        eq_localheal, // 0x8
        gadget_medicalinjectiongun, // 0x9
        nightingale, // 0xa
        gadget_smart_cover, // 0xb
        willy_pete, // 0xc
        eq_emp_grenade, // 0xd
        frag_grenade, // 0xe
        hatchet, // 0xf
        gadget_health_regen, // 0x10
        hash_3507beb47a6b634e, // 0x11
        eq_stimshot, // 0x12
        hash_3ab58e40011df941, // 0x13
        eq_sticky_grenade, // 0x14
        eq_seeker_mine, // 0x15
        hash_4b1854c2ff5135b2, // 0x16
        snowball, // 0x17
        eq_concertina_wire, // 0x18
        eq_acid_bomb, // 0x19
        gadget_spawnbeacon, // 0x1a
        gadget_armor, // 0x1b
        tomahawk_t8, // 0x1c
        gadget_health_boost, // 0x1d
        spectre_grenade, // 0x1e
        eq_flash_grenade, // 0x1f
        eq_slow_grenade, // 0x20
        eq_molotov, // 0x21
        gadget_cleanse, // 0x22
        satchel_charge, // 0x23
        default_specialist_equipment, // 0x24
        gadget_health_regen_squad, // 0x25
        hash_76b56e7e0b3b7aac, // 0x26
        eq_decoy_grenade, // 0x27
        hash_788c96e19cc7a46e, // 0x28
        claymore, // 0x29
        cymbal_monkey, // 0x2a
        hash_7ab3f9a730359659, // 0x2b
        gadget_icepick, // 0x2c
        gadget_camo // 0x2d
    };

    // idx 0xa members: 0x3c
    enum hash_1e2de876fb880be2 {
        quickdraw, // 0x0
        acog, // 0x1
        dw, // 0x2
        ir, // 0x3
        barrel2, // 0x4
        mixunder2, // 0x5
        fastreload, // 0x6
        heavy, // 0x7
        steadyaim, // 0x8
        stalker, // 0x9
        barrel, // 0xa
        mixstock, // 0xb
        smoothzoom2, // 0xc
        mixclip2, // 0xd
        reflex4, // 0xe
        reflex3, // 0xf
        reflex2, // 0x10
        stalker2, // 0x11
        extclip2, // 0x12
        tactical, // 0x13
        steadyaim2, // 0x14
        mixclip, // 0x15
        light, // 0x16
        speedgrip2, // 0x17
        mixhandle, // 0x18
        mixunder, // 0x19
        mixbarrel2, // 0x1a
        mixstock2, // 0x1b
        reddot, // 0x1c
        handle, // 0x1d
        mixmuzzle2, // 0x1e
        extclip, // 0x1f
        light2, // 0x20
        heavy2, // 0x21
        holo, // 0x22
        elo, // 0x23
        fastreload2, // 0x24
        scope3x, // 0x25
        scope4x, // 0x26
        mixhandle2, // 0x27
        compensator, // 0x28
        mixbody, // 0x29
        quickdraw2, // 0x2a
        suppressed2, // 0x2b
        speedgrip, // 0x2c
        sprintout2, // 0x2d
        suppressed, // 0x2e
        sprintout, // 0x2f
        grip2, // 0x30
        mixmuzzle, // 0x31
        handle2, // 0x32
        compensator2, // 0x33
        mixbody2, // 0x34
        dualoptic, // 0x35
        grip, // 0x36
        smoothzoom, // 0x37
        reflex, // 0x38
        mixbarrel, // 0x39
        elo3, // 0x3a
        elo2 // 0x3b
    };

    // idx 0xb members: 0x36
    enum hash_48d8d533750ed177 {
        talent_gungho, // 0x0
        talent_engineer, // 0x1
        talent_coldblooded, // 0x2
        hash_9fb2125b3e673e5, // 0x3
        gear_armor, // 0x4
        hash_cd70e712f842296, // 0x5
        talent_tracker, // 0x6
        hash_101808cdfcd390d6, // 0x7
        hash_128256155e755170, // 0x8
        hash_16cfc7f70dbd8712, // 0x9
        talent_flakjacket, // 0xa
        talent_logistics, // 0xb
        talent_looter, // 0xc
        gadget_medicalinjectiongun, // 0xd
        hash_1d8863d0b864a48b, // 0xe
        hash_1db03fa9862ba330, // 0xf
        hash_20290a682a974c94, // 0x10
        talent_dexterity, // 0x11
        hash_249e75e962ea5275, // 0x12
        talent_resistance, // 0x13
        gear_awareness, // 0x14
        hash_2c3a32e6e2afd1f2, // 0x15
        hash_311283e3107dec74, // 0x16
        talent_lightweight, // 0x17
        talent_awareness, // 0x18
        gear_equipmentcharge, // 0x19
        hash_39045b0020cc3e00, // 0x1a
        hash_3c323c7819b10b4d, // 0x1b
        hash_3c60422123a9075b, // 0x1c
        talent_scavenger, // 0x1d
        talent_skulker, // 0x1e
        gear_scorestreakcharge, // 0x1f
        talent_ghost, // 0x20
        hash_4f80a2c3398e97c9, // 0x21
        talent_elemental_pop, // 0x22
        talent_brawler, // 0x23
        talent_quartermaster, // 0x24
        hash_5c80935e7a319f21, // 0x25
        talent_paranoia, // 0x26
        talent_teamlink, // 0x27
        talent_deadsilence, // 0x28
        hash_646fc27884bdaa02, // 0x29
        gear_medicalinjectiongun, // 0x2a
        hash_661cd0d6fb33878c, // 0x2b
        talent_spycraft, // 0x2c
        hash_7321f9058ee65217, // 0x2d
        hash_7716cb3888f5dd8a, // 0x2e
        talent_elemental_pop_2, // 0x2f
        talent_elemental_pop_3, // 0x30
        talent_elemental_pop_1, // 0x31
        talent_elemental_pop_4, // 0x32
        talent_elemental_pop_5, // 0x33
        hash_7ca561e40dc3c5de, // 0x34
        hash_7f79d3ba6ed1a1d7 // 0x35
    };

    // idx 0xc members: 0x6
    enum hash_66db207c660e33f3 {
        bonuscard_overkill, // 0x0
        bonuscard_underkill, // 0x1
        bonuscard_perk_1_greed, // 0x2
        hash_4a12859000892dda, // 0x3
        hash_639ebbcda56447e7, // 0x4
        bonuscard_primary_gunfighter // 0x5
    };

    // root: bitSize: 0xf38, members: 10

    // offset: 0x0, bitSize: 0x6d8(0xdb Byte(s))
    region_info dml;
    // offset: 0x6d8, bitSize: 0x318(0x63 Byte(s)), array:0x3(hti:0xffff)
    lootcontracts loot_contracts[3];
    // offset: 0x9f0, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_tier_boost;
    // offset: 0x9f8, bitSize: 0x8(0x1 Byte(s))
    hash_54196e9e9860f0be platform;
    // offset: 0xa00, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_party_tier_boost;
    // offset: 0xa08, bitSize: 0x440(0x88 Byte(s)), array:0x44(hti:0x6)
    hash_1c86958671ff27fd hash_4953b2b12f1d6b1b[hash_4b8d95aacf149fb9];
    // offset: 0xe48, bitSize: 0xa0(0x14 Byte(s))
    client_header client;
    // offset: 0xee8, bitSize: 0x8(0x1 Byte(s))
    byte tier_boost;
    // offset: 0xef0, bitSize: 0x44, array:0x44(hti:0x6)
    bool hash_4473319d8a8d9dcf[hash_4b8d95aacf149fb9];
};

version hash_eea2fad280179af7 {
    // enums ..... 13 (0xd)
    // structs ... 8 (0x8)
    // header bit size .. 4072 (0xfe8)
    // header byte size . 509 (0x1fd)

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

    // bitSize: 0x500, members: 5
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
    struct hash_1c86958671ff27fd {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_50ab8b7df567cd2a;
    };

    // bitSize: 0x108, members: 6
    struct lootcontracts {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint xp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint contractid;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:3 contractgamemode;
        // offset: 0x48, bitSize: 0x40(0x8 Byte(s))
        xhash contracthash;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 progress;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 target;
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

    // idx 0x5 members: 0xab
    enum hash_10d50fe10481423c {
        tr_fastburst_t9, // 0x0
        ability_smart_cover, // 0x1
        dart, // 0x2
        ultimate_turret, // 0x3
        hash_5a7fd1af4a1d5c9, // 0x4
        hash_7a083f7ba43fa06, // 0x5
        lmg_accurate_t9, // 0x6
        ray_gun_mk2z, // 0x7
        ray_gun_mk2y, // 0x8
        ray_gun_mk2x, // 0x9
        sniper_powersemi_t9, // 0xa
        eq_wraith_fire, // 0xb
        counteruav, // 0xc
        missile_turret, // 0xd
        eq_shroud, // 0xe
        gadget_supplypod, // 0xf
        ar_damage_t9, // 0x10
        homunculus, // 0x11
        spknifeork, // 0x12
        melee_bowie, // 0x13
        ww_random_ray_gun1, // 0x14
        recon_plane, // 0x15
        sig_buckler_dw, // 0x16
        gadget_vision_pulse, // 0x17
        waterballoon, // 0x18
        special_crossbow_t9, // 0x19
        weapon_armor, // 0x1a
        eq_arm_blade, // 0x1b
        ww_blundergat_t8, // 0x1c
        gadget_heat_wave, // 0x1d
        eq_localheal, // 0x1e
        hoverjet, // 0x1f
        nightingale, // 0x20
        pistol_fullauto_t9, // 0x21
        remote_missile, // 0x22
        gadget_smart_cover, // 0x23
        willy_pete, // 0x24
        eq_emp_grenade, // 0x25
        special_grenadelauncher_t9, // 0x26
        launcher_freefire_t9, // 0x27
        ar_accurate_t9, // 0x28
        sig_lmg, // 0x29
        ww_crossbow_impaler_t8, // 0x2a
        ww_freezegun_t8, // 0x2b
        frag_grenade, // 0x2c
        knife_loadout, // 0x2d
        feature_default_class_1, // 0x2e
        feature_default_class_3, // 0x2f
        feature_default_class_2, // 0x30
        feature_default_class_5, // 0x31
        feature_default_class_4, // 0x32
        feature_default_class_6, // 0x33
        swat_team, // 0x34
        land_mine, // 0x35
        hatchet, // 0x36
        supplydrop_marker, // 0x37
        mute_smoke, // 0x38
        hash_2ea46ca74ebdfcac, // 0x39
        smg_capacity_t9, // 0x3a
        chopper_gunner, // 0x3b
        null_offhand_secondary, // 0x3c
        gadget_health_regen, // 0x3d
        hash_31be8125c7d0f273, // 0x3e
        listening_device, // 0x3f
        spork_alcatraz, // 0x40
        drone_squadron, // 0x41
        pistol_semiauto_t9, // 0x42
        null_offhand_primary, // 0x43
        smg_burst_t9, // 0x44
        hash_3507beb47a6b634e, // 0x45
        pistol_revolver_t9, // 0x46
        eq_stimshot, // 0x47
        overwatch_helicopter, // 0x48
        gadget_jammer, // 0x49
        hash_3ab58e40011df941, // 0x4a
        launcher_standard_t9, // 0x4b
        melee_bowie_bloody, // 0x4c
        eq_sticky_grenade, // 0x4d
        melee_sledgehammer_t9, // 0x4e
        sig_blade, // 0x4f
        pistol_burst_t9, // 0x50
        hash_4385cf507401820f, // 0x51
        napalm_strike, // 0x52
        sniper_accurate_t9, // 0x53
        ar_fastfire_t9, // 0x54
        melee_wakizashi_t9, // 0x55
        hero_pineapplegun, // 0x56
        hash_48206b17d50533c2, // 0x57
        sniper_quickscope_t9, // 0x58
        ability_dog, // 0x59
        straferun, // 0x5a
        eq_seeker_mine, // 0x5b
        ww_crossbow_t8, // 0x5c
        recon_car, // 0x5d
        hash_4b1854c2ff5135b2, // 0x5e
        snowball, // 0x5f
        feature_custom_class_9, // 0x60
        feature_custom_class_8, // 0x61
        feature_custom_class_3, // 0x62
        feature_custom_class_2, // 0x63
        feature_custom_class_1, // 0x64
        feature_custom_class_7, // 0x65
        feature_custom_class_6, // 0x66
        feature_custom_class_5, // 0x67
        feature_custom_class_4, // 0x68
        uav, // 0x69
        eq_concertina_wire, // 0x6a
        feature_custom_class_10, // 0x6b
        ar_slowhandling_t9, // 0x6c
        eq_acid_bomb, // 0x6d
        gadget_spawnbeacon, // 0x6e
        ac130, // 0x6f
        tr_precisionsemi_t9, // 0x70
        helicopter_comlink, // 0x71
        gadget_armor, // 0x72
        tr_damagesemi_t9, // 0x73
        feature_cac, // 0x74
        tomahawk_t8, // 0x75
        shotgun_pump_t9, // 0x76
        gadget_health_boost, // 0x77
        spectre_grenade, // 0x78
        eq_flash_grenade, // 0x79
        hash_55c23f24d806e3a6, // 0x7a
        bare_hands, // 0x7b
        ar_slowfire_t9, // 0x7c
        tr_powerburst_t9, // 0x7d
        trophy_system, // 0x7e
        ray_gun_mk2, // 0x7f
        tr_longburst_t9, // 0x80
        smg_standard_t9, // 0x81
        sig_bow_flame, // 0x82
        eq_slow_grenade, // 0x83
        smg_accurate_t9, // 0x84
        hash_603c083704cefb0c, // 0x85
        jetfighter, // 0x86
        smg_heavy_t9, // 0x87
        tear_gas, // 0x88
        eq_molotov, // 0x89
        smg_fastfire_t9, // 0x8a
        lmg_light_t9, // 0x8b
        ai_tank_marker, // 0x8c
        gadget_cleanse, // 0x8d
        hero_flamethrower, // 0x8e
        sniper_standard_t9, // 0x8f
        smg_spray_t9, // 0x90
        hero_annihilator, // 0x91
        ar_fasthandling_t9, // 0x92
        ar_mobility_t9, // 0x93
        planemortar, // 0x94
        sniper_cannon_t9, // 0x95
        shotgun_semiauto_t9, // 0x96
        lmg_fastfire_t9, // 0x97
        ar_standard_t9, // 0x98
        weapon_null, // 0x99
        satchel_charge, // 0x9a
        default_specialist_equipment, // 0x9b
        gadget_health_regen_squad, // 0x9c
        hash_76b56e7e0b3b7aac, // 0x9d
        eq_decoy_grenade, // 0x9e
        ray_gun, // 0x9f
        hash_788c96e19cc7a46e, // 0xa0
        claymore, // 0xa1
        smg_handling_t9, // 0xa2
        cymbal_monkey, // 0xa3
        shotgun_fullauto_t9, // 0xa4
        hash_7ab3f9a730359659, // 0xa5
        hash_7ab72fe059175b31, // 0xa6
        gadget_icepick, // 0xa7
        basketball, // 0xa8
        gadget_camo, // 0xa9
        lmg_slowfire_t9 // 0xaa
    };

    // idx 0x6 members: 0x44
    enum hash_4b8d95aacf149fb9 {
        tr_fastburst_t9, // 0x0
        lmg_accurate_t9, // 0x1
        ray_gun_mk2z, // 0x2
        ray_gun_mk2y, // 0x3
        ray_gun_mk2x, // 0x4
        sniper_powersemi_t9, // 0x5
        hash_c21b61b32a5d972, // 0x6
        ar_damage_t9, // 0x7
        homunculus, // 0x8
        spknifeork, // 0x9
        melee_bowie, // 0xa
        ww_random_ray_gun1, // 0xb
        hash_165cf52ce418f5a1, // 0xc
        special_crossbow_t9, // 0xd
        ww_blundergat_t8, // 0xe
        pistol_fullauto_t9, // 0xf
        special_grenadelauncher_t9, // 0x10
        launcher_freefire_t9, // 0x11
        ar_accurate_t9, // 0x12
        ww_crossbow_impaler_t8, // 0x13
        ww_freezegun_t8, // 0x14
        knife_loadout, // 0x15
        hash_2ea46ca74ebdfcac, // 0x16
        smg_capacity_t9, // 0x17
        spork_alcatraz, // 0x18
        pistol_semiauto_t9, // 0x19
        smg_burst_t9, // 0x1a
        pistol_revolver_t9, // 0x1b
        launcher_standard_t9, // 0x1c
        melee_bowie_bloody, // 0x1d
        melee_sledgehammer_t9, // 0x1e
        pistol_burst_t9, // 0x1f
        hash_4385cf507401820f, // 0x20
        sniper_accurate_t9, // 0x21
        ar_fastfire_t9, // 0x22
        melee_wakizashi_t9, // 0x23
        hash_48206b17d50533c2, // 0x24
        sniper_quickscope_t9, // 0x25
        ww_crossbow_t8, // 0x26
        ar_slowhandling_t9, // 0x27
        tr_precisionsemi_t9, // 0x28
        tr_damagesemi_t9, // 0x29
        shotgun_pump_t9, // 0x2a
        hash_55c23f24d806e3a6, // 0x2b
        ar_slowfire_t9, // 0x2c
        tr_powerburst_t9, // 0x2d
        ray_gun_mk2, // 0x2e
        tr_longburst_t9, // 0x2f
        smg_standard_t9, // 0x30
        smg_accurate_t9, // 0x31
        hash_603c083704cefb0c, // 0x32
        smg_heavy_t9, // 0x33
        smg_fastfire_t9, // 0x34
        lmg_light_t9, // 0x35
        sniper_standard_t9, // 0x36
        smg_spray_t9, // 0x37
        ar_fasthandling_t9, // 0x38
        ar_mobility_t9, // 0x39
        sniper_cannon_t9, // 0x3a
        shotgun_semiauto_t9, // 0x3b
        lmg_fastfire_t9, // 0x3c
        ar_standard_t9, // 0x3d
        ray_gun, // 0x3e
        smg_handling_t9, // 0x3f
        shotgun_fullauto_t9, // 0x40
        hash_7ab72fe059175b31, // 0x41
        basketball, // 0x42
        lmg_slowfire_t9 // 0x43
    };

    // idx 0x7 members: 0x13
    enum hash_7493d39e2637c1e7 {
        bonuscard, // 0x0
        hero, // 0x1
        feature, // 0x2
        weapon_special, // 0x3
        weapon_knife, // 0x4
        character, // 0x5
        miscweapon, // 0x6
        weapon_pistol, // 0x7
        killstreak, // 0x8
        weapon_sniper, // 0x9
        talent, // 0xa
        weapon_launcher, // 0xb
        weapon_grenade, // 0xc
        weapon_lmg, // 0xd
        weapon_tactical, // 0xe
        weapon_smg, // 0xf
        hash_7b68172df6035672, // 0x10
        weapon_cqb, // 0x11
        weapon_assault // 0x12
    };

    // idx 0x8 members: 0x1c
    enum hash_d5731f85b8cf294 {
        dart, // 0x0
        ultimate_turret, // 0x1
        counteruav, // 0x2
        recon_plane, // 0x3
        weapon_armor, // 0x4
        hoverjet, // 0x5
        remote_missile, // 0x6
        sig_lmg, // 0x7
        swat_team, // 0x8
        supplydrop_marker, // 0x9
        chopper_gunner, // 0xa
        drone_squadron, // 0xb
        overwatch_helicopter, // 0xc
        napalm_strike, // 0xd
        hero_pineapplegun, // 0xe
        ability_dog, // 0xf
        straferun, // 0x10
        recon_car, // 0x11
        uav, // 0x12
        ac130, // 0x13
        helicopter_comlink, // 0x14
        sig_bow_flame, // 0x15
        jetfighter, // 0x16
        ai_tank_marker, // 0x17
        helicopter_guard, // 0x18
        hero_flamethrower, // 0x19
        hero_annihilator, // 0x1a
        planemortar // 0x1b
    };

    // idx 0x9 members: 0x35
    enum hash_507792265be6dcc4 {
        ability_smart_cover, // 0x0
        hash_7a083f7ba43fa06, // 0x1
        eq_wraith_fire, // 0x2
        missile_turret, // 0x3
        eq_shroud, // 0x4
        gadget_supplypod, // 0x5
        gadget_vision_pulse, // 0x6
        waterballoon, // 0x7
        eq_arm_blade, // 0x8
        gadget_heat_wave, // 0x9
        eq_localheal, // 0xa
        gadget_medicalinjectiongun, // 0xb
        nightingale, // 0xc
        gadget_smart_cover, // 0xd
        willy_pete, // 0xe
        eq_emp_grenade, // 0xf
        frag_grenade, // 0x10
        land_mine, // 0x11
        hatchet, // 0x12
        gadget_health_regen, // 0x13
        listening_device, // 0x14
        hash_3507beb47a6b634e, // 0x15
        eq_stimshot, // 0x16
        gadget_jammer, // 0x17
        hash_3ab58e40011df941, // 0x18
        eq_sticky_grenade, // 0x19
        eq_seeker_mine, // 0x1a
        hash_4b1854c2ff5135b2, // 0x1b
        snowball, // 0x1c
        eq_concertina_wire, // 0x1d
        eq_acid_bomb, // 0x1e
        gadget_spawnbeacon, // 0x1f
        gadget_armor, // 0x20
        tomahawk_t8, // 0x21
        gadget_health_boost, // 0x22
        spectre_grenade, // 0x23
        eq_flash_grenade, // 0x24
        trophy_system, // 0x25
        eq_slow_grenade, // 0x26
        tear_gas, // 0x27
        eq_molotov, // 0x28
        gadget_cleanse, // 0x29
        satchel_charge, // 0x2a
        default_specialist_equipment, // 0x2b
        gadget_health_regen_squad, // 0x2c
        hash_76b56e7e0b3b7aac, // 0x2d
        eq_decoy_grenade, // 0x2e
        hash_788c96e19cc7a46e, // 0x2f
        claymore, // 0x30
        cymbal_monkey, // 0x31
        hash_7ab3f9a730359659, // 0x32
        gadget_icepick, // 0x33
        gadget_camo // 0x34
    };

    // idx 0xa members: 0x3c
    enum hash_1e2de876fb880be2 {
        quickdraw, // 0x0
        acog, // 0x1
        dw, // 0x2
        ir, // 0x3
        barrel2, // 0x4
        mixunder2, // 0x5
        fastreload, // 0x6
        heavy, // 0x7
        steadyaim, // 0x8
        stalker, // 0x9
        barrel, // 0xa
        mixstock, // 0xb
        smoothzoom2, // 0xc
        mixclip2, // 0xd
        reflex4, // 0xe
        reflex3, // 0xf
        reflex2, // 0x10
        stalker2, // 0x11
        extclip2, // 0x12
        tactical, // 0x13
        steadyaim2, // 0x14
        mixclip, // 0x15
        light, // 0x16
        speedgrip2, // 0x17
        mixhandle, // 0x18
        mixunder, // 0x19
        mixbarrel2, // 0x1a
        mixstock2, // 0x1b
        reddot, // 0x1c
        handle, // 0x1d
        mixmuzzle2, // 0x1e
        extclip, // 0x1f
        light2, // 0x20
        heavy2, // 0x21
        holo, // 0x22
        elo, // 0x23
        fastreload2, // 0x24
        scope3x, // 0x25
        scope4x, // 0x26
        mixhandle2, // 0x27
        compensator, // 0x28
        mixbody, // 0x29
        quickdraw2, // 0x2a
        suppressed2, // 0x2b
        speedgrip, // 0x2c
        sprintout2, // 0x2d
        suppressed, // 0x2e
        sprintout, // 0x2f
        grip2, // 0x30
        mixmuzzle, // 0x31
        handle2, // 0x32
        compensator2, // 0x33
        mixbody2, // 0x34
        dualoptic, // 0x35
        grip, // 0x36
        smoothzoom, // 0x37
        reflex, // 0x38
        mixbarrel, // 0x39
        elo3, // 0x3a
        elo2 // 0x3b
    };

    // idx 0xb members: 0x36
    enum hash_48d8d533750ed177 {
        talent_gungho, // 0x0
        talent_engineer, // 0x1
        talent_coldblooded, // 0x2
        hash_9fb2125b3e673e5, // 0x3
        gear_armor, // 0x4
        hash_cd70e712f842296, // 0x5
        talent_tracker, // 0x6
        hash_101808cdfcd390d6, // 0x7
        hash_128256155e755170, // 0x8
        hash_16cfc7f70dbd8712, // 0x9
        talent_flakjacket, // 0xa
        talent_logistics, // 0xb
        talent_looter, // 0xc
        gadget_medicalinjectiongun, // 0xd
        hash_1d8863d0b864a48b, // 0xe
        hash_1db03fa9862ba330, // 0xf
        hash_20290a682a974c94, // 0x10
        talent_dexterity, // 0x11
        hash_249e75e962ea5275, // 0x12
        talent_resistance, // 0x13
        gear_awareness, // 0x14
        hash_2c3a32e6e2afd1f2, // 0x15
        hash_311283e3107dec74, // 0x16
        talent_lightweight, // 0x17
        talent_awareness, // 0x18
        gear_equipmentcharge, // 0x19
        hash_39045b0020cc3e00, // 0x1a
        hash_3c323c7819b10b4d, // 0x1b
        hash_3c60422123a9075b, // 0x1c
        talent_scavenger, // 0x1d
        talent_skulker, // 0x1e
        gear_scorestreakcharge, // 0x1f
        talent_ghost, // 0x20
        hash_4f80a2c3398e97c9, // 0x21
        talent_elemental_pop, // 0x22
        talent_brawler, // 0x23
        talent_quartermaster, // 0x24
        hash_5c80935e7a319f21, // 0x25
        talent_paranoia, // 0x26
        talent_teamlink, // 0x27
        talent_deadsilence, // 0x28
        hash_646fc27884bdaa02, // 0x29
        gear_medicalinjectiongun, // 0x2a
        hash_661cd0d6fb33878c, // 0x2b
        talent_spycraft, // 0x2c
        hash_7321f9058ee65217, // 0x2d
        hash_7716cb3888f5dd8a, // 0x2e
        talent_elemental_pop_2, // 0x2f
        talent_elemental_pop_3, // 0x30
        talent_elemental_pop_1, // 0x31
        talent_elemental_pop_4, // 0x32
        talent_elemental_pop_5, // 0x33
        hash_7ca561e40dc3c5de, // 0x34
        hash_7f79d3ba6ed1a1d7 // 0x35
    };

    // idx 0xc members: 0x6
    enum hash_66db207c660e33f3 {
        bonuscard_overkill, // 0x0
        bonuscard_underkill, // 0x1
        bonuscard_perk_1_greed, // 0x2
        hash_4a12859000892dda, // 0x3
        hash_639ebbcda56447e7, // 0x4
        bonuscard_primary_gunfighter // 0x5
    };

    // root: bitSize: 0xf38, members: 10

    // offset: 0x0, bitSize: 0x6d8(0xdb Byte(s))
    region_info dml;
    // offset: 0x6d8, bitSize: 0x318(0x63 Byte(s)), array:0x3(hti:0xffff)
    lootcontracts loot_contracts[3];
    // offset: 0x9f0, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_tier_boost;
    // offset: 0x9f8, bitSize: 0x8(0x1 Byte(s))
    hash_54196e9e9860f0be platform;
    // offset: 0xa00, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_party_tier_boost;
    // offset: 0xa08, bitSize: 0x440(0x88 Byte(s)), array:0x44(hti:0x6)
    hash_1c86958671ff27fd hash_4953b2b12f1d6b1b[hash_4b8d95aacf149fb9];
    // offset: 0xe48, bitSize: 0xa0(0x14 Byte(s))
    client_header client;
    // offset: 0xee8, bitSize: 0x8(0x1 Byte(s))
    byte tier_boost;
    // offset: 0xef0, bitSize: 0x44, array:0x44(hti:0x6)
    bool hash_4473319d8a8d9dcf[hash_4b8d95aacf149fb9];
};

version hash_fd45dd6c1f21e6ba {
    // enums ..... 13 (0xd)
    // structs ... 8 (0x8)
    // header bit size .. 4296 (0x10c8)
    // header byte size . 537 (0x219)

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

    // bitSize: 0x500, members: 5
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
    struct hash_1c86958671ff27fd {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_50ab8b7df567cd2a;
    };

    // bitSize: 0x108, members: 6
    struct lootcontracts {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint xp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint contractid;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:3 contractgamemode;
        // offset: 0x48, bitSize: 0x40(0x8 Byte(s))
        xhash contracthash;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 progress;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 target;
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

    // idx 0x5 members: 0xab
    enum hash_10d50fe10481423c {
        tr_fastburst_t9, // 0x0
        ability_smart_cover, // 0x1
        dart, // 0x2
        ultimate_turret, // 0x3
        hash_5a7fd1af4a1d5c9, // 0x4
        hash_7a083f7ba43fa06, // 0x5
        lmg_accurate_t9, // 0x6
        ray_gun_mk2z, // 0x7
        ray_gun_mk2y, // 0x8
        ray_gun_mk2x, // 0x9
        sniper_powersemi_t9, // 0xa
        eq_wraith_fire, // 0xb
        counteruav, // 0xc
        missile_turret, // 0xd
        eq_shroud, // 0xe
        gadget_supplypod, // 0xf
        ar_damage_t9, // 0x10
        homunculus, // 0x11
        spknifeork, // 0x12
        melee_bowie, // 0x13
        ww_random_ray_gun1, // 0x14
        recon_plane, // 0x15
        sig_buckler_dw, // 0x16
        gadget_vision_pulse, // 0x17
        waterballoon, // 0x18
        special_crossbow_t9, // 0x19
        weapon_armor, // 0x1a
        eq_arm_blade, // 0x1b
        ww_blundergat_t8, // 0x1c
        gadget_heat_wave, // 0x1d
        eq_localheal, // 0x1e
        hoverjet, // 0x1f
        nightingale, // 0x20
        pistol_fullauto_t9, // 0x21
        remote_missile, // 0x22
        gadget_smart_cover, // 0x23
        willy_pete, // 0x24
        eq_emp_grenade, // 0x25
        special_grenadelauncher_t9, // 0x26
        launcher_freefire_t9, // 0x27
        ar_accurate_t9, // 0x28
        sig_lmg, // 0x29
        ww_crossbow_impaler_t8, // 0x2a
        ww_freezegun_t8, // 0x2b
        frag_grenade, // 0x2c
        knife_loadout, // 0x2d
        feature_default_class_1, // 0x2e
        feature_default_class_3, // 0x2f
        feature_default_class_2, // 0x30
        feature_default_class_5, // 0x31
        feature_default_class_4, // 0x32
        feature_default_class_6, // 0x33
        swat_team, // 0x34
        land_mine, // 0x35
        hatchet, // 0x36
        supplydrop_marker, // 0x37
        mute_smoke, // 0x38
        hash_2ea46ca74ebdfcac, // 0x39
        smg_capacity_t9, // 0x3a
        chopper_gunner, // 0x3b
        null_offhand_secondary, // 0x3c
        gadget_health_regen, // 0x3d
        hash_31be8125c7d0f273, // 0x3e
        listening_device, // 0x3f
        spork_alcatraz, // 0x40
        drone_squadron, // 0x41
        pistol_semiauto_t9, // 0x42
        null_offhand_primary, // 0x43
        smg_burst_t9, // 0x44
        hash_3507beb47a6b634e, // 0x45
        pistol_revolver_t9, // 0x46
        eq_stimshot, // 0x47
        overwatch_helicopter, // 0x48
        gadget_jammer, // 0x49
        hash_3ab58e40011df941, // 0x4a
        launcher_standard_t9, // 0x4b
        melee_bowie_bloody, // 0x4c
        eq_sticky_grenade, // 0x4d
        melee_sledgehammer_t9, // 0x4e
        sig_blade, // 0x4f
        pistol_burst_t9, // 0x50
        hash_4385cf507401820f, // 0x51
        napalm_strike, // 0x52
        sniper_accurate_t9, // 0x53
        ar_fastfire_t9, // 0x54
        melee_wakizashi_t9, // 0x55
        hero_pineapplegun, // 0x56
        hash_48206b17d50533c2, // 0x57
        sniper_quickscope_t9, // 0x58
        ability_dog, // 0x59
        straferun, // 0x5a
        eq_seeker_mine, // 0x5b
        ww_crossbow_t8, // 0x5c
        recon_car, // 0x5d
        hash_4b1854c2ff5135b2, // 0x5e
        snowball, // 0x5f
        feature_custom_class_9, // 0x60
        feature_custom_class_8, // 0x61
        feature_custom_class_3, // 0x62
        feature_custom_class_2, // 0x63
        feature_custom_class_1, // 0x64
        feature_custom_class_7, // 0x65
        feature_custom_class_6, // 0x66
        feature_custom_class_5, // 0x67
        feature_custom_class_4, // 0x68
        uav, // 0x69
        eq_concertina_wire, // 0x6a
        feature_custom_class_10, // 0x6b
        ar_slowhandling_t9, // 0x6c
        eq_acid_bomb, // 0x6d
        gadget_spawnbeacon, // 0x6e
        ac130, // 0x6f
        tr_precisionsemi_t9, // 0x70
        helicopter_comlink, // 0x71
        gadget_armor, // 0x72
        tr_damagesemi_t9, // 0x73
        feature_cac, // 0x74
        tomahawk_t8, // 0x75
        shotgun_pump_t9, // 0x76
        gadget_health_boost, // 0x77
        spectre_grenade, // 0x78
        eq_flash_grenade, // 0x79
        hash_55c23f24d806e3a6, // 0x7a
        bare_hands, // 0x7b
        ar_slowfire_t9, // 0x7c
        tr_powerburst_t9, // 0x7d
        trophy_system, // 0x7e
        ray_gun_mk2, // 0x7f
        tr_longburst_t9, // 0x80
        smg_standard_t9, // 0x81
        sig_bow_flame, // 0x82
        eq_slow_grenade, // 0x83
        smg_accurate_t9, // 0x84
        hash_603c083704cefb0c, // 0x85
        jetfighter, // 0x86
        smg_heavy_t9, // 0x87
        tear_gas, // 0x88
        eq_molotov, // 0x89
        smg_fastfire_t9, // 0x8a
        lmg_light_t9, // 0x8b
        ai_tank_marker, // 0x8c
        gadget_cleanse, // 0x8d
        hero_flamethrower, // 0x8e
        sniper_standard_t9, // 0x8f
        smg_spray_t9, // 0x90
        hero_annihilator, // 0x91
        ar_fasthandling_t9, // 0x92
        ar_mobility_t9, // 0x93
        planemortar, // 0x94
        sniper_cannon_t9, // 0x95
        shotgun_semiauto_t9, // 0x96
        lmg_fastfire_t9, // 0x97
        ar_standard_t9, // 0x98
        weapon_null, // 0x99
        satchel_charge, // 0x9a
        default_specialist_equipment, // 0x9b
        gadget_health_regen_squad, // 0x9c
        hash_76b56e7e0b3b7aac, // 0x9d
        eq_decoy_grenade, // 0x9e
        ray_gun, // 0x9f
        hash_788c96e19cc7a46e, // 0xa0
        claymore, // 0xa1
        smg_handling_t9, // 0xa2
        cymbal_monkey, // 0xa3
        shotgun_fullauto_t9, // 0xa4
        hash_7ab3f9a730359659, // 0xa5
        hash_7ab72fe059175b31, // 0xa6
        gadget_icepick, // 0xa7
        basketball, // 0xa8
        gadget_camo, // 0xa9
        lmg_slowfire_t9 // 0xaa
    };

    // idx 0x6 members: 0x44
    enum hash_4b8d95aacf149fb9 {
        tr_fastburst_t9, // 0x0
        lmg_accurate_t9, // 0x1
        ray_gun_mk2z, // 0x2
        ray_gun_mk2y, // 0x3
        ray_gun_mk2x, // 0x4
        sniper_powersemi_t9, // 0x5
        hash_c21b61b32a5d972, // 0x6
        ar_damage_t9, // 0x7
        homunculus, // 0x8
        spknifeork, // 0x9
        melee_bowie, // 0xa
        ww_random_ray_gun1, // 0xb
        hash_165cf52ce418f5a1, // 0xc
        special_crossbow_t9, // 0xd
        ww_blundergat_t8, // 0xe
        pistol_fullauto_t9, // 0xf
        special_grenadelauncher_t9, // 0x10
        launcher_freefire_t9, // 0x11
        ar_accurate_t9, // 0x12
        ww_crossbow_impaler_t8, // 0x13
        ww_freezegun_t8, // 0x14
        knife_loadout, // 0x15
        hash_2ea46ca74ebdfcac, // 0x16
        smg_capacity_t9, // 0x17
        spork_alcatraz, // 0x18
        pistol_semiauto_t9, // 0x19
        smg_burst_t9, // 0x1a
        pistol_revolver_t9, // 0x1b
        launcher_standard_t9, // 0x1c
        melee_bowie_bloody, // 0x1d
        melee_sledgehammer_t9, // 0x1e
        pistol_burst_t9, // 0x1f
        hash_4385cf507401820f, // 0x20
        sniper_accurate_t9, // 0x21
        ar_fastfire_t9, // 0x22
        melee_wakizashi_t9, // 0x23
        hash_48206b17d50533c2, // 0x24
        sniper_quickscope_t9, // 0x25
        ww_crossbow_t8, // 0x26
        ar_slowhandling_t9, // 0x27
        tr_precisionsemi_t9, // 0x28
        tr_damagesemi_t9, // 0x29
        shotgun_pump_t9, // 0x2a
        hash_55c23f24d806e3a6, // 0x2b
        ar_slowfire_t9, // 0x2c
        tr_powerburst_t9, // 0x2d
        ray_gun_mk2, // 0x2e
        tr_longburst_t9, // 0x2f
        smg_standard_t9, // 0x30
        smg_accurate_t9, // 0x31
        hash_603c083704cefb0c, // 0x32
        smg_heavy_t9, // 0x33
        smg_fastfire_t9, // 0x34
        lmg_light_t9, // 0x35
        sniper_standard_t9, // 0x36
        smg_spray_t9, // 0x37
        ar_fasthandling_t9, // 0x38
        ar_mobility_t9, // 0x39
        sniper_cannon_t9, // 0x3a
        shotgun_semiauto_t9, // 0x3b
        lmg_fastfire_t9, // 0x3c
        ar_standard_t9, // 0x3d
        ray_gun, // 0x3e
        smg_handling_t9, // 0x3f
        shotgun_fullauto_t9, // 0x40
        hash_7ab72fe059175b31, // 0x41
        basketball, // 0x42
        lmg_slowfire_t9 // 0x43
    };

    // idx 0x7 members: 0x13
    enum hash_7493d39e2637c1e7 {
        bonuscard, // 0x0
        hero, // 0x1
        feature, // 0x2
        weapon_special, // 0x3
        weapon_knife, // 0x4
        character, // 0x5
        miscweapon, // 0x6
        weapon_pistol, // 0x7
        killstreak, // 0x8
        weapon_sniper, // 0x9
        talent, // 0xa
        weapon_launcher, // 0xb
        weapon_grenade, // 0xc
        weapon_lmg, // 0xd
        weapon_tactical, // 0xe
        weapon_smg, // 0xf
        hash_7b68172df6035672, // 0x10
        weapon_cqb, // 0x11
        weapon_assault // 0x12
    };

    // idx 0x8 members: 0x1c
    enum hash_d5731f85b8cf294 {
        dart, // 0x0
        ultimate_turret, // 0x1
        counteruav, // 0x2
        recon_plane, // 0x3
        weapon_armor, // 0x4
        hoverjet, // 0x5
        remote_missile, // 0x6
        sig_lmg, // 0x7
        swat_team, // 0x8
        supplydrop_marker, // 0x9
        chopper_gunner, // 0xa
        drone_squadron, // 0xb
        overwatch_helicopter, // 0xc
        napalm_strike, // 0xd
        hero_pineapplegun, // 0xe
        ability_dog, // 0xf
        straferun, // 0x10
        recon_car, // 0x11
        uav, // 0x12
        ac130, // 0x13
        helicopter_comlink, // 0x14
        sig_bow_flame, // 0x15
        jetfighter, // 0x16
        ai_tank_marker, // 0x17
        helicopter_guard, // 0x18
        hero_flamethrower, // 0x19
        hero_annihilator, // 0x1a
        planemortar // 0x1b
    };

    // idx 0x9 members: 0x35
    enum hash_507792265be6dcc4 {
        ability_smart_cover, // 0x0
        hash_7a083f7ba43fa06, // 0x1
        eq_wraith_fire, // 0x2
        missile_turret, // 0x3
        eq_shroud, // 0x4
        gadget_supplypod, // 0x5
        gadget_vision_pulse, // 0x6
        waterballoon, // 0x7
        eq_arm_blade, // 0x8
        gadget_heat_wave, // 0x9
        eq_localheal, // 0xa
        gadget_medicalinjectiongun, // 0xb
        nightingale, // 0xc
        gadget_smart_cover, // 0xd
        willy_pete, // 0xe
        eq_emp_grenade, // 0xf
        frag_grenade, // 0x10
        land_mine, // 0x11
        hatchet, // 0x12
        gadget_health_regen, // 0x13
        listening_device, // 0x14
        hash_3507beb47a6b634e, // 0x15
        eq_stimshot, // 0x16
        gadget_jammer, // 0x17
        hash_3ab58e40011df941, // 0x18
        eq_sticky_grenade, // 0x19
        eq_seeker_mine, // 0x1a
        hash_4b1854c2ff5135b2, // 0x1b
        snowball, // 0x1c
        eq_concertina_wire, // 0x1d
        eq_acid_bomb, // 0x1e
        gadget_spawnbeacon, // 0x1f
        gadget_armor, // 0x20
        tomahawk_t8, // 0x21
        gadget_health_boost, // 0x22
        spectre_grenade, // 0x23
        eq_flash_grenade, // 0x24
        trophy_system, // 0x25
        eq_slow_grenade, // 0x26
        tear_gas, // 0x27
        eq_molotov, // 0x28
        gadget_cleanse, // 0x29
        satchel_charge, // 0x2a
        default_specialist_equipment, // 0x2b
        gadget_health_regen_squad, // 0x2c
        hash_76b56e7e0b3b7aac, // 0x2d
        eq_decoy_grenade, // 0x2e
        hash_788c96e19cc7a46e, // 0x2f
        claymore, // 0x30
        cymbal_monkey, // 0x31
        hash_7ab3f9a730359659, // 0x32
        gadget_icepick, // 0x33
        gadget_camo // 0x34
    };

    // idx 0xa members: 0x3c
    enum hash_1e2de876fb880be2 {
        quickdraw, // 0x0
        acog, // 0x1
        dw, // 0x2
        ir, // 0x3
        barrel2, // 0x4
        mixunder2, // 0x5
        fastreload, // 0x6
        heavy, // 0x7
        steadyaim, // 0x8
        stalker, // 0x9
        barrel, // 0xa
        mixstock, // 0xb
        smoothzoom2, // 0xc
        mixclip2, // 0xd
        reflex4, // 0xe
        reflex3, // 0xf
        reflex2, // 0x10
        stalker2, // 0x11
        extclip2, // 0x12
        tactical, // 0x13
        steadyaim2, // 0x14
        mixclip, // 0x15
        light, // 0x16
        speedgrip2, // 0x17
        mixhandle, // 0x18
        mixunder, // 0x19
        mixbarrel2, // 0x1a
        mixstock2, // 0x1b
        reddot, // 0x1c
        handle, // 0x1d
        mixmuzzle2, // 0x1e
        extclip, // 0x1f
        light2, // 0x20
        heavy2, // 0x21
        holo, // 0x22
        elo, // 0x23
        fastreload2, // 0x24
        scope3x, // 0x25
        scope4x, // 0x26
        mixhandle2, // 0x27
        compensator, // 0x28
        mixbody, // 0x29
        quickdraw2, // 0x2a
        suppressed2, // 0x2b
        speedgrip, // 0x2c
        sprintout2, // 0x2d
        suppressed, // 0x2e
        sprintout, // 0x2f
        grip2, // 0x30
        mixmuzzle, // 0x31
        handle2, // 0x32
        compensator2, // 0x33
        mixbody2, // 0x34
        dualoptic, // 0x35
        grip, // 0x36
        smoothzoom, // 0x37
        reflex, // 0x38
        mixbarrel, // 0x39
        elo3, // 0x3a
        elo2 // 0x3b
    };

    // idx 0xb members: 0x36
    enum hash_48d8d533750ed177 {
        talent_gungho, // 0x0
        talent_engineer, // 0x1
        talent_coldblooded, // 0x2
        hash_9fb2125b3e673e5, // 0x3
        gear_armor, // 0x4
        hash_cd70e712f842296, // 0x5
        talent_tracker, // 0x6
        hash_101808cdfcd390d6, // 0x7
        hash_128256155e755170, // 0x8
        hash_16cfc7f70dbd8712, // 0x9
        talent_flakjacket, // 0xa
        talent_logistics, // 0xb
        talent_looter, // 0xc
        gadget_medicalinjectiongun, // 0xd
        hash_1d8863d0b864a48b, // 0xe
        hash_1db03fa9862ba330, // 0xf
        hash_20290a682a974c94, // 0x10
        talent_dexterity, // 0x11
        hash_249e75e962ea5275, // 0x12
        talent_resistance, // 0x13
        gear_awareness, // 0x14
        hash_2c3a32e6e2afd1f2, // 0x15
        hash_311283e3107dec74, // 0x16
        talent_lightweight, // 0x17
        talent_awareness, // 0x18
        gear_equipmentcharge, // 0x19
        hash_39045b0020cc3e00, // 0x1a
        hash_3c323c7819b10b4d, // 0x1b
        hash_3c60422123a9075b, // 0x1c
        talent_scavenger, // 0x1d
        talent_skulker, // 0x1e
        gear_scorestreakcharge, // 0x1f
        talent_ghost, // 0x20
        hash_4f80a2c3398e97c9, // 0x21
        talent_elemental_pop, // 0x22
        talent_brawler, // 0x23
        talent_quartermaster, // 0x24
        hash_5c80935e7a319f21, // 0x25
        talent_paranoia, // 0x26
        talent_teamlink, // 0x27
        talent_deadsilence, // 0x28
        hash_646fc27884bdaa02, // 0x29
        gear_medicalinjectiongun, // 0x2a
        hash_661cd0d6fb33878c, // 0x2b
        talent_spycraft, // 0x2c
        hash_7321f9058ee65217, // 0x2d
        hash_7716cb3888f5dd8a, // 0x2e
        talent_elemental_pop_2, // 0x2f
        talent_elemental_pop_3, // 0x30
        talent_elemental_pop_1, // 0x31
        talent_elemental_pop_4, // 0x32
        talent_elemental_pop_5, // 0x33
        hash_7ca561e40dc3c5de, // 0x34
        hash_7f79d3ba6ed1a1d7 // 0x35
    };

    // idx 0xc members: 0x6
    enum hash_66db207c660e33f3 {
        bonuscard_overkill, // 0x0
        bonuscard_underkill, // 0x1
        bonuscard_perk_1_greed, // 0x2
        hash_4a12859000892dda, // 0x3
        hash_639ebbcda56447e7, // 0x4
        bonuscard_primary_gunfighter // 0x5
    };

    // root: bitSize: 0x1018, members: 15

    // offset: 0x0, bitSize: 0x6d8(0xdb Byte(s))
    region_info dml;
    // offset: 0x6d8, bitSize: 0x318(0x63 Byte(s)), array:0x3(hti:0xffff)
    lootcontracts loot_contracts[3];
    // offset: 0x9f0, bitSize: 0x40(0x8 Byte(s))
    uint64 hash_5a1a5df0cdadbba3;
    // offset: 0xa30, bitSize: 0x40(0x8 Byte(s))
    uint64 hash_151eef37df5ee845;
    // offset: 0xa70, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_tier_boost;
    // offset: 0xa78, bitSize: 0x8(0x1 Byte(s))
    hash_54196e9e9860f0be platform;
    // offset: 0xa80, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_party_tier_boost;
    // offset: 0xa88, bitSize: 0x40(0x8 Byte(s))
    uint64 hash_1e4fbbabf3da13fa;
    // offset: 0xac8, bitSize: 0x440(0x88 Byte(s)), array:0x44(hti:0x6)
    hash_1c86958671ff27fd hash_4953b2b12f1d6b1b[hash_4b8d95aacf149fb9];
    // offset: 0xf08, bitSize: 0x20(0x4 Byte(s))
    int hash_174d79c341ec2c6c;
    // offset: 0xf28, bitSize: 0xa0(0x14 Byte(s))
    client_header client;
    // offset: 0xfc8, bitSize: 0x8(0x1 Byte(s))
    byte tier_boost;
    // offset: 0xfd0, bitSize: 0x1
    bool hash_2401d7a2dc706a6c;
    // offset: 0xfd1, bitSize: 0x44, array:0x44(hti:0x6)
    bool hash_4473319d8a8d9dcf[hash_4b8d95aacf149fb9];
};

version hash_57f43e5be7c4c3e3 {
    // enums ..... 13 (0xd)
    // structs ... 8 (0x8)
    // header bit size .. 4296 (0x10c8)
    // header byte size . 537 (0x219)

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

    // bitSize: 0x500, members: 5
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
    struct hash_1c86958671ff27fd {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_50ab8b7df567cd2a;
    };

    // bitSize: 0x108, members: 6
    struct lootcontracts {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint xp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint contractid;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:3 contractgamemode;
        // offset: 0x48, bitSize: 0x40(0x8 Byte(s))
        xhash contracthash;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 progress;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 target;
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

    // idx 0x5 members: 0xab
    enum hash_10d50fe10481423c {
        tr_fastburst_t9, // 0x0
        ability_smart_cover, // 0x1
        dart, // 0x2
        ultimate_turret, // 0x3
        hash_5a7fd1af4a1d5c9, // 0x4
        hash_7a083f7ba43fa06, // 0x5
        lmg_accurate_t9, // 0x6
        ray_gun_mk2z, // 0x7
        ray_gun_mk2y, // 0x8
        ray_gun_mk2x, // 0x9
        sniper_powersemi_t9, // 0xa
        eq_wraith_fire, // 0xb
        counteruav, // 0xc
        missile_turret, // 0xd
        eq_shroud, // 0xe
        gadget_supplypod, // 0xf
        ar_damage_t9, // 0x10
        homunculus, // 0x11
        spknifeork, // 0x12
        melee_bowie, // 0x13
        ww_random_ray_gun1, // 0x14
        recon_plane, // 0x15
        sig_buckler_dw, // 0x16
        gadget_vision_pulse, // 0x17
        waterballoon, // 0x18
        special_crossbow_t9, // 0x19
        weapon_armor, // 0x1a
        eq_arm_blade, // 0x1b
        ww_blundergat_t8, // 0x1c
        gadget_heat_wave, // 0x1d
        eq_localheal, // 0x1e
        hoverjet, // 0x1f
        nightingale, // 0x20
        pistol_fullauto_t9, // 0x21
        remote_missile, // 0x22
        gadget_smart_cover, // 0x23
        willy_pete, // 0x24
        eq_emp_grenade, // 0x25
        special_grenadelauncher_t9, // 0x26
        launcher_freefire_t9, // 0x27
        ar_accurate_t9, // 0x28
        sig_lmg, // 0x29
        ww_crossbow_impaler_t8, // 0x2a
        ww_freezegun_t8, // 0x2b
        frag_grenade, // 0x2c
        knife_loadout, // 0x2d
        feature_default_class_1, // 0x2e
        feature_default_class_3, // 0x2f
        feature_default_class_2, // 0x30
        feature_default_class_5, // 0x31
        feature_default_class_4, // 0x32
        feature_default_class_6, // 0x33
        swat_team, // 0x34
        land_mine, // 0x35
        hatchet, // 0x36
        supplydrop_marker, // 0x37
        mute_smoke, // 0x38
        hash_2ea46ca74ebdfcac, // 0x39
        smg_capacity_t9, // 0x3a
        chopper_gunner, // 0x3b
        null_offhand_secondary, // 0x3c
        gadget_health_regen, // 0x3d
        hash_31be8125c7d0f273, // 0x3e
        listening_device, // 0x3f
        spork_alcatraz, // 0x40
        drone_squadron, // 0x41
        pistol_semiauto_t9, // 0x42
        null_offhand_primary, // 0x43
        smg_burst_t9, // 0x44
        hash_3507beb47a6b634e, // 0x45
        pistol_revolver_t9, // 0x46
        eq_stimshot, // 0x47
        overwatch_helicopter, // 0x48
        gadget_jammer, // 0x49
        hash_3ab58e40011df941, // 0x4a
        launcher_standard_t9, // 0x4b
        melee_bowie_bloody, // 0x4c
        eq_sticky_grenade, // 0x4d
        ww_ieu_shockwave_t9, // 0x4e
        melee_sledgehammer_t9, // 0x4f
        sig_blade, // 0x50
        pistol_burst_t9, // 0x51
        hash_4385cf507401820f, // 0x52
        napalm_strike, // 0x53
        sniper_accurate_t9, // 0x54
        ar_fastfire_t9, // 0x55
        melee_wakizashi_t9, // 0x56
        hero_pineapplegun, // 0x57
        hash_48206b17d50533c2, // 0x58
        sniper_quickscope_t9, // 0x59
        ability_dog, // 0x5a
        straferun, // 0x5b
        eq_seeker_mine, // 0x5c
        ww_crossbow_t8, // 0x5d
        recon_car, // 0x5e
        hash_4b1854c2ff5135b2, // 0x5f
        snowball, // 0x60
        feature_custom_class_9, // 0x61
        feature_custom_class_8, // 0x62
        feature_custom_class_3, // 0x63
        feature_custom_class_2, // 0x64
        feature_custom_class_1, // 0x65
        feature_custom_class_7, // 0x66
        feature_custom_class_6, // 0x67
        feature_custom_class_5, // 0x68
        feature_custom_class_4, // 0x69
        uav, // 0x6a
        eq_concertina_wire, // 0x6b
        feature_custom_class_10, // 0x6c
        ar_slowhandling_t9, // 0x6d
        eq_acid_bomb, // 0x6e
        gadget_spawnbeacon, // 0x6f
        ac130, // 0x70
        tr_precisionsemi_t9, // 0x71
        helicopter_comlink, // 0x72
        gadget_armor, // 0x73
        tr_damagesemi_t9, // 0x74
        feature_cac, // 0x75
        tomahawk_t8, // 0x76
        shotgun_pump_t9, // 0x77
        gadget_health_boost, // 0x78
        spectre_grenade, // 0x79
        eq_flash_grenade, // 0x7a
        hash_55c23f24d806e3a6, // 0x7b
        bare_hands, // 0x7c
        ar_slowfire_t9, // 0x7d
        tr_powerburst_t9, // 0x7e
        trophy_system, // 0x7f
        ray_gun_mk2, // 0x80
        tr_longburst_t9, // 0x81
        smg_standard_t9, // 0x82
        sig_bow_flame, // 0x83
        eq_slow_grenade, // 0x84
        smg_accurate_t9, // 0x85
        hash_603c083704cefb0c, // 0x86
        jetfighter, // 0x87
        smg_heavy_t9, // 0x88
        tear_gas, // 0x89
        eq_molotov, // 0x8a
        smg_fastfire_t9, // 0x8b
        lmg_light_t9, // 0x8c
        ai_tank_marker, // 0x8d
        gadget_cleanse, // 0x8e
        hero_flamethrower, // 0x8f
        sniper_standard_t9, // 0x90
        smg_spray_t9, // 0x91
        hero_annihilator, // 0x92
        ar_fasthandling_t9, // 0x93
        ar_mobility_t9, // 0x94
        planemortar, // 0x95
        sniper_cannon_t9, // 0x96
        shotgun_semiauto_t9, // 0x97
        lmg_fastfire_t9, // 0x98
        ar_standard_t9, // 0x99
        weapon_null, // 0x9a
        satchel_charge, // 0x9b
        default_specialist_equipment, // 0x9c
        gadget_health_regen_squad, // 0x9d
        hash_76b56e7e0b3b7aac, // 0x9e
        eq_decoy_grenade, // 0x9f
        ray_gun, // 0xa0
        hash_788c96e19cc7a46e, // 0xa1
        claymore, // 0xa2
        smg_handling_t9, // 0xa3
        cymbal_monkey, // 0xa4
        shotgun_fullauto_t9, // 0xa5
        hash_7ab3f9a730359659, // 0xa6
        gadget_icepick, // 0xa7
        basketball, // 0xa8
        gadget_camo, // 0xa9
        lmg_slowfire_t9 // 0xaa
    };

    // idx 0x6 members: 0x44
    enum hash_4b8d95aacf149fb9 {
        tr_fastburst_t9, // 0x0
        lmg_accurate_t9, // 0x1
        ray_gun_mk2z, // 0x2
        ray_gun_mk2y, // 0x3
        ray_gun_mk2x, // 0x4
        sniper_powersemi_t9, // 0x5
        hash_c21b61b32a5d972, // 0x6
        ar_damage_t9, // 0x7
        homunculus, // 0x8
        spknifeork, // 0x9
        melee_bowie, // 0xa
        ww_random_ray_gun1, // 0xb
        hash_165cf52ce418f5a1, // 0xc
        special_crossbow_t9, // 0xd
        ww_blundergat_t8, // 0xe
        pistol_fullauto_t9, // 0xf
        special_grenadelauncher_t9, // 0x10
        launcher_freefire_t9, // 0x11
        ar_accurate_t9, // 0x12
        ww_crossbow_impaler_t8, // 0x13
        ww_freezegun_t8, // 0x14
        knife_loadout, // 0x15
        hash_2ea46ca74ebdfcac, // 0x16
        smg_capacity_t9, // 0x17
        spork_alcatraz, // 0x18
        pistol_semiauto_t9, // 0x19
        smg_burst_t9, // 0x1a
        pistol_revolver_t9, // 0x1b
        launcher_standard_t9, // 0x1c
        melee_bowie_bloody, // 0x1d
        ww_ieu_shockwave_t9, // 0x1e
        melee_sledgehammer_t9, // 0x1f
        pistol_burst_t9, // 0x20
        hash_4385cf507401820f, // 0x21
        sniper_accurate_t9, // 0x22
        ar_fastfire_t9, // 0x23
        melee_wakizashi_t9, // 0x24
        hash_48206b17d50533c2, // 0x25
        sniper_quickscope_t9, // 0x26
        ww_crossbow_t8, // 0x27
        ar_slowhandling_t9, // 0x28
        tr_precisionsemi_t9, // 0x29
        tr_damagesemi_t9, // 0x2a
        shotgun_pump_t9, // 0x2b
        hash_55c23f24d806e3a6, // 0x2c
        ar_slowfire_t9, // 0x2d
        tr_powerburst_t9, // 0x2e
        ray_gun_mk2, // 0x2f
        tr_longburst_t9, // 0x30
        smg_standard_t9, // 0x31
        smg_accurate_t9, // 0x32
        hash_603c083704cefb0c, // 0x33
        smg_heavy_t9, // 0x34
        smg_fastfire_t9, // 0x35
        lmg_light_t9, // 0x36
        sniper_standard_t9, // 0x37
        smg_spray_t9, // 0x38
        ar_fasthandling_t9, // 0x39
        ar_mobility_t9, // 0x3a
        sniper_cannon_t9, // 0x3b
        shotgun_semiauto_t9, // 0x3c
        lmg_fastfire_t9, // 0x3d
        ar_standard_t9, // 0x3e
        ray_gun, // 0x3f
        smg_handling_t9, // 0x40
        shotgun_fullauto_t9, // 0x41
        basketball, // 0x42
        lmg_slowfire_t9 // 0x43
    };

    // idx 0x7 members: 0x13
    enum hash_7493d39e2637c1e7 {
        bonuscard, // 0x0
        hero, // 0x1
        feature, // 0x2
        weapon_special, // 0x3
        weapon_knife, // 0x4
        character, // 0x5
        miscweapon, // 0x6
        weapon_pistol, // 0x7
        killstreak, // 0x8
        weapon_sniper, // 0x9
        talent, // 0xa
        weapon_launcher, // 0xb
        weapon_grenade, // 0xc
        weapon_lmg, // 0xd
        weapon_tactical, // 0xe
        weapon_smg, // 0xf
        hash_7b68172df6035672, // 0x10
        weapon_cqb, // 0x11
        weapon_assault // 0x12
    };

    // idx 0x8 members: 0x1c
    enum hash_d5731f85b8cf294 {
        dart, // 0x0
        ultimate_turret, // 0x1
        counteruav, // 0x2
        recon_plane, // 0x3
        weapon_armor, // 0x4
        hoverjet, // 0x5
        remote_missile, // 0x6
        sig_lmg, // 0x7
        swat_team, // 0x8
        supplydrop_marker, // 0x9
        chopper_gunner, // 0xa
        drone_squadron, // 0xb
        overwatch_helicopter, // 0xc
        napalm_strike, // 0xd
        hero_pineapplegun, // 0xe
        ability_dog, // 0xf
        straferun, // 0x10
        recon_car, // 0x11
        uav, // 0x12
        ac130, // 0x13
        helicopter_comlink, // 0x14
        sig_bow_flame, // 0x15
        jetfighter, // 0x16
        ai_tank_marker, // 0x17
        helicopter_guard, // 0x18
        hero_flamethrower, // 0x19
        hero_annihilator, // 0x1a
        planemortar // 0x1b
    };

    // idx 0x9 members: 0x35
    enum hash_507792265be6dcc4 {
        ability_smart_cover, // 0x0
        hash_7a083f7ba43fa06, // 0x1
        eq_wraith_fire, // 0x2
        missile_turret, // 0x3
        eq_shroud, // 0x4
        gadget_supplypod, // 0x5
        gadget_vision_pulse, // 0x6
        waterballoon, // 0x7
        eq_arm_blade, // 0x8
        gadget_heat_wave, // 0x9
        eq_localheal, // 0xa
        gadget_medicalinjectiongun, // 0xb
        nightingale, // 0xc
        gadget_smart_cover, // 0xd
        willy_pete, // 0xe
        eq_emp_grenade, // 0xf
        frag_grenade, // 0x10
        land_mine, // 0x11
        hatchet, // 0x12
        gadget_health_regen, // 0x13
        listening_device, // 0x14
        hash_3507beb47a6b634e, // 0x15
        eq_stimshot, // 0x16
        gadget_jammer, // 0x17
        hash_3ab58e40011df941, // 0x18
        eq_sticky_grenade, // 0x19
        eq_seeker_mine, // 0x1a
        hash_4b1854c2ff5135b2, // 0x1b
        snowball, // 0x1c
        eq_concertina_wire, // 0x1d
        eq_acid_bomb, // 0x1e
        gadget_spawnbeacon, // 0x1f
        gadget_armor, // 0x20
        tomahawk_t8, // 0x21
        gadget_health_boost, // 0x22
        spectre_grenade, // 0x23
        eq_flash_grenade, // 0x24
        trophy_system, // 0x25
        eq_slow_grenade, // 0x26
        tear_gas, // 0x27
        eq_molotov, // 0x28
        gadget_cleanse, // 0x29
        satchel_charge, // 0x2a
        default_specialist_equipment, // 0x2b
        gadget_health_regen_squad, // 0x2c
        hash_76b56e7e0b3b7aac, // 0x2d
        eq_decoy_grenade, // 0x2e
        hash_788c96e19cc7a46e, // 0x2f
        claymore, // 0x30
        cymbal_monkey, // 0x31
        hash_7ab3f9a730359659, // 0x32
        gadget_icepick, // 0x33
        gadget_camo // 0x34
    };

    // idx 0xa members: 0x3c
    enum hash_1e2de876fb880be2 {
        quickdraw, // 0x0
        acog, // 0x1
        dw, // 0x2
        ir, // 0x3
        barrel2, // 0x4
        mixunder2, // 0x5
        fastreload, // 0x6
        heavy, // 0x7
        steadyaim, // 0x8
        stalker, // 0x9
        barrel, // 0xa
        mixstock, // 0xb
        smoothzoom2, // 0xc
        mixclip2, // 0xd
        reflex4, // 0xe
        reflex3, // 0xf
        reflex2, // 0x10
        stalker2, // 0x11
        extclip2, // 0x12
        tactical, // 0x13
        steadyaim2, // 0x14
        mixclip, // 0x15
        light, // 0x16
        speedgrip2, // 0x17
        mixhandle, // 0x18
        mixunder, // 0x19
        mixbarrel2, // 0x1a
        mixstock2, // 0x1b
        reddot, // 0x1c
        handle, // 0x1d
        mixmuzzle2, // 0x1e
        extclip, // 0x1f
        light2, // 0x20
        heavy2, // 0x21
        holo, // 0x22
        elo, // 0x23
        fastreload2, // 0x24
        scope3x, // 0x25
        scope4x, // 0x26
        mixhandle2, // 0x27
        compensator, // 0x28
        mixbody, // 0x29
        quickdraw2, // 0x2a
        suppressed2, // 0x2b
        speedgrip, // 0x2c
        sprintout2, // 0x2d
        suppressed, // 0x2e
        sprintout, // 0x2f
        grip2, // 0x30
        mixmuzzle, // 0x31
        handle2, // 0x32
        compensator2, // 0x33
        mixbody2, // 0x34
        dualoptic, // 0x35
        grip, // 0x36
        smoothzoom, // 0x37
        reflex, // 0x38
        mixbarrel, // 0x39
        elo3, // 0x3a
        elo2 // 0x3b
    };

    // idx 0xb members: 0x36
    enum hash_48d8d533750ed177 {
        talent_gungho, // 0x0
        talent_engineer, // 0x1
        talent_coldblooded, // 0x2
        hash_9fb2125b3e673e5, // 0x3
        gear_armor, // 0x4
        hash_cd70e712f842296, // 0x5
        talent_tracker, // 0x6
        hash_101808cdfcd390d6, // 0x7
        hash_128256155e755170, // 0x8
        hash_16cfc7f70dbd8712, // 0x9
        talent_flakjacket, // 0xa
        talent_logistics, // 0xb
        talent_looter, // 0xc
        gadget_medicalinjectiongun, // 0xd
        hash_1d8863d0b864a48b, // 0xe
        hash_1db03fa9862ba330, // 0xf
        hash_20290a682a974c94, // 0x10
        talent_dexterity, // 0x11
        hash_249e75e962ea5275, // 0x12
        talent_resistance, // 0x13
        gear_awareness, // 0x14
        hash_2c3a32e6e2afd1f2, // 0x15
        hash_311283e3107dec74, // 0x16
        talent_lightweight, // 0x17
        talent_awareness, // 0x18
        gear_equipmentcharge, // 0x19
        hash_39045b0020cc3e00, // 0x1a
        hash_3c323c7819b10b4d, // 0x1b
        hash_3c60422123a9075b, // 0x1c
        talent_scavenger, // 0x1d
        talent_skulker, // 0x1e
        gear_scorestreakcharge, // 0x1f
        talent_ghost, // 0x20
        hash_4f80a2c3398e97c9, // 0x21
        talent_elemental_pop, // 0x22
        talent_brawler, // 0x23
        talent_quartermaster, // 0x24
        hash_5c80935e7a319f21, // 0x25
        talent_paranoia, // 0x26
        talent_teamlink, // 0x27
        talent_deadsilence, // 0x28
        hash_646fc27884bdaa02, // 0x29
        gear_medicalinjectiongun, // 0x2a
        hash_661cd0d6fb33878c, // 0x2b
        talent_spycraft, // 0x2c
        hash_7321f9058ee65217, // 0x2d
        hash_7716cb3888f5dd8a, // 0x2e
        talent_elemental_pop_2, // 0x2f
        talent_elemental_pop_3, // 0x30
        talent_elemental_pop_1, // 0x31
        talent_elemental_pop_4, // 0x32
        talent_elemental_pop_5, // 0x33
        hash_7ca561e40dc3c5de, // 0x34
        hash_7f79d3ba6ed1a1d7 // 0x35
    };

    // idx 0xc members: 0x6
    enum hash_66db207c660e33f3 {
        bonuscard_overkill, // 0x0
        bonuscard_underkill, // 0x1
        bonuscard_perk_1_greed, // 0x2
        hash_4a12859000892dda, // 0x3
        hash_639ebbcda56447e7, // 0x4
        bonuscard_primary_gunfighter // 0x5
    };

    // root: bitSize: 0x1018, members: 15

    // offset: 0x0, bitSize: 0x6d8(0xdb Byte(s))
    region_info dml;
    // offset: 0x6d8, bitSize: 0x318(0x63 Byte(s)), array:0x3(hti:0xffff)
    lootcontracts loot_contracts[3];
    // offset: 0x9f0, bitSize: 0x40(0x8 Byte(s))
    uint64 hash_5a1a5df0cdadbba3;
    // offset: 0xa30, bitSize: 0x40(0x8 Byte(s))
    uint64 hash_151eef37df5ee845;
    // offset: 0xa70, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_tier_boost;
    // offset: 0xa78, bitSize: 0x8(0x1 Byte(s))
    hash_54196e9e9860f0be platform;
    // offset: 0xa80, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_party_tier_boost;
    // offset: 0xa88, bitSize: 0x40(0x8 Byte(s))
    uint64 hash_1e4fbbabf3da13fa;
    // offset: 0xac8, bitSize: 0x440(0x88 Byte(s)), array:0x44(hti:0x6)
    hash_1c86958671ff27fd hash_4953b2b12f1d6b1b[hash_4b8d95aacf149fb9];
    // offset: 0xf08, bitSize: 0x20(0x4 Byte(s))
    int hash_174d79c341ec2c6c;
    // offset: 0xf28, bitSize: 0xa0(0x14 Byte(s))
    client_header client;
    // offset: 0xfc8, bitSize: 0x8(0x1 Byte(s))
    byte tier_boost;
    // offset: 0xfd0, bitSize: 0x1
    bool hash_2401d7a2dc706a6c;
    // offset: 0xfd1, bitSize: 0x44, array:0x44(hti:0x6)
    bool hash_4473319d8a8d9dcf[hash_4b8d95aacf149fb9];
};

version hash_623dcecd4d55dc2e {
    // enums ..... 13 (0xd)
    // structs ... 8 (0x8)
    // header bit size .. 4040 (0xfc8)
    // header byte size . 505 (0x1f9)

    // bitSize: 0x280, members: 14
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
        // offset: 0xb8, bitSize: 0x100(0x20 Byte(s))
        string(32) build_version;
        // offset: 0x1b8, bitSize: 0x20(0x4 Byte(s))
        uint title_id;
        // offset: 0x1d8, bitSize: 0x8(0x1 Byte(s))
        hash_69c3102673a86ddb hash_1ca9db94b2870d4c;
        // offset: 0x1e0, bitSize: 0x20(0x4 Byte(s))
        uint hash_56a1b6d783aa7a25;
        // offset: 0x200, bitSize: 0x40(0x8 Byte(s))
        xhash product;
        // offset: 0x240, bitSize: 0x40(0x8 Byte(s))
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

    // bitSize: 0x500, members: 5
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
    struct hash_1c86958671ff27fd {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_50ab8b7df567cd2a;
    };

    // bitSize: 0x108, members: 6
    struct lootcontracts {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint xp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint contractid;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:3 contractgamemode;
        // offset: 0x48, bitSize: 0x40(0x8 Byte(s))
        xhash contracthash;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 progress;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 target;
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

    // idx 0x5 members: 0xaa
    enum hash_10d50fe10481423c {
        tr_fastburst_t9, // 0x0
        ability_smart_cover, // 0x1
        dart, // 0x2
        ultimate_turret, // 0x3
        hash_5a7fd1af4a1d5c9, // 0x4
        hash_7a083f7ba43fa06, // 0x5
        lmg_accurate_t9, // 0x6
        ray_gun_mk2z, // 0x7
        ray_gun_mk2y, // 0x8
        ray_gun_mk2x, // 0x9
        sniper_powersemi_t9, // 0xa
        eq_wraith_fire, // 0xb
        counteruav, // 0xc
        missile_turret, // 0xd
        eq_shroud, // 0xe
        gadget_supplypod, // 0xf
        ar_damage_t9, // 0x10
        homunculus, // 0x11
        spknifeork, // 0x12
        melee_bowie, // 0x13
        ww_random_ray_gun1, // 0x14
        recon_plane, // 0x15
        sig_buckler_dw, // 0x16
        gadget_vision_pulse, // 0x17
        waterballoon, // 0x18
        special_crossbow_t9, // 0x19
        weapon_armor, // 0x1a
        eq_arm_blade, // 0x1b
        ww_blundergat_t8, // 0x1c
        gadget_heat_wave, // 0x1d
        eq_localheal, // 0x1e
        hoverjet, // 0x1f
        nightingale, // 0x20
        pistol_fullauto_t9, // 0x21
        remote_missile, // 0x22
        gadget_smart_cover, // 0x23
        willy_pete, // 0x24
        eq_emp_grenade, // 0x25
        special_grenadelauncher_t9, // 0x26
        launcher_freefire_t9, // 0x27
        ar_accurate_t9, // 0x28
        sig_lmg, // 0x29
        ww_crossbow_impaler_t8, // 0x2a
        ww_freezegun_t8, // 0x2b
        frag_grenade, // 0x2c
        knife_loadout, // 0x2d
        feature_default_class_1, // 0x2e
        feature_default_class_3, // 0x2f
        feature_default_class_2, // 0x30
        feature_default_class_5, // 0x31
        feature_default_class_4, // 0x32
        feature_default_class_6, // 0x33
        swat_team, // 0x34
        land_mine, // 0x35
        hatchet, // 0x36
        supplydrop_marker, // 0x37
        mute_smoke, // 0x38
        hash_2ea46ca74ebdfcac, // 0x39
        smg_capacity_t9, // 0x3a
        chopper_gunner, // 0x3b
        null_offhand_secondary, // 0x3c
        gadget_health_regen, // 0x3d
        hash_31be8125c7d0f273, // 0x3e
        listening_device, // 0x3f
        spork_alcatraz, // 0x40
        drone_squadron, // 0x41
        pistol_semiauto_t9, // 0x42
        null_offhand_primary, // 0x43
        smg_burst_t9, // 0x44
        hash_3507beb47a6b634e, // 0x45
        pistol_revolver_t9, // 0x46
        eq_stimshot, // 0x47
        overwatch_helicopter, // 0x48
        gadget_jammer, // 0x49
        hash_3ab58e40011df941, // 0x4a
        launcher_standard_t9, // 0x4b
        melee_bowie_bloody, // 0x4c
        eq_sticky_grenade, // 0x4d
        melee_sledgehammer_t9, // 0x4e
        sig_blade, // 0x4f
        pistol_burst_t9, // 0x50
        hash_4385cf507401820f, // 0x51
        napalm_strike, // 0x52
        sniper_accurate_t9, // 0x53
        ar_fastfire_t9, // 0x54
        melee_wakizashi_t9, // 0x55
        hero_pineapplegun, // 0x56
        hash_48206b17d50533c2, // 0x57
        sniper_quickscope_t9, // 0x58
        ability_dog, // 0x59
        straferun, // 0x5a
        eq_seeker_mine, // 0x5b
        ww_crossbow_t8, // 0x5c
        recon_car, // 0x5d
        hash_4b1854c2ff5135b2, // 0x5e
        snowball, // 0x5f
        feature_custom_class_9, // 0x60
        feature_custom_class_8, // 0x61
        feature_custom_class_3, // 0x62
        feature_custom_class_2, // 0x63
        feature_custom_class_1, // 0x64
        feature_custom_class_7, // 0x65
        feature_custom_class_6, // 0x66
        feature_custom_class_5, // 0x67
        feature_custom_class_4, // 0x68
        uav, // 0x69
        eq_concertina_wire, // 0x6a
        feature_custom_class_10, // 0x6b
        ar_slowhandling_t9, // 0x6c
        eq_acid_bomb, // 0x6d
        gadget_spawnbeacon, // 0x6e
        ac130, // 0x6f
        tr_precisionsemi_t9, // 0x70
        helicopter_comlink, // 0x71
        gadget_armor, // 0x72
        tr_damagesemi_t9, // 0x73
        feature_cac, // 0x74
        tomahawk_t8, // 0x75
        shotgun_pump_t9, // 0x76
        gadget_health_boost, // 0x77
        spectre_grenade, // 0x78
        eq_flash_grenade, // 0x79
        hash_55c23f24d806e3a6, // 0x7a
        bare_hands, // 0x7b
        ar_slowfire_t9, // 0x7c
        tr_powerburst_t9, // 0x7d
        trophy_system, // 0x7e
        ray_gun_mk2, // 0x7f
        tr_longburst_t9, // 0x80
        smg_standard_t9, // 0x81
        sig_bow_flame, // 0x82
        eq_slow_grenade, // 0x83
        smg_accurate_t9, // 0x84
        hash_603c083704cefb0c, // 0x85
        jetfighter, // 0x86
        smg_heavy_t9, // 0x87
        tear_gas, // 0x88
        eq_molotov, // 0x89
        smg_fastfire_t9, // 0x8a
        lmg_light_t9, // 0x8b
        ai_tank_marker, // 0x8c
        gadget_cleanse, // 0x8d
        hero_flamethrower, // 0x8e
        sniper_standard_t9, // 0x8f
        smg_spray_t9, // 0x90
        hero_annihilator, // 0x91
        ar_fasthandling_t9, // 0x92
        ar_mobility_t9, // 0x93
        planemortar, // 0x94
        sniper_cannon_t9, // 0x95
        shotgun_semiauto_t9, // 0x96
        lmg_fastfire_t9, // 0x97
        ar_standard_t9, // 0x98
        weapon_null, // 0x99
        satchel_charge, // 0x9a
        default_specialist_equipment, // 0x9b
        gadget_health_regen_squad, // 0x9c
        hash_76b56e7e0b3b7aac, // 0x9d
        eq_decoy_grenade, // 0x9e
        ray_gun, // 0x9f
        hash_788c96e19cc7a46e, // 0xa0
        claymore, // 0xa1
        smg_handling_t9, // 0xa2
        cymbal_monkey, // 0xa3
        shotgun_fullauto_t9, // 0xa4
        hash_7ab3f9a730359659, // 0xa5
        gadget_icepick, // 0xa6
        basketball, // 0xa7
        gadget_camo, // 0xa8
        lmg_slowfire_t9 // 0xa9
    };

    // idx 0x6 members: 0x42
    enum hash_4b8d95aacf149fb9 {
        tr_fastburst_t9, // 0x0
        lmg_accurate_t9, // 0x1
        ray_gun_mk2z, // 0x2
        ray_gun_mk2y, // 0x3
        ray_gun_mk2x, // 0x4
        sniper_powersemi_t9, // 0x5
        hash_c21b61b32a5d972, // 0x6
        ar_damage_t9, // 0x7
        homunculus, // 0x8
        spknifeork, // 0x9
        melee_bowie, // 0xa
        ww_random_ray_gun1, // 0xb
        hash_165cf52ce418f5a1, // 0xc
        special_crossbow_t9, // 0xd
        ww_blundergat_t8, // 0xe
        pistol_fullauto_t9, // 0xf
        special_grenadelauncher_t9, // 0x10
        launcher_freefire_t9, // 0x11
        ar_accurate_t9, // 0x12
        ww_crossbow_impaler_t8, // 0x13
        ww_freezegun_t8, // 0x14
        knife_loadout, // 0x15
        hash_2ea46ca74ebdfcac, // 0x16
        smg_capacity_t9, // 0x17
        spork_alcatraz, // 0x18
        pistol_semiauto_t9, // 0x19
        smg_burst_t9, // 0x1a
        pistol_revolver_t9, // 0x1b
        launcher_standard_t9, // 0x1c
        melee_bowie_bloody, // 0x1d
        melee_sledgehammer_t9, // 0x1e
        pistol_burst_t9, // 0x1f
        hash_4385cf507401820f, // 0x20
        sniper_accurate_t9, // 0x21
        ar_fastfire_t9, // 0x22
        melee_wakizashi_t9, // 0x23
        hash_48206b17d50533c2, // 0x24
        sniper_quickscope_t9, // 0x25
        ww_crossbow_t8, // 0x26
        ar_slowhandling_t9, // 0x27
        tr_precisionsemi_t9, // 0x28
        tr_damagesemi_t9, // 0x29
        shotgun_pump_t9, // 0x2a
        hash_55c23f24d806e3a6, // 0x2b
        ar_slowfire_t9, // 0x2c
        tr_powerburst_t9, // 0x2d
        ray_gun_mk2, // 0x2e
        tr_longburst_t9, // 0x2f
        smg_standard_t9, // 0x30
        smg_accurate_t9, // 0x31
        hash_603c083704cefb0c, // 0x32
        smg_heavy_t9, // 0x33
        smg_fastfire_t9, // 0x34
        lmg_light_t9, // 0x35
        sniper_standard_t9, // 0x36
        smg_spray_t9, // 0x37
        ar_fasthandling_t9, // 0x38
        ar_mobility_t9, // 0x39
        sniper_cannon_t9, // 0x3a
        shotgun_semiauto_t9, // 0x3b
        lmg_fastfire_t9, // 0x3c
        ar_standard_t9, // 0x3d
        smg_handling_t9, // 0x3e
        shotgun_fullauto_t9, // 0x3f
        basketball, // 0x40
        lmg_slowfire_t9 // 0x41
    };

    // idx 0x7 members: 0x12
    enum hash_7493d39e2637c1e7 {
        bonuscard, // 0x0
        hero, // 0x1
        feature, // 0x2
        weapon_special, // 0x3
        weapon_knife, // 0x4
        character, // 0x5
        miscweapon, // 0x6
        weapon_pistol, // 0x7
        killstreak, // 0x8
        weapon_sniper, // 0x9
        talent, // 0xa
        weapon_launcher, // 0xb
        weapon_grenade, // 0xc
        weapon_lmg, // 0xd
        weapon_tactical, // 0xe
        weapon_smg, // 0xf
        weapon_cqb, // 0x10
        weapon_assault // 0x11
    };

    // idx 0x8 members: 0x1d
    enum hash_d5731f85b8cf294 {
        dart, // 0x0
        ultimate_turret, // 0x1
        counteruav, // 0x2
        recon_plane, // 0x3
        weapon_armor, // 0x4
        hoverjet, // 0x5
        remote_missile, // 0x6
        sig_lmg, // 0x7
        swat_team, // 0x8
        supplydrop_marker, // 0x9
        chopper_gunner, // 0xa
        drone_squadron, // 0xb
        overwatch_helicopter, // 0xc
        napalm_strike, // 0xd
        hero_pineapplegun, // 0xe
        ability_dog, // 0xf
        straferun, // 0x10
        recon_car, // 0x11
        uav, // 0x12
        ac130, // 0x13
        helicopter_comlink, // 0x14
        sig_bow_flame, // 0x15
        jetfighter, // 0x16
        ai_tank_marker, // 0x17
        helicopter_guard, // 0x18
        hero_flamethrower, // 0x19
        hero_annihilator, // 0x1a
        planemortar, // 0x1b
        ray_gun // 0x1c
    };

    // idx 0x9 members: 0x34
    enum hash_507792265be6dcc4 {
        ability_smart_cover, // 0x0
        hash_7a083f7ba43fa06, // 0x1
        eq_wraith_fire, // 0x2
        missile_turret, // 0x3
        eq_shroud, // 0x4
        gadget_supplypod, // 0x5
        gadget_vision_pulse, // 0x6
        waterballoon, // 0x7
        eq_arm_blade, // 0x8
        gadget_heat_wave, // 0x9
        eq_localheal, // 0xa
        gadget_medicalinjectiongun, // 0xb
        nightingale, // 0xc
        gadget_smart_cover, // 0xd
        willy_pete, // 0xe
        eq_emp_grenade, // 0xf
        frag_grenade, // 0x10
        land_mine, // 0x11
        hatchet, // 0x12
        gadget_health_regen, // 0x13
        listening_device, // 0x14
        hash_3507beb47a6b634e, // 0x15
        eq_stimshot, // 0x16
        hash_3ab58e40011df941, // 0x17
        eq_sticky_grenade, // 0x18
        eq_seeker_mine, // 0x19
        hash_4b1854c2ff5135b2, // 0x1a
        snowball, // 0x1b
        eq_concertina_wire, // 0x1c
        eq_acid_bomb, // 0x1d
        gadget_spawnbeacon, // 0x1e
        gadget_armor, // 0x1f
        tomahawk_t8, // 0x20
        gadget_health_boost, // 0x21
        spectre_grenade, // 0x22
        eq_flash_grenade, // 0x23
        trophy_system, // 0x24
        eq_slow_grenade, // 0x25
        tear_gas, // 0x26
        eq_molotov, // 0x27
        gadget_cleanse, // 0x28
        satchel_charge, // 0x29
        default_specialist_equipment, // 0x2a
        gadget_health_regen_squad, // 0x2b
        hash_76b56e7e0b3b7aac, // 0x2c
        eq_decoy_grenade, // 0x2d
        hash_788c96e19cc7a46e, // 0x2e
        claymore, // 0x2f
        cymbal_monkey, // 0x30
        hash_7ab3f9a730359659, // 0x31
        gadget_icepick, // 0x32
        gadget_camo // 0x33
    };

    // idx 0xa members: 0x3c
    enum hash_1e2de876fb880be2 {
        quickdraw, // 0x0
        acog, // 0x1
        dw, // 0x2
        ir, // 0x3
        barrel2, // 0x4
        mixunder2, // 0x5
        fastreload, // 0x6
        heavy, // 0x7
        steadyaim, // 0x8
        stalker, // 0x9
        barrel, // 0xa
        mixstock, // 0xb
        smoothzoom2, // 0xc
        mixclip2, // 0xd
        reflex4, // 0xe
        reflex3, // 0xf
        reflex2, // 0x10
        stalker2, // 0x11
        extclip2, // 0x12
        tactical, // 0x13
        steadyaim2, // 0x14
        mixclip, // 0x15
        light, // 0x16
        speedgrip2, // 0x17
        mixhandle, // 0x18
        mixunder, // 0x19
        mixbarrel2, // 0x1a
        mixstock2, // 0x1b
        reddot, // 0x1c
        handle, // 0x1d
        mixmuzzle2, // 0x1e
        extclip, // 0x1f
        light2, // 0x20
        heavy2, // 0x21
        holo, // 0x22
        elo, // 0x23
        fastreload2, // 0x24
        scope3x, // 0x25
        scope4x, // 0x26
        mixhandle2, // 0x27
        compensator, // 0x28
        mixbody, // 0x29
        quickdraw2, // 0x2a
        suppressed2, // 0x2b
        speedgrip, // 0x2c
        sprintout2, // 0x2d
        suppressed, // 0x2e
        sprintout, // 0x2f
        grip2, // 0x30
        mixmuzzle, // 0x31
        handle2, // 0x32
        compensator2, // 0x33
        mixbody2, // 0x34
        dualoptic, // 0x35
        grip, // 0x36
        smoothzoom, // 0x37
        reflex, // 0x38
        mixbarrel, // 0x39
        elo3, // 0x3a
        elo2 // 0x3b
    };

    // idx 0xb members: 0x36
    enum hash_48d8d533750ed177 {
        talent_gungho, // 0x0
        talent_engineer, // 0x1
        talent_coldblooded, // 0x2
        hash_9fb2125b3e673e5, // 0x3
        gear_armor, // 0x4
        hash_cd70e712f842296, // 0x5
        talent_tracker, // 0x6
        hash_101808cdfcd390d6, // 0x7
        hash_128256155e755170, // 0x8
        hash_16cfc7f70dbd8712, // 0x9
        talent_flakjacket, // 0xa
        talent_logistics, // 0xb
        talent_looter, // 0xc
        gadget_medicalinjectiongun, // 0xd
        hash_1d8863d0b864a48b, // 0xe
        hash_1db03fa9862ba330, // 0xf
        hash_20290a682a974c94, // 0x10
        talent_dexterity, // 0x11
        hash_249e75e962ea5275, // 0x12
        talent_resistance, // 0x13
        gear_awareness, // 0x14
        hash_2c3a32e6e2afd1f2, // 0x15
        hash_311283e3107dec74, // 0x16
        talent_lightweight, // 0x17
        talent_awareness, // 0x18
        gear_equipmentcharge, // 0x19
        hash_39045b0020cc3e00, // 0x1a
        hash_3c323c7819b10b4d, // 0x1b
        hash_3c60422123a9075b, // 0x1c
        talent_scavenger, // 0x1d
        talent_skulker, // 0x1e
        gear_scorestreakcharge, // 0x1f
        talent_ghost, // 0x20
        hash_4f80a2c3398e97c9, // 0x21
        talent_elemental_pop, // 0x22
        talent_brawler, // 0x23
        talent_quartermaster, // 0x24
        hash_5c80935e7a319f21, // 0x25
        talent_paranoia, // 0x26
        talent_teamlink, // 0x27
        talent_deadsilence, // 0x28
        hash_646fc27884bdaa02, // 0x29
        gear_medicalinjectiongun, // 0x2a
        hash_661cd0d6fb33878c, // 0x2b
        talent_spycraft, // 0x2c
        hash_7321f9058ee65217, // 0x2d
        hash_7716cb3888f5dd8a, // 0x2e
        talent_elemental_pop_2, // 0x2f
        talent_elemental_pop_3, // 0x30
        talent_elemental_pop_1, // 0x31
        talent_elemental_pop_4, // 0x32
        talent_elemental_pop_5, // 0x33
        hash_7ca561e40dc3c5de, // 0x34
        hash_7f79d3ba6ed1a1d7 // 0x35
    };

    // idx 0xc members: 0x6
    enum hash_66db207c660e33f3 {
        bonuscard_overkill, // 0x0
        bonuscard_underkill, // 0x1
        bonuscard_perk_1_greed, // 0x2
        hash_4a12859000892dda, // 0x3
        hash_639ebbcda56447e7, // 0x4
        bonuscard_primary_gunfighter // 0x5
    };

    // root: bitSize: 0xf18, members: 10

    // offset: 0x0, bitSize: 0x6d8(0xdb Byte(s))
    region_info dml;
    // offset: 0x6d8, bitSize: 0x318(0x63 Byte(s)), array:0x3(hti:0xffff)
    lootcontracts loot_contracts[3];
    // offset: 0x9f0, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_tier_boost;
    // offset: 0x9f8, bitSize: 0x8(0x1 Byte(s))
    hash_54196e9e9860f0be platform;
    // offset: 0xa00, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_party_tier_boost;
    // offset: 0xa08, bitSize: 0x420(0x84 Byte(s)), array:0x42(hti:0x6)
    hash_1c86958671ff27fd hash_4953b2b12f1d6b1b[hash_4b8d95aacf149fb9];
    // offset: 0xe28, bitSize: 0xa0(0x14 Byte(s))
    client_header client;
    // offset: 0xec8, bitSize: 0x8(0x1 Byte(s))
    byte tier_boost;
    // offset: 0xed0, bitSize: 0x42, array:0x42(hti:0x6)
    bool hash_4473319d8a8d9dcf[hash_4b8d95aacf149fb9];
};

version hash_2eb0f12619a922d4 {
    // enums ..... 13 (0xd)
    // structs ... 9 (0x9)
    // header bit size .. 4536 (0x11b8)
    // header byte size . 567 (0x237)

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

    // bitSize: 0x500, members: 5
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
    struct hash_1c86958671ff27fd {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_50ab8b7df567cd2a;
    };

    // bitSize: 0x108, members: 6
    struct lootcontracts {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint xp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint contractid;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:3 contractgamemode;
        // offset: 0x48, bitSize: 0x40(0x8 Byte(s))
        xhash contracthash;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 progress;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 target;
    };

    // bitSize: 0x10, members: 3
    struct hash_33944d215cff6222 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_174d79c341ec2c6c;
        // offset: 0x8, bitSize: 0x1
        bool hash_2401d7a2dc706a6c;
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

    // idx 0x5 members: 0xab
    enum hash_10d50fe10481423c {
        tr_fastburst_t9, // 0x0
        ability_smart_cover, // 0x1
        dart, // 0x2
        ultimate_turret, // 0x3
        hash_5a7fd1af4a1d5c9, // 0x4
        hash_7a083f7ba43fa06, // 0x5
        lmg_accurate_t9, // 0x6
        ray_gun_mk2z, // 0x7
        ray_gun_mk2y, // 0x8
        ray_gun_mk2x, // 0x9
        sniper_powersemi_t9, // 0xa
        eq_wraith_fire, // 0xb
        counteruav, // 0xc
        missile_turret, // 0xd
        eq_shroud, // 0xe
        gadget_supplypod, // 0xf
        ar_damage_t9, // 0x10
        homunculus, // 0x11
        spknifeork, // 0x12
        melee_bowie, // 0x13
        ww_random_ray_gun1, // 0x14
        recon_plane, // 0x15
        sig_buckler_dw, // 0x16
        gadget_vision_pulse, // 0x17
        waterballoon, // 0x18
        special_crossbow_t9, // 0x19
        weapon_armor, // 0x1a
        eq_arm_blade, // 0x1b
        ww_blundergat_t8, // 0x1c
        gadget_heat_wave, // 0x1d
        eq_localheal, // 0x1e
        hoverjet, // 0x1f
        nightingale, // 0x20
        pistol_fullauto_t9, // 0x21
        remote_missile, // 0x22
        gadget_smart_cover, // 0x23
        willy_pete, // 0x24
        eq_emp_grenade, // 0x25
        special_grenadelauncher_t9, // 0x26
        launcher_freefire_t9, // 0x27
        ar_accurate_t9, // 0x28
        sig_lmg, // 0x29
        ww_crossbow_impaler_t8, // 0x2a
        ww_freezegun_t8, // 0x2b
        frag_grenade, // 0x2c
        knife_loadout, // 0x2d
        feature_default_class_1, // 0x2e
        feature_default_class_3, // 0x2f
        feature_default_class_2, // 0x30
        feature_default_class_5, // 0x31
        feature_default_class_4, // 0x32
        feature_default_class_6, // 0x33
        swat_team, // 0x34
        land_mine, // 0x35
        hatchet, // 0x36
        supplydrop_marker, // 0x37
        mute_smoke, // 0x38
        hash_2ea46ca74ebdfcac, // 0x39
        smg_capacity_t9, // 0x3a
        chopper_gunner, // 0x3b
        null_offhand_secondary, // 0x3c
        gadget_health_regen, // 0x3d
        hash_31be8125c7d0f273, // 0x3e
        listening_device, // 0x3f
        spork_alcatraz, // 0x40
        drone_squadron, // 0x41
        pistol_semiauto_t9, // 0x42
        null_offhand_primary, // 0x43
        smg_burst_t9, // 0x44
        hash_3507beb47a6b634e, // 0x45
        pistol_revolver_t9, // 0x46
        eq_stimshot, // 0x47
        overwatch_helicopter, // 0x48
        gadget_jammer, // 0x49
        hash_3ab58e40011df941, // 0x4a
        launcher_standard_t9, // 0x4b
        melee_bowie_bloody, // 0x4c
        eq_sticky_grenade, // 0x4d
        ww_ieu_shockwave_t9, // 0x4e
        melee_sledgehammer_t9, // 0x4f
        sig_blade, // 0x50
        pistol_burst_t9, // 0x51
        hash_4385cf507401820f, // 0x52
        napalm_strike, // 0x53
        sniper_accurate_t9, // 0x54
        ar_fastfire_t9, // 0x55
        melee_wakizashi_t9, // 0x56
        hero_pineapplegun, // 0x57
        hash_48206b17d50533c2, // 0x58
        sniper_quickscope_t9, // 0x59
        ability_dog, // 0x5a
        straferun, // 0x5b
        eq_seeker_mine, // 0x5c
        ww_crossbow_t8, // 0x5d
        recon_car, // 0x5e
        hash_4b1854c2ff5135b2, // 0x5f
        snowball, // 0x60
        feature_custom_class_9, // 0x61
        feature_custom_class_8, // 0x62
        feature_custom_class_3, // 0x63
        feature_custom_class_2, // 0x64
        feature_custom_class_1, // 0x65
        feature_custom_class_7, // 0x66
        feature_custom_class_6, // 0x67
        feature_custom_class_5, // 0x68
        feature_custom_class_4, // 0x69
        uav, // 0x6a
        eq_concertina_wire, // 0x6b
        feature_custom_class_10, // 0x6c
        ar_slowhandling_t9, // 0x6d
        eq_acid_bomb, // 0x6e
        gadget_spawnbeacon, // 0x6f
        ac130, // 0x70
        tr_precisionsemi_t9, // 0x71
        helicopter_comlink, // 0x72
        gadget_armor, // 0x73
        tr_damagesemi_t9, // 0x74
        feature_cac, // 0x75
        tomahawk_t8, // 0x76
        shotgun_pump_t9, // 0x77
        gadget_health_boost, // 0x78
        spectre_grenade, // 0x79
        eq_flash_grenade, // 0x7a
        hash_55c23f24d806e3a6, // 0x7b
        bare_hands, // 0x7c
        ar_slowfire_t9, // 0x7d
        tr_powerburst_t9, // 0x7e
        trophy_system, // 0x7f
        ray_gun_mk2, // 0x80
        tr_longburst_t9, // 0x81
        smg_standard_t9, // 0x82
        sig_bow_flame, // 0x83
        eq_slow_grenade, // 0x84
        smg_accurate_t9, // 0x85
        hash_603c083704cefb0c, // 0x86
        jetfighter, // 0x87
        smg_heavy_t9, // 0x88
        tear_gas, // 0x89
        eq_molotov, // 0x8a
        smg_fastfire_t9, // 0x8b
        lmg_light_t9, // 0x8c
        ai_tank_marker, // 0x8d
        gadget_cleanse, // 0x8e
        hero_flamethrower, // 0x8f
        sniper_standard_t9, // 0x90
        smg_spray_t9, // 0x91
        hero_annihilator, // 0x92
        ar_fasthandling_t9, // 0x93
        ar_mobility_t9, // 0x94
        planemortar, // 0x95
        sniper_cannon_t9, // 0x96
        shotgun_semiauto_t9, // 0x97
        lmg_fastfire_t9, // 0x98
        ar_standard_t9, // 0x99
        weapon_null, // 0x9a
        satchel_charge, // 0x9b
        default_specialist_equipment, // 0x9c
        gadget_health_regen_squad, // 0x9d
        hash_76b56e7e0b3b7aac, // 0x9e
        eq_decoy_grenade, // 0x9f
        ray_gun, // 0xa0
        hash_788c96e19cc7a46e, // 0xa1
        claymore, // 0xa2
        smg_handling_t9, // 0xa3
        cymbal_monkey, // 0xa4
        shotgun_fullauto_t9, // 0xa5
        hash_7ab3f9a730359659, // 0xa6
        gadget_icepick, // 0xa7
        basketball, // 0xa8
        gadget_camo, // 0xa9
        lmg_slowfire_t9 // 0xaa
    };

    // idx 0x6 members: 0x44
    enum hash_4b8d95aacf149fb9 {
        tr_fastburst_t9, // 0x0
        lmg_accurate_t9, // 0x1
        ray_gun_mk2z, // 0x2
        ray_gun_mk2y, // 0x3
        ray_gun_mk2x, // 0x4
        sniper_powersemi_t9, // 0x5
        hash_c21b61b32a5d972, // 0x6
        ar_damage_t9, // 0x7
        homunculus, // 0x8
        spknifeork, // 0x9
        melee_bowie, // 0xa
        ww_random_ray_gun1, // 0xb
        hash_165cf52ce418f5a1, // 0xc
        special_crossbow_t9, // 0xd
        ww_blundergat_t8, // 0xe
        pistol_fullauto_t9, // 0xf
        special_grenadelauncher_t9, // 0x10
        launcher_freefire_t9, // 0x11
        ar_accurate_t9, // 0x12
        ww_crossbow_impaler_t8, // 0x13
        ww_freezegun_t8, // 0x14
        knife_loadout, // 0x15
        hash_2ea46ca74ebdfcac, // 0x16
        smg_capacity_t9, // 0x17
        spork_alcatraz, // 0x18
        pistol_semiauto_t9, // 0x19
        smg_burst_t9, // 0x1a
        pistol_revolver_t9, // 0x1b
        launcher_standard_t9, // 0x1c
        melee_bowie_bloody, // 0x1d
        ww_ieu_shockwave_t9, // 0x1e
        melee_sledgehammer_t9, // 0x1f
        pistol_burst_t9, // 0x20
        hash_4385cf507401820f, // 0x21
        sniper_accurate_t9, // 0x22
        ar_fastfire_t9, // 0x23
        melee_wakizashi_t9, // 0x24
        hash_48206b17d50533c2, // 0x25
        sniper_quickscope_t9, // 0x26
        ww_crossbow_t8, // 0x27
        ar_slowhandling_t9, // 0x28
        tr_precisionsemi_t9, // 0x29
        tr_damagesemi_t9, // 0x2a
        shotgun_pump_t9, // 0x2b
        hash_55c23f24d806e3a6, // 0x2c
        ar_slowfire_t9, // 0x2d
        tr_powerburst_t9, // 0x2e
        ray_gun_mk2, // 0x2f
        tr_longburst_t9, // 0x30
        smg_standard_t9, // 0x31
        smg_accurate_t9, // 0x32
        hash_603c083704cefb0c, // 0x33
        smg_heavy_t9, // 0x34
        smg_fastfire_t9, // 0x35
        lmg_light_t9, // 0x36
        sniper_standard_t9, // 0x37
        smg_spray_t9, // 0x38
        ar_fasthandling_t9, // 0x39
        ar_mobility_t9, // 0x3a
        sniper_cannon_t9, // 0x3b
        shotgun_semiauto_t9, // 0x3c
        lmg_fastfire_t9, // 0x3d
        ar_standard_t9, // 0x3e
        ray_gun, // 0x3f
        smg_handling_t9, // 0x40
        shotgun_fullauto_t9, // 0x41
        basketball, // 0x42
        lmg_slowfire_t9 // 0x43
    };

    // idx 0x7 members: 0x13
    enum hash_7493d39e2637c1e7 {
        bonuscard, // 0x0
        hero, // 0x1
        feature, // 0x2
        weapon_special, // 0x3
        weapon_knife, // 0x4
        character, // 0x5
        miscweapon, // 0x6
        weapon_pistol, // 0x7
        killstreak, // 0x8
        weapon_sniper, // 0x9
        talent, // 0xa
        weapon_launcher, // 0xb
        weapon_grenade, // 0xc
        weapon_lmg, // 0xd
        weapon_tactical, // 0xe
        weapon_smg, // 0xf
        hash_7b68172df6035672, // 0x10
        weapon_cqb, // 0x11
        weapon_assault // 0x12
    };

    // idx 0x8 members: 0x1c
    enum hash_d5731f85b8cf294 {
        dart, // 0x0
        ultimate_turret, // 0x1
        counteruav, // 0x2
        recon_plane, // 0x3
        weapon_armor, // 0x4
        hoverjet, // 0x5
        remote_missile, // 0x6
        sig_lmg, // 0x7
        swat_team, // 0x8
        supplydrop_marker, // 0x9
        chopper_gunner, // 0xa
        drone_squadron, // 0xb
        overwatch_helicopter, // 0xc
        napalm_strike, // 0xd
        hero_pineapplegun, // 0xe
        ability_dog, // 0xf
        straferun, // 0x10
        recon_car, // 0x11
        uav, // 0x12
        ac130, // 0x13
        helicopter_comlink, // 0x14
        sig_bow_flame, // 0x15
        jetfighter, // 0x16
        ai_tank_marker, // 0x17
        helicopter_guard, // 0x18
        hero_flamethrower, // 0x19
        hero_annihilator, // 0x1a
        planemortar // 0x1b
    };

    // idx 0x9 members: 0x35
    enum hash_507792265be6dcc4 {
        ability_smart_cover, // 0x0
        hash_7a083f7ba43fa06, // 0x1
        eq_wraith_fire, // 0x2
        missile_turret, // 0x3
        eq_shroud, // 0x4
        gadget_supplypod, // 0x5
        gadget_vision_pulse, // 0x6
        waterballoon, // 0x7
        eq_arm_blade, // 0x8
        gadget_heat_wave, // 0x9
        eq_localheal, // 0xa
        gadget_medicalinjectiongun, // 0xb
        nightingale, // 0xc
        gadget_smart_cover, // 0xd
        willy_pete, // 0xe
        eq_emp_grenade, // 0xf
        frag_grenade, // 0x10
        land_mine, // 0x11
        hatchet, // 0x12
        gadget_health_regen, // 0x13
        listening_device, // 0x14
        hash_3507beb47a6b634e, // 0x15
        eq_stimshot, // 0x16
        gadget_jammer, // 0x17
        hash_3ab58e40011df941, // 0x18
        eq_sticky_grenade, // 0x19
        eq_seeker_mine, // 0x1a
        hash_4b1854c2ff5135b2, // 0x1b
        snowball, // 0x1c
        eq_concertina_wire, // 0x1d
        eq_acid_bomb, // 0x1e
        gadget_spawnbeacon, // 0x1f
        gadget_armor, // 0x20
        tomahawk_t8, // 0x21
        gadget_health_boost, // 0x22
        spectre_grenade, // 0x23
        eq_flash_grenade, // 0x24
        trophy_system, // 0x25
        eq_slow_grenade, // 0x26
        tear_gas, // 0x27
        eq_molotov, // 0x28
        gadget_cleanse, // 0x29
        satchel_charge, // 0x2a
        default_specialist_equipment, // 0x2b
        gadget_health_regen_squad, // 0x2c
        hash_76b56e7e0b3b7aac, // 0x2d
        eq_decoy_grenade, // 0x2e
        hash_788c96e19cc7a46e, // 0x2f
        claymore, // 0x30
        cymbal_monkey, // 0x31
        hash_7ab3f9a730359659, // 0x32
        gadget_icepick, // 0x33
        gadget_camo // 0x34
    };

    // idx 0xa members: 0x3c
    enum hash_1e2de876fb880be2 {
        quickdraw, // 0x0
        acog, // 0x1
        dw, // 0x2
        ir, // 0x3
        barrel2, // 0x4
        mixunder2, // 0x5
        fastreload, // 0x6
        heavy, // 0x7
        steadyaim, // 0x8
        stalker, // 0x9
        barrel, // 0xa
        mixstock, // 0xb
        smoothzoom2, // 0xc
        mixclip2, // 0xd
        reflex4, // 0xe
        reflex3, // 0xf
        reflex2, // 0x10
        stalker2, // 0x11
        extclip2, // 0x12
        tactical, // 0x13
        steadyaim2, // 0x14
        mixclip, // 0x15
        light, // 0x16
        speedgrip2, // 0x17
        mixhandle, // 0x18
        mixunder, // 0x19
        mixbarrel2, // 0x1a
        mixstock2, // 0x1b
        reddot, // 0x1c
        handle, // 0x1d
        mixmuzzle2, // 0x1e
        extclip, // 0x1f
        light2, // 0x20
        heavy2, // 0x21
        holo, // 0x22
        elo, // 0x23
        fastreload2, // 0x24
        scope3x, // 0x25
        scope4x, // 0x26
        mixhandle2, // 0x27
        compensator, // 0x28
        mixbody, // 0x29
        quickdraw2, // 0x2a
        suppressed2, // 0x2b
        speedgrip, // 0x2c
        sprintout2, // 0x2d
        suppressed, // 0x2e
        sprintout, // 0x2f
        grip2, // 0x30
        mixmuzzle, // 0x31
        handle2, // 0x32
        compensator2, // 0x33
        mixbody2, // 0x34
        dualoptic, // 0x35
        grip, // 0x36
        smoothzoom, // 0x37
        reflex, // 0x38
        mixbarrel, // 0x39
        elo3, // 0x3a
        elo2 // 0x3b
    };

    // idx 0xb members: 0x36
    enum hash_48d8d533750ed177 {
        talent_gungho, // 0x0
        talent_engineer, // 0x1
        talent_coldblooded, // 0x2
        hash_9fb2125b3e673e5, // 0x3
        gear_armor, // 0x4
        hash_cd70e712f842296, // 0x5
        talent_tracker, // 0x6
        hash_101808cdfcd390d6, // 0x7
        hash_128256155e755170, // 0x8
        hash_16cfc7f70dbd8712, // 0x9
        talent_flakjacket, // 0xa
        talent_logistics, // 0xb
        talent_looter, // 0xc
        gadget_medicalinjectiongun, // 0xd
        hash_1d8863d0b864a48b, // 0xe
        hash_1db03fa9862ba330, // 0xf
        hash_20290a682a974c94, // 0x10
        talent_dexterity, // 0x11
        hash_249e75e962ea5275, // 0x12
        talent_resistance, // 0x13
        gear_awareness, // 0x14
        hash_2c3a32e6e2afd1f2, // 0x15
        hash_311283e3107dec74, // 0x16
        talent_lightweight, // 0x17
        talent_awareness, // 0x18
        gear_equipmentcharge, // 0x19
        hash_39045b0020cc3e00, // 0x1a
        hash_3c323c7819b10b4d, // 0x1b
        hash_3c60422123a9075b, // 0x1c
        talent_scavenger, // 0x1d
        talent_skulker, // 0x1e
        gear_scorestreakcharge, // 0x1f
        talent_ghost, // 0x20
        hash_4f80a2c3398e97c9, // 0x21
        talent_elemental_pop, // 0x22
        talent_brawler, // 0x23
        talent_quartermaster, // 0x24
        hash_5c80935e7a319f21, // 0x25
        talent_paranoia, // 0x26
        talent_teamlink, // 0x27
        talent_deadsilence, // 0x28
        hash_646fc27884bdaa02, // 0x29
        gear_medicalinjectiongun, // 0x2a
        hash_661cd0d6fb33878c, // 0x2b
        talent_spycraft, // 0x2c
        hash_7321f9058ee65217, // 0x2d
        hash_7716cb3888f5dd8a, // 0x2e
        talent_elemental_pop_2, // 0x2f
        talent_elemental_pop_3, // 0x30
        talent_elemental_pop_1, // 0x31
        talent_elemental_pop_4, // 0x32
        talent_elemental_pop_5, // 0x33
        hash_7ca561e40dc3c5de, // 0x34
        hash_7f79d3ba6ed1a1d7 // 0x35
    };

    // idx 0xc members: 0x6
    enum hash_66db207c660e33f3 {
        bonuscard_overkill, // 0x0
        bonuscard_underkill, // 0x1
        bonuscard_perk_1_greed, // 0x2
        hash_4a12859000892dda, // 0x3
        hash_639ebbcda56447e7, // 0x4
        bonuscard_primary_gunfighter // 0x5
    };

    // root: bitSize: 0x1108, members: 14

    // offset: 0x0, bitSize: 0x6d8(0xdb Byte(s))
    region_info dml;
    // offset: 0x6d8, bitSize: 0x318(0x63 Byte(s)), array:0x3(hti:0xffff)
    lootcontracts loot_contracts[3];
    // offset: 0x9f0, bitSize: 0x40(0x8 Byte(s))
    uint64 hash_5a1a5df0cdadbba3;
    // offset: 0xa30, bitSize: 0x40(0x8 Byte(s))
    uint64 hash_151eef37df5ee845;
    // offset: 0xa70, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_tier_boost;
    // offset: 0xa78, bitSize: 0x8(0x1 Byte(s))
    hash_54196e9e9860f0be platform;
    // offset: 0xa80, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_party_tier_boost;
    // offset: 0xa88, bitSize: 0x40(0x8 Byte(s))
    uint64 hash_1e4fbbabf3da13fa;
    // offset: 0xac8, bitSize: 0x110(0x22 Byte(s)), array:0x11(hti:0xffff)
    hash_33944d215cff6222 hash_33944d215cff6222[17];
    // offset: 0xbd8, bitSize: 0x440(0x88 Byte(s)), array:0x44(hti:0x6)
    hash_1c86958671ff27fd hash_4953b2b12f1d6b1b[hash_4b8d95aacf149fb9];
    // offset: 0x1018, bitSize: 0xa0(0x14 Byte(s))
    client_header client;
    // offset: 0x10b8, bitSize: 0x8(0x1 Byte(s))
    byte tier_boost;
    // offset: 0x10c0, bitSize: 0x44, array:0x44(hti:0x6)
    bool hash_4473319d8a8d9dcf[hash_4b8d95aacf149fb9];
};

version hash_ca3f5f40f5e1298e {
    // enums ..... 13 (0xd)
    // structs ... 9 (0x9)
    // header bit size .. 4440 (0x1158)
    // header byte size . 555 (0x22b)

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

    // bitSize: 0x500, members: 5
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
    struct hash_1c86958671ff27fd {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_50ab8b7df567cd2a;
    };

    // bitSize: 0x108, members: 6
    struct lootcontracts {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint xp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint contractid;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:3 contractgamemode;
        // offset: 0x48, bitSize: 0x40(0x8 Byte(s))
        xhash contracthash;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 progress;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 target;
    };

    // bitSize: 0x10, members: 3
    struct hash_33944d215cff6222 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_174d79c341ec2c6c;
        // offset: 0x8, bitSize: 0x1
        bool hash_2401d7a2dc706a6c;
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

    // idx 0x5 members: 0xab
    enum hash_10d50fe10481423c {
        tr_fastburst_t9, // 0x0
        ability_smart_cover, // 0x1
        dart, // 0x2
        ultimate_turret, // 0x3
        hash_5a7fd1af4a1d5c9, // 0x4
        hash_7a083f7ba43fa06, // 0x5
        lmg_accurate_t9, // 0x6
        ray_gun_mk2z, // 0x7
        ray_gun_mk2y, // 0x8
        ray_gun_mk2x, // 0x9
        sniper_powersemi_t9, // 0xa
        eq_wraith_fire, // 0xb
        counteruav, // 0xc
        missile_turret, // 0xd
        eq_shroud, // 0xe
        gadget_supplypod, // 0xf
        ar_damage_t9, // 0x10
        homunculus, // 0x11
        spknifeork, // 0x12
        melee_bowie, // 0x13
        ww_random_ray_gun1, // 0x14
        recon_plane, // 0x15
        sig_buckler_dw, // 0x16
        gadget_vision_pulse, // 0x17
        waterballoon, // 0x18
        special_crossbow_t9, // 0x19
        weapon_armor, // 0x1a
        eq_arm_blade, // 0x1b
        ww_blundergat_t8, // 0x1c
        gadget_heat_wave, // 0x1d
        eq_localheal, // 0x1e
        hoverjet, // 0x1f
        nightingale, // 0x20
        pistol_fullauto_t9, // 0x21
        remote_missile, // 0x22
        gadget_smart_cover, // 0x23
        willy_pete, // 0x24
        eq_emp_grenade, // 0x25
        special_grenadelauncher_t9, // 0x26
        launcher_freefire_t9, // 0x27
        ar_accurate_t9, // 0x28
        sig_lmg, // 0x29
        ww_crossbow_impaler_t8, // 0x2a
        ww_freezegun_t8, // 0x2b
        frag_grenade, // 0x2c
        knife_loadout, // 0x2d
        feature_default_class_1, // 0x2e
        feature_default_class_3, // 0x2f
        feature_default_class_2, // 0x30
        feature_default_class_5, // 0x31
        feature_default_class_4, // 0x32
        feature_default_class_6, // 0x33
        swat_team, // 0x34
        land_mine, // 0x35
        hatchet, // 0x36
        supplydrop_marker, // 0x37
        mute_smoke, // 0x38
        hash_2ea46ca74ebdfcac, // 0x39
        smg_capacity_t9, // 0x3a
        chopper_gunner, // 0x3b
        null_offhand_secondary, // 0x3c
        gadget_health_regen, // 0x3d
        hash_31be8125c7d0f273, // 0x3e
        listening_device, // 0x3f
        spork_alcatraz, // 0x40
        drone_squadron, // 0x41
        pistol_semiauto_t9, // 0x42
        null_offhand_primary, // 0x43
        smg_burst_t9, // 0x44
        hash_3507beb47a6b634e, // 0x45
        pistol_revolver_t9, // 0x46
        eq_stimshot, // 0x47
        overwatch_helicopter, // 0x48
        gadget_jammer, // 0x49
        hash_3ab58e40011df941, // 0x4a
        launcher_standard_t9, // 0x4b
        melee_bowie_bloody, // 0x4c
        eq_sticky_grenade, // 0x4d
        ww_ieu_shockwave_t9, // 0x4e
        melee_sledgehammer_t9, // 0x4f
        sig_blade, // 0x50
        pistol_burst_t9, // 0x51
        hash_4385cf507401820f, // 0x52
        napalm_strike, // 0x53
        sniper_accurate_t9, // 0x54
        ar_fastfire_t9, // 0x55
        melee_wakizashi_t9, // 0x56
        hero_pineapplegun, // 0x57
        hash_48206b17d50533c2, // 0x58
        sniper_quickscope_t9, // 0x59
        ability_dog, // 0x5a
        straferun, // 0x5b
        eq_seeker_mine, // 0x5c
        ww_crossbow_t8, // 0x5d
        recon_car, // 0x5e
        hash_4b1854c2ff5135b2, // 0x5f
        snowball, // 0x60
        feature_custom_class_9, // 0x61
        feature_custom_class_8, // 0x62
        feature_custom_class_3, // 0x63
        feature_custom_class_2, // 0x64
        feature_custom_class_1, // 0x65
        feature_custom_class_7, // 0x66
        feature_custom_class_6, // 0x67
        feature_custom_class_5, // 0x68
        feature_custom_class_4, // 0x69
        uav, // 0x6a
        eq_concertina_wire, // 0x6b
        feature_custom_class_10, // 0x6c
        ar_slowhandling_t9, // 0x6d
        eq_acid_bomb, // 0x6e
        gadget_spawnbeacon, // 0x6f
        ac130, // 0x70
        tr_precisionsemi_t9, // 0x71
        helicopter_comlink, // 0x72
        gadget_armor, // 0x73
        tr_damagesemi_t9, // 0x74
        feature_cac, // 0x75
        tomahawk_t8, // 0x76
        shotgun_pump_t9, // 0x77
        gadget_health_boost, // 0x78
        spectre_grenade, // 0x79
        eq_flash_grenade, // 0x7a
        hash_55c23f24d806e3a6, // 0x7b
        bare_hands, // 0x7c
        ar_slowfire_t9, // 0x7d
        tr_powerburst_t9, // 0x7e
        trophy_system, // 0x7f
        ray_gun_mk2, // 0x80
        tr_longburst_t9, // 0x81
        smg_standard_t9, // 0x82
        sig_bow_flame, // 0x83
        eq_slow_grenade, // 0x84
        smg_accurate_t9, // 0x85
        hash_603c083704cefb0c, // 0x86
        jetfighter, // 0x87
        smg_heavy_t9, // 0x88
        tear_gas, // 0x89
        eq_molotov, // 0x8a
        smg_fastfire_t9, // 0x8b
        lmg_light_t9, // 0x8c
        ai_tank_marker, // 0x8d
        gadget_cleanse, // 0x8e
        hero_flamethrower, // 0x8f
        sniper_standard_t9, // 0x90
        smg_spray_t9, // 0x91
        hero_annihilator, // 0x92
        ar_fasthandling_t9, // 0x93
        ar_mobility_t9, // 0x94
        planemortar, // 0x95
        sniper_cannon_t9, // 0x96
        shotgun_semiauto_t9, // 0x97
        lmg_fastfire_t9, // 0x98
        ar_standard_t9, // 0x99
        weapon_null, // 0x9a
        satchel_charge, // 0x9b
        default_specialist_equipment, // 0x9c
        gadget_health_regen_squad, // 0x9d
        hash_76b56e7e0b3b7aac, // 0x9e
        eq_decoy_grenade, // 0x9f
        ray_gun, // 0xa0
        hash_788c96e19cc7a46e, // 0xa1
        claymore, // 0xa2
        smg_handling_t9, // 0xa3
        cymbal_monkey, // 0xa4
        shotgun_fullauto_t9, // 0xa5
        hash_7ab3f9a730359659, // 0xa6
        gadget_icepick, // 0xa7
        basketball, // 0xa8
        gadget_camo, // 0xa9
        lmg_slowfire_t9 // 0xaa
    };

    // idx 0x6 members: 0x44
    enum hash_4b8d95aacf149fb9 {
        tr_fastburst_t9, // 0x0
        lmg_accurate_t9, // 0x1
        ray_gun_mk2z, // 0x2
        ray_gun_mk2y, // 0x3
        ray_gun_mk2x, // 0x4
        sniper_powersemi_t9, // 0x5
        hash_c21b61b32a5d972, // 0x6
        ar_damage_t9, // 0x7
        homunculus, // 0x8
        spknifeork, // 0x9
        melee_bowie, // 0xa
        ww_random_ray_gun1, // 0xb
        hash_165cf52ce418f5a1, // 0xc
        special_crossbow_t9, // 0xd
        ww_blundergat_t8, // 0xe
        pistol_fullauto_t9, // 0xf
        special_grenadelauncher_t9, // 0x10
        launcher_freefire_t9, // 0x11
        ar_accurate_t9, // 0x12
        ww_crossbow_impaler_t8, // 0x13
        ww_freezegun_t8, // 0x14
        knife_loadout, // 0x15
        hash_2ea46ca74ebdfcac, // 0x16
        smg_capacity_t9, // 0x17
        spork_alcatraz, // 0x18
        pistol_semiauto_t9, // 0x19
        smg_burst_t9, // 0x1a
        pistol_revolver_t9, // 0x1b
        launcher_standard_t9, // 0x1c
        melee_bowie_bloody, // 0x1d
        ww_ieu_shockwave_t9, // 0x1e
        melee_sledgehammer_t9, // 0x1f
        pistol_burst_t9, // 0x20
        hash_4385cf507401820f, // 0x21
        sniper_accurate_t9, // 0x22
        ar_fastfire_t9, // 0x23
        melee_wakizashi_t9, // 0x24
        hash_48206b17d50533c2, // 0x25
        sniper_quickscope_t9, // 0x26
        ww_crossbow_t8, // 0x27
        ar_slowhandling_t9, // 0x28
        tr_precisionsemi_t9, // 0x29
        tr_damagesemi_t9, // 0x2a
        shotgun_pump_t9, // 0x2b
        hash_55c23f24d806e3a6, // 0x2c
        ar_slowfire_t9, // 0x2d
        tr_powerburst_t9, // 0x2e
        ray_gun_mk2, // 0x2f
        tr_longburst_t9, // 0x30
        smg_standard_t9, // 0x31
        smg_accurate_t9, // 0x32
        hash_603c083704cefb0c, // 0x33
        smg_heavy_t9, // 0x34
        smg_fastfire_t9, // 0x35
        lmg_light_t9, // 0x36
        sniper_standard_t9, // 0x37
        smg_spray_t9, // 0x38
        ar_fasthandling_t9, // 0x39
        ar_mobility_t9, // 0x3a
        sniper_cannon_t9, // 0x3b
        shotgun_semiauto_t9, // 0x3c
        lmg_fastfire_t9, // 0x3d
        ar_standard_t9, // 0x3e
        ray_gun, // 0x3f
        smg_handling_t9, // 0x40
        shotgun_fullauto_t9, // 0x41
        basketball, // 0x42
        lmg_slowfire_t9 // 0x43
    };

    // idx 0x7 members: 0x13
    enum hash_7493d39e2637c1e7 {
        bonuscard, // 0x0
        hero, // 0x1
        feature, // 0x2
        weapon_special, // 0x3
        weapon_knife, // 0x4
        character, // 0x5
        miscweapon, // 0x6
        weapon_pistol, // 0x7
        killstreak, // 0x8
        weapon_sniper, // 0x9
        talent, // 0xa
        weapon_launcher, // 0xb
        weapon_grenade, // 0xc
        weapon_lmg, // 0xd
        weapon_tactical, // 0xe
        weapon_smg, // 0xf
        hash_7b68172df6035672, // 0x10
        weapon_cqb, // 0x11
        weapon_assault // 0x12
    };

    // idx 0x8 members: 0x1c
    enum hash_d5731f85b8cf294 {
        dart, // 0x0
        ultimate_turret, // 0x1
        counteruav, // 0x2
        recon_plane, // 0x3
        weapon_armor, // 0x4
        hoverjet, // 0x5
        remote_missile, // 0x6
        sig_lmg, // 0x7
        swat_team, // 0x8
        supplydrop_marker, // 0x9
        chopper_gunner, // 0xa
        drone_squadron, // 0xb
        overwatch_helicopter, // 0xc
        napalm_strike, // 0xd
        hero_pineapplegun, // 0xe
        ability_dog, // 0xf
        straferun, // 0x10
        recon_car, // 0x11
        uav, // 0x12
        ac130, // 0x13
        helicopter_comlink, // 0x14
        sig_bow_flame, // 0x15
        jetfighter, // 0x16
        ai_tank_marker, // 0x17
        helicopter_guard, // 0x18
        hero_flamethrower, // 0x19
        hero_annihilator, // 0x1a
        planemortar // 0x1b
    };

    // idx 0x9 members: 0x35
    enum hash_507792265be6dcc4 {
        ability_smart_cover, // 0x0
        hash_7a083f7ba43fa06, // 0x1
        eq_wraith_fire, // 0x2
        missile_turret, // 0x3
        eq_shroud, // 0x4
        gadget_supplypod, // 0x5
        gadget_vision_pulse, // 0x6
        waterballoon, // 0x7
        eq_arm_blade, // 0x8
        gadget_heat_wave, // 0x9
        eq_localheal, // 0xa
        gadget_medicalinjectiongun, // 0xb
        nightingale, // 0xc
        gadget_smart_cover, // 0xd
        willy_pete, // 0xe
        eq_emp_grenade, // 0xf
        frag_grenade, // 0x10
        land_mine, // 0x11
        hatchet, // 0x12
        gadget_health_regen, // 0x13
        listening_device, // 0x14
        hash_3507beb47a6b634e, // 0x15
        eq_stimshot, // 0x16
        gadget_jammer, // 0x17
        hash_3ab58e40011df941, // 0x18
        eq_sticky_grenade, // 0x19
        eq_seeker_mine, // 0x1a
        hash_4b1854c2ff5135b2, // 0x1b
        snowball, // 0x1c
        eq_concertina_wire, // 0x1d
        eq_acid_bomb, // 0x1e
        gadget_spawnbeacon, // 0x1f
        gadget_armor, // 0x20
        tomahawk_t8, // 0x21
        gadget_health_boost, // 0x22
        spectre_grenade, // 0x23
        eq_flash_grenade, // 0x24
        trophy_system, // 0x25
        eq_slow_grenade, // 0x26
        tear_gas, // 0x27
        eq_molotov, // 0x28
        gadget_cleanse, // 0x29
        satchel_charge, // 0x2a
        default_specialist_equipment, // 0x2b
        gadget_health_regen_squad, // 0x2c
        hash_76b56e7e0b3b7aac, // 0x2d
        eq_decoy_grenade, // 0x2e
        hash_788c96e19cc7a46e, // 0x2f
        claymore, // 0x30
        cymbal_monkey, // 0x31
        hash_7ab3f9a730359659, // 0x32
        gadget_icepick, // 0x33
        gadget_camo // 0x34
    };

    // idx 0xa members: 0x3c
    enum hash_1e2de876fb880be2 {
        quickdraw, // 0x0
        acog, // 0x1
        dw, // 0x2
        ir, // 0x3
        barrel2, // 0x4
        mixunder2, // 0x5
        fastreload, // 0x6
        heavy, // 0x7
        steadyaim, // 0x8
        stalker, // 0x9
        barrel, // 0xa
        mixstock, // 0xb
        smoothzoom2, // 0xc
        mixclip2, // 0xd
        reflex4, // 0xe
        reflex3, // 0xf
        reflex2, // 0x10
        stalker2, // 0x11
        extclip2, // 0x12
        tactical, // 0x13
        steadyaim2, // 0x14
        mixclip, // 0x15
        light, // 0x16
        speedgrip2, // 0x17
        mixhandle, // 0x18
        mixunder, // 0x19
        mixbarrel2, // 0x1a
        mixstock2, // 0x1b
        reddot, // 0x1c
        handle, // 0x1d
        mixmuzzle2, // 0x1e
        extclip, // 0x1f
        light2, // 0x20
        heavy2, // 0x21
        holo, // 0x22
        elo, // 0x23
        fastreload2, // 0x24
        scope3x, // 0x25
        scope4x, // 0x26
        mixhandle2, // 0x27
        compensator, // 0x28
        mixbody, // 0x29
        quickdraw2, // 0x2a
        suppressed2, // 0x2b
        speedgrip, // 0x2c
        sprintout2, // 0x2d
        suppressed, // 0x2e
        sprintout, // 0x2f
        grip2, // 0x30
        mixmuzzle, // 0x31
        handle2, // 0x32
        compensator2, // 0x33
        mixbody2, // 0x34
        dualoptic, // 0x35
        grip, // 0x36
        smoothzoom, // 0x37
        reflex, // 0x38
        mixbarrel, // 0x39
        elo3, // 0x3a
        elo2 // 0x3b
    };

    // idx 0xb members: 0x36
    enum hash_48d8d533750ed177 {
        talent_gungho, // 0x0
        talent_engineer, // 0x1
        talent_coldblooded, // 0x2
        hash_9fb2125b3e673e5, // 0x3
        gear_armor, // 0x4
        hash_cd70e712f842296, // 0x5
        talent_tracker, // 0x6
        hash_101808cdfcd390d6, // 0x7
        hash_128256155e755170, // 0x8
        hash_16cfc7f70dbd8712, // 0x9
        talent_flakjacket, // 0xa
        talent_logistics, // 0xb
        talent_looter, // 0xc
        gadget_medicalinjectiongun, // 0xd
        hash_1d8863d0b864a48b, // 0xe
        hash_1db03fa9862ba330, // 0xf
        hash_20290a682a974c94, // 0x10
        talent_dexterity, // 0x11
        hash_249e75e962ea5275, // 0x12
        talent_resistance, // 0x13
        gear_awareness, // 0x14
        hash_2c3a32e6e2afd1f2, // 0x15
        hash_311283e3107dec74, // 0x16
        talent_lightweight, // 0x17
        talent_awareness, // 0x18
        gear_equipmentcharge, // 0x19
        hash_39045b0020cc3e00, // 0x1a
        hash_3c323c7819b10b4d, // 0x1b
        hash_3c60422123a9075b, // 0x1c
        talent_scavenger, // 0x1d
        talent_skulker, // 0x1e
        gear_scorestreakcharge, // 0x1f
        talent_ghost, // 0x20
        hash_4f80a2c3398e97c9, // 0x21
        talent_elemental_pop, // 0x22
        talent_brawler, // 0x23
        talent_quartermaster, // 0x24
        hash_5c80935e7a319f21, // 0x25
        talent_paranoia, // 0x26
        talent_teamlink, // 0x27
        talent_deadsilence, // 0x28
        hash_646fc27884bdaa02, // 0x29
        gear_medicalinjectiongun, // 0x2a
        hash_661cd0d6fb33878c, // 0x2b
        talent_spycraft, // 0x2c
        hash_7321f9058ee65217, // 0x2d
        hash_7716cb3888f5dd8a, // 0x2e
        talent_elemental_pop_2, // 0x2f
        talent_elemental_pop_3, // 0x30
        talent_elemental_pop_1, // 0x31
        talent_elemental_pop_4, // 0x32
        talent_elemental_pop_5, // 0x33
        hash_7ca561e40dc3c5de, // 0x34
        hash_7f79d3ba6ed1a1d7 // 0x35
    };

    // idx 0xc members: 0x6
    enum hash_66db207c660e33f3 {
        bonuscard_overkill, // 0x0
        bonuscard_underkill, // 0x1
        bonuscard_perk_1_greed, // 0x2
        hash_4a12859000892dda, // 0x3
        hash_639ebbcda56447e7, // 0x4
        bonuscard_primary_gunfighter // 0x5
    };

    // root: bitSize: 0x10a8, members: 14

    // offset: 0x0, bitSize: 0x6d8(0xdb Byte(s))
    region_info dml;
    // offset: 0x6d8, bitSize: 0x318(0x63 Byte(s)), array:0x3(hti:0xffff)
    lootcontracts loot_contracts[3];
    // offset: 0x9f0, bitSize: 0x20(0x4 Byte(s))
    uint hash_5a1a5df0cdadbba3;
    // offset: 0xa10, bitSize: 0x20(0x4 Byte(s))
    uint hash_151eef37df5ee845;
    // offset: 0xa30, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_tier_boost;
    // offset: 0xa38, bitSize: 0x8(0x1 Byte(s))
    hash_54196e9e9860f0be platform;
    // offset: 0xa40, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_party_tier_boost;
    // offset: 0xa48, bitSize: 0x20(0x4 Byte(s))
    uint hash_1e4fbbabf3da13fa;
    // offset: 0xa68, bitSize: 0x110(0x22 Byte(s)), array:0x11(hti:0xffff)
    hash_33944d215cff6222 hash_33944d215cff6222[17];
    // offset: 0xb78, bitSize: 0x440(0x88 Byte(s)), array:0x44(hti:0x6)
    hash_1c86958671ff27fd hash_4953b2b12f1d6b1b[hash_4b8d95aacf149fb9];
    // offset: 0xfb8, bitSize: 0xa0(0x14 Byte(s))
    client_header client;
    // offset: 0x1058, bitSize: 0x8(0x1 Byte(s))
    byte tier_boost;
    // offset: 0x1060, bitSize: 0x44, array:0x44(hti:0x6)
    bool hash_4473319d8a8d9dcf[hash_4b8d95aacf149fb9];
};

version hash_448e06a831010042 {
    // enums ..... 13 (0xd)
    // structs ... 9 (0x9)
    // header bit size .. 4440 (0x1158)
    // header byte size . 555 (0x22b)

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

    // bitSize: 0x500, members: 5
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
    struct hash_1c86958671ff27fd {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_50ab8b7df567cd2a;
    };

    // bitSize: 0x108, members: 6
    struct lootcontracts {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint xp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint contractid;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:3 contractgamemode;
        // offset: 0x48, bitSize: 0x40(0x8 Byte(s))
        xhash contracthash;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 progress;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 target;
    };

    // bitSize: 0x10, members: 3
    struct hash_33944d215cff6222 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_174d79c341ec2c6c;
        // offset: 0x8, bitSize: 0x1
        bool hash_2401d7a2dc706a6c;
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

    // idx 0x5 members: 0xab
    enum hash_10d50fe10481423c {
        tr_fastburst_t9, // 0x0
        ability_smart_cover, // 0x1
        dart, // 0x2
        ultimate_turret, // 0x3
        hash_5a7fd1af4a1d5c9, // 0x4
        hash_7a083f7ba43fa06, // 0x5
        lmg_accurate_t9, // 0x6
        ray_gun_mk2z, // 0x7
        ray_gun_mk2y, // 0x8
        ray_gun_mk2x, // 0x9
        sniper_powersemi_t9, // 0xa
        eq_wraith_fire, // 0xb
        counteruav, // 0xc
        missile_turret, // 0xd
        eq_shroud, // 0xe
        gadget_supplypod, // 0xf
        ar_damage_t9, // 0x10
        homunculus, // 0x11
        spknifeork, // 0x12
        melee_bowie, // 0x13
        ww_random_ray_gun1, // 0x14
        recon_plane, // 0x15
        sig_buckler_dw, // 0x16
        gadget_vision_pulse, // 0x17
        waterballoon, // 0x18
        special_crossbow_t9, // 0x19
        weapon_armor, // 0x1a
        eq_arm_blade, // 0x1b
        ww_blundergat_t8, // 0x1c
        gadget_heat_wave, // 0x1d
        eq_localheal, // 0x1e
        hoverjet, // 0x1f
        nightingale, // 0x20
        pistol_fullauto_t9, // 0x21
        remote_missile, // 0x22
        gadget_smart_cover, // 0x23
        willy_pete, // 0x24
        eq_emp_grenade, // 0x25
        special_grenadelauncher_t9, // 0x26
        launcher_freefire_t9, // 0x27
        ar_accurate_t9, // 0x28
        sig_lmg, // 0x29
        ww_crossbow_impaler_t8, // 0x2a
        ww_freezegun_t8, // 0x2b
        frag_grenade, // 0x2c
        knife_loadout, // 0x2d
        feature_default_class_1, // 0x2e
        feature_default_class_3, // 0x2f
        feature_default_class_2, // 0x30
        feature_default_class_5, // 0x31
        feature_default_class_4, // 0x32
        feature_default_class_6, // 0x33
        swat_team, // 0x34
        land_mine, // 0x35
        hatchet, // 0x36
        supplydrop_marker, // 0x37
        mute_smoke, // 0x38
        hash_2ea46ca74ebdfcac, // 0x39
        smg_capacity_t9, // 0x3a
        chopper_gunner, // 0x3b
        null_offhand_secondary, // 0x3c
        gadget_health_regen, // 0x3d
        hash_31be8125c7d0f273, // 0x3e
        listening_device, // 0x3f
        spork_alcatraz, // 0x40
        drone_squadron, // 0x41
        pistol_semiauto_t9, // 0x42
        null_offhand_primary, // 0x43
        smg_burst_t9, // 0x44
        hash_3507beb47a6b634e, // 0x45
        pistol_revolver_t9, // 0x46
        eq_stimshot, // 0x47
        overwatch_helicopter, // 0x48
        gadget_jammer, // 0x49
        hash_3ab58e40011df941, // 0x4a
        launcher_standard_t9, // 0x4b
        melee_bowie_bloody, // 0x4c
        eq_sticky_grenade, // 0x4d
        ww_ieu_shockwave_t9, // 0x4e
        melee_sledgehammer_t9, // 0x4f
        sig_blade, // 0x50
        pistol_burst_t9, // 0x51
        hash_4385cf507401820f, // 0x52
        napalm_strike, // 0x53
        sniper_accurate_t9, // 0x54
        ar_fastfire_t9, // 0x55
        melee_wakizashi_t9, // 0x56
        hero_pineapplegun, // 0x57
        hash_48206b17d50533c2, // 0x58
        sniper_quickscope_t9, // 0x59
        ability_dog, // 0x5a
        straferun, // 0x5b
        eq_seeker_mine, // 0x5c
        ww_crossbow_t8, // 0x5d
        recon_car, // 0x5e
        hash_4b1854c2ff5135b2, // 0x5f
        snowball, // 0x60
        feature_custom_class_9, // 0x61
        feature_custom_class_8, // 0x62
        feature_custom_class_3, // 0x63
        feature_custom_class_2, // 0x64
        feature_custom_class_1, // 0x65
        feature_custom_class_7, // 0x66
        feature_custom_class_6, // 0x67
        feature_custom_class_5, // 0x68
        feature_custom_class_4, // 0x69
        uav, // 0x6a
        eq_concertina_wire, // 0x6b
        feature_custom_class_10, // 0x6c
        ar_slowhandling_t9, // 0x6d
        eq_acid_bomb, // 0x6e
        gadget_spawnbeacon, // 0x6f
        ac130, // 0x70
        tr_precisionsemi_t9, // 0x71
        helicopter_comlink, // 0x72
        gadget_armor, // 0x73
        tr_damagesemi_t9, // 0x74
        feature_cac, // 0x75
        tomahawk_t8, // 0x76
        shotgun_pump_t9, // 0x77
        gadget_health_boost, // 0x78
        spectre_grenade, // 0x79
        eq_flash_grenade, // 0x7a
        hash_55c23f24d806e3a6, // 0x7b
        bare_hands, // 0x7c
        ar_slowfire_t9, // 0x7d
        tr_powerburst_t9, // 0x7e
        trophy_system, // 0x7f
        ray_gun_mk2, // 0x80
        tr_longburst_t9, // 0x81
        smg_standard_t9, // 0x82
        sig_bow_flame, // 0x83
        eq_slow_grenade, // 0x84
        smg_accurate_t9, // 0x85
        hash_603c083704cefb0c, // 0x86
        jetfighter, // 0x87
        smg_heavy_t9, // 0x88
        tear_gas, // 0x89
        eq_molotov, // 0x8a
        smg_fastfire_t9, // 0x8b
        lmg_light_t9, // 0x8c
        ai_tank_marker, // 0x8d
        gadget_cleanse, // 0x8e
        hero_flamethrower, // 0x8f
        sniper_standard_t9, // 0x90
        smg_spray_t9, // 0x91
        hero_annihilator, // 0x92
        ar_fasthandling_t9, // 0x93
        ar_mobility_t9, // 0x94
        planemortar, // 0x95
        sniper_cannon_t9, // 0x96
        shotgun_semiauto_t9, // 0x97
        lmg_fastfire_t9, // 0x98
        ar_standard_t9, // 0x99
        weapon_null, // 0x9a
        satchel_charge, // 0x9b
        default_specialist_equipment, // 0x9c
        gadget_health_regen_squad, // 0x9d
        hash_76b56e7e0b3b7aac, // 0x9e
        eq_decoy_grenade, // 0x9f
        ray_gun, // 0xa0
        hash_788c96e19cc7a46e, // 0xa1
        claymore, // 0xa2
        smg_handling_t9, // 0xa3
        cymbal_monkey, // 0xa4
        shotgun_fullauto_t9, // 0xa5
        hash_7ab3f9a730359659, // 0xa6
        gadget_icepick, // 0xa7
        basketball, // 0xa8
        gadget_camo, // 0xa9
        lmg_slowfire_t9 // 0xaa
    };

    // idx 0x6 members: 0x44
    enum hash_4b8d95aacf149fb9 {
        tr_fastburst_t9, // 0x0
        lmg_accurate_t9, // 0x1
        ray_gun_mk2z, // 0x2
        ray_gun_mk2y, // 0x3
        ray_gun_mk2x, // 0x4
        sniper_powersemi_t9, // 0x5
        hash_c21b61b32a5d972, // 0x6
        ar_damage_t9, // 0x7
        homunculus, // 0x8
        spknifeork, // 0x9
        melee_bowie, // 0xa
        ww_random_ray_gun1, // 0xb
        hash_165cf52ce418f5a1, // 0xc
        special_crossbow_t9, // 0xd
        ww_blundergat_t8, // 0xe
        pistol_fullauto_t9, // 0xf
        special_grenadelauncher_t9, // 0x10
        launcher_freefire_t9, // 0x11
        ar_accurate_t9, // 0x12
        ww_crossbow_impaler_t8, // 0x13
        ww_freezegun_t8, // 0x14
        knife_loadout, // 0x15
        hash_2ea46ca74ebdfcac, // 0x16
        smg_capacity_t9, // 0x17
        spork_alcatraz, // 0x18
        pistol_semiauto_t9, // 0x19
        smg_burst_t9, // 0x1a
        pistol_revolver_t9, // 0x1b
        launcher_standard_t9, // 0x1c
        melee_bowie_bloody, // 0x1d
        ww_ieu_shockwave_t9, // 0x1e
        melee_sledgehammer_t9, // 0x1f
        pistol_burst_t9, // 0x20
        hash_4385cf507401820f, // 0x21
        sniper_accurate_t9, // 0x22
        ar_fastfire_t9, // 0x23
        melee_wakizashi_t9, // 0x24
        hash_48206b17d50533c2, // 0x25
        sniper_quickscope_t9, // 0x26
        ww_crossbow_t8, // 0x27
        ar_slowhandling_t9, // 0x28
        tr_precisionsemi_t9, // 0x29
        tr_damagesemi_t9, // 0x2a
        shotgun_pump_t9, // 0x2b
        hash_55c23f24d806e3a6, // 0x2c
        ar_slowfire_t9, // 0x2d
        tr_powerburst_t9, // 0x2e
        ray_gun_mk2, // 0x2f
        tr_longburst_t9, // 0x30
        smg_standard_t9, // 0x31
        smg_accurate_t9, // 0x32
        hash_603c083704cefb0c, // 0x33
        smg_heavy_t9, // 0x34
        smg_fastfire_t9, // 0x35
        lmg_light_t9, // 0x36
        sniper_standard_t9, // 0x37
        smg_spray_t9, // 0x38
        ar_fasthandling_t9, // 0x39
        ar_mobility_t9, // 0x3a
        sniper_cannon_t9, // 0x3b
        shotgun_semiauto_t9, // 0x3c
        lmg_fastfire_t9, // 0x3d
        ar_standard_t9, // 0x3e
        ray_gun, // 0x3f
        smg_handling_t9, // 0x40
        shotgun_fullauto_t9, // 0x41
        basketball, // 0x42
        lmg_slowfire_t9 // 0x43
    };

    // idx 0x7 members: 0x13
    enum hash_7493d39e2637c1e7 {
        bonuscard, // 0x0
        hero, // 0x1
        feature, // 0x2
        weapon_special, // 0x3
        weapon_knife, // 0x4
        character, // 0x5
        miscweapon, // 0x6
        weapon_pistol, // 0x7
        killstreak, // 0x8
        weapon_sniper, // 0x9
        talent, // 0xa
        weapon_launcher, // 0xb
        weapon_grenade, // 0xc
        weapon_lmg, // 0xd
        weapon_tactical, // 0xe
        weapon_smg, // 0xf
        hash_7b68172df6035672, // 0x10
        weapon_cqb, // 0x11
        weapon_assault // 0x12
    };

    // idx 0x8 members: 0x1c
    enum hash_d5731f85b8cf294 {
        dart, // 0x0
        ultimate_turret, // 0x1
        counteruav, // 0x2
        recon_plane, // 0x3
        weapon_armor, // 0x4
        hoverjet, // 0x5
        remote_missile, // 0x6
        sig_lmg, // 0x7
        swat_team, // 0x8
        supplydrop_marker, // 0x9
        chopper_gunner, // 0xa
        drone_squadron, // 0xb
        overwatch_helicopter, // 0xc
        napalm_strike, // 0xd
        hero_pineapplegun, // 0xe
        ability_dog, // 0xf
        straferun, // 0x10
        recon_car, // 0x11
        uav, // 0x12
        ac130, // 0x13
        helicopter_comlink, // 0x14
        sig_bow_flame, // 0x15
        jetfighter, // 0x16
        ai_tank_marker, // 0x17
        helicopter_guard, // 0x18
        hero_flamethrower, // 0x19
        hero_annihilator, // 0x1a
        planemortar // 0x1b
    };

    // idx 0x9 members: 0x35
    enum hash_507792265be6dcc4 {
        ability_smart_cover, // 0x0
        hash_7a083f7ba43fa06, // 0x1
        eq_wraith_fire, // 0x2
        missile_turret, // 0x3
        eq_shroud, // 0x4
        gadget_supplypod, // 0x5
        gadget_vision_pulse, // 0x6
        waterballoon, // 0x7
        eq_arm_blade, // 0x8
        gadget_heat_wave, // 0x9
        eq_localheal, // 0xa
        gadget_medicalinjectiongun, // 0xb
        nightingale, // 0xc
        gadget_smart_cover, // 0xd
        willy_pete, // 0xe
        eq_emp_grenade, // 0xf
        frag_grenade, // 0x10
        land_mine, // 0x11
        hatchet, // 0x12
        gadget_health_regen, // 0x13
        listening_device, // 0x14
        hash_3507beb47a6b634e, // 0x15
        eq_stimshot, // 0x16
        gadget_jammer, // 0x17
        hash_3ab58e40011df941, // 0x18
        eq_sticky_grenade, // 0x19
        eq_seeker_mine, // 0x1a
        hash_4b1854c2ff5135b2, // 0x1b
        snowball, // 0x1c
        eq_concertina_wire, // 0x1d
        eq_acid_bomb, // 0x1e
        gadget_spawnbeacon, // 0x1f
        gadget_armor, // 0x20
        tomahawk_t8, // 0x21
        gadget_health_boost, // 0x22
        spectre_grenade, // 0x23
        eq_flash_grenade, // 0x24
        trophy_system, // 0x25
        eq_slow_grenade, // 0x26
        tear_gas, // 0x27
        eq_molotov, // 0x28
        gadget_cleanse, // 0x29
        satchel_charge, // 0x2a
        default_specialist_equipment, // 0x2b
        gadget_health_regen_squad, // 0x2c
        hash_76b56e7e0b3b7aac, // 0x2d
        eq_decoy_grenade, // 0x2e
        hash_788c96e19cc7a46e, // 0x2f
        claymore, // 0x30
        cymbal_monkey, // 0x31
        hash_7ab3f9a730359659, // 0x32
        gadget_icepick, // 0x33
        gadget_camo // 0x34
    };

    // idx 0xa members: 0x3c
    enum hash_1e2de876fb880be2 {
        quickdraw, // 0x0
        acog, // 0x1
        dw, // 0x2
        ir, // 0x3
        barrel2, // 0x4
        mixunder2, // 0x5
        fastreload, // 0x6
        heavy, // 0x7
        steadyaim, // 0x8
        stalker, // 0x9
        barrel, // 0xa
        mixstock, // 0xb
        smoothzoom2, // 0xc
        mixclip2, // 0xd
        reflex4, // 0xe
        reflex3, // 0xf
        reflex2, // 0x10
        stalker2, // 0x11
        extclip2, // 0x12
        tactical, // 0x13
        steadyaim2, // 0x14
        mixclip, // 0x15
        light, // 0x16
        speedgrip2, // 0x17
        mixhandle, // 0x18
        mixunder, // 0x19
        mixbarrel2, // 0x1a
        mixstock2, // 0x1b
        reddot, // 0x1c
        handle, // 0x1d
        mixmuzzle2, // 0x1e
        extclip, // 0x1f
        light2, // 0x20
        heavy2, // 0x21
        holo, // 0x22
        elo, // 0x23
        fastreload2, // 0x24
        scope3x, // 0x25
        scope4x, // 0x26
        mixhandle2, // 0x27
        compensator, // 0x28
        mixbody, // 0x29
        quickdraw2, // 0x2a
        suppressed2, // 0x2b
        speedgrip, // 0x2c
        sprintout2, // 0x2d
        suppressed, // 0x2e
        sprintout, // 0x2f
        grip2, // 0x30
        mixmuzzle, // 0x31
        handle2, // 0x32
        compensator2, // 0x33
        mixbody2, // 0x34
        dualoptic, // 0x35
        grip, // 0x36
        smoothzoom, // 0x37
        reflex, // 0x38
        mixbarrel, // 0x39
        elo3, // 0x3a
        elo2 // 0x3b
    };

    // idx 0xb members: 0x36
    enum hash_48d8d533750ed177 {
        talent_gungho, // 0x0
        talent_engineer, // 0x1
        talent_coldblooded, // 0x2
        hash_9fb2125b3e673e5, // 0x3
        gear_armor, // 0x4
        hash_cd70e712f842296, // 0x5
        talent_tracker, // 0x6
        hash_101808cdfcd390d6, // 0x7
        hash_128256155e755170, // 0x8
        hash_16cfc7f70dbd8712, // 0x9
        talent_flakjacket, // 0xa
        talent_logistics, // 0xb
        talent_looter, // 0xc
        gadget_medicalinjectiongun, // 0xd
        hash_1d8863d0b864a48b, // 0xe
        hash_1db03fa9862ba330, // 0xf
        hash_20290a682a974c94, // 0x10
        talent_dexterity, // 0x11
        hash_249e75e962ea5275, // 0x12
        talent_resistance, // 0x13
        gear_awareness, // 0x14
        hash_2c3a32e6e2afd1f2, // 0x15
        hash_311283e3107dec74, // 0x16
        talent_lightweight, // 0x17
        talent_awareness, // 0x18
        gear_equipmentcharge, // 0x19
        hash_39045b0020cc3e00, // 0x1a
        hash_3c323c7819b10b4d, // 0x1b
        hash_3c60422123a9075b, // 0x1c
        talent_scavenger, // 0x1d
        talent_skulker, // 0x1e
        gear_scorestreakcharge, // 0x1f
        talent_ghost, // 0x20
        hash_4f80a2c3398e97c9, // 0x21
        talent_elemental_pop, // 0x22
        talent_brawler, // 0x23
        talent_quartermaster, // 0x24
        hash_5c80935e7a319f21, // 0x25
        talent_paranoia, // 0x26
        talent_teamlink, // 0x27
        talent_deadsilence, // 0x28
        hash_646fc27884bdaa02, // 0x29
        gear_medicalinjectiongun, // 0x2a
        hash_661cd0d6fb33878c, // 0x2b
        talent_spycraft, // 0x2c
        hash_7321f9058ee65217, // 0x2d
        hash_7716cb3888f5dd8a, // 0x2e
        talent_elemental_pop_2, // 0x2f
        talent_elemental_pop_3, // 0x30
        talent_elemental_pop_1, // 0x31
        talent_elemental_pop_4, // 0x32
        talent_elemental_pop_5, // 0x33
        hash_7ca561e40dc3c5de, // 0x34
        hash_7f79d3ba6ed1a1d7 // 0x35
    };

    // idx 0xc members: 0x6
    enum hash_66db207c660e33f3 {
        bonuscard_overkill, // 0x0
        bonuscard_underkill, // 0x1
        bonuscard_perk_1_greed, // 0x2
        hash_4a12859000892dda, // 0x3
        hash_639ebbcda56447e7, // 0x4
        bonuscard_primary_gunfighter // 0x5
    };

    // root: bitSize: 0x10a8, members: 15

    // offset: 0x0, bitSize: 0x6d8(0xdb Byte(s))
    region_info dml;
    // offset: 0x6d8, bitSize: 0x318(0x63 Byte(s)), array:0x3(hti:0xffff)
    lootcontracts loot_contracts[3];
    // offset: 0x9f0, bitSize: 0x20(0x4 Byte(s))
    uint hash_5a1a5df0cdadbba3;
    // offset: 0xa10, bitSize: 0x20(0x4 Byte(s))
    uint hash_151eef37df5ee845;
    // offset: 0xa30, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_tier_boost;
    // offset: 0xa38, bitSize: 0x8(0x1 Byte(s))
    hash_54196e9e9860f0be platform;
    // offset: 0xa40, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_party_tier_boost;
    // offset: 0xa48, bitSize: 0x20(0x4 Byte(s))
    uint hash_1e4fbbabf3da13fa;
    // offset: 0xa68, bitSize: 0x110(0x22 Byte(s)), array:0x11(hti:0xffff)
    hash_33944d215cff6222 hash_33944d215cff6222[17];
    // offset: 0xb78, bitSize: 0x440(0x88 Byte(s)), array:0x44(hti:0x6)
    hash_1c86958671ff27fd hash_4953b2b12f1d6b1b[hash_4b8d95aacf149fb9];
    // offset: 0xfb8, bitSize: 0xa0(0x14 Byte(s))
    client_header client;
    // offset: 0x1058, bitSize: 0x8(0x1 Byte(s))
    byte tier_boost;
    // offset: 0x1060, bitSize: 0x1
    bool hash_4ca91f34eba5a203;
    // offset: 0x1061, bitSize: 0x44, array:0x44(hti:0x6)
    bool hash_4473319d8a8d9dcf[hash_4b8d95aacf149fb9];
};

version hash_e82d1dc4e9726507 {
    // enums ..... 14 (0xe)
    // structs ... 9 (0x9)
    // header bit size .. 4440 (0x1158)
    // header byte size . 555 (0x22b)

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

    // bitSize: 0x500, members: 5
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
    struct hash_1c86958671ff27fd {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_50ab8b7df567cd2a;
    };

    // bitSize: 0x108, members: 6
    struct lootcontracts {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint xp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint contractid;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:3 contractgamemode;
        // offset: 0x48, bitSize: 0x40(0x8 Byte(s))
        xhash contracthash;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 progress;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 target;
    };

    // bitSize: 0x10, members: 3
    struct hash_33944d215cff6222 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_174d79c341ec2c6c;
        // offset: 0x8, bitSize: 0x1
        bool hash_2401d7a2dc706a6c;
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

    // idx 0x5 members: 0xab
    enum hash_10d50fe10481423c {
        tr_fastburst_t9, // 0x0
        ability_smart_cover, // 0x1
        dart, // 0x2
        ultimate_turret, // 0x3
        hash_5a7fd1af4a1d5c9, // 0x4
        hash_7a083f7ba43fa06, // 0x5
        lmg_accurate_t9, // 0x6
        ray_gun_mk2z, // 0x7
        ray_gun_mk2y, // 0x8
        ray_gun_mk2x, // 0x9
        sniper_powersemi_t9, // 0xa
        eq_wraith_fire, // 0xb
        counteruav, // 0xc
        missile_turret, // 0xd
        eq_shroud, // 0xe
        gadget_supplypod, // 0xf
        ar_damage_t9, // 0x10
        homunculus, // 0x11
        spknifeork, // 0x12
        melee_bowie, // 0x13
        ww_random_ray_gun1, // 0x14
        recon_plane, // 0x15
        sig_buckler_dw, // 0x16
        gadget_vision_pulse, // 0x17
        waterballoon, // 0x18
        special_crossbow_t9, // 0x19
        weapon_armor, // 0x1a
        eq_arm_blade, // 0x1b
        ww_blundergat_t8, // 0x1c
        gadget_heat_wave, // 0x1d
        eq_localheal, // 0x1e
        hoverjet, // 0x1f
        nightingale, // 0x20
        pistol_fullauto_t9, // 0x21
        remote_missile, // 0x22
        gadget_smart_cover, // 0x23
        willy_pete, // 0x24
        eq_emp_grenade, // 0x25
        special_grenadelauncher_t9, // 0x26
        launcher_freefire_t9, // 0x27
        ar_accurate_t9, // 0x28
        sig_lmg, // 0x29
        ww_crossbow_impaler_t8, // 0x2a
        ww_freezegun_t8, // 0x2b
        frag_grenade, // 0x2c
        knife_loadout, // 0x2d
        feature_default_class_1, // 0x2e
        feature_default_class_3, // 0x2f
        feature_default_class_2, // 0x30
        feature_default_class_5, // 0x31
        feature_default_class_4, // 0x32
        feature_default_class_6, // 0x33
        swat_team, // 0x34
        land_mine, // 0x35
        hatchet, // 0x36
        supplydrop_marker, // 0x37
        mute_smoke, // 0x38
        hash_2ea46ca74ebdfcac, // 0x39
        smg_capacity_t9, // 0x3a
        chopper_gunner, // 0x3b
        null_offhand_secondary, // 0x3c
        gadget_health_regen, // 0x3d
        hash_31be8125c7d0f273, // 0x3e
        listening_device, // 0x3f
        spork_alcatraz, // 0x40
        drone_squadron, // 0x41
        pistol_semiauto_t9, // 0x42
        null_offhand_primary, // 0x43
        smg_burst_t9, // 0x44
        hash_3507beb47a6b634e, // 0x45
        pistol_revolver_t9, // 0x46
        eq_stimshot, // 0x47
        overwatch_helicopter, // 0x48
        gadget_jammer, // 0x49
        hash_3ab58e40011df941, // 0x4a
        launcher_standard_t9, // 0x4b
        melee_bowie_bloody, // 0x4c
        eq_sticky_grenade, // 0x4d
        ww_ieu_shockwave_t9, // 0x4e
        melee_sledgehammer_t9, // 0x4f
        sig_blade, // 0x50
        pistol_burst_t9, // 0x51
        hash_4385cf507401820f, // 0x52
        napalm_strike, // 0x53
        sniper_accurate_t9, // 0x54
        ar_fastfire_t9, // 0x55
        melee_wakizashi_t9, // 0x56
        hero_pineapplegun, // 0x57
        hash_48206b17d50533c2, // 0x58
        sniper_quickscope_t9, // 0x59
        ability_dog, // 0x5a
        straferun, // 0x5b
        eq_seeker_mine, // 0x5c
        ww_crossbow_t8, // 0x5d
        recon_car, // 0x5e
        hash_4b1854c2ff5135b2, // 0x5f
        snowball, // 0x60
        feature_custom_class_9, // 0x61
        feature_custom_class_8, // 0x62
        feature_custom_class_3, // 0x63
        feature_custom_class_2, // 0x64
        feature_custom_class_1, // 0x65
        feature_custom_class_7, // 0x66
        feature_custom_class_6, // 0x67
        feature_custom_class_5, // 0x68
        feature_custom_class_4, // 0x69
        uav, // 0x6a
        eq_concertina_wire, // 0x6b
        feature_custom_class_10, // 0x6c
        ar_slowhandling_t9, // 0x6d
        eq_acid_bomb, // 0x6e
        gadget_spawnbeacon, // 0x6f
        ac130, // 0x70
        tr_precisionsemi_t9, // 0x71
        helicopter_comlink, // 0x72
        gadget_armor, // 0x73
        tr_damagesemi_t9, // 0x74
        feature_cac, // 0x75
        tomahawk_t8, // 0x76
        shotgun_pump_t9, // 0x77
        gadget_health_boost, // 0x78
        spectre_grenade, // 0x79
        eq_flash_grenade, // 0x7a
        hash_55c23f24d806e3a6, // 0x7b
        bare_hands, // 0x7c
        ar_slowfire_t9, // 0x7d
        tr_powerburst_t9, // 0x7e
        trophy_system, // 0x7f
        ray_gun_mk2, // 0x80
        tr_longburst_t9, // 0x81
        smg_standard_t9, // 0x82
        sig_bow_flame, // 0x83
        eq_slow_grenade, // 0x84
        smg_accurate_t9, // 0x85
        hash_603c083704cefb0c, // 0x86
        jetfighter, // 0x87
        smg_heavy_t9, // 0x88
        tear_gas, // 0x89
        eq_molotov, // 0x8a
        smg_fastfire_t9, // 0x8b
        lmg_light_t9, // 0x8c
        ai_tank_marker, // 0x8d
        gadget_cleanse, // 0x8e
        hero_flamethrower, // 0x8f
        sniper_standard_t9, // 0x90
        smg_spray_t9, // 0x91
        hero_annihilator, // 0x92
        ar_fasthandling_t9, // 0x93
        ar_mobility_t9, // 0x94
        planemortar, // 0x95
        sniper_cannon_t9, // 0x96
        shotgun_semiauto_t9, // 0x97
        lmg_fastfire_t9, // 0x98
        ar_standard_t9, // 0x99
        weapon_null, // 0x9a
        satchel_charge, // 0x9b
        default_specialist_equipment, // 0x9c
        gadget_health_regen_squad, // 0x9d
        hash_76b56e7e0b3b7aac, // 0x9e
        eq_decoy_grenade, // 0x9f
        ray_gun, // 0xa0
        hash_788c96e19cc7a46e, // 0xa1
        claymore, // 0xa2
        smg_handling_t9, // 0xa3
        cymbal_monkey, // 0xa4
        shotgun_fullauto_t9, // 0xa5
        hash_7ab3f9a730359659, // 0xa6
        gadget_icepick, // 0xa7
        basketball, // 0xa8
        gadget_camo, // 0xa9
        lmg_slowfire_t9 // 0xaa
    };

    // idx 0x6 members: 0x44
    enum hash_4b8d95aacf149fb9 {
        tr_fastburst_t9, // 0x0
        lmg_accurate_t9, // 0x1
        ray_gun_mk2z, // 0x2
        ray_gun_mk2y, // 0x3
        ray_gun_mk2x, // 0x4
        sniper_powersemi_t9, // 0x5
        hash_c21b61b32a5d972, // 0x6
        ar_damage_t9, // 0x7
        homunculus, // 0x8
        spknifeork, // 0x9
        melee_bowie, // 0xa
        ww_random_ray_gun1, // 0xb
        hash_165cf52ce418f5a1, // 0xc
        special_crossbow_t9, // 0xd
        ww_blundergat_t8, // 0xe
        pistol_fullauto_t9, // 0xf
        special_grenadelauncher_t9, // 0x10
        launcher_freefire_t9, // 0x11
        ar_accurate_t9, // 0x12
        ww_crossbow_impaler_t8, // 0x13
        ww_freezegun_t8, // 0x14
        knife_loadout, // 0x15
        hash_2ea46ca74ebdfcac, // 0x16
        smg_capacity_t9, // 0x17
        spork_alcatraz, // 0x18
        pistol_semiauto_t9, // 0x19
        smg_burst_t9, // 0x1a
        pistol_revolver_t9, // 0x1b
        launcher_standard_t9, // 0x1c
        melee_bowie_bloody, // 0x1d
        ww_ieu_shockwave_t9, // 0x1e
        melee_sledgehammer_t9, // 0x1f
        pistol_burst_t9, // 0x20
        hash_4385cf507401820f, // 0x21
        sniper_accurate_t9, // 0x22
        ar_fastfire_t9, // 0x23
        melee_wakizashi_t9, // 0x24
        hash_48206b17d50533c2, // 0x25
        sniper_quickscope_t9, // 0x26
        ww_crossbow_t8, // 0x27
        ar_slowhandling_t9, // 0x28
        tr_precisionsemi_t9, // 0x29
        tr_damagesemi_t9, // 0x2a
        shotgun_pump_t9, // 0x2b
        hash_55c23f24d806e3a6, // 0x2c
        ar_slowfire_t9, // 0x2d
        tr_powerburst_t9, // 0x2e
        ray_gun_mk2, // 0x2f
        tr_longburst_t9, // 0x30
        smg_standard_t9, // 0x31
        smg_accurate_t9, // 0x32
        hash_603c083704cefb0c, // 0x33
        smg_heavy_t9, // 0x34
        smg_fastfire_t9, // 0x35
        lmg_light_t9, // 0x36
        sniper_standard_t9, // 0x37
        smg_spray_t9, // 0x38
        ar_fasthandling_t9, // 0x39
        ar_mobility_t9, // 0x3a
        sniper_cannon_t9, // 0x3b
        shotgun_semiauto_t9, // 0x3c
        lmg_fastfire_t9, // 0x3d
        ar_standard_t9, // 0x3e
        ray_gun, // 0x3f
        smg_handling_t9, // 0x40
        shotgun_fullauto_t9, // 0x41
        basketball, // 0x42
        lmg_slowfire_t9 // 0x43
    };

    // idx 0x7 members: 0x13
    enum hash_7493d39e2637c1e7 {
        bonuscard, // 0x0
        hero, // 0x1
        feature, // 0x2
        weapon_special, // 0x3
        weapon_knife, // 0x4
        character, // 0x5
        miscweapon, // 0x6
        weapon_pistol, // 0x7
        killstreak, // 0x8
        weapon_sniper, // 0x9
        talent, // 0xa
        weapon_launcher, // 0xb
        weapon_grenade, // 0xc
        weapon_lmg, // 0xd
        weapon_tactical, // 0xe
        weapon_smg, // 0xf
        hash_7b68172df6035672, // 0x10
        weapon_cqb, // 0x11
        weapon_assault // 0x12
    };

    // idx 0x8 members: 0x1c
    enum hash_d5731f85b8cf294 {
        dart, // 0x0
        ultimate_turret, // 0x1
        counteruav, // 0x2
        recon_plane, // 0x3
        weapon_armor, // 0x4
        hoverjet, // 0x5
        remote_missile, // 0x6
        sig_lmg, // 0x7
        swat_team, // 0x8
        supplydrop_marker, // 0x9
        chopper_gunner, // 0xa
        drone_squadron, // 0xb
        overwatch_helicopter, // 0xc
        napalm_strike, // 0xd
        hero_pineapplegun, // 0xe
        ability_dog, // 0xf
        straferun, // 0x10
        recon_car, // 0x11
        uav, // 0x12
        ac130, // 0x13
        helicopter_comlink, // 0x14
        sig_bow_flame, // 0x15
        jetfighter, // 0x16
        ai_tank_marker, // 0x17
        helicopter_guard, // 0x18
        hero_flamethrower, // 0x19
        hero_annihilator, // 0x1a
        planemortar // 0x1b
    };

    // idx 0x9 members: 0x35
    enum hash_507792265be6dcc4 {
        ability_smart_cover, // 0x0
        hash_7a083f7ba43fa06, // 0x1
        eq_wraith_fire, // 0x2
        missile_turret, // 0x3
        eq_shroud, // 0x4
        gadget_supplypod, // 0x5
        gadget_vision_pulse, // 0x6
        waterballoon, // 0x7
        eq_arm_blade, // 0x8
        gadget_heat_wave, // 0x9
        eq_localheal, // 0xa
        gadget_medicalinjectiongun, // 0xb
        nightingale, // 0xc
        gadget_smart_cover, // 0xd
        willy_pete, // 0xe
        eq_emp_grenade, // 0xf
        frag_grenade, // 0x10
        land_mine, // 0x11
        hatchet, // 0x12
        gadget_health_regen, // 0x13
        listening_device, // 0x14
        hash_3507beb47a6b634e, // 0x15
        eq_stimshot, // 0x16
        gadget_jammer, // 0x17
        hash_3ab58e40011df941, // 0x18
        eq_sticky_grenade, // 0x19
        eq_seeker_mine, // 0x1a
        hash_4b1854c2ff5135b2, // 0x1b
        snowball, // 0x1c
        eq_concertina_wire, // 0x1d
        eq_acid_bomb, // 0x1e
        gadget_spawnbeacon, // 0x1f
        gadget_armor, // 0x20
        tomahawk_t8, // 0x21
        gadget_health_boost, // 0x22
        spectre_grenade, // 0x23
        eq_flash_grenade, // 0x24
        trophy_system, // 0x25
        eq_slow_grenade, // 0x26
        tear_gas, // 0x27
        eq_molotov, // 0x28
        gadget_cleanse, // 0x29
        satchel_charge, // 0x2a
        default_specialist_equipment, // 0x2b
        gadget_health_regen_squad, // 0x2c
        hash_76b56e7e0b3b7aac, // 0x2d
        eq_decoy_grenade, // 0x2e
        hash_788c96e19cc7a46e, // 0x2f
        claymore, // 0x30
        cymbal_monkey, // 0x31
        hash_7ab3f9a730359659, // 0x32
        gadget_icepick, // 0x33
        gadget_camo // 0x34
    };

    // idx 0xa members: 0x3c
    enum hash_1e2de876fb880be2 {
        quickdraw, // 0x0
        acog, // 0x1
        dw, // 0x2
        ir, // 0x3
        barrel2, // 0x4
        mixunder2, // 0x5
        fastreload, // 0x6
        heavy, // 0x7
        steadyaim, // 0x8
        stalker, // 0x9
        barrel, // 0xa
        mixstock, // 0xb
        smoothzoom2, // 0xc
        mixclip2, // 0xd
        reflex4, // 0xe
        reflex3, // 0xf
        reflex2, // 0x10
        stalker2, // 0x11
        extclip2, // 0x12
        tactical, // 0x13
        steadyaim2, // 0x14
        mixclip, // 0x15
        light, // 0x16
        speedgrip2, // 0x17
        mixhandle, // 0x18
        mixunder, // 0x19
        mixbarrel2, // 0x1a
        mixstock2, // 0x1b
        reddot, // 0x1c
        handle, // 0x1d
        mixmuzzle2, // 0x1e
        extclip, // 0x1f
        light2, // 0x20
        heavy2, // 0x21
        holo, // 0x22
        elo, // 0x23
        fastreload2, // 0x24
        scope3x, // 0x25
        scope4x, // 0x26
        mixhandle2, // 0x27
        compensator, // 0x28
        mixbody, // 0x29
        quickdraw2, // 0x2a
        suppressed2, // 0x2b
        speedgrip, // 0x2c
        sprintout2, // 0x2d
        suppressed, // 0x2e
        sprintout, // 0x2f
        grip2, // 0x30
        mixmuzzle, // 0x31
        handle2, // 0x32
        compensator2, // 0x33
        mixbody2, // 0x34
        dualoptic, // 0x35
        grip, // 0x36
        smoothzoom, // 0x37
        reflex, // 0x38
        mixbarrel, // 0x39
        elo3, // 0x3a
        elo2 // 0x3b
    };

    // idx 0xb members: 0x36
    enum hash_48d8d533750ed177 {
        talent_gungho, // 0x0
        talent_engineer, // 0x1
        talent_coldblooded, // 0x2
        hash_9fb2125b3e673e5, // 0x3
        gear_armor, // 0x4
        hash_cd70e712f842296, // 0x5
        talent_tracker, // 0x6
        hash_101808cdfcd390d6, // 0x7
        hash_128256155e755170, // 0x8
        hash_16cfc7f70dbd8712, // 0x9
        talent_flakjacket, // 0xa
        talent_logistics, // 0xb
        talent_looter, // 0xc
        gadget_medicalinjectiongun, // 0xd
        hash_1d8863d0b864a48b, // 0xe
        hash_1db03fa9862ba330, // 0xf
        hash_20290a682a974c94, // 0x10
        talent_dexterity, // 0x11
        hash_249e75e962ea5275, // 0x12
        talent_resistance, // 0x13
        gear_awareness, // 0x14
        hash_2c3a32e6e2afd1f2, // 0x15
        hash_311283e3107dec74, // 0x16
        talent_lightweight, // 0x17
        talent_awareness, // 0x18
        gear_equipmentcharge, // 0x19
        hash_39045b0020cc3e00, // 0x1a
        hash_3c323c7819b10b4d, // 0x1b
        hash_3c60422123a9075b, // 0x1c
        talent_scavenger, // 0x1d
        talent_skulker, // 0x1e
        gear_scorestreakcharge, // 0x1f
        talent_ghost, // 0x20
        hash_4f80a2c3398e97c9, // 0x21
        talent_elemental_pop, // 0x22
        talent_brawler, // 0x23
        talent_quartermaster, // 0x24
        hash_5c80935e7a319f21, // 0x25
        talent_paranoia, // 0x26
        talent_teamlink, // 0x27
        talent_deadsilence, // 0x28
        hash_646fc27884bdaa02, // 0x29
        gear_medicalinjectiongun, // 0x2a
        hash_661cd0d6fb33878c, // 0x2b
        talent_spycraft, // 0x2c
        hash_7321f9058ee65217, // 0x2d
        hash_7716cb3888f5dd8a, // 0x2e
        talent_elemental_pop_2, // 0x2f
        talent_elemental_pop_3, // 0x30
        talent_elemental_pop_1, // 0x31
        talent_elemental_pop_4, // 0x32
        talent_elemental_pop_5, // 0x33
        hash_7ca561e40dc3c5de, // 0x34
        hash_7f79d3ba6ed1a1d7 // 0x35
    };

    // idx 0xc members: 0x6
    enum hash_66db207c660e33f3 {
        bonuscard_overkill, // 0x0
        bonuscard_underkill, // 0x1
        bonuscard_perk_1_greed, // 0x2
        hash_4a12859000892dda, // 0x3
        hash_639ebbcda56447e7, // 0x4
        bonuscard_primary_gunfighter // 0x5
    };

    // idx 0xd members: 0xe7
    enum hash_1acf39b1d1bee1d5 {
        bonuscard_overkill, // 0x0
        talent_gungho, // 0x1
        tr_fastburst_t9, // 0x2
        talent_engineer, // 0x3
        ability_smart_cover, // 0x4
        dart, // 0x5
        ultimate_turret, // 0x6
        hash_5a7fd1af4a1d5c9, // 0x7
        hash_7a083f7ba43fa06, // 0x8
        talent_coldblooded, // 0x9
        lmg_accurate_t9, // 0xa
        ray_gun_mk2z, // 0xb
        ray_gun_mk2y, // 0xc
        ray_gun_mk2x, // 0xd
        hash_9fb2125b3e673e5, // 0xe
        sniper_powersemi_t9, // 0xf
        eq_wraith_fire, // 0x10
        gear_armor, // 0x11
        counteruav, // 0x12
        hash_cd70e712f842296, // 0x13
        talent_tracker, // 0x14
        missile_turret, // 0x15
        eq_shroud, // 0x16
        gadget_supplypod, // 0x17
        hash_101808cdfcd390d6, // 0x18
        ar_damage_t9, // 0x19
        homunculus, // 0x1a
        spknifeork, // 0x1b
        melee_bowie, // 0x1c
        hash_128256155e755170, // 0x1d
        ww_random_ray_gun1, // 0x1e
        bonuscard_underkill, // 0x1f
        recon_plane, // 0x20
        hash_16cfc7f70dbd8712, // 0x21
        bonuscard_perk_1_greed, // 0x22
        sig_buckler_dw, // 0x23
        talent_flakjacket, // 0x24
        gadget_vision_pulse, // 0x25
        waterballoon, // 0x26
        special_crossbow_t9, // 0x27
        weapon_armor, // 0x28
        eq_arm_blade, // 0x29
        talent_logistics, // 0x2a
        ww_blundergat_t8, // 0x2b
        gadget_heat_wave, // 0x2c
        eq_localheal, // 0x2d
        hoverjet, // 0x2e
        talent_looter, // 0x2f
        gadget_medicalinjectiongun, // 0x30
        hash_1d8863d0b864a48b, // 0x31
        hash_1db03fa9862ba330, // 0x32
        nightingale, // 0x33
        pistol_fullauto_t9, // 0x34
        remote_missile, // 0x35
        gadget_smart_cover, // 0x36
        hash_20290a682a974c94, // 0x37
        willy_pete, // 0x38
        eq_emp_grenade, // 0x39
        special_grenadelauncher_t9, // 0x3a
        talent_dexterity, // 0x3b
        launcher_freefire_t9, // 0x3c
        hash_249e75e962ea5275, // 0x3d
        ar_accurate_t9, // 0x3e
        sig_lmg, // 0x3f
        ww_crossbow_impaler_t8, // 0x40
        ww_freezegun_t8, // 0x41
        frag_grenade, // 0x42
        knife_loadout, // 0x43
        feature_default_class_1, // 0x44
        feature_default_class_3, // 0x45
        feature_default_class_2, // 0x46
        feature_default_class_5, // 0x47
        feature_default_class_4, // 0x48
        feature_default_class_6, // 0x49
        talent_resistance, // 0x4a
        swat_team, // 0x4b
        gear_awareness, // 0x4c
        land_mine, // 0x4d
        hatchet, // 0x4e
        hash_2c3a32e6e2afd1f2, // 0x4f
        supplydrop_marker, // 0x50
        mute_smoke, // 0x51
        hash_2ea46ca74ebdfcac, // 0x52
        smg_capacity_t9, // 0x53
        chopper_gunner, // 0x54
        hash_311283e3107dec74, // 0x55
        null_offhand_secondary, // 0x56
        gadget_health_regen, // 0x57
        hash_31be8125c7d0f273, // 0x58
        listening_device, // 0x59
        talent_lightweight, // 0x5a
        talent_awareness, // 0x5b
        spork_alcatraz, // 0x5c
        drone_squadron, // 0x5d
        gear_equipmentcharge, // 0x5e
        pistol_semiauto_t9, // 0x5f
        null_offhand_primary, // 0x60
        smg_burst_t9, // 0x61
        hash_3507beb47a6b634e, // 0x62
        pistol_revolver_t9, // 0x63
        eq_stimshot, // 0x64
        hash_39045b0020cc3e00, // 0x65
        overwatch_helicopter, // 0x66
        gadget_jammer, // 0x67
        hash_3ab58e40011df941, // 0x68
        launcher_standard_t9, // 0x69
        hash_3c323c7819b10b4d, // 0x6a
        hash_3c60422123a9075b, // 0x6b
        melee_bowie_bloody, // 0x6c
        eq_sticky_grenade, // 0x6d
        ww_ieu_shockwave_t9, // 0x6e
        melee_sledgehammer_t9, // 0x6f
        sig_blade, // 0x70
        talent_scavenger, // 0x71
        pistol_burst_t9, // 0x72
        hash_4385cf507401820f, // 0x73
        napalm_strike, // 0x74
        sniper_accurate_t9, // 0x75
        ar_fastfire_t9, // 0x76
        melee_wakizashi_t9, // 0x77
        hero_pineapplegun, // 0x78
        talent_skulker, // 0x79
        hash_48206b17d50533c2, // 0x7a
        sniper_quickscope_t9, // 0x7b
        ability_dog, // 0x7c
        straferun, // 0x7d
        hash_4a12859000892dda, // 0x7e
        eq_seeker_mine, // 0x7f
        ww_crossbow_t8, // 0x80
        recon_car, // 0x81
        hash_4b1854c2ff5135b2, // 0x82
        snowball, // 0x83
        feature_custom_class_9, // 0x84
        feature_custom_class_8, // 0x85
        feature_custom_class_3, // 0x86
        feature_custom_class_2, // 0x87
        feature_custom_class_1, // 0x88
        feature_custom_class_7, // 0x89
        feature_custom_class_6, // 0x8a
        feature_custom_class_5, // 0x8b
        feature_custom_class_4, // 0x8c
        uav, // 0x8d
        eq_concertina_wire, // 0x8e
        gear_scorestreakcharge, // 0x8f
        feature_custom_class_10, // 0x90
        ar_slowhandling_t9, // 0x91
        eq_acid_bomb, // 0x92
        gadget_spawnbeacon, // 0x93
        ac130, // 0x94
        talent_ghost, // 0x95
        hash_4f80a2c3398e97c9, // 0x96
        tr_precisionsemi_t9, // 0x97
        helicopter_comlink, // 0x98
        gadget_armor, // 0x99
        tr_damagesemi_t9, // 0x9a
        feature_cac, // 0x9b
        talent_elemental_pop, // 0x9c
        tomahawk_t8, // 0x9d
        shotgun_pump_t9, // 0x9e
        gadget_health_boost, // 0x9f
        spectre_grenade, // 0xa0
        talent_brawler, // 0xa1
        eq_flash_grenade, // 0xa2
        hash_55c23f24d806e3a6, // 0xa3
        bare_hands, // 0xa4
        ar_slowfire_t9, // 0xa5
        tr_powerburst_t9, // 0xa6
        trophy_system, // 0xa7
        talent_quartermaster, // 0xa8
        ray_gun_mk2, // 0xa9
        tr_longburst_t9, // 0xaa
        smg_standard_t9, // 0xab
        hash_5c80935e7a319f21, // 0xac
        sig_bow_flame, // 0xad
        eq_slow_grenade, // 0xae
        talent_paranoia, // 0xaf
        smg_accurate_t9, // 0xb0
        hash_603c083704cefb0c, // 0xb1
        jetfighter, // 0xb2
        talent_teamlink, // 0xb3
        smg_heavy_t9, // 0xb4
        talent_deadsilence, // 0xb5
        tear_gas, // 0xb6
        hash_639ebbcda56447e7, // 0xb7
        eq_molotov, // 0xb8
        smg_fastfire_t9, // 0xb9
        hash_646fc27884bdaa02, // 0xba
        bonuscard_primary_gunfighter, // 0xbb
        lmg_light_t9, // 0xbc
        ai_tank_marker, // 0xbd
        gear_medicalinjectiongun, // 0xbe
        hash_661cd0d6fb33878c, // 0xbf
        gadget_cleanse, // 0xc0
        hero_flamethrower, // 0xc1
        sniper_standard_t9, // 0xc2
        smg_spray_t9, // 0xc3
        hero_annihilator, // 0xc4
        ar_fasthandling_t9, // 0xc5
        ar_mobility_t9, // 0xc6
        planemortar, // 0xc7
        sniper_cannon_t9, // 0xc8
        shotgun_semiauto_t9, // 0xc9
        lmg_fastfire_t9, // 0xca
        ar_standard_t9, // 0xcb
        weapon_null, // 0xcc
        talent_spycraft, // 0xcd
        hash_7321f9058ee65217, // 0xce
        satchel_charge, // 0xcf
        default_specialist_equipment, // 0xd0
        gadget_health_regen_squad, // 0xd1
        hash_76b56e7e0b3b7aac, // 0xd2
        eq_decoy_grenade, // 0xd3
        hash_7716cb3888f5dd8a, // 0xd4
        ray_gun, // 0xd5
        hash_788c96e19cc7a46e, // 0xd6
        claymore, // 0xd7
        talent_elemental_pop_2, // 0xd8
        talent_elemental_pop_3, // 0xd9
        talent_elemental_pop_1, // 0xda
        talent_elemental_pop_4, // 0xdb
        talent_elemental_pop_5, // 0xdc
        smg_handling_t9, // 0xdd
        cymbal_monkey, // 0xde
        shotgun_fullauto_t9, // 0xdf
        hash_7ab3f9a730359659, // 0xe0
        gadget_icepick, // 0xe1
        hash_7ca561e40dc3c5de, // 0xe2
        basketball, // 0xe3
        gadget_camo, // 0xe4
        hash_7f79d3ba6ed1a1d7, // 0xe5
        lmg_slowfire_t9 // 0xe6
    };

    // root: bitSize: 0x10a8, members: 15

    // offset: 0x0, bitSize: 0x6d8(0xdb Byte(s))
    region_info dml;
    // offset: 0x6d8, bitSize: 0x318(0x63 Byte(s)), array:0x3(hti:0xffff)
    lootcontracts loot_contracts[3];
    // offset: 0x9f0, bitSize: 0x20(0x4 Byte(s))
    uint hash_5a1a5df0cdadbba3;
    // offset: 0xa10, bitSize: 0x20(0x4 Byte(s))
    uint hash_151eef37df5ee845;
    // offset: 0xa30, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_tier_boost;
    // offset: 0xa38, bitSize: 0x8(0x1 Byte(s))
    hash_54196e9e9860f0be platform;
    // offset: 0xa40, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_party_tier_boost;
    // offset: 0xa48, bitSize: 0x20(0x4 Byte(s))
    uint hash_1e4fbbabf3da13fa;
    // offset: 0xa68, bitSize: 0x110(0x22 Byte(s)), array:0x11(hti:0xffff)
    hash_33944d215cff6222 hash_33944d215cff6222[17];
    // offset: 0xb78, bitSize: 0x440(0x88 Byte(s)), array:0x44(hti:0x6)
    hash_1c86958671ff27fd hash_4953b2b12f1d6b1b[hash_4b8d95aacf149fb9];
    // offset: 0xfb8, bitSize: 0xa0(0x14 Byte(s))
    client_header client;
    // offset: 0x1058, bitSize: 0x8(0x1 Byte(s))
    byte tier_boost;
    // offset: 0x1060, bitSize: 0x1
    bool hash_4ca91f34eba5a203;
    // offset: 0x1061, bitSize: 0x44, array:0x44(hti:0x6)
    bool hash_4473319d8a8d9dcf[hash_4b8d95aacf149fb9];
};

version hash_c609e2723cd3edda {
    // enums ..... 14 (0xe)
    // structs ... 9 (0x9)
    // header bit size .. 4472 (0x1178)
    // header byte size . 559 (0x22f)

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

    // bitSize: 0x500, members: 5
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
    struct hash_1c86958671ff27fd {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_50ab8b7df567cd2a;
    };

    // bitSize: 0x108, members: 6
    struct lootcontracts {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint xp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint contractid;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:3 contractgamemode;
        // offset: 0x48, bitSize: 0x40(0x8 Byte(s))
        xhash contracthash;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 progress;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 target;
    };

    // bitSize: 0x10, members: 3
    struct hash_33944d215cff6222 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_174d79c341ec2c6c;
        // offset: 0x8, bitSize: 0x1
        bool hash_2401d7a2dc706a6c;
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

    // idx 0x5 members: 0xad
    enum hash_10d50fe10481423c {
        tr_fastburst_t9, // 0x0
        ability_smart_cover, // 0x1
        dart, // 0x2
        ultimate_turret, // 0x3
        hash_5a7fd1af4a1d5c9, // 0x4
        hash_7a083f7ba43fa06, // 0x5
        lmg_accurate_t9, // 0x6
        melee_etool_t9, // 0x7
        ray_gun_mk2z, // 0x8
        ray_gun_mk2y, // 0x9
        ray_gun_mk2x, // 0xa
        sniper_powersemi_t9, // 0xb
        eq_wraith_fire, // 0xc
        counteruav, // 0xd
        missile_turret, // 0xe
        eq_shroud, // 0xf
        gadget_supplypod, // 0x10
        ar_damage_t9, // 0x11
        homunculus, // 0x12
        spknifeork, // 0x13
        melee_bowie, // 0x14
        ww_random_ray_gun1, // 0x15
        recon_plane, // 0x16
        sig_buckler_dw, // 0x17
        gadget_vision_pulse, // 0x18
        waterballoon, // 0x19
        special_crossbow_t9, // 0x1a
        weapon_armor, // 0x1b
        eq_arm_blade, // 0x1c
        ww_blundergat_t8, // 0x1d
        gadget_heat_wave, // 0x1e
        eq_localheal, // 0x1f
        hoverjet, // 0x20
        nightingale, // 0x21
        pistol_fullauto_t9, // 0x22
        remote_missile, // 0x23
        gadget_smart_cover, // 0x24
        willy_pete, // 0x25
        eq_emp_grenade, // 0x26
        special_grenadelauncher_t9, // 0x27
        melee_machete_t9, // 0x28
        launcher_freefire_t9, // 0x29
        ar_accurate_t9, // 0x2a
        sig_lmg, // 0x2b
        ww_crossbow_impaler_t8, // 0x2c
        ww_freezegun_t8, // 0x2d
        frag_grenade, // 0x2e
        knife_loadout, // 0x2f
        feature_default_class_1, // 0x30
        feature_default_class_3, // 0x31
        feature_default_class_2, // 0x32
        feature_default_class_5, // 0x33
        feature_default_class_4, // 0x34
        feature_default_class_6, // 0x35
        swat_team, // 0x36
        land_mine, // 0x37
        hatchet, // 0x38
        supplydrop_marker, // 0x39
        mute_smoke, // 0x3a
        hash_2ea46ca74ebdfcac, // 0x3b
        smg_capacity_t9, // 0x3c
        chopper_gunner, // 0x3d
        null_offhand_secondary, // 0x3e
        gadget_health_regen, // 0x3f
        hash_31be8125c7d0f273, // 0x40
        listening_device, // 0x41
        spork_alcatraz, // 0x42
        drone_squadron, // 0x43
        pistol_semiauto_t9, // 0x44
        null_offhand_primary, // 0x45
        smg_burst_t9, // 0x46
        hash_3507beb47a6b634e, // 0x47
        pistol_revolver_t9, // 0x48
        eq_stimshot, // 0x49
        overwatch_helicopter, // 0x4a
        gadget_jammer, // 0x4b
        hash_3ab58e40011df941, // 0x4c
        launcher_standard_t9, // 0x4d
        melee_bowie_bloody, // 0x4e
        eq_sticky_grenade, // 0x4f
        ww_ieu_shockwave_t9, // 0x50
        melee_sledgehammer_t9, // 0x51
        sig_blade, // 0x52
        pistol_burst_t9, // 0x53
        hash_4385cf507401820f, // 0x54
        napalm_strike, // 0x55
        sniper_accurate_t9, // 0x56
        ar_fastfire_t9, // 0x57
        melee_wakizashi_t9, // 0x58
        hero_pineapplegun, // 0x59
        hash_48206b17d50533c2, // 0x5a
        sniper_quickscope_t9, // 0x5b
        ability_dog, // 0x5c
        straferun, // 0x5d
        eq_seeker_mine, // 0x5e
        ww_crossbow_t8, // 0x5f
        recon_car, // 0x60
        hash_4b1854c2ff5135b2, // 0x61
        snowball, // 0x62
        feature_custom_class_9, // 0x63
        feature_custom_class_8, // 0x64
        feature_custom_class_3, // 0x65
        feature_custom_class_2, // 0x66
        feature_custom_class_1, // 0x67
        feature_custom_class_7, // 0x68
        feature_custom_class_6, // 0x69
        feature_custom_class_5, // 0x6a
        feature_custom_class_4, // 0x6b
        uav, // 0x6c
        eq_concertina_wire, // 0x6d
        feature_custom_class_10, // 0x6e
        ar_slowhandling_t9, // 0x6f
        eq_acid_bomb, // 0x70
        gadget_spawnbeacon, // 0x71
        ac130, // 0x72
        tr_precisionsemi_t9, // 0x73
        helicopter_comlink, // 0x74
        gadget_armor, // 0x75
        tr_damagesemi_t9, // 0x76
        feature_cac, // 0x77
        tomahawk_t8, // 0x78
        shotgun_pump_t9, // 0x79
        gadget_health_boost, // 0x7a
        spectre_grenade, // 0x7b
        eq_flash_grenade, // 0x7c
        hash_55c23f24d806e3a6, // 0x7d
        bare_hands, // 0x7e
        ar_slowfire_t9, // 0x7f
        tr_powerburst_t9, // 0x80
        trophy_system, // 0x81
        ray_gun_mk2, // 0x82
        tr_longburst_t9, // 0x83
        smg_standard_t9, // 0x84
        sig_bow_flame, // 0x85
        eq_slow_grenade, // 0x86
        smg_accurate_t9, // 0x87
        hash_603c083704cefb0c, // 0x88
        jetfighter, // 0x89
        smg_heavy_t9, // 0x8a
        tear_gas, // 0x8b
        eq_molotov, // 0x8c
        smg_fastfire_t9, // 0x8d
        lmg_light_t9, // 0x8e
        ai_tank_marker, // 0x8f
        gadget_cleanse, // 0x90
        hero_flamethrower, // 0x91
        sniper_standard_t9, // 0x92
        smg_spray_t9, // 0x93
        hero_annihilator, // 0x94
        ar_fasthandling_t9, // 0x95
        ar_mobility_t9, // 0x96
        planemortar, // 0x97
        sniper_cannon_t9, // 0x98
        shotgun_semiauto_t9, // 0x99
        lmg_fastfire_t9, // 0x9a
        ar_standard_t9, // 0x9b
        weapon_null, // 0x9c
        satchel_charge, // 0x9d
        default_specialist_equipment, // 0x9e
        gadget_health_regen_squad, // 0x9f
        hash_76b56e7e0b3b7aac, // 0xa0
        eq_decoy_grenade, // 0xa1
        ray_gun, // 0xa2
        hash_788c96e19cc7a46e, // 0xa3
        claymore, // 0xa4
        smg_handling_t9, // 0xa5
        cymbal_monkey, // 0xa6
        shotgun_fullauto_t9, // 0xa7
        hash_7ab3f9a730359659, // 0xa8
        gadget_icepick, // 0xa9
        basketball, // 0xaa
        gadget_camo, // 0xab
        lmg_slowfire_t9 // 0xac
    };

    // idx 0x6 members: 0x46
    enum hash_4b8d95aacf149fb9 {
        tr_fastburst_t9, // 0x0
        lmg_accurate_t9, // 0x1
        melee_etool_t9, // 0x2
        ray_gun_mk2z, // 0x3
        ray_gun_mk2y, // 0x4
        ray_gun_mk2x, // 0x5
        sniper_powersemi_t9, // 0x6
        hash_c21b61b32a5d972, // 0x7
        ar_damage_t9, // 0x8
        homunculus, // 0x9
        spknifeork, // 0xa
        melee_bowie, // 0xb
        ww_random_ray_gun1, // 0xc
        hash_165cf52ce418f5a1, // 0xd
        special_crossbow_t9, // 0xe
        ww_blundergat_t8, // 0xf
        pistol_fullauto_t9, // 0x10
        special_grenadelauncher_t9, // 0x11
        melee_machete_t9, // 0x12
        launcher_freefire_t9, // 0x13
        ar_accurate_t9, // 0x14
        ww_crossbow_impaler_t8, // 0x15
        ww_freezegun_t8, // 0x16
        knife_loadout, // 0x17
        hash_2ea46ca74ebdfcac, // 0x18
        smg_capacity_t9, // 0x19
        spork_alcatraz, // 0x1a
        pistol_semiauto_t9, // 0x1b
        smg_burst_t9, // 0x1c
        pistol_revolver_t9, // 0x1d
        launcher_standard_t9, // 0x1e
        melee_bowie_bloody, // 0x1f
        ww_ieu_shockwave_t9, // 0x20
        melee_sledgehammer_t9, // 0x21
        pistol_burst_t9, // 0x22
        hash_4385cf507401820f, // 0x23
        sniper_accurate_t9, // 0x24
        ar_fastfire_t9, // 0x25
        melee_wakizashi_t9, // 0x26
        hash_48206b17d50533c2, // 0x27
        sniper_quickscope_t9, // 0x28
        ww_crossbow_t8, // 0x29
        ar_slowhandling_t9, // 0x2a
        tr_precisionsemi_t9, // 0x2b
        tr_damagesemi_t9, // 0x2c
        shotgun_pump_t9, // 0x2d
        hash_55c23f24d806e3a6, // 0x2e
        ar_slowfire_t9, // 0x2f
        tr_powerburst_t9, // 0x30
        ray_gun_mk2, // 0x31
        tr_longburst_t9, // 0x32
        smg_standard_t9, // 0x33
        smg_accurate_t9, // 0x34
        hash_603c083704cefb0c, // 0x35
        smg_heavy_t9, // 0x36
        smg_fastfire_t9, // 0x37
        lmg_light_t9, // 0x38
        sniper_standard_t9, // 0x39
        smg_spray_t9, // 0x3a
        ar_fasthandling_t9, // 0x3b
        ar_mobility_t9, // 0x3c
        sniper_cannon_t9, // 0x3d
        shotgun_semiauto_t9, // 0x3e
        lmg_fastfire_t9, // 0x3f
        ar_standard_t9, // 0x40
        ray_gun, // 0x41
        smg_handling_t9, // 0x42
        shotgun_fullauto_t9, // 0x43
        basketball, // 0x44
        lmg_slowfire_t9 // 0x45
    };

    // idx 0x7 members: 0x13
    enum hash_7493d39e2637c1e7 {
        bonuscard, // 0x0
        hero, // 0x1
        feature, // 0x2
        weapon_special, // 0x3
        weapon_knife, // 0x4
        character, // 0x5
        miscweapon, // 0x6
        weapon_pistol, // 0x7
        killstreak, // 0x8
        weapon_sniper, // 0x9
        talent, // 0xa
        weapon_launcher, // 0xb
        weapon_grenade, // 0xc
        weapon_lmg, // 0xd
        weapon_tactical, // 0xe
        weapon_smg, // 0xf
        hash_7b68172df6035672, // 0x10
        weapon_cqb, // 0x11
        weapon_assault // 0x12
    };

    // idx 0x8 members: 0x1c
    enum hash_d5731f85b8cf294 {
        dart, // 0x0
        ultimate_turret, // 0x1
        counteruav, // 0x2
        recon_plane, // 0x3
        weapon_armor, // 0x4
        hoverjet, // 0x5
        remote_missile, // 0x6
        sig_lmg, // 0x7
        swat_team, // 0x8
        supplydrop_marker, // 0x9
        chopper_gunner, // 0xa
        drone_squadron, // 0xb
        overwatch_helicopter, // 0xc
        napalm_strike, // 0xd
        hero_pineapplegun, // 0xe
        ability_dog, // 0xf
        straferun, // 0x10
        recon_car, // 0x11
        uav, // 0x12
        ac130, // 0x13
        helicopter_comlink, // 0x14
        sig_bow_flame, // 0x15
        jetfighter, // 0x16
        ai_tank_marker, // 0x17
        helicopter_guard, // 0x18
        hero_flamethrower, // 0x19
        hero_annihilator, // 0x1a
        planemortar // 0x1b
    };

    // idx 0x9 members: 0x35
    enum hash_507792265be6dcc4 {
        ability_smart_cover, // 0x0
        hash_7a083f7ba43fa06, // 0x1
        eq_wraith_fire, // 0x2
        missile_turret, // 0x3
        eq_shroud, // 0x4
        gadget_supplypod, // 0x5
        gadget_vision_pulse, // 0x6
        waterballoon, // 0x7
        eq_arm_blade, // 0x8
        gadget_heat_wave, // 0x9
        eq_localheal, // 0xa
        gadget_medicalinjectiongun, // 0xb
        nightingale, // 0xc
        gadget_smart_cover, // 0xd
        willy_pete, // 0xe
        eq_emp_grenade, // 0xf
        frag_grenade, // 0x10
        land_mine, // 0x11
        hatchet, // 0x12
        gadget_health_regen, // 0x13
        listening_device, // 0x14
        hash_3507beb47a6b634e, // 0x15
        eq_stimshot, // 0x16
        gadget_jammer, // 0x17
        hash_3ab58e40011df941, // 0x18
        eq_sticky_grenade, // 0x19
        eq_seeker_mine, // 0x1a
        hash_4b1854c2ff5135b2, // 0x1b
        snowball, // 0x1c
        eq_concertina_wire, // 0x1d
        eq_acid_bomb, // 0x1e
        gadget_spawnbeacon, // 0x1f
        gadget_armor, // 0x20
        tomahawk_t8, // 0x21
        gadget_health_boost, // 0x22
        spectre_grenade, // 0x23
        eq_flash_grenade, // 0x24
        trophy_system, // 0x25
        eq_slow_grenade, // 0x26
        tear_gas, // 0x27
        eq_molotov, // 0x28
        gadget_cleanse, // 0x29
        satchel_charge, // 0x2a
        default_specialist_equipment, // 0x2b
        gadget_health_regen_squad, // 0x2c
        hash_76b56e7e0b3b7aac, // 0x2d
        eq_decoy_grenade, // 0x2e
        hash_788c96e19cc7a46e, // 0x2f
        claymore, // 0x30
        cymbal_monkey, // 0x31
        hash_7ab3f9a730359659, // 0x32
        gadget_icepick, // 0x33
        gadget_camo // 0x34
    };

    // idx 0xa members: 0x3c
    enum hash_1e2de876fb880be2 {
        quickdraw, // 0x0
        acog, // 0x1
        dw, // 0x2
        ir, // 0x3
        barrel2, // 0x4
        mixunder2, // 0x5
        fastreload, // 0x6
        heavy, // 0x7
        steadyaim, // 0x8
        stalker, // 0x9
        barrel, // 0xa
        mixstock, // 0xb
        smoothzoom2, // 0xc
        mixclip2, // 0xd
        reflex4, // 0xe
        reflex3, // 0xf
        reflex2, // 0x10
        stalker2, // 0x11
        extclip2, // 0x12
        tactical, // 0x13
        steadyaim2, // 0x14
        mixclip, // 0x15
        light, // 0x16
        speedgrip2, // 0x17
        mixhandle, // 0x18
        mixunder, // 0x19
        mixbarrel2, // 0x1a
        mixstock2, // 0x1b
        reddot, // 0x1c
        handle, // 0x1d
        mixmuzzle2, // 0x1e
        extclip, // 0x1f
        light2, // 0x20
        heavy2, // 0x21
        holo, // 0x22
        elo, // 0x23
        fastreload2, // 0x24
        scope3x, // 0x25
        scope4x, // 0x26
        mixhandle2, // 0x27
        compensator, // 0x28
        mixbody, // 0x29
        quickdraw2, // 0x2a
        suppressed2, // 0x2b
        speedgrip, // 0x2c
        sprintout2, // 0x2d
        suppressed, // 0x2e
        sprintout, // 0x2f
        grip2, // 0x30
        mixmuzzle, // 0x31
        handle2, // 0x32
        compensator2, // 0x33
        mixbody2, // 0x34
        dualoptic, // 0x35
        grip, // 0x36
        smoothzoom, // 0x37
        reflex, // 0x38
        mixbarrel, // 0x39
        elo3, // 0x3a
        elo2 // 0x3b
    };

    // idx 0xb members: 0x36
    enum hash_48d8d533750ed177 {
        talent_gungho, // 0x0
        talent_engineer, // 0x1
        talent_coldblooded, // 0x2
        hash_9fb2125b3e673e5, // 0x3
        gear_armor, // 0x4
        hash_cd70e712f842296, // 0x5
        talent_tracker, // 0x6
        hash_101808cdfcd390d6, // 0x7
        hash_128256155e755170, // 0x8
        hash_16cfc7f70dbd8712, // 0x9
        talent_flakjacket, // 0xa
        talent_logistics, // 0xb
        talent_looter, // 0xc
        gadget_medicalinjectiongun, // 0xd
        hash_1d8863d0b864a48b, // 0xe
        hash_1db03fa9862ba330, // 0xf
        hash_20290a682a974c94, // 0x10
        talent_dexterity, // 0x11
        hash_249e75e962ea5275, // 0x12
        talent_resistance, // 0x13
        gear_awareness, // 0x14
        hash_2c3a32e6e2afd1f2, // 0x15
        hash_311283e3107dec74, // 0x16
        talent_lightweight, // 0x17
        talent_awareness, // 0x18
        gear_equipmentcharge, // 0x19
        hash_39045b0020cc3e00, // 0x1a
        hash_3c323c7819b10b4d, // 0x1b
        hash_3c60422123a9075b, // 0x1c
        talent_scavenger, // 0x1d
        talent_skulker, // 0x1e
        gear_scorestreakcharge, // 0x1f
        talent_ghost, // 0x20
        hash_4f80a2c3398e97c9, // 0x21
        talent_elemental_pop, // 0x22
        talent_brawler, // 0x23
        talent_quartermaster, // 0x24
        hash_5c80935e7a319f21, // 0x25
        talent_paranoia, // 0x26
        talent_teamlink, // 0x27
        talent_deadsilence, // 0x28
        hash_646fc27884bdaa02, // 0x29
        gear_medicalinjectiongun, // 0x2a
        hash_661cd0d6fb33878c, // 0x2b
        talent_spycraft, // 0x2c
        hash_7321f9058ee65217, // 0x2d
        hash_7716cb3888f5dd8a, // 0x2e
        talent_elemental_pop_2, // 0x2f
        talent_elemental_pop_3, // 0x30
        talent_elemental_pop_1, // 0x31
        talent_elemental_pop_4, // 0x32
        talent_elemental_pop_5, // 0x33
        hash_7ca561e40dc3c5de, // 0x34
        hash_7f79d3ba6ed1a1d7 // 0x35
    };

    // idx 0xc members: 0x6
    enum hash_66db207c660e33f3 {
        bonuscard_overkill, // 0x0
        bonuscard_underkill, // 0x1
        bonuscard_perk_1_greed, // 0x2
        hash_4a12859000892dda, // 0x3
        hash_639ebbcda56447e7, // 0x4
        bonuscard_primary_gunfighter // 0x5
    };

    // idx 0xd members: 0xe9
    enum hash_1acf39b1d1bee1d5 {
        bonuscard_overkill, // 0x0
        talent_gungho, // 0x1
        tr_fastburst_t9, // 0x2
        talent_engineer, // 0x3
        ability_smart_cover, // 0x4
        dart, // 0x5
        ultimate_turret, // 0x6
        hash_5a7fd1af4a1d5c9, // 0x7
        hash_7a083f7ba43fa06, // 0x8
        talent_coldblooded, // 0x9
        lmg_accurate_t9, // 0xa
        melee_etool_t9, // 0xb
        ray_gun_mk2z, // 0xc
        ray_gun_mk2y, // 0xd
        ray_gun_mk2x, // 0xe
        hash_9fb2125b3e673e5, // 0xf
        sniper_powersemi_t9, // 0x10
        eq_wraith_fire, // 0x11
        gear_armor, // 0x12
        counteruav, // 0x13
        hash_cd70e712f842296, // 0x14
        talent_tracker, // 0x15
        missile_turret, // 0x16
        eq_shroud, // 0x17
        gadget_supplypod, // 0x18
        hash_101808cdfcd390d6, // 0x19
        ar_damage_t9, // 0x1a
        homunculus, // 0x1b
        spknifeork, // 0x1c
        melee_bowie, // 0x1d
        hash_128256155e755170, // 0x1e
        ww_random_ray_gun1, // 0x1f
        bonuscard_underkill, // 0x20
        recon_plane, // 0x21
        hash_16cfc7f70dbd8712, // 0x22
        bonuscard_perk_1_greed, // 0x23
        sig_buckler_dw, // 0x24
        talent_flakjacket, // 0x25
        gadget_vision_pulse, // 0x26
        waterballoon, // 0x27
        special_crossbow_t9, // 0x28
        weapon_armor, // 0x29
        eq_arm_blade, // 0x2a
        talent_logistics, // 0x2b
        ww_blundergat_t8, // 0x2c
        gadget_heat_wave, // 0x2d
        eq_localheal, // 0x2e
        hoverjet, // 0x2f
        talent_looter, // 0x30
        gadget_medicalinjectiongun, // 0x31
        hash_1d8863d0b864a48b, // 0x32
        hash_1db03fa9862ba330, // 0x33
        nightingale, // 0x34
        pistol_fullauto_t9, // 0x35
        remote_missile, // 0x36
        gadget_smart_cover, // 0x37
        hash_20290a682a974c94, // 0x38
        willy_pete, // 0x39
        eq_emp_grenade, // 0x3a
        special_grenadelauncher_t9, // 0x3b
        melee_machete_t9, // 0x3c
        talent_dexterity, // 0x3d
        launcher_freefire_t9, // 0x3e
        hash_249e75e962ea5275, // 0x3f
        ar_accurate_t9, // 0x40
        sig_lmg, // 0x41
        ww_crossbow_impaler_t8, // 0x42
        ww_freezegun_t8, // 0x43
        frag_grenade, // 0x44
        knife_loadout, // 0x45
        feature_default_class_1, // 0x46
        feature_default_class_3, // 0x47
        feature_default_class_2, // 0x48
        feature_default_class_5, // 0x49
        feature_default_class_4, // 0x4a
        feature_default_class_6, // 0x4b
        talent_resistance, // 0x4c
        swat_team, // 0x4d
        gear_awareness, // 0x4e
        land_mine, // 0x4f
        hatchet, // 0x50
        hash_2c3a32e6e2afd1f2, // 0x51
        supplydrop_marker, // 0x52
        mute_smoke, // 0x53
        hash_2ea46ca74ebdfcac, // 0x54
        smg_capacity_t9, // 0x55
        chopper_gunner, // 0x56
        hash_311283e3107dec74, // 0x57
        null_offhand_secondary, // 0x58
        gadget_health_regen, // 0x59
        hash_31be8125c7d0f273, // 0x5a
        listening_device, // 0x5b
        talent_lightweight, // 0x5c
        talent_awareness, // 0x5d
        spork_alcatraz, // 0x5e
        drone_squadron, // 0x5f
        gear_equipmentcharge, // 0x60
        pistol_semiauto_t9, // 0x61
        null_offhand_primary, // 0x62
        smg_burst_t9, // 0x63
        hash_3507beb47a6b634e, // 0x64
        pistol_revolver_t9, // 0x65
        eq_stimshot, // 0x66
        hash_39045b0020cc3e00, // 0x67
        overwatch_helicopter, // 0x68
        gadget_jammer, // 0x69
        hash_3ab58e40011df941, // 0x6a
        launcher_standard_t9, // 0x6b
        hash_3c323c7819b10b4d, // 0x6c
        hash_3c60422123a9075b, // 0x6d
        melee_bowie_bloody, // 0x6e
        eq_sticky_grenade, // 0x6f
        ww_ieu_shockwave_t9, // 0x70
        melee_sledgehammer_t9, // 0x71
        sig_blade, // 0x72
        talent_scavenger, // 0x73
        pistol_burst_t9, // 0x74
        hash_4385cf507401820f, // 0x75
        napalm_strike, // 0x76
        sniper_accurate_t9, // 0x77
        ar_fastfire_t9, // 0x78
        melee_wakizashi_t9, // 0x79
        hero_pineapplegun, // 0x7a
        talent_skulker, // 0x7b
        hash_48206b17d50533c2, // 0x7c
        sniper_quickscope_t9, // 0x7d
        ability_dog, // 0x7e
        straferun, // 0x7f
        hash_4a12859000892dda, // 0x80
        eq_seeker_mine, // 0x81
        ww_crossbow_t8, // 0x82
        recon_car, // 0x83
        hash_4b1854c2ff5135b2, // 0x84
        snowball, // 0x85
        feature_custom_class_9, // 0x86
        feature_custom_class_8, // 0x87
        feature_custom_class_3, // 0x88
        feature_custom_class_2, // 0x89
        feature_custom_class_1, // 0x8a
        feature_custom_class_7, // 0x8b
        feature_custom_class_6, // 0x8c
        feature_custom_class_5, // 0x8d
        feature_custom_class_4, // 0x8e
        uav, // 0x8f
        eq_concertina_wire, // 0x90
        gear_scorestreakcharge, // 0x91
        feature_custom_class_10, // 0x92
        ar_slowhandling_t9, // 0x93
        eq_acid_bomb, // 0x94
        gadget_spawnbeacon, // 0x95
        ac130, // 0x96
        talent_ghost, // 0x97
        hash_4f80a2c3398e97c9, // 0x98
        tr_precisionsemi_t9, // 0x99
        helicopter_comlink, // 0x9a
        gadget_armor, // 0x9b
        tr_damagesemi_t9, // 0x9c
        feature_cac, // 0x9d
        talent_elemental_pop, // 0x9e
        tomahawk_t8, // 0x9f
        shotgun_pump_t9, // 0xa0
        gadget_health_boost, // 0xa1
        spectre_grenade, // 0xa2
        talent_brawler, // 0xa3
        eq_flash_grenade, // 0xa4
        hash_55c23f24d806e3a6, // 0xa5
        bare_hands, // 0xa6
        ar_slowfire_t9, // 0xa7
        tr_powerburst_t9, // 0xa8
        trophy_system, // 0xa9
        talent_quartermaster, // 0xaa
        ray_gun_mk2, // 0xab
        tr_longburst_t9, // 0xac
        smg_standard_t9, // 0xad
        hash_5c80935e7a319f21, // 0xae
        sig_bow_flame, // 0xaf
        eq_slow_grenade, // 0xb0
        talent_paranoia, // 0xb1
        smg_accurate_t9, // 0xb2
        hash_603c083704cefb0c, // 0xb3
        jetfighter, // 0xb4
        talent_teamlink, // 0xb5
        smg_heavy_t9, // 0xb6
        talent_deadsilence, // 0xb7
        tear_gas, // 0xb8
        hash_639ebbcda56447e7, // 0xb9
        eq_molotov, // 0xba
        smg_fastfire_t9, // 0xbb
        hash_646fc27884bdaa02, // 0xbc
        bonuscard_primary_gunfighter, // 0xbd
        lmg_light_t9, // 0xbe
        ai_tank_marker, // 0xbf
        gear_medicalinjectiongun, // 0xc0
        hash_661cd0d6fb33878c, // 0xc1
        gadget_cleanse, // 0xc2
        hero_flamethrower, // 0xc3
        sniper_standard_t9, // 0xc4
        smg_spray_t9, // 0xc5
        hero_annihilator, // 0xc6
        ar_fasthandling_t9, // 0xc7
        ar_mobility_t9, // 0xc8
        planemortar, // 0xc9
        sniper_cannon_t9, // 0xca
        shotgun_semiauto_t9, // 0xcb
        lmg_fastfire_t9, // 0xcc
        ar_standard_t9, // 0xcd
        weapon_null, // 0xce
        talent_spycraft, // 0xcf
        hash_7321f9058ee65217, // 0xd0
        satchel_charge, // 0xd1
        default_specialist_equipment, // 0xd2
        gadget_health_regen_squad, // 0xd3
        hash_76b56e7e0b3b7aac, // 0xd4
        eq_decoy_grenade, // 0xd5
        hash_7716cb3888f5dd8a, // 0xd6
        ray_gun, // 0xd7
        hash_788c96e19cc7a46e, // 0xd8
        claymore, // 0xd9
        talent_elemental_pop_2, // 0xda
        talent_elemental_pop_3, // 0xdb
        talent_elemental_pop_1, // 0xdc
        talent_elemental_pop_4, // 0xdd
        talent_elemental_pop_5, // 0xde
        smg_handling_t9, // 0xdf
        cymbal_monkey, // 0xe0
        shotgun_fullauto_t9, // 0xe1
        hash_7ab3f9a730359659, // 0xe2
        gadget_icepick, // 0xe3
        hash_7ca561e40dc3c5de, // 0xe4
        basketball, // 0xe5
        gadget_camo, // 0xe6
        hash_7f79d3ba6ed1a1d7, // 0xe7
        lmg_slowfire_t9 // 0xe8
    };

    // root: bitSize: 0x10c8, members: 15

    // offset: 0x0, bitSize: 0x6d8(0xdb Byte(s))
    region_info dml;
    // offset: 0x6d8, bitSize: 0x318(0x63 Byte(s)), array:0x3(hti:0xffff)
    lootcontracts loot_contracts[3];
    // offset: 0x9f0, bitSize: 0x20(0x4 Byte(s))
    uint hash_5a1a5df0cdadbba3;
    // offset: 0xa10, bitSize: 0x20(0x4 Byte(s))
    uint hash_151eef37df5ee845;
    // offset: 0xa30, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_tier_boost;
    // offset: 0xa38, bitSize: 0x8(0x1 Byte(s))
    hash_54196e9e9860f0be platform;
    // offset: 0xa40, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_party_tier_boost;
    // offset: 0xa48, bitSize: 0x20(0x4 Byte(s))
    uint hash_1e4fbbabf3da13fa;
    // offset: 0xa68, bitSize: 0x110(0x22 Byte(s)), array:0x11(hti:0xffff)
    hash_33944d215cff6222 hash_33944d215cff6222[17];
    // offset: 0xb78, bitSize: 0x460(0x8c Byte(s)), array:0x46(hti:0x6)
    hash_1c86958671ff27fd hash_4953b2b12f1d6b1b[hash_4b8d95aacf149fb9];
    // offset: 0xfd8, bitSize: 0xa0(0x14 Byte(s))
    client_header client;
    // offset: 0x1078, bitSize: 0x8(0x1 Byte(s))
    byte tier_boost;
    // offset: 0x1080, bitSize: 0x1
    bool hash_4ca91f34eba5a203;
    // offset: 0x1081, bitSize: 0x46, array:0x46(hti:0x6)
    bool hash_4473319d8a8d9dcf[hash_4b8d95aacf149fb9];
};

version hash_9c9691b67925ad90 {
    // enums ..... 14 (0xe)
    // structs ... 9 (0x9)
    // header bit size .. 4472 (0x1178)
    // header byte size . 559 (0x22f)

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

    // bitSize: 0x500, members: 5
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
    struct hash_1c86958671ff27fd {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_50ab8b7df567cd2a;
    };

    // bitSize: 0x108, members: 6
    struct lootcontracts {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint xp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint contractid;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:3 contractgamemode;
        // offset: 0x48, bitSize: 0x40(0x8 Byte(s))
        xhash contracthash;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 progress;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 target;
    };

    // bitSize: 0x10, members: 3
    struct hash_33944d215cff6222 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_174d79c341ec2c6c;
        // offset: 0x8, bitSize: 0x1
        bool hash_2401d7a2dc706a6c;
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

    // idx 0x5 members: 0xae
    enum hash_10d50fe10481423c {
        tr_fastburst_t9, // 0x0
        napalm_strike_zm, // 0x1
        ability_smart_cover, // 0x2
        dart, // 0x3
        ultimate_turret, // 0x4
        hash_5a7fd1af4a1d5c9, // 0x5
        hash_7a083f7ba43fa06, // 0x6
        lmg_accurate_t9, // 0x7
        melee_etool_t9, // 0x8
        ray_gun_mk2z, // 0x9
        ray_gun_mk2y, // 0xa
        ray_gun_mk2x, // 0xb
        sniper_powersemi_t9, // 0xc
        eq_wraith_fire, // 0xd
        counteruav, // 0xe
        missile_turret, // 0xf
        eq_shroud, // 0x10
        gadget_supplypod, // 0x11
        ar_damage_t9, // 0x12
        homunculus, // 0x13
        spknifeork, // 0x14
        melee_bowie, // 0x15
        ww_random_ray_gun1, // 0x16
        recon_plane, // 0x17
        sig_buckler_dw, // 0x18
        gadget_vision_pulse, // 0x19
        waterballoon, // 0x1a
        special_crossbow_t9, // 0x1b
        weapon_armor, // 0x1c
        eq_arm_blade, // 0x1d
        ww_blundergat_t8, // 0x1e
        gadget_heat_wave, // 0x1f
        eq_localheal, // 0x20
        hoverjet, // 0x21
        nightingale, // 0x22
        pistol_fullauto_t9, // 0x23
        remote_missile, // 0x24
        gadget_smart_cover, // 0x25
        willy_pete, // 0x26
        eq_emp_grenade, // 0x27
        special_grenadelauncher_t9, // 0x28
        melee_machete_t9, // 0x29
        launcher_freefire_t9, // 0x2a
        ar_accurate_t9, // 0x2b
        sig_lmg, // 0x2c
        ww_crossbow_impaler_t8, // 0x2d
        ww_freezegun_t8, // 0x2e
        frag_grenade, // 0x2f
        knife_loadout, // 0x30
        feature_default_class_1, // 0x31
        feature_default_class_3, // 0x32
        feature_default_class_2, // 0x33
        feature_default_class_5, // 0x34
        feature_default_class_4, // 0x35
        feature_default_class_6, // 0x36
        swat_team, // 0x37
        land_mine, // 0x38
        hatchet, // 0x39
        supplydrop_marker, // 0x3a
        mute_smoke, // 0x3b
        hash_2ea46ca74ebdfcac, // 0x3c
        smg_capacity_t9, // 0x3d
        chopper_gunner, // 0x3e
        null_offhand_secondary, // 0x3f
        gadget_health_regen, // 0x40
        hash_31be8125c7d0f273, // 0x41
        listening_device, // 0x42
        spork_alcatraz, // 0x43
        drone_squadron, // 0x44
        pistol_semiauto_t9, // 0x45
        null_offhand_primary, // 0x46
        smg_burst_t9, // 0x47
        hash_3507beb47a6b634e, // 0x48
        pistol_revolver_t9, // 0x49
        eq_stimshot, // 0x4a
        overwatch_helicopter, // 0x4b
        gadget_jammer, // 0x4c
        hash_3ab58e40011df941, // 0x4d
        launcher_standard_t9, // 0x4e
        melee_bowie_bloody, // 0x4f
        eq_sticky_grenade, // 0x50
        ww_ieu_shockwave_t9, // 0x51
        melee_sledgehammer_t9, // 0x52
        sig_blade, // 0x53
        pistol_burst_t9, // 0x54
        hash_4385cf507401820f, // 0x55
        napalm_strike, // 0x56
        sniper_accurate_t9, // 0x57
        ar_fastfire_t9, // 0x58
        melee_wakizashi_t9, // 0x59
        hero_pineapplegun, // 0x5a
        hash_48206b17d50533c2, // 0x5b
        sniper_quickscope_t9, // 0x5c
        ability_dog, // 0x5d
        straferun, // 0x5e
        eq_seeker_mine, // 0x5f
        ww_crossbow_t8, // 0x60
        recon_car, // 0x61
        hash_4b1854c2ff5135b2, // 0x62
        snowball, // 0x63
        feature_custom_class_9, // 0x64
        feature_custom_class_8, // 0x65
        feature_custom_class_3, // 0x66
        feature_custom_class_2, // 0x67
        feature_custom_class_1, // 0x68
        feature_custom_class_7, // 0x69
        feature_custom_class_6, // 0x6a
        feature_custom_class_5, // 0x6b
        feature_custom_class_4, // 0x6c
        uav, // 0x6d
        eq_concertina_wire, // 0x6e
        feature_custom_class_10, // 0x6f
        ar_slowhandling_t9, // 0x70
        eq_acid_bomb, // 0x71
        gadget_spawnbeacon, // 0x72
        ac130, // 0x73
        tr_precisionsemi_t9, // 0x74
        helicopter_comlink, // 0x75
        gadget_armor, // 0x76
        tr_damagesemi_t9, // 0x77
        feature_cac, // 0x78
        tomahawk_t8, // 0x79
        shotgun_pump_t9, // 0x7a
        gadget_health_boost, // 0x7b
        spectre_grenade, // 0x7c
        eq_flash_grenade, // 0x7d
        hash_55c23f24d806e3a6, // 0x7e
        bare_hands, // 0x7f
        ar_slowfire_t9, // 0x80
        tr_powerburst_t9, // 0x81
        trophy_system, // 0x82
        ray_gun_mk2, // 0x83
        tr_longburst_t9, // 0x84
        smg_standard_t9, // 0x85
        sig_bow_flame, // 0x86
        eq_slow_grenade, // 0x87
        smg_accurate_t9, // 0x88
        hash_603c083704cefb0c, // 0x89
        jetfighter, // 0x8a
        smg_heavy_t9, // 0x8b
        tear_gas, // 0x8c
        eq_molotov, // 0x8d
        smg_fastfire_t9, // 0x8e
        lmg_light_t9, // 0x8f
        ai_tank_marker, // 0x90
        gadget_cleanse, // 0x91
        hero_flamethrower, // 0x92
        sniper_standard_t9, // 0x93
        smg_spray_t9, // 0x94
        hero_annihilator, // 0x95
        ar_fasthandling_t9, // 0x96
        ar_mobility_t9, // 0x97
        planemortar, // 0x98
        sniper_cannon_t9, // 0x99
        shotgun_semiauto_t9, // 0x9a
        lmg_fastfire_t9, // 0x9b
        ar_standard_t9, // 0x9c
        weapon_null, // 0x9d
        satchel_charge, // 0x9e
        default_specialist_equipment, // 0x9f
        gadget_health_regen_squad, // 0xa0
        hash_76b56e7e0b3b7aac, // 0xa1
        eq_decoy_grenade, // 0xa2
        ray_gun, // 0xa3
        hash_788c96e19cc7a46e, // 0xa4
        claymore, // 0xa5
        smg_handling_t9, // 0xa6
        cymbal_monkey, // 0xa7
        shotgun_fullauto_t9, // 0xa8
        hash_7ab3f9a730359659, // 0xa9
        gadget_icepick, // 0xaa
        basketball, // 0xab
        gadget_camo, // 0xac
        lmg_slowfire_t9 // 0xad
    };

    // idx 0x6 members: 0x46
    enum hash_4b8d95aacf149fb9 {
        tr_fastburst_t9, // 0x0
        lmg_accurate_t9, // 0x1
        melee_etool_t9, // 0x2
        ray_gun_mk2z, // 0x3
        ray_gun_mk2y, // 0x4
        ray_gun_mk2x, // 0x5
        sniper_powersemi_t9, // 0x6
        hash_c21b61b32a5d972, // 0x7
        ar_damage_t9, // 0x8
        homunculus, // 0x9
        spknifeork, // 0xa
        melee_bowie, // 0xb
        ww_random_ray_gun1, // 0xc
        hash_165cf52ce418f5a1, // 0xd
        special_crossbow_t9, // 0xe
        ww_blundergat_t8, // 0xf
        pistol_fullauto_t9, // 0x10
        special_grenadelauncher_t9, // 0x11
        melee_machete_t9, // 0x12
        launcher_freefire_t9, // 0x13
        ar_accurate_t9, // 0x14
        ww_crossbow_impaler_t8, // 0x15
        ww_freezegun_t8, // 0x16
        knife_loadout, // 0x17
        hash_2ea46ca74ebdfcac, // 0x18
        smg_capacity_t9, // 0x19
        spork_alcatraz, // 0x1a
        pistol_semiauto_t9, // 0x1b
        smg_burst_t9, // 0x1c
        pistol_revolver_t9, // 0x1d
        launcher_standard_t9, // 0x1e
        melee_bowie_bloody, // 0x1f
        ww_ieu_shockwave_t9, // 0x20
        melee_sledgehammer_t9, // 0x21
        pistol_burst_t9, // 0x22
        hash_4385cf507401820f, // 0x23
        sniper_accurate_t9, // 0x24
        ar_fastfire_t9, // 0x25
        melee_wakizashi_t9, // 0x26
        hash_48206b17d50533c2, // 0x27
        sniper_quickscope_t9, // 0x28
        ww_crossbow_t8, // 0x29
        ar_slowhandling_t9, // 0x2a
        tr_precisionsemi_t9, // 0x2b
        tr_damagesemi_t9, // 0x2c
        shotgun_pump_t9, // 0x2d
        hash_55c23f24d806e3a6, // 0x2e
        ar_slowfire_t9, // 0x2f
        tr_powerburst_t9, // 0x30
        ray_gun_mk2, // 0x31
        tr_longburst_t9, // 0x32
        smg_standard_t9, // 0x33
        smg_accurate_t9, // 0x34
        hash_603c083704cefb0c, // 0x35
        smg_heavy_t9, // 0x36
        smg_fastfire_t9, // 0x37
        lmg_light_t9, // 0x38
        sniper_standard_t9, // 0x39
        smg_spray_t9, // 0x3a
        ar_fasthandling_t9, // 0x3b
        ar_mobility_t9, // 0x3c
        sniper_cannon_t9, // 0x3d
        shotgun_semiauto_t9, // 0x3e
        lmg_fastfire_t9, // 0x3f
        ar_standard_t9, // 0x40
        ray_gun, // 0x41
        smg_handling_t9, // 0x42
        shotgun_fullauto_t9, // 0x43
        basketball, // 0x44
        lmg_slowfire_t9 // 0x45
    };

    // idx 0x7 members: 0x13
    enum hash_7493d39e2637c1e7 {
        bonuscard, // 0x0
        hero, // 0x1
        feature, // 0x2
        weapon_special, // 0x3
        weapon_knife, // 0x4
        character, // 0x5
        miscweapon, // 0x6
        weapon_pistol, // 0x7
        killstreak, // 0x8
        weapon_sniper, // 0x9
        talent, // 0xa
        weapon_launcher, // 0xb
        weapon_grenade, // 0xc
        weapon_lmg, // 0xd
        weapon_tactical, // 0xe
        weapon_smg, // 0xf
        hash_7b68172df6035672, // 0x10
        weapon_cqb, // 0x11
        weapon_assault // 0x12
    };

    // idx 0x8 members: 0x1d
    enum hash_d5731f85b8cf294 {
        napalm_strike_zm, // 0x0
        dart, // 0x1
        ultimate_turret, // 0x2
        counteruav, // 0x3
        recon_plane, // 0x4
        weapon_armor, // 0x5
        hoverjet, // 0x6
        remote_missile, // 0x7
        sig_lmg, // 0x8
        swat_team, // 0x9
        supplydrop_marker, // 0xa
        chopper_gunner, // 0xb
        drone_squadron, // 0xc
        overwatch_helicopter, // 0xd
        napalm_strike, // 0xe
        hero_pineapplegun, // 0xf
        ability_dog, // 0x10
        straferun, // 0x11
        recon_car, // 0x12
        uav, // 0x13
        ac130, // 0x14
        helicopter_comlink, // 0x15
        sig_bow_flame, // 0x16
        jetfighter, // 0x17
        ai_tank_marker, // 0x18
        helicopter_guard, // 0x19
        hero_flamethrower, // 0x1a
        hero_annihilator, // 0x1b
        planemortar // 0x1c
    };

    // idx 0x9 members: 0x35
    enum hash_507792265be6dcc4 {
        ability_smart_cover, // 0x0
        hash_7a083f7ba43fa06, // 0x1
        eq_wraith_fire, // 0x2
        missile_turret, // 0x3
        eq_shroud, // 0x4
        gadget_supplypod, // 0x5
        gadget_vision_pulse, // 0x6
        waterballoon, // 0x7
        eq_arm_blade, // 0x8
        gadget_heat_wave, // 0x9
        eq_localheal, // 0xa
        gadget_medicalinjectiongun, // 0xb
        nightingale, // 0xc
        gadget_smart_cover, // 0xd
        willy_pete, // 0xe
        eq_emp_grenade, // 0xf
        frag_grenade, // 0x10
        land_mine, // 0x11
        hatchet, // 0x12
        gadget_health_regen, // 0x13
        listening_device, // 0x14
        hash_3507beb47a6b634e, // 0x15
        eq_stimshot, // 0x16
        gadget_jammer, // 0x17
        hash_3ab58e40011df941, // 0x18
        eq_sticky_grenade, // 0x19
        eq_seeker_mine, // 0x1a
        hash_4b1854c2ff5135b2, // 0x1b
        snowball, // 0x1c
        eq_concertina_wire, // 0x1d
        eq_acid_bomb, // 0x1e
        gadget_spawnbeacon, // 0x1f
        gadget_armor, // 0x20
        tomahawk_t8, // 0x21
        gadget_health_boost, // 0x22
        spectre_grenade, // 0x23
        eq_flash_grenade, // 0x24
        trophy_system, // 0x25
        eq_slow_grenade, // 0x26
        tear_gas, // 0x27
        eq_molotov, // 0x28
        gadget_cleanse, // 0x29
        satchel_charge, // 0x2a
        default_specialist_equipment, // 0x2b
        gadget_health_regen_squad, // 0x2c
        hash_76b56e7e0b3b7aac, // 0x2d
        eq_decoy_grenade, // 0x2e
        hash_788c96e19cc7a46e, // 0x2f
        claymore, // 0x30
        cymbal_monkey, // 0x31
        hash_7ab3f9a730359659, // 0x32
        gadget_icepick, // 0x33
        gadget_camo // 0x34
    };

    // idx 0xa members: 0x3c
    enum hash_1e2de876fb880be2 {
        quickdraw, // 0x0
        acog, // 0x1
        dw, // 0x2
        ir, // 0x3
        barrel2, // 0x4
        mixunder2, // 0x5
        fastreload, // 0x6
        heavy, // 0x7
        steadyaim, // 0x8
        stalker, // 0x9
        barrel, // 0xa
        mixstock, // 0xb
        smoothzoom2, // 0xc
        mixclip2, // 0xd
        reflex4, // 0xe
        reflex3, // 0xf
        reflex2, // 0x10
        stalker2, // 0x11
        extclip2, // 0x12
        tactical, // 0x13
        steadyaim2, // 0x14
        mixclip, // 0x15
        light, // 0x16
        speedgrip2, // 0x17
        mixhandle, // 0x18
        mixunder, // 0x19
        mixbarrel2, // 0x1a
        mixstock2, // 0x1b
        reddot, // 0x1c
        handle, // 0x1d
        mixmuzzle2, // 0x1e
        extclip, // 0x1f
        light2, // 0x20
        heavy2, // 0x21
        holo, // 0x22
        elo, // 0x23
        fastreload2, // 0x24
        scope3x, // 0x25
        scope4x, // 0x26
        mixhandle2, // 0x27
        compensator, // 0x28
        mixbody, // 0x29
        quickdraw2, // 0x2a
        suppressed2, // 0x2b
        speedgrip, // 0x2c
        sprintout2, // 0x2d
        suppressed, // 0x2e
        sprintout, // 0x2f
        grip2, // 0x30
        mixmuzzle, // 0x31
        handle2, // 0x32
        compensator2, // 0x33
        mixbody2, // 0x34
        dualoptic, // 0x35
        grip, // 0x36
        smoothzoom, // 0x37
        reflex, // 0x38
        mixbarrel, // 0x39
        elo3, // 0x3a
        elo2 // 0x3b
    };

    // idx 0xb members: 0x3c
    enum hash_48d8d533750ed177 {
        talent_gungho, // 0x0
        talent_engineer, // 0x1
        talent_coldblooded, // 0x2
        hash_9fb2125b3e673e5, // 0x3
        gear_armor, // 0x4
        hash_cd70e712f842296, // 0x5
        talent_tracker, // 0x6
        hash_101808cdfcd390d6, // 0x7
        hash_128256155e755170, // 0x8
        hash_16cfc7f70dbd8712, // 0x9
        talent_flakjacket, // 0xa
        talent_logistics, // 0xb
        talent_looter, // 0xc
        gadget_medicalinjectiongun, // 0xd
        hash_1d8863d0b864a48b, // 0xe
        hash_1db03fa9862ba330, // 0xf
        hash_20290a682a974c94, // 0x10
        talent_dexterity, // 0x11
        hash_249e75e962ea5275, // 0x12
        talent_resistance, // 0x13
        gear_awareness, // 0x14
        hash_2c3a32e6e2afd1f2, // 0x15
        hash_311283e3107dec74, // 0x16
        talent_lightweight, // 0x17
        talent_awareness, // 0x18
        gear_equipmentcharge, // 0x19
        hash_38c08136902fd553, // 0x1a
        hash_39045b0020cc3e00, // 0x1b
        hash_3c323c7819b10b4d, // 0x1c
        hash_3c60422123a9075b, // 0x1d
        talent_scavenger, // 0x1e
        talent_skulker, // 0x1f
        gear_scorestreakcharge, // 0x20
        talent_ghost, // 0x21
        hash_4f80a2c3398e97c9, // 0x22
        talent_elemental_pop, // 0x23
        talent_brawler, // 0x24
        talent_quartermaster, // 0x25
        hash_59dbe7f72baaa0f0, // 0x26
        hash_59dbe8f72baaa2a3, // 0x27
        hash_59dbecf72baaa96f, // 0x28
        hash_59dbedf72baaab22, // 0x29
        hash_59dbeef72baaacd5, // 0x2a
        hash_5c80935e7a319f21, // 0x2b
        talent_paranoia, // 0x2c
        talent_teamlink, // 0x2d
        talent_deadsilence, // 0x2e
        hash_646fc27884bdaa02, // 0x2f
        gear_medicalinjectiongun, // 0x30
        hash_661cd0d6fb33878c, // 0x31
        talent_spycraft, // 0x32
        hash_7321f9058ee65217, // 0x33
        hash_7716cb3888f5dd8a, // 0x34
        talent_elemental_pop_2, // 0x35
        talent_elemental_pop_3, // 0x36
        talent_elemental_pop_1, // 0x37
        talent_elemental_pop_4, // 0x38
        talent_elemental_pop_5, // 0x39
        hash_7ca561e40dc3c5de, // 0x3a
        hash_7f79d3ba6ed1a1d7 // 0x3b
    };

    // idx 0xc members: 0x6
    enum hash_66db207c660e33f3 {
        bonuscard_overkill, // 0x0
        bonuscard_underkill, // 0x1
        bonuscard_perk_1_greed, // 0x2
        hash_4a12859000892dda, // 0x3
        hash_639ebbcda56447e7, // 0x4
        bonuscard_primary_gunfighter // 0x5
    };

    // idx 0xd members: 0xf0
    enum hash_1acf39b1d1bee1d5 {
        bonuscard_overkill, // 0x0
        talent_gungho, // 0x1
        tr_fastburst_t9, // 0x2
        talent_engineer, // 0x3
        napalm_strike_zm, // 0x4
        ability_smart_cover, // 0x5
        dart, // 0x6
        ultimate_turret, // 0x7
        hash_5a7fd1af4a1d5c9, // 0x8
        hash_7a083f7ba43fa06, // 0x9
        talent_coldblooded, // 0xa
        lmg_accurate_t9, // 0xb
        melee_etool_t9, // 0xc
        ray_gun_mk2z, // 0xd
        ray_gun_mk2y, // 0xe
        ray_gun_mk2x, // 0xf
        hash_9fb2125b3e673e5, // 0x10
        sniper_powersemi_t9, // 0x11
        eq_wraith_fire, // 0x12
        gear_armor, // 0x13
        counteruav, // 0x14
        hash_cd70e712f842296, // 0x15
        talent_tracker, // 0x16
        missile_turret, // 0x17
        eq_shroud, // 0x18
        gadget_supplypod, // 0x19
        hash_101808cdfcd390d6, // 0x1a
        ar_damage_t9, // 0x1b
        homunculus, // 0x1c
        spknifeork, // 0x1d
        melee_bowie, // 0x1e
        hash_128256155e755170, // 0x1f
        ww_random_ray_gun1, // 0x20
        bonuscard_underkill, // 0x21
        recon_plane, // 0x22
        hash_16cfc7f70dbd8712, // 0x23
        bonuscard_perk_1_greed, // 0x24
        sig_buckler_dw, // 0x25
        talent_flakjacket, // 0x26
        gadget_vision_pulse, // 0x27
        waterballoon, // 0x28
        special_crossbow_t9, // 0x29
        weapon_armor, // 0x2a
        eq_arm_blade, // 0x2b
        talent_logistics, // 0x2c
        ww_blundergat_t8, // 0x2d
        gadget_heat_wave, // 0x2e
        eq_localheal, // 0x2f
        hoverjet, // 0x30
        talent_looter, // 0x31
        gadget_medicalinjectiongun, // 0x32
        hash_1d8863d0b864a48b, // 0x33
        hash_1db03fa9862ba330, // 0x34
        nightingale, // 0x35
        pistol_fullauto_t9, // 0x36
        remote_missile, // 0x37
        gadget_smart_cover, // 0x38
        hash_20290a682a974c94, // 0x39
        willy_pete, // 0x3a
        eq_emp_grenade, // 0x3b
        special_grenadelauncher_t9, // 0x3c
        melee_machete_t9, // 0x3d
        talent_dexterity, // 0x3e
        launcher_freefire_t9, // 0x3f
        hash_249e75e962ea5275, // 0x40
        ar_accurate_t9, // 0x41
        sig_lmg, // 0x42
        ww_crossbow_impaler_t8, // 0x43
        ww_freezegun_t8, // 0x44
        frag_grenade, // 0x45
        knife_loadout, // 0x46
        feature_default_class_1, // 0x47
        feature_default_class_3, // 0x48
        feature_default_class_2, // 0x49
        feature_default_class_5, // 0x4a
        feature_default_class_4, // 0x4b
        feature_default_class_6, // 0x4c
        talent_resistance, // 0x4d
        swat_team, // 0x4e
        gear_awareness, // 0x4f
        land_mine, // 0x50
        hatchet, // 0x51
        hash_2c3a32e6e2afd1f2, // 0x52
        supplydrop_marker, // 0x53
        mute_smoke, // 0x54
        hash_2ea46ca74ebdfcac, // 0x55
        smg_capacity_t9, // 0x56
        chopper_gunner, // 0x57
        hash_311283e3107dec74, // 0x58
        null_offhand_secondary, // 0x59
        gadget_health_regen, // 0x5a
        hash_31be8125c7d0f273, // 0x5b
        listening_device, // 0x5c
        talent_lightweight, // 0x5d
        talent_awareness, // 0x5e
        spork_alcatraz, // 0x5f
        drone_squadron, // 0x60
        gear_equipmentcharge, // 0x61
        pistol_semiauto_t9, // 0x62
        null_offhand_primary, // 0x63
        smg_burst_t9, // 0x64
        hash_3507beb47a6b634e, // 0x65
        pistol_revolver_t9, // 0x66
        eq_stimshot, // 0x67
        hash_38c08136902fd553, // 0x68
        hash_39045b0020cc3e00, // 0x69
        overwatch_helicopter, // 0x6a
        gadget_jammer, // 0x6b
        hash_3ab58e40011df941, // 0x6c
        launcher_standard_t9, // 0x6d
        hash_3c323c7819b10b4d, // 0x6e
        hash_3c60422123a9075b, // 0x6f
        melee_bowie_bloody, // 0x70
        eq_sticky_grenade, // 0x71
        ww_ieu_shockwave_t9, // 0x72
        melee_sledgehammer_t9, // 0x73
        sig_blade, // 0x74
        talent_scavenger, // 0x75
        pistol_burst_t9, // 0x76
        hash_4385cf507401820f, // 0x77
        napalm_strike, // 0x78
        sniper_accurate_t9, // 0x79
        ar_fastfire_t9, // 0x7a
        melee_wakizashi_t9, // 0x7b
        hero_pineapplegun, // 0x7c
        talent_skulker, // 0x7d
        hash_48206b17d50533c2, // 0x7e
        sniper_quickscope_t9, // 0x7f
        ability_dog, // 0x80
        straferun, // 0x81
        hash_4a12859000892dda, // 0x82
        eq_seeker_mine, // 0x83
        ww_crossbow_t8, // 0x84
        recon_car, // 0x85
        hash_4b1854c2ff5135b2, // 0x86
        snowball, // 0x87
        feature_custom_class_9, // 0x88
        feature_custom_class_8, // 0x89
        feature_custom_class_3, // 0x8a
        feature_custom_class_2, // 0x8b
        feature_custom_class_1, // 0x8c
        feature_custom_class_7, // 0x8d
        feature_custom_class_6, // 0x8e
        feature_custom_class_5, // 0x8f
        feature_custom_class_4, // 0x90
        uav, // 0x91
        eq_concertina_wire, // 0x92
        gear_scorestreakcharge, // 0x93
        feature_custom_class_10, // 0x94
        ar_slowhandling_t9, // 0x95
        eq_acid_bomb, // 0x96
        gadget_spawnbeacon, // 0x97
        ac130, // 0x98
        talent_ghost, // 0x99
        hash_4f80a2c3398e97c9, // 0x9a
        tr_precisionsemi_t9, // 0x9b
        helicopter_comlink, // 0x9c
        gadget_armor, // 0x9d
        tr_damagesemi_t9, // 0x9e
        feature_cac, // 0x9f
        talent_elemental_pop, // 0xa0
        tomahawk_t8, // 0xa1
        shotgun_pump_t9, // 0xa2
        gadget_health_boost, // 0xa3
        spectre_grenade, // 0xa4
        talent_brawler, // 0xa5
        eq_flash_grenade, // 0xa6
        hash_55c23f24d806e3a6, // 0xa7
        bare_hands, // 0xa8
        ar_slowfire_t9, // 0xa9
        tr_powerburst_t9, // 0xaa
        trophy_system, // 0xab
        talent_quartermaster, // 0xac
        hash_59dbe7f72baaa0f0, // 0xad
        hash_59dbe8f72baaa2a3, // 0xae
        hash_59dbecf72baaa96f, // 0xaf
        hash_59dbedf72baaab22, // 0xb0
        hash_59dbeef72baaacd5, // 0xb1
        ray_gun_mk2, // 0xb2
        tr_longburst_t9, // 0xb3
        smg_standard_t9, // 0xb4
        hash_5c80935e7a319f21, // 0xb5
        sig_bow_flame, // 0xb6
        eq_slow_grenade, // 0xb7
        talent_paranoia, // 0xb8
        smg_accurate_t9, // 0xb9
        hash_603c083704cefb0c, // 0xba
        jetfighter, // 0xbb
        talent_teamlink, // 0xbc
        smg_heavy_t9, // 0xbd
        talent_deadsilence, // 0xbe
        tear_gas, // 0xbf
        hash_639ebbcda56447e7, // 0xc0
        eq_molotov, // 0xc1
        smg_fastfire_t9, // 0xc2
        hash_646fc27884bdaa02, // 0xc3
        bonuscard_primary_gunfighter, // 0xc4
        lmg_light_t9, // 0xc5
        ai_tank_marker, // 0xc6
        gear_medicalinjectiongun, // 0xc7
        hash_661cd0d6fb33878c, // 0xc8
        gadget_cleanse, // 0xc9
        hero_flamethrower, // 0xca
        sniper_standard_t9, // 0xcb
        smg_spray_t9, // 0xcc
        hero_annihilator, // 0xcd
        ar_fasthandling_t9, // 0xce
        ar_mobility_t9, // 0xcf
        planemortar, // 0xd0
        sniper_cannon_t9, // 0xd1
        shotgun_semiauto_t9, // 0xd2
        lmg_fastfire_t9, // 0xd3
        ar_standard_t9, // 0xd4
        weapon_null, // 0xd5
        talent_spycraft, // 0xd6
        hash_7321f9058ee65217, // 0xd7
        satchel_charge, // 0xd8
        default_specialist_equipment, // 0xd9
        gadget_health_regen_squad, // 0xda
        hash_76b56e7e0b3b7aac, // 0xdb
        eq_decoy_grenade, // 0xdc
        hash_7716cb3888f5dd8a, // 0xdd
        ray_gun, // 0xde
        hash_788c96e19cc7a46e, // 0xdf
        claymore, // 0xe0
        talent_elemental_pop_2, // 0xe1
        talent_elemental_pop_3, // 0xe2
        talent_elemental_pop_1, // 0xe3
        talent_elemental_pop_4, // 0xe4
        talent_elemental_pop_5, // 0xe5
        smg_handling_t9, // 0xe6
        cymbal_monkey, // 0xe7
        shotgun_fullauto_t9, // 0xe8
        hash_7ab3f9a730359659, // 0xe9
        gadget_icepick, // 0xea
        hash_7ca561e40dc3c5de, // 0xeb
        basketball, // 0xec
        gadget_camo, // 0xed
        hash_7f79d3ba6ed1a1d7, // 0xee
        lmg_slowfire_t9 // 0xef
    };

    // root: bitSize: 0x10c8, members: 15

    // offset: 0x0, bitSize: 0x6d8(0xdb Byte(s))
    region_info dml;
    // offset: 0x6d8, bitSize: 0x318(0x63 Byte(s)), array:0x3(hti:0xffff)
    lootcontracts loot_contracts[3];
    // offset: 0x9f0, bitSize: 0x20(0x4 Byte(s))
    uint hash_5a1a5df0cdadbba3;
    // offset: 0xa10, bitSize: 0x20(0x4 Byte(s))
    uint hash_151eef37df5ee845;
    // offset: 0xa30, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_tier_boost;
    // offset: 0xa38, bitSize: 0x8(0x1 Byte(s))
    hash_54196e9e9860f0be platform;
    // offset: 0xa40, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_party_tier_boost;
    // offset: 0xa48, bitSize: 0x20(0x4 Byte(s))
    uint hash_1e4fbbabf3da13fa;
    // offset: 0xa68, bitSize: 0x110(0x22 Byte(s)), array:0x11(hti:0xffff)
    hash_33944d215cff6222 hash_33944d215cff6222[17];
    // offset: 0xb78, bitSize: 0x460(0x8c Byte(s)), array:0x46(hti:0x6)
    hash_1c86958671ff27fd hash_4953b2b12f1d6b1b[hash_4b8d95aacf149fb9];
    // offset: 0xfd8, bitSize: 0xa0(0x14 Byte(s))
    client_header client;
    // offset: 0x1078, bitSize: 0x8(0x1 Byte(s))
    byte tier_boost;
    // offset: 0x1080, bitSize: 0x1
    bool hash_4ca91f34eba5a203;
    // offset: 0x1081, bitSize: 0x46, array:0x46(hti:0x6)
    bool hash_4473319d8a8d9dcf[hash_4b8d95aacf149fb9];
};

version hash_1b31e34d198f79a {
    // enums ..... 14 (0xe)
    // structs ... 9 (0x9)
    // header bit size .. 4512 (0x11a0)
    // header byte size . 564 (0x234)

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

    // bitSize: 0x500, members: 5
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
    struct hash_1c86958671ff27fd {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_50ab8b7df567cd2a;
    };

    // bitSize: 0x108, members: 6
    struct lootcontracts {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint xp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint contractid;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:3 contractgamemode;
        // offset: 0x48, bitSize: 0x40(0x8 Byte(s))
        xhash contracthash;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 progress;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 target;
    };

    // bitSize: 0x10, members: 3
    struct hash_33944d215cff6222 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_174d79c341ec2c6c;
        // offset: 0x8, bitSize: 0x1
        bool hash_2401d7a2dc706a6c;
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

    // idx 0x5 members: 0xb0
    enum hash_10d50fe10481423c {
        tr_fastburst_t9, // 0x0
        napalm_strike_zm, // 0x1
        ability_smart_cover, // 0x2
        dart, // 0x3
        ultimate_turret, // 0x4
        hash_5a7fd1af4a1d5c9, // 0x5
        hash_7a083f7ba43fa06, // 0x6
        lmg_accurate_t9, // 0x7
        melee_etool_t9, // 0x8
        ray_gun_mk2z, // 0x9
        ray_gun_mk2y, // 0xa
        ray_gun_mk2x, // 0xb
        sniper_powersemi_t9, // 0xc
        eq_wraith_fire, // 0xd
        counteruav, // 0xe
        missile_turret, // 0xf
        eq_shroud, // 0x10
        gadget_supplypod, // 0x11
        ar_damage_t9, // 0x12
        homunculus, // 0x13
        spknifeork, // 0x14
        melee_bowie, // 0x15
        ww_random_ray_gun1, // 0x16
        recon_plane, // 0x17
        sig_buckler_dw, // 0x18
        gadget_vision_pulse, // 0x19
        waterballoon, // 0x1a
        special_crossbow_t9, // 0x1b
        weapon_armor, // 0x1c
        eq_arm_blade, // 0x1d
        ww_blundergat_t8, // 0x1e
        gadget_heat_wave, // 0x1f
        eq_localheal, // 0x20
        hoverjet, // 0x21
        nightingale, // 0x22
        pistol_fullauto_t9, // 0x23
        remote_missile, // 0x24
        gadget_smart_cover, // 0x25
        willy_pete, // 0x26
        eq_emp_grenade, // 0x27
        special_grenadelauncher_t9, // 0x28
        melee_machete_t9, // 0x29
        launcher_freefire_t9, // 0x2a
        ar_accurate_t9, // 0x2b
        sig_lmg, // 0x2c
        ww_crossbow_impaler_t8, // 0x2d
        ww_freezegun_t8, // 0x2e
        frag_grenade, // 0x2f
        knife_loadout, // 0x30
        feature_default_class_1, // 0x31
        feature_default_class_3, // 0x32
        feature_default_class_2, // 0x33
        feature_default_class_5, // 0x34
        feature_default_class_4, // 0x35
        feature_default_class_6, // 0x36
        swat_team, // 0x37
        land_mine, // 0x38
        hatchet, // 0x39
        supplydrop_marker, // 0x3a
        mute_smoke, // 0x3b
        hash_2ea46ca74ebdfcac, // 0x3c
        smg_capacity_t9, // 0x3d
        chopper_gunner, // 0x3e
        melee_baseballbat_t9, // 0x3f
        null_offhand_secondary, // 0x40
        gadget_health_regen, // 0x41
        hash_31be8125c7d0f273, // 0x42
        listening_device, // 0x43
        spork_alcatraz, // 0x44
        drone_squadron, // 0x45
        pistol_semiauto_t9, // 0x46
        null_offhand_primary, // 0x47
        smg_burst_t9, // 0x48
        hash_3507beb47a6b634e, // 0x49
        pistol_revolver_t9, // 0x4a
        eq_stimshot, // 0x4b
        overwatch_helicopter, // 0x4c
        gadget_jammer, // 0x4d
        hash_3ab58e40011df941, // 0x4e
        launcher_standard_t9, // 0x4f
        melee_bowie_bloody, // 0x50
        eq_sticky_grenade, // 0x51
        special_ballisticknife_t9_dw, // 0x52
        ww_ieu_shockwave_t9, // 0x53
        melee_sledgehammer_t9, // 0x54
        sig_blade, // 0x55
        pistol_burst_t9, // 0x56
        hash_4385cf507401820f, // 0x57
        napalm_strike, // 0x58
        sniper_accurate_t9, // 0x59
        ar_fastfire_t9, // 0x5a
        melee_wakizashi_t9, // 0x5b
        hero_pineapplegun, // 0x5c
        hash_48206b17d50533c2, // 0x5d
        sniper_quickscope_t9, // 0x5e
        ability_dog, // 0x5f
        straferun, // 0x60
        eq_seeker_mine, // 0x61
        ww_crossbow_t8, // 0x62
        recon_car, // 0x63
        hash_4b1854c2ff5135b2, // 0x64
        snowball, // 0x65
        feature_custom_class_9, // 0x66
        feature_custom_class_8, // 0x67
        feature_custom_class_3, // 0x68
        feature_custom_class_2, // 0x69
        feature_custom_class_1, // 0x6a
        feature_custom_class_7, // 0x6b
        feature_custom_class_6, // 0x6c
        feature_custom_class_5, // 0x6d
        feature_custom_class_4, // 0x6e
        uav, // 0x6f
        eq_concertina_wire, // 0x70
        feature_custom_class_10, // 0x71
        ar_slowhandling_t9, // 0x72
        eq_acid_bomb, // 0x73
        gadget_spawnbeacon, // 0x74
        ac130, // 0x75
        tr_precisionsemi_t9, // 0x76
        helicopter_comlink, // 0x77
        gadget_armor, // 0x78
        tr_damagesemi_t9, // 0x79
        feature_cac, // 0x7a
        tomahawk_t8, // 0x7b
        shotgun_pump_t9, // 0x7c
        gadget_health_boost, // 0x7d
        spectre_grenade, // 0x7e
        eq_flash_grenade, // 0x7f
        hash_55c23f24d806e3a6, // 0x80
        bare_hands, // 0x81
        ar_slowfire_t9, // 0x82
        tr_powerburst_t9, // 0x83
        trophy_system, // 0x84
        ray_gun_mk2, // 0x85
        tr_longburst_t9, // 0x86
        smg_standard_t9, // 0x87
        sig_bow_flame, // 0x88
        eq_slow_grenade, // 0x89
        smg_accurate_t9, // 0x8a
        hash_603c083704cefb0c, // 0x8b
        jetfighter, // 0x8c
        smg_heavy_t9, // 0x8d
        tear_gas, // 0x8e
        eq_molotov, // 0x8f
        smg_fastfire_t9, // 0x90
        lmg_light_t9, // 0x91
        ai_tank_marker, // 0x92
        gadget_cleanse, // 0x93
        hero_flamethrower, // 0x94
        sniper_standard_t9, // 0x95
        smg_spray_t9, // 0x96
        hero_annihilator, // 0x97
        ar_fasthandling_t9, // 0x98
        ar_mobility_t9, // 0x99
        planemortar, // 0x9a
        sniper_cannon_t9, // 0x9b
        shotgun_semiauto_t9, // 0x9c
        lmg_fastfire_t9, // 0x9d
        ar_standard_t9, // 0x9e
        weapon_null, // 0x9f
        satchel_charge, // 0xa0
        default_specialist_equipment, // 0xa1
        gadget_health_regen_squad, // 0xa2
        hash_76b56e7e0b3b7aac, // 0xa3
        eq_decoy_grenade, // 0xa4
        ray_gun, // 0xa5
        hash_788c96e19cc7a46e, // 0xa6
        claymore, // 0xa7
        smg_handling_t9, // 0xa8
        cymbal_monkey, // 0xa9
        shotgun_fullauto_t9, // 0xaa
        hash_7ab3f9a730359659, // 0xab
        gadget_icepick, // 0xac
        basketball, // 0xad
        gadget_camo, // 0xae
        lmg_slowfire_t9 // 0xaf
    };

    // idx 0x6 members: 0x48
    enum hash_4b8d95aacf149fb9 {
        tr_fastburst_t9, // 0x0
        lmg_accurate_t9, // 0x1
        melee_etool_t9, // 0x2
        ray_gun_mk2z, // 0x3
        ray_gun_mk2y, // 0x4
        ray_gun_mk2x, // 0x5
        sniper_powersemi_t9, // 0x6
        hash_c21b61b32a5d972, // 0x7
        ar_damage_t9, // 0x8
        homunculus, // 0x9
        spknifeork, // 0xa
        melee_bowie, // 0xb
        ww_random_ray_gun1, // 0xc
        hash_165cf52ce418f5a1, // 0xd
        special_crossbow_t9, // 0xe
        ww_blundergat_t8, // 0xf
        pistol_fullauto_t9, // 0x10
        special_grenadelauncher_t9, // 0x11
        melee_machete_t9, // 0x12
        launcher_freefire_t9, // 0x13
        ar_accurate_t9, // 0x14
        ww_crossbow_impaler_t8, // 0x15
        ww_freezegun_t8, // 0x16
        knife_loadout, // 0x17
        hash_2ea46ca74ebdfcac, // 0x18
        smg_capacity_t9, // 0x19
        melee_baseballbat_t9, // 0x1a
        spork_alcatraz, // 0x1b
        pistol_semiauto_t9, // 0x1c
        smg_burst_t9, // 0x1d
        pistol_revolver_t9, // 0x1e
        launcher_standard_t9, // 0x1f
        melee_bowie_bloody, // 0x20
        special_ballisticknife_t9_dw, // 0x21
        ww_ieu_shockwave_t9, // 0x22
        melee_sledgehammer_t9, // 0x23
        pistol_burst_t9, // 0x24
        hash_4385cf507401820f, // 0x25
        sniper_accurate_t9, // 0x26
        ar_fastfire_t9, // 0x27
        melee_wakizashi_t9, // 0x28
        hash_48206b17d50533c2, // 0x29
        sniper_quickscope_t9, // 0x2a
        ww_crossbow_t8, // 0x2b
        ar_slowhandling_t9, // 0x2c
        tr_precisionsemi_t9, // 0x2d
        tr_damagesemi_t9, // 0x2e
        shotgun_pump_t9, // 0x2f
        hash_55c23f24d806e3a6, // 0x30
        ar_slowfire_t9, // 0x31
        tr_powerburst_t9, // 0x32
        ray_gun_mk2, // 0x33
        tr_longburst_t9, // 0x34
        smg_standard_t9, // 0x35
        smg_accurate_t9, // 0x36
        hash_603c083704cefb0c, // 0x37
        smg_heavy_t9, // 0x38
        smg_fastfire_t9, // 0x39
        lmg_light_t9, // 0x3a
        sniper_standard_t9, // 0x3b
        smg_spray_t9, // 0x3c
        ar_fasthandling_t9, // 0x3d
        ar_mobility_t9, // 0x3e
        sniper_cannon_t9, // 0x3f
        shotgun_semiauto_t9, // 0x40
        lmg_fastfire_t9, // 0x41
        ar_standard_t9, // 0x42
        ray_gun, // 0x43
        smg_handling_t9, // 0x44
        shotgun_fullauto_t9, // 0x45
        basketball, // 0x46
        lmg_slowfire_t9 // 0x47
    };

    // idx 0x7 members: 0x13
    enum hash_7493d39e2637c1e7 {
        bonuscard, // 0x0
        hero, // 0x1
        feature, // 0x2
        weapon_special, // 0x3
        weapon_knife, // 0x4
        character, // 0x5
        miscweapon, // 0x6
        weapon_pistol, // 0x7
        killstreak, // 0x8
        weapon_sniper, // 0x9
        talent, // 0xa
        weapon_launcher, // 0xb
        weapon_grenade, // 0xc
        weapon_lmg, // 0xd
        weapon_tactical, // 0xe
        weapon_smg, // 0xf
        hash_7b68172df6035672, // 0x10
        weapon_cqb, // 0x11
        weapon_assault // 0x12
    };

    // idx 0x8 members: 0x1d
    enum hash_d5731f85b8cf294 {
        napalm_strike_zm, // 0x0
        dart, // 0x1
        ultimate_turret, // 0x2
        counteruav, // 0x3
        recon_plane, // 0x4
        weapon_armor, // 0x5
        hoverjet, // 0x6
        remote_missile, // 0x7
        sig_lmg, // 0x8
        swat_team, // 0x9
        supplydrop_marker, // 0xa
        chopper_gunner, // 0xb
        drone_squadron, // 0xc
        overwatch_helicopter, // 0xd
        napalm_strike, // 0xe
        hero_pineapplegun, // 0xf
        ability_dog, // 0x10
        straferun, // 0x11
        recon_car, // 0x12
        uav, // 0x13
        ac130, // 0x14
        helicopter_comlink, // 0x15
        sig_bow_flame, // 0x16
        jetfighter, // 0x17
        ai_tank_marker, // 0x18
        helicopter_guard, // 0x19
        hero_flamethrower, // 0x1a
        hero_annihilator, // 0x1b
        planemortar // 0x1c
    };

    // idx 0x9 members: 0x35
    enum hash_507792265be6dcc4 {
        ability_smart_cover, // 0x0
        hash_7a083f7ba43fa06, // 0x1
        eq_wraith_fire, // 0x2
        missile_turret, // 0x3
        eq_shroud, // 0x4
        gadget_supplypod, // 0x5
        gadget_vision_pulse, // 0x6
        waterballoon, // 0x7
        eq_arm_blade, // 0x8
        gadget_heat_wave, // 0x9
        eq_localheal, // 0xa
        gadget_medicalinjectiongun, // 0xb
        nightingale, // 0xc
        gadget_smart_cover, // 0xd
        willy_pete, // 0xe
        eq_emp_grenade, // 0xf
        frag_grenade, // 0x10
        land_mine, // 0x11
        hatchet, // 0x12
        gadget_health_regen, // 0x13
        listening_device, // 0x14
        hash_3507beb47a6b634e, // 0x15
        eq_stimshot, // 0x16
        gadget_jammer, // 0x17
        hash_3ab58e40011df941, // 0x18
        eq_sticky_grenade, // 0x19
        eq_seeker_mine, // 0x1a
        hash_4b1854c2ff5135b2, // 0x1b
        snowball, // 0x1c
        eq_concertina_wire, // 0x1d
        eq_acid_bomb, // 0x1e
        gadget_spawnbeacon, // 0x1f
        gadget_armor, // 0x20
        tomahawk_t8, // 0x21
        gadget_health_boost, // 0x22
        spectre_grenade, // 0x23
        eq_flash_grenade, // 0x24
        trophy_system, // 0x25
        eq_slow_grenade, // 0x26
        tear_gas, // 0x27
        eq_molotov, // 0x28
        gadget_cleanse, // 0x29
        satchel_charge, // 0x2a
        default_specialist_equipment, // 0x2b
        gadget_health_regen_squad, // 0x2c
        hash_76b56e7e0b3b7aac, // 0x2d
        eq_decoy_grenade, // 0x2e
        hash_788c96e19cc7a46e, // 0x2f
        claymore, // 0x30
        cymbal_monkey, // 0x31
        hash_7ab3f9a730359659, // 0x32
        gadget_icepick, // 0x33
        gadget_camo // 0x34
    };

    // idx 0xa members: 0x3c
    enum hash_1e2de876fb880be2 {
        quickdraw, // 0x0
        acog, // 0x1
        dw, // 0x2
        ir, // 0x3
        barrel2, // 0x4
        mixunder2, // 0x5
        fastreload, // 0x6
        heavy, // 0x7
        steadyaim, // 0x8
        stalker, // 0x9
        barrel, // 0xa
        mixstock, // 0xb
        smoothzoom2, // 0xc
        mixclip2, // 0xd
        reflex4, // 0xe
        reflex3, // 0xf
        reflex2, // 0x10
        stalker2, // 0x11
        extclip2, // 0x12
        tactical, // 0x13
        steadyaim2, // 0x14
        mixclip, // 0x15
        light, // 0x16
        speedgrip2, // 0x17
        mixhandle, // 0x18
        mixunder, // 0x19
        mixbarrel2, // 0x1a
        mixstock2, // 0x1b
        reddot, // 0x1c
        handle, // 0x1d
        mixmuzzle2, // 0x1e
        extclip, // 0x1f
        light2, // 0x20
        heavy2, // 0x21
        holo, // 0x22
        elo, // 0x23
        fastreload2, // 0x24
        scope3x, // 0x25
        scope4x, // 0x26
        mixhandle2, // 0x27
        compensator, // 0x28
        mixbody, // 0x29
        quickdraw2, // 0x2a
        suppressed2, // 0x2b
        speedgrip, // 0x2c
        sprintout2, // 0x2d
        suppressed, // 0x2e
        sprintout, // 0x2f
        grip2, // 0x30
        mixmuzzle, // 0x31
        handle2, // 0x32
        compensator2, // 0x33
        mixbody2, // 0x34
        dualoptic, // 0x35
        grip, // 0x36
        smoothzoom, // 0x37
        reflex, // 0x38
        mixbarrel, // 0x39
        elo3, // 0x3a
        elo2 // 0x3b
    };

    // idx 0xb members: 0x3c
    enum hash_48d8d533750ed177 {
        talent_gungho, // 0x0
        talent_engineer, // 0x1
        talent_coldblooded, // 0x2
        hash_9fb2125b3e673e5, // 0x3
        gear_armor, // 0x4
        hash_cd70e712f842296, // 0x5
        talent_tracker, // 0x6
        hash_101808cdfcd390d6, // 0x7
        hash_128256155e755170, // 0x8
        hash_16cfc7f70dbd8712, // 0x9
        talent_flakjacket, // 0xa
        talent_logistics, // 0xb
        talent_looter, // 0xc
        gadget_medicalinjectiongun, // 0xd
        hash_1d8863d0b864a48b, // 0xe
        hash_1db03fa9862ba330, // 0xf
        hash_20290a682a974c94, // 0x10
        talent_dexterity, // 0x11
        hash_249e75e962ea5275, // 0x12
        talent_resistance, // 0x13
        gear_awareness, // 0x14
        hash_2c3a32e6e2afd1f2, // 0x15
        hash_311283e3107dec74, // 0x16
        talent_lightweight, // 0x17
        talent_awareness, // 0x18
        gear_equipmentcharge, // 0x19
        hash_38c08136902fd553, // 0x1a
        hash_39045b0020cc3e00, // 0x1b
        hash_3c323c7819b10b4d, // 0x1c
        hash_3c60422123a9075b, // 0x1d
        talent_scavenger, // 0x1e
        talent_skulker, // 0x1f
        gear_scorestreakcharge, // 0x20
        talent_ghost, // 0x21
        hash_4f80a2c3398e97c9, // 0x22
        talent_elemental_pop, // 0x23
        talent_brawler, // 0x24
        talent_quartermaster, // 0x25
        hash_59dbe7f72baaa0f0, // 0x26
        hash_59dbe8f72baaa2a3, // 0x27
        hash_59dbecf72baaa96f, // 0x28
        hash_59dbedf72baaab22, // 0x29
        hash_59dbeef72baaacd5, // 0x2a
        hash_5c80935e7a319f21, // 0x2b
        talent_paranoia, // 0x2c
        talent_teamlink, // 0x2d
        talent_deadsilence, // 0x2e
        hash_646fc27884bdaa02, // 0x2f
        gear_medicalinjectiongun, // 0x30
        hash_661cd0d6fb33878c, // 0x31
        talent_spycraft, // 0x32
        hash_7321f9058ee65217, // 0x33
        hash_7716cb3888f5dd8a, // 0x34
        talent_elemental_pop_2, // 0x35
        talent_elemental_pop_3, // 0x36
        talent_elemental_pop_1, // 0x37
        talent_elemental_pop_4, // 0x38
        talent_elemental_pop_5, // 0x39
        hash_7ca561e40dc3c5de, // 0x3a
        hash_7f79d3ba6ed1a1d7 // 0x3b
    };

    // idx 0xc members: 0x6
    enum hash_66db207c660e33f3 {
        bonuscard_overkill, // 0x0
        bonuscard_underkill, // 0x1
        bonuscard_perk_1_greed, // 0x2
        hash_4a12859000892dda, // 0x3
        hash_639ebbcda56447e7, // 0x4
        bonuscard_primary_gunfighter // 0x5
    };

    // idx 0xd members: 0xf2
    enum hash_1acf39b1d1bee1d5 {
        bonuscard_overkill, // 0x0
        talent_gungho, // 0x1
        tr_fastburst_t9, // 0x2
        talent_engineer, // 0x3
        napalm_strike_zm, // 0x4
        ability_smart_cover, // 0x5
        dart, // 0x6
        ultimate_turret, // 0x7
        hash_5a7fd1af4a1d5c9, // 0x8
        hash_7a083f7ba43fa06, // 0x9
        talent_coldblooded, // 0xa
        lmg_accurate_t9, // 0xb
        melee_etool_t9, // 0xc
        ray_gun_mk2z, // 0xd
        ray_gun_mk2y, // 0xe
        ray_gun_mk2x, // 0xf
        hash_9fb2125b3e673e5, // 0x10
        sniper_powersemi_t9, // 0x11
        eq_wraith_fire, // 0x12
        gear_armor, // 0x13
        counteruav, // 0x14
        hash_cd70e712f842296, // 0x15
        talent_tracker, // 0x16
        missile_turret, // 0x17
        eq_shroud, // 0x18
        gadget_supplypod, // 0x19
        hash_101808cdfcd390d6, // 0x1a
        ar_damage_t9, // 0x1b
        homunculus, // 0x1c
        spknifeork, // 0x1d
        melee_bowie, // 0x1e
        hash_128256155e755170, // 0x1f
        ww_random_ray_gun1, // 0x20
        bonuscard_underkill, // 0x21
        recon_plane, // 0x22
        hash_16cfc7f70dbd8712, // 0x23
        bonuscard_perk_1_greed, // 0x24
        sig_buckler_dw, // 0x25
        talent_flakjacket, // 0x26
        gadget_vision_pulse, // 0x27
        waterballoon, // 0x28
        special_crossbow_t9, // 0x29
        weapon_armor, // 0x2a
        eq_arm_blade, // 0x2b
        talent_logistics, // 0x2c
        ww_blundergat_t8, // 0x2d
        gadget_heat_wave, // 0x2e
        eq_localheal, // 0x2f
        hoverjet, // 0x30
        talent_looter, // 0x31
        gadget_medicalinjectiongun, // 0x32
        hash_1d8863d0b864a48b, // 0x33
        hash_1db03fa9862ba330, // 0x34
        nightingale, // 0x35
        pistol_fullauto_t9, // 0x36
        remote_missile, // 0x37
        gadget_smart_cover, // 0x38
        hash_20290a682a974c94, // 0x39
        willy_pete, // 0x3a
        eq_emp_grenade, // 0x3b
        special_grenadelauncher_t9, // 0x3c
        melee_machete_t9, // 0x3d
        talent_dexterity, // 0x3e
        launcher_freefire_t9, // 0x3f
        hash_249e75e962ea5275, // 0x40
        ar_accurate_t9, // 0x41
        sig_lmg, // 0x42
        ww_crossbow_impaler_t8, // 0x43
        ww_freezegun_t8, // 0x44
        frag_grenade, // 0x45
        knife_loadout, // 0x46
        feature_default_class_1, // 0x47
        feature_default_class_3, // 0x48
        feature_default_class_2, // 0x49
        feature_default_class_5, // 0x4a
        feature_default_class_4, // 0x4b
        feature_default_class_6, // 0x4c
        talent_resistance, // 0x4d
        swat_team, // 0x4e
        gear_awareness, // 0x4f
        land_mine, // 0x50
        hatchet, // 0x51
        hash_2c3a32e6e2afd1f2, // 0x52
        supplydrop_marker, // 0x53
        mute_smoke, // 0x54
        hash_2ea46ca74ebdfcac, // 0x55
        smg_capacity_t9, // 0x56
        chopper_gunner, // 0x57
        melee_baseballbat_t9, // 0x58
        hash_311283e3107dec74, // 0x59
        null_offhand_secondary, // 0x5a
        gadget_health_regen, // 0x5b
        hash_31be8125c7d0f273, // 0x5c
        listening_device, // 0x5d
        talent_lightweight, // 0x5e
        talent_awareness, // 0x5f
        spork_alcatraz, // 0x60
        drone_squadron, // 0x61
        gear_equipmentcharge, // 0x62
        pistol_semiauto_t9, // 0x63
        null_offhand_primary, // 0x64
        smg_burst_t9, // 0x65
        hash_3507beb47a6b634e, // 0x66
        pistol_revolver_t9, // 0x67
        eq_stimshot, // 0x68
        hash_38c08136902fd553, // 0x69
        hash_39045b0020cc3e00, // 0x6a
        overwatch_helicopter, // 0x6b
        gadget_jammer, // 0x6c
        hash_3ab58e40011df941, // 0x6d
        launcher_standard_t9, // 0x6e
        hash_3c323c7819b10b4d, // 0x6f
        hash_3c60422123a9075b, // 0x70
        melee_bowie_bloody, // 0x71
        eq_sticky_grenade, // 0x72
        special_ballisticknife_t9_dw, // 0x73
        ww_ieu_shockwave_t9, // 0x74
        melee_sledgehammer_t9, // 0x75
        sig_blade, // 0x76
        talent_scavenger, // 0x77
        pistol_burst_t9, // 0x78
        hash_4385cf507401820f, // 0x79
        napalm_strike, // 0x7a
        sniper_accurate_t9, // 0x7b
        ar_fastfire_t9, // 0x7c
        melee_wakizashi_t9, // 0x7d
        hero_pineapplegun, // 0x7e
        talent_skulker, // 0x7f
        hash_48206b17d50533c2, // 0x80
        sniper_quickscope_t9, // 0x81
        ability_dog, // 0x82
        straferun, // 0x83
        hash_4a12859000892dda, // 0x84
        eq_seeker_mine, // 0x85
        ww_crossbow_t8, // 0x86
        recon_car, // 0x87
        hash_4b1854c2ff5135b2, // 0x88
        snowball, // 0x89
        feature_custom_class_9, // 0x8a
        feature_custom_class_8, // 0x8b
        feature_custom_class_3, // 0x8c
        feature_custom_class_2, // 0x8d
        feature_custom_class_1, // 0x8e
        feature_custom_class_7, // 0x8f
        feature_custom_class_6, // 0x90
        feature_custom_class_5, // 0x91
        feature_custom_class_4, // 0x92
        uav, // 0x93
        eq_concertina_wire, // 0x94
        gear_scorestreakcharge, // 0x95
        feature_custom_class_10, // 0x96
        ar_slowhandling_t9, // 0x97
        eq_acid_bomb, // 0x98
        gadget_spawnbeacon, // 0x99
        ac130, // 0x9a
        talent_ghost, // 0x9b
        hash_4f80a2c3398e97c9, // 0x9c
        tr_precisionsemi_t9, // 0x9d
        helicopter_comlink, // 0x9e
        gadget_armor, // 0x9f
        tr_damagesemi_t9, // 0xa0
        feature_cac, // 0xa1
        talent_elemental_pop, // 0xa2
        tomahawk_t8, // 0xa3
        shotgun_pump_t9, // 0xa4
        gadget_health_boost, // 0xa5
        spectre_grenade, // 0xa6
        talent_brawler, // 0xa7
        eq_flash_grenade, // 0xa8
        hash_55c23f24d806e3a6, // 0xa9
        bare_hands, // 0xaa
        ar_slowfire_t9, // 0xab
        tr_powerburst_t9, // 0xac
        trophy_system, // 0xad
        talent_quartermaster, // 0xae
        hash_59dbe7f72baaa0f0, // 0xaf
        hash_59dbe8f72baaa2a3, // 0xb0
        hash_59dbecf72baaa96f, // 0xb1
        hash_59dbedf72baaab22, // 0xb2
        hash_59dbeef72baaacd5, // 0xb3
        ray_gun_mk2, // 0xb4
        tr_longburst_t9, // 0xb5
        smg_standard_t9, // 0xb6
        hash_5c80935e7a319f21, // 0xb7
        sig_bow_flame, // 0xb8
        eq_slow_grenade, // 0xb9
        talent_paranoia, // 0xba
        smg_accurate_t9, // 0xbb
        hash_603c083704cefb0c, // 0xbc
        jetfighter, // 0xbd
        talent_teamlink, // 0xbe
        smg_heavy_t9, // 0xbf
        talent_deadsilence, // 0xc0
        tear_gas, // 0xc1
        hash_639ebbcda56447e7, // 0xc2
        eq_molotov, // 0xc3
        smg_fastfire_t9, // 0xc4
        hash_646fc27884bdaa02, // 0xc5
        bonuscard_primary_gunfighter, // 0xc6
        lmg_light_t9, // 0xc7
        ai_tank_marker, // 0xc8
        gear_medicalinjectiongun, // 0xc9
        hash_661cd0d6fb33878c, // 0xca
        gadget_cleanse, // 0xcb
        hero_flamethrower, // 0xcc
        sniper_standard_t9, // 0xcd
        smg_spray_t9, // 0xce
        hero_annihilator, // 0xcf
        ar_fasthandling_t9, // 0xd0
        ar_mobility_t9, // 0xd1
        planemortar, // 0xd2
        sniper_cannon_t9, // 0xd3
        shotgun_semiauto_t9, // 0xd4
        lmg_fastfire_t9, // 0xd5
        ar_standard_t9, // 0xd6
        weapon_null, // 0xd7
        talent_spycraft, // 0xd8
        hash_7321f9058ee65217, // 0xd9
        satchel_charge, // 0xda
        default_specialist_equipment, // 0xdb
        gadget_health_regen_squad, // 0xdc
        hash_76b56e7e0b3b7aac, // 0xdd
        eq_decoy_grenade, // 0xde
        hash_7716cb3888f5dd8a, // 0xdf
        ray_gun, // 0xe0
        hash_788c96e19cc7a46e, // 0xe1
        claymore, // 0xe2
        talent_elemental_pop_2, // 0xe3
        talent_elemental_pop_3, // 0xe4
        talent_elemental_pop_1, // 0xe5
        talent_elemental_pop_4, // 0xe6
        talent_elemental_pop_5, // 0xe7
        smg_handling_t9, // 0xe8
        cymbal_monkey, // 0xe9
        shotgun_fullauto_t9, // 0xea
        hash_7ab3f9a730359659, // 0xeb
        gadget_icepick, // 0xec
        hash_7ca561e40dc3c5de, // 0xed
        basketball, // 0xee
        gadget_camo, // 0xef
        hash_7f79d3ba6ed1a1d7, // 0xf0
        lmg_slowfire_t9 // 0xf1
    };

    // root: bitSize: 0x10f0, members: 15

    // offset: 0x0, bitSize: 0x6d8(0xdb Byte(s))
    region_info dml;
    // offset: 0x6d8, bitSize: 0x318(0x63 Byte(s)), array:0x3(hti:0xffff)
    lootcontracts loot_contracts[3];
    // offset: 0x9f0, bitSize: 0x20(0x4 Byte(s))
    uint hash_5a1a5df0cdadbba3;
    // offset: 0xa10, bitSize: 0x20(0x4 Byte(s))
    uint hash_151eef37df5ee845;
    // offset: 0xa30, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_tier_boost;
    // offset: 0xa38, bitSize: 0x8(0x1 Byte(s))
    hash_54196e9e9860f0be platform;
    // offset: 0xa40, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_party_tier_boost;
    // offset: 0xa48, bitSize: 0x20(0x4 Byte(s))
    uint hash_1e4fbbabf3da13fa;
    // offset: 0xa68, bitSize: 0x110(0x22 Byte(s)), array:0x11(hti:0xffff)
    hash_33944d215cff6222 hash_33944d215cff6222[17];
    // offset: 0xb78, bitSize: 0x480(0x90 Byte(s)), array:0x48(hti:0x6)
    hash_1c86958671ff27fd hash_4953b2b12f1d6b1b[hash_4b8d95aacf149fb9];
    // offset: 0xff8, bitSize: 0xa0(0x14 Byte(s))
    client_header client;
    // offset: 0x1098, bitSize: 0x8(0x1 Byte(s))
    byte tier_boost;
    // offset: 0x10a0, bitSize: 0x1
    bool hash_4ca91f34eba5a203;
    // offset: 0x10a1, bitSize: 0x48(0x9 Byte(s)), array:0x48(hti:0x6)
    bool hash_4473319d8a8d9dcf[hash_4b8d95aacf149fb9];
};

version hash_26502c28606c184e {
    // enums ..... 14 (0xe)
    // structs ... 9 (0x9)
    // header bit size .. 4528 (0x11b0)
    // header byte size . 566 (0x236)

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

    // bitSize: 0x500, members: 5
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
    struct hash_1c86958671ff27fd {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_50ab8b7df567cd2a;
    };

    // bitSize: 0x108, members: 6
    struct lootcontracts {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint xp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint contractid;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:3 contractgamemode;
        // offset: 0x48, bitSize: 0x40(0x8 Byte(s))
        xhash contracthash;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 progress;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 target;
    };

    // bitSize: 0x10, members: 3
    struct hash_33944d215cff6222 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_174d79c341ec2c6c;
        // offset: 0x8, bitSize: 0x1
        bool hash_2401d7a2dc706a6c;
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

    // idx 0x5 members: 0xb1
    enum hash_10d50fe10481423c {
        tr_fastburst_t9, // 0x0
        napalm_strike_zm, // 0x1
        ability_smart_cover, // 0x2
        dart, // 0x3
        ultimate_turret, // 0x4
        hash_5a7fd1af4a1d5c9, // 0x5
        hash_7a083f7ba43fa06, // 0x6
        lmg_accurate_t9, // 0x7
        melee_etool_t9, // 0x8
        ray_gun_mk2z, // 0x9
        ray_gun_mk2y, // 0xa
        ray_gun_mk2x, // 0xb
        sniper_powersemi_t9, // 0xc
        eq_wraith_fire, // 0xd
        counteruav, // 0xe
        missile_turret, // 0xf
        eq_shroud, // 0x10
        gadget_supplypod, // 0x11
        ar_damage_t9, // 0x12
        homunculus, // 0x13
        spknifeork, // 0x14
        melee_bowie, // 0x15
        ww_random_ray_gun1, // 0x16
        recon_plane, // 0x17
        sig_buckler_dw, // 0x18
        gadget_vision_pulse, // 0x19
        waterballoon, // 0x1a
        special_crossbow_t9, // 0x1b
        weapon_armor, // 0x1c
        eq_arm_blade, // 0x1d
        ww_blundergat_t8, // 0x1e
        gadget_heat_wave, // 0x1f
        eq_localheal, // 0x20
        hoverjet, // 0x21
        nightingale, // 0x22
        pistol_fullauto_t9, // 0x23
        remote_missile, // 0x24
        gadget_smart_cover, // 0x25
        willy_pete, // 0x26
        eq_emp_grenade, // 0x27
        special_grenadelauncher_t9, // 0x28
        melee_machete_t9, // 0x29
        launcher_freefire_t9, // 0x2a
        ar_accurate_t9, // 0x2b
        sig_lmg, // 0x2c
        ww_crossbow_impaler_t8, // 0x2d
        ww_freezegun_t8, // 0x2e
        frag_grenade, // 0x2f
        knife_loadout, // 0x30
        feature_default_class_1, // 0x31
        feature_default_class_3, // 0x32
        feature_default_class_2, // 0x33
        feature_default_class_5, // 0x34
        feature_default_class_4, // 0x35
        feature_default_class_6, // 0x36
        swat_team, // 0x37
        land_mine, // 0x38
        hatchet, // 0x39
        supplydrop_marker, // 0x3a
        mute_smoke, // 0x3b
        hash_2ea46ca74ebdfcac, // 0x3c
        smg_capacity_t9, // 0x3d
        chopper_gunner, // 0x3e
        melee_baseballbat_t9, // 0x3f
        null_offhand_secondary, // 0x40
        gadget_health_regen, // 0x41
        hash_31be8125c7d0f273, // 0x42
        listening_device, // 0x43
        spork_alcatraz, // 0x44
        drone_squadron, // 0x45
        pistol_semiauto_t9, // 0x46
        null_offhand_primary, // 0x47
        smg_burst_t9, // 0x48
        hash_3507beb47a6b634e, // 0x49
        pistol_revolver_t9, // 0x4a
        eq_stimshot, // 0x4b
        overwatch_helicopter, // 0x4c
        gadget_jammer, // 0x4d
        hash_3ab58e40011df941, // 0x4e
        launcher_standard_t9, // 0x4f
        melee_bowie_bloody, // 0x50
        eq_sticky_grenade, // 0x51
        special_ballisticknife_t9_dw, // 0x52
        ww_ieu_shockwave_t9, // 0x53
        melee_sledgehammer_t9, // 0x54
        sig_blade, // 0x55
        pistol_burst_t9, // 0x56
        hash_4385cf507401820f, // 0x57
        napalm_strike, // 0x58
        sniper_accurate_t9, // 0x59
        ar_fastfire_t9, // 0x5a
        melee_wakizashi_t9, // 0x5b
        hero_pineapplegun, // 0x5c
        hash_48206b17d50533c2, // 0x5d
        sniper_quickscope_t9, // 0x5e
        ability_dog, // 0x5f
        straferun, // 0x60
        eq_seeker_mine, // 0x61
        ww_crossbow_t8, // 0x62
        recon_car, // 0x63
        hash_4b1854c2ff5135b2, // 0x64
        snowball, // 0x65
        feature_custom_class_9, // 0x66
        feature_custom_class_8, // 0x67
        feature_custom_class_3, // 0x68
        feature_custom_class_2, // 0x69
        feature_custom_class_1, // 0x6a
        feature_custom_class_7, // 0x6b
        feature_custom_class_6, // 0x6c
        feature_custom_class_5, // 0x6d
        feature_custom_class_4, // 0x6e
        uav, // 0x6f
        eq_concertina_wire, // 0x70
        feature_custom_class_10, // 0x71
        ar_slowhandling_t9, // 0x72
        eq_acid_bomb, // 0x73
        gadget_spawnbeacon, // 0x74
        ac130, // 0x75
        tr_precisionsemi_t9, // 0x76
        helicopter_comlink, // 0x77
        gadget_armor, // 0x78
        tr_damagesemi_t9, // 0x79
        feature_cac, // 0x7a
        tomahawk_t8, // 0x7b
        shotgun_pump_t9, // 0x7c
        gadget_health_boost, // 0x7d
        spectre_grenade, // 0x7e
        eq_flash_grenade, // 0x7f
        hash_55c23f24d806e3a6, // 0x80
        bare_hands, // 0x81
        ar_slowfire_t9, // 0x82
        tr_powerburst_t9, // 0x83
        trophy_system, // 0x84
        ray_gun_mk2, // 0x85
        tr_longburst_t9, // 0x86
        ww_ray_rifle_t9, // 0x87
        smg_standard_t9, // 0x88
        sig_bow_flame, // 0x89
        eq_slow_grenade, // 0x8a
        smg_accurate_t9, // 0x8b
        hash_603c083704cefb0c, // 0x8c
        jetfighter, // 0x8d
        smg_heavy_t9, // 0x8e
        tear_gas, // 0x8f
        eq_molotov, // 0x90
        smg_fastfire_t9, // 0x91
        lmg_light_t9, // 0x92
        ai_tank_marker, // 0x93
        gadget_cleanse, // 0x94
        hero_flamethrower, // 0x95
        sniper_standard_t9, // 0x96
        smg_spray_t9, // 0x97
        hero_annihilator, // 0x98
        ar_fasthandling_t9, // 0x99
        ar_mobility_t9, // 0x9a
        planemortar, // 0x9b
        sniper_cannon_t9, // 0x9c
        shotgun_semiauto_t9, // 0x9d
        lmg_fastfire_t9, // 0x9e
        ar_standard_t9, // 0x9f
        weapon_null, // 0xa0
        satchel_charge, // 0xa1
        default_specialist_equipment, // 0xa2
        gadget_health_regen_squad, // 0xa3
        hash_76b56e7e0b3b7aac, // 0xa4
        eq_decoy_grenade, // 0xa5
        ray_gun, // 0xa6
        hash_788c96e19cc7a46e, // 0xa7
        claymore, // 0xa8
        smg_handling_t9, // 0xa9
        cymbal_monkey, // 0xaa
        shotgun_fullauto_t9, // 0xab
        hash_7ab3f9a730359659, // 0xac
        gadget_icepick, // 0xad
        basketball, // 0xae
        gadget_camo, // 0xaf
        lmg_slowfire_t9 // 0xb0
    };

    // idx 0x6 members: 0x49
    enum hash_4b8d95aacf149fb9 {
        tr_fastburst_t9, // 0x0
        lmg_accurate_t9, // 0x1
        melee_etool_t9, // 0x2
        ray_gun_mk2z, // 0x3
        ray_gun_mk2y, // 0x4
        ray_gun_mk2x, // 0x5
        sniper_powersemi_t9, // 0x6
        hash_c21b61b32a5d972, // 0x7
        ar_damage_t9, // 0x8
        homunculus, // 0x9
        spknifeork, // 0xa
        melee_bowie, // 0xb
        ww_random_ray_gun1, // 0xc
        hash_165cf52ce418f5a1, // 0xd
        special_crossbow_t9, // 0xe
        ww_blundergat_t8, // 0xf
        pistol_fullauto_t9, // 0x10
        special_grenadelauncher_t9, // 0x11
        melee_machete_t9, // 0x12
        launcher_freefire_t9, // 0x13
        ar_accurate_t9, // 0x14
        ww_crossbow_impaler_t8, // 0x15
        ww_freezegun_t8, // 0x16
        knife_loadout, // 0x17
        hash_2ea46ca74ebdfcac, // 0x18
        smg_capacity_t9, // 0x19
        melee_baseballbat_t9, // 0x1a
        spork_alcatraz, // 0x1b
        pistol_semiauto_t9, // 0x1c
        smg_burst_t9, // 0x1d
        pistol_revolver_t9, // 0x1e
        launcher_standard_t9, // 0x1f
        melee_bowie_bloody, // 0x20
        special_ballisticknife_t9_dw, // 0x21
        ww_ieu_shockwave_t9, // 0x22
        melee_sledgehammer_t9, // 0x23
        pistol_burst_t9, // 0x24
        hash_4385cf507401820f, // 0x25
        sniper_accurate_t9, // 0x26
        ar_fastfire_t9, // 0x27
        melee_wakizashi_t9, // 0x28
        hash_48206b17d50533c2, // 0x29
        sniper_quickscope_t9, // 0x2a
        ww_crossbow_t8, // 0x2b
        ar_slowhandling_t9, // 0x2c
        tr_precisionsemi_t9, // 0x2d
        tr_damagesemi_t9, // 0x2e
        shotgun_pump_t9, // 0x2f
        hash_55c23f24d806e3a6, // 0x30
        ar_slowfire_t9, // 0x31
        tr_powerburst_t9, // 0x32
        ray_gun_mk2, // 0x33
        tr_longburst_t9, // 0x34
        ww_ray_rifle_t9, // 0x35
        smg_standard_t9, // 0x36
        smg_accurate_t9, // 0x37
        hash_603c083704cefb0c, // 0x38
        smg_heavy_t9, // 0x39
        smg_fastfire_t9, // 0x3a
        lmg_light_t9, // 0x3b
        sniper_standard_t9, // 0x3c
        smg_spray_t9, // 0x3d
        ar_fasthandling_t9, // 0x3e
        ar_mobility_t9, // 0x3f
        sniper_cannon_t9, // 0x40
        shotgun_semiauto_t9, // 0x41
        lmg_fastfire_t9, // 0x42
        ar_standard_t9, // 0x43
        ray_gun, // 0x44
        smg_handling_t9, // 0x45
        shotgun_fullauto_t9, // 0x46
        basketball, // 0x47
        lmg_slowfire_t9 // 0x48
    };

    // idx 0x7 members: 0x13
    enum hash_7493d39e2637c1e7 {
        bonuscard, // 0x0
        hero, // 0x1
        feature, // 0x2
        weapon_special, // 0x3
        weapon_knife, // 0x4
        character, // 0x5
        miscweapon, // 0x6
        weapon_pistol, // 0x7
        killstreak, // 0x8
        weapon_sniper, // 0x9
        talent, // 0xa
        weapon_launcher, // 0xb
        weapon_grenade, // 0xc
        weapon_lmg, // 0xd
        weapon_tactical, // 0xe
        weapon_smg, // 0xf
        hash_7b68172df6035672, // 0x10
        weapon_cqb, // 0x11
        weapon_assault // 0x12
    };

    // idx 0x8 members: 0x1d
    enum hash_d5731f85b8cf294 {
        napalm_strike_zm, // 0x0
        dart, // 0x1
        ultimate_turret, // 0x2
        counteruav, // 0x3
        recon_plane, // 0x4
        weapon_armor, // 0x5
        hoverjet, // 0x6
        remote_missile, // 0x7
        sig_lmg, // 0x8
        swat_team, // 0x9
        supplydrop_marker, // 0xa
        chopper_gunner, // 0xb
        drone_squadron, // 0xc
        overwatch_helicopter, // 0xd
        napalm_strike, // 0xe
        hero_pineapplegun, // 0xf
        ability_dog, // 0x10
        straferun, // 0x11
        recon_car, // 0x12
        uav, // 0x13
        ac130, // 0x14
        helicopter_comlink, // 0x15
        sig_bow_flame, // 0x16
        jetfighter, // 0x17
        ai_tank_marker, // 0x18
        helicopter_guard, // 0x19
        hero_flamethrower, // 0x1a
        hero_annihilator, // 0x1b
        planemortar // 0x1c
    };

    // idx 0x9 members: 0x35
    enum hash_507792265be6dcc4 {
        ability_smart_cover, // 0x0
        hash_7a083f7ba43fa06, // 0x1
        eq_wraith_fire, // 0x2
        missile_turret, // 0x3
        eq_shroud, // 0x4
        gadget_supplypod, // 0x5
        gadget_vision_pulse, // 0x6
        waterballoon, // 0x7
        eq_arm_blade, // 0x8
        gadget_heat_wave, // 0x9
        eq_localheal, // 0xa
        gadget_medicalinjectiongun, // 0xb
        nightingale, // 0xc
        gadget_smart_cover, // 0xd
        willy_pete, // 0xe
        eq_emp_grenade, // 0xf
        frag_grenade, // 0x10
        land_mine, // 0x11
        hatchet, // 0x12
        gadget_health_regen, // 0x13
        listening_device, // 0x14
        hash_3507beb47a6b634e, // 0x15
        eq_stimshot, // 0x16
        gadget_jammer, // 0x17
        hash_3ab58e40011df941, // 0x18
        eq_sticky_grenade, // 0x19
        eq_seeker_mine, // 0x1a
        hash_4b1854c2ff5135b2, // 0x1b
        snowball, // 0x1c
        eq_concertina_wire, // 0x1d
        eq_acid_bomb, // 0x1e
        gadget_spawnbeacon, // 0x1f
        gadget_armor, // 0x20
        tomahawk_t8, // 0x21
        gadget_health_boost, // 0x22
        spectre_grenade, // 0x23
        eq_flash_grenade, // 0x24
        trophy_system, // 0x25
        eq_slow_grenade, // 0x26
        tear_gas, // 0x27
        eq_molotov, // 0x28
        gadget_cleanse, // 0x29
        satchel_charge, // 0x2a
        default_specialist_equipment, // 0x2b
        gadget_health_regen_squad, // 0x2c
        hash_76b56e7e0b3b7aac, // 0x2d
        eq_decoy_grenade, // 0x2e
        hash_788c96e19cc7a46e, // 0x2f
        claymore, // 0x30
        cymbal_monkey, // 0x31
        hash_7ab3f9a730359659, // 0x32
        gadget_icepick, // 0x33
        gadget_camo // 0x34
    };

    // idx 0xa members: 0x3c
    enum hash_1e2de876fb880be2 {
        quickdraw, // 0x0
        acog, // 0x1
        dw, // 0x2
        ir, // 0x3
        barrel2, // 0x4
        mixunder2, // 0x5
        fastreload, // 0x6
        heavy, // 0x7
        steadyaim, // 0x8
        stalker, // 0x9
        barrel, // 0xa
        mixstock, // 0xb
        smoothzoom2, // 0xc
        mixclip2, // 0xd
        reflex4, // 0xe
        reflex3, // 0xf
        reflex2, // 0x10
        stalker2, // 0x11
        extclip2, // 0x12
        tactical, // 0x13
        steadyaim2, // 0x14
        mixclip, // 0x15
        light, // 0x16
        speedgrip2, // 0x17
        mixhandle, // 0x18
        mixunder, // 0x19
        mixbarrel2, // 0x1a
        mixstock2, // 0x1b
        reddot, // 0x1c
        handle, // 0x1d
        mixmuzzle2, // 0x1e
        extclip, // 0x1f
        light2, // 0x20
        heavy2, // 0x21
        holo, // 0x22
        elo, // 0x23
        fastreload2, // 0x24
        scope3x, // 0x25
        scope4x, // 0x26
        mixhandle2, // 0x27
        compensator, // 0x28
        mixbody, // 0x29
        quickdraw2, // 0x2a
        suppressed2, // 0x2b
        speedgrip, // 0x2c
        sprintout2, // 0x2d
        suppressed, // 0x2e
        sprintout, // 0x2f
        grip2, // 0x30
        mixmuzzle, // 0x31
        handle2, // 0x32
        compensator2, // 0x33
        mixbody2, // 0x34
        dualoptic, // 0x35
        grip, // 0x36
        smoothzoom, // 0x37
        reflex, // 0x38
        mixbarrel, // 0x39
        elo3, // 0x3a
        elo2 // 0x3b
    };

    // idx 0xb members: 0x3c
    enum hash_48d8d533750ed177 {
        talent_gungho, // 0x0
        talent_engineer, // 0x1
        talent_coldblooded, // 0x2
        hash_9fb2125b3e673e5, // 0x3
        gear_armor, // 0x4
        hash_cd70e712f842296, // 0x5
        talent_tracker, // 0x6
        hash_101808cdfcd390d6, // 0x7
        hash_128256155e755170, // 0x8
        hash_16cfc7f70dbd8712, // 0x9
        talent_flakjacket, // 0xa
        talent_logistics, // 0xb
        talent_looter, // 0xc
        gadget_medicalinjectiongun, // 0xd
        hash_1d8863d0b864a48b, // 0xe
        hash_1db03fa9862ba330, // 0xf
        hash_20290a682a974c94, // 0x10
        talent_dexterity, // 0x11
        hash_249e75e962ea5275, // 0x12
        talent_resistance, // 0x13
        gear_awareness, // 0x14
        hash_2c3a32e6e2afd1f2, // 0x15
        hash_311283e3107dec74, // 0x16
        talent_lightweight, // 0x17
        talent_awareness, // 0x18
        gear_equipmentcharge, // 0x19
        hash_38c08136902fd553, // 0x1a
        hash_39045b0020cc3e00, // 0x1b
        hash_3c323c7819b10b4d, // 0x1c
        hash_3c60422123a9075b, // 0x1d
        talent_scavenger, // 0x1e
        talent_skulker, // 0x1f
        gear_scorestreakcharge, // 0x20
        talent_ghost, // 0x21
        hash_4f80a2c3398e97c9, // 0x22
        talent_elemental_pop, // 0x23
        talent_brawler, // 0x24
        talent_quartermaster, // 0x25
        hash_59dbe7f72baaa0f0, // 0x26
        hash_59dbe8f72baaa2a3, // 0x27
        hash_59dbecf72baaa96f, // 0x28
        hash_59dbedf72baaab22, // 0x29
        hash_59dbeef72baaacd5, // 0x2a
        hash_5c80935e7a319f21, // 0x2b
        talent_paranoia, // 0x2c
        talent_teamlink, // 0x2d
        talent_deadsilence, // 0x2e
        hash_646fc27884bdaa02, // 0x2f
        gear_medicalinjectiongun, // 0x30
        hash_661cd0d6fb33878c, // 0x31
        talent_spycraft, // 0x32
        hash_7321f9058ee65217, // 0x33
        hash_7716cb3888f5dd8a, // 0x34
        talent_elemental_pop_2, // 0x35
        talent_elemental_pop_3, // 0x36
        talent_elemental_pop_1, // 0x37
        talent_elemental_pop_4, // 0x38
        talent_elemental_pop_5, // 0x39
        hash_7ca561e40dc3c5de, // 0x3a
        hash_7f79d3ba6ed1a1d7 // 0x3b
    };

    // idx 0xc members: 0x6
    enum hash_66db207c660e33f3 {
        bonuscard_overkill, // 0x0
        bonuscard_underkill, // 0x1
        bonuscard_perk_1_greed, // 0x2
        hash_4a12859000892dda, // 0x3
        hash_639ebbcda56447e7, // 0x4
        bonuscard_primary_gunfighter // 0x5
    };

    // idx 0xd members: 0xf3
    enum hash_1acf39b1d1bee1d5 {
        bonuscard_overkill, // 0x0
        talent_gungho, // 0x1
        tr_fastburst_t9, // 0x2
        talent_engineer, // 0x3
        napalm_strike_zm, // 0x4
        ability_smart_cover, // 0x5
        dart, // 0x6
        ultimate_turret, // 0x7
        hash_5a7fd1af4a1d5c9, // 0x8
        hash_7a083f7ba43fa06, // 0x9
        talent_coldblooded, // 0xa
        lmg_accurate_t9, // 0xb
        melee_etool_t9, // 0xc
        ray_gun_mk2z, // 0xd
        ray_gun_mk2y, // 0xe
        ray_gun_mk2x, // 0xf
        hash_9fb2125b3e673e5, // 0x10
        sniper_powersemi_t9, // 0x11
        eq_wraith_fire, // 0x12
        gear_armor, // 0x13
        counteruav, // 0x14
        hash_cd70e712f842296, // 0x15
        talent_tracker, // 0x16
        missile_turret, // 0x17
        eq_shroud, // 0x18
        gadget_supplypod, // 0x19
        hash_101808cdfcd390d6, // 0x1a
        ar_damage_t9, // 0x1b
        homunculus, // 0x1c
        spknifeork, // 0x1d
        melee_bowie, // 0x1e
        hash_128256155e755170, // 0x1f
        ww_random_ray_gun1, // 0x20
        bonuscard_underkill, // 0x21
        recon_plane, // 0x22
        hash_16cfc7f70dbd8712, // 0x23
        bonuscard_perk_1_greed, // 0x24
        sig_buckler_dw, // 0x25
        talent_flakjacket, // 0x26
        gadget_vision_pulse, // 0x27
        waterballoon, // 0x28
        special_crossbow_t9, // 0x29
        weapon_armor, // 0x2a
        eq_arm_blade, // 0x2b
        talent_logistics, // 0x2c
        ww_blundergat_t8, // 0x2d
        gadget_heat_wave, // 0x2e
        eq_localheal, // 0x2f
        hoverjet, // 0x30
        talent_looter, // 0x31
        gadget_medicalinjectiongun, // 0x32
        hash_1d8863d0b864a48b, // 0x33
        hash_1db03fa9862ba330, // 0x34
        nightingale, // 0x35
        pistol_fullauto_t9, // 0x36
        remote_missile, // 0x37
        gadget_smart_cover, // 0x38
        hash_20290a682a974c94, // 0x39
        willy_pete, // 0x3a
        eq_emp_grenade, // 0x3b
        special_grenadelauncher_t9, // 0x3c
        melee_machete_t9, // 0x3d
        talent_dexterity, // 0x3e
        launcher_freefire_t9, // 0x3f
        hash_249e75e962ea5275, // 0x40
        ar_accurate_t9, // 0x41
        sig_lmg, // 0x42
        ww_crossbow_impaler_t8, // 0x43
        ww_freezegun_t8, // 0x44
        frag_grenade, // 0x45
        knife_loadout, // 0x46
        feature_default_class_1, // 0x47
        feature_default_class_3, // 0x48
        feature_default_class_2, // 0x49
        feature_default_class_5, // 0x4a
        feature_default_class_4, // 0x4b
        feature_default_class_6, // 0x4c
        talent_resistance, // 0x4d
        swat_team, // 0x4e
        gear_awareness, // 0x4f
        land_mine, // 0x50
        hatchet, // 0x51
        hash_2c3a32e6e2afd1f2, // 0x52
        supplydrop_marker, // 0x53
        mute_smoke, // 0x54
        hash_2ea46ca74ebdfcac, // 0x55
        smg_capacity_t9, // 0x56
        chopper_gunner, // 0x57
        melee_baseballbat_t9, // 0x58
        hash_311283e3107dec74, // 0x59
        null_offhand_secondary, // 0x5a
        gadget_health_regen, // 0x5b
        hash_31be8125c7d0f273, // 0x5c
        listening_device, // 0x5d
        talent_lightweight, // 0x5e
        talent_awareness, // 0x5f
        spork_alcatraz, // 0x60
        drone_squadron, // 0x61
        gear_equipmentcharge, // 0x62
        pistol_semiauto_t9, // 0x63
        null_offhand_primary, // 0x64
        smg_burst_t9, // 0x65
        hash_3507beb47a6b634e, // 0x66
        pistol_revolver_t9, // 0x67
        eq_stimshot, // 0x68
        hash_38c08136902fd553, // 0x69
        hash_39045b0020cc3e00, // 0x6a
        overwatch_helicopter, // 0x6b
        gadget_jammer, // 0x6c
        hash_3ab58e40011df941, // 0x6d
        launcher_standard_t9, // 0x6e
        hash_3c323c7819b10b4d, // 0x6f
        hash_3c60422123a9075b, // 0x70
        melee_bowie_bloody, // 0x71
        eq_sticky_grenade, // 0x72
        special_ballisticknife_t9_dw, // 0x73
        ww_ieu_shockwave_t9, // 0x74
        melee_sledgehammer_t9, // 0x75
        sig_blade, // 0x76
        talent_scavenger, // 0x77
        pistol_burst_t9, // 0x78
        hash_4385cf507401820f, // 0x79
        napalm_strike, // 0x7a
        sniper_accurate_t9, // 0x7b
        ar_fastfire_t9, // 0x7c
        melee_wakizashi_t9, // 0x7d
        hero_pineapplegun, // 0x7e
        talent_skulker, // 0x7f
        hash_48206b17d50533c2, // 0x80
        sniper_quickscope_t9, // 0x81
        ability_dog, // 0x82
        straferun, // 0x83
        hash_4a12859000892dda, // 0x84
        eq_seeker_mine, // 0x85
        ww_crossbow_t8, // 0x86
        recon_car, // 0x87
        hash_4b1854c2ff5135b2, // 0x88
        snowball, // 0x89
        feature_custom_class_9, // 0x8a
        feature_custom_class_8, // 0x8b
        feature_custom_class_3, // 0x8c
        feature_custom_class_2, // 0x8d
        feature_custom_class_1, // 0x8e
        feature_custom_class_7, // 0x8f
        feature_custom_class_6, // 0x90
        feature_custom_class_5, // 0x91
        feature_custom_class_4, // 0x92
        uav, // 0x93
        eq_concertina_wire, // 0x94
        gear_scorestreakcharge, // 0x95
        feature_custom_class_10, // 0x96
        ar_slowhandling_t9, // 0x97
        eq_acid_bomb, // 0x98
        gadget_spawnbeacon, // 0x99
        ac130, // 0x9a
        talent_ghost, // 0x9b
        hash_4f80a2c3398e97c9, // 0x9c
        tr_precisionsemi_t9, // 0x9d
        helicopter_comlink, // 0x9e
        gadget_armor, // 0x9f
        tr_damagesemi_t9, // 0xa0
        feature_cac, // 0xa1
        talent_elemental_pop, // 0xa2
        tomahawk_t8, // 0xa3
        shotgun_pump_t9, // 0xa4
        gadget_health_boost, // 0xa5
        spectre_grenade, // 0xa6
        talent_brawler, // 0xa7
        eq_flash_grenade, // 0xa8
        hash_55c23f24d806e3a6, // 0xa9
        bare_hands, // 0xaa
        ar_slowfire_t9, // 0xab
        tr_powerburst_t9, // 0xac
        trophy_system, // 0xad
        talent_quartermaster, // 0xae
        hash_59dbe7f72baaa0f0, // 0xaf
        hash_59dbe8f72baaa2a3, // 0xb0
        hash_59dbecf72baaa96f, // 0xb1
        hash_59dbedf72baaab22, // 0xb2
        hash_59dbeef72baaacd5, // 0xb3
        ray_gun_mk2, // 0xb4
        tr_longburst_t9, // 0xb5
        ww_ray_rifle_t9, // 0xb6
        smg_standard_t9, // 0xb7
        hash_5c80935e7a319f21, // 0xb8
        sig_bow_flame, // 0xb9
        eq_slow_grenade, // 0xba
        talent_paranoia, // 0xbb
        smg_accurate_t9, // 0xbc
        hash_603c083704cefb0c, // 0xbd
        jetfighter, // 0xbe
        talent_teamlink, // 0xbf
        smg_heavy_t9, // 0xc0
        talent_deadsilence, // 0xc1
        tear_gas, // 0xc2
        hash_639ebbcda56447e7, // 0xc3
        eq_molotov, // 0xc4
        smg_fastfire_t9, // 0xc5
        hash_646fc27884bdaa02, // 0xc6
        bonuscard_primary_gunfighter, // 0xc7
        lmg_light_t9, // 0xc8
        ai_tank_marker, // 0xc9
        gear_medicalinjectiongun, // 0xca
        hash_661cd0d6fb33878c, // 0xcb
        gadget_cleanse, // 0xcc
        hero_flamethrower, // 0xcd
        sniper_standard_t9, // 0xce
        smg_spray_t9, // 0xcf
        hero_annihilator, // 0xd0
        ar_fasthandling_t9, // 0xd1
        ar_mobility_t9, // 0xd2
        planemortar, // 0xd3
        sniper_cannon_t9, // 0xd4
        shotgun_semiauto_t9, // 0xd5
        lmg_fastfire_t9, // 0xd6
        ar_standard_t9, // 0xd7
        weapon_null, // 0xd8
        talent_spycraft, // 0xd9
        hash_7321f9058ee65217, // 0xda
        satchel_charge, // 0xdb
        default_specialist_equipment, // 0xdc
        gadget_health_regen_squad, // 0xdd
        hash_76b56e7e0b3b7aac, // 0xde
        eq_decoy_grenade, // 0xdf
        hash_7716cb3888f5dd8a, // 0xe0
        ray_gun, // 0xe1
        hash_788c96e19cc7a46e, // 0xe2
        claymore, // 0xe3
        talent_elemental_pop_2, // 0xe4
        talent_elemental_pop_3, // 0xe5
        talent_elemental_pop_1, // 0xe6
        talent_elemental_pop_4, // 0xe7
        talent_elemental_pop_5, // 0xe8
        smg_handling_t9, // 0xe9
        cymbal_monkey, // 0xea
        shotgun_fullauto_t9, // 0xeb
        hash_7ab3f9a730359659, // 0xec
        gadget_icepick, // 0xed
        hash_7ca561e40dc3c5de, // 0xee
        basketball, // 0xef
        gadget_camo, // 0xf0
        hash_7f79d3ba6ed1a1d7, // 0xf1
        lmg_slowfire_t9 // 0xf2
    };

    // root: bitSize: 0x1100, members: 15

    // offset: 0x0, bitSize: 0x6d8(0xdb Byte(s))
    region_info dml;
    // offset: 0x6d8, bitSize: 0x318(0x63 Byte(s)), array:0x3(hti:0xffff)
    lootcontracts loot_contracts[3];
    // offset: 0x9f0, bitSize: 0x20(0x4 Byte(s))
    uint hash_5a1a5df0cdadbba3;
    // offset: 0xa10, bitSize: 0x20(0x4 Byte(s))
    uint hash_151eef37df5ee845;
    // offset: 0xa30, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_tier_boost;
    // offset: 0xa38, bitSize: 0x8(0x1 Byte(s))
    hash_54196e9e9860f0be platform;
    // offset: 0xa40, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_party_tier_boost;
    // offset: 0xa48, bitSize: 0x20(0x4 Byte(s))
    uint hash_1e4fbbabf3da13fa;
    // offset: 0xa68, bitSize: 0x110(0x22 Byte(s)), array:0x11(hti:0xffff)
    hash_33944d215cff6222 hash_33944d215cff6222[17];
    // offset: 0xb78, bitSize: 0x490(0x92 Byte(s)), array:0x49(hti:0x6)
    hash_1c86958671ff27fd hash_4953b2b12f1d6b1b[hash_4b8d95aacf149fb9];
    // offset: 0x1008, bitSize: 0xa0(0x14 Byte(s))
    client_header client;
    // offset: 0x10a8, bitSize: 0x8(0x1 Byte(s))
    byte tier_boost;
    // offset: 0x10b0, bitSize: 0x1
    bool hash_4ca91f34eba5a203;
    // offset: 0x10b1, bitSize: 0x49, array:0x49(hti:0x6)
    bool hash_4473319d8a8d9dcf[hash_4b8d95aacf149fb9];
};

version hash_fe439eb67e4c3e93 {
    // enums ..... 14 (0xe)
    // structs ... 9 (0x9)
    // header bit size .. 4528 (0x11b0)
    // header byte size . 566 (0x236)

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
    struct hash_1c86958671ff27fd {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_50ab8b7df567cd2a;
    };

    // bitSize: 0x108, members: 6
    struct lootcontracts {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint xp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint contractid;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:3 contractgamemode;
        // offset: 0x48, bitSize: 0x40(0x8 Byte(s))
        xhash contracthash;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 progress;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 target;
    };

    // bitSize: 0x10, members: 3
    struct hash_33944d215cff6222 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_174d79c341ec2c6c;
        // offset: 0x8, bitSize: 0x1
        bool hash_2401d7a2dc706a6c;
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

    // idx 0x5 members: 0xb1
    enum hash_10d50fe10481423c {
        tr_fastburst_t9, // 0x0
        napalm_strike_zm, // 0x1
        ability_smart_cover, // 0x2
        dart, // 0x3
        ultimate_turret, // 0x4
        hash_5a7fd1af4a1d5c9, // 0x5
        hash_7a083f7ba43fa06, // 0x6
        lmg_accurate_t9, // 0x7
        melee_etool_t9, // 0x8
        ray_gun_mk2z, // 0x9
        ray_gun_mk2y, // 0xa
        ray_gun_mk2x, // 0xb
        sniper_powersemi_t9, // 0xc
        eq_wraith_fire, // 0xd
        counteruav, // 0xe
        missile_turret, // 0xf
        eq_shroud, // 0x10
        gadget_supplypod, // 0x11
        ar_damage_t9, // 0x12
        homunculus, // 0x13
        spknifeork, // 0x14
        melee_bowie, // 0x15
        ww_random_ray_gun1, // 0x16
        recon_plane, // 0x17
        sig_buckler_dw, // 0x18
        gadget_vision_pulse, // 0x19
        waterballoon, // 0x1a
        special_crossbow_t9, // 0x1b
        weapon_armor, // 0x1c
        eq_arm_blade, // 0x1d
        ww_blundergat_t8, // 0x1e
        gadget_heat_wave, // 0x1f
        eq_localheal, // 0x20
        hoverjet, // 0x21
        nightingale, // 0x22
        pistol_fullauto_t9, // 0x23
        remote_missile, // 0x24
        gadget_smart_cover, // 0x25
        willy_pete, // 0x26
        eq_emp_grenade, // 0x27
        special_grenadelauncher_t9, // 0x28
        melee_machete_t9, // 0x29
        launcher_freefire_t9, // 0x2a
        ar_accurate_t9, // 0x2b
        sig_lmg, // 0x2c
        ww_crossbow_impaler_t8, // 0x2d
        ww_freezegun_t8, // 0x2e
        frag_grenade, // 0x2f
        knife_loadout, // 0x30
        feature_default_class_1, // 0x31
        feature_default_class_3, // 0x32
        feature_default_class_2, // 0x33
        feature_default_class_5, // 0x34
        feature_default_class_4, // 0x35
        feature_default_class_6, // 0x36
        swat_team, // 0x37
        land_mine, // 0x38
        hatchet, // 0x39
        supplydrop_marker, // 0x3a
        mute_smoke, // 0x3b
        hash_2ea46ca74ebdfcac, // 0x3c
        smg_capacity_t9, // 0x3d
        chopper_gunner, // 0x3e
        melee_baseballbat_t9, // 0x3f
        null_offhand_secondary, // 0x40
        gadget_health_regen, // 0x41
        hash_31be8125c7d0f273, // 0x42
        listening_device, // 0x43
        spork_alcatraz, // 0x44
        drone_squadron, // 0x45
        pistol_semiauto_t9, // 0x46
        null_offhand_primary, // 0x47
        smg_burst_t9, // 0x48
        hash_3507beb47a6b634e, // 0x49
        pistol_revolver_t9, // 0x4a
        eq_stimshot, // 0x4b
        overwatch_helicopter, // 0x4c
        gadget_jammer, // 0x4d
        hash_3ab58e40011df941, // 0x4e
        launcher_standard_t9, // 0x4f
        melee_bowie_bloody, // 0x50
        eq_sticky_grenade, // 0x51
        special_ballisticknife_t9_dw, // 0x52
        ww_ieu_shockwave_t9, // 0x53
        melee_sledgehammer_t9, // 0x54
        sig_blade, // 0x55
        pistol_burst_t9, // 0x56
        hash_4385cf507401820f, // 0x57
        napalm_strike, // 0x58
        sniper_accurate_t9, // 0x59
        ar_fastfire_t9, // 0x5a
        melee_wakizashi_t9, // 0x5b
        hero_pineapplegun, // 0x5c
        hash_48206b17d50533c2, // 0x5d
        sniper_quickscope_t9, // 0x5e
        ability_dog, // 0x5f
        straferun, // 0x60
        eq_seeker_mine, // 0x61
        ww_crossbow_t8, // 0x62
        recon_car, // 0x63
        hash_4b1854c2ff5135b2, // 0x64
        snowball, // 0x65
        feature_custom_class_9, // 0x66
        feature_custom_class_8, // 0x67
        feature_custom_class_3, // 0x68
        feature_custom_class_2, // 0x69
        feature_custom_class_1, // 0x6a
        feature_custom_class_7, // 0x6b
        feature_custom_class_6, // 0x6c
        feature_custom_class_5, // 0x6d
        feature_custom_class_4, // 0x6e
        uav, // 0x6f
        eq_concertina_wire, // 0x70
        feature_custom_class_10, // 0x71
        ar_slowhandling_t9, // 0x72
        eq_acid_bomb, // 0x73
        gadget_spawnbeacon, // 0x74
        ac130, // 0x75
        tr_precisionsemi_t9, // 0x76
        helicopter_comlink, // 0x77
        gadget_armor, // 0x78
        tr_damagesemi_t9, // 0x79
        feature_cac, // 0x7a
        tomahawk_t8, // 0x7b
        shotgun_pump_t9, // 0x7c
        gadget_health_boost, // 0x7d
        spectre_grenade, // 0x7e
        eq_flash_grenade, // 0x7f
        hash_55c23f24d806e3a6, // 0x80
        bare_hands, // 0x81
        ar_slowfire_t9, // 0x82
        tr_powerburst_t9, // 0x83
        trophy_system, // 0x84
        ray_gun_mk2, // 0x85
        tr_longburst_t9, // 0x86
        ww_ray_rifle_t9, // 0x87
        smg_standard_t9, // 0x88
        sig_bow_flame, // 0x89
        eq_slow_grenade, // 0x8a
        smg_accurate_t9, // 0x8b
        hash_603c083704cefb0c, // 0x8c
        jetfighter, // 0x8d
        smg_heavy_t9, // 0x8e
        tear_gas, // 0x8f
        eq_molotov, // 0x90
        smg_fastfire_t9, // 0x91
        lmg_light_t9, // 0x92
        ai_tank_marker, // 0x93
        gadget_cleanse, // 0x94
        hero_flamethrower, // 0x95
        sniper_standard_t9, // 0x96
        smg_spray_t9, // 0x97
        hero_annihilator, // 0x98
        ar_fasthandling_t9, // 0x99
        ar_mobility_t9, // 0x9a
        planemortar, // 0x9b
        sniper_cannon_t9, // 0x9c
        shotgun_semiauto_t9, // 0x9d
        lmg_fastfire_t9, // 0x9e
        ar_standard_t9, // 0x9f
        weapon_null, // 0xa0
        satchel_charge, // 0xa1
        default_specialist_equipment, // 0xa2
        gadget_health_regen_squad, // 0xa3
        hash_76b56e7e0b3b7aac, // 0xa4
        eq_decoy_grenade, // 0xa5
        ray_gun, // 0xa6
        hash_788c96e19cc7a46e, // 0xa7
        claymore, // 0xa8
        smg_handling_t9, // 0xa9
        cymbal_monkey, // 0xaa
        shotgun_fullauto_t9, // 0xab
        hash_7ab3f9a730359659, // 0xac
        gadget_icepick, // 0xad
        basketball, // 0xae
        gadget_camo, // 0xaf
        lmg_slowfire_t9 // 0xb0
    };

    // idx 0x6 members: 0x49
    enum hash_4b8d95aacf149fb9 {
        tr_fastburst_t9, // 0x0
        lmg_accurate_t9, // 0x1
        melee_etool_t9, // 0x2
        ray_gun_mk2z, // 0x3
        ray_gun_mk2y, // 0x4
        ray_gun_mk2x, // 0x5
        sniper_powersemi_t9, // 0x6
        hash_c21b61b32a5d972, // 0x7
        ar_damage_t9, // 0x8
        homunculus, // 0x9
        spknifeork, // 0xa
        melee_bowie, // 0xb
        ww_random_ray_gun1, // 0xc
        hash_165cf52ce418f5a1, // 0xd
        special_crossbow_t9, // 0xe
        ww_blundergat_t8, // 0xf
        pistol_fullauto_t9, // 0x10
        special_grenadelauncher_t9, // 0x11
        melee_machete_t9, // 0x12
        launcher_freefire_t9, // 0x13
        ar_accurate_t9, // 0x14
        ww_crossbow_impaler_t8, // 0x15
        ww_freezegun_t8, // 0x16
        knife_loadout, // 0x17
        hash_2ea46ca74ebdfcac, // 0x18
        smg_capacity_t9, // 0x19
        melee_baseballbat_t9, // 0x1a
        spork_alcatraz, // 0x1b
        pistol_semiauto_t9, // 0x1c
        smg_burst_t9, // 0x1d
        pistol_revolver_t9, // 0x1e
        launcher_standard_t9, // 0x1f
        melee_bowie_bloody, // 0x20
        special_ballisticknife_t9_dw, // 0x21
        ww_ieu_shockwave_t9, // 0x22
        melee_sledgehammer_t9, // 0x23
        pistol_burst_t9, // 0x24
        hash_4385cf507401820f, // 0x25
        sniper_accurate_t9, // 0x26
        ar_fastfire_t9, // 0x27
        melee_wakizashi_t9, // 0x28
        hash_48206b17d50533c2, // 0x29
        sniper_quickscope_t9, // 0x2a
        ww_crossbow_t8, // 0x2b
        ar_slowhandling_t9, // 0x2c
        tr_precisionsemi_t9, // 0x2d
        tr_damagesemi_t9, // 0x2e
        shotgun_pump_t9, // 0x2f
        hash_55c23f24d806e3a6, // 0x30
        ar_slowfire_t9, // 0x31
        tr_powerburst_t9, // 0x32
        ray_gun_mk2, // 0x33
        tr_longburst_t9, // 0x34
        ww_ray_rifle_t9, // 0x35
        smg_standard_t9, // 0x36
        smg_accurate_t9, // 0x37
        hash_603c083704cefb0c, // 0x38
        smg_heavy_t9, // 0x39
        smg_fastfire_t9, // 0x3a
        lmg_light_t9, // 0x3b
        sniper_standard_t9, // 0x3c
        smg_spray_t9, // 0x3d
        ar_fasthandling_t9, // 0x3e
        ar_mobility_t9, // 0x3f
        sniper_cannon_t9, // 0x40
        shotgun_semiauto_t9, // 0x41
        lmg_fastfire_t9, // 0x42
        ar_standard_t9, // 0x43
        ray_gun, // 0x44
        smg_handling_t9, // 0x45
        shotgun_fullauto_t9, // 0x46
        basketball, // 0x47
        lmg_slowfire_t9 // 0x48
    };

    // idx 0x7 members: 0x13
    enum hash_7493d39e2637c1e7 {
        bonuscard, // 0x0
        hero, // 0x1
        feature, // 0x2
        weapon_special, // 0x3
        weapon_knife, // 0x4
        character, // 0x5
        miscweapon, // 0x6
        weapon_pistol, // 0x7
        killstreak, // 0x8
        weapon_sniper, // 0x9
        talent, // 0xa
        weapon_launcher, // 0xb
        weapon_grenade, // 0xc
        weapon_lmg, // 0xd
        weapon_tactical, // 0xe
        weapon_smg, // 0xf
        hash_7b68172df6035672, // 0x10
        weapon_cqb, // 0x11
        weapon_assault // 0x12
    };

    // idx 0x8 members: 0x1e
    enum hash_d5731f85b8cf294 {
        napalm_strike_zm, // 0x0
        dart, // 0x1
        ultimate_turret, // 0x2
        counteruav, // 0x3
        recon_plane, // 0x4
        weapon_armor, // 0x5
        hoverjet, // 0x6
        remote_missile, // 0x7
        sig_lmg, // 0x8
        spy_wanted_order, // 0x9
        swat_team, // 0xa
        supplydrop_marker, // 0xb
        chopper_gunner, // 0xc
        drone_squadron, // 0xd
        overwatch_helicopter, // 0xe
        napalm_strike, // 0xf
        hero_pineapplegun, // 0x10
        ability_dog, // 0x11
        straferun, // 0x12
        recon_car, // 0x13
        uav, // 0x14
        ac130, // 0x15
        helicopter_comlink, // 0x16
        sig_bow_flame, // 0x17
        jetfighter, // 0x18
        ai_tank_marker, // 0x19
        helicopter_guard, // 0x1a
        hero_flamethrower, // 0x1b
        hero_annihilator, // 0x1c
        planemortar // 0x1d
    };

    // idx 0x9 members: 0x35
    enum hash_507792265be6dcc4 {
        ability_smart_cover, // 0x0
        hash_7a083f7ba43fa06, // 0x1
        eq_wraith_fire, // 0x2
        missile_turret, // 0x3
        eq_shroud, // 0x4
        gadget_supplypod, // 0x5
        gadget_vision_pulse, // 0x6
        waterballoon, // 0x7
        eq_arm_blade, // 0x8
        gadget_heat_wave, // 0x9
        eq_localheal, // 0xa
        gadget_medicalinjectiongun, // 0xb
        nightingale, // 0xc
        gadget_smart_cover, // 0xd
        willy_pete, // 0xe
        eq_emp_grenade, // 0xf
        frag_grenade, // 0x10
        land_mine, // 0x11
        hatchet, // 0x12
        gadget_health_regen, // 0x13
        listening_device, // 0x14
        hash_3507beb47a6b634e, // 0x15
        eq_stimshot, // 0x16
        gadget_jammer, // 0x17
        hash_3ab58e40011df941, // 0x18
        eq_sticky_grenade, // 0x19
        eq_seeker_mine, // 0x1a
        hash_4b1854c2ff5135b2, // 0x1b
        snowball, // 0x1c
        eq_concertina_wire, // 0x1d
        eq_acid_bomb, // 0x1e
        gadget_spawnbeacon, // 0x1f
        gadget_armor, // 0x20
        tomahawk_t8, // 0x21
        gadget_health_boost, // 0x22
        spectre_grenade, // 0x23
        eq_flash_grenade, // 0x24
        trophy_system, // 0x25
        eq_slow_grenade, // 0x26
        tear_gas, // 0x27
        eq_molotov, // 0x28
        gadget_cleanse, // 0x29
        satchel_charge, // 0x2a
        default_specialist_equipment, // 0x2b
        gadget_health_regen_squad, // 0x2c
        hash_76b56e7e0b3b7aac, // 0x2d
        eq_decoy_grenade, // 0x2e
        hash_788c96e19cc7a46e, // 0x2f
        claymore, // 0x30
        cymbal_monkey, // 0x31
        hash_7ab3f9a730359659, // 0x32
        gadget_icepick, // 0x33
        gadget_camo // 0x34
    };

    // idx 0xa members: 0x3c
    enum hash_1e2de876fb880be2 {
        quickdraw, // 0x0
        acog, // 0x1
        dw, // 0x2
        ir, // 0x3
        barrel2, // 0x4
        mixunder2, // 0x5
        fastreload, // 0x6
        heavy, // 0x7
        steadyaim, // 0x8
        stalker, // 0x9
        barrel, // 0xa
        mixstock, // 0xb
        smoothzoom2, // 0xc
        mixclip2, // 0xd
        reflex4, // 0xe
        reflex3, // 0xf
        reflex2, // 0x10
        stalker2, // 0x11
        extclip2, // 0x12
        tactical, // 0x13
        steadyaim2, // 0x14
        mixclip, // 0x15
        light, // 0x16
        speedgrip2, // 0x17
        mixhandle, // 0x18
        mixunder, // 0x19
        mixbarrel2, // 0x1a
        mixstock2, // 0x1b
        reddot, // 0x1c
        handle, // 0x1d
        mixmuzzle2, // 0x1e
        extclip, // 0x1f
        light2, // 0x20
        heavy2, // 0x21
        holo, // 0x22
        elo, // 0x23
        fastreload2, // 0x24
        scope3x, // 0x25
        scope4x, // 0x26
        mixhandle2, // 0x27
        compensator, // 0x28
        mixbody, // 0x29
        quickdraw2, // 0x2a
        suppressed2, // 0x2b
        speedgrip, // 0x2c
        sprintout2, // 0x2d
        suppressed, // 0x2e
        sprintout, // 0x2f
        grip2, // 0x30
        mixmuzzle, // 0x31
        handle2, // 0x32
        compensator2, // 0x33
        mixbody2, // 0x34
        dualoptic, // 0x35
        grip, // 0x36
        smoothzoom, // 0x37
        reflex, // 0x38
        mixbarrel, // 0x39
        elo3, // 0x3a
        elo2 // 0x3b
    };

    // idx 0xb members: 0x3c
    enum hash_48d8d533750ed177 {
        talent_gungho, // 0x0
        talent_engineer, // 0x1
        talent_coldblooded, // 0x2
        hash_9fb2125b3e673e5, // 0x3
        gear_armor, // 0x4
        hash_cd70e712f842296, // 0x5
        talent_tracker, // 0x6
        hash_101808cdfcd390d6, // 0x7
        hash_128256155e755170, // 0x8
        hash_16cfc7f70dbd8712, // 0x9
        talent_flakjacket, // 0xa
        talent_logistics, // 0xb
        talent_looter, // 0xc
        gadget_medicalinjectiongun, // 0xd
        hash_1d8863d0b864a48b, // 0xe
        hash_1db03fa9862ba330, // 0xf
        hash_20290a682a974c94, // 0x10
        talent_dexterity, // 0x11
        hash_249e75e962ea5275, // 0x12
        talent_resistance, // 0x13
        gear_awareness, // 0x14
        hash_2c3a32e6e2afd1f2, // 0x15
        hash_311283e3107dec74, // 0x16
        talent_lightweight, // 0x17
        talent_awareness, // 0x18
        gear_equipmentcharge, // 0x19
        hash_38c08136902fd553, // 0x1a
        hash_39045b0020cc3e00, // 0x1b
        hash_3c323c7819b10b4d, // 0x1c
        hash_3c60422123a9075b, // 0x1d
        talent_scavenger, // 0x1e
        talent_skulker, // 0x1f
        gear_scorestreakcharge, // 0x20
        talent_ghost, // 0x21
        hash_4f80a2c3398e97c9, // 0x22
        talent_elemental_pop, // 0x23
        talent_brawler, // 0x24
        talent_quartermaster, // 0x25
        hash_59dbe7f72baaa0f0, // 0x26
        hash_59dbe8f72baaa2a3, // 0x27
        hash_59dbecf72baaa96f, // 0x28
        hash_59dbedf72baaab22, // 0x29
        hash_59dbeef72baaacd5, // 0x2a
        hash_5c80935e7a319f21, // 0x2b
        talent_paranoia, // 0x2c
        talent_teamlink, // 0x2d
        talent_deadsilence, // 0x2e
        hash_646fc27884bdaa02, // 0x2f
        gear_medicalinjectiongun, // 0x30
        hash_661cd0d6fb33878c, // 0x31
        talent_spycraft, // 0x32
        hash_7321f9058ee65217, // 0x33
        hash_7716cb3888f5dd8a, // 0x34
        talent_elemental_pop_2, // 0x35
        talent_elemental_pop_3, // 0x36
        talent_elemental_pop_1, // 0x37
        talent_elemental_pop_4, // 0x38
        talent_elemental_pop_5, // 0x39
        hash_7ca561e40dc3c5de, // 0x3a
        hash_7f79d3ba6ed1a1d7 // 0x3b
    };

    // idx 0xc members: 0x6
    enum hash_66db207c660e33f3 {
        bonuscard_overkill, // 0x0
        bonuscard_underkill, // 0x1
        bonuscard_perk_1_greed, // 0x2
        hash_4a12859000892dda, // 0x3
        hash_639ebbcda56447e7, // 0x4
        bonuscard_primary_gunfighter // 0x5
    };

    // idx 0xd members: 0xf3
    enum hash_1acf39b1d1bee1d5 {
        bonuscard_overkill, // 0x0
        talent_gungho, // 0x1
        tr_fastburst_t9, // 0x2
        talent_engineer, // 0x3
        napalm_strike_zm, // 0x4
        ability_smart_cover, // 0x5
        dart, // 0x6
        ultimate_turret, // 0x7
        hash_5a7fd1af4a1d5c9, // 0x8
        hash_7a083f7ba43fa06, // 0x9
        talent_coldblooded, // 0xa
        lmg_accurate_t9, // 0xb
        melee_etool_t9, // 0xc
        ray_gun_mk2z, // 0xd
        ray_gun_mk2y, // 0xe
        ray_gun_mk2x, // 0xf
        hash_9fb2125b3e673e5, // 0x10
        sniper_powersemi_t9, // 0x11
        eq_wraith_fire, // 0x12
        gear_armor, // 0x13
        counteruav, // 0x14
        hash_cd70e712f842296, // 0x15
        talent_tracker, // 0x16
        missile_turret, // 0x17
        eq_shroud, // 0x18
        gadget_supplypod, // 0x19
        hash_101808cdfcd390d6, // 0x1a
        ar_damage_t9, // 0x1b
        homunculus, // 0x1c
        spknifeork, // 0x1d
        melee_bowie, // 0x1e
        hash_128256155e755170, // 0x1f
        ww_random_ray_gun1, // 0x20
        bonuscard_underkill, // 0x21
        recon_plane, // 0x22
        hash_16cfc7f70dbd8712, // 0x23
        bonuscard_perk_1_greed, // 0x24
        sig_buckler_dw, // 0x25
        talent_flakjacket, // 0x26
        gadget_vision_pulse, // 0x27
        waterballoon, // 0x28
        special_crossbow_t9, // 0x29
        weapon_armor, // 0x2a
        eq_arm_blade, // 0x2b
        talent_logistics, // 0x2c
        ww_blundergat_t8, // 0x2d
        gadget_heat_wave, // 0x2e
        eq_localheal, // 0x2f
        hoverjet, // 0x30
        talent_looter, // 0x31
        gadget_medicalinjectiongun, // 0x32
        hash_1d8863d0b864a48b, // 0x33
        hash_1db03fa9862ba330, // 0x34
        nightingale, // 0x35
        pistol_fullauto_t9, // 0x36
        remote_missile, // 0x37
        gadget_smart_cover, // 0x38
        hash_20290a682a974c94, // 0x39
        willy_pete, // 0x3a
        eq_emp_grenade, // 0x3b
        special_grenadelauncher_t9, // 0x3c
        melee_machete_t9, // 0x3d
        talent_dexterity, // 0x3e
        launcher_freefire_t9, // 0x3f
        hash_249e75e962ea5275, // 0x40
        ar_accurate_t9, // 0x41
        sig_lmg, // 0x42
        ww_crossbow_impaler_t8, // 0x43
        ww_freezegun_t8, // 0x44
        frag_grenade, // 0x45
        knife_loadout, // 0x46
        feature_default_class_1, // 0x47
        feature_default_class_3, // 0x48
        feature_default_class_2, // 0x49
        feature_default_class_5, // 0x4a
        feature_default_class_4, // 0x4b
        feature_default_class_6, // 0x4c
        talent_resistance, // 0x4d
        swat_team, // 0x4e
        gear_awareness, // 0x4f
        land_mine, // 0x50
        hatchet, // 0x51
        hash_2c3a32e6e2afd1f2, // 0x52
        supplydrop_marker, // 0x53
        mute_smoke, // 0x54
        hash_2ea46ca74ebdfcac, // 0x55
        smg_capacity_t9, // 0x56
        chopper_gunner, // 0x57
        melee_baseballbat_t9, // 0x58
        hash_311283e3107dec74, // 0x59
        null_offhand_secondary, // 0x5a
        gadget_health_regen, // 0x5b
        hash_31be8125c7d0f273, // 0x5c
        listening_device, // 0x5d
        talent_lightweight, // 0x5e
        talent_awareness, // 0x5f
        spork_alcatraz, // 0x60
        drone_squadron, // 0x61
        gear_equipmentcharge, // 0x62
        pistol_semiauto_t9, // 0x63
        null_offhand_primary, // 0x64
        smg_burst_t9, // 0x65
        hash_3507beb47a6b634e, // 0x66
        pistol_revolver_t9, // 0x67
        eq_stimshot, // 0x68
        hash_38c08136902fd553, // 0x69
        hash_39045b0020cc3e00, // 0x6a
        overwatch_helicopter, // 0x6b
        gadget_jammer, // 0x6c
        hash_3ab58e40011df941, // 0x6d
        launcher_standard_t9, // 0x6e
        hash_3c323c7819b10b4d, // 0x6f
        hash_3c60422123a9075b, // 0x70
        melee_bowie_bloody, // 0x71
        eq_sticky_grenade, // 0x72
        special_ballisticknife_t9_dw, // 0x73
        ww_ieu_shockwave_t9, // 0x74
        melee_sledgehammer_t9, // 0x75
        sig_blade, // 0x76
        talent_scavenger, // 0x77
        pistol_burst_t9, // 0x78
        hash_4385cf507401820f, // 0x79
        napalm_strike, // 0x7a
        sniper_accurate_t9, // 0x7b
        ar_fastfire_t9, // 0x7c
        melee_wakizashi_t9, // 0x7d
        hero_pineapplegun, // 0x7e
        talent_skulker, // 0x7f
        hash_48206b17d50533c2, // 0x80
        sniper_quickscope_t9, // 0x81
        ability_dog, // 0x82
        straferun, // 0x83
        hash_4a12859000892dda, // 0x84
        eq_seeker_mine, // 0x85
        ww_crossbow_t8, // 0x86
        recon_car, // 0x87
        hash_4b1854c2ff5135b2, // 0x88
        snowball, // 0x89
        feature_custom_class_9, // 0x8a
        feature_custom_class_8, // 0x8b
        feature_custom_class_3, // 0x8c
        feature_custom_class_2, // 0x8d
        feature_custom_class_1, // 0x8e
        feature_custom_class_7, // 0x8f
        feature_custom_class_6, // 0x90
        feature_custom_class_5, // 0x91
        feature_custom_class_4, // 0x92
        uav, // 0x93
        eq_concertina_wire, // 0x94
        gear_scorestreakcharge, // 0x95
        feature_custom_class_10, // 0x96
        ar_slowhandling_t9, // 0x97
        eq_acid_bomb, // 0x98
        gadget_spawnbeacon, // 0x99
        ac130, // 0x9a
        talent_ghost, // 0x9b
        hash_4f80a2c3398e97c9, // 0x9c
        tr_precisionsemi_t9, // 0x9d
        helicopter_comlink, // 0x9e
        gadget_armor, // 0x9f
        tr_damagesemi_t9, // 0xa0
        feature_cac, // 0xa1
        talent_elemental_pop, // 0xa2
        tomahawk_t8, // 0xa3
        shotgun_pump_t9, // 0xa4
        gadget_health_boost, // 0xa5
        spectre_grenade, // 0xa6
        talent_brawler, // 0xa7
        eq_flash_grenade, // 0xa8
        hash_55c23f24d806e3a6, // 0xa9
        bare_hands, // 0xaa
        ar_slowfire_t9, // 0xab
        tr_powerburst_t9, // 0xac
        trophy_system, // 0xad
        talent_quartermaster, // 0xae
        hash_59dbe7f72baaa0f0, // 0xaf
        hash_59dbe8f72baaa2a3, // 0xb0
        hash_59dbecf72baaa96f, // 0xb1
        hash_59dbedf72baaab22, // 0xb2
        hash_59dbeef72baaacd5, // 0xb3
        ray_gun_mk2, // 0xb4
        tr_longburst_t9, // 0xb5
        ww_ray_rifle_t9, // 0xb6
        smg_standard_t9, // 0xb7
        hash_5c80935e7a319f21, // 0xb8
        sig_bow_flame, // 0xb9
        eq_slow_grenade, // 0xba
        talent_paranoia, // 0xbb
        smg_accurate_t9, // 0xbc
        hash_603c083704cefb0c, // 0xbd
        jetfighter, // 0xbe
        talent_teamlink, // 0xbf
        smg_heavy_t9, // 0xc0
        talent_deadsilence, // 0xc1
        tear_gas, // 0xc2
        hash_639ebbcda56447e7, // 0xc3
        eq_molotov, // 0xc4
        smg_fastfire_t9, // 0xc5
        hash_646fc27884bdaa02, // 0xc6
        bonuscard_primary_gunfighter, // 0xc7
        lmg_light_t9, // 0xc8
        ai_tank_marker, // 0xc9
        gear_medicalinjectiongun, // 0xca
        hash_661cd0d6fb33878c, // 0xcb
        gadget_cleanse, // 0xcc
        hero_flamethrower, // 0xcd
        sniper_standard_t9, // 0xce
        smg_spray_t9, // 0xcf
        hero_annihilator, // 0xd0
        ar_fasthandling_t9, // 0xd1
        ar_mobility_t9, // 0xd2
        planemortar, // 0xd3
        sniper_cannon_t9, // 0xd4
        shotgun_semiauto_t9, // 0xd5
        lmg_fastfire_t9, // 0xd6
        ar_standard_t9, // 0xd7
        weapon_null, // 0xd8
        talent_spycraft, // 0xd9
        hash_7321f9058ee65217, // 0xda
        satchel_charge, // 0xdb
        default_specialist_equipment, // 0xdc
        gadget_health_regen_squad, // 0xdd
        hash_76b56e7e0b3b7aac, // 0xde
        eq_decoy_grenade, // 0xdf
        hash_7716cb3888f5dd8a, // 0xe0
        ray_gun, // 0xe1
        hash_788c96e19cc7a46e, // 0xe2
        claymore, // 0xe3
        talent_elemental_pop_2, // 0xe4
        talent_elemental_pop_3, // 0xe5
        talent_elemental_pop_1, // 0xe6
        talent_elemental_pop_4, // 0xe7
        talent_elemental_pop_5, // 0xe8
        smg_handling_t9, // 0xe9
        cymbal_monkey, // 0xea
        shotgun_fullauto_t9, // 0xeb
        hash_7ab3f9a730359659, // 0xec
        gadget_icepick, // 0xed
        hash_7ca561e40dc3c5de, // 0xee
        basketball, // 0xef
        gadget_camo, // 0xf0
        hash_7f79d3ba6ed1a1d7, // 0xf1
        lmg_slowfire_t9 // 0xf2
    };

    // root: bitSize: 0x1100, members: 15

    // offset: 0x0, bitSize: 0x6d8(0xdb Byte(s))
    region_info dml;
    // offset: 0x6d8, bitSize: 0x318(0x63 Byte(s)), array:0x3(hti:0xffff)
    lootcontracts loot_contracts[3];
    // offset: 0x9f0, bitSize: 0x20(0x4 Byte(s))
    uint hash_5a1a5df0cdadbba3;
    // offset: 0xa10, bitSize: 0x20(0x4 Byte(s))
    uint hash_151eef37df5ee845;
    // offset: 0xa30, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_tier_boost;
    // offset: 0xa38, bitSize: 0x8(0x1 Byte(s))
    hash_54196e9e9860f0be platform;
    // offset: 0xa40, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_party_tier_boost;
    // offset: 0xa48, bitSize: 0x20(0x4 Byte(s))
    uint hash_1e4fbbabf3da13fa;
    // offset: 0xa68, bitSize: 0x110(0x22 Byte(s)), array:0x11(hti:0xffff)
    hash_33944d215cff6222 hash_33944d215cff6222[17];
    // offset: 0xb78, bitSize: 0x490(0x92 Byte(s)), array:0x49(hti:0x6)
    hash_1c86958671ff27fd hash_4953b2b12f1d6b1b[hash_4b8d95aacf149fb9];
    // offset: 0x1008, bitSize: 0xa0(0x14 Byte(s))
    client_header client;
    // offset: 0x10a8, bitSize: 0x8(0x1 Byte(s))
    byte tier_boost;
    // offset: 0x10b0, bitSize: 0x1
    bool hash_4ca91f34eba5a203;
    // offset: 0x10b1, bitSize: 0x49, array:0x49(hti:0x6)
    bool hash_4473319d8a8d9dcf[hash_4b8d95aacf149fb9];
};

version hash_6185cd8330af328b {
    // enums ..... 14 (0xe)
    // structs ... 9 (0x9)
    // header bit size .. 4544 (0x11c0)
    // header byte size . 568 (0x238)

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
    struct hash_1c86958671ff27fd {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_50ab8b7df567cd2a;
    };

    // bitSize: 0x108, members: 6
    struct lootcontracts {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint xp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint contractid;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:3 contractgamemode;
        // offset: 0x48, bitSize: 0x40(0x8 Byte(s))
        xhash contracthash;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 progress;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 target;
    };

    // bitSize: 0x10, members: 3
    struct hash_33944d215cff6222 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_174d79c341ec2c6c;
        // offset: 0x8, bitSize: 0x1
        bool hash_2401d7a2dc706a6c;
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

    // idx 0x5 members: 0xb2
    enum hash_10d50fe10481423c {
        tr_fastburst_t9, // 0x0
        napalm_strike_zm, // 0x1
        ability_smart_cover, // 0x2
        dart, // 0x3
        ultimate_turret, // 0x4
        hash_5a7fd1af4a1d5c9, // 0x5
        hash_7a083f7ba43fa06, // 0x6
        lmg_accurate_t9, // 0x7
        melee_etool_t9, // 0x8
        ray_gun_mk2z, // 0x9
        ray_gun_mk2y, // 0xa
        ray_gun_mk2x, // 0xb
        sniper_powersemi_t9, // 0xc
        eq_wraith_fire, // 0xd
        counteruav, // 0xe
        missile_turret, // 0xf
        eq_shroud, // 0x10
        gadget_supplypod, // 0x11
        ar_damage_t9, // 0x12
        homunculus, // 0x13
        spknifeork, // 0x14
        melee_bowie, // 0x15
        ww_random_ray_gun1, // 0x16
        recon_plane, // 0x17
        sig_buckler_dw, // 0x18
        gadget_vision_pulse, // 0x19
        waterballoon, // 0x1a
        special_crossbow_t9, // 0x1b
        weapon_armor, // 0x1c
        eq_arm_blade, // 0x1d
        ww_blundergat_t8, // 0x1e
        gadget_heat_wave, // 0x1f
        eq_localheal, // 0x20
        hoverjet, // 0x21
        nightingale, // 0x22
        pistol_fullauto_t9, // 0x23
        remote_missile, // 0x24
        gadget_smart_cover, // 0x25
        willy_pete, // 0x26
        eq_emp_grenade, // 0x27
        special_grenadelauncher_t9, // 0x28
        melee_machete_t9, // 0x29
        launcher_freefire_t9, // 0x2a
        ar_accurate_t9, // 0x2b
        sig_lmg, // 0x2c
        ww_crossbow_impaler_t8, // 0x2d
        ww_freezegun_t8, // 0x2e
        frag_grenade, // 0x2f
        smg_cqb_t9, // 0x30
        knife_loadout, // 0x31
        feature_default_class_1, // 0x32
        feature_default_class_3, // 0x33
        feature_default_class_2, // 0x34
        feature_default_class_5, // 0x35
        feature_default_class_4, // 0x36
        feature_default_class_6, // 0x37
        swat_team, // 0x38
        land_mine, // 0x39
        hatchet, // 0x3a
        supplydrop_marker, // 0x3b
        mute_smoke, // 0x3c
        hash_2ea46ca74ebdfcac, // 0x3d
        smg_capacity_t9, // 0x3e
        chopper_gunner, // 0x3f
        melee_baseballbat_t9, // 0x40
        null_offhand_secondary, // 0x41
        gadget_health_regen, // 0x42
        hash_31be8125c7d0f273, // 0x43
        listening_device, // 0x44
        spork_alcatraz, // 0x45
        drone_squadron, // 0x46
        pistol_semiauto_t9, // 0x47
        null_offhand_primary, // 0x48
        smg_burst_t9, // 0x49
        hash_3507beb47a6b634e, // 0x4a
        pistol_revolver_t9, // 0x4b
        eq_stimshot, // 0x4c
        overwatch_helicopter, // 0x4d
        gadget_jammer, // 0x4e
        hash_3ab58e40011df941, // 0x4f
        launcher_standard_t9, // 0x50
        melee_bowie_bloody, // 0x51
        eq_sticky_grenade, // 0x52
        special_ballisticknife_t9_dw, // 0x53
        ww_ieu_shockwave_t9, // 0x54
        melee_sledgehammer_t9, // 0x55
        sig_blade, // 0x56
        pistol_burst_t9, // 0x57
        hash_4385cf507401820f, // 0x58
        napalm_strike, // 0x59
        sniper_accurate_t9, // 0x5a
        ar_fastfire_t9, // 0x5b
        melee_wakizashi_t9, // 0x5c
        hero_pineapplegun, // 0x5d
        hash_48206b17d50533c2, // 0x5e
        sniper_quickscope_t9, // 0x5f
        ability_dog, // 0x60
        straferun, // 0x61
        eq_seeker_mine, // 0x62
        ww_crossbow_t8, // 0x63
        recon_car, // 0x64
        hash_4b1854c2ff5135b2, // 0x65
        snowball, // 0x66
        feature_custom_class_9, // 0x67
        feature_custom_class_8, // 0x68
        feature_custom_class_3, // 0x69
        feature_custom_class_2, // 0x6a
        feature_custom_class_1, // 0x6b
        feature_custom_class_7, // 0x6c
        feature_custom_class_6, // 0x6d
        feature_custom_class_5, // 0x6e
        feature_custom_class_4, // 0x6f
        uav, // 0x70
        eq_concertina_wire, // 0x71
        feature_custom_class_10, // 0x72
        ar_slowhandling_t9, // 0x73
        eq_acid_bomb, // 0x74
        gadget_spawnbeacon, // 0x75
        ac130, // 0x76
        tr_precisionsemi_t9, // 0x77
        helicopter_comlink, // 0x78
        gadget_armor, // 0x79
        tr_damagesemi_t9, // 0x7a
        feature_cac, // 0x7b
        tomahawk_t8, // 0x7c
        shotgun_pump_t9, // 0x7d
        gadget_health_boost, // 0x7e
        spectre_grenade, // 0x7f
        eq_flash_grenade, // 0x80
        hash_55c23f24d806e3a6, // 0x81
        bare_hands, // 0x82
        ar_slowfire_t9, // 0x83
        tr_powerburst_t9, // 0x84
        trophy_system, // 0x85
        ray_gun_mk2, // 0x86
        tr_longburst_t9, // 0x87
        ww_ray_rifle_t9, // 0x88
        smg_standard_t9, // 0x89
        sig_bow_flame, // 0x8a
        eq_slow_grenade, // 0x8b
        smg_accurate_t9, // 0x8c
        hash_603c083704cefb0c, // 0x8d
        jetfighter, // 0x8e
        smg_heavy_t9, // 0x8f
        tear_gas, // 0x90
        eq_molotov, // 0x91
        smg_fastfire_t9, // 0x92
        lmg_light_t9, // 0x93
        ai_tank_marker, // 0x94
        gadget_cleanse, // 0x95
        hero_flamethrower, // 0x96
        sniper_standard_t9, // 0x97
        smg_spray_t9, // 0x98
        hero_annihilator, // 0x99
        ar_fasthandling_t9, // 0x9a
        ar_mobility_t9, // 0x9b
        planemortar, // 0x9c
        sniper_cannon_t9, // 0x9d
        shotgun_semiauto_t9, // 0x9e
        lmg_fastfire_t9, // 0x9f
        ar_standard_t9, // 0xa0
        weapon_null, // 0xa1
        satchel_charge, // 0xa2
        default_specialist_equipment, // 0xa3
        gadget_health_regen_squad, // 0xa4
        hash_76b56e7e0b3b7aac, // 0xa5
        eq_decoy_grenade, // 0xa6
        ray_gun, // 0xa7
        hash_788c96e19cc7a46e, // 0xa8
        claymore, // 0xa9
        smg_handling_t9, // 0xaa
        cymbal_monkey, // 0xab
        shotgun_fullauto_t9, // 0xac
        hash_7ab3f9a730359659, // 0xad
        gadget_icepick, // 0xae
        basketball, // 0xaf
        gadget_camo, // 0xb0
        lmg_slowfire_t9 // 0xb1
    };

    // idx 0x6 members: 0x4a
    enum hash_4b8d95aacf149fb9 {
        tr_fastburst_t9, // 0x0
        lmg_accurate_t9, // 0x1
        melee_etool_t9, // 0x2
        ray_gun_mk2z, // 0x3
        ray_gun_mk2y, // 0x4
        ray_gun_mk2x, // 0x5
        sniper_powersemi_t9, // 0x6
        hash_c21b61b32a5d972, // 0x7
        ar_damage_t9, // 0x8
        homunculus, // 0x9
        spknifeork, // 0xa
        melee_bowie, // 0xb
        ww_random_ray_gun1, // 0xc
        hash_165cf52ce418f5a1, // 0xd
        special_crossbow_t9, // 0xe
        ww_blundergat_t8, // 0xf
        pistol_fullauto_t9, // 0x10
        special_grenadelauncher_t9, // 0x11
        melee_machete_t9, // 0x12
        launcher_freefire_t9, // 0x13
        ar_accurate_t9, // 0x14
        ww_crossbow_impaler_t8, // 0x15
        ww_freezegun_t8, // 0x16
        smg_cqb_t9, // 0x17
        knife_loadout, // 0x18
        hash_2ea46ca74ebdfcac, // 0x19
        smg_capacity_t9, // 0x1a
        melee_baseballbat_t9, // 0x1b
        spork_alcatraz, // 0x1c
        pistol_semiauto_t9, // 0x1d
        smg_burst_t9, // 0x1e
        pistol_revolver_t9, // 0x1f
        launcher_standard_t9, // 0x20
        melee_bowie_bloody, // 0x21
        special_ballisticknife_t9_dw, // 0x22
        ww_ieu_shockwave_t9, // 0x23
        melee_sledgehammer_t9, // 0x24
        pistol_burst_t9, // 0x25
        hash_4385cf507401820f, // 0x26
        sniper_accurate_t9, // 0x27
        ar_fastfire_t9, // 0x28
        melee_wakizashi_t9, // 0x29
        hash_48206b17d50533c2, // 0x2a
        sniper_quickscope_t9, // 0x2b
        ww_crossbow_t8, // 0x2c
        ar_slowhandling_t9, // 0x2d
        tr_precisionsemi_t9, // 0x2e
        tr_damagesemi_t9, // 0x2f
        shotgun_pump_t9, // 0x30
        hash_55c23f24d806e3a6, // 0x31
        ar_slowfire_t9, // 0x32
        tr_powerburst_t9, // 0x33
        ray_gun_mk2, // 0x34
        tr_longburst_t9, // 0x35
        ww_ray_rifle_t9, // 0x36
        smg_standard_t9, // 0x37
        smg_accurate_t9, // 0x38
        hash_603c083704cefb0c, // 0x39
        smg_heavy_t9, // 0x3a
        smg_fastfire_t9, // 0x3b
        lmg_light_t9, // 0x3c
        sniper_standard_t9, // 0x3d
        smg_spray_t9, // 0x3e
        ar_fasthandling_t9, // 0x3f
        ar_mobility_t9, // 0x40
        sniper_cannon_t9, // 0x41
        shotgun_semiauto_t9, // 0x42
        lmg_fastfire_t9, // 0x43
        ar_standard_t9, // 0x44
        ray_gun, // 0x45
        smg_handling_t9, // 0x46
        shotgun_fullauto_t9, // 0x47
        basketball, // 0x48
        lmg_slowfire_t9 // 0x49
    };

    // idx 0x7 members: 0x13
    enum hash_7493d39e2637c1e7 {
        bonuscard, // 0x0
        hero, // 0x1
        feature, // 0x2
        weapon_special, // 0x3
        weapon_knife, // 0x4
        character, // 0x5
        miscweapon, // 0x6
        weapon_pistol, // 0x7
        killstreak, // 0x8
        weapon_sniper, // 0x9
        talent, // 0xa
        weapon_launcher, // 0xb
        weapon_grenade, // 0xc
        weapon_lmg, // 0xd
        weapon_tactical, // 0xe
        weapon_smg, // 0xf
        hash_7b68172df6035672, // 0x10
        weapon_cqb, // 0x11
        weapon_assault // 0x12
    };

    // idx 0x8 members: 0x1e
    enum hash_d5731f85b8cf294 {
        napalm_strike_zm, // 0x0
        dart, // 0x1
        ultimate_turret, // 0x2
        counteruav, // 0x3
        recon_plane, // 0x4
        weapon_armor, // 0x5
        hoverjet, // 0x6
        remote_missile, // 0x7
        sig_lmg, // 0x8
        spy_wanted_order, // 0x9
        swat_team, // 0xa
        supplydrop_marker, // 0xb
        chopper_gunner, // 0xc
        drone_squadron, // 0xd
        overwatch_helicopter, // 0xe
        napalm_strike, // 0xf
        hero_pineapplegun, // 0x10
        ability_dog, // 0x11
        straferun, // 0x12
        recon_car, // 0x13
        uav, // 0x14
        ac130, // 0x15
        helicopter_comlink, // 0x16
        sig_bow_flame, // 0x17
        jetfighter, // 0x18
        ai_tank_marker, // 0x19
        helicopter_guard, // 0x1a
        hero_flamethrower, // 0x1b
        hero_annihilator, // 0x1c
        planemortar // 0x1d
    };

    // idx 0x9 members: 0x35
    enum hash_507792265be6dcc4 {
        ability_smart_cover, // 0x0
        hash_7a083f7ba43fa06, // 0x1
        eq_wraith_fire, // 0x2
        missile_turret, // 0x3
        eq_shroud, // 0x4
        gadget_supplypod, // 0x5
        gadget_vision_pulse, // 0x6
        waterballoon, // 0x7
        eq_arm_blade, // 0x8
        gadget_heat_wave, // 0x9
        eq_localheal, // 0xa
        gadget_medicalinjectiongun, // 0xb
        nightingale, // 0xc
        gadget_smart_cover, // 0xd
        willy_pete, // 0xe
        eq_emp_grenade, // 0xf
        frag_grenade, // 0x10
        land_mine, // 0x11
        hatchet, // 0x12
        gadget_health_regen, // 0x13
        listening_device, // 0x14
        hash_3507beb47a6b634e, // 0x15
        eq_stimshot, // 0x16
        gadget_jammer, // 0x17
        hash_3ab58e40011df941, // 0x18
        eq_sticky_grenade, // 0x19
        eq_seeker_mine, // 0x1a
        hash_4b1854c2ff5135b2, // 0x1b
        snowball, // 0x1c
        eq_concertina_wire, // 0x1d
        eq_acid_bomb, // 0x1e
        gadget_spawnbeacon, // 0x1f
        gadget_armor, // 0x20
        tomahawk_t8, // 0x21
        gadget_health_boost, // 0x22
        spectre_grenade, // 0x23
        eq_flash_grenade, // 0x24
        trophy_system, // 0x25
        eq_slow_grenade, // 0x26
        tear_gas, // 0x27
        eq_molotov, // 0x28
        gadget_cleanse, // 0x29
        satchel_charge, // 0x2a
        default_specialist_equipment, // 0x2b
        gadget_health_regen_squad, // 0x2c
        hash_76b56e7e0b3b7aac, // 0x2d
        eq_decoy_grenade, // 0x2e
        hash_788c96e19cc7a46e, // 0x2f
        claymore, // 0x30
        cymbal_monkey, // 0x31
        hash_7ab3f9a730359659, // 0x32
        gadget_icepick, // 0x33
        gadget_camo // 0x34
    };

    // idx 0xa members: 0x3c
    enum hash_1e2de876fb880be2 {
        quickdraw, // 0x0
        acog, // 0x1
        dw, // 0x2
        ir, // 0x3
        barrel2, // 0x4
        mixunder2, // 0x5
        fastreload, // 0x6
        heavy, // 0x7
        steadyaim, // 0x8
        stalker, // 0x9
        barrel, // 0xa
        mixstock, // 0xb
        smoothzoom2, // 0xc
        mixclip2, // 0xd
        reflex4, // 0xe
        reflex3, // 0xf
        reflex2, // 0x10
        stalker2, // 0x11
        extclip2, // 0x12
        tactical, // 0x13
        steadyaim2, // 0x14
        mixclip, // 0x15
        light, // 0x16
        speedgrip2, // 0x17
        mixhandle, // 0x18
        mixunder, // 0x19
        mixbarrel2, // 0x1a
        mixstock2, // 0x1b
        reddot, // 0x1c
        handle, // 0x1d
        mixmuzzle2, // 0x1e
        extclip, // 0x1f
        light2, // 0x20
        heavy2, // 0x21
        holo, // 0x22
        elo, // 0x23
        fastreload2, // 0x24
        scope3x, // 0x25
        scope4x, // 0x26
        mixhandle2, // 0x27
        compensator, // 0x28
        mixbody, // 0x29
        quickdraw2, // 0x2a
        suppressed2, // 0x2b
        speedgrip, // 0x2c
        sprintout2, // 0x2d
        suppressed, // 0x2e
        sprintout, // 0x2f
        grip2, // 0x30
        mixmuzzle, // 0x31
        handle2, // 0x32
        compensator2, // 0x33
        mixbody2, // 0x34
        dualoptic, // 0x35
        grip, // 0x36
        smoothzoom, // 0x37
        reflex, // 0x38
        mixbarrel, // 0x39
        elo3, // 0x3a
        elo2 // 0x3b
    };

    // idx 0xb members: 0x3c
    enum hash_48d8d533750ed177 {
        talent_gungho, // 0x0
        talent_engineer, // 0x1
        talent_coldblooded, // 0x2
        hash_9fb2125b3e673e5, // 0x3
        gear_armor, // 0x4
        hash_cd70e712f842296, // 0x5
        talent_tracker, // 0x6
        hash_101808cdfcd390d6, // 0x7
        hash_128256155e755170, // 0x8
        hash_16cfc7f70dbd8712, // 0x9
        talent_flakjacket, // 0xa
        talent_logistics, // 0xb
        talent_looter, // 0xc
        gadget_medicalinjectiongun, // 0xd
        hash_1d8863d0b864a48b, // 0xe
        hash_1db03fa9862ba330, // 0xf
        hash_20290a682a974c94, // 0x10
        talent_dexterity, // 0x11
        hash_249e75e962ea5275, // 0x12
        talent_resistance, // 0x13
        gear_awareness, // 0x14
        hash_2c3a32e6e2afd1f2, // 0x15
        hash_311283e3107dec74, // 0x16
        talent_lightweight, // 0x17
        talent_awareness, // 0x18
        gear_equipmentcharge, // 0x19
        hash_38c08136902fd553, // 0x1a
        hash_39045b0020cc3e00, // 0x1b
        hash_3c323c7819b10b4d, // 0x1c
        hash_3c60422123a9075b, // 0x1d
        talent_scavenger, // 0x1e
        talent_skulker, // 0x1f
        gear_scorestreakcharge, // 0x20
        talent_ghost, // 0x21
        hash_4f80a2c3398e97c9, // 0x22
        talent_elemental_pop, // 0x23
        talent_brawler, // 0x24
        talent_quartermaster, // 0x25
        hash_59dbe7f72baaa0f0, // 0x26
        hash_59dbe8f72baaa2a3, // 0x27
        hash_59dbecf72baaa96f, // 0x28
        hash_59dbedf72baaab22, // 0x29
        hash_59dbeef72baaacd5, // 0x2a
        hash_5c80935e7a319f21, // 0x2b
        talent_paranoia, // 0x2c
        talent_teamlink, // 0x2d
        talent_deadsilence, // 0x2e
        hash_646fc27884bdaa02, // 0x2f
        gear_medicalinjectiongun, // 0x30
        hash_661cd0d6fb33878c, // 0x31
        talent_spycraft, // 0x32
        hash_7321f9058ee65217, // 0x33
        hash_7716cb3888f5dd8a, // 0x34
        talent_elemental_pop_2, // 0x35
        talent_elemental_pop_3, // 0x36
        talent_elemental_pop_1, // 0x37
        talent_elemental_pop_4, // 0x38
        talent_elemental_pop_5, // 0x39
        hash_7ca561e40dc3c5de, // 0x3a
        hash_7f79d3ba6ed1a1d7 // 0x3b
    };

    // idx 0xc members: 0x6
    enum hash_66db207c660e33f3 {
        bonuscard_overkill, // 0x0
        bonuscard_underkill, // 0x1
        bonuscard_perk_1_greed, // 0x2
        hash_4a12859000892dda, // 0x3
        hash_639ebbcda56447e7, // 0x4
        bonuscard_primary_gunfighter // 0x5
    };

    // idx 0xd members: 0xf4
    enum hash_1acf39b1d1bee1d5 {
        bonuscard_overkill, // 0x0
        talent_gungho, // 0x1
        tr_fastburst_t9, // 0x2
        talent_engineer, // 0x3
        napalm_strike_zm, // 0x4
        ability_smart_cover, // 0x5
        dart, // 0x6
        ultimate_turret, // 0x7
        hash_5a7fd1af4a1d5c9, // 0x8
        hash_7a083f7ba43fa06, // 0x9
        talent_coldblooded, // 0xa
        lmg_accurate_t9, // 0xb
        melee_etool_t9, // 0xc
        ray_gun_mk2z, // 0xd
        ray_gun_mk2y, // 0xe
        ray_gun_mk2x, // 0xf
        hash_9fb2125b3e673e5, // 0x10
        sniper_powersemi_t9, // 0x11
        eq_wraith_fire, // 0x12
        gear_armor, // 0x13
        counteruav, // 0x14
        hash_cd70e712f842296, // 0x15
        talent_tracker, // 0x16
        missile_turret, // 0x17
        eq_shroud, // 0x18
        gadget_supplypod, // 0x19
        hash_101808cdfcd390d6, // 0x1a
        ar_damage_t9, // 0x1b
        homunculus, // 0x1c
        spknifeork, // 0x1d
        melee_bowie, // 0x1e
        hash_128256155e755170, // 0x1f
        ww_random_ray_gun1, // 0x20
        bonuscard_underkill, // 0x21
        recon_plane, // 0x22
        hash_16cfc7f70dbd8712, // 0x23
        bonuscard_perk_1_greed, // 0x24
        sig_buckler_dw, // 0x25
        talent_flakjacket, // 0x26
        gadget_vision_pulse, // 0x27
        waterballoon, // 0x28
        special_crossbow_t9, // 0x29
        weapon_armor, // 0x2a
        eq_arm_blade, // 0x2b
        talent_logistics, // 0x2c
        ww_blundergat_t8, // 0x2d
        gadget_heat_wave, // 0x2e
        eq_localheal, // 0x2f
        hoverjet, // 0x30
        talent_looter, // 0x31
        gadget_medicalinjectiongun, // 0x32
        hash_1d8863d0b864a48b, // 0x33
        hash_1db03fa9862ba330, // 0x34
        nightingale, // 0x35
        pistol_fullauto_t9, // 0x36
        remote_missile, // 0x37
        gadget_smart_cover, // 0x38
        hash_20290a682a974c94, // 0x39
        willy_pete, // 0x3a
        eq_emp_grenade, // 0x3b
        special_grenadelauncher_t9, // 0x3c
        melee_machete_t9, // 0x3d
        talent_dexterity, // 0x3e
        launcher_freefire_t9, // 0x3f
        hash_249e75e962ea5275, // 0x40
        ar_accurate_t9, // 0x41
        sig_lmg, // 0x42
        ww_crossbow_impaler_t8, // 0x43
        ww_freezegun_t8, // 0x44
        frag_grenade, // 0x45
        smg_cqb_t9, // 0x46
        knife_loadout, // 0x47
        feature_default_class_1, // 0x48
        feature_default_class_3, // 0x49
        feature_default_class_2, // 0x4a
        feature_default_class_5, // 0x4b
        feature_default_class_4, // 0x4c
        feature_default_class_6, // 0x4d
        talent_resistance, // 0x4e
        swat_team, // 0x4f
        gear_awareness, // 0x50
        land_mine, // 0x51
        hatchet, // 0x52
        hash_2c3a32e6e2afd1f2, // 0x53
        supplydrop_marker, // 0x54
        mute_smoke, // 0x55
        hash_2ea46ca74ebdfcac, // 0x56
        smg_capacity_t9, // 0x57
        chopper_gunner, // 0x58
        melee_baseballbat_t9, // 0x59
        hash_311283e3107dec74, // 0x5a
        null_offhand_secondary, // 0x5b
        gadget_health_regen, // 0x5c
        hash_31be8125c7d0f273, // 0x5d
        listening_device, // 0x5e
        talent_lightweight, // 0x5f
        talent_awareness, // 0x60
        spork_alcatraz, // 0x61
        drone_squadron, // 0x62
        gear_equipmentcharge, // 0x63
        pistol_semiauto_t9, // 0x64
        null_offhand_primary, // 0x65
        smg_burst_t9, // 0x66
        hash_3507beb47a6b634e, // 0x67
        pistol_revolver_t9, // 0x68
        eq_stimshot, // 0x69
        hash_38c08136902fd553, // 0x6a
        hash_39045b0020cc3e00, // 0x6b
        overwatch_helicopter, // 0x6c
        gadget_jammer, // 0x6d
        hash_3ab58e40011df941, // 0x6e
        launcher_standard_t9, // 0x6f
        hash_3c323c7819b10b4d, // 0x70
        hash_3c60422123a9075b, // 0x71
        melee_bowie_bloody, // 0x72
        eq_sticky_grenade, // 0x73
        special_ballisticknife_t9_dw, // 0x74
        ww_ieu_shockwave_t9, // 0x75
        melee_sledgehammer_t9, // 0x76
        sig_blade, // 0x77
        talent_scavenger, // 0x78
        pistol_burst_t9, // 0x79
        hash_4385cf507401820f, // 0x7a
        napalm_strike, // 0x7b
        sniper_accurate_t9, // 0x7c
        ar_fastfire_t9, // 0x7d
        melee_wakizashi_t9, // 0x7e
        hero_pineapplegun, // 0x7f
        talent_skulker, // 0x80
        hash_48206b17d50533c2, // 0x81
        sniper_quickscope_t9, // 0x82
        ability_dog, // 0x83
        straferun, // 0x84
        hash_4a12859000892dda, // 0x85
        eq_seeker_mine, // 0x86
        ww_crossbow_t8, // 0x87
        recon_car, // 0x88
        hash_4b1854c2ff5135b2, // 0x89
        snowball, // 0x8a
        feature_custom_class_9, // 0x8b
        feature_custom_class_8, // 0x8c
        feature_custom_class_3, // 0x8d
        feature_custom_class_2, // 0x8e
        feature_custom_class_1, // 0x8f
        feature_custom_class_7, // 0x90
        feature_custom_class_6, // 0x91
        feature_custom_class_5, // 0x92
        feature_custom_class_4, // 0x93
        uav, // 0x94
        eq_concertina_wire, // 0x95
        gear_scorestreakcharge, // 0x96
        feature_custom_class_10, // 0x97
        ar_slowhandling_t9, // 0x98
        eq_acid_bomb, // 0x99
        gadget_spawnbeacon, // 0x9a
        ac130, // 0x9b
        talent_ghost, // 0x9c
        hash_4f80a2c3398e97c9, // 0x9d
        tr_precisionsemi_t9, // 0x9e
        helicopter_comlink, // 0x9f
        gadget_armor, // 0xa0
        tr_damagesemi_t9, // 0xa1
        feature_cac, // 0xa2
        talent_elemental_pop, // 0xa3
        tomahawk_t8, // 0xa4
        shotgun_pump_t9, // 0xa5
        gadget_health_boost, // 0xa6
        spectre_grenade, // 0xa7
        talent_brawler, // 0xa8
        eq_flash_grenade, // 0xa9
        hash_55c23f24d806e3a6, // 0xaa
        bare_hands, // 0xab
        ar_slowfire_t9, // 0xac
        tr_powerburst_t9, // 0xad
        trophy_system, // 0xae
        talent_quartermaster, // 0xaf
        hash_59dbe7f72baaa0f0, // 0xb0
        hash_59dbe8f72baaa2a3, // 0xb1
        hash_59dbecf72baaa96f, // 0xb2
        hash_59dbedf72baaab22, // 0xb3
        hash_59dbeef72baaacd5, // 0xb4
        ray_gun_mk2, // 0xb5
        tr_longburst_t9, // 0xb6
        ww_ray_rifle_t9, // 0xb7
        smg_standard_t9, // 0xb8
        hash_5c80935e7a319f21, // 0xb9
        sig_bow_flame, // 0xba
        eq_slow_grenade, // 0xbb
        talent_paranoia, // 0xbc
        smg_accurate_t9, // 0xbd
        hash_603c083704cefb0c, // 0xbe
        jetfighter, // 0xbf
        talent_teamlink, // 0xc0
        smg_heavy_t9, // 0xc1
        talent_deadsilence, // 0xc2
        tear_gas, // 0xc3
        hash_639ebbcda56447e7, // 0xc4
        eq_molotov, // 0xc5
        smg_fastfire_t9, // 0xc6
        hash_646fc27884bdaa02, // 0xc7
        bonuscard_primary_gunfighter, // 0xc8
        lmg_light_t9, // 0xc9
        ai_tank_marker, // 0xca
        gear_medicalinjectiongun, // 0xcb
        hash_661cd0d6fb33878c, // 0xcc
        gadget_cleanse, // 0xcd
        hero_flamethrower, // 0xce
        sniper_standard_t9, // 0xcf
        smg_spray_t9, // 0xd0
        hero_annihilator, // 0xd1
        ar_fasthandling_t9, // 0xd2
        ar_mobility_t9, // 0xd3
        planemortar, // 0xd4
        sniper_cannon_t9, // 0xd5
        shotgun_semiauto_t9, // 0xd6
        lmg_fastfire_t9, // 0xd7
        ar_standard_t9, // 0xd8
        weapon_null, // 0xd9
        talent_spycraft, // 0xda
        hash_7321f9058ee65217, // 0xdb
        satchel_charge, // 0xdc
        default_specialist_equipment, // 0xdd
        gadget_health_regen_squad, // 0xde
        hash_76b56e7e0b3b7aac, // 0xdf
        eq_decoy_grenade, // 0xe0
        hash_7716cb3888f5dd8a, // 0xe1
        ray_gun, // 0xe2
        hash_788c96e19cc7a46e, // 0xe3
        claymore, // 0xe4
        talent_elemental_pop_2, // 0xe5
        talent_elemental_pop_3, // 0xe6
        talent_elemental_pop_1, // 0xe7
        talent_elemental_pop_4, // 0xe8
        talent_elemental_pop_5, // 0xe9
        smg_handling_t9, // 0xea
        cymbal_monkey, // 0xeb
        shotgun_fullauto_t9, // 0xec
        hash_7ab3f9a730359659, // 0xed
        gadget_icepick, // 0xee
        hash_7ca561e40dc3c5de, // 0xef
        basketball, // 0xf0
        gadget_camo, // 0xf1
        hash_7f79d3ba6ed1a1d7, // 0xf2
        lmg_slowfire_t9 // 0xf3
    };

    // root: bitSize: 0x1110, members: 15

    // offset: 0x0, bitSize: 0x6d8(0xdb Byte(s))
    region_info dml;
    // offset: 0x6d8, bitSize: 0x318(0x63 Byte(s)), array:0x3(hti:0xffff)
    lootcontracts loot_contracts[3];
    // offset: 0x9f0, bitSize: 0x20(0x4 Byte(s))
    uint hash_5a1a5df0cdadbba3;
    // offset: 0xa10, bitSize: 0x20(0x4 Byte(s))
    uint hash_151eef37df5ee845;
    // offset: 0xa30, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_tier_boost;
    // offset: 0xa38, bitSize: 0x8(0x1 Byte(s))
    hash_54196e9e9860f0be platform;
    // offset: 0xa40, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_party_tier_boost;
    // offset: 0xa48, bitSize: 0x20(0x4 Byte(s))
    uint hash_1e4fbbabf3da13fa;
    // offset: 0xa68, bitSize: 0x110(0x22 Byte(s)), array:0x11(hti:0xffff)
    hash_33944d215cff6222 hash_33944d215cff6222[17];
    // offset: 0xb78, bitSize: 0x4a0(0x94 Byte(s)), array:0x4a(hti:0x6)
    hash_1c86958671ff27fd hash_4953b2b12f1d6b1b[hash_4b8d95aacf149fb9];
    // offset: 0x1018, bitSize: 0xa0(0x14 Byte(s))
    client_header client;
    // offset: 0x10b8, bitSize: 0x8(0x1 Byte(s))
    byte tier_boost;
    // offset: 0x10c0, bitSize: 0x1
    bool hash_4ca91f34eba5a203;
    // offset: 0x10c1, bitSize: 0x4a, array:0x4a(hti:0x6)
    bool hash_4473319d8a8d9dcf[hash_4b8d95aacf149fb9];
};

version hash_b2ae33815424e85 {
    // enums ..... 14 (0xe)
    // structs ... 9 (0x9)
    // header bit size .. 4544 (0x11c0)
    // header byte size . 568 (0x238)

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
    struct hash_1c86958671ff27fd {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_50ab8b7df567cd2a;
    };

    // bitSize: 0x108, members: 6
    struct lootcontracts {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint xp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint contractid;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:3 contractgamemode;
        // offset: 0x48, bitSize: 0x40(0x8 Byte(s))
        xhash contracthash;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 progress;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 target;
    };

    // bitSize: 0x10, members: 3
    struct hash_33944d215cff6222 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_174d79c341ec2c6c;
        // offset: 0x8, bitSize: 0x1
        bool hash_2401d7a2dc706a6c;
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

    // idx 0x5 members: 0xb3
    enum hash_10d50fe10481423c {
        tr_fastburst_t9, // 0x0
        napalm_strike_zm, // 0x1
        ability_smart_cover, // 0x2
        dart, // 0x3
        ultimate_turret, // 0x4
        hash_5a7fd1af4a1d5c9, // 0x5
        hash_7a083f7ba43fa06, // 0x6
        lmg_accurate_t9, // 0x7
        melee_etool_t9, // 0x8
        ray_gun_mk2z, // 0x9
        ray_gun_mk2y, // 0xa
        ray_gun_mk2x, // 0xb
        sniper_powersemi_t9, // 0xc
        eq_wraith_fire, // 0xd
        counteruav, // 0xe
        missile_turret, // 0xf
        eq_shroud, // 0x10
        gadget_supplypod, // 0x11
        ar_damage_t9, // 0x12
        homunculus, // 0x13
        spknifeork, // 0x14
        melee_bowie, // 0x15
        ww_random_ray_gun1, // 0x16
        recon_plane, // 0x17
        sig_buckler_dw, // 0x18
        gadget_vision_pulse, // 0x19
        waterballoon, // 0x1a
        special_crossbow_t9, // 0x1b
        weapon_armor, // 0x1c
        eq_arm_blade, // 0x1d
        ww_blundergat_t8, // 0x1e
        gadget_heat_wave, // 0x1f
        eq_localheal, // 0x20
        hoverjet, // 0x21
        nightingale, // 0x22
        pistol_fullauto_t9, // 0x23
        remote_missile, // 0x24
        gadget_smart_cover, // 0x25
        willy_pete, // 0x26
        eq_emp_grenade, // 0x27
        special_grenadelauncher_t9, // 0x28
        melee_machete_t9, // 0x29
        launcher_freefire_t9, // 0x2a
        ar_accurate_t9, // 0x2b
        sig_lmg, // 0x2c
        ww_crossbow_impaler_t8, // 0x2d
        ww_freezegun_t8, // 0x2e
        frag_grenade, // 0x2f
        smg_cqb_t9, // 0x30
        knife_loadout, // 0x31
        feature_default_class_1, // 0x32
        feature_default_class_3, // 0x33
        feature_default_class_2, // 0x34
        feature_default_class_5, // 0x35
        feature_default_class_4, // 0x36
        feature_default_class_6, // 0x37
        spy_wanted_order, // 0x38
        swat_team, // 0x39
        land_mine, // 0x3a
        hatchet, // 0x3b
        supplydrop_marker, // 0x3c
        mute_smoke, // 0x3d
        hash_2ea46ca74ebdfcac, // 0x3e
        smg_capacity_t9, // 0x3f
        chopper_gunner, // 0x40
        melee_baseballbat_t9, // 0x41
        null_offhand_secondary, // 0x42
        gadget_health_regen, // 0x43
        hash_31be8125c7d0f273, // 0x44
        listening_device, // 0x45
        spork_alcatraz, // 0x46
        drone_squadron, // 0x47
        pistol_semiauto_t9, // 0x48
        null_offhand_primary, // 0x49
        smg_burst_t9, // 0x4a
        hash_3507beb47a6b634e, // 0x4b
        pistol_revolver_t9, // 0x4c
        eq_stimshot, // 0x4d
        overwatch_helicopter, // 0x4e
        gadget_jammer, // 0x4f
        hash_3ab58e40011df941, // 0x50
        launcher_standard_t9, // 0x51
        melee_bowie_bloody, // 0x52
        eq_sticky_grenade, // 0x53
        special_ballisticknife_t9_dw, // 0x54
        ww_ieu_shockwave_t9, // 0x55
        melee_sledgehammer_t9, // 0x56
        sig_blade, // 0x57
        pistol_burst_t9, // 0x58
        hash_4385cf507401820f, // 0x59
        napalm_strike, // 0x5a
        sniper_accurate_t9, // 0x5b
        ar_fastfire_t9, // 0x5c
        melee_wakizashi_t9, // 0x5d
        hero_pineapplegun, // 0x5e
        hash_48206b17d50533c2, // 0x5f
        sniper_quickscope_t9, // 0x60
        ability_dog, // 0x61
        straferun, // 0x62
        eq_seeker_mine, // 0x63
        ww_crossbow_t8, // 0x64
        recon_car, // 0x65
        hash_4b1854c2ff5135b2, // 0x66
        snowball, // 0x67
        feature_custom_class_9, // 0x68
        feature_custom_class_8, // 0x69
        feature_custom_class_3, // 0x6a
        feature_custom_class_2, // 0x6b
        feature_custom_class_1, // 0x6c
        feature_custom_class_7, // 0x6d
        feature_custom_class_6, // 0x6e
        feature_custom_class_5, // 0x6f
        feature_custom_class_4, // 0x70
        uav, // 0x71
        eq_concertina_wire, // 0x72
        feature_custom_class_10, // 0x73
        ar_slowhandling_t9, // 0x74
        eq_acid_bomb, // 0x75
        gadget_spawnbeacon, // 0x76
        ac130, // 0x77
        tr_precisionsemi_t9, // 0x78
        helicopter_comlink, // 0x79
        gadget_armor, // 0x7a
        tr_damagesemi_t9, // 0x7b
        feature_cac, // 0x7c
        tomahawk_t8, // 0x7d
        shotgun_pump_t9, // 0x7e
        gadget_health_boost, // 0x7f
        spectre_grenade, // 0x80
        eq_flash_grenade, // 0x81
        hash_55c23f24d806e3a6, // 0x82
        bare_hands, // 0x83
        ar_slowfire_t9, // 0x84
        tr_powerburst_t9, // 0x85
        trophy_system, // 0x86
        ray_gun_mk2, // 0x87
        tr_longburst_t9, // 0x88
        ww_ray_rifle_t9, // 0x89
        smg_standard_t9, // 0x8a
        sig_bow_flame, // 0x8b
        eq_slow_grenade, // 0x8c
        smg_accurate_t9, // 0x8d
        hash_603c083704cefb0c, // 0x8e
        jetfighter, // 0x8f
        smg_heavy_t9, // 0x90
        tear_gas, // 0x91
        eq_molotov, // 0x92
        smg_fastfire_t9, // 0x93
        lmg_light_t9, // 0x94
        ai_tank_marker, // 0x95
        gadget_cleanse, // 0x96
        hero_flamethrower, // 0x97
        sniper_standard_t9, // 0x98
        smg_spray_t9, // 0x99
        hero_annihilator, // 0x9a
        ar_fasthandling_t9, // 0x9b
        ar_mobility_t9, // 0x9c
        planemortar, // 0x9d
        sniper_cannon_t9, // 0x9e
        shotgun_semiauto_t9, // 0x9f
        lmg_fastfire_t9, // 0xa0
        ar_standard_t9, // 0xa1
        weapon_null, // 0xa2
        satchel_charge, // 0xa3
        default_specialist_equipment, // 0xa4
        gadget_health_regen_squad, // 0xa5
        hash_76b56e7e0b3b7aac, // 0xa6
        eq_decoy_grenade, // 0xa7
        ray_gun, // 0xa8
        hash_788c96e19cc7a46e, // 0xa9
        claymore, // 0xaa
        smg_handling_t9, // 0xab
        cymbal_monkey, // 0xac
        shotgun_fullauto_t9, // 0xad
        hash_7ab3f9a730359659, // 0xae
        gadget_icepick, // 0xaf
        basketball, // 0xb0
        gadget_camo, // 0xb1
        lmg_slowfire_t9 // 0xb2
    };

    // idx 0x6 members: 0x4a
    enum hash_4b8d95aacf149fb9 {
        tr_fastburst_t9, // 0x0
        lmg_accurate_t9, // 0x1
        melee_etool_t9, // 0x2
        ray_gun_mk2z, // 0x3
        ray_gun_mk2y, // 0x4
        ray_gun_mk2x, // 0x5
        sniper_powersemi_t9, // 0x6
        hash_c21b61b32a5d972, // 0x7
        ar_damage_t9, // 0x8
        homunculus, // 0x9
        spknifeork, // 0xa
        melee_bowie, // 0xb
        ww_random_ray_gun1, // 0xc
        hash_165cf52ce418f5a1, // 0xd
        special_crossbow_t9, // 0xe
        ww_blundergat_t8, // 0xf
        pistol_fullauto_t9, // 0x10
        special_grenadelauncher_t9, // 0x11
        melee_machete_t9, // 0x12
        launcher_freefire_t9, // 0x13
        ar_accurate_t9, // 0x14
        ww_crossbow_impaler_t8, // 0x15
        ww_freezegun_t8, // 0x16
        smg_cqb_t9, // 0x17
        knife_loadout, // 0x18
        hash_2ea46ca74ebdfcac, // 0x19
        smg_capacity_t9, // 0x1a
        melee_baseballbat_t9, // 0x1b
        spork_alcatraz, // 0x1c
        pistol_semiauto_t9, // 0x1d
        smg_burst_t9, // 0x1e
        pistol_revolver_t9, // 0x1f
        launcher_standard_t9, // 0x20
        melee_bowie_bloody, // 0x21
        special_ballisticknife_t9_dw, // 0x22
        ww_ieu_shockwave_t9, // 0x23
        melee_sledgehammer_t9, // 0x24
        pistol_burst_t9, // 0x25
        hash_4385cf507401820f, // 0x26
        sniper_accurate_t9, // 0x27
        ar_fastfire_t9, // 0x28
        melee_wakizashi_t9, // 0x29
        hash_48206b17d50533c2, // 0x2a
        sniper_quickscope_t9, // 0x2b
        ww_crossbow_t8, // 0x2c
        ar_slowhandling_t9, // 0x2d
        tr_precisionsemi_t9, // 0x2e
        tr_damagesemi_t9, // 0x2f
        shotgun_pump_t9, // 0x30
        hash_55c23f24d806e3a6, // 0x31
        ar_slowfire_t9, // 0x32
        tr_powerburst_t9, // 0x33
        ray_gun_mk2, // 0x34
        tr_longburst_t9, // 0x35
        ww_ray_rifle_t9, // 0x36
        smg_standard_t9, // 0x37
        smg_accurate_t9, // 0x38
        hash_603c083704cefb0c, // 0x39
        smg_heavy_t9, // 0x3a
        smg_fastfire_t9, // 0x3b
        lmg_light_t9, // 0x3c
        sniper_standard_t9, // 0x3d
        smg_spray_t9, // 0x3e
        ar_fasthandling_t9, // 0x3f
        ar_mobility_t9, // 0x40
        sniper_cannon_t9, // 0x41
        shotgun_semiauto_t9, // 0x42
        lmg_fastfire_t9, // 0x43
        ar_standard_t9, // 0x44
        ray_gun, // 0x45
        smg_handling_t9, // 0x46
        shotgun_fullauto_t9, // 0x47
        basketball, // 0x48
        lmg_slowfire_t9 // 0x49
    };

    // idx 0x7 members: 0x13
    enum hash_7493d39e2637c1e7 {
        bonuscard, // 0x0
        hero, // 0x1
        feature, // 0x2
        weapon_special, // 0x3
        weapon_knife, // 0x4
        character, // 0x5
        miscweapon, // 0x6
        weapon_pistol, // 0x7
        killstreak, // 0x8
        weapon_sniper, // 0x9
        talent, // 0xa
        weapon_launcher, // 0xb
        weapon_grenade, // 0xc
        weapon_lmg, // 0xd
        weapon_tactical, // 0xe
        weapon_smg, // 0xf
        hash_7b68172df6035672, // 0x10
        weapon_cqb, // 0x11
        weapon_assault // 0x12
    };

    // idx 0x8 members: 0x1e
    enum hash_d5731f85b8cf294 {
        napalm_strike_zm, // 0x0
        dart, // 0x1
        ultimate_turret, // 0x2
        counteruav, // 0x3
        recon_plane, // 0x4
        weapon_armor, // 0x5
        hoverjet, // 0x6
        remote_missile, // 0x7
        sig_lmg, // 0x8
        spy_wanted_order, // 0x9
        swat_team, // 0xa
        supplydrop_marker, // 0xb
        chopper_gunner, // 0xc
        drone_squadron, // 0xd
        overwatch_helicopter, // 0xe
        napalm_strike, // 0xf
        hero_pineapplegun, // 0x10
        ability_dog, // 0x11
        straferun, // 0x12
        recon_car, // 0x13
        uav, // 0x14
        ac130, // 0x15
        helicopter_comlink, // 0x16
        sig_bow_flame, // 0x17
        jetfighter, // 0x18
        ai_tank_marker, // 0x19
        helicopter_guard, // 0x1a
        hero_flamethrower, // 0x1b
        hero_annihilator, // 0x1c
        planemortar // 0x1d
    };

    // idx 0x9 members: 0x35
    enum hash_507792265be6dcc4 {
        ability_smart_cover, // 0x0
        hash_7a083f7ba43fa06, // 0x1
        eq_wraith_fire, // 0x2
        missile_turret, // 0x3
        eq_shroud, // 0x4
        gadget_supplypod, // 0x5
        gadget_vision_pulse, // 0x6
        waterballoon, // 0x7
        eq_arm_blade, // 0x8
        gadget_heat_wave, // 0x9
        eq_localheal, // 0xa
        gadget_medicalinjectiongun, // 0xb
        nightingale, // 0xc
        gadget_smart_cover, // 0xd
        willy_pete, // 0xe
        eq_emp_grenade, // 0xf
        frag_grenade, // 0x10
        land_mine, // 0x11
        hatchet, // 0x12
        gadget_health_regen, // 0x13
        listening_device, // 0x14
        hash_3507beb47a6b634e, // 0x15
        eq_stimshot, // 0x16
        gadget_jammer, // 0x17
        hash_3ab58e40011df941, // 0x18
        eq_sticky_grenade, // 0x19
        eq_seeker_mine, // 0x1a
        hash_4b1854c2ff5135b2, // 0x1b
        snowball, // 0x1c
        eq_concertina_wire, // 0x1d
        eq_acid_bomb, // 0x1e
        gadget_spawnbeacon, // 0x1f
        gadget_armor, // 0x20
        tomahawk_t8, // 0x21
        gadget_health_boost, // 0x22
        spectre_grenade, // 0x23
        eq_flash_grenade, // 0x24
        trophy_system, // 0x25
        eq_slow_grenade, // 0x26
        tear_gas, // 0x27
        eq_molotov, // 0x28
        gadget_cleanse, // 0x29
        satchel_charge, // 0x2a
        default_specialist_equipment, // 0x2b
        gadget_health_regen_squad, // 0x2c
        hash_76b56e7e0b3b7aac, // 0x2d
        eq_decoy_grenade, // 0x2e
        hash_788c96e19cc7a46e, // 0x2f
        claymore, // 0x30
        cymbal_monkey, // 0x31
        hash_7ab3f9a730359659, // 0x32
        gadget_icepick, // 0x33
        gadget_camo // 0x34
    };

    // idx 0xa members: 0x3c
    enum hash_1e2de876fb880be2 {
        quickdraw, // 0x0
        acog, // 0x1
        dw, // 0x2
        ir, // 0x3
        barrel2, // 0x4
        mixunder2, // 0x5
        fastreload, // 0x6
        heavy, // 0x7
        steadyaim, // 0x8
        stalker, // 0x9
        barrel, // 0xa
        mixstock, // 0xb
        smoothzoom2, // 0xc
        mixclip2, // 0xd
        reflex4, // 0xe
        reflex3, // 0xf
        reflex2, // 0x10
        stalker2, // 0x11
        extclip2, // 0x12
        tactical, // 0x13
        steadyaim2, // 0x14
        mixclip, // 0x15
        light, // 0x16
        speedgrip2, // 0x17
        mixhandle, // 0x18
        mixunder, // 0x19
        mixbarrel2, // 0x1a
        mixstock2, // 0x1b
        reddot, // 0x1c
        handle, // 0x1d
        mixmuzzle2, // 0x1e
        extclip, // 0x1f
        light2, // 0x20
        heavy2, // 0x21
        holo, // 0x22
        elo, // 0x23
        fastreload2, // 0x24
        scope3x, // 0x25
        scope4x, // 0x26
        mixhandle2, // 0x27
        compensator, // 0x28
        mixbody, // 0x29
        quickdraw2, // 0x2a
        suppressed2, // 0x2b
        speedgrip, // 0x2c
        sprintout2, // 0x2d
        suppressed, // 0x2e
        sprintout, // 0x2f
        grip2, // 0x30
        mixmuzzle, // 0x31
        handle2, // 0x32
        compensator2, // 0x33
        mixbody2, // 0x34
        dualoptic, // 0x35
        grip, // 0x36
        smoothzoom, // 0x37
        reflex, // 0x38
        mixbarrel, // 0x39
        elo3, // 0x3a
        elo2 // 0x3b
    };

    // idx 0xb members: 0x3c
    enum hash_48d8d533750ed177 {
        talent_gungho, // 0x0
        talent_engineer, // 0x1
        talent_coldblooded, // 0x2
        hash_9fb2125b3e673e5, // 0x3
        gear_armor, // 0x4
        hash_cd70e712f842296, // 0x5
        talent_tracker, // 0x6
        hash_101808cdfcd390d6, // 0x7
        hash_128256155e755170, // 0x8
        hash_16cfc7f70dbd8712, // 0x9
        talent_flakjacket, // 0xa
        talent_logistics, // 0xb
        talent_looter, // 0xc
        gadget_medicalinjectiongun, // 0xd
        hash_1d8863d0b864a48b, // 0xe
        hash_1db03fa9862ba330, // 0xf
        hash_20290a682a974c94, // 0x10
        talent_dexterity, // 0x11
        hash_249e75e962ea5275, // 0x12
        talent_resistance, // 0x13
        gear_awareness, // 0x14
        hash_2c3a32e6e2afd1f2, // 0x15
        hash_311283e3107dec74, // 0x16
        talent_lightweight, // 0x17
        talent_awareness, // 0x18
        gear_equipmentcharge, // 0x19
        hash_38c08136902fd553, // 0x1a
        hash_39045b0020cc3e00, // 0x1b
        hash_3c323c7819b10b4d, // 0x1c
        hash_3c60422123a9075b, // 0x1d
        talent_scavenger, // 0x1e
        talent_skulker, // 0x1f
        gear_scorestreakcharge, // 0x20
        talent_ghost, // 0x21
        hash_4f80a2c3398e97c9, // 0x22
        talent_elemental_pop, // 0x23
        talent_brawler, // 0x24
        talent_quartermaster, // 0x25
        hash_59dbe7f72baaa0f0, // 0x26
        hash_59dbe8f72baaa2a3, // 0x27
        hash_59dbecf72baaa96f, // 0x28
        hash_59dbedf72baaab22, // 0x29
        hash_59dbeef72baaacd5, // 0x2a
        hash_5c80935e7a319f21, // 0x2b
        talent_paranoia, // 0x2c
        talent_teamlink, // 0x2d
        talent_deadsilence, // 0x2e
        hash_646fc27884bdaa02, // 0x2f
        gear_medicalinjectiongun, // 0x30
        hash_661cd0d6fb33878c, // 0x31
        talent_spycraft, // 0x32
        hash_7321f9058ee65217, // 0x33
        hash_7716cb3888f5dd8a, // 0x34
        talent_elemental_pop_2, // 0x35
        talent_elemental_pop_3, // 0x36
        talent_elemental_pop_1, // 0x37
        talent_elemental_pop_4, // 0x38
        talent_elemental_pop_5, // 0x39
        hash_7ca561e40dc3c5de, // 0x3a
        hash_7f79d3ba6ed1a1d7 // 0x3b
    };

    // idx 0xc members: 0x6
    enum hash_66db207c660e33f3 {
        bonuscard_overkill, // 0x0
        bonuscard_underkill, // 0x1
        bonuscard_perk_1_greed, // 0x2
        hash_4a12859000892dda, // 0x3
        hash_639ebbcda56447e7, // 0x4
        bonuscard_primary_gunfighter // 0x5
    };

    // idx 0xd members: 0xf5
    enum hash_1acf39b1d1bee1d5 {
        bonuscard_overkill, // 0x0
        talent_gungho, // 0x1
        tr_fastburst_t9, // 0x2
        talent_engineer, // 0x3
        napalm_strike_zm, // 0x4
        ability_smart_cover, // 0x5
        dart, // 0x6
        ultimate_turret, // 0x7
        hash_5a7fd1af4a1d5c9, // 0x8
        hash_7a083f7ba43fa06, // 0x9
        talent_coldblooded, // 0xa
        lmg_accurate_t9, // 0xb
        melee_etool_t9, // 0xc
        ray_gun_mk2z, // 0xd
        ray_gun_mk2y, // 0xe
        ray_gun_mk2x, // 0xf
        hash_9fb2125b3e673e5, // 0x10
        sniper_powersemi_t9, // 0x11
        eq_wraith_fire, // 0x12
        gear_armor, // 0x13
        counteruav, // 0x14
        hash_cd70e712f842296, // 0x15
        talent_tracker, // 0x16
        missile_turret, // 0x17
        eq_shroud, // 0x18
        gadget_supplypod, // 0x19
        hash_101808cdfcd390d6, // 0x1a
        ar_damage_t9, // 0x1b
        homunculus, // 0x1c
        spknifeork, // 0x1d
        melee_bowie, // 0x1e
        hash_128256155e755170, // 0x1f
        ww_random_ray_gun1, // 0x20
        bonuscard_underkill, // 0x21
        recon_plane, // 0x22
        hash_16cfc7f70dbd8712, // 0x23
        bonuscard_perk_1_greed, // 0x24
        sig_buckler_dw, // 0x25
        talent_flakjacket, // 0x26
        gadget_vision_pulse, // 0x27
        waterballoon, // 0x28
        special_crossbow_t9, // 0x29
        weapon_armor, // 0x2a
        eq_arm_blade, // 0x2b
        talent_logistics, // 0x2c
        ww_blundergat_t8, // 0x2d
        gadget_heat_wave, // 0x2e
        eq_localheal, // 0x2f
        hoverjet, // 0x30
        talent_looter, // 0x31
        gadget_medicalinjectiongun, // 0x32
        hash_1d8863d0b864a48b, // 0x33
        hash_1db03fa9862ba330, // 0x34
        nightingale, // 0x35
        pistol_fullauto_t9, // 0x36
        remote_missile, // 0x37
        gadget_smart_cover, // 0x38
        hash_20290a682a974c94, // 0x39
        willy_pete, // 0x3a
        eq_emp_grenade, // 0x3b
        special_grenadelauncher_t9, // 0x3c
        melee_machete_t9, // 0x3d
        talent_dexterity, // 0x3e
        launcher_freefire_t9, // 0x3f
        hash_249e75e962ea5275, // 0x40
        ar_accurate_t9, // 0x41
        sig_lmg, // 0x42
        ww_crossbow_impaler_t8, // 0x43
        ww_freezegun_t8, // 0x44
        frag_grenade, // 0x45
        smg_cqb_t9, // 0x46
        knife_loadout, // 0x47
        feature_default_class_1, // 0x48
        feature_default_class_3, // 0x49
        feature_default_class_2, // 0x4a
        feature_default_class_5, // 0x4b
        feature_default_class_4, // 0x4c
        feature_default_class_6, // 0x4d
        talent_resistance, // 0x4e
        spy_wanted_order, // 0x4f
        swat_team, // 0x50
        gear_awareness, // 0x51
        land_mine, // 0x52
        hatchet, // 0x53
        hash_2c3a32e6e2afd1f2, // 0x54
        supplydrop_marker, // 0x55
        mute_smoke, // 0x56
        hash_2ea46ca74ebdfcac, // 0x57
        smg_capacity_t9, // 0x58
        chopper_gunner, // 0x59
        melee_baseballbat_t9, // 0x5a
        hash_311283e3107dec74, // 0x5b
        null_offhand_secondary, // 0x5c
        gadget_health_regen, // 0x5d
        hash_31be8125c7d0f273, // 0x5e
        listening_device, // 0x5f
        talent_lightweight, // 0x60
        talent_awareness, // 0x61
        spork_alcatraz, // 0x62
        drone_squadron, // 0x63
        gear_equipmentcharge, // 0x64
        pistol_semiauto_t9, // 0x65
        null_offhand_primary, // 0x66
        smg_burst_t9, // 0x67
        hash_3507beb47a6b634e, // 0x68
        pistol_revolver_t9, // 0x69
        eq_stimshot, // 0x6a
        hash_38c08136902fd553, // 0x6b
        hash_39045b0020cc3e00, // 0x6c
        overwatch_helicopter, // 0x6d
        gadget_jammer, // 0x6e
        hash_3ab58e40011df941, // 0x6f
        launcher_standard_t9, // 0x70
        hash_3c323c7819b10b4d, // 0x71
        hash_3c60422123a9075b, // 0x72
        melee_bowie_bloody, // 0x73
        eq_sticky_grenade, // 0x74
        special_ballisticknife_t9_dw, // 0x75
        ww_ieu_shockwave_t9, // 0x76
        melee_sledgehammer_t9, // 0x77
        sig_blade, // 0x78
        talent_scavenger, // 0x79
        pistol_burst_t9, // 0x7a
        hash_4385cf507401820f, // 0x7b
        napalm_strike, // 0x7c
        sniper_accurate_t9, // 0x7d
        ar_fastfire_t9, // 0x7e
        melee_wakizashi_t9, // 0x7f
        hero_pineapplegun, // 0x80
        talent_skulker, // 0x81
        hash_48206b17d50533c2, // 0x82
        sniper_quickscope_t9, // 0x83
        ability_dog, // 0x84
        straferun, // 0x85
        hash_4a12859000892dda, // 0x86
        eq_seeker_mine, // 0x87
        ww_crossbow_t8, // 0x88
        recon_car, // 0x89
        hash_4b1854c2ff5135b2, // 0x8a
        snowball, // 0x8b
        feature_custom_class_9, // 0x8c
        feature_custom_class_8, // 0x8d
        feature_custom_class_3, // 0x8e
        feature_custom_class_2, // 0x8f
        feature_custom_class_1, // 0x90
        feature_custom_class_7, // 0x91
        feature_custom_class_6, // 0x92
        feature_custom_class_5, // 0x93
        feature_custom_class_4, // 0x94
        uav, // 0x95
        eq_concertina_wire, // 0x96
        gear_scorestreakcharge, // 0x97
        feature_custom_class_10, // 0x98
        ar_slowhandling_t9, // 0x99
        eq_acid_bomb, // 0x9a
        gadget_spawnbeacon, // 0x9b
        ac130, // 0x9c
        talent_ghost, // 0x9d
        hash_4f80a2c3398e97c9, // 0x9e
        tr_precisionsemi_t9, // 0x9f
        helicopter_comlink, // 0xa0
        gadget_armor, // 0xa1
        tr_damagesemi_t9, // 0xa2
        feature_cac, // 0xa3
        talent_elemental_pop, // 0xa4
        tomahawk_t8, // 0xa5
        shotgun_pump_t9, // 0xa6
        gadget_health_boost, // 0xa7
        spectre_grenade, // 0xa8
        talent_brawler, // 0xa9
        eq_flash_grenade, // 0xaa
        hash_55c23f24d806e3a6, // 0xab
        bare_hands, // 0xac
        ar_slowfire_t9, // 0xad
        tr_powerburst_t9, // 0xae
        trophy_system, // 0xaf
        talent_quartermaster, // 0xb0
        hash_59dbe7f72baaa0f0, // 0xb1
        hash_59dbe8f72baaa2a3, // 0xb2
        hash_59dbecf72baaa96f, // 0xb3
        hash_59dbedf72baaab22, // 0xb4
        hash_59dbeef72baaacd5, // 0xb5
        ray_gun_mk2, // 0xb6
        tr_longburst_t9, // 0xb7
        ww_ray_rifle_t9, // 0xb8
        smg_standard_t9, // 0xb9
        hash_5c80935e7a319f21, // 0xba
        sig_bow_flame, // 0xbb
        eq_slow_grenade, // 0xbc
        talent_paranoia, // 0xbd
        smg_accurate_t9, // 0xbe
        hash_603c083704cefb0c, // 0xbf
        jetfighter, // 0xc0
        talent_teamlink, // 0xc1
        smg_heavy_t9, // 0xc2
        talent_deadsilence, // 0xc3
        tear_gas, // 0xc4
        hash_639ebbcda56447e7, // 0xc5
        eq_molotov, // 0xc6
        smg_fastfire_t9, // 0xc7
        hash_646fc27884bdaa02, // 0xc8
        bonuscard_primary_gunfighter, // 0xc9
        lmg_light_t9, // 0xca
        ai_tank_marker, // 0xcb
        gear_medicalinjectiongun, // 0xcc
        hash_661cd0d6fb33878c, // 0xcd
        gadget_cleanse, // 0xce
        hero_flamethrower, // 0xcf
        sniper_standard_t9, // 0xd0
        smg_spray_t9, // 0xd1
        hero_annihilator, // 0xd2
        ar_fasthandling_t9, // 0xd3
        ar_mobility_t9, // 0xd4
        planemortar, // 0xd5
        sniper_cannon_t9, // 0xd6
        shotgun_semiauto_t9, // 0xd7
        lmg_fastfire_t9, // 0xd8
        ar_standard_t9, // 0xd9
        weapon_null, // 0xda
        talent_spycraft, // 0xdb
        hash_7321f9058ee65217, // 0xdc
        satchel_charge, // 0xdd
        default_specialist_equipment, // 0xde
        gadget_health_regen_squad, // 0xdf
        hash_76b56e7e0b3b7aac, // 0xe0
        eq_decoy_grenade, // 0xe1
        hash_7716cb3888f5dd8a, // 0xe2
        ray_gun, // 0xe3
        hash_788c96e19cc7a46e, // 0xe4
        claymore, // 0xe5
        talent_elemental_pop_2, // 0xe6
        talent_elemental_pop_3, // 0xe7
        talent_elemental_pop_1, // 0xe8
        talent_elemental_pop_4, // 0xe9
        talent_elemental_pop_5, // 0xea
        smg_handling_t9, // 0xeb
        cymbal_monkey, // 0xec
        shotgun_fullauto_t9, // 0xed
        hash_7ab3f9a730359659, // 0xee
        gadget_icepick, // 0xef
        hash_7ca561e40dc3c5de, // 0xf0
        basketball, // 0xf1
        gadget_camo, // 0xf2
        hash_7f79d3ba6ed1a1d7, // 0xf3
        lmg_slowfire_t9 // 0xf4
    };

    // root: bitSize: 0x1110, members: 15

    // offset: 0x0, bitSize: 0x6d8(0xdb Byte(s))
    region_info dml;
    // offset: 0x6d8, bitSize: 0x318(0x63 Byte(s)), array:0x3(hti:0xffff)
    lootcontracts loot_contracts[3];
    // offset: 0x9f0, bitSize: 0x20(0x4 Byte(s))
    uint hash_5a1a5df0cdadbba3;
    // offset: 0xa10, bitSize: 0x20(0x4 Byte(s))
    uint hash_151eef37df5ee845;
    // offset: 0xa30, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_tier_boost;
    // offset: 0xa38, bitSize: 0x8(0x1 Byte(s))
    hash_54196e9e9860f0be platform;
    // offset: 0xa40, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_party_tier_boost;
    // offset: 0xa48, bitSize: 0x20(0x4 Byte(s))
    uint hash_1e4fbbabf3da13fa;
    // offset: 0xa68, bitSize: 0x110(0x22 Byte(s)), array:0x11(hti:0xffff)
    hash_33944d215cff6222 hash_33944d215cff6222[17];
    // offset: 0xb78, bitSize: 0x4a0(0x94 Byte(s)), array:0x4a(hti:0x6)
    hash_1c86958671ff27fd hash_4953b2b12f1d6b1b[hash_4b8d95aacf149fb9];
    // offset: 0x1018, bitSize: 0xa0(0x14 Byte(s))
    client_header client;
    // offset: 0x10b8, bitSize: 0x8(0x1 Byte(s))
    byte tier_boost;
    // offset: 0x10c0, bitSize: 0x1
    bool hash_4ca91f34eba5a203;
    // offset: 0x10c1, bitSize: 0x4a, array:0x4a(hti:0x6)
    bool hash_4473319d8a8d9dcf[hash_4b8d95aacf149fb9];
};

version hash_27bd1c36c54125ec {
    // enums ..... 14 (0xe)
    // structs ... 9 (0x9)
    // header bit size .. 4560 (0x11d0)
    // header byte size . 570 (0x23a)

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
    struct hash_1c86958671ff27fd {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_50ab8b7df567cd2a;
    };

    // bitSize: 0x108, members: 6
    struct lootcontracts {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint xp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint contractid;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:3 contractgamemode;
        // offset: 0x48, bitSize: 0x40(0x8 Byte(s))
        xhash contracthash;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 progress;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 target;
    };

    // bitSize: 0x10, members: 3
    struct hash_33944d215cff6222 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_174d79c341ec2c6c;
        // offset: 0x8, bitSize: 0x1
        bool hash_2401d7a2dc706a6c;
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

    // idx 0x5 members: 0xb4
    enum hash_10d50fe10481423c {
        tr_fastburst_t9, // 0x0
        napalm_strike_zm, // 0x1
        ability_smart_cover, // 0x2
        dart, // 0x3
        ultimate_turret, // 0x4
        hash_5a7fd1af4a1d5c9, // 0x5
        hash_7a083f7ba43fa06, // 0x6
        lmg_accurate_t9, // 0x7
        melee_etool_t9, // 0x8
        ray_gun_mk2z, // 0x9
        ray_gun_mk2y, // 0xa
        ray_gun_mk2x, // 0xb
        sniper_powersemi_t9, // 0xc
        eq_wraith_fire, // 0xd
        counteruav, // 0xe
        missile_turret, // 0xf
        eq_shroud, // 0x10
        gadget_supplypod, // 0x11
        ar_damage_t9, // 0x12
        homunculus, // 0x13
        spknifeork, // 0x14
        melee_bowie, // 0x15
        ww_random_ray_gun1, // 0x16
        recon_plane, // 0x17
        sig_buckler_dw, // 0x18
        gadget_vision_pulse, // 0x19
        waterballoon, // 0x1a
        special_crossbow_t9, // 0x1b
        weapon_armor, // 0x1c
        eq_arm_blade, // 0x1d
        ww_blundergat_t8, // 0x1e
        gadget_heat_wave, // 0x1f
        eq_localheal, // 0x20
        hoverjet, // 0x21
        nightingale, // 0x22
        pistol_fullauto_t9, // 0x23
        remote_missile, // 0x24
        gadget_smart_cover, // 0x25
        willy_pete, // 0x26
        eq_emp_grenade, // 0x27
        special_grenadelauncher_t9, // 0x28
        melee_machete_t9, // 0x29
        launcher_freefire_t9, // 0x2a
        ar_accurate_t9, // 0x2b
        sig_lmg, // 0x2c
        ww_crossbow_impaler_t8, // 0x2d
        ww_freezegun_t8, // 0x2e
        frag_grenade, // 0x2f
        smg_cqb_t9, // 0x30
        knife_loadout, // 0x31
        feature_default_class_1, // 0x32
        feature_default_class_3, // 0x33
        feature_default_class_2, // 0x34
        feature_default_class_5, // 0x35
        feature_default_class_4, // 0x36
        feature_default_class_6, // 0x37
        spy_wanted_order, // 0x38
        swat_team, // 0x39
        land_mine, // 0x3a
        hatchet, // 0x3b
        supplydrop_marker, // 0x3c
        mute_smoke, // 0x3d
        hash_2ea46ca74ebdfcac, // 0x3e
        smg_capacity_t9, // 0x3f
        chopper_gunner, // 0x40
        melee_baseballbat_t9, // 0x41
        null_offhand_secondary, // 0x42
        gadget_health_regen, // 0x43
        hash_31be8125c7d0f273, // 0x44
        listening_device, // 0x45
        spork_alcatraz, // 0x46
        drone_squadron, // 0x47
        pistol_semiauto_t9, // 0x48
        null_offhand_primary, // 0x49
        smg_burst_t9, // 0x4a
        hash_3507beb47a6b634e, // 0x4b
        pistol_revolver_t9, // 0x4c
        eq_stimshot, // 0x4d
        overwatch_helicopter, // 0x4e
        gadget_jammer, // 0x4f
        hash_3ab58e40011df941, // 0x50
        launcher_standard_t9, // 0x51
        melee_bowie_bloody, // 0x52
        eq_sticky_grenade, // 0x53
        special_ballisticknife_t9_dw, // 0x54
        ww_ieu_shockwave_t9, // 0x55
        melee_sledgehammer_t9, // 0x56
        sig_blade, // 0x57
        pistol_burst_t9, // 0x58
        hash_4385cf507401820f, // 0x59
        napalm_strike, // 0x5a
        sniper_accurate_t9, // 0x5b
        ar_fastfire_t9, // 0x5c
        melee_wakizashi_t9, // 0x5d
        hero_pineapplegun, // 0x5e
        hash_48206b17d50533c2, // 0x5f
        sniper_quickscope_t9, // 0x60
        ability_dog, // 0x61
        straferun, // 0x62
        eq_seeker_mine, // 0x63
        ww_crossbow_t8, // 0x64
        recon_car, // 0x65
        hash_4b1854c2ff5135b2, // 0x66
        snowball, // 0x67
        feature_custom_class_9, // 0x68
        feature_custom_class_8, // 0x69
        feature_custom_class_3, // 0x6a
        feature_custom_class_2, // 0x6b
        feature_custom_class_1, // 0x6c
        feature_custom_class_7, // 0x6d
        feature_custom_class_6, // 0x6e
        feature_custom_class_5, // 0x6f
        feature_custom_class_4, // 0x70
        uav, // 0x71
        eq_concertina_wire, // 0x72
        feature_custom_class_10, // 0x73
        ar_slowhandling_t9, // 0x74
        eq_acid_bomb, // 0x75
        gadget_spawnbeacon, // 0x76
        ac130, // 0x77
        tr_precisionsemi_t9, // 0x78
        helicopter_comlink, // 0x79
        gadget_armor, // 0x7a
        tr_damagesemi_t9, // 0x7b
        feature_cac, // 0x7c
        tomahawk_t8, // 0x7d
        shotgun_pump_t9, // 0x7e
        gadget_health_boost, // 0x7f
        spectre_grenade, // 0x80
        eq_flash_grenade, // 0x81
        hash_55c23f24d806e3a6, // 0x82
        bare_hands, // 0x83
        ar_slowfire_t9, // 0x84
        tr_powerburst_t9, // 0x85
        trophy_system, // 0x86
        ray_gun_mk2, // 0x87
        tr_longburst_t9, // 0x88
        ww_ray_rifle_t9, // 0x89
        smg_standard_t9, // 0x8a
        sig_bow_flame, // 0x8b
        eq_slow_grenade, // 0x8c
        special_nailgun_t9, // 0x8d
        smg_accurate_t9, // 0x8e
        hash_603c083704cefb0c, // 0x8f
        jetfighter, // 0x90
        smg_heavy_t9, // 0x91
        tear_gas, // 0x92
        eq_molotov, // 0x93
        smg_fastfire_t9, // 0x94
        lmg_light_t9, // 0x95
        ai_tank_marker, // 0x96
        gadget_cleanse, // 0x97
        hero_flamethrower, // 0x98
        sniper_standard_t9, // 0x99
        smg_spray_t9, // 0x9a
        hero_annihilator, // 0x9b
        ar_fasthandling_t9, // 0x9c
        ar_mobility_t9, // 0x9d
        planemortar, // 0x9e
        sniper_cannon_t9, // 0x9f
        shotgun_semiauto_t9, // 0xa0
        lmg_fastfire_t9, // 0xa1
        ar_standard_t9, // 0xa2
        weapon_null, // 0xa3
        satchel_charge, // 0xa4
        default_specialist_equipment, // 0xa5
        gadget_health_regen_squad, // 0xa6
        hash_76b56e7e0b3b7aac, // 0xa7
        eq_decoy_grenade, // 0xa8
        ray_gun, // 0xa9
        hash_788c96e19cc7a46e, // 0xaa
        claymore, // 0xab
        smg_handling_t9, // 0xac
        cymbal_monkey, // 0xad
        shotgun_fullauto_t9, // 0xae
        hash_7ab3f9a730359659, // 0xaf
        gadget_icepick, // 0xb0
        basketball, // 0xb1
        gadget_camo, // 0xb2
        lmg_slowfire_t9 // 0xb3
    };

    // idx 0x6 members: 0x4b
    enum hash_4b8d95aacf149fb9 {
        tr_fastburst_t9, // 0x0
        lmg_accurate_t9, // 0x1
        melee_etool_t9, // 0x2
        ray_gun_mk2z, // 0x3
        ray_gun_mk2y, // 0x4
        ray_gun_mk2x, // 0x5
        sniper_powersemi_t9, // 0x6
        hash_c21b61b32a5d972, // 0x7
        ar_damage_t9, // 0x8
        homunculus, // 0x9
        spknifeork, // 0xa
        melee_bowie, // 0xb
        ww_random_ray_gun1, // 0xc
        hash_165cf52ce418f5a1, // 0xd
        special_crossbow_t9, // 0xe
        ww_blundergat_t8, // 0xf
        pistol_fullauto_t9, // 0x10
        special_grenadelauncher_t9, // 0x11
        melee_machete_t9, // 0x12
        launcher_freefire_t9, // 0x13
        ar_accurate_t9, // 0x14
        ww_crossbow_impaler_t8, // 0x15
        ww_freezegun_t8, // 0x16
        smg_cqb_t9, // 0x17
        knife_loadout, // 0x18
        hash_2ea46ca74ebdfcac, // 0x19
        smg_capacity_t9, // 0x1a
        melee_baseballbat_t9, // 0x1b
        spork_alcatraz, // 0x1c
        pistol_semiauto_t9, // 0x1d
        smg_burst_t9, // 0x1e
        pistol_revolver_t9, // 0x1f
        launcher_standard_t9, // 0x20
        melee_bowie_bloody, // 0x21
        special_ballisticknife_t9_dw, // 0x22
        ww_ieu_shockwave_t9, // 0x23
        melee_sledgehammer_t9, // 0x24
        pistol_burst_t9, // 0x25
        hash_4385cf507401820f, // 0x26
        sniper_accurate_t9, // 0x27
        ar_fastfire_t9, // 0x28
        melee_wakizashi_t9, // 0x29
        hash_48206b17d50533c2, // 0x2a
        sniper_quickscope_t9, // 0x2b
        ww_crossbow_t8, // 0x2c
        ar_slowhandling_t9, // 0x2d
        tr_precisionsemi_t9, // 0x2e
        tr_damagesemi_t9, // 0x2f
        shotgun_pump_t9, // 0x30
        hash_55c23f24d806e3a6, // 0x31
        ar_slowfire_t9, // 0x32
        tr_powerburst_t9, // 0x33
        ray_gun_mk2, // 0x34
        tr_longburst_t9, // 0x35
        ww_ray_rifle_t9, // 0x36
        smg_standard_t9, // 0x37
        special_nailgun_t9, // 0x38
        smg_accurate_t9, // 0x39
        hash_603c083704cefb0c, // 0x3a
        smg_heavy_t9, // 0x3b
        smg_fastfire_t9, // 0x3c
        lmg_light_t9, // 0x3d
        sniper_standard_t9, // 0x3e
        smg_spray_t9, // 0x3f
        ar_fasthandling_t9, // 0x40
        ar_mobility_t9, // 0x41
        sniper_cannon_t9, // 0x42
        shotgun_semiauto_t9, // 0x43
        lmg_fastfire_t9, // 0x44
        ar_standard_t9, // 0x45
        ray_gun, // 0x46
        smg_handling_t9, // 0x47
        shotgun_fullauto_t9, // 0x48
        basketball, // 0x49
        lmg_slowfire_t9 // 0x4a
    };

    // idx 0x7 members: 0x13
    enum hash_7493d39e2637c1e7 {
        bonuscard, // 0x0
        hero, // 0x1
        feature, // 0x2
        weapon_special, // 0x3
        weapon_knife, // 0x4
        character, // 0x5
        miscweapon, // 0x6
        weapon_pistol, // 0x7
        killstreak, // 0x8
        weapon_sniper, // 0x9
        talent, // 0xa
        weapon_launcher, // 0xb
        weapon_grenade, // 0xc
        weapon_lmg, // 0xd
        weapon_tactical, // 0xe
        weapon_smg, // 0xf
        hash_7b68172df6035672, // 0x10
        weapon_cqb, // 0x11
        weapon_assault // 0x12
    };

    // idx 0x8 members: 0x1f
    enum hash_d5731f85b8cf294 {
        napalm_strike_zm, // 0x0
        dart, // 0x1
        ultimate_turret, // 0x2
        counteruav, // 0x3
        recon_plane, // 0x4
        weapon_armor, // 0x5
        hoverjet, // 0x6
        remote_missile, // 0x7
        spy_med_pack, // 0x8
        sig_lmg, // 0x9
        spy_wanted_order, // 0xa
        swat_team, // 0xb
        supplydrop_marker, // 0xc
        chopper_gunner, // 0xd
        drone_squadron, // 0xe
        overwatch_helicopter, // 0xf
        napalm_strike, // 0x10
        hero_pineapplegun, // 0x11
        ability_dog, // 0x12
        straferun, // 0x13
        recon_car, // 0x14
        uav, // 0x15
        ac130, // 0x16
        helicopter_comlink, // 0x17
        sig_bow_flame, // 0x18
        jetfighter, // 0x19
        ai_tank_marker, // 0x1a
        helicopter_guard, // 0x1b
        hero_flamethrower, // 0x1c
        hero_annihilator, // 0x1d
        planemortar // 0x1e
    };

    // idx 0x9 members: 0x35
    enum hash_507792265be6dcc4 {
        ability_smart_cover, // 0x0
        hash_7a083f7ba43fa06, // 0x1
        eq_wraith_fire, // 0x2
        missile_turret, // 0x3
        eq_shroud, // 0x4
        gadget_supplypod, // 0x5
        gadget_vision_pulse, // 0x6
        waterballoon, // 0x7
        eq_arm_blade, // 0x8
        gadget_heat_wave, // 0x9
        eq_localheal, // 0xa
        gadget_medicalinjectiongun, // 0xb
        nightingale, // 0xc
        gadget_smart_cover, // 0xd
        willy_pete, // 0xe
        eq_emp_grenade, // 0xf
        frag_grenade, // 0x10
        land_mine, // 0x11
        hatchet, // 0x12
        gadget_health_regen, // 0x13
        listening_device, // 0x14
        hash_3507beb47a6b634e, // 0x15
        eq_stimshot, // 0x16
        gadget_jammer, // 0x17
        hash_3ab58e40011df941, // 0x18
        eq_sticky_grenade, // 0x19
        eq_seeker_mine, // 0x1a
        hash_4b1854c2ff5135b2, // 0x1b
        snowball, // 0x1c
        eq_concertina_wire, // 0x1d
        eq_acid_bomb, // 0x1e
        gadget_spawnbeacon, // 0x1f
        gadget_armor, // 0x20
        tomahawk_t8, // 0x21
        gadget_health_boost, // 0x22
        spectre_grenade, // 0x23
        eq_flash_grenade, // 0x24
        trophy_system, // 0x25
        eq_slow_grenade, // 0x26
        tear_gas, // 0x27
        eq_molotov, // 0x28
        gadget_cleanse, // 0x29
        satchel_charge, // 0x2a
        default_specialist_equipment, // 0x2b
        gadget_health_regen_squad, // 0x2c
        hash_76b56e7e0b3b7aac, // 0x2d
        eq_decoy_grenade, // 0x2e
        hash_788c96e19cc7a46e, // 0x2f
        claymore, // 0x30
        cymbal_monkey, // 0x31
        hash_7ab3f9a730359659, // 0x32
        gadget_icepick, // 0x33
        gadget_camo // 0x34
    };

    // idx 0xa members: 0x3c
    enum hash_1e2de876fb880be2 {
        quickdraw, // 0x0
        acog, // 0x1
        dw, // 0x2
        ir, // 0x3
        barrel2, // 0x4
        mixunder2, // 0x5
        fastreload, // 0x6
        heavy, // 0x7
        steadyaim, // 0x8
        stalker, // 0x9
        barrel, // 0xa
        mixstock, // 0xb
        smoothzoom2, // 0xc
        mixclip2, // 0xd
        reflex4, // 0xe
        reflex3, // 0xf
        reflex2, // 0x10
        stalker2, // 0x11
        extclip2, // 0x12
        tactical, // 0x13
        steadyaim2, // 0x14
        mixclip, // 0x15
        light, // 0x16
        speedgrip2, // 0x17
        mixhandle, // 0x18
        mixunder, // 0x19
        mixbarrel2, // 0x1a
        mixstock2, // 0x1b
        reddot, // 0x1c
        handle, // 0x1d
        mixmuzzle2, // 0x1e
        extclip, // 0x1f
        light2, // 0x20
        heavy2, // 0x21
        holo, // 0x22
        elo, // 0x23
        fastreload2, // 0x24
        scope3x, // 0x25
        scope4x, // 0x26
        mixhandle2, // 0x27
        compensator, // 0x28
        mixbody, // 0x29
        quickdraw2, // 0x2a
        suppressed2, // 0x2b
        speedgrip, // 0x2c
        sprintout2, // 0x2d
        suppressed, // 0x2e
        sprintout, // 0x2f
        grip2, // 0x30
        mixmuzzle, // 0x31
        handle2, // 0x32
        compensator2, // 0x33
        mixbody2, // 0x34
        dualoptic, // 0x35
        grip, // 0x36
        smoothzoom, // 0x37
        reflex, // 0x38
        mixbarrel, // 0x39
        elo3, // 0x3a
        elo2 // 0x3b
    };

    // idx 0xb members: 0x3d
    enum hash_48d8d533750ed177 {
        talent_gungho, // 0x0
        talent_engineer, // 0x1
        talent_coldblooded, // 0x2
        hash_9fb2125b3e673e5, // 0x3
        gear_armor, // 0x4
        hash_cd70e712f842296, // 0x5
        talent_tracker, // 0x6
        hash_101808cdfcd390d6, // 0x7
        hash_128256155e755170, // 0x8
        hash_16cfc7f70dbd8712, // 0x9
        talent_flakjacket, // 0xa
        talent_logistics, // 0xb
        talent_looter, // 0xc
        gadget_medicalinjectiongun, // 0xd
        hash_1d8863d0b864a48b, // 0xe
        hash_1db03fa9862ba330, // 0xf
        hash_20290a682a974c94, // 0x10
        talent_dexterity, // 0x11
        hash_249e75e962ea5275, // 0x12
        talent_resistance, // 0x13
        gear_awareness, // 0x14
        hash_2c3a32e6e2afd1f2, // 0x15
        hash_311283e3107dec74, // 0x16
        talent_lightweight, // 0x17
        talent_awareness, // 0x18
        gear_equipmentcharge, // 0x19
        hash_38c08136902fd553, // 0x1a
        hash_39045b0020cc3e00, // 0x1b
        hash_3c323c7819b10b4d, // 0x1c
        hash_3c60422123a9075b, // 0x1d
        hash_3d128a65c609f1ae, // 0x1e
        talent_scavenger, // 0x1f
        talent_skulker, // 0x20
        gear_scorestreakcharge, // 0x21
        talent_ghost, // 0x22
        hash_4f80a2c3398e97c9, // 0x23
        talent_elemental_pop, // 0x24
        talent_brawler, // 0x25
        talent_quartermaster, // 0x26
        hash_59dbe7f72baaa0f0, // 0x27
        hash_59dbe8f72baaa2a3, // 0x28
        hash_59dbecf72baaa96f, // 0x29
        hash_59dbedf72baaab22, // 0x2a
        hash_59dbeef72baaacd5, // 0x2b
        hash_5c80935e7a319f21, // 0x2c
        talent_paranoia, // 0x2d
        talent_teamlink, // 0x2e
        talent_deadsilence, // 0x2f
        hash_646fc27884bdaa02, // 0x30
        gear_medicalinjectiongun, // 0x31
        hash_661cd0d6fb33878c, // 0x32
        talent_spycraft, // 0x33
        hash_7321f9058ee65217, // 0x34
        hash_7716cb3888f5dd8a, // 0x35
        talent_elemental_pop_2, // 0x36
        talent_elemental_pop_3, // 0x37
        talent_elemental_pop_1, // 0x38
        talent_elemental_pop_4, // 0x39
        talent_elemental_pop_5, // 0x3a
        hash_7ca561e40dc3c5de, // 0x3b
        hash_7f79d3ba6ed1a1d7 // 0x3c
    };

    // idx 0xc members: 0x6
    enum hash_66db207c660e33f3 {
        bonuscard_overkill, // 0x0
        bonuscard_underkill, // 0x1
        bonuscard_perk_1_greed, // 0x2
        hash_4a12859000892dda, // 0x3
        hash_639ebbcda56447e7, // 0x4
        bonuscard_primary_gunfighter // 0x5
    };

    // idx 0xd members: 0xf7
    enum hash_1acf39b1d1bee1d5 {
        bonuscard_overkill, // 0x0
        talent_gungho, // 0x1
        tr_fastburst_t9, // 0x2
        talent_engineer, // 0x3
        napalm_strike_zm, // 0x4
        ability_smart_cover, // 0x5
        dart, // 0x6
        ultimate_turret, // 0x7
        hash_5a7fd1af4a1d5c9, // 0x8
        hash_7a083f7ba43fa06, // 0x9
        talent_coldblooded, // 0xa
        lmg_accurate_t9, // 0xb
        melee_etool_t9, // 0xc
        ray_gun_mk2z, // 0xd
        ray_gun_mk2y, // 0xe
        ray_gun_mk2x, // 0xf
        hash_9fb2125b3e673e5, // 0x10
        sniper_powersemi_t9, // 0x11
        eq_wraith_fire, // 0x12
        gear_armor, // 0x13
        counteruav, // 0x14
        hash_cd70e712f842296, // 0x15
        talent_tracker, // 0x16
        missile_turret, // 0x17
        eq_shroud, // 0x18
        gadget_supplypod, // 0x19
        hash_101808cdfcd390d6, // 0x1a
        ar_damage_t9, // 0x1b
        homunculus, // 0x1c
        spknifeork, // 0x1d
        melee_bowie, // 0x1e
        hash_128256155e755170, // 0x1f
        ww_random_ray_gun1, // 0x20
        bonuscard_underkill, // 0x21
        recon_plane, // 0x22
        hash_16cfc7f70dbd8712, // 0x23
        bonuscard_perk_1_greed, // 0x24
        sig_buckler_dw, // 0x25
        talent_flakjacket, // 0x26
        gadget_vision_pulse, // 0x27
        waterballoon, // 0x28
        special_crossbow_t9, // 0x29
        weapon_armor, // 0x2a
        eq_arm_blade, // 0x2b
        talent_logistics, // 0x2c
        ww_blundergat_t8, // 0x2d
        gadget_heat_wave, // 0x2e
        eq_localheal, // 0x2f
        hoverjet, // 0x30
        talent_looter, // 0x31
        gadget_medicalinjectiongun, // 0x32
        hash_1d8863d0b864a48b, // 0x33
        hash_1db03fa9862ba330, // 0x34
        nightingale, // 0x35
        pistol_fullauto_t9, // 0x36
        remote_missile, // 0x37
        gadget_smart_cover, // 0x38
        hash_20290a682a974c94, // 0x39
        willy_pete, // 0x3a
        eq_emp_grenade, // 0x3b
        special_grenadelauncher_t9, // 0x3c
        melee_machete_t9, // 0x3d
        talent_dexterity, // 0x3e
        launcher_freefire_t9, // 0x3f
        hash_249e75e962ea5275, // 0x40
        ar_accurate_t9, // 0x41
        sig_lmg, // 0x42
        ww_crossbow_impaler_t8, // 0x43
        ww_freezegun_t8, // 0x44
        frag_grenade, // 0x45
        smg_cqb_t9, // 0x46
        knife_loadout, // 0x47
        feature_default_class_1, // 0x48
        feature_default_class_3, // 0x49
        feature_default_class_2, // 0x4a
        feature_default_class_5, // 0x4b
        feature_default_class_4, // 0x4c
        feature_default_class_6, // 0x4d
        talent_resistance, // 0x4e
        spy_wanted_order, // 0x4f
        swat_team, // 0x50
        gear_awareness, // 0x51
        land_mine, // 0x52
        hatchet, // 0x53
        hash_2c3a32e6e2afd1f2, // 0x54
        supplydrop_marker, // 0x55
        mute_smoke, // 0x56
        hash_2ea46ca74ebdfcac, // 0x57
        smg_capacity_t9, // 0x58
        chopper_gunner, // 0x59
        melee_baseballbat_t9, // 0x5a
        hash_311283e3107dec74, // 0x5b
        null_offhand_secondary, // 0x5c
        gadget_health_regen, // 0x5d
        hash_31be8125c7d0f273, // 0x5e
        listening_device, // 0x5f
        talent_lightweight, // 0x60
        talent_awareness, // 0x61
        spork_alcatraz, // 0x62
        drone_squadron, // 0x63
        gear_equipmentcharge, // 0x64
        pistol_semiauto_t9, // 0x65
        null_offhand_primary, // 0x66
        smg_burst_t9, // 0x67
        hash_3507beb47a6b634e, // 0x68
        pistol_revolver_t9, // 0x69
        eq_stimshot, // 0x6a
        hash_38c08136902fd553, // 0x6b
        hash_39045b0020cc3e00, // 0x6c
        overwatch_helicopter, // 0x6d
        gadget_jammer, // 0x6e
        hash_3ab58e40011df941, // 0x6f
        launcher_standard_t9, // 0x70
        hash_3c323c7819b10b4d, // 0x71
        hash_3c60422123a9075b, // 0x72
        melee_bowie_bloody, // 0x73
        hash_3d128a65c609f1ae, // 0x74
        eq_sticky_grenade, // 0x75
        special_ballisticknife_t9_dw, // 0x76
        ww_ieu_shockwave_t9, // 0x77
        melee_sledgehammer_t9, // 0x78
        sig_blade, // 0x79
        talent_scavenger, // 0x7a
        pistol_burst_t9, // 0x7b
        hash_4385cf507401820f, // 0x7c
        napalm_strike, // 0x7d
        sniper_accurate_t9, // 0x7e
        ar_fastfire_t9, // 0x7f
        melee_wakizashi_t9, // 0x80
        hero_pineapplegun, // 0x81
        talent_skulker, // 0x82
        hash_48206b17d50533c2, // 0x83
        sniper_quickscope_t9, // 0x84
        ability_dog, // 0x85
        straferun, // 0x86
        hash_4a12859000892dda, // 0x87
        eq_seeker_mine, // 0x88
        ww_crossbow_t8, // 0x89
        recon_car, // 0x8a
        hash_4b1854c2ff5135b2, // 0x8b
        snowball, // 0x8c
        feature_custom_class_9, // 0x8d
        feature_custom_class_8, // 0x8e
        feature_custom_class_3, // 0x8f
        feature_custom_class_2, // 0x90
        feature_custom_class_1, // 0x91
        feature_custom_class_7, // 0x92
        feature_custom_class_6, // 0x93
        feature_custom_class_5, // 0x94
        feature_custom_class_4, // 0x95
        uav, // 0x96
        eq_concertina_wire, // 0x97
        gear_scorestreakcharge, // 0x98
        feature_custom_class_10, // 0x99
        ar_slowhandling_t9, // 0x9a
        eq_acid_bomb, // 0x9b
        gadget_spawnbeacon, // 0x9c
        ac130, // 0x9d
        talent_ghost, // 0x9e
        hash_4f80a2c3398e97c9, // 0x9f
        tr_precisionsemi_t9, // 0xa0
        helicopter_comlink, // 0xa1
        gadget_armor, // 0xa2
        tr_damagesemi_t9, // 0xa3
        feature_cac, // 0xa4
        talent_elemental_pop, // 0xa5
        tomahawk_t8, // 0xa6
        shotgun_pump_t9, // 0xa7
        gadget_health_boost, // 0xa8
        spectre_grenade, // 0xa9
        talent_brawler, // 0xaa
        eq_flash_grenade, // 0xab
        hash_55c23f24d806e3a6, // 0xac
        bare_hands, // 0xad
        ar_slowfire_t9, // 0xae
        tr_powerburst_t9, // 0xaf
        trophy_system, // 0xb0
        talent_quartermaster, // 0xb1
        hash_59dbe7f72baaa0f0, // 0xb2
        hash_59dbe8f72baaa2a3, // 0xb3
        hash_59dbecf72baaa96f, // 0xb4
        hash_59dbedf72baaab22, // 0xb5
        hash_59dbeef72baaacd5, // 0xb6
        ray_gun_mk2, // 0xb7
        tr_longburst_t9, // 0xb8
        ww_ray_rifle_t9, // 0xb9
        smg_standard_t9, // 0xba
        hash_5c80935e7a319f21, // 0xbb
        sig_bow_flame, // 0xbc
        eq_slow_grenade, // 0xbd
        talent_paranoia, // 0xbe
        special_nailgun_t9, // 0xbf
        smg_accurate_t9, // 0xc0
        hash_603c083704cefb0c, // 0xc1
        jetfighter, // 0xc2
        talent_teamlink, // 0xc3
        smg_heavy_t9, // 0xc4
        talent_deadsilence, // 0xc5
        tear_gas, // 0xc6
        hash_639ebbcda56447e7, // 0xc7
        eq_molotov, // 0xc8
        smg_fastfire_t9, // 0xc9
        hash_646fc27884bdaa02, // 0xca
        bonuscard_primary_gunfighter, // 0xcb
        lmg_light_t9, // 0xcc
        ai_tank_marker, // 0xcd
        gear_medicalinjectiongun, // 0xce
        hash_661cd0d6fb33878c, // 0xcf
        gadget_cleanse, // 0xd0
        hero_flamethrower, // 0xd1
        sniper_standard_t9, // 0xd2
        smg_spray_t9, // 0xd3
        hero_annihilator, // 0xd4
        ar_fasthandling_t9, // 0xd5
        ar_mobility_t9, // 0xd6
        planemortar, // 0xd7
        sniper_cannon_t9, // 0xd8
        shotgun_semiauto_t9, // 0xd9
        lmg_fastfire_t9, // 0xda
        ar_standard_t9, // 0xdb
        weapon_null, // 0xdc
        talent_spycraft, // 0xdd
        hash_7321f9058ee65217, // 0xde
        satchel_charge, // 0xdf
        default_specialist_equipment, // 0xe0
        gadget_health_regen_squad, // 0xe1
        hash_76b56e7e0b3b7aac, // 0xe2
        eq_decoy_grenade, // 0xe3
        hash_7716cb3888f5dd8a, // 0xe4
        ray_gun, // 0xe5
        hash_788c96e19cc7a46e, // 0xe6
        claymore, // 0xe7
        talent_elemental_pop_2, // 0xe8
        talent_elemental_pop_3, // 0xe9
        talent_elemental_pop_1, // 0xea
        talent_elemental_pop_4, // 0xeb
        talent_elemental_pop_5, // 0xec
        smg_handling_t9, // 0xed
        cymbal_monkey, // 0xee
        shotgun_fullauto_t9, // 0xef
        hash_7ab3f9a730359659, // 0xf0
        gadget_icepick, // 0xf1
        hash_7ca561e40dc3c5de, // 0xf2
        basketball, // 0xf3
        gadget_camo, // 0xf4
        hash_7f79d3ba6ed1a1d7, // 0xf5
        lmg_slowfire_t9 // 0xf6
    };

    // root: bitSize: 0x1120, members: 15

    // offset: 0x0, bitSize: 0x6d8(0xdb Byte(s))
    region_info dml;
    // offset: 0x6d8, bitSize: 0x318(0x63 Byte(s)), array:0x3(hti:0xffff)
    lootcontracts loot_contracts[3];
    // offset: 0x9f0, bitSize: 0x20(0x4 Byte(s))
    uint hash_5a1a5df0cdadbba3;
    // offset: 0xa10, bitSize: 0x20(0x4 Byte(s))
    uint hash_151eef37df5ee845;
    // offset: 0xa30, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_tier_boost;
    // offset: 0xa38, bitSize: 0x8(0x1 Byte(s))
    hash_54196e9e9860f0be platform;
    // offset: 0xa40, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_party_tier_boost;
    // offset: 0xa48, bitSize: 0x20(0x4 Byte(s))
    uint hash_1e4fbbabf3da13fa;
    // offset: 0xa68, bitSize: 0x110(0x22 Byte(s)), array:0x11(hti:0xffff)
    hash_33944d215cff6222 hash_33944d215cff6222[17];
    // offset: 0xb78, bitSize: 0x4b0(0x96 Byte(s)), array:0x4b(hti:0x6)
    hash_1c86958671ff27fd hash_4953b2b12f1d6b1b[hash_4b8d95aacf149fb9];
    // offset: 0x1028, bitSize: 0xa0(0x14 Byte(s))
    client_header client;
    // offset: 0x10c8, bitSize: 0x8(0x1 Byte(s))
    byte tier_boost;
    // offset: 0x10d0, bitSize: 0x1
    bool hash_4ca91f34eba5a203;
    // offset: 0x10d1, bitSize: 0x4b, array:0x4b(hti:0x6)
    bool hash_4473319d8a8d9dcf[hash_4b8d95aacf149fb9];
};

version hash_ed62ccf1bed1dc95 {
    // enums ..... 14 (0xe)
    // structs ... 9 (0x9)
    // header bit size .. 4560 (0x11d0)
    // header byte size . 570 (0x23a)

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
    struct hash_1c86958671ff27fd {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_50ab8b7df567cd2a;
    };

    // bitSize: 0x108, members: 6
    struct lootcontracts {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint xp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint contractid;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:3 contractgamemode;
        // offset: 0x48, bitSize: 0x40(0x8 Byte(s))
        xhash contracthash;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 progress;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 target;
    };

    // bitSize: 0x10, members: 3
    struct hash_33944d215cff6222 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_174d79c341ec2c6c;
        // offset: 0x8, bitSize: 0x1
        bool hash_2401d7a2dc706a6c;
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

    // idx 0x5 members: 0xb5
    enum hash_10d50fe10481423c {
        tr_fastburst_t9, // 0x0
        napalm_strike_zm, // 0x1
        ability_smart_cover, // 0x2
        dart, // 0x3
        ultimate_turret, // 0x4
        hash_5a7fd1af4a1d5c9, // 0x5
        hash_7a083f7ba43fa06, // 0x6
        lmg_accurate_t9, // 0x7
        melee_etool_t9, // 0x8
        ray_gun_mk2z, // 0x9
        ray_gun_mk2y, // 0xa
        ray_gun_mk2x, // 0xb
        sniper_powersemi_t9, // 0xc
        eq_wraith_fire, // 0xd
        counteruav, // 0xe
        missile_turret, // 0xf
        eq_shroud, // 0x10
        gadget_supplypod, // 0x11
        ar_damage_t9, // 0x12
        homunculus, // 0x13
        spknifeork, // 0x14
        melee_bowie, // 0x15
        ww_random_ray_gun1, // 0x16
        recon_plane, // 0x17
        sig_buckler_dw, // 0x18
        gadget_vision_pulse, // 0x19
        waterballoon, // 0x1a
        special_crossbow_t9, // 0x1b
        weapon_armor, // 0x1c
        eq_arm_blade, // 0x1d
        ww_blundergat_t8, // 0x1e
        gadget_heat_wave, // 0x1f
        eq_localheal, // 0x20
        hoverjet, // 0x21
        nightingale, // 0x22
        pistol_fullauto_t9, // 0x23
        remote_missile, // 0x24
        gadget_smart_cover, // 0x25
        willy_pete, // 0x26
        eq_emp_grenade, // 0x27
        special_grenadelauncher_t9, // 0x28
        melee_machete_t9, // 0x29
        launcher_freefire_t9, // 0x2a
        ar_accurate_t9, // 0x2b
        sig_lmg, // 0x2c
        ww_crossbow_impaler_t8, // 0x2d
        ww_freezegun_t8, // 0x2e
        frag_grenade, // 0x2f
        smg_cqb_t9, // 0x30
        knife_loadout, // 0x31
        feature_default_class_1, // 0x32
        feature_default_class_3, // 0x33
        feature_default_class_2, // 0x34
        feature_default_class_5, // 0x35
        feature_default_class_4, // 0x36
        feature_default_class_6, // 0x37
        spy_wanted_order, // 0x38
        swat_team, // 0x39
        land_mine, // 0x3a
        hatchet, // 0x3b
        supplydrop_marker, // 0x3c
        mute_smoke, // 0x3d
        hash_2ea46ca74ebdfcac, // 0x3e
        smg_capacity_t9, // 0x3f
        chopper_gunner, // 0x40
        melee_baseballbat_t9, // 0x41
        null_offhand_secondary, // 0x42
        gadget_health_regen, // 0x43
        hash_31be8125c7d0f273, // 0x44
        listening_device, // 0x45
        spork_alcatraz, // 0x46
        drone_squadron, // 0x47
        pistol_semiauto_t9, // 0x48
        null_offhand_primary, // 0x49
        smg_burst_t9, // 0x4a
        hash_3507beb47a6b634e, // 0x4b
        pistol_revolver_t9, // 0x4c
        eq_stimshot, // 0x4d
        overwatch_helicopter, // 0x4e
        gadget_jammer, // 0x4f
        hash_3ab58e40011df941, // 0x50
        launcher_standard_t9, // 0x51
        melee_bowie_bloody, // 0x52
        eq_sticky_grenade, // 0x53
        special_ballisticknife_t9_dw, // 0x54
        ww_ieu_shockwave_t9, // 0x55
        melee_sledgehammer_t9, // 0x56
        sig_blade, // 0x57
        pistol_burst_t9, // 0x58
        hash_4385cf507401820f, // 0x59
        napalm_strike, // 0x5a
        sniper_accurate_t9, // 0x5b
        ar_fastfire_t9, // 0x5c
        melee_wakizashi_t9, // 0x5d
        hero_pineapplegun, // 0x5e
        hash_48206b17d50533c2, // 0x5f
        sniper_quickscope_t9, // 0x60
        ability_dog, // 0x61
        straferun, // 0x62
        eq_seeker_mine, // 0x63
        ww_crossbow_t8, // 0x64
        recon_car, // 0x65
        hash_4b1854c2ff5135b2, // 0x66
        snowball, // 0x67
        feature_custom_class_9, // 0x68
        feature_custom_class_8, // 0x69
        feature_custom_class_3, // 0x6a
        feature_custom_class_2, // 0x6b
        feature_custom_class_1, // 0x6c
        feature_custom_class_7, // 0x6d
        feature_custom_class_6, // 0x6e
        feature_custom_class_5, // 0x6f
        feature_custom_class_4, // 0x70
        uav, // 0x71
        eq_concertina_wire, // 0x72
        feature_custom_class_10, // 0x73
        ar_slowhandling_t9, // 0x74
        eq_acid_bomb, // 0x75
        gadget_spawnbeacon, // 0x76
        ac130, // 0x77
        tr_precisionsemi_t9, // 0x78
        helicopter_comlink, // 0x79
        gadget_armor, // 0x7a
        tr_damagesemi_t9, // 0x7b
        feature_cac, // 0x7c
        tomahawk_t8, // 0x7d
        shotgun_pump_t9, // 0x7e
        gadget_health_boost, // 0x7f
        spectre_grenade, // 0x80
        eq_flash_grenade, // 0x81
        hash_55c23f24d806e3a6, // 0x82
        bare_hands, // 0x83
        ar_slowfire_t9, // 0x84
        tr_powerburst_t9, // 0x85
        trophy_system, // 0x86
        ray_gun_mk2, // 0x87
        tr_longburst_t9, // 0x88
        nuke, // 0x89
        ww_ray_rifle_t9, // 0x8a
        smg_standard_t9, // 0x8b
        sig_bow_flame, // 0x8c
        eq_slow_grenade, // 0x8d
        special_nailgun_t9, // 0x8e
        smg_accurate_t9, // 0x8f
        hash_603c083704cefb0c, // 0x90
        jetfighter, // 0x91
        smg_heavy_t9, // 0x92
        tear_gas, // 0x93
        eq_molotov, // 0x94
        smg_fastfire_t9, // 0x95
        lmg_light_t9, // 0x96
        ai_tank_marker, // 0x97
        gadget_cleanse, // 0x98
        hero_flamethrower, // 0x99
        sniper_standard_t9, // 0x9a
        smg_spray_t9, // 0x9b
        hero_annihilator, // 0x9c
        ar_fasthandling_t9, // 0x9d
        ar_mobility_t9, // 0x9e
        planemortar, // 0x9f
        sniper_cannon_t9, // 0xa0
        shotgun_semiauto_t9, // 0xa1
        lmg_fastfire_t9, // 0xa2
        ar_standard_t9, // 0xa3
        weapon_null, // 0xa4
        satchel_charge, // 0xa5
        default_specialist_equipment, // 0xa6
        gadget_health_regen_squad, // 0xa7
        hash_76b56e7e0b3b7aac, // 0xa8
        eq_decoy_grenade, // 0xa9
        ray_gun, // 0xaa
        hash_788c96e19cc7a46e, // 0xab
        claymore, // 0xac
        smg_handling_t9, // 0xad
        cymbal_monkey, // 0xae
        shotgun_fullauto_t9, // 0xaf
        hash_7ab3f9a730359659, // 0xb0
        gadget_icepick, // 0xb1
        basketball, // 0xb2
        gadget_camo, // 0xb3
        lmg_slowfire_t9 // 0xb4
    };

    // idx 0x6 members: 0x4b
    enum hash_4b8d95aacf149fb9 {
        tr_fastburst_t9, // 0x0
        lmg_accurate_t9, // 0x1
        melee_etool_t9, // 0x2
        ray_gun_mk2z, // 0x3
        ray_gun_mk2y, // 0x4
        ray_gun_mk2x, // 0x5
        sniper_powersemi_t9, // 0x6
        hash_c21b61b32a5d972, // 0x7
        ar_damage_t9, // 0x8
        homunculus, // 0x9
        spknifeork, // 0xa
        melee_bowie, // 0xb
        ww_random_ray_gun1, // 0xc
        hash_165cf52ce418f5a1, // 0xd
        special_crossbow_t9, // 0xe
        ww_blundergat_t8, // 0xf
        pistol_fullauto_t9, // 0x10
        special_grenadelauncher_t9, // 0x11
        melee_machete_t9, // 0x12
        launcher_freefire_t9, // 0x13
        ar_accurate_t9, // 0x14
        ww_crossbow_impaler_t8, // 0x15
        ww_freezegun_t8, // 0x16
        smg_cqb_t9, // 0x17
        knife_loadout, // 0x18
        hash_2ea46ca74ebdfcac, // 0x19
        smg_capacity_t9, // 0x1a
        melee_baseballbat_t9, // 0x1b
        spork_alcatraz, // 0x1c
        pistol_semiauto_t9, // 0x1d
        smg_burst_t9, // 0x1e
        pistol_revolver_t9, // 0x1f
        launcher_standard_t9, // 0x20
        melee_bowie_bloody, // 0x21
        special_ballisticknife_t9_dw, // 0x22
        ww_ieu_shockwave_t9, // 0x23
        melee_sledgehammer_t9, // 0x24
        pistol_burst_t9, // 0x25
        hash_4385cf507401820f, // 0x26
        sniper_accurate_t9, // 0x27
        ar_fastfire_t9, // 0x28
        melee_wakizashi_t9, // 0x29
        hash_48206b17d50533c2, // 0x2a
        sniper_quickscope_t9, // 0x2b
        ww_crossbow_t8, // 0x2c
        ar_slowhandling_t9, // 0x2d
        tr_precisionsemi_t9, // 0x2e
        tr_damagesemi_t9, // 0x2f
        shotgun_pump_t9, // 0x30
        hash_55c23f24d806e3a6, // 0x31
        ar_slowfire_t9, // 0x32
        tr_powerburst_t9, // 0x33
        ray_gun_mk2, // 0x34
        tr_longburst_t9, // 0x35
        ww_ray_rifle_t9, // 0x36
        smg_standard_t9, // 0x37
        special_nailgun_t9, // 0x38
        smg_accurate_t9, // 0x39
        hash_603c083704cefb0c, // 0x3a
        smg_heavy_t9, // 0x3b
        smg_fastfire_t9, // 0x3c
        lmg_light_t9, // 0x3d
        sniper_standard_t9, // 0x3e
        smg_spray_t9, // 0x3f
        ar_fasthandling_t9, // 0x40
        ar_mobility_t9, // 0x41
        sniper_cannon_t9, // 0x42
        shotgun_semiauto_t9, // 0x43
        lmg_fastfire_t9, // 0x44
        ar_standard_t9, // 0x45
        ray_gun, // 0x46
        smg_handling_t9, // 0x47
        shotgun_fullauto_t9, // 0x48
        basketball, // 0x49
        lmg_slowfire_t9 // 0x4a
    };

    // idx 0x7 members: 0x13
    enum hash_7493d39e2637c1e7 {
        bonuscard, // 0x0
        hero, // 0x1
        feature, // 0x2
        weapon_special, // 0x3
        weapon_knife, // 0x4
        character, // 0x5
        miscweapon, // 0x6
        weapon_pistol, // 0x7
        killstreak, // 0x8
        weapon_sniper, // 0x9
        talent, // 0xa
        weapon_launcher, // 0xb
        weapon_grenade, // 0xc
        weapon_lmg, // 0xd
        weapon_tactical, // 0xe
        weapon_smg, // 0xf
        hash_7b68172df6035672, // 0x10
        weapon_cqb, // 0x11
        weapon_assault // 0x12
    };

    // idx 0x8 members: 0x20
    enum hash_d5731f85b8cf294 {
        napalm_strike_zm, // 0x0
        dart, // 0x1
        ultimate_turret, // 0x2
        counteruav, // 0x3
        recon_plane, // 0x4
        weapon_armor, // 0x5
        hoverjet, // 0x6
        remote_missile, // 0x7
        spy_med_pack, // 0x8
        sig_lmg, // 0x9
        spy_wanted_order, // 0xa
        swat_team, // 0xb
        supplydrop_marker, // 0xc
        chopper_gunner, // 0xd
        drone_squadron, // 0xe
        overwatch_helicopter, // 0xf
        napalm_strike, // 0x10
        hero_pineapplegun, // 0x11
        ability_dog, // 0x12
        straferun, // 0x13
        recon_car, // 0x14
        uav, // 0x15
        ac130, // 0x16
        helicopter_comlink, // 0x17
        nuke, // 0x18
        sig_bow_flame, // 0x19
        jetfighter, // 0x1a
        ai_tank_marker, // 0x1b
        helicopter_guard, // 0x1c
        hero_flamethrower, // 0x1d
        hero_annihilator, // 0x1e
        planemortar // 0x1f
    };

    // idx 0x9 members: 0x35
    enum hash_507792265be6dcc4 {
        ability_smart_cover, // 0x0
        hash_7a083f7ba43fa06, // 0x1
        eq_wraith_fire, // 0x2
        missile_turret, // 0x3
        eq_shroud, // 0x4
        gadget_supplypod, // 0x5
        gadget_vision_pulse, // 0x6
        waterballoon, // 0x7
        eq_arm_blade, // 0x8
        gadget_heat_wave, // 0x9
        eq_localheal, // 0xa
        gadget_medicalinjectiongun, // 0xb
        nightingale, // 0xc
        gadget_smart_cover, // 0xd
        willy_pete, // 0xe
        eq_emp_grenade, // 0xf
        frag_grenade, // 0x10
        land_mine, // 0x11
        hatchet, // 0x12
        gadget_health_regen, // 0x13
        listening_device, // 0x14
        hash_3507beb47a6b634e, // 0x15
        eq_stimshot, // 0x16
        gadget_jammer, // 0x17
        hash_3ab58e40011df941, // 0x18
        eq_sticky_grenade, // 0x19
        eq_seeker_mine, // 0x1a
        hash_4b1854c2ff5135b2, // 0x1b
        snowball, // 0x1c
        eq_concertina_wire, // 0x1d
        eq_acid_bomb, // 0x1e
        gadget_spawnbeacon, // 0x1f
        gadget_armor, // 0x20
        tomahawk_t8, // 0x21
        gadget_health_boost, // 0x22
        spectre_grenade, // 0x23
        eq_flash_grenade, // 0x24
        trophy_system, // 0x25
        eq_slow_grenade, // 0x26
        tear_gas, // 0x27
        eq_molotov, // 0x28
        gadget_cleanse, // 0x29
        satchel_charge, // 0x2a
        default_specialist_equipment, // 0x2b
        gadget_health_regen_squad, // 0x2c
        hash_76b56e7e0b3b7aac, // 0x2d
        eq_decoy_grenade, // 0x2e
        hash_788c96e19cc7a46e, // 0x2f
        claymore, // 0x30
        cymbal_monkey, // 0x31
        hash_7ab3f9a730359659, // 0x32
        gadget_icepick, // 0x33
        gadget_camo // 0x34
    };

    // idx 0xa members: 0x3c
    enum hash_1e2de876fb880be2 {
        quickdraw, // 0x0
        acog, // 0x1
        dw, // 0x2
        ir, // 0x3
        barrel2, // 0x4
        mixunder2, // 0x5
        fastreload, // 0x6
        heavy, // 0x7
        steadyaim, // 0x8
        stalker, // 0x9
        barrel, // 0xa
        mixstock, // 0xb
        smoothzoom2, // 0xc
        mixclip2, // 0xd
        reflex4, // 0xe
        reflex3, // 0xf
        reflex2, // 0x10
        stalker2, // 0x11
        extclip2, // 0x12
        tactical, // 0x13
        steadyaim2, // 0x14
        mixclip, // 0x15
        light, // 0x16
        speedgrip2, // 0x17
        mixhandle, // 0x18
        mixunder, // 0x19
        mixbarrel2, // 0x1a
        mixstock2, // 0x1b
        reddot, // 0x1c
        handle, // 0x1d
        mixmuzzle2, // 0x1e
        extclip, // 0x1f
        light2, // 0x20
        heavy2, // 0x21
        holo, // 0x22
        elo, // 0x23
        fastreload2, // 0x24
        scope3x, // 0x25
        scope4x, // 0x26
        mixhandle2, // 0x27
        compensator, // 0x28
        mixbody, // 0x29
        quickdraw2, // 0x2a
        suppressed2, // 0x2b
        speedgrip, // 0x2c
        sprintout2, // 0x2d
        suppressed, // 0x2e
        sprintout, // 0x2f
        grip2, // 0x30
        mixmuzzle, // 0x31
        handle2, // 0x32
        compensator2, // 0x33
        mixbody2, // 0x34
        dualoptic, // 0x35
        grip, // 0x36
        smoothzoom, // 0x37
        reflex, // 0x38
        mixbarrel, // 0x39
        elo3, // 0x3a
        elo2 // 0x3b
    };

    // idx 0xb members: 0x3d
    enum hash_48d8d533750ed177 {
        talent_gungho, // 0x0
        talent_engineer, // 0x1
        talent_coldblooded, // 0x2
        hash_9fb2125b3e673e5, // 0x3
        gear_armor, // 0x4
        hash_cd70e712f842296, // 0x5
        talent_tracker, // 0x6
        hash_101808cdfcd390d6, // 0x7
        hash_128256155e755170, // 0x8
        hash_16cfc7f70dbd8712, // 0x9
        talent_flakjacket, // 0xa
        talent_logistics, // 0xb
        talent_looter, // 0xc
        gadget_medicalinjectiongun, // 0xd
        hash_1d8863d0b864a48b, // 0xe
        hash_1db03fa9862ba330, // 0xf
        hash_20290a682a974c94, // 0x10
        talent_dexterity, // 0x11
        hash_249e75e962ea5275, // 0x12
        talent_resistance, // 0x13
        gear_awareness, // 0x14
        hash_2c3a32e6e2afd1f2, // 0x15
        hash_311283e3107dec74, // 0x16
        talent_lightweight, // 0x17
        talent_awareness, // 0x18
        gear_equipmentcharge, // 0x19
        hash_38c08136902fd553, // 0x1a
        hash_39045b0020cc3e00, // 0x1b
        hash_3c323c7819b10b4d, // 0x1c
        hash_3c60422123a9075b, // 0x1d
        hash_3d128a65c609f1ae, // 0x1e
        talent_scavenger, // 0x1f
        talent_skulker, // 0x20
        gear_scorestreakcharge, // 0x21
        talent_ghost, // 0x22
        hash_4f80a2c3398e97c9, // 0x23
        talent_elemental_pop, // 0x24
        talent_brawler, // 0x25
        talent_quartermaster, // 0x26
        hash_59dbe7f72baaa0f0, // 0x27
        hash_59dbe8f72baaa2a3, // 0x28
        hash_59dbecf72baaa96f, // 0x29
        hash_59dbedf72baaab22, // 0x2a
        hash_59dbeef72baaacd5, // 0x2b
        hash_5c80935e7a319f21, // 0x2c
        talent_paranoia, // 0x2d
        talent_teamlink, // 0x2e
        talent_deadsilence, // 0x2f
        hash_646fc27884bdaa02, // 0x30
        gear_medicalinjectiongun, // 0x31
        hash_661cd0d6fb33878c, // 0x32
        talent_spycraft, // 0x33
        hash_7321f9058ee65217, // 0x34
        hash_7716cb3888f5dd8a, // 0x35
        talent_elemental_pop_2, // 0x36
        talent_elemental_pop_3, // 0x37
        talent_elemental_pop_1, // 0x38
        talent_elemental_pop_4, // 0x39
        talent_elemental_pop_5, // 0x3a
        hash_7ca561e40dc3c5de, // 0x3b
        hash_7f79d3ba6ed1a1d7 // 0x3c
    };

    // idx 0xc members: 0x6
    enum hash_66db207c660e33f3 {
        bonuscard_overkill, // 0x0
        bonuscard_underkill, // 0x1
        bonuscard_perk_1_greed, // 0x2
        hash_4a12859000892dda, // 0x3
        hash_639ebbcda56447e7, // 0x4
        bonuscard_primary_gunfighter // 0x5
    };

    // idx 0xd members: 0xf8
    enum hash_1acf39b1d1bee1d5 {
        bonuscard_overkill, // 0x0
        talent_gungho, // 0x1
        tr_fastburst_t9, // 0x2
        talent_engineer, // 0x3
        napalm_strike_zm, // 0x4
        ability_smart_cover, // 0x5
        dart, // 0x6
        ultimate_turret, // 0x7
        hash_5a7fd1af4a1d5c9, // 0x8
        hash_7a083f7ba43fa06, // 0x9
        talent_coldblooded, // 0xa
        lmg_accurate_t9, // 0xb
        melee_etool_t9, // 0xc
        ray_gun_mk2z, // 0xd
        ray_gun_mk2y, // 0xe
        ray_gun_mk2x, // 0xf
        hash_9fb2125b3e673e5, // 0x10
        sniper_powersemi_t9, // 0x11
        eq_wraith_fire, // 0x12
        gear_armor, // 0x13
        counteruav, // 0x14
        hash_cd70e712f842296, // 0x15
        talent_tracker, // 0x16
        missile_turret, // 0x17
        eq_shroud, // 0x18
        gadget_supplypod, // 0x19
        hash_101808cdfcd390d6, // 0x1a
        ar_damage_t9, // 0x1b
        homunculus, // 0x1c
        spknifeork, // 0x1d
        melee_bowie, // 0x1e
        hash_128256155e755170, // 0x1f
        ww_random_ray_gun1, // 0x20
        bonuscard_underkill, // 0x21
        recon_plane, // 0x22
        hash_16cfc7f70dbd8712, // 0x23
        bonuscard_perk_1_greed, // 0x24
        sig_buckler_dw, // 0x25
        talent_flakjacket, // 0x26
        gadget_vision_pulse, // 0x27
        waterballoon, // 0x28
        special_crossbow_t9, // 0x29
        weapon_armor, // 0x2a
        eq_arm_blade, // 0x2b
        talent_logistics, // 0x2c
        ww_blundergat_t8, // 0x2d
        gadget_heat_wave, // 0x2e
        eq_localheal, // 0x2f
        hoverjet, // 0x30
        talent_looter, // 0x31
        gadget_medicalinjectiongun, // 0x32
        hash_1d8863d0b864a48b, // 0x33
        hash_1db03fa9862ba330, // 0x34
        nightingale, // 0x35
        pistol_fullauto_t9, // 0x36
        remote_missile, // 0x37
        gadget_smart_cover, // 0x38
        hash_20290a682a974c94, // 0x39
        willy_pete, // 0x3a
        eq_emp_grenade, // 0x3b
        special_grenadelauncher_t9, // 0x3c
        melee_machete_t9, // 0x3d
        talent_dexterity, // 0x3e
        launcher_freefire_t9, // 0x3f
        hash_249e75e962ea5275, // 0x40
        ar_accurate_t9, // 0x41
        sig_lmg, // 0x42
        ww_crossbow_impaler_t8, // 0x43
        ww_freezegun_t8, // 0x44
        frag_grenade, // 0x45
        smg_cqb_t9, // 0x46
        knife_loadout, // 0x47
        feature_default_class_1, // 0x48
        feature_default_class_3, // 0x49
        feature_default_class_2, // 0x4a
        feature_default_class_5, // 0x4b
        feature_default_class_4, // 0x4c
        feature_default_class_6, // 0x4d
        talent_resistance, // 0x4e
        spy_wanted_order, // 0x4f
        swat_team, // 0x50
        gear_awareness, // 0x51
        land_mine, // 0x52
        hatchet, // 0x53
        hash_2c3a32e6e2afd1f2, // 0x54
        supplydrop_marker, // 0x55
        mute_smoke, // 0x56
        hash_2ea46ca74ebdfcac, // 0x57
        smg_capacity_t9, // 0x58
        chopper_gunner, // 0x59
        melee_baseballbat_t9, // 0x5a
        hash_311283e3107dec74, // 0x5b
        null_offhand_secondary, // 0x5c
        gadget_health_regen, // 0x5d
        hash_31be8125c7d0f273, // 0x5e
        listening_device, // 0x5f
        talent_lightweight, // 0x60
        talent_awareness, // 0x61
        spork_alcatraz, // 0x62
        drone_squadron, // 0x63
        gear_equipmentcharge, // 0x64
        pistol_semiauto_t9, // 0x65
        null_offhand_primary, // 0x66
        smg_burst_t9, // 0x67
        hash_3507beb47a6b634e, // 0x68
        pistol_revolver_t9, // 0x69
        eq_stimshot, // 0x6a
        hash_38c08136902fd553, // 0x6b
        hash_39045b0020cc3e00, // 0x6c
        overwatch_helicopter, // 0x6d
        gadget_jammer, // 0x6e
        hash_3ab58e40011df941, // 0x6f
        launcher_standard_t9, // 0x70
        hash_3c323c7819b10b4d, // 0x71
        hash_3c60422123a9075b, // 0x72
        melee_bowie_bloody, // 0x73
        hash_3d128a65c609f1ae, // 0x74
        eq_sticky_grenade, // 0x75
        special_ballisticknife_t9_dw, // 0x76
        ww_ieu_shockwave_t9, // 0x77
        melee_sledgehammer_t9, // 0x78
        sig_blade, // 0x79
        talent_scavenger, // 0x7a
        pistol_burst_t9, // 0x7b
        hash_4385cf507401820f, // 0x7c
        napalm_strike, // 0x7d
        sniper_accurate_t9, // 0x7e
        ar_fastfire_t9, // 0x7f
        melee_wakizashi_t9, // 0x80
        hero_pineapplegun, // 0x81
        talent_skulker, // 0x82
        hash_48206b17d50533c2, // 0x83
        sniper_quickscope_t9, // 0x84
        ability_dog, // 0x85
        straferun, // 0x86
        hash_4a12859000892dda, // 0x87
        eq_seeker_mine, // 0x88
        ww_crossbow_t8, // 0x89
        recon_car, // 0x8a
        hash_4b1854c2ff5135b2, // 0x8b
        snowball, // 0x8c
        feature_custom_class_9, // 0x8d
        feature_custom_class_8, // 0x8e
        feature_custom_class_3, // 0x8f
        feature_custom_class_2, // 0x90
        feature_custom_class_1, // 0x91
        feature_custom_class_7, // 0x92
        feature_custom_class_6, // 0x93
        feature_custom_class_5, // 0x94
        feature_custom_class_4, // 0x95
        uav, // 0x96
        eq_concertina_wire, // 0x97
        gear_scorestreakcharge, // 0x98
        feature_custom_class_10, // 0x99
        ar_slowhandling_t9, // 0x9a
        eq_acid_bomb, // 0x9b
        gadget_spawnbeacon, // 0x9c
        ac130, // 0x9d
        talent_ghost, // 0x9e
        hash_4f80a2c3398e97c9, // 0x9f
        tr_precisionsemi_t9, // 0xa0
        helicopter_comlink, // 0xa1
        gadget_armor, // 0xa2
        tr_damagesemi_t9, // 0xa3
        feature_cac, // 0xa4
        talent_elemental_pop, // 0xa5
        tomahawk_t8, // 0xa6
        shotgun_pump_t9, // 0xa7
        gadget_health_boost, // 0xa8
        spectre_grenade, // 0xa9
        talent_brawler, // 0xaa
        eq_flash_grenade, // 0xab
        hash_55c23f24d806e3a6, // 0xac
        bare_hands, // 0xad
        ar_slowfire_t9, // 0xae
        tr_powerburst_t9, // 0xaf
        trophy_system, // 0xb0
        talent_quartermaster, // 0xb1
        hash_59dbe7f72baaa0f0, // 0xb2
        hash_59dbe8f72baaa2a3, // 0xb3
        hash_59dbecf72baaa96f, // 0xb4
        hash_59dbedf72baaab22, // 0xb5
        hash_59dbeef72baaacd5, // 0xb6
        ray_gun_mk2, // 0xb7
        tr_longburst_t9, // 0xb8
        nuke, // 0xb9
        ww_ray_rifle_t9, // 0xba
        smg_standard_t9, // 0xbb
        hash_5c80935e7a319f21, // 0xbc
        sig_bow_flame, // 0xbd
        eq_slow_grenade, // 0xbe
        talent_paranoia, // 0xbf
        special_nailgun_t9, // 0xc0
        smg_accurate_t9, // 0xc1
        hash_603c083704cefb0c, // 0xc2
        jetfighter, // 0xc3
        talent_teamlink, // 0xc4
        smg_heavy_t9, // 0xc5
        talent_deadsilence, // 0xc6
        tear_gas, // 0xc7
        hash_639ebbcda56447e7, // 0xc8
        eq_molotov, // 0xc9
        smg_fastfire_t9, // 0xca
        hash_646fc27884bdaa02, // 0xcb
        bonuscard_primary_gunfighter, // 0xcc
        lmg_light_t9, // 0xcd
        ai_tank_marker, // 0xce
        gear_medicalinjectiongun, // 0xcf
        hash_661cd0d6fb33878c, // 0xd0
        gadget_cleanse, // 0xd1
        hero_flamethrower, // 0xd2
        sniper_standard_t9, // 0xd3
        smg_spray_t9, // 0xd4
        hero_annihilator, // 0xd5
        ar_fasthandling_t9, // 0xd6
        ar_mobility_t9, // 0xd7
        planemortar, // 0xd8
        sniper_cannon_t9, // 0xd9
        shotgun_semiauto_t9, // 0xda
        lmg_fastfire_t9, // 0xdb
        ar_standard_t9, // 0xdc
        weapon_null, // 0xdd
        talent_spycraft, // 0xde
        hash_7321f9058ee65217, // 0xdf
        satchel_charge, // 0xe0
        default_specialist_equipment, // 0xe1
        gadget_health_regen_squad, // 0xe2
        hash_76b56e7e0b3b7aac, // 0xe3
        eq_decoy_grenade, // 0xe4
        hash_7716cb3888f5dd8a, // 0xe5
        ray_gun, // 0xe6
        hash_788c96e19cc7a46e, // 0xe7
        claymore, // 0xe8
        talent_elemental_pop_2, // 0xe9
        talent_elemental_pop_3, // 0xea
        talent_elemental_pop_1, // 0xeb
        talent_elemental_pop_4, // 0xec
        talent_elemental_pop_5, // 0xed
        smg_handling_t9, // 0xee
        cymbal_monkey, // 0xef
        shotgun_fullauto_t9, // 0xf0
        hash_7ab3f9a730359659, // 0xf1
        gadget_icepick, // 0xf2
        hash_7ca561e40dc3c5de, // 0xf3
        basketball, // 0xf4
        gadget_camo, // 0xf5
        hash_7f79d3ba6ed1a1d7, // 0xf6
        lmg_slowfire_t9 // 0xf7
    };

    // root: bitSize: 0x1120, members: 15

    // offset: 0x0, bitSize: 0x6d8(0xdb Byte(s))
    region_info dml;
    // offset: 0x6d8, bitSize: 0x318(0x63 Byte(s)), array:0x3(hti:0xffff)
    lootcontracts loot_contracts[3];
    // offset: 0x9f0, bitSize: 0x20(0x4 Byte(s))
    uint hash_5a1a5df0cdadbba3;
    // offset: 0xa10, bitSize: 0x20(0x4 Byte(s))
    uint hash_151eef37df5ee845;
    // offset: 0xa30, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_tier_boost;
    // offset: 0xa38, bitSize: 0x8(0x1 Byte(s))
    hash_54196e9e9860f0be platform;
    // offset: 0xa40, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_party_tier_boost;
    // offset: 0xa48, bitSize: 0x20(0x4 Byte(s))
    uint hash_1e4fbbabf3da13fa;
    // offset: 0xa68, bitSize: 0x110(0x22 Byte(s)), array:0x11(hti:0xffff)
    hash_33944d215cff6222 hash_33944d215cff6222[17];
    // offset: 0xb78, bitSize: 0x4b0(0x96 Byte(s)), array:0x4b(hti:0x6)
    hash_1c86958671ff27fd hash_4953b2b12f1d6b1b[hash_4b8d95aacf149fb9];
    // offset: 0x1028, bitSize: 0xa0(0x14 Byte(s))
    client_header client;
    // offset: 0x10c8, bitSize: 0x8(0x1 Byte(s))
    byte tier_boost;
    // offset: 0x10d0, bitSize: 0x1
    bool hash_4ca91f34eba5a203;
    // offset: 0x10d1, bitSize: 0x4b, array:0x4b(hti:0x6)
    bool hash_4473319d8a8d9dcf[hash_4b8d95aacf149fb9];
};

version hash_b8143132c54c3b3 {
    // enums ..... 14 (0xe)
    // structs ... 9 (0x9)
    // header bit size .. 4560 (0x11d0)
    // header byte size . 570 (0x23a)

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
    struct hash_1c86958671ff27fd {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_50ab8b7df567cd2a;
    };

    // bitSize: 0x108, members: 6
    struct lootcontracts {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint xp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint contractid;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:3 contractgamemode;
        // offset: 0x48, bitSize: 0x40(0x8 Byte(s))
        xhash contracthash;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 progress;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 target;
    };

    // bitSize: 0x10, members: 3
    struct hash_33944d215cff6222 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_174d79c341ec2c6c;
        // offset: 0x8, bitSize: 0x1
        bool hash_2401d7a2dc706a6c;
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

    // idx 0x5 members: 0xb5
    enum hash_10d50fe10481423c {
        tr_fastburst_t9, // 0x0
        napalm_strike_zm, // 0x1
        ability_smart_cover, // 0x2
        dart, // 0x3
        ultimate_turret, // 0x4
        hash_5a7fd1af4a1d5c9, // 0x5
        hash_7a083f7ba43fa06, // 0x6
        lmg_accurate_t9, // 0x7
        melee_etool_t9, // 0x8
        ray_gun_mk2z, // 0x9
        ray_gun_mk2y, // 0xa
        ray_gun_mk2x, // 0xb
        sniper_powersemi_t9, // 0xc
        eq_wraith_fire, // 0xd
        counteruav, // 0xe
        missile_turret, // 0xf
        eq_shroud, // 0x10
        gadget_supplypod, // 0x11
        ar_damage_t9, // 0x12
        homunculus, // 0x13
        spknifeork, // 0x14
        melee_bowie, // 0x15
        ww_random_ray_gun1, // 0x16
        recon_plane, // 0x17
        sig_buckler_dw, // 0x18
        gadget_vision_pulse, // 0x19
        waterballoon, // 0x1a
        special_crossbow_t9, // 0x1b
        weapon_armor, // 0x1c
        eq_arm_blade, // 0x1d
        ww_blundergat_t8, // 0x1e
        gadget_heat_wave, // 0x1f
        eq_localheal, // 0x20
        hoverjet, // 0x21
        nightingale, // 0x22
        pistol_fullauto_t9, // 0x23
        remote_missile, // 0x24
        gadget_smart_cover, // 0x25
        willy_pete, // 0x26
        eq_emp_grenade, // 0x27
        special_grenadelauncher_t9, // 0x28
        melee_machete_t9, // 0x29
        launcher_freefire_t9, // 0x2a
        ar_accurate_t9, // 0x2b
        sig_lmg, // 0x2c
        ww_crossbow_impaler_t8, // 0x2d
        ww_freezegun_t8, // 0x2e
        frag_grenade, // 0x2f
        smg_cqb_t9, // 0x30
        knife_loadout, // 0x31
        feature_default_class_1, // 0x32
        feature_default_class_3, // 0x33
        feature_default_class_2, // 0x34
        feature_default_class_5, // 0x35
        feature_default_class_4, // 0x36
        feature_default_class_6, // 0x37
        spy_wanted_order, // 0x38
        swat_team, // 0x39
        land_mine, // 0x3a
        hatchet, // 0x3b
        supplydrop_marker, // 0x3c
        mute_smoke, // 0x3d
        hash_2ea46ca74ebdfcac, // 0x3e
        smg_capacity_t9, // 0x3f
        chopper_gunner, // 0x40
        melee_baseballbat_t9, // 0x41
        null_offhand_secondary, // 0x42
        gadget_health_regen, // 0x43
        hash_31be8125c7d0f273, // 0x44
        listening_device, // 0x45
        spork_alcatraz, // 0x46
        drone_squadron, // 0x47
        pistol_semiauto_t9, // 0x48
        null_offhand_primary, // 0x49
        smg_burst_t9, // 0x4a
        hash_3507beb47a6b634e, // 0x4b
        pistol_revolver_t9, // 0x4c
        eq_stimshot, // 0x4d
        overwatch_helicopter, // 0x4e
        gadget_jammer, // 0x4f
        hash_3ab58e40011df941, // 0x50
        launcher_standard_t9, // 0x51
        melee_bowie_bloody, // 0x52
        eq_sticky_grenade, // 0x53
        special_ballisticknife_t9_dw, // 0x54
        ww_ieu_shockwave_t9, // 0x55
        melee_sledgehammer_t9, // 0x56
        sig_blade, // 0x57
        pistol_burst_t9, // 0x58
        hash_4385cf507401820f, // 0x59
        napalm_strike, // 0x5a
        sniper_accurate_t9, // 0x5b
        ar_fastfire_t9, // 0x5c
        melee_wakizashi_t9, // 0x5d
        hero_pineapplegun, // 0x5e
        hash_48206b17d50533c2, // 0x5f
        sniper_quickscope_t9, // 0x60
        ability_dog, // 0x61
        straferun, // 0x62
        eq_seeker_mine, // 0x63
        ww_crossbow_t8, // 0x64
        recon_car, // 0x65
        hash_4b1854c2ff5135b2, // 0x66
        snowball, // 0x67
        feature_custom_class_9, // 0x68
        feature_custom_class_8, // 0x69
        feature_custom_class_3, // 0x6a
        feature_custom_class_2, // 0x6b
        feature_custom_class_1, // 0x6c
        feature_custom_class_7, // 0x6d
        feature_custom_class_6, // 0x6e
        feature_custom_class_5, // 0x6f
        feature_custom_class_4, // 0x70
        uav, // 0x71
        eq_concertina_wire, // 0x72
        feature_custom_class_10, // 0x73
        ar_slowhandling_t9, // 0x74
        eq_acid_bomb, // 0x75
        gadget_spawnbeacon, // 0x76
        ac130, // 0x77
        tr_precisionsemi_t9, // 0x78
        helicopter_comlink, // 0x79
        gadget_armor, // 0x7a
        tr_damagesemi_t9, // 0x7b
        feature_cac, // 0x7c
        tomahawk_t8, // 0x7d
        shotgun_pump_t9, // 0x7e
        gadget_health_boost, // 0x7f
        spectre_grenade, // 0x80
        eq_flash_grenade, // 0x81
        hash_55c23f24d806e3a6, // 0x82
        bare_hands, // 0x83
        ar_slowfire_t9, // 0x84
        tr_powerburst_t9, // 0x85
        trophy_system, // 0x86
        ray_gun_mk2, // 0x87
        tr_longburst_t9, // 0x88
        nuke, // 0x89
        ww_ray_rifle_t9, // 0x8a
        smg_standard_t9, // 0x8b
        sig_bow_flame, // 0x8c
        eq_slow_grenade, // 0x8d
        special_nailgun_t9, // 0x8e
        smg_accurate_t9, // 0x8f
        hash_603c083704cefb0c, // 0x90
        jetfighter, // 0x91
        smg_heavy_t9, // 0x92
        tear_gas, // 0x93
        eq_molotov, // 0x94
        smg_fastfire_t9, // 0x95
        lmg_light_t9, // 0x96
        ai_tank_marker, // 0x97
        gadget_cleanse, // 0x98
        hero_flamethrower, // 0x99
        sniper_standard_t9, // 0x9a
        smg_spray_t9, // 0x9b
        hero_annihilator, // 0x9c
        ar_fasthandling_t9, // 0x9d
        ar_mobility_t9, // 0x9e
        planemortar, // 0x9f
        sniper_cannon_t9, // 0xa0
        shotgun_semiauto_t9, // 0xa1
        lmg_fastfire_t9, // 0xa2
        ar_standard_t9, // 0xa3
        weapon_null, // 0xa4
        satchel_charge, // 0xa5
        default_specialist_equipment, // 0xa6
        gadget_health_regen_squad, // 0xa7
        hash_76b56e7e0b3b7aac, // 0xa8
        eq_decoy_grenade, // 0xa9
        ray_gun, // 0xaa
        hash_788c96e19cc7a46e, // 0xab
        claymore, // 0xac
        smg_handling_t9, // 0xad
        cymbal_monkey, // 0xae
        shotgun_fullauto_t9, // 0xaf
        hash_7ab3f9a730359659, // 0xb0
        gadget_icepick, // 0xb1
        basketball, // 0xb2
        gadget_camo, // 0xb3
        lmg_slowfire_t9 // 0xb4
    };

    // idx 0x6 members: 0x4b
    enum hash_4b8d95aacf149fb9 {
        tr_fastburst_t9, // 0x0
        lmg_accurate_t9, // 0x1
        melee_etool_t9, // 0x2
        ray_gun_mk2z, // 0x3
        ray_gun_mk2y, // 0x4
        ray_gun_mk2x, // 0x5
        sniper_powersemi_t9, // 0x6
        hash_c21b61b32a5d972, // 0x7
        ar_damage_t9, // 0x8
        homunculus, // 0x9
        spknifeork, // 0xa
        melee_bowie, // 0xb
        ww_random_ray_gun1, // 0xc
        hash_165cf52ce418f5a1, // 0xd
        special_crossbow_t9, // 0xe
        ww_blundergat_t8, // 0xf
        pistol_fullauto_t9, // 0x10
        special_grenadelauncher_t9, // 0x11
        melee_machete_t9, // 0x12
        launcher_freefire_t9, // 0x13
        ar_accurate_t9, // 0x14
        ww_crossbow_impaler_t8, // 0x15
        ww_freezegun_t8, // 0x16
        smg_cqb_t9, // 0x17
        knife_loadout, // 0x18
        hash_2ea46ca74ebdfcac, // 0x19
        smg_capacity_t9, // 0x1a
        melee_baseballbat_t9, // 0x1b
        spork_alcatraz, // 0x1c
        pistol_semiauto_t9, // 0x1d
        smg_burst_t9, // 0x1e
        pistol_revolver_t9, // 0x1f
        launcher_standard_t9, // 0x20
        melee_bowie_bloody, // 0x21
        special_ballisticknife_t9_dw, // 0x22
        ww_ieu_shockwave_t9, // 0x23
        melee_sledgehammer_t9, // 0x24
        pistol_burst_t9, // 0x25
        hash_4385cf507401820f, // 0x26
        sniper_accurate_t9, // 0x27
        ar_fastfire_t9, // 0x28
        melee_wakizashi_t9, // 0x29
        hash_48206b17d50533c2, // 0x2a
        sniper_quickscope_t9, // 0x2b
        ww_crossbow_t8, // 0x2c
        ar_slowhandling_t9, // 0x2d
        tr_precisionsemi_t9, // 0x2e
        tr_damagesemi_t9, // 0x2f
        shotgun_pump_t9, // 0x30
        hash_55c23f24d806e3a6, // 0x31
        ar_slowfire_t9, // 0x32
        tr_powerburst_t9, // 0x33
        ray_gun_mk2, // 0x34
        tr_longburst_t9, // 0x35
        ww_ray_rifle_t9, // 0x36
        smg_standard_t9, // 0x37
        special_nailgun_t9, // 0x38
        smg_accurate_t9, // 0x39
        hash_603c083704cefb0c, // 0x3a
        smg_heavy_t9, // 0x3b
        smg_fastfire_t9, // 0x3c
        lmg_light_t9, // 0x3d
        sniper_standard_t9, // 0x3e
        smg_spray_t9, // 0x3f
        ar_fasthandling_t9, // 0x40
        ar_mobility_t9, // 0x41
        sniper_cannon_t9, // 0x42
        shotgun_semiauto_t9, // 0x43
        lmg_fastfire_t9, // 0x44
        ar_standard_t9, // 0x45
        ray_gun, // 0x46
        smg_handling_t9, // 0x47
        shotgun_fullauto_t9, // 0x48
        basketball, // 0x49
        lmg_slowfire_t9 // 0x4a
    };

    // idx 0x7 members: 0x13
    enum hash_7493d39e2637c1e7 {
        bonuscard, // 0x0
        hero, // 0x1
        feature, // 0x2
        weapon_special, // 0x3
        weapon_knife, // 0x4
        character, // 0x5
        miscweapon, // 0x6
        weapon_pistol, // 0x7
        killstreak, // 0x8
        weapon_sniper, // 0x9
        talent, // 0xa
        weapon_launcher, // 0xb
        weapon_grenade, // 0xc
        weapon_lmg, // 0xd
        weapon_tactical, // 0xe
        weapon_smg, // 0xf
        hash_7b68172df6035672, // 0x10
        weapon_cqb, // 0x11
        weapon_assault // 0x12
    };

    // idx 0x8 members: 0x20
    enum hash_d5731f85b8cf294 {
        napalm_strike_zm, // 0x0
        dart, // 0x1
        ultimate_turret, // 0x2
        counteruav, // 0x3
        recon_plane, // 0x4
        weapon_armor, // 0x5
        hoverjet, // 0x6
        remote_missile, // 0x7
        spy_med_pack, // 0x8
        sig_lmg, // 0x9
        spy_wanted_order, // 0xa
        swat_team, // 0xb
        supplydrop_marker, // 0xc
        chopper_gunner, // 0xd
        drone_squadron, // 0xe
        overwatch_helicopter, // 0xf
        napalm_strike, // 0x10
        hero_pineapplegun, // 0x11
        ability_dog, // 0x12
        straferun, // 0x13
        recon_car, // 0x14
        uav, // 0x15
        ac130, // 0x16
        helicopter_comlink, // 0x17
        nuke, // 0x18
        sig_bow_flame, // 0x19
        jetfighter, // 0x1a
        ai_tank_marker, // 0x1b
        helicopter_guard, // 0x1c
        hero_flamethrower, // 0x1d
        hero_annihilator, // 0x1e
        planemortar // 0x1f
    };

    // idx 0x9 members: 0x35
    enum hash_507792265be6dcc4 {
        ability_smart_cover, // 0x0
        hash_7a083f7ba43fa06, // 0x1
        eq_wraith_fire, // 0x2
        missile_turret, // 0x3
        eq_shroud, // 0x4
        gadget_supplypod, // 0x5
        gadget_vision_pulse, // 0x6
        waterballoon, // 0x7
        eq_arm_blade, // 0x8
        gadget_heat_wave, // 0x9
        eq_localheal, // 0xa
        gadget_medicalinjectiongun, // 0xb
        nightingale, // 0xc
        gadget_smart_cover, // 0xd
        willy_pete, // 0xe
        eq_emp_grenade, // 0xf
        frag_grenade, // 0x10
        land_mine, // 0x11
        hatchet, // 0x12
        gadget_health_regen, // 0x13
        listening_device, // 0x14
        hash_3507beb47a6b634e, // 0x15
        eq_stimshot, // 0x16
        gadget_jammer, // 0x17
        hash_3ab58e40011df941, // 0x18
        eq_sticky_grenade, // 0x19
        eq_seeker_mine, // 0x1a
        hash_4b1854c2ff5135b2, // 0x1b
        snowball, // 0x1c
        eq_concertina_wire, // 0x1d
        eq_acid_bomb, // 0x1e
        gadget_spawnbeacon, // 0x1f
        gadget_armor, // 0x20
        tomahawk_t8, // 0x21
        gadget_health_boost, // 0x22
        spectre_grenade, // 0x23
        eq_flash_grenade, // 0x24
        trophy_system, // 0x25
        eq_slow_grenade, // 0x26
        tear_gas, // 0x27
        eq_molotov, // 0x28
        gadget_cleanse, // 0x29
        satchel_charge, // 0x2a
        default_specialist_equipment, // 0x2b
        gadget_health_regen_squad, // 0x2c
        hash_76b56e7e0b3b7aac, // 0x2d
        eq_decoy_grenade, // 0x2e
        hash_788c96e19cc7a46e, // 0x2f
        claymore, // 0x30
        cymbal_monkey, // 0x31
        hash_7ab3f9a730359659, // 0x32
        gadget_icepick, // 0x33
        gadget_camo // 0x34
    };

    // idx 0xa members: 0x3c
    enum hash_1e2de876fb880be2 {
        quickdraw, // 0x0
        acog, // 0x1
        dw, // 0x2
        ir, // 0x3
        barrel2, // 0x4
        mixunder2, // 0x5
        fastreload, // 0x6
        heavy, // 0x7
        steadyaim, // 0x8
        stalker, // 0x9
        barrel, // 0xa
        mixstock, // 0xb
        smoothzoom2, // 0xc
        mixclip2, // 0xd
        reflex4, // 0xe
        reflex3, // 0xf
        reflex2, // 0x10
        stalker2, // 0x11
        extclip2, // 0x12
        tactical, // 0x13
        steadyaim2, // 0x14
        mixclip, // 0x15
        light, // 0x16
        speedgrip2, // 0x17
        mixhandle, // 0x18
        mixunder, // 0x19
        mixbarrel2, // 0x1a
        mixstock2, // 0x1b
        reddot, // 0x1c
        handle, // 0x1d
        mixmuzzle2, // 0x1e
        extclip, // 0x1f
        light2, // 0x20
        heavy2, // 0x21
        holo, // 0x22
        elo, // 0x23
        fastreload2, // 0x24
        scope3x, // 0x25
        scope4x, // 0x26
        mixhandle2, // 0x27
        compensator, // 0x28
        mixbody, // 0x29
        quickdraw2, // 0x2a
        suppressed2, // 0x2b
        speedgrip, // 0x2c
        sprintout2, // 0x2d
        suppressed, // 0x2e
        sprintout, // 0x2f
        grip2, // 0x30
        mixmuzzle, // 0x31
        handle2, // 0x32
        compensator2, // 0x33
        mixbody2, // 0x34
        dualoptic, // 0x35
        grip, // 0x36
        smoothzoom, // 0x37
        reflex, // 0x38
        mixbarrel, // 0x39
        elo3, // 0x3a
        elo2 // 0x3b
    };

    // idx 0xb members: 0x3c
    enum hash_48d8d533750ed177 {
        talent_gungho, // 0x0
        talent_engineer, // 0x1
        talent_coldblooded, // 0x2
        hash_9fb2125b3e673e5, // 0x3
        gear_armor, // 0x4
        hash_cd70e712f842296, // 0x5
        talent_tracker, // 0x6
        hash_101808cdfcd390d6, // 0x7
        hash_128256155e755170, // 0x8
        hash_16cfc7f70dbd8712, // 0x9
        talent_flakjacket, // 0xa
        talent_logistics, // 0xb
        talent_looter, // 0xc
        gadget_medicalinjectiongun, // 0xd
        hash_1d8863d0b864a48b, // 0xe
        hash_1db03fa9862ba330, // 0xf
        hash_20290a682a974c94, // 0x10
        talent_dexterity, // 0x11
        hash_249e75e962ea5275, // 0x12
        talent_resistance, // 0x13
        gear_awareness, // 0x14
        hash_2c3a32e6e2afd1f2, // 0x15
        hash_311283e3107dec74, // 0x16
        talent_lightweight, // 0x17
        talent_awareness, // 0x18
        gear_equipmentcharge, // 0x19
        hash_38c08136902fd553, // 0x1a
        hash_39045b0020cc3e00, // 0x1b
        hash_3c323c7819b10b4d, // 0x1c
        hash_3c60422123a9075b, // 0x1d
        talent_scavenger, // 0x1e
        talent_skulker, // 0x1f
        gear_scorestreakcharge, // 0x20
        talent_ghost, // 0x21
        hash_4f80a2c3398e97c9, // 0x22
        talent_elemental_pop, // 0x23
        talent_brawler, // 0x24
        talent_quartermaster, // 0x25
        hash_59dbe7f72baaa0f0, // 0x26
        hash_59dbe8f72baaa2a3, // 0x27
        hash_59dbecf72baaa96f, // 0x28
        hash_59dbedf72baaab22, // 0x29
        hash_59dbeef72baaacd5, // 0x2a
        hash_5c80935e7a319f21, // 0x2b
        talent_paranoia, // 0x2c
        talent_teamlink, // 0x2d
        talent_deadsilence, // 0x2e
        hash_646fc27884bdaa02, // 0x2f
        gear_medicalinjectiongun, // 0x30
        hash_661cd0d6fb33878c, // 0x31
        talent_spycraft, // 0x32
        hash_7321f9058ee65217, // 0x33
        hash_7716cb3888f5dd8a, // 0x34
        talent_elemental_pop_2, // 0x35
        talent_elemental_pop_3, // 0x36
        talent_elemental_pop_1, // 0x37
        talent_elemental_pop_4, // 0x38
        talent_elemental_pop_5, // 0x39
        hash_7ca561e40dc3c5de, // 0x3a
        hash_7f79d3ba6ed1a1d7 // 0x3b
    };

    // idx 0xc members: 0xc
    enum hash_66db207c660e33f3 {
        bonuscard_overkill, // 0x0
        bonuscard_underkill, // 0x1
        bonuscard_perk_1_greed, // 0x2
        talent_mulekick, // 0x3
        talent_mulekick_1, // 0x4
        talent_mulekick_2, // 0x5
        talent_mulekick_3, // 0x6
        talent_mulekick_4, // 0x7
        talent_mulekick_5, // 0x8
        hash_4a12859000892dda, // 0x9
        hash_639ebbcda56447e7, // 0xa
        bonuscard_primary_gunfighter // 0xb
    };

    // idx 0xd members: 0xfd
    enum hash_1acf39b1d1bee1d5 {
        bonuscard_overkill, // 0x0
        talent_gungho, // 0x1
        tr_fastburst_t9, // 0x2
        talent_engineer, // 0x3
        napalm_strike_zm, // 0x4
        ability_smart_cover, // 0x5
        dart, // 0x6
        ultimate_turret, // 0x7
        hash_5a7fd1af4a1d5c9, // 0x8
        hash_7a083f7ba43fa06, // 0x9
        talent_coldblooded, // 0xa
        lmg_accurate_t9, // 0xb
        melee_etool_t9, // 0xc
        ray_gun_mk2z, // 0xd
        ray_gun_mk2y, // 0xe
        ray_gun_mk2x, // 0xf
        hash_9fb2125b3e673e5, // 0x10
        sniper_powersemi_t9, // 0x11
        eq_wraith_fire, // 0x12
        gear_armor, // 0x13
        counteruav, // 0x14
        hash_cd70e712f842296, // 0x15
        talent_tracker, // 0x16
        missile_turret, // 0x17
        eq_shroud, // 0x18
        gadget_supplypod, // 0x19
        hash_101808cdfcd390d6, // 0x1a
        ar_damage_t9, // 0x1b
        homunculus, // 0x1c
        spknifeork, // 0x1d
        melee_bowie, // 0x1e
        hash_128256155e755170, // 0x1f
        ww_random_ray_gun1, // 0x20
        bonuscard_underkill, // 0x21
        recon_plane, // 0x22
        hash_16cfc7f70dbd8712, // 0x23
        bonuscard_perk_1_greed, // 0x24
        sig_buckler_dw, // 0x25
        talent_mulekick, // 0x26
        talent_flakjacket, // 0x27
        gadget_vision_pulse, // 0x28
        waterballoon, // 0x29
        special_crossbow_t9, // 0x2a
        weapon_armor, // 0x2b
        eq_arm_blade, // 0x2c
        talent_logistics, // 0x2d
        ww_blundergat_t8, // 0x2e
        gadget_heat_wave, // 0x2f
        eq_localheal, // 0x30
        hoverjet, // 0x31
        talent_looter, // 0x32
        gadget_medicalinjectiongun, // 0x33
        hash_1d8863d0b864a48b, // 0x34
        hash_1db03fa9862ba330, // 0x35
        nightingale, // 0x36
        pistol_fullauto_t9, // 0x37
        remote_missile, // 0x38
        gadget_smart_cover, // 0x39
        hash_20290a682a974c94, // 0x3a
        willy_pete, // 0x3b
        eq_emp_grenade, // 0x3c
        special_grenadelauncher_t9, // 0x3d
        melee_machete_t9, // 0x3e
        talent_dexterity, // 0x3f
        launcher_freefire_t9, // 0x40
        hash_249e75e962ea5275, // 0x41
        ar_accurate_t9, // 0x42
        sig_lmg, // 0x43
        ww_crossbow_impaler_t8, // 0x44
        ww_freezegun_t8, // 0x45
        frag_grenade, // 0x46
        smg_cqb_t9, // 0x47
        knife_loadout, // 0x48
        feature_default_class_1, // 0x49
        feature_default_class_3, // 0x4a
        feature_default_class_2, // 0x4b
        feature_default_class_5, // 0x4c
        feature_default_class_4, // 0x4d
        feature_default_class_6, // 0x4e
        talent_resistance, // 0x4f
        spy_wanted_order, // 0x50
        swat_team, // 0x51
        gear_awareness, // 0x52
        land_mine, // 0x53
        hatchet, // 0x54
        hash_2c3a32e6e2afd1f2, // 0x55
        talent_mulekick_1, // 0x56
        talent_mulekick_2, // 0x57
        talent_mulekick_3, // 0x58
        talent_mulekick_4, // 0x59
        talent_mulekick_5, // 0x5a
        supplydrop_marker, // 0x5b
        mute_smoke, // 0x5c
        hash_2ea46ca74ebdfcac, // 0x5d
        smg_capacity_t9, // 0x5e
        chopper_gunner, // 0x5f
        melee_baseballbat_t9, // 0x60
        hash_311283e3107dec74, // 0x61
        null_offhand_secondary, // 0x62
        gadget_health_regen, // 0x63
        hash_31be8125c7d0f273, // 0x64
        listening_device, // 0x65
        talent_lightweight, // 0x66
        talent_awareness, // 0x67
        spork_alcatraz, // 0x68
        drone_squadron, // 0x69
        gear_equipmentcharge, // 0x6a
        pistol_semiauto_t9, // 0x6b
        null_offhand_primary, // 0x6c
        smg_burst_t9, // 0x6d
        hash_3507beb47a6b634e, // 0x6e
        pistol_revolver_t9, // 0x6f
        eq_stimshot, // 0x70
        hash_38c08136902fd553, // 0x71
        hash_39045b0020cc3e00, // 0x72
        overwatch_helicopter, // 0x73
        gadget_jammer, // 0x74
        hash_3ab58e40011df941, // 0x75
        launcher_standard_t9, // 0x76
        hash_3c323c7819b10b4d, // 0x77
        hash_3c60422123a9075b, // 0x78
        melee_bowie_bloody, // 0x79
        eq_sticky_grenade, // 0x7a
        special_ballisticknife_t9_dw, // 0x7b
        ww_ieu_shockwave_t9, // 0x7c
        melee_sledgehammer_t9, // 0x7d
        sig_blade, // 0x7e
        talent_scavenger, // 0x7f
        pistol_burst_t9, // 0x80
        hash_4385cf507401820f, // 0x81
        napalm_strike, // 0x82
        sniper_accurate_t9, // 0x83
        ar_fastfire_t9, // 0x84
        melee_wakizashi_t9, // 0x85
        hero_pineapplegun, // 0x86
        talent_skulker, // 0x87
        hash_48206b17d50533c2, // 0x88
        sniper_quickscope_t9, // 0x89
        ability_dog, // 0x8a
        straferun, // 0x8b
        hash_4a12859000892dda, // 0x8c
        eq_seeker_mine, // 0x8d
        ww_crossbow_t8, // 0x8e
        recon_car, // 0x8f
        hash_4b1854c2ff5135b2, // 0x90
        snowball, // 0x91
        feature_custom_class_9, // 0x92
        feature_custom_class_8, // 0x93
        feature_custom_class_3, // 0x94
        feature_custom_class_2, // 0x95
        feature_custom_class_1, // 0x96
        feature_custom_class_7, // 0x97
        feature_custom_class_6, // 0x98
        feature_custom_class_5, // 0x99
        feature_custom_class_4, // 0x9a
        uav, // 0x9b
        eq_concertina_wire, // 0x9c
        gear_scorestreakcharge, // 0x9d
        feature_custom_class_10, // 0x9e
        ar_slowhandling_t9, // 0x9f
        eq_acid_bomb, // 0xa0
        gadget_spawnbeacon, // 0xa1
        ac130, // 0xa2
        talent_ghost, // 0xa3
        hash_4f80a2c3398e97c9, // 0xa4
        tr_precisionsemi_t9, // 0xa5
        helicopter_comlink, // 0xa6
        gadget_armor, // 0xa7
        tr_damagesemi_t9, // 0xa8
        feature_cac, // 0xa9
        talent_elemental_pop, // 0xaa
        tomahawk_t8, // 0xab
        shotgun_pump_t9, // 0xac
        gadget_health_boost, // 0xad
        spectre_grenade, // 0xae
        talent_brawler, // 0xaf
        eq_flash_grenade, // 0xb0
        hash_55c23f24d806e3a6, // 0xb1
        bare_hands, // 0xb2
        ar_slowfire_t9, // 0xb3
        tr_powerburst_t9, // 0xb4
        trophy_system, // 0xb5
        talent_quartermaster, // 0xb6
        hash_59dbe7f72baaa0f0, // 0xb7
        hash_59dbe8f72baaa2a3, // 0xb8
        hash_59dbecf72baaa96f, // 0xb9
        hash_59dbedf72baaab22, // 0xba
        hash_59dbeef72baaacd5, // 0xbb
        ray_gun_mk2, // 0xbc
        tr_longburst_t9, // 0xbd
        nuke, // 0xbe
        ww_ray_rifle_t9, // 0xbf
        smg_standard_t9, // 0xc0
        hash_5c80935e7a319f21, // 0xc1
        sig_bow_flame, // 0xc2
        eq_slow_grenade, // 0xc3
        talent_paranoia, // 0xc4
        special_nailgun_t9, // 0xc5
        smg_accurate_t9, // 0xc6
        hash_603c083704cefb0c, // 0xc7
        jetfighter, // 0xc8
        talent_teamlink, // 0xc9
        smg_heavy_t9, // 0xca
        talent_deadsilence, // 0xcb
        tear_gas, // 0xcc
        hash_639ebbcda56447e7, // 0xcd
        eq_molotov, // 0xce
        smg_fastfire_t9, // 0xcf
        hash_646fc27884bdaa02, // 0xd0
        bonuscard_primary_gunfighter, // 0xd1
        lmg_light_t9, // 0xd2
        ai_tank_marker, // 0xd3
        gear_medicalinjectiongun, // 0xd4
        hash_661cd0d6fb33878c, // 0xd5
        gadget_cleanse, // 0xd6
        hero_flamethrower, // 0xd7
        sniper_standard_t9, // 0xd8
        smg_spray_t9, // 0xd9
        hero_annihilator, // 0xda
        ar_fasthandling_t9, // 0xdb
        ar_mobility_t9, // 0xdc
        planemortar, // 0xdd
        sniper_cannon_t9, // 0xde
        shotgun_semiauto_t9, // 0xdf
        lmg_fastfire_t9, // 0xe0
        ar_standard_t9, // 0xe1
        weapon_null, // 0xe2
        talent_spycraft, // 0xe3
        hash_7321f9058ee65217, // 0xe4
        satchel_charge, // 0xe5
        default_specialist_equipment, // 0xe6
        gadget_health_regen_squad, // 0xe7
        hash_76b56e7e0b3b7aac, // 0xe8
        eq_decoy_grenade, // 0xe9
        hash_7716cb3888f5dd8a, // 0xea
        ray_gun, // 0xeb
        hash_788c96e19cc7a46e, // 0xec
        claymore, // 0xed
        talent_elemental_pop_2, // 0xee
        talent_elemental_pop_3, // 0xef
        talent_elemental_pop_1, // 0xf0
        talent_elemental_pop_4, // 0xf1
        talent_elemental_pop_5, // 0xf2
        smg_handling_t9, // 0xf3
        cymbal_monkey, // 0xf4
        shotgun_fullauto_t9, // 0xf5
        hash_7ab3f9a730359659, // 0xf6
        gadget_icepick, // 0xf7
        hash_7ca561e40dc3c5de, // 0xf8
        basketball, // 0xf9
        gadget_camo, // 0xfa
        hash_7f79d3ba6ed1a1d7, // 0xfb
        lmg_slowfire_t9 // 0xfc
    };

    // root: bitSize: 0x1120, members: 15

    // offset: 0x0, bitSize: 0x6d8(0xdb Byte(s))
    region_info dml;
    // offset: 0x6d8, bitSize: 0x318(0x63 Byte(s)), array:0x3(hti:0xffff)
    lootcontracts loot_contracts[3];
    // offset: 0x9f0, bitSize: 0x20(0x4 Byte(s))
    uint hash_5a1a5df0cdadbba3;
    // offset: 0xa10, bitSize: 0x20(0x4 Byte(s))
    uint hash_151eef37df5ee845;
    // offset: 0xa30, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_tier_boost;
    // offset: 0xa38, bitSize: 0x8(0x1 Byte(s))
    hash_54196e9e9860f0be platform;
    // offset: 0xa40, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_party_tier_boost;
    // offset: 0xa48, bitSize: 0x20(0x4 Byte(s))
    uint hash_1e4fbbabf3da13fa;
    // offset: 0xa68, bitSize: 0x110(0x22 Byte(s)), array:0x11(hti:0xffff)
    hash_33944d215cff6222 hash_33944d215cff6222[17];
    // offset: 0xb78, bitSize: 0x4b0(0x96 Byte(s)), array:0x4b(hti:0x6)
    hash_1c86958671ff27fd hash_4953b2b12f1d6b1b[hash_4b8d95aacf149fb9];
    // offset: 0x1028, bitSize: 0xa0(0x14 Byte(s))
    client_header client;
    // offset: 0x10c8, bitSize: 0x8(0x1 Byte(s))
    byte tier_boost;
    // offset: 0x10d0, bitSize: 0x1
    bool hash_4ca91f34eba5a203;
    // offset: 0x10d1, bitSize: 0x4b, array:0x4b(hti:0x6)
    bool hash_4473319d8a8d9dcf[hash_4b8d95aacf149fb9];
};

version hash_35783ad22425f64b {
    // enums ..... 14 (0xe)
    // structs ... 9 (0x9)
    // header bit size .. 4576 (0x11e0)
    // header byte size . 572 (0x23c)

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
    struct hash_1c86958671ff27fd {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_50ab8b7df567cd2a;
    };

    // bitSize: 0x108, members: 6
    struct lootcontracts {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint xp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint contractid;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:3 contractgamemode;
        // offset: 0x48, bitSize: 0x40(0x8 Byte(s))
        xhash contracthash;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 progress;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 target;
    };

    // bitSize: 0x10, members: 3
    struct hash_33944d215cff6222 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_174d79c341ec2c6c;
        // offset: 0x8, bitSize: 0x1
        bool hash_2401d7a2dc706a6c;
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

    // idx 0x5 members: 0xb6
    enum hash_10d50fe10481423c {
        tr_fastburst_t9, // 0x0
        napalm_strike_zm, // 0x1
        ability_smart_cover, // 0x2
        dart, // 0x3
        ultimate_turret, // 0x4
        hash_5a7fd1af4a1d5c9, // 0x5
        hash_7a083f7ba43fa06, // 0x6
        lmg_accurate_t9, // 0x7
        melee_etool_t9, // 0x8
        ray_gun_mk2z, // 0x9
        ray_gun_mk2y, // 0xa
        ray_gun_mk2x, // 0xb
        sniper_powersemi_t9, // 0xc
        eq_wraith_fire, // 0xd
        counteruav, // 0xe
        missile_turret, // 0xf
        eq_shroud, // 0x10
        gadget_supplypod, // 0x11
        ar_damage_t9, // 0x12
        homunculus, // 0x13
        spknifeork, // 0x14
        melee_bowie, // 0x15
        ww_random_ray_gun1, // 0x16
        recon_plane, // 0x17
        sig_buckler_dw, // 0x18
        gadget_vision_pulse, // 0x19
        waterballoon, // 0x1a
        special_crossbow_t9, // 0x1b
        weapon_armor, // 0x1c
        eq_arm_blade, // 0x1d
        ww_blundergat_t8, // 0x1e
        gadget_heat_wave, // 0x1f
        eq_localheal, // 0x20
        hoverjet, // 0x21
        nightingale, // 0x22
        pistol_fullauto_t9, // 0x23
        remote_missile, // 0x24
        gadget_smart_cover, // 0x25
        willy_pete, // 0x26
        eq_emp_grenade, // 0x27
        special_grenadelauncher_t9, // 0x28
        melee_machete_t9, // 0x29
        launcher_freefire_t9, // 0x2a
        ar_accurate_t9, // 0x2b
        sig_lmg, // 0x2c
        ww_crossbow_impaler_t8, // 0x2d
        ww_freezegun_t8, // 0x2e
        frag_grenade, // 0x2f
        smg_cqb_t9, // 0x30
        knife_loadout, // 0x31
        feature_default_class_1, // 0x32
        feature_default_class_3, // 0x33
        feature_default_class_2, // 0x34
        feature_default_class_5, // 0x35
        feature_default_class_4, // 0x36
        feature_default_class_6, // 0x37
        spy_wanted_order, // 0x38
        swat_team, // 0x39
        land_mine, // 0x3a
        hatchet, // 0x3b
        supplydrop_marker, // 0x3c
        mute_smoke, // 0x3d
        hash_2ea46ca74ebdfcac, // 0x3e
        smg_capacity_t9, // 0x3f
        chopper_gunner, // 0x40
        melee_baseballbat_t9, // 0x41
        null_offhand_secondary, // 0x42
        gadget_health_regen, // 0x43
        hash_31be8125c7d0f273, // 0x44
        listening_device, // 0x45
        spork_alcatraz, // 0x46
        drone_squadron, // 0x47
        pistol_semiauto_t9, // 0x48
        melee_mace_t9, // 0x49
        null_offhand_primary, // 0x4a
        smg_burst_t9, // 0x4b
        hash_3507beb47a6b634e, // 0x4c
        pistol_revolver_t9, // 0x4d
        eq_stimshot, // 0x4e
        overwatch_helicopter, // 0x4f
        gadget_jammer, // 0x50
        hash_3ab58e40011df941, // 0x51
        launcher_standard_t9, // 0x52
        melee_bowie_bloody, // 0x53
        eq_sticky_grenade, // 0x54
        special_ballisticknife_t9_dw, // 0x55
        ww_ieu_shockwave_t9, // 0x56
        melee_sledgehammer_t9, // 0x57
        sig_blade, // 0x58
        pistol_burst_t9, // 0x59
        hash_4385cf507401820f, // 0x5a
        napalm_strike, // 0x5b
        sniper_accurate_t9, // 0x5c
        ar_fastfire_t9, // 0x5d
        melee_wakizashi_t9, // 0x5e
        hero_pineapplegun, // 0x5f
        hash_48206b17d50533c2, // 0x60
        sniper_quickscope_t9, // 0x61
        ability_dog, // 0x62
        straferun, // 0x63
        eq_seeker_mine, // 0x64
        ww_crossbow_t8, // 0x65
        recon_car, // 0x66
        hash_4b1854c2ff5135b2, // 0x67
        snowball, // 0x68
        feature_custom_class_9, // 0x69
        feature_custom_class_8, // 0x6a
        feature_custom_class_3, // 0x6b
        feature_custom_class_2, // 0x6c
        feature_custom_class_1, // 0x6d
        feature_custom_class_7, // 0x6e
        feature_custom_class_6, // 0x6f
        feature_custom_class_5, // 0x70
        feature_custom_class_4, // 0x71
        uav, // 0x72
        eq_concertina_wire, // 0x73
        feature_custom_class_10, // 0x74
        ar_slowhandling_t9, // 0x75
        eq_acid_bomb, // 0x76
        gadget_spawnbeacon, // 0x77
        ac130, // 0x78
        tr_precisionsemi_t9, // 0x79
        helicopter_comlink, // 0x7a
        gadget_armor, // 0x7b
        tr_damagesemi_t9, // 0x7c
        feature_cac, // 0x7d
        tomahawk_t8, // 0x7e
        shotgun_pump_t9, // 0x7f
        gadget_health_boost, // 0x80
        spectre_grenade, // 0x81
        eq_flash_grenade, // 0x82
        hash_55c23f24d806e3a6, // 0x83
        bare_hands, // 0x84
        ar_slowfire_t9, // 0x85
        tr_powerburst_t9, // 0x86
        trophy_system, // 0x87
        ray_gun_mk2, // 0x88
        tr_longburst_t9, // 0x89
        nuke, // 0x8a
        ww_ray_rifle_t9, // 0x8b
        smg_standard_t9, // 0x8c
        sig_bow_flame, // 0x8d
        eq_slow_grenade, // 0x8e
        special_nailgun_t9, // 0x8f
        smg_accurate_t9, // 0x90
        hash_603c083704cefb0c, // 0x91
        jetfighter, // 0x92
        smg_heavy_t9, // 0x93
        tear_gas, // 0x94
        eq_molotov, // 0x95
        smg_fastfire_t9, // 0x96
        lmg_light_t9, // 0x97
        ai_tank_marker, // 0x98
        gadget_cleanse, // 0x99
        hero_flamethrower, // 0x9a
        sniper_standard_t9, // 0x9b
        smg_spray_t9, // 0x9c
        hero_annihilator, // 0x9d
        ar_fasthandling_t9, // 0x9e
        ar_mobility_t9, // 0x9f
        planemortar, // 0xa0
        sniper_cannon_t9, // 0xa1
        shotgun_semiauto_t9, // 0xa2
        lmg_fastfire_t9, // 0xa3
        ar_standard_t9, // 0xa4
        weapon_null, // 0xa5
        satchel_charge, // 0xa6
        default_specialist_equipment, // 0xa7
        gadget_health_regen_squad, // 0xa8
        hash_76b56e7e0b3b7aac, // 0xa9
        eq_decoy_grenade, // 0xaa
        ray_gun, // 0xab
        hash_788c96e19cc7a46e, // 0xac
        claymore, // 0xad
        smg_handling_t9, // 0xae
        cymbal_monkey, // 0xaf
        shotgun_fullauto_t9, // 0xb0
        hash_7ab3f9a730359659, // 0xb1
        gadget_icepick, // 0xb2
        basketball, // 0xb3
        gadget_camo, // 0xb4
        lmg_slowfire_t9 // 0xb5
    };

    // idx 0x6 members: 0x4c
    enum hash_4b8d95aacf149fb9 {
        tr_fastburst_t9, // 0x0
        lmg_accurate_t9, // 0x1
        melee_etool_t9, // 0x2
        ray_gun_mk2z, // 0x3
        ray_gun_mk2y, // 0x4
        ray_gun_mk2x, // 0x5
        sniper_powersemi_t9, // 0x6
        hash_c21b61b32a5d972, // 0x7
        ar_damage_t9, // 0x8
        homunculus, // 0x9
        spknifeork, // 0xa
        melee_bowie, // 0xb
        ww_random_ray_gun1, // 0xc
        hash_165cf52ce418f5a1, // 0xd
        special_crossbow_t9, // 0xe
        ww_blundergat_t8, // 0xf
        pistol_fullauto_t9, // 0x10
        special_grenadelauncher_t9, // 0x11
        melee_machete_t9, // 0x12
        launcher_freefire_t9, // 0x13
        ar_accurate_t9, // 0x14
        ww_crossbow_impaler_t8, // 0x15
        ww_freezegun_t8, // 0x16
        smg_cqb_t9, // 0x17
        knife_loadout, // 0x18
        hash_2ea46ca74ebdfcac, // 0x19
        smg_capacity_t9, // 0x1a
        melee_baseballbat_t9, // 0x1b
        spork_alcatraz, // 0x1c
        pistol_semiauto_t9, // 0x1d
        melee_mace_t9, // 0x1e
        smg_burst_t9, // 0x1f
        pistol_revolver_t9, // 0x20
        launcher_standard_t9, // 0x21
        melee_bowie_bloody, // 0x22
        special_ballisticknife_t9_dw, // 0x23
        ww_ieu_shockwave_t9, // 0x24
        melee_sledgehammer_t9, // 0x25
        pistol_burst_t9, // 0x26
        hash_4385cf507401820f, // 0x27
        sniper_accurate_t9, // 0x28
        ar_fastfire_t9, // 0x29
        melee_wakizashi_t9, // 0x2a
        hash_48206b17d50533c2, // 0x2b
        sniper_quickscope_t9, // 0x2c
        ww_crossbow_t8, // 0x2d
        ar_slowhandling_t9, // 0x2e
        tr_precisionsemi_t9, // 0x2f
        tr_damagesemi_t9, // 0x30
        shotgun_pump_t9, // 0x31
        hash_55c23f24d806e3a6, // 0x32
        ar_slowfire_t9, // 0x33
        tr_powerburst_t9, // 0x34
        ray_gun_mk2, // 0x35
        tr_longburst_t9, // 0x36
        ww_ray_rifle_t9, // 0x37
        smg_standard_t9, // 0x38
        special_nailgun_t9, // 0x39
        smg_accurate_t9, // 0x3a
        hash_603c083704cefb0c, // 0x3b
        smg_heavy_t9, // 0x3c
        smg_fastfire_t9, // 0x3d
        lmg_light_t9, // 0x3e
        sniper_standard_t9, // 0x3f
        smg_spray_t9, // 0x40
        ar_fasthandling_t9, // 0x41
        ar_mobility_t9, // 0x42
        sniper_cannon_t9, // 0x43
        shotgun_semiauto_t9, // 0x44
        lmg_fastfire_t9, // 0x45
        ar_standard_t9, // 0x46
        ray_gun, // 0x47
        smg_handling_t9, // 0x48
        shotgun_fullauto_t9, // 0x49
        basketball, // 0x4a
        lmg_slowfire_t9 // 0x4b
    };

    // idx 0x7 members: 0x13
    enum hash_7493d39e2637c1e7 {
        bonuscard, // 0x0
        hero, // 0x1
        feature, // 0x2
        weapon_special, // 0x3
        weapon_knife, // 0x4
        character, // 0x5
        miscweapon, // 0x6
        weapon_pistol, // 0x7
        killstreak, // 0x8
        weapon_sniper, // 0x9
        talent, // 0xa
        weapon_launcher, // 0xb
        weapon_grenade, // 0xc
        weapon_lmg, // 0xd
        weapon_tactical, // 0xe
        weapon_smg, // 0xf
        hash_7b68172df6035672, // 0x10
        weapon_cqb, // 0x11
        weapon_assault // 0x12
    };

    // idx 0x8 members: 0x20
    enum hash_d5731f85b8cf294 {
        napalm_strike_zm, // 0x0
        dart, // 0x1
        ultimate_turret, // 0x2
        counteruav, // 0x3
        recon_plane, // 0x4
        weapon_armor, // 0x5
        hoverjet, // 0x6
        remote_missile, // 0x7
        spy_med_pack, // 0x8
        sig_lmg, // 0x9
        spy_wanted_order, // 0xa
        swat_team, // 0xb
        supplydrop_marker, // 0xc
        chopper_gunner, // 0xd
        drone_squadron, // 0xe
        overwatch_helicopter, // 0xf
        napalm_strike, // 0x10
        hero_pineapplegun, // 0x11
        ability_dog, // 0x12
        straferun, // 0x13
        recon_car, // 0x14
        uav, // 0x15
        ac130, // 0x16
        helicopter_comlink, // 0x17
        nuke, // 0x18
        sig_bow_flame, // 0x19
        jetfighter, // 0x1a
        ai_tank_marker, // 0x1b
        helicopter_guard, // 0x1c
        hero_flamethrower, // 0x1d
        hero_annihilator, // 0x1e
        planemortar // 0x1f
    };

    // idx 0x9 members: 0x35
    enum hash_507792265be6dcc4 {
        ability_smart_cover, // 0x0
        hash_7a083f7ba43fa06, // 0x1
        eq_wraith_fire, // 0x2
        missile_turret, // 0x3
        eq_shroud, // 0x4
        gadget_supplypod, // 0x5
        gadget_vision_pulse, // 0x6
        waterballoon, // 0x7
        eq_arm_blade, // 0x8
        gadget_heat_wave, // 0x9
        eq_localheal, // 0xa
        gadget_medicalinjectiongun, // 0xb
        nightingale, // 0xc
        gadget_smart_cover, // 0xd
        willy_pete, // 0xe
        eq_emp_grenade, // 0xf
        frag_grenade, // 0x10
        land_mine, // 0x11
        hatchet, // 0x12
        gadget_health_regen, // 0x13
        listening_device, // 0x14
        hash_3507beb47a6b634e, // 0x15
        eq_stimshot, // 0x16
        gadget_jammer, // 0x17
        hash_3ab58e40011df941, // 0x18
        eq_sticky_grenade, // 0x19
        eq_seeker_mine, // 0x1a
        hash_4b1854c2ff5135b2, // 0x1b
        snowball, // 0x1c
        eq_concertina_wire, // 0x1d
        eq_acid_bomb, // 0x1e
        gadget_spawnbeacon, // 0x1f
        gadget_armor, // 0x20
        tomahawk_t8, // 0x21
        gadget_health_boost, // 0x22
        spectre_grenade, // 0x23
        eq_flash_grenade, // 0x24
        trophy_system, // 0x25
        eq_slow_grenade, // 0x26
        tear_gas, // 0x27
        eq_molotov, // 0x28
        gadget_cleanse, // 0x29
        satchel_charge, // 0x2a
        default_specialist_equipment, // 0x2b
        gadget_health_regen_squad, // 0x2c
        hash_76b56e7e0b3b7aac, // 0x2d
        eq_decoy_grenade, // 0x2e
        hash_788c96e19cc7a46e, // 0x2f
        claymore, // 0x30
        cymbal_monkey, // 0x31
        hash_7ab3f9a730359659, // 0x32
        gadget_icepick, // 0x33
        gadget_camo // 0x34
    };

    // idx 0xa members: 0x3c
    enum hash_1e2de876fb880be2 {
        quickdraw, // 0x0
        acog, // 0x1
        dw, // 0x2
        ir, // 0x3
        barrel2, // 0x4
        mixunder2, // 0x5
        fastreload, // 0x6
        heavy, // 0x7
        steadyaim, // 0x8
        stalker, // 0x9
        barrel, // 0xa
        mixstock, // 0xb
        smoothzoom2, // 0xc
        mixclip2, // 0xd
        reflex4, // 0xe
        reflex3, // 0xf
        reflex2, // 0x10
        stalker2, // 0x11
        extclip2, // 0x12
        tactical, // 0x13
        steadyaim2, // 0x14
        mixclip, // 0x15
        light, // 0x16
        speedgrip2, // 0x17
        mixhandle, // 0x18
        mixunder, // 0x19
        mixbarrel2, // 0x1a
        mixstock2, // 0x1b
        reddot, // 0x1c
        handle, // 0x1d
        mixmuzzle2, // 0x1e
        extclip, // 0x1f
        light2, // 0x20
        heavy2, // 0x21
        holo, // 0x22
        elo, // 0x23
        fastreload2, // 0x24
        scope3x, // 0x25
        scope4x, // 0x26
        mixhandle2, // 0x27
        compensator, // 0x28
        mixbody, // 0x29
        quickdraw2, // 0x2a
        suppressed2, // 0x2b
        speedgrip, // 0x2c
        sprintout2, // 0x2d
        suppressed, // 0x2e
        sprintout, // 0x2f
        grip2, // 0x30
        mixmuzzle, // 0x31
        handle2, // 0x32
        compensator2, // 0x33
        mixbody2, // 0x34
        dualoptic, // 0x35
        grip, // 0x36
        smoothzoom, // 0x37
        reflex, // 0x38
        mixbarrel, // 0x39
        elo3, // 0x3a
        elo2 // 0x3b
    };

    // idx 0xb members: 0x3c
    enum hash_48d8d533750ed177 {
        talent_gungho, // 0x0
        talent_engineer, // 0x1
        talent_coldblooded, // 0x2
        hash_9fb2125b3e673e5, // 0x3
        gear_armor, // 0x4
        hash_cd70e712f842296, // 0x5
        talent_tracker, // 0x6
        hash_101808cdfcd390d6, // 0x7
        hash_128256155e755170, // 0x8
        hash_16cfc7f70dbd8712, // 0x9
        talent_flakjacket, // 0xa
        talent_logistics, // 0xb
        talent_looter, // 0xc
        gadget_medicalinjectiongun, // 0xd
        hash_1d8863d0b864a48b, // 0xe
        hash_1db03fa9862ba330, // 0xf
        hash_20290a682a974c94, // 0x10
        talent_dexterity, // 0x11
        hash_249e75e962ea5275, // 0x12
        talent_resistance, // 0x13
        gear_awareness, // 0x14
        hash_2c3a32e6e2afd1f2, // 0x15
        hash_311283e3107dec74, // 0x16
        talent_lightweight, // 0x17
        talent_awareness, // 0x18
        gear_equipmentcharge, // 0x19
        hash_38c08136902fd553, // 0x1a
        hash_39045b0020cc3e00, // 0x1b
        hash_3c323c7819b10b4d, // 0x1c
        hash_3c60422123a9075b, // 0x1d
        talent_scavenger, // 0x1e
        talent_skulker, // 0x1f
        gear_scorestreakcharge, // 0x20
        talent_ghost, // 0x21
        hash_4f80a2c3398e97c9, // 0x22
        talent_elemental_pop, // 0x23
        talent_brawler, // 0x24
        talent_quartermaster, // 0x25
        hash_59dbe7f72baaa0f0, // 0x26
        hash_59dbe8f72baaa2a3, // 0x27
        hash_59dbecf72baaa96f, // 0x28
        hash_59dbedf72baaab22, // 0x29
        hash_59dbeef72baaacd5, // 0x2a
        hash_5c80935e7a319f21, // 0x2b
        talent_paranoia, // 0x2c
        talent_teamlink, // 0x2d
        talent_deadsilence, // 0x2e
        hash_646fc27884bdaa02, // 0x2f
        gear_medicalinjectiongun, // 0x30
        hash_661cd0d6fb33878c, // 0x31
        talent_spycraft, // 0x32
        hash_7321f9058ee65217, // 0x33
        hash_7716cb3888f5dd8a, // 0x34
        talent_elemental_pop_2, // 0x35
        talent_elemental_pop_3, // 0x36
        talent_elemental_pop_1, // 0x37
        talent_elemental_pop_4, // 0x38
        talent_elemental_pop_5, // 0x39
        hash_7ca561e40dc3c5de, // 0x3a
        hash_7f79d3ba6ed1a1d7 // 0x3b
    };

    // idx 0xc members: 0xc
    enum hash_66db207c660e33f3 {
        bonuscard_overkill, // 0x0
        bonuscard_underkill, // 0x1
        bonuscard_perk_1_greed, // 0x2
        talent_mulekick, // 0x3
        talent_mulekick_1, // 0x4
        talent_mulekick_2, // 0x5
        talent_mulekick_3, // 0x6
        talent_mulekick_4, // 0x7
        talent_mulekick_5, // 0x8
        hash_4a12859000892dda, // 0x9
        hash_639ebbcda56447e7, // 0xa
        bonuscard_primary_gunfighter // 0xb
    };

    // idx 0xd members: 0xfe
    enum hash_1acf39b1d1bee1d5 {
        bonuscard_overkill, // 0x0
        talent_gungho, // 0x1
        tr_fastburst_t9, // 0x2
        talent_engineer, // 0x3
        napalm_strike_zm, // 0x4
        ability_smart_cover, // 0x5
        dart, // 0x6
        ultimate_turret, // 0x7
        hash_5a7fd1af4a1d5c9, // 0x8
        hash_7a083f7ba43fa06, // 0x9
        talent_coldblooded, // 0xa
        lmg_accurate_t9, // 0xb
        melee_etool_t9, // 0xc
        ray_gun_mk2z, // 0xd
        ray_gun_mk2y, // 0xe
        ray_gun_mk2x, // 0xf
        hash_9fb2125b3e673e5, // 0x10
        sniper_powersemi_t9, // 0x11
        eq_wraith_fire, // 0x12
        gear_armor, // 0x13
        counteruav, // 0x14
        hash_cd70e712f842296, // 0x15
        talent_tracker, // 0x16
        missile_turret, // 0x17
        eq_shroud, // 0x18
        gadget_supplypod, // 0x19
        hash_101808cdfcd390d6, // 0x1a
        ar_damage_t9, // 0x1b
        homunculus, // 0x1c
        spknifeork, // 0x1d
        melee_bowie, // 0x1e
        hash_128256155e755170, // 0x1f
        ww_random_ray_gun1, // 0x20
        bonuscard_underkill, // 0x21
        recon_plane, // 0x22
        hash_16cfc7f70dbd8712, // 0x23
        bonuscard_perk_1_greed, // 0x24
        sig_buckler_dw, // 0x25
        talent_mulekick, // 0x26
        talent_flakjacket, // 0x27
        gadget_vision_pulse, // 0x28
        waterballoon, // 0x29
        special_crossbow_t9, // 0x2a
        weapon_armor, // 0x2b
        eq_arm_blade, // 0x2c
        talent_logistics, // 0x2d
        ww_blundergat_t8, // 0x2e
        gadget_heat_wave, // 0x2f
        eq_localheal, // 0x30
        hoverjet, // 0x31
        talent_looter, // 0x32
        gadget_medicalinjectiongun, // 0x33
        hash_1d8863d0b864a48b, // 0x34
        hash_1db03fa9862ba330, // 0x35
        nightingale, // 0x36
        pistol_fullauto_t9, // 0x37
        remote_missile, // 0x38
        gadget_smart_cover, // 0x39
        hash_20290a682a974c94, // 0x3a
        willy_pete, // 0x3b
        eq_emp_grenade, // 0x3c
        special_grenadelauncher_t9, // 0x3d
        melee_machete_t9, // 0x3e
        talent_dexterity, // 0x3f
        launcher_freefire_t9, // 0x40
        hash_249e75e962ea5275, // 0x41
        ar_accurate_t9, // 0x42
        sig_lmg, // 0x43
        ww_crossbow_impaler_t8, // 0x44
        ww_freezegun_t8, // 0x45
        frag_grenade, // 0x46
        smg_cqb_t9, // 0x47
        knife_loadout, // 0x48
        feature_default_class_1, // 0x49
        feature_default_class_3, // 0x4a
        feature_default_class_2, // 0x4b
        feature_default_class_5, // 0x4c
        feature_default_class_4, // 0x4d
        feature_default_class_6, // 0x4e
        talent_resistance, // 0x4f
        spy_wanted_order, // 0x50
        swat_team, // 0x51
        gear_awareness, // 0x52
        land_mine, // 0x53
        hatchet, // 0x54
        hash_2c3a32e6e2afd1f2, // 0x55
        talent_mulekick_1, // 0x56
        talent_mulekick_2, // 0x57
        talent_mulekick_3, // 0x58
        talent_mulekick_4, // 0x59
        talent_mulekick_5, // 0x5a
        supplydrop_marker, // 0x5b
        mute_smoke, // 0x5c
        hash_2ea46ca74ebdfcac, // 0x5d
        smg_capacity_t9, // 0x5e
        chopper_gunner, // 0x5f
        melee_baseballbat_t9, // 0x60
        hash_311283e3107dec74, // 0x61
        null_offhand_secondary, // 0x62
        gadget_health_regen, // 0x63
        hash_31be8125c7d0f273, // 0x64
        listening_device, // 0x65
        talent_lightweight, // 0x66
        talent_awareness, // 0x67
        spork_alcatraz, // 0x68
        drone_squadron, // 0x69
        gear_equipmentcharge, // 0x6a
        pistol_semiauto_t9, // 0x6b
        melee_mace_t9, // 0x6c
        null_offhand_primary, // 0x6d
        smg_burst_t9, // 0x6e
        hash_3507beb47a6b634e, // 0x6f
        pistol_revolver_t9, // 0x70
        eq_stimshot, // 0x71
        hash_38c08136902fd553, // 0x72
        hash_39045b0020cc3e00, // 0x73
        overwatch_helicopter, // 0x74
        gadget_jammer, // 0x75
        hash_3ab58e40011df941, // 0x76
        launcher_standard_t9, // 0x77
        hash_3c323c7819b10b4d, // 0x78
        hash_3c60422123a9075b, // 0x79
        melee_bowie_bloody, // 0x7a
        eq_sticky_grenade, // 0x7b
        special_ballisticknife_t9_dw, // 0x7c
        ww_ieu_shockwave_t9, // 0x7d
        melee_sledgehammer_t9, // 0x7e
        sig_blade, // 0x7f
        talent_scavenger, // 0x80
        pistol_burst_t9, // 0x81
        hash_4385cf507401820f, // 0x82
        napalm_strike, // 0x83
        sniper_accurate_t9, // 0x84
        ar_fastfire_t9, // 0x85
        melee_wakizashi_t9, // 0x86
        hero_pineapplegun, // 0x87
        talent_skulker, // 0x88
        hash_48206b17d50533c2, // 0x89
        sniper_quickscope_t9, // 0x8a
        ability_dog, // 0x8b
        straferun, // 0x8c
        hash_4a12859000892dda, // 0x8d
        eq_seeker_mine, // 0x8e
        ww_crossbow_t8, // 0x8f
        recon_car, // 0x90
        hash_4b1854c2ff5135b2, // 0x91
        snowball, // 0x92
        feature_custom_class_9, // 0x93
        feature_custom_class_8, // 0x94
        feature_custom_class_3, // 0x95
        feature_custom_class_2, // 0x96
        feature_custom_class_1, // 0x97
        feature_custom_class_7, // 0x98
        feature_custom_class_6, // 0x99
        feature_custom_class_5, // 0x9a
        feature_custom_class_4, // 0x9b
        uav, // 0x9c
        eq_concertina_wire, // 0x9d
        gear_scorestreakcharge, // 0x9e
        feature_custom_class_10, // 0x9f
        ar_slowhandling_t9, // 0xa0
        eq_acid_bomb, // 0xa1
        gadget_spawnbeacon, // 0xa2
        ac130, // 0xa3
        talent_ghost, // 0xa4
        hash_4f80a2c3398e97c9, // 0xa5
        tr_precisionsemi_t9, // 0xa6
        helicopter_comlink, // 0xa7
        gadget_armor, // 0xa8
        tr_damagesemi_t9, // 0xa9
        feature_cac, // 0xaa
        talent_elemental_pop, // 0xab
        tomahawk_t8, // 0xac
        shotgun_pump_t9, // 0xad
        gadget_health_boost, // 0xae
        spectre_grenade, // 0xaf
        talent_brawler, // 0xb0
        eq_flash_grenade, // 0xb1
        hash_55c23f24d806e3a6, // 0xb2
        bare_hands, // 0xb3
        ar_slowfire_t9, // 0xb4
        tr_powerburst_t9, // 0xb5
        trophy_system, // 0xb6
        talent_quartermaster, // 0xb7
        hash_59dbe7f72baaa0f0, // 0xb8
        hash_59dbe8f72baaa2a3, // 0xb9
        hash_59dbecf72baaa96f, // 0xba
        hash_59dbedf72baaab22, // 0xbb
        hash_59dbeef72baaacd5, // 0xbc
        ray_gun_mk2, // 0xbd
        tr_longburst_t9, // 0xbe
        nuke, // 0xbf
        ww_ray_rifle_t9, // 0xc0
        smg_standard_t9, // 0xc1
        hash_5c80935e7a319f21, // 0xc2
        sig_bow_flame, // 0xc3
        eq_slow_grenade, // 0xc4
        talent_paranoia, // 0xc5
        special_nailgun_t9, // 0xc6
        smg_accurate_t9, // 0xc7
        hash_603c083704cefb0c, // 0xc8
        jetfighter, // 0xc9
        talent_teamlink, // 0xca
        smg_heavy_t9, // 0xcb
        talent_deadsilence, // 0xcc
        tear_gas, // 0xcd
        hash_639ebbcda56447e7, // 0xce
        eq_molotov, // 0xcf
        smg_fastfire_t9, // 0xd0
        hash_646fc27884bdaa02, // 0xd1
        bonuscard_primary_gunfighter, // 0xd2
        lmg_light_t9, // 0xd3
        ai_tank_marker, // 0xd4
        gear_medicalinjectiongun, // 0xd5
        hash_661cd0d6fb33878c, // 0xd6
        gadget_cleanse, // 0xd7
        hero_flamethrower, // 0xd8
        sniper_standard_t9, // 0xd9
        smg_spray_t9, // 0xda
        hero_annihilator, // 0xdb
        ar_fasthandling_t9, // 0xdc
        ar_mobility_t9, // 0xdd
        planemortar, // 0xde
        sniper_cannon_t9, // 0xdf
        shotgun_semiauto_t9, // 0xe0
        lmg_fastfire_t9, // 0xe1
        ar_standard_t9, // 0xe2
        weapon_null, // 0xe3
        talent_spycraft, // 0xe4
        hash_7321f9058ee65217, // 0xe5
        satchel_charge, // 0xe6
        default_specialist_equipment, // 0xe7
        gadget_health_regen_squad, // 0xe8
        hash_76b56e7e0b3b7aac, // 0xe9
        eq_decoy_grenade, // 0xea
        hash_7716cb3888f5dd8a, // 0xeb
        ray_gun, // 0xec
        hash_788c96e19cc7a46e, // 0xed
        claymore, // 0xee
        talent_elemental_pop_2, // 0xef
        talent_elemental_pop_3, // 0xf0
        talent_elemental_pop_1, // 0xf1
        talent_elemental_pop_4, // 0xf2
        talent_elemental_pop_5, // 0xf3
        smg_handling_t9, // 0xf4
        cymbal_monkey, // 0xf5
        shotgun_fullauto_t9, // 0xf6
        hash_7ab3f9a730359659, // 0xf7
        gadget_icepick, // 0xf8
        hash_7ca561e40dc3c5de, // 0xf9
        basketball, // 0xfa
        gadget_camo, // 0xfb
        hash_7f79d3ba6ed1a1d7, // 0xfc
        lmg_slowfire_t9 // 0xfd
    };

    // root: bitSize: 0x1130, members: 15

    // offset: 0x0, bitSize: 0x6d8(0xdb Byte(s))
    region_info dml;
    // offset: 0x6d8, bitSize: 0x318(0x63 Byte(s)), array:0x3(hti:0xffff)
    lootcontracts loot_contracts[3];
    // offset: 0x9f0, bitSize: 0x20(0x4 Byte(s))
    uint hash_5a1a5df0cdadbba3;
    // offset: 0xa10, bitSize: 0x20(0x4 Byte(s))
    uint hash_151eef37df5ee845;
    // offset: 0xa30, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_tier_boost;
    // offset: 0xa38, bitSize: 0x8(0x1 Byte(s))
    hash_54196e9e9860f0be platform;
    // offset: 0xa40, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_party_tier_boost;
    // offset: 0xa48, bitSize: 0x20(0x4 Byte(s))
    uint hash_1e4fbbabf3da13fa;
    // offset: 0xa68, bitSize: 0x110(0x22 Byte(s)), array:0x11(hti:0xffff)
    hash_33944d215cff6222 hash_33944d215cff6222[17];
    // offset: 0xb78, bitSize: 0x4c0(0x98 Byte(s)), array:0x4c(hti:0x6)
    hash_1c86958671ff27fd hash_4953b2b12f1d6b1b[hash_4b8d95aacf149fb9];
    // offset: 0x1038, bitSize: 0xa0(0x14 Byte(s))
    client_header client;
    // offset: 0x10d8, bitSize: 0x8(0x1 Byte(s))
    byte tier_boost;
    // offset: 0x10e0, bitSize: 0x1
    bool hash_4ca91f34eba5a203;
    // offset: 0x10e1, bitSize: 0x4c, array:0x4c(hti:0x6)
    bool hash_4473319d8a8d9dcf[hash_4b8d95aacf149fb9];
};

version hash_7a1dd4839a8b1106 {
    // enums ..... 14 (0xe)
    // structs ... 9 (0x9)
    // header bit size .. 4648 (0x1228)
    // header byte size . 581 (0x245)

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
    struct hash_1c86958671ff27fd {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_50ab8b7df567cd2a;
    };

    // bitSize: 0x108, members: 6
    struct lootcontracts {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint xp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint contractid;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:3 contractgamemode;
        // offset: 0x48, bitSize: 0x40(0x8 Byte(s))
        xhash contracthash;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 progress;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 target;
    };

    // bitSize: 0x10, members: 3
    struct hash_33944d215cff6222 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_174d79c341ec2c6c;
        // offset: 0x8, bitSize: 0x1
        bool hash_2401d7a2dc706a6c;
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

    // idx 0x5 members: 0xba
    enum hash_10d50fe10481423c {
        ww_mega_barrel_fullauto_blazer_beam_t9, // 0x0
        tr_fastburst_t9, // 0x1
        napalm_strike_zm, // 0x2
        ability_smart_cover, // 0x3
        dart, // 0x4
        ultimate_turret, // 0x5
        hash_5a7fd1af4a1d5c9, // 0x6
        hash_7a083f7ba43fa06, // 0x7
        lmg_accurate_t9, // 0x8
        melee_etool_t9, // 0x9
        ray_gun_mk2z, // 0xa
        ray_gun_mk2y, // 0xb
        ray_gun_mk2x, // 0xc
        sniper_powersemi_t9, // 0xd
        eq_wraith_fire, // 0xe
        counteruav, // 0xf
        missile_turret, // 0x10
        eq_shroud, // 0x11
        gadget_supplypod, // 0x12
        ar_damage_t9, // 0x13
        homunculus, // 0x14
        spknifeork, // 0x15
        melee_bowie, // 0x16
        ww_mega_barrel_fullauto_diffusion_beam_t9, // 0x17
        ww_random_ray_gun1, // 0x18
        recon_plane, // 0x19
        sig_buckler_dw, // 0x1a
        gadget_vision_pulse, // 0x1b
        waterballoon, // 0x1c
        special_crossbow_t9, // 0x1d
        weapon_armor, // 0x1e
        eq_arm_blade, // 0x1f
        ww_blundergat_t8, // 0x20
        gadget_heat_wave, // 0x21
        eq_localheal, // 0x22
        hoverjet, // 0x23
        nightingale, // 0x24
        pistol_fullauto_t9, // 0x25
        remote_missile, // 0x26
        gadget_smart_cover, // 0x27
        willy_pete, // 0x28
        eq_emp_grenade, // 0x29
        special_grenadelauncher_t9, // 0x2a
        melee_machete_t9, // 0x2b
        launcher_freefire_t9, // 0x2c
        ar_accurate_t9, // 0x2d
        sig_lmg, // 0x2e
        ww_crossbow_impaler_t8, // 0x2f
        ww_freezegun_t8, // 0x30
        frag_grenade, // 0x31
        smg_cqb_t9, // 0x32
        knife_loadout, // 0x33
        feature_default_class_1, // 0x34
        feature_default_class_3, // 0x35
        feature_default_class_2, // 0x36
        feature_default_class_5, // 0x37
        feature_default_class_4, // 0x38
        feature_default_class_6, // 0x39
        spy_wanted_order, // 0x3a
        swat_team, // 0x3b
        land_mine, // 0x3c
        hatchet, // 0x3d
        supplydrop_marker, // 0x3e
        mute_smoke, // 0x3f
        hash_2ea46ca74ebdfcac, // 0x40
        smg_capacity_t9, // 0x41
        chopper_gunner, // 0x42
        melee_baseballbat_t9, // 0x43
        null_offhand_secondary, // 0x44
        gadget_health_regen, // 0x45
        hash_31be8125c7d0f273, // 0x46
        listening_device, // 0x47
        spork_alcatraz, // 0x48
        drone_squadron, // 0x49
        pistol_semiauto_t9, // 0x4a
        melee_mace_t9, // 0x4b
        null_offhand_primary, // 0x4c
        smg_burst_t9, // 0x4d
        hash_3507beb47a6b634e, // 0x4e
        pistol_revolver_t9, // 0x4f
        eq_stimshot, // 0x50
        ww_mega_barrel_fullauto_copycat_t9, // 0x51
        overwatch_helicopter, // 0x52
        gadget_jammer, // 0x53
        hash_3ab58e40011df941, // 0x54
        launcher_standard_t9, // 0x55
        melee_bowie_bloody, // 0x56
        eq_sticky_grenade, // 0x57
        special_ballisticknife_t9_dw, // 0x58
        ww_ieu_shockwave_t9, // 0x59
        melee_sledgehammer_t9, // 0x5a
        sig_blade, // 0x5b
        pistol_burst_t9, // 0x5c
        hash_4385cf507401820f, // 0x5d
        napalm_strike, // 0x5e
        sniper_accurate_t9, // 0x5f
        ar_fastfire_t9, // 0x60
        melee_wakizashi_t9, // 0x61
        hero_pineapplegun, // 0x62
        hash_48206b17d50533c2, // 0x63
        sniper_quickscope_t9, // 0x64
        ability_dog, // 0x65
        straferun, // 0x66
        eq_seeker_mine, // 0x67
        ww_crossbow_t8, // 0x68
        recon_car, // 0x69
        hash_4b1854c2ff5135b2, // 0x6a
        snowball, // 0x6b
        feature_custom_class_9, // 0x6c
        feature_custom_class_8, // 0x6d
        feature_custom_class_3, // 0x6e
        feature_custom_class_2, // 0x6f
        feature_custom_class_1, // 0x70
        feature_custom_class_7, // 0x71
        feature_custom_class_6, // 0x72
        feature_custom_class_5, // 0x73
        feature_custom_class_4, // 0x74
        uav, // 0x75
        eq_concertina_wire, // 0x76
        feature_custom_class_10, // 0x77
        ar_slowhandling_t9, // 0x78
        eq_acid_bomb, // 0x79
        gadget_spawnbeacon, // 0x7a
        ac130, // 0x7b
        tr_precisionsemi_t9, // 0x7c
        helicopter_comlink, // 0x7d
        gadget_armor, // 0x7e
        tr_damagesemi_t9, // 0x7f
        feature_cac, // 0x80
        tomahawk_t8, // 0x81
        shotgun_pump_t9, // 0x82
        gadget_health_boost, // 0x83
        spectre_grenade, // 0x84
        eq_flash_grenade, // 0x85
        hash_55c23f24d806e3a6, // 0x86
        bare_hands, // 0x87
        ar_slowfire_t9, // 0x88
        tr_powerburst_t9, // 0x89
        trophy_system, // 0x8a
        ray_gun_mk2, // 0x8b
        tr_longburst_t9, // 0x8c
        nuke, // 0x8d
        ww_ray_rifle_t9, // 0x8e
        smg_standard_t9, // 0x8f
        sig_bow_flame, // 0x90
        eq_slow_grenade, // 0x91
        special_nailgun_t9, // 0x92
        smg_accurate_t9, // 0x93
        hash_603c083704cefb0c, // 0x94
        jetfighter, // 0x95
        smg_heavy_t9, // 0x96
        tear_gas, // 0x97
        eq_molotov, // 0x98
        smg_fastfire_t9, // 0x99
        lmg_light_t9, // 0x9a
        ai_tank_marker, // 0x9b
        gadget_cleanse, // 0x9c
        hero_flamethrower, // 0x9d
        sniper_standard_t9, // 0x9e
        smg_spray_t9, // 0x9f
        hero_annihilator, // 0xa0
        ar_fasthandling_t9, // 0xa1
        ar_mobility_t9, // 0xa2
        planemortar, // 0xa3
        sniper_cannon_t9, // 0xa4
        shotgun_semiauto_t9, // 0xa5
        lmg_fastfire_t9, // 0xa6
        ar_standard_t9, // 0xa7
        weapon_null, // 0xa8
        satchel_charge, // 0xa9
        default_specialist_equipment, // 0xaa
        gadget_health_regen_squad, // 0xab
        hash_76b56e7e0b3b7aac, // 0xac
        eq_decoy_grenade, // 0xad
        ray_gun, // 0xae
        hash_788c96e19cc7a46e, // 0xaf
        claymore, // 0xb0
        smg_handling_t9, // 0xb1
        cymbal_monkey, // 0xb2
        shotgun_fullauto_t9, // 0xb3
        hash_7ab3f9a730359659, // 0xb4
        gadget_icepick, // 0xb5
        ww_mega_barrel_fullauto_micro_missile_t9, // 0xb6
        basketball, // 0xb7
        gadget_camo, // 0xb8
        lmg_slowfire_t9 // 0xb9
    };

    // idx 0x6 members: 0x50
    enum hash_4b8d95aacf149fb9 {
        ww_mega_barrel_fullauto_blazer_beam_t9, // 0x0
        tr_fastburst_t9, // 0x1
        lmg_accurate_t9, // 0x2
        melee_etool_t9, // 0x3
        ray_gun_mk2z, // 0x4
        ray_gun_mk2y, // 0x5
        ray_gun_mk2x, // 0x6
        sniper_powersemi_t9, // 0x7
        hash_c21b61b32a5d972, // 0x8
        ar_damage_t9, // 0x9
        homunculus, // 0xa
        spknifeork, // 0xb
        melee_bowie, // 0xc
        ww_mega_barrel_fullauto_diffusion_beam_t9, // 0xd
        ww_random_ray_gun1, // 0xe
        hash_165cf52ce418f5a1, // 0xf
        special_crossbow_t9, // 0x10
        ww_blundergat_t8, // 0x11
        pistol_fullauto_t9, // 0x12
        special_grenadelauncher_t9, // 0x13
        melee_machete_t9, // 0x14
        launcher_freefire_t9, // 0x15
        ar_accurate_t9, // 0x16
        ww_crossbow_impaler_t8, // 0x17
        ww_freezegun_t8, // 0x18
        smg_cqb_t9, // 0x19
        knife_loadout, // 0x1a
        hash_2ea46ca74ebdfcac, // 0x1b
        smg_capacity_t9, // 0x1c
        melee_baseballbat_t9, // 0x1d
        spork_alcatraz, // 0x1e
        pistol_semiauto_t9, // 0x1f
        melee_mace_t9, // 0x20
        smg_burst_t9, // 0x21
        pistol_revolver_t9, // 0x22
        ww_mega_barrel_fullauto_copycat_t9, // 0x23
        launcher_standard_t9, // 0x24
        melee_bowie_bloody, // 0x25
        special_ballisticknife_t9_dw, // 0x26
        ww_ieu_shockwave_t9, // 0x27
        melee_sledgehammer_t9, // 0x28
        pistol_burst_t9, // 0x29
        hash_4385cf507401820f, // 0x2a
        sniper_accurate_t9, // 0x2b
        ar_fastfire_t9, // 0x2c
        melee_wakizashi_t9, // 0x2d
        hash_48206b17d50533c2, // 0x2e
        sniper_quickscope_t9, // 0x2f
        ww_crossbow_t8, // 0x30
        ar_slowhandling_t9, // 0x31
        tr_precisionsemi_t9, // 0x32
        tr_damagesemi_t9, // 0x33
        shotgun_pump_t9, // 0x34
        hash_55c23f24d806e3a6, // 0x35
        ar_slowfire_t9, // 0x36
        tr_powerburst_t9, // 0x37
        ray_gun_mk2, // 0x38
        tr_longburst_t9, // 0x39
        ww_ray_rifle_t9, // 0x3a
        smg_standard_t9, // 0x3b
        special_nailgun_t9, // 0x3c
        smg_accurate_t9, // 0x3d
        hash_603c083704cefb0c, // 0x3e
        smg_heavy_t9, // 0x3f
        smg_fastfire_t9, // 0x40
        lmg_light_t9, // 0x41
        sniper_standard_t9, // 0x42
        smg_spray_t9, // 0x43
        ar_fasthandling_t9, // 0x44
        ar_mobility_t9, // 0x45
        sniper_cannon_t9, // 0x46
        shotgun_semiauto_t9, // 0x47
        lmg_fastfire_t9, // 0x48
        ar_standard_t9, // 0x49
        ray_gun, // 0x4a
        smg_handling_t9, // 0x4b
        shotgun_fullauto_t9, // 0x4c
        ww_mega_barrel_fullauto_micro_missile_t9, // 0x4d
        basketball, // 0x4e
        lmg_slowfire_t9 // 0x4f
    };

    // idx 0x7 members: 0x13
    enum hash_7493d39e2637c1e7 {
        bonuscard, // 0x0
        hero, // 0x1
        feature, // 0x2
        weapon_special, // 0x3
        weapon_knife, // 0x4
        character, // 0x5
        miscweapon, // 0x6
        weapon_pistol, // 0x7
        killstreak, // 0x8
        weapon_sniper, // 0x9
        talent, // 0xa
        weapon_launcher, // 0xb
        weapon_grenade, // 0xc
        weapon_lmg, // 0xd
        weapon_tactical, // 0xe
        weapon_smg, // 0xf
        hash_7b68172df6035672, // 0x10
        weapon_cqb, // 0x11
        weapon_assault // 0x12
    };

    // idx 0x8 members: 0x20
    enum hash_d5731f85b8cf294 {
        napalm_strike_zm, // 0x0
        dart, // 0x1
        ultimate_turret, // 0x2
        counteruav, // 0x3
        recon_plane, // 0x4
        weapon_armor, // 0x5
        hoverjet, // 0x6
        remote_missile, // 0x7
        spy_med_pack, // 0x8
        sig_lmg, // 0x9
        spy_wanted_order, // 0xa
        swat_team, // 0xb
        supplydrop_marker, // 0xc
        chopper_gunner, // 0xd
        drone_squadron, // 0xe
        overwatch_helicopter, // 0xf
        napalm_strike, // 0x10
        hero_pineapplegun, // 0x11
        ability_dog, // 0x12
        straferun, // 0x13
        recon_car, // 0x14
        uav, // 0x15
        ac130, // 0x16
        helicopter_comlink, // 0x17
        nuke, // 0x18
        sig_bow_flame, // 0x19
        jetfighter, // 0x1a
        ai_tank_marker, // 0x1b
        helicopter_guard, // 0x1c
        hero_flamethrower, // 0x1d
        hero_annihilator, // 0x1e
        planemortar // 0x1f
    };

    // idx 0x9 members: 0x35
    enum hash_507792265be6dcc4 {
        ability_smart_cover, // 0x0
        hash_7a083f7ba43fa06, // 0x1
        eq_wraith_fire, // 0x2
        missile_turret, // 0x3
        eq_shroud, // 0x4
        gadget_supplypod, // 0x5
        gadget_vision_pulse, // 0x6
        waterballoon, // 0x7
        eq_arm_blade, // 0x8
        gadget_heat_wave, // 0x9
        eq_localheal, // 0xa
        gadget_medicalinjectiongun, // 0xb
        nightingale, // 0xc
        gadget_smart_cover, // 0xd
        willy_pete, // 0xe
        eq_emp_grenade, // 0xf
        frag_grenade, // 0x10
        land_mine, // 0x11
        hatchet, // 0x12
        gadget_health_regen, // 0x13
        listening_device, // 0x14
        hash_3507beb47a6b634e, // 0x15
        eq_stimshot, // 0x16
        gadget_jammer, // 0x17
        hash_3ab58e40011df941, // 0x18
        eq_sticky_grenade, // 0x19
        eq_seeker_mine, // 0x1a
        hash_4b1854c2ff5135b2, // 0x1b
        snowball, // 0x1c
        eq_concertina_wire, // 0x1d
        eq_acid_bomb, // 0x1e
        gadget_spawnbeacon, // 0x1f
        gadget_armor, // 0x20
        tomahawk_t8, // 0x21
        gadget_health_boost, // 0x22
        spectre_grenade, // 0x23
        eq_flash_grenade, // 0x24
        trophy_system, // 0x25
        eq_slow_grenade, // 0x26
        tear_gas, // 0x27
        eq_molotov, // 0x28
        gadget_cleanse, // 0x29
        satchel_charge, // 0x2a
        default_specialist_equipment, // 0x2b
        gadget_health_regen_squad, // 0x2c
        hash_76b56e7e0b3b7aac, // 0x2d
        eq_decoy_grenade, // 0x2e
        hash_788c96e19cc7a46e, // 0x2f
        claymore, // 0x30
        cymbal_monkey, // 0x31
        hash_7ab3f9a730359659, // 0x32
        gadget_icepick, // 0x33
        gadget_camo // 0x34
    };

    // idx 0xa members: 0x3c
    enum hash_1e2de876fb880be2 {
        quickdraw, // 0x0
        acog, // 0x1
        dw, // 0x2
        ir, // 0x3
        barrel2, // 0x4
        mixunder2, // 0x5
        fastreload, // 0x6
        heavy, // 0x7
        steadyaim, // 0x8
        stalker, // 0x9
        barrel, // 0xa
        mixstock, // 0xb
        smoothzoom2, // 0xc
        mixclip2, // 0xd
        reflex4, // 0xe
        reflex3, // 0xf
        reflex2, // 0x10
        stalker2, // 0x11
        extclip2, // 0x12
        tactical, // 0x13
        steadyaim2, // 0x14
        mixclip, // 0x15
        light, // 0x16
        speedgrip2, // 0x17
        mixhandle, // 0x18
        mixunder, // 0x19
        mixbarrel2, // 0x1a
        mixstock2, // 0x1b
        reddot, // 0x1c
        handle, // 0x1d
        mixmuzzle2, // 0x1e
        extclip, // 0x1f
        light2, // 0x20
        heavy2, // 0x21
        holo, // 0x22
        elo, // 0x23
        fastreload2, // 0x24
        scope3x, // 0x25
        scope4x, // 0x26
        mixhandle2, // 0x27
        compensator, // 0x28
        mixbody, // 0x29
        quickdraw2, // 0x2a
        suppressed2, // 0x2b
        speedgrip, // 0x2c
        sprintout2, // 0x2d
        suppressed, // 0x2e
        sprintout, // 0x2f
        grip2, // 0x30
        mixmuzzle, // 0x31
        handle2, // 0x32
        compensator2, // 0x33
        mixbody2, // 0x34
        dualoptic, // 0x35
        grip, // 0x36
        smoothzoom, // 0x37
        reflex, // 0x38
        mixbarrel, // 0x39
        elo3, // 0x3a
        elo2 // 0x3b
    };

    // idx 0xb members: 0x3c
    enum hash_48d8d533750ed177 {
        talent_gungho, // 0x0
        talent_engineer, // 0x1
        talent_coldblooded, // 0x2
        hash_9fb2125b3e673e5, // 0x3
        gear_armor, // 0x4
        hash_cd70e712f842296, // 0x5
        talent_tracker, // 0x6
        hash_101808cdfcd390d6, // 0x7
        hash_128256155e755170, // 0x8
        hash_16cfc7f70dbd8712, // 0x9
        talent_flakjacket, // 0xa
        talent_logistics, // 0xb
        talent_looter, // 0xc
        gadget_medicalinjectiongun, // 0xd
        hash_1d8863d0b864a48b, // 0xe
        hash_1db03fa9862ba330, // 0xf
        hash_20290a682a974c94, // 0x10
        talent_dexterity, // 0x11
        hash_249e75e962ea5275, // 0x12
        talent_resistance, // 0x13
        gear_awareness, // 0x14
        hash_2c3a32e6e2afd1f2, // 0x15
        hash_311283e3107dec74, // 0x16
        talent_lightweight, // 0x17
        talent_awareness, // 0x18
        gear_equipmentcharge, // 0x19
        hash_38c08136902fd553, // 0x1a
        hash_39045b0020cc3e00, // 0x1b
        hash_3c323c7819b10b4d, // 0x1c
        hash_3c60422123a9075b, // 0x1d
        talent_scavenger, // 0x1e
        talent_skulker, // 0x1f
        gear_scorestreakcharge, // 0x20
        talent_ghost, // 0x21
        hash_4f80a2c3398e97c9, // 0x22
        talent_elemental_pop, // 0x23
        talent_brawler, // 0x24
        talent_quartermaster, // 0x25
        hash_59dbe7f72baaa0f0, // 0x26
        hash_59dbe8f72baaa2a3, // 0x27
        hash_59dbecf72baaa96f, // 0x28
        hash_59dbedf72baaab22, // 0x29
        hash_59dbeef72baaacd5, // 0x2a
        hash_5c80935e7a319f21, // 0x2b
        talent_paranoia, // 0x2c
        talent_teamlink, // 0x2d
        talent_deadsilence, // 0x2e
        hash_646fc27884bdaa02, // 0x2f
        gear_medicalinjectiongun, // 0x30
        hash_661cd0d6fb33878c, // 0x31
        talent_spycraft, // 0x32
        hash_7321f9058ee65217, // 0x33
        hash_7716cb3888f5dd8a, // 0x34
        talent_elemental_pop_2, // 0x35
        talent_elemental_pop_3, // 0x36
        talent_elemental_pop_1, // 0x37
        talent_elemental_pop_4, // 0x38
        talent_elemental_pop_5, // 0x39
        hash_7ca561e40dc3c5de, // 0x3a
        hash_7f79d3ba6ed1a1d7 // 0x3b
    };

    // idx 0xc members: 0xc
    enum hash_66db207c660e33f3 {
        bonuscard_overkill, // 0x0
        bonuscard_underkill, // 0x1
        bonuscard_perk_1_greed, // 0x2
        talent_mulekick, // 0x3
        talent_mulekick_1, // 0x4
        talent_mulekick_2, // 0x5
        talent_mulekick_3, // 0x6
        talent_mulekick_4, // 0x7
        talent_mulekick_5, // 0x8
        hash_4a12859000892dda, // 0x9
        hash_639ebbcda56447e7, // 0xa
        bonuscard_primary_gunfighter // 0xb
    };

    // idx 0xd members: 0x102
    enum hash_1acf39b1d1bee1d5 {
        bonuscard_overkill, // 0x0
        ww_mega_barrel_fullauto_blazer_beam_t9, // 0x1
        talent_gungho, // 0x2
        tr_fastburst_t9, // 0x3
        talent_engineer, // 0x4
        napalm_strike_zm, // 0x5
        ability_smart_cover, // 0x6
        dart, // 0x7
        ultimate_turret, // 0x8
        hash_5a7fd1af4a1d5c9, // 0x9
        hash_7a083f7ba43fa06, // 0xa
        talent_coldblooded, // 0xb
        lmg_accurate_t9, // 0xc
        melee_etool_t9, // 0xd
        ray_gun_mk2z, // 0xe
        ray_gun_mk2y, // 0xf
        ray_gun_mk2x, // 0x10
        hash_9fb2125b3e673e5, // 0x11
        sniper_powersemi_t9, // 0x12
        eq_wraith_fire, // 0x13
        gear_armor, // 0x14
        counteruav, // 0x15
        hash_cd70e712f842296, // 0x16
        talent_tracker, // 0x17
        missile_turret, // 0x18
        eq_shroud, // 0x19
        gadget_supplypod, // 0x1a
        hash_101808cdfcd390d6, // 0x1b
        ar_damage_t9, // 0x1c
        homunculus, // 0x1d
        spknifeork, // 0x1e
        melee_bowie, // 0x1f
        hash_128256155e755170, // 0x20
        ww_mega_barrel_fullauto_diffusion_beam_t9, // 0x21
        ww_random_ray_gun1, // 0x22
        bonuscard_underkill, // 0x23
        recon_plane, // 0x24
        hash_16cfc7f70dbd8712, // 0x25
        bonuscard_perk_1_greed, // 0x26
        sig_buckler_dw, // 0x27
        talent_mulekick, // 0x28
        talent_flakjacket, // 0x29
        gadget_vision_pulse, // 0x2a
        waterballoon, // 0x2b
        special_crossbow_t9, // 0x2c
        weapon_armor, // 0x2d
        eq_arm_blade, // 0x2e
        talent_logistics, // 0x2f
        ww_blundergat_t8, // 0x30
        gadget_heat_wave, // 0x31
        eq_localheal, // 0x32
        hoverjet, // 0x33
        talent_looter, // 0x34
        gadget_medicalinjectiongun, // 0x35
        hash_1d8863d0b864a48b, // 0x36
        hash_1db03fa9862ba330, // 0x37
        nightingale, // 0x38
        pistol_fullauto_t9, // 0x39
        remote_missile, // 0x3a
        gadget_smart_cover, // 0x3b
        hash_20290a682a974c94, // 0x3c
        willy_pete, // 0x3d
        eq_emp_grenade, // 0x3e
        special_grenadelauncher_t9, // 0x3f
        melee_machete_t9, // 0x40
        talent_dexterity, // 0x41
        launcher_freefire_t9, // 0x42
        hash_249e75e962ea5275, // 0x43
        ar_accurate_t9, // 0x44
        sig_lmg, // 0x45
        ww_crossbow_impaler_t8, // 0x46
        ww_freezegun_t8, // 0x47
        frag_grenade, // 0x48
        smg_cqb_t9, // 0x49
        knife_loadout, // 0x4a
        feature_default_class_1, // 0x4b
        feature_default_class_3, // 0x4c
        feature_default_class_2, // 0x4d
        feature_default_class_5, // 0x4e
        feature_default_class_4, // 0x4f
        feature_default_class_6, // 0x50
        talent_resistance, // 0x51
        spy_wanted_order, // 0x52
        swat_team, // 0x53
        gear_awareness, // 0x54
        land_mine, // 0x55
        hatchet, // 0x56
        hash_2c3a32e6e2afd1f2, // 0x57
        talent_mulekick_1, // 0x58
        talent_mulekick_2, // 0x59
        talent_mulekick_3, // 0x5a
        talent_mulekick_4, // 0x5b
        talent_mulekick_5, // 0x5c
        supplydrop_marker, // 0x5d
        mute_smoke, // 0x5e
        hash_2ea46ca74ebdfcac, // 0x5f
        smg_capacity_t9, // 0x60
        chopper_gunner, // 0x61
        melee_baseballbat_t9, // 0x62
        hash_311283e3107dec74, // 0x63
        null_offhand_secondary, // 0x64
        gadget_health_regen, // 0x65
        hash_31be8125c7d0f273, // 0x66
        listening_device, // 0x67
        talent_lightweight, // 0x68
        talent_awareness, // 0x69
        spork_alcatraz, // 0x6a
        drone_squadron, // 0x6b
        gear_equipmentcharge, // 0x6c
        pistol_semiauto_t9, // 0x6d
        melee_mace_t9, // 0x6e
        null_offhand_primary, // 0x6f
        smg_burst_t9, // 0x70
        hash_3507beb47a6b634e, // 0x71
        pistol_revolver_t9, // 0x72
        eq_stimshot, // 0x73
        ww_mega_barrel_fullauto_copycat_t9, // 0x74
        hash_38c08136902fd553, // 0x75
        hash_39045b0020cc3e00, // 0x76
        overwatch_helicopter, // 0x77
        gadget_jammer, // 0x78
        hash_3ab58e40011df941, // 0x79
        launcher_standard_t9, // 0x7a
        hash_3c323c7819b10b4d, // 0x7b
        hash_3c60422123a9075b, // 0x7c
        melee_bowie_bloody, // 0x7d
        eq_sticky_grenade, // 0x7e
        special_ballisticknife_t9_dw, // 0x7f
        ww_ieu_shockwave_t9, // 0x80
        melee_sledgehammer_t9, // 0x81
        sig_blade, // 0x82
        talent_scavenger, // 0x83
        pistol_burst_t9, // 0x84
        hash_4385cf507401820f, // 0x85
        napalm_strike, // 0x86
        sniper_accurate_t9, // 0x87
        ar_fastfire_t9, // 0x88
        melee_wakizashi_t9, // 0x89
        hero_pineapplegun, // 0x8a
        talent_skulker, // 0x8b
        hash_48206b17d50533c2, // 0x8c
        sniper_quickscope_t9, // 0x8d
        ability_dog, // 0x8e
        straferun, // 0x8f
        hash_4a12859000892dda, // 0x90
        eq_seeker_mine, // 0x91
        ww_crossbow_t8, // 0x92
        recon_car, // 0x93
        hash_4b1854c2ff5135b2, // 0x94
        snowball, // 0x95
        feature_custom_class_9, // 0x96
        feature_custom_class_8, // 0x97
        feature_custom_class_3, // 0x98
        feature_custom_class_2, // 0x99
        feature_custom_class_1, // 0x9a
        feature_custom_class_7, // 0x9b
        feature_custom_class_6, // 0x9c
        feature_custom_class_5, // 0x9d
        feature_custom_class_4, // 0x9e
        uav, // 0x9f
        eq_concertina_wire, // 0xa0
        gear_scorestreakcharge, // 0xa1
        feature_custom_class_10, // 0xa2
        ar_slowhandling_t9, // 0xa3
        eq_acid_bomb, // 0xa4
        gadget_spawnbeacon, // 0xa5
        ac130, // 0xa6
        talent_ghost, // 0xa7
        hash_4f80a2c3398e97c9, // 0xa8
        tr_precisionsemi_t9, // 0xa9
        helicopter_comlink, // 0xaa
        gadget_armor, // 0xab
        tr_damagesemi_t9, // 0xac
        feature_cac, // 0xad
        talent_elemental_pop, // 0xae
        tomahawk_t8, // 0xaf
        shotgun_pump_t9, // 0xb0
        gadget_health_boost, // 0xb1
        spectre_grenade, // 0xb2
        talent_brawler, // 0xb3
        eq_flash_grenade, // 0xb4
        hash_55c23f24d806e3a6, // 0xb5
        bare_hands, // 0xb6
        ar_slowfire_t9, // 0xb7
        tr_powerburst_t9, // 0xb8
        trophy_system, // 0xb9
        talent_quartermaster, // 0xba
        hash_59dbe7f72baaa0f0, // 0xbb
        hash_59dbe8f72baaa2a3, // 0xbc
        hash_59dbecf72baaa96f, // 0xbd
        hash_59dbedf72baaab22, // 0xbe
        hash_59dbeef72baaacd5, // 0xbf
        ray_gun_mk2, // 0xc0
        tr_longburst_t9, // 0xc1
        nuke, // 0xc2
        ww_ray_rifle_t9, // 0xc3
        smg_standard_t9, // 0xc4
        hash_5c80935e7a319f21, // 0xc5
        sig_bow_flame, // 0xc6
        eq_slow_grenade, // 0xc7
        talent_paranoia, // 0xc8
        special_nailgun_t9, // 0xc9
        smg_accurate_t9, // 0xca
        hash_603c083704cefb0c, // 0xcb
        jetfighter, // 0xcc
        talent_teamlink, // 0xcd
        smg_heavy_t9, // 0xce
        talent_deadsilence, // 0xcf
        tear_gas, // 0xd0
        hash_639ebbcda56447e7, // 0xd1
        eq_molotov, // 0xd2
        smg_fastfire_t9, // 0xd3
        hash_646fc27884bdaa02, // 0xd4
        bonuscard_primary_gunfighter, // 0xd5
        lmg_light_t9, // 0xd6
        ai_tank_marker, // 0xd7
        gear_medicalinjectiongun, // 0xd8
        hash_661cd0d6fb33878c, // 0xd9
        gadget_cleanse, // 0xda
        hero_flamethrower, // 0xdb
        sniper_standard_t9, // 0xdc
        smg_spray_t9, // 0xdd
        hero_annihilator, // 0xde
        ar_fasthandling_t9, // 0xdf
        ar_mobility_t9, // 0xe0
        planemortar, // 0xe1
        sniper_cannon_t9, // 0xe2
        shotgun_semiauto_t9, // 0xe3
        lmg_fastfire_t9, // 0xe4
        ar_standard_t9, // 0xe5
        weapon_null, // 0xe6
        talent_spycraft, // 0xe7
        hash_7321f9058ee65217, // 0xe8
        satchel_charge, // 0xe9
        default_specialist_equipment, // 0xea
        gadget_health_regen_squad, // 0xeb
        hash_76b56e7e0b3b7aac, // 0xec
        eq_decoy_grenade, // 0xed
        hash_7716cb3888f5dd8a, // 0xee
        ray_gun, // 0xef
        hash_788c96e19cc7a46e, // 0xf0
        claymore, // 0xf1
        talent_elemental_pop_2, // 0xf2
        talent_elemental_pop_3, // 0xf3
        talent_elemental_pop_1, // 0xf4
        talent_elemental_pop_4, // 0xf5
        talent_elemental_pop_5, // 0xf6
        smg_handling_t9, // 0xf7
        cymbal_monkey, // 0xf8
        shotgun_fullauto_t9, // 0xf9
        hash_7ab3f9a730359659, // 0xfa
        gadget_icepick, // 0xfb
        ww_mega_barrel_fullauto_micro_missile_t9, // 0xfc
        hash_7ca561e40dc3c5de, // 0xfd
        basketball, // 0xfe
        gadget_camo, // 0xff
        hash_7f79d3ba6ed1a1d7, // 0x100
        lmg_slowfire_t9 // 0x101
    };

    // root: bitSize: 0x1178, members: 15

    // offset: 0x0, bitSize: 0x6d8(0xdb Byte(s))
    region_info dml;
    // offset: 0x6d8, bitSize: 0x318(0x63 Byte(s)), array:0x3(hti:0xffff)
    lootcontracts loot_contracts[3];
    // offset: 0x9f0, bitSize: 0x20(0x4 Byte(s))
    uint hash_5a1a5df0cdadbba3;
    // offset: 0xa10, bitSize: 0x20(0x4 Byte(s))
    uint hash_151eef37df5ee845;
    // offset: 0xa30, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_tier_boost;
    // offset: 0xa38, bitSize: 0x8(0x1 Byte(s))
    hash_54196e9e9860f0be platform;
    // offset: 0xa40, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_party_tier_boost;
    // offset: 0xa48, bitSize: 0x20(0x4 Byte(s))
    uint hash_1e4fbbabf3da13fa;
    // offset: 0xa68, bitSize: 0x110(0x22 Byte(s)), array:0x11(hti:0xffff)
    hash_33944d215cff6222 hash_33944d215cff6222[17];
    // offset: 0xb78, bitSize: 0x500(0xa0 Byte(s)), array:0x50(hti:0x6)
    hash_1c86958671ff27fd hash_4953b2b12f1d6b1b[hash_4b8d95aacf149fb9];
    // offset: 0x1078, bitSize: 0xa0(0x14 Byte(s))
    client_header client;
    // offset: 0x1118, bitSize: 0x8(0x1 Byte(s))
    byte tier_boost;
    // offset: 0x1120, bitSize: 0x1
    bool hash_4ca91f34eba5a203;
    // offset: 0x1121, bitSize: 0x50(0xa Byte(s)), array:0x50(hti:0x6)
    bool hash_4473319d8a8d9dcf[hash_4b8d95aacf149fb9];
};

version hash_27842e24678832ac {
    // enums ..... 14 (0xe)
    // structs ... 9 (0x9)
    // header bit size .. 4712 (0x1268)
    // header byte size . 589 (0x24d)

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
    struct hash_1c86958671ff27fd {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_50ab8b7df567cd2a;
    };

    // bitSize: 0x108, members: 6
    struct lootcontracts {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint xp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint contractid;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:3 contractgamemode;
        // offset: 0x48, bitSize: 0x40(0x8 Byte(s))
        xhash contracthash;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 progress;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 target;
    };

    // bitSize: 0x10, members: 3
    struct hash_33944d215cff6222 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_174d79c341ec2c6c;
        // offset: 0x8, bitSize: 0x1
        bool hash_2401d7a2dc706a6c;
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

    // idx 0x5 members: 0xbe
    enum hash_10d50fe10481423c {
        ww_mega_barrel_fullauto_blazer_beam_t9, // 0x0
        tr_fastburst_t9, // 0x1
        napalm_strike_zm, // 0x2
        ability_smart_cover, // 0x3
        dart, // 0x4
        ultimate_turret, // 0x5
        hash_5a7fd1af4a1d5c9, // 0x6
        hash_7a083f7ba43fa06, // 0x7
        lmg_accurate_t9, // 0x8
        melee_etool_t9, // 0x9
        ray_gun_mk2z, // 0xa
        ray_gun_mk2y, // 0xb
        ray_gun_mk2x, // 0xc
        sniper_powersemi_t9, // 0xd
        eq_wraith_fire, // 0xe
        counteruav, // 0xf
        missile_turret, // 0x10
        eq_shroud, // 0x11
        gadget_supplypod, // 0x12
        ar_damage_t9, // 0x13
        homunculus, // 0x14
        spknifeork, // 0x15
        melee_bowie, // 0x16
        ww_mega_barrel_fullauto_diffusion_beam_t9, // 0x17
        ww_random_ray_gun1, // 0x18
        recon_plane, // 0x19
        sig_buckler_dw, // 0x1a
        gadget_vision_pulse, // 0x1b
        waterballoon, // 0x1c
        special_crossbow_t9, // 0x1d
        weapon_armor, // 0x1e
        eq_arm_blade, // 0x1f
        ww_blundergat_t8, // 0x20
        gadget_heat_wave, // 0x21
        eq_localheal, // 0x22
        hoverjet, // 0x23
        nightingale, // 0x24
        pistol_fullauto_t9, // 0x25
        remote_missile, // 0x26
        gadget_smart_cover, // 0x27
        willy_pete, // 0x28
        eq_emp_grenade, // 0x29
        special_grenadelauncher_t9, // 0x2a
        melee_machete_t9, // 0x2b
        launcher_freefire_t9, // 0x2c
        ar_accurate_t9, // 0x2d
        sig_lmg, // 0x2e
        ww_crossbow_impaler_t8, // 0x2f
        ww_freezegun_t8, // 0x30
        frag_grenade, // 0x31
        smg_cqb_t9, // 0x32
        knife_loadout, // 0x33
        feature_default_class_1, // 0x34
        feature_default_class_3, // 0x35
        feature_default_class_2, // 0x36
        feature_default_class_5, // 0x37
        feature_default_class_4, // 0x38
        feature_default_class_6, // 0x39
        spy_wanted_order, // 0x3a
        swat_team, // 0x3b
        land_mine, // 0x3c
        hatchet, // 0x3d
        supplydrop_marker, // 0x3e
        mute_smoke, // 0x3f
        hash_2ea46ca74ebdfcac, // 0x40
        smg_capacity_t9, // 0x41
        chopper_gunner, // 0x42
        melee_baseballbat_t9, // 0x43
        null_offhand_secondary, // 0x44
        gadget_health_regen, // 0x45
        hash_31be8125c7d0f273, // 0x46
        pistol_shotgun_t9, // 0x47
        listening_device, // 0x48
        spork_alcatraz, // 0x49
        drone_squadron, // 0x4a
        pistol_semiauto_t9, // 0x4b
        melee_mace_t9, // 0x4c
        null_offhand_primary, // 0x4d
        smg_burst_t9, // 0x4e
        hash_3507beb47a6b634e, // 0x4f
        pistol_revolver_t9, // 0x50
        eq_stimshot, // 0x51
        ww_mega_barrel_fullauto_copycat_t9, // 0x52
        overwatch_helicopter, // 0x53
        gadget_jammer, // 0x54
        hash_3ab58e40011df941, // 0x55
        launcher_standard_t9, // 0x56
        melee_bowie_bloody, // 0x57
        eq_sticky_grenade, // 0x58
        special_ballisticknife_t9_dw, // 0x59
        ww_ieu_shockwave_t9, // 0x5a
        melee_sledgehammer_t9, // 0x5b
        sig_blade, // 0x5c
        pistol_burst_t9, // 0x5d
        hash_4385cf507401820f, // 0x5e
        napalm_strike, // 0x5f
        sniper_accurate_t9, // 0x60
        ar_fastfire_t9, // 0x61
        melee_wakizashi_t9, // 0x62
        hero_pineapplegun, // 0x63
        hash_48206b17d50533c2, // 0x64
        sniper_quickscope_t9, // 0x65
        ability_dog, // 0x66
        straferun, // 0x67
        eq_seeker_mine, // 0x68
        ww_crossbow_t8, // 0x69
        recon_car, // 0x6a
        hash_4b1854c2ff5135b2, // 0x6b
        snowball, // 0x6c
        feature_custom_class_9, // 0x6d
        feature_custom_class_8, // 0x6e
        feature_custom_class_3, // 0x6f
        feature_custom_class_2, // 0x70
        feature_custom_class_1, // 0x71
        feature_custom_class_7, // 0x72
        feature_custom_class_6, // 0x73
        feature_custom_class_5, // 0x74
        feature_custom_class_4, // 0x75
        uav, // 0x76
        eq_concertina_wire, // 0x77
        feature_custom_class_10, // 0x78
        ar_slowhandling_t9, // 0x79
        eq_acid_bomb, // 0x7a
        gadget_spawnbeacon, // 0x7b
        ac130, // 0x7c
        tr_precisionsemi_t9, // 0x7d
        helicopter_comlink, // 0x7e
        gadget_armor, // 0x7f
        tr_damagesemi_t9, // 0x80
        feature_cac, // 0x81
        tomahawk_t8, // 0x82
        shotgun_pump_t9, // 0x83
        gadget_health_boost, // 0x84
        spectre_grenade, // 0x85
        eq_flash_grenade, // 0x86
        hash_55c23f24d806e3a6, // 0x87
        bare_hands, // 0x88
        ar_slowfire_t9, // 0x89
        tr_powerburst_t9, // 0x8a
        trophy_system, // 0x8b
        ray_gun_mk2, // 0x8c
        tr_longburst_t9, // 0x8d
        nuke, // 0x8e
        ww_ray_rifle_t9, // 0x8f
        smg_standard_t9, // 0x90
        sig_bow_flame, // 0x91
        eq_slow_grenade, // 0x92
        special_nailgun_t9, // 0x93
        smg_accurate_t9, // 0x94
        hash_603c083704cefb0c, // 0x95
        jetfighter, // 0x96
        smg_heavy_t9, // 0x97
        tear_gas, // 0x98
        eq_molotov, // 0x99
        smg_fastfire_t9, // 0x9a
        lmg_light_t9, // 0x9b
        ai_tank_marker, // 0x9c
        gadget_cleanse, // 0x9d
        ar_british_t9, // 0x9e
        hero_flamethrower, // 0x9f
        sniper_standard_t9, // 0xa0
        melee_cane_t9, // 0xa1
        smg_spray_t9, // 0xa2
        hero_annihilator, // 0xa3
        ar_fasthandling_t9, // 0xa4
        ar_mobility_t9, // 0xa5
        planemortar, // 0xa6
        sniper_cannon_t9, // 0xa7
        shotgun_semiauto_t9, // 0xa8
        lmg_fastfire_t9, // 0xa9
        ar_standard_t9, // 0xaa
        weapon_null, // 0xab
        satchel_charge, // 0xac
        default_specialist_equipment, // 0xad
        gadget_health_regen_squad, // 0xae
        hash_76b56e7e0b3b7aac, // 0xaf
        eq_decoy_grenade, // 0xb0
        smg_semiauto_t9, // 0xb1
        ray_gun, // 0xb2
        hash_788c96e19cc7a46e, // 0xb3
        claymore, // 0xb4
        smg_handling_t9, // 0xb5
        cymbal_monkey, // 0xb6
        shotgun_fullauto_t9, // 0xb7
        hash_7ab3f9a730359659, // 0xb8
        gadget_icepick, // 0xb9
        ww_mega_barrel_fullauto_micro_missile_t9, // 0xba
        basketball, // 0xbb
        gadget_camo, // 0xbc
        lmg_slowfire_t9 // 0xbd
    };

    // idx 0x6 members: 0x54
    enum hash_4b8d95aacf149fb9 {
        ww_mega_barrel_fullauto_blazer_beam_t9, // 0x0
        tr_fastburst_t9, // 0x1
        lmg_accurate_t9, // 0x2
        melee_etool_t9, // 0x3
        ray_gun_mk2z, // 0x4
        ray_gun_mk2y, // 0x5
        ray_gun_mk2x, // 0x6
        sniper_powersemi_t9, // 0x7
        hash_c21b61b32a5d972, // 0x8
        ar_damage_t9, // 0x9
        homunculus, // 0xa
        spknifeork, // 0xb
        melee_bowie, // 0xc
        ww_mega_barrel_fullauto_diffusion_beam_t9, // 0xd
        ww_random_ray_gun1, // 0xe
        hash_165cf52ce418f5a1, // 0xf
        special_crossbow_t9, // 0x10
        ww_blundergat_t8, // 0x11
        pistol_fullauto_t9, // 0x12
        special_grenadelauncher_t9, // 0x13
        melee_machete_t9, // 0x14
        launcher_freefire_t9, // 0x15
        ar_accurate_t9, // 0x16
        ww_crossbow_impaler_t8, // 0x17
        ww_freezegun_t8, // 0x18
        smg_cqb_t9, // 0x19
        knife_loadout, // 0x1a
        hash_2ea46ca74ebdfcac, // 0x1b
        smg_capacity_t9, // 0x1c
        melee_baseballbat_t9, // 0x1d
        pistol_shotgun_t9, // 0x1e
        spork_alcatraz, // 0x1f
        pistol_semiauto_t9, // 0x20
        melee_mace_t9, // 0x21
        smg_burst_t9, // 0x22
        pistol_revolver_t9, // 0x23
        ww_mega_barrel_fullauto_copycat_t9, // 0x24
        launcher_standard_t9, // 0x25
        melee_bowie_bloody, // 0x26
        special_ballisticknife_t9_dw, // 0x27
        ww_ieu_shockwave_t9, // 0x28
        melee_sledgehammer_t9, // 0x29
        pistol_burst_t9, // 0x2a
        hash_4385cf507401820f, // 0x2b
        sniper_accurate_t9, // 0x2c
        ar_fastfire_t9, // 0x2d
        melee_wakizashi_t9, // 0x2e
        hash_48206b17d50533c2, // 0x2f
        sniper_quickscope_t9, // 0x30
        ww_crossbow_t8, // 0x31
        ar_slowhandling_t9, // 0x32
        tr_precisionsemi_t9, // 0x33
        tr_damagesemi_t9, // 0x34
        shotgun_pump_t9, // 0x35
        hash_55c23f24d806e3a6, // 0x36
        ar_slowfire_t9, // 0x37
        tr_powerburst_t9, // 0x38
        ray_gun_mk2, // 0x39
        tr_longburst_t9, // 0x3a
        ww_ray_rifle_t9, // 0x3b
        smg_standard_t9, // 0x3c
        special_nailgun_t9, // 0x3d
        smg_accurate_t9, // 0x3e
        hash_603c083704cefb0c, // 0x3f
        smg_heavy_t9, // 0x40
        smg_fastfire_t9, // 0x41
        lmg_light_t9, // 0x42
        ar_british_t9, // 0x43
        sniper_standard_t9, // 0x44
        melee_cane_t9, // 0x45
        smg_spray_t9, // 0x46
        ar_fasthandling_t9, // 0x47
        ar_mobility_t9, // 0x48
        sniper_cannon_t9, // 0x49
        shotgun_semiauto_t9, // 0x4a
        lmg_fastfire_t9, // 0x4b
        ar_standard_t9, // 0x4c
        smg_semiauto_t9, // 0x4d
        ray_gun, // 0x4e
        smg_handling_t9, // 0x4f
        shotgun_fullauto_t9, // 0x50
        ww_mega_barrel_fullauto_micro_missile_t9, // 0x51
        basketball, // 0x52
        lmg_slowfire_t9 // 0x53
    };

    // idx 0x7 members: 0x13
    enum hash_7493d39e2637c1e7 {
        bonuscard, // 0x0
        hero, // 0x1
        feature, // 0x2
        weapon_special, // 0x3
        weapon_knife, // 0x4
        character, // 0x5
        miscweapon, // 0x6
        weapon_pistol, // 0x7
        killstreak, // 0x8
        weapon_sniper, // 0x9
        talent, // 0xa
        weapon_launcher, // 0xb
        weapon_grenade, // 0xc
        weapon_lmg, // 0xd
        weapon_tactical, // 0xe
        weapon_smg, // 0xf
        hash_7b68172df6035672, // 0x10
        weapon_cqb, // 0x11
        weapon_assault // 0x12
    };

    // idx 0x8 members: 0x20
    enum hash_d5731f85b8cf294 {
        napalm_strike_zm, // 0x0
        dart, // 0x1
        ultimate_turret, // 0x2
        counteruav, // 0x3
        recon_plane, // 0x4
        weapon_armor, // 0x5
        hoverjet, // 0x6
        remote_missile, // 0x7
        spy_med_pack, // 0x8
        sig_lmg, // 0x9
        spy_wanted_order, // 0xa
        swat_team, // 0xb
        supplydrop_marker, // 0xc
        chopper_gunner, // 0xd
        drone_squadron, // 0xe
        overwatch_helicopter, // 0xf
        napalm_strike, // 0x10
        hero_pineapplegun, // 0x11
        ability_dog, // 0x12
        straferun, // 0x13
        recon_car, // 0x14
        uav, // 0x15
        ac130, // 0x16
        helicopter_comlink, // 0x17
        nuke, // 0x18
        sig_bow_flame, // 0x19
        jetfighter, // 0x1a
        ai_tank_marker, // 0x1b
        helicopter_guard, // 0x1c
        hero_flamethrower, // 0x1d
        hero_annihilator, // 0x1e
        planemortar // 0x1f
    };

    // idx 0x9 members: 0x35
    enum hash_507792265be6dcc4 {
        ability_smart_cover, // 0x0
        hash_7a083f7ba43fa06, // 0x1
        eq_wraith_fire, // 0x2
        missile_turret, // 0x3
        eq_shroud, // 0x4
        gadget_supplypod, // 0x5
        gadget_vision_pulse, // 0x6
        waterballoon, // 0x7
        eq_arm_blade, // 0x8
        gadget_heat_wave, // 0x9
        eq_localheal, // 0xa
        gadget_medicalinjectiongun, // 0xb
        nightingale, // 0xc
        gadget_smart_cover, // 0xd
        willy_pete, // 0xe
        eq_emp_grenade, // 0xf
        frag_grenade, // 0x10
        land_mine, // 0x11
        hatchet, // 0x12
        gadget_health_regen, // 0x13
        listening_device, // 0x14
        hash_3507beb47a6b634e, // 0x15
        eq_stimshot, // 0x16
        gadget_jammer, // 0x17
        hash_3ab58e40011df941, // 0x18
        eq_sticky_grenade, // 0x19
        eq_seeker_mine, // 0x1a
        hash_4b1854c2ff5135b2, // 0x1b
        snowball, // 0x1c
        eq_concertina_wire, // 0x1d
        eq_acid_bomb, // 0x1e
        gadget_spawnbeacon, // 0x1f
        gadget_armor, // 0x20
        tomahawk_t8, // 0x21
        gadget_health_boost, // 0x22
        spectre_grenade, // 0x23
        eq_flash_grenade, // 0x24
        trophy_system, // 0x25
        eq_slow_grenade, // 0x26
        tear_gas, // 0x27
        eq_molotov, // 0x28
        gadget_cleanse, // 0x29
        satchel_charge, // 0x2a
        default_specialist_equipment, // 0x2b
        gadget_health_regen_squad, // 0x2c
        hash_76b56e7e0b3b7aac, // 0x2d
        eq_decoy_grenade, // 0x2e
        hash_788c96e19cc7a46e, // 0x2f
        claymore, // 0x30
        cymbal_monkey, // 0x31
        hash_7ab3f9a730359659, // 0x32
        gadget_icepick, // 0x33
        gadget_camo // 0x34
    };

    // idx 0xa members: 0x3c
    enum hash_1e2de876fb880be2 {
        quickdraw, // 0x0
        acog, // 0x1
        dw, // 0x2
        ir, // 0x3
        barrel2, // 0x4
        mixunder2, // 0x5
        fastreload, // 0x6
        heavy, // 0x7
        steadyaim, // 0x8
        stalker, // 0x9
        barrel, // 0xa
        mixstock, // 0xb
        smoothzoom2, // 0xc
        mixclip2, // 0xd
        reflex4, // 0xe
        reflex3, // 0xf
        reflex2, // 0x10
        stalker2, // 0x11
        extclip2, // 0x12
        tactical, // 0x13
        steadyaim2, // 0x14
        mixclip, // 0x15
        light, // 0x16
        speedgrip2, // 0x17
        mixhandle, // 0x18
        mixunder, // 0x19
        mixbarrel2, // 0x1a
        mixstock2, // 0x1b
        reddot, // 0x1c
        handle, // 0x1d
        mixmuzzle2, // 0x1e
        extclip, // 0x1f
        light2, // 0x20
        heavy2, // 0x21
        holo, // 0x22
        elo, // 0x23
        fastreload2, // 0x24
        scope3x, // 0x25
        scope4x, // 0x26
        mixhandle2, // 0x27
        compensator, // 0x28
        mixbody, // 0x29
        quickdraw2, // 0x2a
        suppressed2, // 0x2b
        speedgrip, // 0x2c
        sprintout2, // 0x2d
        suppressed, // 0x2e
        sprintout, // 0x2f
        grip2, // 0x30
        mixmuzzle, // 0x31
        handle2, // 0x32
        compensator2, // 0x33
        mixbody2, // 0x34
        dualoptic, // 0x35
        grip, // 0x36
        smoothzoom, // 0x37
        reflex, // 0x38
        mixbarrel, // 0x39
        elo3, // 0x3a
        elo2 // 0x3b
    };

    // idx 0xb members: 0x3c
    enum hash_48d8d533750ed177 {
        talent_gungho, // 0x0
        talent_engineer, // 0x1
        talent_coldblooded, // 0x2
        hash_9fb2125b3e673e5, // 0x3
        gear_armor, // 0x4
        hash_cd70e712f842296, // 0x5
        talent_tracker, // 0x6
        hash_101808cdfcd390d6, // 0x7
        hash_128256155e755170, // 0x8
        hash_16cfc7f70dbd8712, // 0x9
        talent_flakjacket, // 0xa
        talent_logistics, // 0xb
        talent_looter, // 0xc
        gadget_medicalinjectiongun, // 0xd
        hash_1d8863d0b864a48b, // 0xe
        hash_1db03fa9862ba330, // 0xf
        hash_20290a682a974c94, // 0x10
        talent_dexterity, // 0x11
        hash_249e75e962ea5275, // 0x12
        talent_resistance, // 0x13
        gear_awareness, // 0x14
        hash_2c3a32e6e2afd1f2, // 0x15
        hash_311283e3107dec74, // 0x16
        talent_lightweight, // 0x17
        talent_awareness, // 0x18
        gear_equipmentcharge, // 0x19
        hash_38c08136902fd553, // 0x1a
        hash_39045b0020cc3e00, // 0x1b
        hash_3c323c7819b10b4d, // 0x1c
        hash_3c60422123a9075b, // 0x1d
        talent_scavenger, // 0x1e
        talent_skulker, // 0x1f
        gear_scorestreakcharge, // 0x20
        talent_ghost, // 0x21
        hash_4f80a2c3398e97c9, // 0x22
        talent_elemental_pop, // 0x23
        talent_brawler, // 0x24
        talent_quartermaster, // 0x25
        hash_59dbe7f72baaa0f0, // 0x26
        hash_59dbe8f72baaa2a3, // 0x27
        hash_59dbecf72baaa96f, // 0x28
        hash_59dbedf72baaab22, // 0x29
        hash_59dbeef72baaacd5, // 0x2a
        hash_5c80935e7a319f21, // 0x2b
        talent_paranoia, // 0x2c
        talent_teamlink, // 0x2d
        talent_deadsilence, // 0x2e
        hash_646fc27884bdaa02, // 0x2f
        gear_medicalinjectiongun, // 0x30
        hash_661cd0d6fb33878c, // 0x31
        talent_spycraft, // 0x32
        hash_7321f9058ee65217, // 0x33
        hash_7716cb3888f5dd8a, // 0x34
        talent_elemental_pop_2, // 0x35
        talent_elemental_pop_3, // 0x36
        talent_elemental_pop_1, // 0x37
        talent_elemental_pop_4, // 0x38
        talent_elemental_pop_5, // 0x39
        hash_7ca561e40dc3c5de, // 0x3a
        hash_7f79d3ba6ed1a1d7 // 0x3b
    };

    // idx 0xc members: 0xc
    enum hash_66db207c660e33f3 {
        bonuscard_overkill, // 0x0
        bonuscard_underkill, // 0x1
        bonuscard_perk_1_greed, // 0x2
        talent_mulekick, // 0x3
        talent_mulekick_1, // 0x4
        talent_mulekick_2, // 0x5
        talent_mulekick_3, // 0x6
        talent_mulekick_4, // 0x7
        talent_mulekick_5, // 0x8
        hash_4a12859000892dda, // 0x9
        hash_639ebbcda56447e7, // 0xa
        bonuscard_primary_gunfighter // 0xb
    };

    // idx 0xd members: 0x106
    enum hash_1acf39b1d1bee1d5 {
        bonuscard_overkill, // 0x0
        ww_mega_barrel_fullauto_blazer_beam_t9, // 0x1
        talent_gungho, // 0x2
        tr_fastburst_t9, // 0x3
        talent_engineer, // 0x4
        napalm_strike_zm, // 0x5
        ability_smart_cover, // 0x6
        dart, // 0x7
        ultimate_turret, // 0x8
        hash_5a7fd1af4a1d5c9, // 0x9
        hash_7a083f7ba43fa06, // 0xa
        talent_coldblooded, // 0xb
        lmg_accurate_t9, // 0xc
        melee_etool_t9, // 0xd
        ray_gun_mk2z, // 0xe
        ray_gun_mk2y, // 0xf
        ray_gun_mk2x, // 0x10
        hash_9fb2125b3e673e5, // 0x11
        sniper_powersemi_t9, // 0x12
        eq_wraith_fire, // 0x13
        gear_armor, // 0x14
        counteruav, // 0x15
        hash_cd70e712f842296, // 0x16
        talent_tracker, // 0x17
        missile_turret, // 0x18
        eq_shroud, // 0x19
        gadget_supplypod, // 0x1a
        hash_101808cdfcd390d6, // 0x1b
        ar_damage_t9, // 0x1c
        homunculus, // 0x1d
        spknifeork, // 0x1e
        melee_bowie, // 0x1f
        hash_128256155e755170, // 0x20
        ww_mega_barrel_fullauto_diffusion_beam_t9, // 0x21
        ww_random_ray_gun1, // 0x22
        bonuscard_underkill, // 0x23
        recon_plane, // 0x24
        hash_16cfc7f70dbd8712, // 0x25
        bonuscard_perk_1_greed, // 0x26
        sig_buckler_dw, // 0x27
        talent_mulekick, // 0x28
        talent_flakjacket, // 0x29
        gadget_vision_pulse, // 0x2a
        waterballoon, // 0x2b
        special_crossbow_t9, // 0x2c
        weapon_armor, // 0x2d
        eq_arm_blade, // 0x2e
        talent_logistics, // 0x2f
        ww_blundergat_t8, // 0x30
        gadget_heat_wave, // 0x31
        eq_localheal, // 0x32
        hoverjet, // 0x33
        talent_looter, // 0x34
        gadget_medicalinjectiongun, // 0x35
        hash_1d8863d0b864a48b, // 0x36
        hash_1db03fa9862ba330, // 0x37
        nightingale, // 0x38
        pistol_fullauto_t9, // 0x39
        remote_missile, // 0x3a
        gadget_smart_cover, // 0x3b
        hash_20290a682a974c94, // 0x3c
        willy_pete, // 0x3d
        eq_emp_grenade, // 0x3e
        special_grenadelauncher_t9, // 0x3f
        melee_machete_t9, // 0x40
        talent_dexterity, // 0x41
        launcher_freefire_t9, // 0x42
        hash_249e75e962ea5275, // 0x43
        ar_accurate_t9, // 0x44
        sig_lmg, // 0x45
        ww_crossbow_impaler_t8, // 0x46
        ww_freezegun_t8, // 0x47
        frag_grenade, // 0x48
        smg_cqb_t9, // 0x49
        knife_loadout, // 0x4a
        feature_default_class_1, // 0x4b
        feature_default_class_3, // 0x4c
        feature_default_class_2, // 0x4d
        feature_default_class_5, // 0x4e
        feature_default_class_4, // 0x4f
        feature_default_class_6, // 0x50
        talent_resistance, // 0x51
        spy_wanted_order, // 0x52
        swat_team, // 0x53
        gear_awareness, // 0x54
        land_mine, // 0x55
        hatchet, // 0x56
        hash_2c3a32e6e2afd1f2, // 0x57
        talent_mulekick_1, // 0x58
        talent_mulekick_2, // 0x59
        talent_mulekick_3, // 0x5a
        talent_mulekick_4, // 0x5b
        talent_mulekick_5, // 0x5c
        supplydrop_marker, // 0x5d
        mute_smoke, // 0x5e
        hash_2ea46ca74ebdfcac, // 0x5f
        smg_capacity_t9, // 0x60
        chopper_gunner, // 0x61
        melee_baseballbat_t9, // 0x62
        hash_311283e3107dec74, // 0x63
        null_offhand_secondary, // 0x64
        gadget_health_regen, // 0x65
        hash_31be8125c7d0f273, // 0x66
        pistol_shotgun_t9, // 0x67
        listening_device, // 0x68
        talent_lightweight, // 0x69
        talent_awareness, // 0x6a
        spork_alcatraz, // 0x6b
        drone_squadron, // 0x6c
        gear_equipmentcharge, // 0x6d
        pistol_semiauto_t9, // 0x6e
        melee_mace_t9, // 0x6f
        null_offhand_primary, // 0x70
        smg_burst_t9, // 0x71
        hash_3507beb47a6b634e, // 0x72
        pistol_revolver_t9, // 0x73
        eq_stimshot, // 0x74
        ww_mega_barrel_fullauto_copycat_t9, // 0x75
        hash_38c08136902fd553, // 0x76
        hash_39045b0020cc3e00, // 0x77
        overwatch_helicopter, // 0x78
        gadget_jammer, // 0x79
        hash_3ab58e40011df941, // 0x7a
        launcher_standard_t9, // 0x7b
        hash_3c323c7819b10b4d, // 0x7c
        hash_3c60422123a9075b, // 0x7d
        melee_bowie_bloody, // 0x7e
        eq_sticky_grenade, // 0x7f
        special_ballisticknife_t9_dw, // 0x80
        ww_ieu_shockwave_t9, // 0x81
        melee_sledgehammer_t9, // 0x82
        sig_blade, // 0x83
        talent_scavenger, // 0x84
        pistol_burst_t9, // 0x85
        hash_4385cf507401820f, // 0x86
        napalm_strike, // 0x87
        sniper_accurate_t9, // 0x88
        ar_fastfire_t9, // 0x89
        melee_wakizashi_t9, // 0x8a
        hero_pineapplegun, // 0x8b
        talent_skulker, // 0x8c
        hash_48206b17d50533c2, // 0x8d
        sniper_quickscope_t9, // 0x8e
        ability_dog, // 0x8f
        straferun, // 0x90
        hash_4a12859000892dda, // 0x91
        eq_seeker_mine, // 0x92
        ww_crossbow_t8, // 0x93
        recon_car, // 0x94
        hash_4b1854c2ff5135b2, // 0x95
        snowball, // 0x96
        feature_custom_class_9, // 0x97
        feature_custom_class_8, // 0x98
        feature_custom_class_3, // 0x99
        feature_custom_class_2, // 0x9a
        feature_custom_class_1, // 0x9b
        feature_custom_class_7, // 0x9c
        feature_custom_class_6, // 0x9d
        feature_custom_class_5, // 0x9e
        feature_custom_class_4, // 0x9f
        uav, // 0xa0
        eq_concertina_wire, // 0xa1
        gear_scorestreakcharge, // 0xa2
        feature_custom_class_10, // 0xa3
        ar_slowhandling_t9, // 0xa4
        eq_acid_bomb, // 0xa5
        gadget_spawnbeacon, // 0xa6
        ac130, // 0xa7
        talent_ghost, // 0xa8
        hash_4f80a2c3398e97c9, // 0xa9
        tr_precisionsemi_t9, // 0xaa
        helicopter_comlink, // 0xab
        gadget_armor, // 0xac
        tr_damagesemi_t9, // 0xad
        feature_cac, // 0xae
        talent_elemental_pop, // 0xaf
        tomahawk_t8, // 0xb0
        shotgun_pump_t9, // 0xb1
        gadget_health_boost, // 0xb2
        spectre_grenade, // 0xb3
        talent_brawler, // 0xb4
        eq_flash_grenade, // 0xb5
        hash_55c23f24d806e3a6, // 0xb6
        bare_hands, // 0xb7
        ar_slowfire_t9, // 0xb8
        tr_powerburst_t9, // 0xb9
        trophy_system, // 0xba
        talent_quartermaster, // 0xbb
        hash_59dbe7f72baaa0f0, // 0xbc
        hash_59dbe8f72baaa2a3, // 0xbd
        hash_59dbecf72baaa96f, // 0xbe
        hash_59dbedf72baaab22, // 0xbf
        hash_59dbeef72baaacd5, // 0xc0
        ray_gun_mk2, // 0xc1
        tr_longburst_t9, // 0xc2
        nuke, // 0xc3
        ww_ray_rifle_t9, // 0xc4
        smg_standard_t9, // 0xc5
        hash_5c80935e7a319f21, // 0xc6
        sig_bow_flame, // 0xc7
        eq_slow_grenade, // 0xc8
        talent_paranoia, // 0xc9
        special_nailgun_t9, // 0xca
        smg_accurate_t9, // 0xcb
        hash_603c083704cefb0c, // 0xcc
        jetfighter, // 0xcd
        talent_teamlink, // 0xce
        smg_heavy_t9, // 0xcf
        talent_deadsilence, // 0xd0
        tear_gas, // 0xd1
        hash_639ebbcda56447e7, // 0xd2
        eq_molotov, // 0xd3
        smg_fastfire_t9, // 0xd4
        hash_646fc27884bdaa02, // 0xd5
        bonuscard_primary_gunfighter, // 0xd6
        lmg_light_t9, // 0xd7
        ai_tank_marker, // 0xd8
        gear_medicalinjectiongun, // 0xd9
        hash_661cd0d6fb33878c, // 0xda
        gadget_cleanse, // 0xdb
        ar_british_t9, // 0xdc
        hero_flamethrower, // 0xdd
        sniper_standard_t9, // 0xde
        melee_cane_t9, // 0xdf
        smg_spray_t9, // 0xe0
        hero_annihilator, // 0xe1
        ar_fasthandling_t9, // 0xe2
        ar_mobility_t9, // 0xe3
        planemortar, // 0xe4
        sniper_cannon_t9, // 0xe5
        shotgun_semiauto_t9, // 0xe6
        lmg_fastfire_t9, // 0xe7
        ar_standard_t9, // 0xe8
        weapon_null, // 0xe9
        talent_spycraft, // 0xea
        hash_7321f9058ee65217, // 0xeb
        satchel_charge, // 0xec
        default_specialist_equipment, // 0xed
        gadget_health_regen_squad, // 0xee
        hash_76b56e7e0b3b7aac, // 0xef
        eq_decoy_grenade, // 0xf0
        hash_7716cb3888f5dd8a, // 0xf1
        smg_semiauto_t9, // 0xf2
        ray_gun, // 0xf3
        hash_788c96e19cc7a46e, // 0xf4
        claymore, // 0xf5
        talent_elemental_pop_2, // 0xf6
        talent_elemental_pop_3, // 0xf7
        talent_elemental_pop_1, // 0xf8
        talent_elemental_pop_4, // 0xf9
        talent_elemental_pop_5, // 0xfa
        smg_handling_t9, // 0xfb
        cymbal_monkey, // 0xfc
        shotgun_fullauto_t9, // 0xfd
        hash_7ab3f9a730359659, // 0xfe
        gadget_icepick, // 0xff
        ww_mega_barrel_fullauto_micro_missile_t9, // 0x100
        hash_7ca561e40dc3c5de, // 0x101
        basketball, // 0x102
        gadget_camo, // 0x103
        hash_7f79d3ba6ed1a1d7, // 0x104
        lmg_slowfire_t9 // 0x105
    };

    // root: bitSize: 0x11b8, members: 15

    // offset: 0x0, bitSize: 0x6d8(0xdb Byte(s))
    region_info dml;
    // offset: 0x6d8, bitSize: 0x318(0x63 Byte(s)), array:0x3(hti:0xffff)
    lootcontracts loot_contracts[3];
    // offset: 0x9f0, bitSize: 0x20(0x4 Byte(s))
    uint hash_5a1a5df0cdadbba3;
    // offset: 0xa10, bitSize: 0x20(0x4 Byte(s))
    uint hash_151eef37df5ee845;
    // offset: 0xa30, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_tier_boost;
    // offset: 0xa38, bitSize: 0x8(0x1 Byte(s))
    hash_54196e9e9860f0be platform;
    // offset: 0xa40, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_party_tier_boost;
    // offset: 0xa48, bitSize: 0x20(0x4 Byte(s))
    uint hash_1e4fbbabf3da13fa;
    // offset: 0xa68, bitSize: 0x110(0x22 Byte(s)), array:0x11(hti:0xffff)
    hash_33944d215cff6222 hash_33944d215cff6222[17];
    // offset: 0xb78, bitSize: 0x540(0xa8 Byte(s)), array:0x54(hti:0x6)
    hash_1c86958671ff27fd hash_4953b2b12f1d6b1b[hash_4b8d95aacf149fb9];
    // offset: 0x10b8, bitSize: 0xa0(0x14 Byte(s))
    client_header client;
    // offset: 0x1158, bitSize: 0x8(0x1 Byte(s))
    byte tier_boost;
    // offset: 0x1160, bitSize: 0x1
    bool hash_4ca91f34eba5a203;
    // offset: 0x1161, bitSize: 0x54, array:0x54(hti:0x6)
    bool hash_4473319d8a8d9dcf[hash_4b8d95aacf149fb9];
};

version hash_704275f9cfc438db {
    // enums ..... 14 (0xe)
    // structs ... 9 (0x9)
    // header bit size .. 4728 (0x1278)
    // header byte size . 591 (0x24f)

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
    struct hash_1c86958671ff27fd {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_50ab8b7df567cd2a;
    };

    // bitSize: 0x108, members: 6
    struct lootcontracts {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint xp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint contractid;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:3 contractgamemode;
        // offset: 0x48, bitSize: 0x40(0x8 Byte(s))
        xhash contracthash;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 progress;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 target;
    };

    // bitSize: 0x10, members: 3
    struct hash_33944d215cff6222 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_174d79c341ec2c6c;
        // offset: 0x8, bitSize: 0x1
        bool hash_2401d7a2dc706a6c;
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

    // idx 0x5 members: 0xbf
    enum hash_10d50fe10481423c {
        ww_mega_barrel_fullauto_blazer_beam_t9, // 0x0
        tr_fastburst_t9, // 0x1
        napalm_strike_zm, // 0x2
        ability_smart_cover, // 0x3
        dart, // 0x4
        ultimate_turret, // 0x5
        hash_5a7fd1af4a1d5c9, // 0x6
        melee_sai_t9, // 0x7
        hash_7a083f7ba43fa06, // 0x8
        lmg_accurate_t9, // 0x9
        melee_etool_t9, // 0xa
        ray_gun_mk2z, // 0xb
        ray_gun_mk2y, // 0xc
        ray_gun_mk2x, // 0xd
        sniper_powersemi_t9, // 0xe
        eq_wraith_fire, // 0xf
        counteruav, // 0x10
        missile_turret, // 0x11
        eq_shroud, // 0x12
        gadget_supplypod, // 0x13
        ar_damage_t9, // 0x14
        homunculus, // 0x15
        spknifeork, // 0x16
        melee_bowie, // 0x17
        ww_mega_barrel_fullauto_diffusion_beam_t9, // 0x18
        ww_random_ray_gun1, // 0x19
        recon_plane, // 0x1a
        sig_buckler_dw, // 0x1b
        gadget_vision_pulse, // 0x1c
        waterballoon, // 0x1d
        special_crossbow_t9, // 0x1e
        weapon_armor, // 0x1f
        eq_arm_blade, // 0x20
        ww_blundergat_t8, // 0x21
        gadget_heat_wave, // 0x22
        eq_localheal, // 0x23
        hoverjet, // 0x24
        nightingale, // 0x25
        pistol_fullauto_t9, // 0x26
        remote_missile, // 0x27
        gadget_smart_cover, // 0x28
        willy_pete, // 0x29
        eq_emp_grenade, // 0x2a
        special_grenadelauncher_t9, // 0x2b
        melee_machete_t9, // 0x2c
        launcher_freefire_t9, // 0x2d
        ar_accurate_t9, // 0x2e
        sig_lmg, // 0x2f
        ww_crossbow_impaler_t8, // 0x30
        ww_freezegun_t8, // 0x31
        frag_grenade, // 0x32
        smg_cqb_t9, // 0x33
        knife_loadout, // 0x34
        feature_default_class_1, // 0x35
        feature_default_class_3, // 0x36
        feature_default_class_2, // 0x37
        feature_default_class_5, // 0x38
        feature_default_class_4, // 0x39
        feature_default_class_6, // 0x3a
        spy_wanted_order, // 0x3b
        swat_team, // 0x3c
        land_mine, // 0x3d
        hatchet, // 0x3e
        supplydrop_marker, // 0x3f
        mute_smoke, // 0x40
        hash_2ea46ca74ebdfcac, // 0x41
        smg_capacity_t9, // 0x42
        chopper_gunner, // 0x43
        melee_baseballbat_t9, // 0x44
        null_offhand_secondary, // 0x45
        gadget_health_regen, // 0x46
        hash_31be8125c7d0f273, // 0x47
        pistol_shotgun_t9, // 0x48
        listening_device, // 0x49
        spork_alcatraz, // 0x4a
        drone_squadron, // 0x4b
        pistol_semiauto_t9, // 0x4c
        melee_mace_t9, // 0x4d
        null_offhand_primary, // 0x4e
        smg_burst_t9, // 0x4f
        hash_3507beb47a6b634e, // 0x50
        pistol_revolver_t9, // 0x51
        eq_stimshot, // 0x52
        ww_mega_barrel_fullauto_copycat_t9, // 0x53
        overwatch_helicopter, // 0x54
        gadget_jammer, // 0x55
        hash_3ab58e40011df941, // 0x56
        launcher_standard_t9, // 0x57
        melee_bowie_bloody, // 0x58
        eq_sticky_grenade, // 0x59
        special_ballisticknife_t9_dw, // 0x5a
        ww_ieu_shockwave_t9, // 0x5b
        melee_sledgehammer_t9, // 0x5c
        sig_blade, // 0x5d
        pistol_burst_t9, // 0x5e
        hash_4385cf507401820f, // 0x5f
        napalm_strike, // 0x60
        sniper_accurate_t9, // 0x61
        ar_fastfire_t9, // 0x62
        melee_wakizashi_t9, // 0x63
        hero_pineapplegun, // 0x64
        hash_48206b17d50533c2, // 0x65
        sniper_quickscope_t9, // 0x66
        ability_dog, // 0x67
        straferun, // 0x68
        eq_seeker_mine, // 0x69
        ww_crossbow_t8, // 0x6a
        recon_car, // 0x6b
        hash_4b1854c2ff5135b2, // 0x6c
        snowball, // 0x6d
        feature_custom_class_9, // 0x6e
        feature_custom_class_8, // 0x6f
        feature_custom_class_3, // 0x70
        feature_custom_class_2, // 0x71
        feature_custom_class_1, // 0x72
        feature_custom_class_7, // 0x73
        feature_custom_class_6, // 0x74
        feature_custom_class_5, // 0x75
        feature_custom_class_4, // 0x76
        uav, // 0x77
        eq_concertina_wire, // 0x78
        feature_custom_class_10, // 0x79
        ar_slowhandling_t9, // 0x7a
        eq_acid_bomb, // 0x7b
        gadget_spawnbeacon, // 0x7c
        ac130, // 0x7d
        tr_precisionsemi_t9, // 0x7e
        helicopter_comlink, // 0x7f
        gadget_armor, // 0x80
        tr_damagesemi_t9, // 0x81
        feature_cac, // 0x82
        tomahawk_t8, // 0x83
        shotgun_pump_t9, // 0x84
        gadget_health_boost, // 0x85
        spectre_grenade, // 0x86
        eq_flash_grenade, // 0x87
        hash_55c23f24d806e3a6, // 0x88
        bare_hands, // 0x89
        ar_slowfire_t9, // 0x8a
        tr_powerburst_t9, // 0x8b
        trophy_system, // 0x8c
        ray_gun_mk2, // 0x8d
        tr_longburst_t9, // 0x8e
        nuke, // 0x8f
        ww_ray_rifle_t9, // 0x90
        smg_standard_t9, // 0x91
        sig_bow_flame, // 0x92
        eq_slow_grenade, // 0x93
        special_nailgun_t9, // 0x94
        smg_accurate_t9, // 0x95
        hash_603c083704cefb0c, // 0x96
        jetfighter, // 0x97
        smg_heavy_t9, // 0x98
        tear_gas, // 0x99
        eq_molotov, // 0x9a
        smg_fastfire_t9, // 0x9b
        lmg_light_t9, // 0x9c
        ai_tank_marker, // 0x9d
        gadget_cleanse, // 0x9e
        ar_british_t9, // 0x9f
        hero_flamethrower, // 0xa0
        sniper_standard_t9, // 0xa1
        melee_cane_t9, // 0xa2
        smg_spray_t9, // 0xa3
        hero_annihilator, // 0xa4
        ar_fasthandling_t9, // 0xa5
        ar_mobility_t9, // 0xa6
        planemortar, // 0xa7
        sniper_cannon_t9, // 0xa8
        shotgun_semiauto_t9, // 0xa9
        lmg_fastfire_t9, // 0xaa
        ar_standard_t9, // 0xab
        weapon_null, // 0xac
        satchel_charge, // 0xad
        default_specialist_equipment, // 0xae
        gadget_health_regen_squad, // 0xaf
        hash_76b56e7e0b3b7aac, // 0xb0
        eq_decoy_grenade, // 0xb1
        smg_semiauto_t9, // 0xb2
        ray_gun, // 0xb3
        hash_788c96e19cc7a46e, // 0xb4
        claymore, // 0xb5
        smg_handling_t9, // 0xb6
        cymbal_monkey, // 0xb7
        shotgun_fullauto_t9, // 0xb8
        hash_7ab3f9a730359659, // 0xb9
        gadget_icepick, // 0xba
        ww_mega_barrel_fullauto_micro_missile_t9, // 0xbb
        basketball, // 0xbc
        gadget_camo, // 0xbd
        lmg_slowfire_t9 // 0xbe
    };

    // idx 0x6 members: 0x55
    enum hash_4b8d95aacf149fb9 {
        ww_mega_barrel_fullauto_blazer_beam_t9, // 0x0
        tr_fastburst_t9, // 0x1
        melee_sai_t9, // 0x2
        lmg_accurate_t9, // 0x3
        melee_etool_t9, // 0x4
        ray_gun_mk2z, // 0x5
        ray_gun_mk2y, // 0x6
        ray_gun_mk2x, // 0x7
        sniper_powersemi_t9, // 0x8
        hash_c21b61b32a5d972, // 0x9
        ar_damage_t9, // 0xa
        homunculus, // 0xb
        spknifeork, // 0xc
        melee_bowie, // 0xd
        ww_mega_barrel_fullauto_diffusion_beam_t9, // 0xe
        ww_random_ray_gun1, // 0xf
        hash_165cf52ce418f5a1, // 0x10
        special_crossbow_t9, // 0x11
        ww_blundergat_t8, // 0x12
        pistol_fullauto_t9, // 0x13
        special_grenadelauncher_t9, // 0x14
        melee_machete_t9, // 0x15
        launcher_freefire_t9, // 0x16
        ar_accurate_t9, // 0x17
        ww_crossbow_impaler_t8, // 0x18
        ww_freezegun_t8, // 0x19
        smg_cqb_t9, // 0x1a
        knife_loadout, // 0x1b
        hash_2ea46ca74ebdfcac, // 0x1c
        smg_capacity_t9, // 0x1d
        melee_baseballbat_t9, // 0x1e
        pistol_shotgun_t9, // 0x1f
        spork_alcatraz, // 0x20
        pistol_semiauto_t9, // 0x21
        melee_mace_t9, // 0x22
        smg_burst_t9, // 0x23
        pistol_revolver_t9, // 0x24
        ww_mega_barrel_fullauto_copycat_t9, // 0x25
        launcher_standard_t9, // 0x26
        melee_bowie_bloody, // 0x27
        special_ballisticknife_t9_dw, // 0x28
        ww_ieu_shockwave_t9, // 0x29
        melee_sledgehammer_t9, // 0x2a
        pistol_burst_t9, // 0x2b
        hash_4385cf507401820f, // 0x2c
        sniper_accurate_t9, // 0x2d
        ar_fastfire_t9, // 0x2e
        melee_wakizashi_t9, // 0x2f
        hash_48206b17d50533c2, // 0x30
        sniper_quickscope_t9, // 0x31
        ww_crossbow_t8, // 0x32
        ar_slowhandling_t9, // 0x33
        tr_precisionsemi_t9, // 0x34
        tr_damagesemi_t9, // 0x35
        shotgun_pump_t9, // 0x36
        hash_55c23f24d806e3a6, // 0x37
        ar_slowfire_t9, // 0x38
        tr_powerburst_t9, // 0x39
        ray_gun_mk2, // 0x3a
        tr_longburst_t9, // 0x3b
        ww_ray_rifle_t9, // 0x3c
        smg_standard_t9, // 0x3d
        special_nailgun_t9, // 0x3e
        smg_accurate_t9, // 0x3f
        hash_603c083704cefb0c, // 0x40
        smg_heavy_t9, // 0x41
        smg_fastfire_t9, // 0x42
        lmg_light_t9, // 0x43
        ar_british_t9, // 0x44
        sniper_standard_t9, // 0x45
        melee_cane_t9, // 0x46
        smg_spray_t9, // 0x47
        ar_fasthandling_t9, // 0x48
        ar_mobility_t9, // 0x49
        sniper_cannon_t9, // 0x4a
        shotgun_semiauto_t9, // 0x4b
        lmg_fastfire_t9, // 0x4c
        ar_standard_t9, // 0x4d
        smg_semiauto_t9, // 0x4e
        ray_gun, // 0x4f
        smg_handling_t9, // 0x50
        shotgun_fullauto_t9, // 0x51
        ww_mega_barrel_fullauto_micro_missile_t9, // 0x52
        basketball, // 0x53
        lmg_slowfire_t9 // 0x54
    };

    // idx 0x7 members: 0x13
    enum hash_7493d39e2637c1e7 {
        bonuscard, // 0x0
        hero, // 0x1
        feature, // 0x2
        weapon_special, // 0x3
        weapon_knife, // 0x4
        character, // 0x5
        miscweapon, // 0x6
        weapon_pistol, // 0x7
        killstreak, // 0x8
        weapon_sniper, // 0x9
        talent, // 0xa
        weapon_launcher, // 0xb
        weapon_grenade, // 0xc
        weapon_lmg, // 0xd
        weapon_tactical, // 0xe
        weapon_smg, // 0xf
        hash_7b68172df6035672, // 0x10
        weapon_cqb, // 0x11
        weapon_assault // 0x12
    };

    // idx 0x8 members: 0x20
    enum hash_d5731f85b8cf294 {
        napalm_strike_zm, // 0x0
        dart, // 0x1
        ultimate_turret, // 0x2
        counteruav, // 0x3
        recon_plane, // 0x4
        weapon_armor, // 0x5
        hoverjet, // 0x6
        remote_missile, // 0x7
        spy_med_pack, // 0x8
        sig_lmg, // 0x9
        spy_wanted_order, // 0xa
        swat_team, // 0xb
        supplydrop_marker, // 0xc
        chopper_gunner, // 0xd
        drone_squadron, // 0xe
        overwatch_helicopter, // 0xf
        napalm_strike, // 0x10
        hero_pineapplegun, // 0x11
        ability_dog, // 0x12
        straferun, // 0x13
        recon_car, // 0x14
        uav, // 0x15
        ac130, // 0x16
        helicopter_comlink, // 0x17
        nuke, // 0x18
        sig_bow_flame, // 0x19
        jetfighter, // 0x1a
        ai_tank_marker, // 0x1b
        helicopter_guard, // 0x1c
        hero_flamethrower, // 0x1d
        hero_annihilator, // 0x1e
        planemortar // 0x1f
    };

    // idx 0x9 members: 0x35
    enum hash_507792265be6dcc4 {
        ability_smart_cover, // 0x0
        hash_7a083f7ba43fa06, // 0x1
        eq_wraith_fire, // 0x2
        missile_turret, // 0x3
        eq_shroud, // 0x4
        gadget_supplypod, // 0x5
        gadget_vision_pulse, // 0x6
        waterballoon, // 0x7
        eq_arm_blade, // 0x8
        gadget_heat_wave, // 0x9
        eq_localheal, // 0xa
        gadget_medicalinjectiongun, // 0xb
        nightingale, // 0xc
        gadget_smart_cover, // 0xd
        willy_pete, // 0xe
        eq_emp_grenade, // 0xf
        frag_grenade, // 0x10
        land_mine, // 0x11
        hatchet, // 0x12
        gadget_health_regen, // 0x13
        listening_device, // 0x14
        hash_3507beb47a6b634e, // 0x15
        eq_stimshot, // 0x16
        gadget_jammer, // 0x17
        hash_3ab58e40011df941, // 0x18
        eq_sticky_grenade, // 0x19
        eq_seeker_mine, // 0x1a
        hash_4b1854c2ff5135b2, // 0x1b
        snowball, // 0x1c
        eq_concertina_wire, // 0x1d
        eq_acid_bomb, // 0x1e
        gadget_spawnbeacon, // 0x1f
        gadget_armor, // 0x20
        tomahawk_t8, // 0x21
        gadget_health_boost, // 0x22
        spectre_grenade, // 0x23
        eq_flash_grenade, // 0x24
        trophy_system, // 0x25
        eq_slow_grenade, // 0x26
        tear_gas, // 0x27
        eq_molotov, // 0x28
        gadget_cleanse, // 0x29
        satchel_charge, // 0x2a
        default_specialist_equipment, // 0x2b
        gadget_health_regen_squad, // 0x2c
        hash_76b56e7e0b3b7aac, // 0x2d
        eq_decoy_grenade, // 0x2e
        hash_788c96e19cc7a46e, // 0x2f
        claymore, // 0x30
        cymbal_monkey, // 0x31
        hash_7ab3f9a730359659, // 0x32
        gadget_icepick, // 0x33
        gadget_camo // 0x34
    };

    // idx 0xa members: 0x3c
    enum hash_1e2de876fb880be2 {
        quickdraw, // 0x0
        acog, // 0x1
        dw, // 0x2
        ir, // 0x3
        barrel2, // 0x4
        mixunder2, // 0x5
        fastreload, // 0x6
        heavy, // 0x7
        steadyaim, // 0x8
        stalker, // 0x9
        barrel, // 0xa
        mixstock, // 0xb
        smoothzoom2, // 0xc
        mixclip2, // 0xd
        reflex4, // 0xe
        reflex3, // 0xf
        reflex2, // 0x10
        stalker2, // 0x11
        extclip2, // 0x12
        tactical, // 0x13
        steadyaim2, // 0x14
        mixclip, // 0x15
        light, // 0x16
        speedgrip2, // 0x17
        mixhandle, // 0x18
        mixunder, // 0x19
        mixbarrel2, // 0x1a
        mixstock2, // 0x1b
        reddot, // 0x1c
        handle, // 0x1d
        mixmuzzle2, // 0x1e
        extclip, // 0x1f
        light2, // 0x20
        heavy2, // 0x21
        holo, // 0x22
        elo, // 0x23
        fastreload2, // 0x24
        scope3x, // 0x25
        scope4x, // 0x26
        mixhandle2, // 0x27
        compensator, // 0x28
        mixbody, // 0x29
        quickdraw2, // 0x2a
        suppressed2, // 0x2b
        speedgrip, // 0x2c
        sprintout2, // 0x2d
        suppressed, // 0x2e
        sprintout, // 0x2f
        grip2, // 0x30
        mixmuzzle, // 0x31
        handle2, // 0x32
        compensator2, // 0x33
        mixbody2, // 0x34
        dualoptic, // 0x35
        grip, // 0x36
        smoothzoom, // 0x37
        reflex, // 0x38
        mixbarrel, // 0x39
        elo3, // 0x3a
        elo2 // 0x3b
    };

    // idx 0xb members: 0x3c
    enum hash_48d8d533750ed177 {
        talent_gungho, // 0x0
        talent_engineer, // 0x1
        talent_coldblooded, // 0x2
        hash_9fb2125b3e673e5, // 0x3
        gear_armor, // 0x4
        hash_cd70e712f842296, // 0x5
        talent_tracker, // 0x6
        hash_101808cdfcd390d6, // 0x7
        hash_128256155e755170, // 0x8
        hash_16cfc7f70dbd8712, // 0x9
        talent_flakjacket, // 0xa
        talent_logistics, // 0xb
        talent_looter, // 0xc
        gadget_medicalinjectiongun, // 0xd
        hash_1d8863d0b864a48b, // 0xe
        hash_1db03fa9862ba330, // 0xf
        hash_20290a682a974c94, // 0x10
        talent_dexterity, // 0x11
        hash_249e75e962ea5275, // 0x12
        talent_resistance, // 0x13
        gear_awareness, // 0x14
        hash_2c3a32e6e2afd1f2, // 0x15
        hash_311283e3107dec74, // 0x16
        talent_lightweight, // 0x17
        talent_awareness, // 0x18
        gear_equipmentcharge, // 0x19
        hash_38c08136902fd553, // 0x1a
        hash_39045b0020cc3e00, // 0x1b
        hash_3c323c7819b10b4d, // 0x1c
        hash_3c60422123a9075b, // 0x1d
        talent_scavenger, // 0x1e
        talent_skulker, // 0x1f
        gear_scorestreakcharge, // 0x20
        talent_ghost, // 0x21
        hash_4f80a2c3398e97c9, // 0x22
        talent_elemental_pop, // 0x23
        talent_brawler, // 0x24
        talent_quartermaster, // 0x25
        hash_59dbe7f72baaa0f0, // 0x26
        hash_59dbe8f72baaa2a3, // 0x27
        hash_59dbecf72baaa96f, // 0x28
        hash_59dbedf72baaab22, // 0x29
        hash_59dbeef72baaacd5, // 0x2a
        hash_5c80935e7a319f21, // 0x2b
        talent_paranoia, // 0x2c
        talent_teamlink, // 0x2d
        talent_deadsilence, // 0x2e
        hash_646fc27884bdaa02, // 0x2f
        gear_medicalinjectiongun, // 0x30
        hash_661cd0d6fb33878c, // 0x31
        talent_spycraft, // 0x32
        hash_7321f9058ee65217, // 0x33
        hash_7716cb3888f5dd8a, // 0x34
        talent_elemental_pop_2, // 0x35
        talent_elemental_pop_3, // 0x36
        talent_elemental_pop_1, // 0x37
        talent_elemental_pop_4, // 0x38
        talent_elemental_pop_5, // 0x39
        hash_7ca561e40dc3c5de, // 0x3a
        hash_7f79d3ba6ed1a1d7 // 0x3b
    };

    // idx 0xc members: 0xc
    enum hash_66db207c660e33f3 {
        bonuscard_overkill, // 0x0
        bonuscard_underkill, // 0x1
        bonuscard_perk_1_greed, // 0x2
        talent_mulekick, // 0x3
        talent_mulekick_1, // 0x4
        talent_mulekick_2, // 0x5
        talent_mulekick_3, // 0x6
        talent_mulekick_4, // 0x7
        talent_mulekick_5, // 0x8
        hash_4a12859000892dda, // 0x9
        hash_639ebbcda56447e7, // 0xa
        bonuscard_primary_gunfighter // 0xb
    };

    // idx 0xd members: 0x107
    enum hash_1acf39b1d1bee1d5 {
        bonuscard_overkill, // 0x0
        ww_mega_barrel_fullauto_blazer_beam_t9, // 0x1
        talent_gungho, // 0x2
        tr_fastburst_t9, // 0x3
        talent_engineer, // 0x4
        napalm_strike_zm, // 0x5
        ability_smart_cover, // 0x6
        dart, // 0x7
        ultimate_turret, // 0x8
        hash_5a7fd1af4a1d5c9, // 0x9
        melee_sai_t9, // 0xa
        hash_7a083f7ba43fa06, // 0xb
        talent_coldblooded, // 0xc
        lmg_accurate_t9, // 0xd
        melee_etool_t9, // 0xe
        ray_gun_mk2z, // 0xf
        ray_gun_mk2y, // 0x10
        ray_gun_mk2x, // 0x11
        hash_9fb2125b3e673e5, // 0x12
        sniper_powersemi_t9, // 0x13
        eq_wraith_fire, // 0x14
        gear_armor, // 0x15
        counteruav, // 0x16
        hash_cd70e712f842296, // 0x17
        talent_tracker, // 0x18
        missile_turret, // 0x19
        eq_shroud, // 0x1a
        gadget_supplypod, // 0x1b
        hash_101808cdfcd390d6, // 0x1c
        ar_damage_t9, // 0x1d
        homunculus, // 0x1e
        spknifeork, // 0x1f
        melee_bowie, // 0x20
        hash_128256155e755170, // 0x21
        ww_mega_barrel_fullauto_diffusion_beam_t9, // 0x22
        ww_random_ray_gun1, // 0x23
        bonuscard_underkill, // 0x24
        recon_plane, // 0x25
        hash_16cfc7f70dbd8712, // 0x26
        bonuscard_perk_1_greed, // 0x27
        sig_buckler_dw, // 0x28
        talent_mulekick, // 0x29
        talent_flakjacket, // 0x2a
        gadget_vision_pulse, // 0x2b
        waterballoon, // 0x2c
        special_crossbow_t9, // 0x2d
        weapon_armor, // 0x2e
        eq_arm_blade, // 0x2f
        talent_logistics, // 0x30
        ww_blundergat_t8, // 0x31
        gadget_heat_wave, // 0x32
        eq_localheal, // 0x33
        hoverjet, // 0x34
        talent_looter, // 0x35
        gadget_medicalinjectiongun, // 0x36
        hash_1d8863d0b864a48b, // 0x37
        hash_1db03fa9862ba330, // 0x38
        nightingale, // 0x39
        pistol_fullauto_t9, // 0x3a
        remote_missile, // 0x3b
        gadget_smart_cover, // 0x3c
        hash_20290a682a974c94, // 0x3d
        willy_pete, // 0x3e
        eq_emp_grenade, // 0x3f
        special_grenadelauncher_t9, // 0x40
        melee_machete_t9, // 0x41
        talent_dexterity, // 0x42
        launcher_freefire_t9, // 0x43
        hash_249e75e962ea5275, // 0x44
        ar_accurate_t9, // 0x45
        sig_lmg, // 0x46
        ww_crossbow_impaler_t8, // 0x47
        ww_freezegun_t8, // 0x48
        frag_grenade, // 0x49
        smg_cqb_t9, // 0x4a
        knife_loadout, // 0x4b
        feature_default_class_1, // 0x4c
        feature_default_class_3, // 0x4d
        feature_default_class_2, // 0x4e
        feature_default_class_5, // 0x4f
        feature_default_class_4, // 0x50
        feature_default_class_6, // 0x51
        talent_resistance, // 0x52
        spy_wanted_order, // 0x53
        swat_team, // 0x54
        gear_awareness, // 0x55
        land_mine, // 0x56
        hatchet, // 0x57
        hash_2c3a32e6e2afd1f2, // 0x58
        talent_mulekick_1, // 0x59
        talent_mulekick_2, // 0x5a
        talent_mulekick_3, // 0x5b
        talent_mulekick_4, // 0x5c
        talent_mulekick_5, // 0x5d
        supplydrop_marker, // 0x5e
        mute_smoke, // 0x5f
        hash_2ea46ca74ebdfcac, // 0x60
        smg_capacity_t9, // 0x61
        chopper_gunner, // 0x62
        melee_baseballbat_t9, // 0x63
        hash_311283e3107dec74, // 0x64
        null_offhand_secondary, // 0x65
        gadget_health_regen, // 0x66
        hash_31be8125c7d0f273, // 0x67
        pistol_shotgun_t9, // 0x68
        listening_device, // 0x69
        talent_lightweight, // 0x6a
        talent_awareness, // 0x6b
        spork_alcatraz, // 0x6c
        drone_squadron, // 0x6d
        gear_equipmentcharge, // 0x6e
        pistol_semiauto_t9, // 0x6f
        melee_mace_t9, // 0x70
        null_offhand_primary, // 0x71
        smg_burst_t9, // 0x72
        hash_3507beb47a6b634e, // 0x73
        pistol_revolver_t9, // 0x74
        eq_stimshot, // 0x75
        ww_mega_barrel_fullauto_copycat_t9, // 0x76
        hash_38c08136902fd553, // 0x77
        hash_39045b0020cc3e00, // 0x78
        overwatch_helicopter, // 0x79
        gadget_jammer, // 0x7a
        hash_3ab58e40011df941, // 0x7b
        launcher_standard_t9, // 0x7c
        hash_3c323c7819b10b4d, // 0x7d
        hash_3c60422123a9075b, // 0x7e
        melee_bowie_bloody, // 0x7f
        eq_sticky_grenade, // 0x80
        special_ballisticknife_t9_dw, // 0x81
        ww_ieu_shockwave_t9, // 0x82
        melee_sledgehammer_t9, // 0x83
        sig_blade, // 0x84
        talent_scavenger, // 0x85
        pistol_burst_t9, // 0x86
        hash_4385cf507401820f, // 0x87
        napalm_strike, // 0x88
        sniper_accurate_t9, // 0x89
        ar_fastfire_t9, // 0x8a
        melee_wakizashi_t9, // 0x8b
        hero_pineapplegun, // 0x8c
        talent_skulker, // 0x8d
        hash_48206b17d50533c2, // 0x8e
        sniper_quickscope_t9, // 0x8f
        ability_dog, // 0x90
        straferun, // 0x91
        hash_4a12859000892dda, // 0x92
        eq_seeker_mine, // 0x93
        ww_crossbow_t8, // 0x94
        recon_car, // 0x95
        hash_4b1854c2ff5135b2, // 0x96
        snowball, // 0x97
        feature_custom_class_9, // 0x98
        feature_custom_class_8, // 0x99
        feature_custom_class_3, // 0x9a
        feature_custom_class_2, // 0x9b
        feature_custom_class_1, // 0x9c
        feature_custom_class_7, // 0x9d
        feature_custom_class_6, // 0x9e
        feature_custom_class_5, // 0x9f
        feature_custom_class_4, // 0xa0
        uav, // 0xa1
        eq_concertina_wire, // 0xa2
        gear_scorestreakcharge, // 0xa3
        feature_custom_class_10, // 0xa4
        ar_slowhandling_t9, // 0xa5
        eq_acid_bomb, // 0xa6
        gadget_spawnbeacon, // 0xa7
        ac130, // 0xa8
        talent_ghost, // 0xa9
        hash_4f80a2c3398e97c9, // 0xaa
        tr_precisionsemi_t9, // 0xab
        helicopter_comlink, // 0xac
        gadget_armor, // 0xad
        tr_damagesemi_t9, // 0xae
        feature_cac, // 0xaf
        talent_elemental_pop, // 0xb0
        tomahawk_t8, // 0xb1
        shotgun_pump_t9, // 0xb2
        gadget_health_boost, // 0xb3
        spectre_grenade, // 0xb4
        talent_brawler, // 0xb5
        eq_flash_grenade, // 0xb6
        hash_55c23f24d806e3a6, // 0xb7
        bare_hands, // 0xb8
        ar_slowfire_t9, // 0xb9
        tr_powerburst_t9, // 0xba
        trophy_system, // 0xbb
        talent_quartermaster, // 0xbc
        hash_59dbe7f72baaa0f0, // 0xbd
        hash_59dbe8f72baaa2a3, // 0xbe
        hash_59dbecf72baaa96f, // 0xbf
        hash_59dbedf72baaab22, // 0xc0
        hash_59dbeef72baaacd5, // 0xc1
        ray_gun_mk2, // 0xc2
        tr_longburst_t9, // 0xc3
        nuke, // 0xc4
        ww_ray_rifle_t9, // 0xc5
        smg_standard_t9, // 0xc6
        hash_5c80935e7a319f21, // 0xc7
        sig_bow_flame, // 0xc8
        eq_slow_grenade, // 0xc9
        talent_paranoia, // 0xca
        special_nailgun_t9, // 0xcb
        smg_accurate_t9, // 0xcc
        hash_603c083704cefb0c, // 0xcd
        jetfighter, // 0xce
        talent_teamlink, // 0xcf
        smg_heavy_t9, // 0xd0
        talent_deadsilence, // 0xd1
        tear_gas, // 0xd2
        hash_639ebbcda56447e7, // 0xd3
        eq_molotov, // 0xd4
        smg_fastfire_t9, // 0xd5
        hash_646fc27884bdaa02, // 0xd6
        bonuscard_primary_gunfighter, // 0xd7
        lmg_light_t9, // 0xd8
        ai_tank_marker, // 0xd9
        gear_medicalinjectiongun, // 0xda
        hash_661cd0d6fb33878c, // 0xdb
        gadget_cleanse, // 0xdc
        ar_british_t9, // 0xdd
        hero_flamethrower, // 0xde
        sniper_standard_t9, // 0xdf
        melee_cane_t9, // 0xe0
        smg_spray_t9, // 0xe1
        hero_annihilator, // 0xe2
        ar_fasthandling_t9, // 0xe3
        ar_mobility_t9, // 0xe4
        planemortar, // 0xe5
        sniper_cannon_t9, // 0xe6
        shotgun_semiauto_t9, // 0xe7
        lmg_fastfire_t9, // 0xe8
        ar_standard_t9, // 0xe9
        weapon_null, // 0xea
        talent_spycraft, // 0xeb
        hash_7321f9058ee65217, // 0xec
        satchel_charge, // 0xed
        default_specialist_equipment, // 0xee
        gadget_health_regen_squad, // 0xef
        hash_76b56e7e0b3b7aac, // 0xf0
        eq_decoy_grenade, // 0xf1
        hash_7716cb3888f5dd8a, // 0xf2
        smg_semiauto_t9, // 0xf3
        ray_gun, // 0xf4
        hash_788c96e19cc7a46e, // 0xf5
        claymore, // 0xf6
        talent_elemental_pop_2, // 0xf7
        talent_elemental_pop_3, // 0xf8
        talent_elemental_pop_1, // 0xf9
        talent_elemental_pop_4, // 0xfa
        talent_elemental_pop_5, // 0xfb
        smg_handling_t9, // 0xfc
        cymbal_monkey, // 0xfd
        shotgun_fullauto_t9, // 0xfe
        hash_7ab3f9a730359659, // 0xff
        gadget_icepick, // 0x100
        ww_mega_barrel_fullauto_micro_missile_t9, // 0x101
        hash_7ca561e40dc3c5de, // 0x102
        basketball, // 0x103
        gadget_camo, // 0x104
        hash_7f79d3ba6ed1a1d7, // 0x105
        lmg_slowfire_t9 // 0x106
    };

    // root: bitSize: 0x11c8, members: 15

    // offset: 0x0, bitSize: 0x6d8(0xdb Byte(s))
    region_info dml;
    // offset: 0x6d8, bitSize: 0x318(0x63 Byte(s)), array:0x3(hti:0xffff)
    lootcontracts loot_contracts[3];
    // offset: 0x9f0, bitSize: 0x20(0x4 Byte(s))
    uint hash_5a1a5df0cdadbba3;
    // offset: 0xa10, bitSize: 0x20(0x4 Byte(s))
    uint hash_151eef37df5ee845;
    // offset: 0xa30, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_tier_boost;
    // offset: 0xa38, bitSize: 0x8(0x1 Byte(s))
    hash_54196e9e9860f0be platform;
    // offset: 0xa40, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_party_tier_boost;
    // offset: 0xa48, bitSize: 0x20(0x4 Byte(s))
    uint hash_1e4fbbabf3da13fa;
    // offset: 0xa68, bitSize: 0x110(0x22 Byte(s)), array:0x11(hti:0xffff)
    hash_33944d215cff6222 hash_33944d215cff6222[17];
    // offset: 0xb78, bitSize: 0x550(0xaa Byte(s)), array:0x55(hti:0x6)
    hash_1c86958671ff27fd hash_4953b2b12f1d6b1b[hash_4b8d95aacf149fb9];
    // offset: 0x10c8, bitSize: 0xa0(0x14 Byte(s))
    client_header client;
    // offset: 0x1168, bitSize: 0x8(0x1 Byte(s))
    byte tier_boost;
    // offset: 0x1170, bitSize: 0x1
    bool hash_4ca91f34eba5a203;
    // offset: 0x1171, bitSize: 0x55, array:0x55(hti:0x6)
    bool hash_4473319d8a8d9dcf[hash_4b8d95aacf149fb9];
};

version hash_c54d8441ae6c9436 {
    // enums ..... 14 (0xe)
    // structs ... 9 (0x9)
    // header bit size .. 5048 (0x13b8)
    // header byte size . 631 (0x277)

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
    struct hash_1c86958671ff27fd {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_50ab8b7df567cd2a;
    };

    // bitSize: 0x108, members: 6
    struct lootcontracts {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint xp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint contractid;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:3 contractgamemode;
        // offset: 0x48, bitSize: 0x40(0x8 Byte(s))
        xhash contracthash;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 progress;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 target;
    };

    // bitSize: 0x10, members: 3
    struct hash_33944d215cff6222 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_174d79c341ec2c6c;
        // offset: 0x8, bitSize: 0x1
        bool hash_2401d7a2dc706a6c;
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

    // idx 0x5 members: 0xbf
    enum hash_10d50fe10481423c {
        ww_mega_barrel_fullauto_blazer_beam_t9, // 0x0
        tr_fastburst_t9, // 0x1
        napalm_strike_zm, // 0x2
        ability_smart_cover, // 0x3
        dart, // 0x4
        ultimate_turret, // 0x5
        hash_5a7fd1af4a1d5c9, // 0x6
        melee_sai_t9, // 0x7
        hash_7a083f7ba43fa06, // 0x8
        lmg_accurate_t9, // 0x9
        melee_etool_t9, // 0xa
        ray_gun_mk2z, // 0xb
        ray_gun_mk2y, // 0xc
        ray_gun_mk2x, // 0xd
        sniper_powersemi_t9, // 0xe
        eq_wraith_fire, // 0xf
        counteruav, // 0x10
        missile_turret, // 0x11
        eq_shroud, // 0x12
        gadget_supplypod, // 0x13
        ar_damage_t9, // 0x14
        homunculus, // 0x15
        spknifeork, // 0x16
        melee_bowie, // 0x17
        ww_mega_barrel_fullauto_diffusion_beam_t9, // 0x18
        ww_random_ray_gun1, // 0x19
        recon_plane, // 0x1a
        sig_buckler_dw, // 0x1b
        gadget_vision_pulse, // 0x1c
        waterballoon, // 0x1d
        special_crossbow_t9, // 0x1e
        weapon_armor, // 0x1f
        eq_arm_blade, // 0x20
        ww_blundergat_t8, // 0x21
        gadget_heat_wave, // 0x22
        eq_localheal, // 0x23
        hoverjet, // 0x24
        nightingale, // 0x25
        pistol_fullauto_t9, // 0x26
        remote_missile, // 0x27
        gadget_smart_cover, // 0x28
        willy_pete, // 0x29
        eq_emp_grenade, // 0x2a
        special_grenadelauncher_t9, // 0x2b
        melee_machete_t9, // 0x2c
        launcher_freefire_t9, // 0x2d
        ar_accurate_t9, // 0x2e
        sig_lmg, // 0x2f
        ww_crossbow_impaler_t8, // 0x30
        ww_freezegun_t8, // 0x31
        frag_grenade, // 0x32
        smg_cqb_t9, // 0x33
        knife_loadout, // 0x34
        feature_default_class_1, // 0x35
        feature_default_class_3, // 0x36
        feature_default_class_2, // 0x37
        feature_default_class_5, // 0x38
        feature_default_class_4, // 0x39
        feature_default_class_6, // 0x3a
        spy_wanted_order, // 0x3b
        swat_team, // 0x3c
        land_mine, // 0x3d
        hatchet, // 0x3e
        supplydrop_marker, // 0x3f
        mute_smoke, // 0x40
        hash_2ea46ca74ebdfcac, // 0x41
        smg_capacity_t9, // 0x42
        chopper_gunner, // 0x43
        melee_baseballbat_t9, // 0x44
        null_offhand_secondary, // 0x45
        gadget_health_regen, // 0x46
        hash_31be8125c7d0f273, // 0x47
        pistol_shotgun_t9, // 0x48
        listening_device, // 0x49
        spork_alcatraz, // 0x4a
        drone_squadron, // 0x4b
        pistol_semiauto_t9, // 0x4c
        melee_mace_t9, // 0x4d
        null_offhand_primary, // 0x4e
        smg_burst_t9, // 0x4f
        hash_3507beb47a6b634e, // 0x50
        pistol_revolver_t9, // 0x51
        eq_stimshot, // 0x52
        ww_mega_barrel_fullauto_copycat_t9, // 0x53
        overwatch_helicopter, // 0x54
        gadget_jammer, // 0x55
        hash_3ab58e40011df941, // 0x56
        launcher_standard_t9, // 0x57
        melee_bowie_bloody, // 0x58
        eq_sticky_grenade, // 0x59
        special_ballisticknife_t9_dw, // 0x5a
        ww_ieu_shockwave_t9, // 0x5b
        melee_sledgehammer_t9, // 0x5c
        sig_blade, // 0x5d
        pistol_burst_t9, // 0x5e
        hash_4385cf507401820f, // 0x5f
        napalm_strike, // 0x60
        sniper_accurate_t9, // 0x61
        ar_fastfire_t9, // 0x62
        melee_wakizashi_t9, // 0x63
        hero_pineapplegun, // 0x64
        hash_48206b17d50533c2, // 0x65
        sniper_quickscope_t9, // 0x66
        ability_dog, // 0x67
        straferun, // 0x68
        eq_seeker_mine, // 0x69
        ww_crossbow_t8, // 0x6a
        recon_car, // 0x6b
        hash_4b1854c2ff5135b2, // 0x6c
        snowball, // 0x6d
        feature_custom_class_9, // 0x6e
        feature_custom_class_8, // 0x6f
        feature_custom_class_3, // 0x70
        feature_custom_class_2, // 0x71
        feature_custom_class_1, // 0x72
        feature_custom_class_7, // 0x73
        feature_custom_class_6, // 0x74
        feature_custom_class_5, // 0x75
        feature_custom_class_4, // 0x76
        uav, // 0x77
        eq_concertina_wire, // 0x78
        feature_custom_class_10, // 0x79
        ar_slowhandling_t9, // 0x7a
        eq_acid_bomb, // 0x7b
        gadget_spawnbeacon, // 0x7c
        ac130, // 0x7d
        tr_precisionsemi_t9, // 0x7e
        helicopter_comlink, // 0x7f
        gadget_armor, // 0x80
        tr_damagesemi_t9, // 0x81
        feature_cac, // 0x82
        tomahawk_t8, // 0x83
        shotgun_pump_t9, // 0x84
        gadget_health_boost, // 0x85
        spectre_grenade, // 0x86
        eq_flash_grenade, // 0x87
        hash_55c23f24d806e3a6, // 0x88
        bare_hands, // 0x89
        ar_slowfire_t9, // 0x8a
        tr_powerburst_t9, // 0x8b
        trophy_system, // 0x8c
        ray_gun_mk2, // 0x8d
        tr_longburst_t9, // 0x8e
        nuke, // 0x8f
        ww_ray_rifle_t9, // 0x90
        smg_standard_t9, // 0x91
        sig_bow_flame, // 0x92
        eq_slow_grenade, // 0x93
        special_nailgun_t9, // 0x94
        smg_accurate_t9, // 0x95
        hash_603c083704cefb0c, // 0x96
        jetfighter, // 0x97
        smg_heavy_t9, // 0x98
        tear_gas, // 0x99
        eq_molotov, // 0x9a
        smg_fastfire_t9, // 0x9b
        lmg_light_t9, // 0x9c
        ai_tank_marker, // 0x9d
        gadget_cleanse, // 0x9e
        ar_british_t9, // 0x9f
        hero_flamethrower, // 0xa0
        sniper_standard_t9, // 0xa1
        melee_cane_t9, // 0xa2
        smg_spray_t9, // 0xa3
        hero_annihilator, // 0xa4
        ar_fasthandling_t9, // 0xa5
        ar_mobility_t9, // 0xa6
        planemortar, // 0xa7
        sniper_cannon_t9, // 0xa8
        shotgun_semiauto_t9, // 0xa9
        lmg_fastfire_t9, // 0xaa
        ar_standard_t9, // 0xab
        weapon_null, // 0xac
        satchel_charge, // 0xad
        default_specialist_equipment, // 0xae
        gadget_health_regen_squad, // 0xaf
        hash_76b56e7e0b3b7aac, // 0xb0
        eq_decoy_grenade, // 0xb1
        smg_semiauto_t9, // 0xb2
        ray_gun, // 0xb3
        hash_788c96e19cc7a46e, // 0xb4
        claymore, // 0xb5
        smg_handling_t9, // 0xb6
        cymbal_monkey, // 0xb7
        shotgun_fullauto_t9, // 0xb8
        hash_7ab3f9a730359659, // 0xb9
        gadget_icepick, // 0xba
        ww_mega_barrel_fullauto_micro_missile_t9, // 0xbb
        basketball, // 0xbc
        gadget_camo, // 0xbd
        lmg_slowfire_t9 // 0xbe
    };

    // idx 0x6 members: 0x55
    enum hash_4b8d95aacf149fb9 {
        ww_mega_barrel_fullauto_blazer_beam_t9, // 0x0
        tr_fastburst_t9, // 0x1
        melee_sai_t9, // 0x2
        lmg_accurate_t9, // 0x3
        melee_etool_t9, // 0x4
        ray_gun_mk2z, // 0x5
        ray_gun_mk2y, // 0x6
        ray_gun_mk2x, // 0x7
        sniper_powersemi_t9, // 0x8
        hash_c21b61b32a5d972, // 0x9
        ar_damage_t9, // 0xa
        homunculus, // 0xb
        spknifeork, // 0xc
        melee_bowie, // 0xd
        ww_mega_barrel_fullauto_diffusion_beam_t9, // 0xe
        ww_random_ray_gun1, // 0xf
        hash_165cf52ce418f5a1, // 0x10
        special_crossbow_t9, // 0x11
        ww_blundergat_t8, // 0x12
        pistol_fullauto_t9, // 0x13
        special_grenadelauncher_t9, // 0x14
        melee_machete_t9, // 0x15
        launcher_freefire_t9, // 0x16
        ar_accurate_t9, // 0x17
        ww_crossbow_impaler_t8, // 0x18
        ww_freezegun_t8, // 0x19
        smg_cqb_t9, // 0x1a
        knife_loadout, // 0x1b
        hash_2ea46ca74ebdfcac, // 0x1c
        smg_capacity_t9, // 0x1d
        melee_baseballbat_t9, // 0x1e
        pistol_shotgun_t9, // 0x1f
        spork_alcatraz, // 0x20
        pistol_semiauto_t9, // 0x21
        melee_mace_t9, // 0x22
        smg_burst_t9, // 0x23
        pistol_revolver_t9, // 0x24
        ww_mega_barrel_fullauto_copycat_t9, // 0x25
        launcher_standard_t9, // 0x26
        melee_bowie_bloody, // 0x27
        special_ballisticknife_t9_dw, // 0x28
        ww_ieu_shockwave_t9, // 0x29
        melee_sledgehammer_t9, // 0x2a
        pistol_burst_t9, // 0x2b
        hash_4385cf507401820f, // 0x2c
        sniper_accurate_t9, // 0x2d
        ar_fastfire_t9, // 0x2e
        melee_wakizashi_t9, // 0x2f
        hash_48206b17d50533c2, // 0x30
        sniper_quickscope_t9, // 0x31
        ww_crossbow_t8, // 0x32
        ar_slowhandling_t9, // 0x33
        tr_precisionsemi_t9, // 0x34
        tr_damagesemi_t9, // 0x35
        shotgun_pump_t9, // 0x36
        hash_55c23f24d806e3a6, // 0x37
        ar_slowfire_t9, // 0x38
        tr_powerburst_t9, // 0x39
        ray_gun_mk2, // 0x3a
        tr_longburst_t9, // 0x3b
        ww_ray_rifle_t9, // 0x3c
        smg_standard_t9, // 0x3d
        special_nailgun_t9, // 0x3e
        smg_accurate_t9, // 0x3f
        hash_603c083704cefb0c, // 0x40
        smg_heavy_t9, // 0x41
        smg_fastfire_t9, // 0x42
        lmg_light_t9, // 0x43
        ar_british_t9, // 0x44
        sniper_standard_t9, // 0x45
        melee_cane_t9, // 0x46
        smg_spray_t9, // 0x47
        ar_fasthandling_t9, // 0x48
        ar_mobility_t9, // 0x49
        sniper_cannon_t9, // 0x4a
        shotgun_semiauto_t9, // 0x4b
        lmg_fastfire_t9, // 0x4c
        ar_standard_t9, // 0x4d
        smg_semiauto_t9, // 0x4e
        ray_gun, // 0x4f
        smg_handling_t9, // 0x50
        shotgun_fullauto_t9, // 0x51
        ww_mega_barrel_fullauto_micro_missile_t9, // 0x52
        basketball, // 0x53
        lmg_slowfire_t9 // 0x54
    };

    // idx 0x7 members: 0x13
    enum hash_7493d39e2637c1e7 {
        bonuscard, // 0x0
        hero, // 0x1
        feature, // 0x2
        weapon_special, // 0x3
        weapon_knife, // 0x4
        character, // 0x5
        miscweapon, // 0x6
        weapon_pistol, // 0x7
        killstreak, // 0x8
        weapon_sniper, // 0x9
        talent, // 0xa
        weapon_launcher, // 0xb
        weapon_grenade, // 0xc
        weapon_lmg, // 0xd
        weapon_tactical, // 0xe
        weapon_smg, // 0xf
        hash_7b68172df6035672, // 0x10
        weapon_cqb, // 0x11
        weapon_assault // 0x12
    };

    // idx 0x8 members: 0x20
    enum hash_d5731f85b8cf294 {
        napalm_strike_zm, // 0x0
        dart, // 0x1
        ultimate_turret, // 0x2
        counteruav, // 0x3
        recon_plane, // 0x4
        weapon_armor, // 0x5
        hoverjet, // 0x6
        remote_missile, // 0x7
        spy_med_pack, // 0x8
        sig_lmg, // 0x9
        spy_wanted_order, // 0xa
        swat_team, // 0xb
        supplydrop_marker, // 0xc
        chopper_gunner, // 0xd
        drone_squadron, // 0xe
        overwatch_helicopter, // 0xf
        napalm_strike, // 0x10
        hero_pineapplegun, // 0x11
        ability_dog, // 0x12
        straferun, // 0x13
        recon_car, // 0x14
        uav, // 0x15
        ac130, // 0x16
        helicopter_comlink, // 0x17
        nuke, // 0x18
        sig_bow_flame, // 0x19
        jetfighter, // 0x1a
        ai_tank_marker, // 0x1b
        helicopter_guard, // 0x1c
        hero_flamethrower, // 0x1d
        hero_annihilator, // 0x1e
        planemortar // 0x1f
    };

    // idx 0x9 members: 0x35
    enum hash_507792265be6dcc4 {
        ability_smart_cover, // 0x0
        hash_7a083f7ba43fa06, // 0x1
        eq_wraith_fire, // 0x2
        missile_turret, // 0x3
        eq_shroud, // 0x4
        gadget_supplypod, // 0x5
        gadget_vision_pulse, // 0x6
        waterballoon, // 0x7
        eq_arm_blade, // 0x8
        gadget_heat_wave, // 0x9
        eq_localheal, // 0xa
        gadget_medicalinjectiongun, // 0xb
        nightingale, // 0xc
        gadget_smart_cover, // 0xd
        willy_pete, // 0xe
        eq_emp_grenade, // 0xf
        frag_grenade, // 0x10
        land_mine, // 0x11
        hatchet, // 0x12
        gadget_health_regen, // 0x13
        listening_device, // 0x14
        hash_3507beb47a6b634e, // 0x15
        eq_stimshot, // 0x16
        gadget_jammer, // 0x17
        hash_3ab58e40011df941, // 0x18
        eq_sticky_grenade, // 0x19
        eq_seeker_mine, // 0x1a
        hash_4b1854c2ff5135b2, // 0x1b
        snowball, // 0x1c
        eq_concertina_wire, // 0x1d
        eq_acid_bomb, // 0x1e
        gadget_spawnbeacon, // 0x1f
        gadget_armor, // 0x20
        tomahawk_t8, // 0x21
        gadget_health_boost, // 0x22
        spectre_grenade, // 0x23
        eq_flash_grenade, // 0x24
        trophy_system, // 0x25
        eq_slow_grenade, // 0x26
        tear_gas, // 0x27
        eq_molotov, // 0x28
        gadget_cleanse, // 0x29
        satchel_charge, // 0x2a
        default_specialist_equipment, // 0x2b
        gadget_health_regen_squad, // 0x2c
        hash_76b56e7e0b3b7aac, // 0x2d
        eq_decoy_grenade, // 0x2e
        hash_788c96e19cc7a46e, // 0x2f
        claymore, // 0x30
        cymbal_monkey, // 0x31
        hash_7ab3f9a730359659, // 0x32
        gadget_icepick, // 0x33
        gadget_camo // 0x34
    };

    // idx 0xa members: 0x3c
    enum hash_1e2de876fb880be2 {
        quickdraw, // 0x0
        acog, // 0x1
        dw, // 0x2
        ir, // 0x3
        barrel2, // 0x4
        mixunder2, // 0x5
        fastreload, // 0x6
        heavy, // 0x7
        steadyaim, // 0x8
        stalker, // 0x9
        barrel, // 0xa
        mixstock, // 0xb
        smoothzoom2, // 0xc
        mixclip2, // 0xd
        reflex4, // 0xe
        reflex3, // 0xf
        reflex2, // 0x10
        stalker2, // 0x11
        extclip2, // 0x12
        tactical, // 0x13
        steadyaim2, // 0x14
        mixclip, // 0x15
        light, // 0x16
        speedgrip2, // 0x17
        mixhandle, // 0x18
        mixunder, // 0x19
        mixbarrel2, // 0x1a
        mixstock2, // 0x1b
        reddot, // 0x1c
        handle, // 0x1d
        mixmuzzle2, // 0x1e
        extclip, // 0x1f
        light2, // 0x20
        heavy2, // 0x21
        holo, // 0x22
        elo, // 0x23
        fastreload2, // 0x24
        scope3x, // 0x25
        scope4x, // 0x26
        mixhandle2, // 0x27
        compensator, // 0x28
        mixbody, // 0x29
        quickdraw2, // 0x2a
        suppressed2, // 0x2b
        speedgrip, // 0x2c
        sprintout2, // 0x2d
        suppressed, // 0x2e
        sprintout, // 0x2f
        grip2, // 0x30
        mixmuzzle, // 0x31
        handle2, // 0x32
        compensator2, // 0x33
        mixbody2, // 0x34
        dualoptic, // 0x35
        grip, // 0x36
        smoothzoom, // 0x37
        reflex, // 0x38
        mixbarrel, // 0x39
        elo3, // 0x3a
        elo2 // 0x3b
    };

    // idx 0xb members: 0x3c
    enum hash_48d8d533750ed177 {
        talent_gungho, // 0x0
        talent_engineer, // 0x1
        talent_coldblooded, // 0x2
        hash_9fb2125b3e673e5, // 0x3
        gear_armor, // 0x4
        hash_cd70e712f842296, // 0x5
        talent_tracker, // 0x6
        hash_101808cdfcd390d6, // 0x7
        hash_128256155e755170, // 0x8
        hash_16cfc7f70dbd8712, // 0x9
        talent_flakjacket, // 0xa
        talent_logistics, // 0xb
        talent_looter, // 0xc
        gadget_medicalinjectiongun, // 0xd
        hash_1d8863d0b864a48b, // 0xe
        hash_1db03fa9862ba330, // 0xf
        hash_20290a682a974c94, // 0x10
        talent_dexterity, // 0x11
        hash_249e75e962ea5275, // 0x12
        talent_resistance, // 0x13
        gear_awareness, // 0x14
        hash_2c3a32e6e2afd1f2, // 0x15
        hash_311283e3107dec74, // 0x16
        talent_lightweight, // 0x17
        talent_awareness, // 0x18
        gear_equipmentcharge, // 0x19
        hash_38c08136902fd553, // 0x1a
        hash_39045b0020cc3e00, // 0x1b
        hash_3c323c7819b10b4d, // 0x1c
        hash_3c60422123a9075b, // 0x1d
        talent_scavenger, // 0x1e
        talent_skulker, // 0x1f
        gear_scorestreakcharge, // 0x20
        talent_ghost, // 0x21
        hash_4f80a2c3398e97c9, // 0x22
        talent_elemental_pop, // 0x23
        talent_brawler, // 0x24
        talent_quartermaster, // 0x25
        hash_59dbe7f72baaa0f0, // 0x26
        hash_59dbe8f72baaa2a3, // 0x27
        hash_59dbecf72baaa96f, // 0x28
        hash_59dbedf72baaab22, // 0x29
        hash_59dbeef72baaacd5, // 0x2a
        hash_5c80935e7a319f21, // 0x2b
        talent_paranoia, // 0x2c
        talent_teamlink, // 0x2d
        talent_deadsilence, // 0x2e
        hash_646fc27884bdaa02, // 0x2f
        gear_medicalinjectiongun, // 0x30
        hash_661cd0d6fb33878c, // 0x31
        talent_spycraft, // 0x32
        hash_7321f9058ee65217, // 0x33
        hash_7716cb3888f5dd8a, // 0x34
        talent_elemental_pop_2, // 0x35
        talent_elemental_pop_3, // 0x36
        talent_elemental_pop_1, // 0x37
        talent_elemental_pop_4, // 0x38
        talent_elemental_pop_5, // 0x39
        hash_7ca561e40dc3c5de, // 0x3a
        hash_7f79d3ba6ed1a1d7 // 0x3b
    };

    // idx 0xc members: 0x12
    enum hash_66db207c660e33f3 {
        bonuscard_overkill, // 0x0
        bonuscard_underkill, // 0x1
        bonuscard_perk_1_greed, // 0x2
        talent_mulekick, // 0x3
        talent_deathperception, // 0x4
        talent_mulekick_1, // 0x5
        talent_mulekick_2, // 0x6
        talent_mulekick_3, // 0x7
        talent_mulekick_4, // 0x8
        talent_mulekick_5, // 0x9
        hash_4a12859000892dda, // 0xa
        hash_639ebbcda56447e7, // 0xb
        bonuscard_primary_gunfighter, // 0xc
        talent_deathperception_2, // 0xd
        talent_deathperception_3, // 0xe
        talent_deathperception_1, // 0xf
        talent_deathperception_4, // 0x10
        talent_deathperception_5 // 0x11
    };

    // idx 0xd members: 0x10d
    enum hash_1acf39b1d1bee1d5 {
        bonuscard_overkill, // 0x0
        ww_mega_barrel_fullauto_blazer_beam_t9, // 0x1
        talent_gungho, // 0x2
        tr_fastburst_t9, // 0x3
        talent_engineer, // 0x4
        napalm_strike_zm, // 0x5
        ability_smart_cover, // 0x6
        dart, // 0x7
        ultimate_turret, // 0x8
        hash_5a7fd1af4a1d5c9, // 0x9
        melee_sai_t9, // 0xa
        hash_7a083f7ba43fa06, // 0xb
        talent_coldblooded, // 0xc
        lmg_accurate_t9, // 0xd
        melee_etool_t9, // 0xe
        ray_gun_mk2z, // 0xf
        ray_gun_mk2y, // 0x10
        ray_gun_mk2x, // 0x11
        hash_9fb2125b3e673e5, // 0x12
        sniper_powersemi_t9, // 0x13
        eq_wraith_fire, // 0x14
        gear_armor, // 0x15
        counteruav, // 0x16
        hash_cd70e712f842296, // 0x17
        talent_tracker, // 0x18
        missile_turret, // 0x19
        eq_shroud, // 0x1a
        gadget_supplypod, // 0x1b
        hash_101808cdfcd390d6, // 0x1c
        ar_damage_t9, // 0x1d
        homunculus, // 0x1e
        spknifeork, // 0x1f
        melee_bowie, // 0x20
        hash_128256155e755170, // 0x21
        ww_mega_barrel_fullauto_diffusion_beam_t9, // 0x22
        ww_random_ray_gun1, // 0x23
        bonuscard_underkill, // 0x24
        recon_plane, // 0x25
        hash_16cfc7f70dbd8712, // 0x26
        bonuscard_perk_1_greed, // 0x27
        sig_buckler_dw, // 0x28
        talent_mulekick, // 0x29
        talent_flakjacket, // 0x2a
        gadget_vision_pulse, // 0x2b
        waterballoon, // 0x2c
        special_crossbow_t9, // 0x2d
        weapon_armor, // 0x2e
        eq_arm_blade, // 0x2f
        talent_logistics, // 0x30
        ww_blundergat_t8, // 0x31
        gadget_heat_wave, // 0x32
        eq_localheal, // 0x33
        hoverjet, // 0x34
        talent_looter, // 0x35
        gadget_medicalinjectiongun, // 0x36
        hash_1d8863d0b864a48b, // 0x37
        hash_1db03fa9862ba330, // 0x38
        nightingale, // 0x39
        talent_deathperception, // 0x3a
        pistol_fullauto_t9, // 0x3b
        remote_missile, // 0x3c
        gadget_smart_cover, // 0x3d
        hash_20290a682a974c94, // 0x3e
        willy_pete, // 0x3f
        eq_emp_grenade, // 0x40
        special_grenadelauncher_t9, // 0x41
        melee_machete_t9, // 0x42
        talent_dexterity, // 0x43
        launcher_freefire_t9, // 0x44
        hash_249e75e962ea5275, // 0x45
        ar_accurate_t9, // 0x46
        sig_lmg, // 0x47
        ww_crossbow_impaler_t8, // 0x48
        ww_freezegun_t8, // 0x49
        frag_grenade, // 0x4a
        smg_cqb_t9, // 0x4b
        knife_loadout, // 0x4c
        feature_default_class_1, // 0x4d
        feature_default_class_3, // 0x4e
        feature_default_class_2, // 0x4f
        feature_default_class_5, // 0x50
        feature_default_class_4, // 0x51
        feature_default_class_6, // 0x52
        talent_resistance, // 0x53
        spy_wanted_order, // 0x54
        swat_team, // 0x55
        gear_awareness, // 0x56
        land_mine, // 0x57
        hatchet, // 0x58
        hash_2c3a32e6e2afd1f2, // 0x59
        talent_mulekick_1, // 0x5a
        talent_mulekick_2, // 0x5b
        talent_mulekick_3, // 0x5c
        talent_mulekick_4, // 0x5d
        talent_mulekick_5, // 0x5e
        supplydrop_marker, // 0x5f
        mute_smoke, // 0x60
        hash_2ea46ca74ebdfcac, // 0x61
        smg_capacity_t9, // 0x62
        chopper_gunner, // 0x63
        melee_baseballbat_t9, // 0x64
        hash_311283e3107dec74, // 0x65
        null_offhand_secondary, // 0x66
        gadget_health_regen, // 0x67
        hash_31be8125c7d0f273, // 0x68
        pistol_shotgun_t9, // 0x69
        listening_device, // 0x6a
        talent_lightweight, // 0x6b
        talent_awareness, // 0x6c
        spork_alcatraz, // 0x6d
        drone_squadron, // 0x6e
        gear_equipmentcharge, // 0x6f
        pistol_semiauto_t9, // 0x70
        melee_mace_t9, // 0x71
        null_offhand_primary, // 0x72
        smg_burst_t9, // 0x73
        hash_3507beb47a6b634e, // 0x74
        pistol_revolver_t9, // 0x75
        eq_stimshot, // 0x76
        ww_mega_barrel_fullauto_copycat_t9, // 0x77
        hash_38c08136902fd553, // 0x78
        hash_39045b0020cc3e00, // 0x79
        overwatch_helicopter, // 0x7a
        gadget_jammer, // 0x7b
        hash_3ab58e40011df941, // 0x7c
        launcher_standard_t9, // 0x7d
        hash_3c323c7819b10b4d, // 0x7e
        hash_3c60422123a9075b, // 0x7f
        melee_bowie_bloody, // 0x80
        eq_sticky_grenade, // 0x81
        special_ballisticknife_t9_dw, // 0x82
        ww_ieu_shockwave_t9, // 0x83
        melee_sledgehammer_t9, // 0x84
        sig_blade, // 0x85
        talent_scavenger, // 0x86
        pistol_burst_t9, // 0x87
        hash_4385cf507401820f, // 0x88
        napalm_strike, // 0x89
        sniper_accurate_t9, // 0x8a
        ar_fastfire_t9, // 0x8b
        melee_wakizashi_t9, // 0x8c
        hero_pineapplegun, // 0x8d
        talent_skulker, // 0x8e
        hash_48206b17d50533c2, // 0x8f
        sniper_quickscope_t9, // 0x90
        ability_dog, // 0x91
        straferun, // 0x92
        hash_4a12859000892dda, // 0x93
        eq_seeker_mine, // 0x94
        ww_crossbow_t8, // 0x95
        recon_car, // 0x96
        hash_4b1854c2ff5135b2, // 0x97
        snowball, // 0x98
        feature_custom_class_9, // 0x99
        feature_custom_class_8, // 0x9a
        feature_custom_class_3, // 0x9b
        feature_custom_class_2, // 0x9c
        feature_custom_class_1, // 0x9d
        feature_custom_class_7, // 0x9e
        feature_custom_class_6, // 0x9f
        feature_custom_class_5, // 0xa0
        feature_custom_class_4, // 0xa1
        uav, // 0xa2
        eq_concertina_wire, // 0xa3
        gear_scorestreakcharge, // 0xa4
        feature_custom_class_10, // 0xa5
        ar_slowhandling_t9, // 0xa6
        eq_acid_bomb, // 0xa7
        gadget_spawnbeacon, // 0xa8
        ac130, // 0xa9
        talent_ghost, // 0xaa
        hash_4f80a2c3398e97c9, // 0xab
        tr_precisionsemi_t9, // 0xac
        helicopter_comlink, // 0xad
        gadget_armor, // 0xae
        tr_damagesemi_t9, // 0xaf
        feature_cac, // 0xb0
        talent_elemental_pop, // 0xb1
        tomahawk_t8, // 0xb2
        shotgun_pump_t9, // 0xb3
        gadget_health_boost, // 0xb4
        spectre_grenade, // 0xb5
        talent_brawler, // 0xb6
        eq_flash_grenade, // 0xb7
        hash_55c23f24d806e3a6, // 0xb8
        bare_hands, // 0xb9
        ar_slowfire_t9, // 0xba
        tr_powerburst_t9, // 0xbb
        trophy_system, // 0xbc
        talent_quartermaster, // 0xbd
        hash_59dbe7f72baaa0f0, // 0xbe
        hash_59dbe8f72baaa2a3, // 0xbf
        hash_59dbecf72baaa96f, // 0xc0
        hash_59dbedf72baaab22, // 0xc1
        hash_59dbeef72baaacd5, // 0xc2
        ray_gun_mk2, // 0xc3
        tr_longburst_t9, // 0xc4
        nuke, // 0xc5
        ww_ray_rifle_t9, // 0xc6
        smg_standard_t9, // 0xc7
        hash_5c80935e7a319f21, // 0xc8
        sig_bow_flame, // 0xc9
        eq_slow_grenade, // 0xca
        talent_paranoia, // 0xcb
        special_nailgun_t9, // 0xcc
        smg_accurate_t9, // 0xcd
        hash_603c083704cefb0c, // 0xce
        jetfighter, // 0xcf
        talent_teamlink, // 0xd0
        smg_heavy_t9, // 0xd1
        talent_deadsilence, // 0xd2
        tear_gas, // 0xd3
        hash_639ebbcda56447e7, // 0xd4
        eq_molotov, // 0xd5
        smg_fastfire_t9, // 0xd6
        hash_646fc27884bdaa02, // 0xd7
        bonuscard_primary_gunfighter, // 0xd8
        lmg_light_t9, // 0xd9
        ai_tank_marker, // 0xda
        gear_medicalinjectiongun, // 0xdb
        hash_661cd0d6fb33878c, // 0xdc
        gadget_cleanse, // 0xdd
        ar_british_t9, // 0xde
        hero_flamethrower, // 0xdf
        sniper_standard_t9, // 0xe0
        melee_cane_t9, // 0xe1
        smg_spray_t9, // 0xe2
        hero_annihilator, // 0xe3
        ar_fasthandling_t9, // 0xe4
        ar_mobility_t9, // 0xe5
        planemortar, // 0xe6
        sniper_cannon_t9, // 0xe7
        shotgun_semiauto_t9, // 0xe8
        talent_deathperception_2, // 0xe9
        talent_deathperception_3, // 0xea
        talent_deathperception_1, // 0xeb
        talent_deathperception_4, // 0xec
        talent_deathperception_5, // 0xed
        lmg_fastfire_t9, // 0xee
        ar_standard_t9, // 0xef
        weapon_null, // 0xf0
        talent_spycraft, // 0xf1
        hash_7321f9058ee65217, // 0xf2
        satchel_charge, // 0xf3
        default_specialist_equipment, // 0xf4
        gadget_health_regen_squad, // 0xf5
        hash_76b56e7e0b3b7aac, // 0xf6
        eq_decoy_grenade, // 0xf7
        hash_7716cb3888f5dd8a, // 0xf8
        smg_semiauto_t9, // 0xf9
        ray_gun, // 0xfa
        hash_788c96e19cc7a46e, // 0xfb
        claymore, // 0xfc
        talent_elemental_pop_2, // 0xfd
        talent_elemental_pop_3, // 0xfe
        talent_elemental_pop_1, // 0xff
        talent_elemental_pop_4, // 0x100
        talent_elemental_pop_5, // 0x101
        smg_handling_t9, // 0x102
        cymbal_monkey, // 0x103
        shotgun_fullauto_t9, // 0x104
        hash_7ab3f9a730359659, // 0x105
        gadget_icepick, // 0x106
        ww_mega_barrel_fullauto_micro_missile_t9, // 0x107
        hash_7ca561e40dc3c5de, // 0x108
        basketball, // 0x109
        gadget_camo, // 0x10a
        hash_7f79d3ba6ed1a1d7, // 0x10b
        lmg_slowfire_t9 // 0x10c
    };

    // root: bitSize: 0x1308, members: 16

    // offset: 0x0, bitSize: 0x6d8(0xdb Byte(s))
    region_info dml;
    // offset: 0x6d8, bitSize: 0x318(0x63 Byte(s)), array:0x3(hti:0xffff)
    lootcontracts loot_contracts[3];
    // offset: 0x9f0, bitSize: 0x20(0x4 Byte(s))
    uint hash_5a1a5df0cdadbba3;
    // offset: 0xa10, bitSize: 0x20(0x4 Byte(s))
    uint hash_151eef37df5ee845;
    // offset: 0xa30, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_tier_boost;
    // offset: 0xa38, bitSize: 0x8(0x1 Byte(s))
    hash_54196e9e9860f0be platform;
    // offset: 0xa40, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_party_tier_boost;
    // offset: 0xa48, bitSize: 0x20(0x4 Byte(s))
    uint hash_1e4fbbabf3da13fa;
    // offset: 0xa68, bitSize: 0x110(0x22 Byte(s)), array:0x11(hti:0xffff)
    hash_33944d215cff6222 hash_33944d215cff6222[17];
    // offset: 0xb78, bitSize: 0x550(0xaa Byte(s)), array:0x55(hti:0x6)
    hash_1c86958671ff27fd hash_4953b2b12f1d6b1b[hash_4b8d95aacf149fb9];
    // offset: 0x10c8, bitSize: 0xa0(0x14 Byte(s))
    client_header client;
    // offset: 0x1168, bitSize: 0x8(0x1 Byte(s))
    byte tier_boost;
    // offset: 0x1170, bitSize: 0x140(0x28 Byte(s)), array:0xa(hti:0xffff)
    uint hash_3d03353ad0aa2db1[10];
    // offset: 0x12b0, bitSize: 0x1
    bool hash_4ca91f34eba5a203;
    // offset: 0x12b1, bitSize: 0x55, array:0x55(hti:0x6)
    bool hash_4473319d8a8d9dcf[hash_4b8d95aacf149fb9];
};

version hash_6be5e74d03d50e5f {
    // enums ..... 14 (0xe)
    // structs ... 9 (0x9)
    // header bit size .. 5048 (0x13b8)
    // header byte size . 631 (0x277)

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
    struct hash_1c86958671ff27fd {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_50ab8b7df567cd2a;
    };

    // bitSize: 0x108, members: 6
    struct lootcontracts {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint xp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint contractid;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:3 contractgamemode;
        // offset: 0x48, bitSize: 0x40(0x8 Byte(s))
        xhash contracthash;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 progress;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 target;
    };

    // bitSize: 0x10, members: 3
    struct hash_33944d215cff6222 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_174d79c341ec2c6c;
        // offset: 0x8, bitSize: 0x1
        bool hash_2401d7a2dc706a6c;
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

    // idx 0x5 members: 0xbf
    enum hash_10d50fe10481423c {
        ww_mega_barrel_fullauto_blazer_beam_t9, // 0x0
        tr_fastburst_t9, // 0x1
        napalm_strike_zm, // 0x2
        ability_smart_cover, // 0x3
        dart, // 0x4
        ultimate_turret, // 0x5
        hash_5a7fd1af4a1d5c9, // 0x6
        melee_sai_t9, // 0x7
        hash_7a083f7ba43fa06, // 0x8
        lmg_accurate_t9, // 0x9
        melee_etool_t9, // 0xa
        ray_gun_mk2z, // 0xb
        ray_gun_mk2y, // 0xc
        ray_gun_mk2x, // 0xd
        sniper_powersemi_t9, // 0xe
        eq_wraith_fire, // 0xf
        counteruav, // 0x10
        missile_turret, // 0x11
        eq_shroud, // 0x12
        gadget_supplypod, // 0x13
        ar_damage_t9, // 0x14
        homunculus, // 0x15
        spknifeork, // 0x16
        melee_bowie, // 0x17
        ww_mega_barrel_fullauto_diffusion_beam_t9, // 0x18
        ww_random_ray_gun1, // 0x19
        recon_plane, // 0x1a
        sig_buckler_dw, // 0x1b
        gadget_vision_pulse, // 0x1c
        waterballoon, // 0x1d
        special_crossbow_t9, // 0x1e
        weapon_armor, // 0x1f
        eq_arm_blade, // 0x20
        ww_blundergat_t8, // 0x21
        gadget_heat_wave, // 0x22
        eq_localheal, // 0x23
        hoverjet, // 0x24
        nightingale, // 0x25
        pistol_fullauto_t9, // 0x26
        remote_missile, // 0x27
        gadget_smart_cover, // 0x28
        willy_pete, // 0x29
        eq_emp_grenade, // 0x2a
        special_grenadelauncher_t9, // 0x2b
        melee_machete_t9, // 0x2c
        launcher_freefire_t9, // 0x2d
        ar_accurate_t9, // 0x2e
        sig_lmg, // 0x2f
        ww_crossbow_impaler_t8, // 0x30
        ww_freezegun_t8, // 0x31
        frag_grenade, // 0x32
        smg_cqb_t9, // 0x33
        knife_loadout, // 0x34
        feature_default_class_1, // 0x35
        feature_default_class_3, // 0x36
        feature_default_class_2, // 0x37
        feature_default_class_5, // 0x38
        feature_default_class_4, // 0x39
        feature_default_class_6, // 0x3a
        spy_wanted_order, // 0x3b
        swat_team, // 0x3c
        land_mine, // 0x3d
        hatchet, // 0x3e
        supplydrop_marker, // 0x3f
        mute_smoke, // 0x40
        hash_2ea46ca74ebdfcac, // 0x41
        smg_capacity_t9, // 0x42
        chopper_gunner, // 0x43
        melee_baseballbat_t9, // 0x44
        null_offhand_secondary, // 0x45
        gadget_health_regen, // 0x46
        hash_31be8125c7d0f273, // 0x47
        pistol_shotgun_t9, // 0x48
        listening_device, // 0x49
        spork_alcatraz, // 0x4a
        drone_squadron, // 0x4b
        pistol_semiauto_t9, // 0x4c
        melee_mace_t9, // 0x4d
        null_offhand_primary, // 0x4e
        smg_burst_t9, // 0x4f
        hash_3507beb47a6b634e, // 0x50
        pistol_revolver_t9, // 0x51
        eq_stimshot, // 0x52
        ww_mega_barrel_fullauto_copycat_t9, // 0x53
        overwatch_helicopter, // 0x54
        gadget_jammer, // 0x55
        hash_3ab58e40011df941, // 0x56
        launcher_standard_t9, // 0x57
        melee_bowie_bloody, // 0x58
        eq_sticky_grenade, // 0x59
        special_ballisticknife_t9_dw, // 0x5a
        ww_ieu_shockwave_t9, // 0x5b
        melee_sledgehammer_t9, // 0x5c
        sig_blade, // 0x5d
        pistol_burst_t9, // 0x5e
        hash_4385cf507401820f, // 0x5f
        napalm_strike, // 0x60
        sniper_accurate_t9, // 0x61
        ar_fastfire_t9, // 0x62
        melee_wakizashi_t9, // 0x63
        hero_pineapplegun, // 0x64
        hash_48206b17d50533c2, // 0x65
        sniper_quickscope_t9, // 0x66
        ability_dog, // 0x67
        straferun, // 0x68
        eq_seeker_mine, // 0x69
        ww_crossbow_t8, // 0x6a
        recon_car, // 0x6b
        hash_4b1854c2ff5135b2, // 0x6c
        snowball, // 0x6d
        feature_custom_class_9, // 0x6e
        feature_custom_class_8, // 0x6f
        feature_custom_class_3, // 0x70
        feature_custom_class_2, // 0x71
        feature_custom_class_1, // 0x72
        feature_custom_class_7, // 0x73
        feature_custom_class_6, // 0x74
        feature_custom_class_5, // 0x75
        feature_custom_class_4, // 0x76
        uav, // 0x77
        eq_concertina_wire, // 0x78
        feature_custom_class_10, // 0x79
        ar_slowhandling_t9, // 0x7a
        eq_acid_bomb, // 0x7b
        gadget_spawnbeacon, // 0x7c
        ac130, // 0x7d
        tr_precisionsemi_t9, // 0x7e
        helicopter_comlink, // 0x7f
        gadget_armor, // 0x80
        tr_damagesemi_t9, // 0x81
        feature_cac, // 0x82
        tomahawk_t8, // 0x83
        shotgun_pump_t9, // 0x84
        gadget_health_boost, // 0x85
        spectre_grenade, // 0x86
        eq_flash_grenade, // 0x87
        hash_55c23f24d806e3a6, // 0x88
        bare_hands, // 0x89
        ar_slowfire_t9, // 0x8a
        tr_powerburst_t9, // 0x8b
        trophy_system, // 0x8c
        ray_gun_mk2, // 0x8d
        tr_longburst_t9, // 0x8e
        nuke, // 0x8f
        ww_ray_rifle_t9, // 0x90
        smg_standard_t9, // 0x91
        sig_bow_flame, // 0x92
        eq_slow_grenade, // 0x93
        special_nailgun_t9, // 0x94
        smg_accurate_t9, // 0x95
        hash_603c083704cefb0c, // 0x96
        jetfighter, // 0x97
        smg_heavy_t9, // 0x98
        tear_gas, // 0x99
        eq_molotov, // 0x9a
        smg_fastfire_t9, // 0x9b
        lmg_light_t9, // 0x9c
        ai_tank_marker, // 0x9d
        gadget_cleanse, // 0x9e
        ar_british_t9, // 0x9f
        hero_flamethrower, // 0xa0
        sniper_standard_t9, // 0xa1
        melee_cane_t9, // 0xa2
        smg_spray_t9, // 0xa3
        hero_annihilator, // 0xa4
        ar_fasthandling_t9, // 0xa5
        ar_mobility_t9, // 0xa6
        planemortar, // 0xa7
        sniper_cannon_t9, // 0xa8
        shotgun_semiauto_t9, // 0xa9
        lmg_fastfire_t9, // 0xaa
        ar_standard_t9, // 0xab
        weapon_null, // 0xac
        satchel_charge, // 0xad
        default_specialist_equipment, // 0xae
        gadget_health_regen_squad, // 0xaf
        hash_76b56e7e0b3b7aac, // 0xb0
        eq_decoy_grenade, // 0xb1
        smg_semiauto_t9, // 0xb2
        ray_gun, // 0xb3
        hash_788c96e19cc7a46e, // 0xb4
        claymore, // 0xb5
        smg_handling_t9, // 0xb6
        cymbal_monkey, // 0xb7
        shotgun_fullauto_t9, // 0xb8
        hash_7ab3f9a730359659, // 0xb9
        gadget_icepick, // 0xba
        ww_mega_barrel_fullauto_micro_missile_t9, // 0xbb
        basketball, // 0xbc
        gadget_camo, // 0xbd
        lmg_slowfire_t9 // 0xbe
    };

    // idx 0x6 members: 0x55
    enum hash_4b8d95aacf149fb9 {
        ww_mega_barrel_fullauto_blazer_beam_t9, // 0x0
        tr_fastburst_t9, // 0x1
        melee_sai_t9, // 0x2
        lmg_accurate_t9, // 0x3
        melee_etool_t9, // 0x4
        ray_gun_mk2z, // 0x5
        ray_gun_mk2y, // 0x6
        ray_gun_mk2x, // 0x7
        sniper_powersemi_t9, // 0x8
        hash_c21b61b32a5d972, // 0x9
        ar_damage_t9, // 0xa
        homunculus, // 0xb
        spknifeork, // 0xc
        melee_bowie, // 0xd
        ww_mega_barrel_fullauto_diffusion_beam_t9, // 0xe
        ww_random_ray_gun1, // 0xf
        hash_165cf52ce418f5a1, // 0x10
        special_crossbow_t9, // 0x11
        ww_blundergat_t8, // 0x12
        pistol_fullauto_t9, // 0x13
        special_grenadelauncher_t9, // 0x14
        melee_machete_t9, // 0x15
        launcher_freefire_t9, // 0x16
        ar_accurate_t9, // 0x17
        ww_crossbow_impaler_t8, // 0x18
        ww_freezegun_t8, // 0x19
        smg_cqb_t9, // 0x1a
        knife_loadout, // 0x1b
        hash_2ea46ca74ebdfcac, // 0x1c
        smg_capacity_t9, // 0x1d
        melee_baseballbat_t9, // 0x1e
        pistol_shotgun_t9, // 0x1f
        spork_alcatraz, // 0x20
        pistol_semiauto_t9, // 0x21
        melee_mace_t9, // 0x22
        smg_burst_t9, // 0x23
        pistol_revolver_t9, // 0x24
        ww_mega_barrel_fullauto_copycat_t9, // 0x25
        launcher_standard_t9, // 0x26
        melee_bowie_bloody, // 0x27
        special_ballisticknife_t9_dw, // 0x28
        ww_ieu_shockwave_t9, // 0x29
        melee_sledgehammer_t9, // 0x2a
        pistol_burst_t9, // 0x2b
        hash_4385cf507401820f, // 0x2c
        sniper_accurate_t9, // 0x2d
        ar_fastfire_t9, // 0x2e
        melee_wakizashi_t9, // 0x2f
        hash_48206b17d50533c2, // 0x30
        sniper_quickscope_t9, // 0x31
        ww_crossbow_t8, // 0x32
        ar_slowhandling_t9, // 0x33
        tr_precisionsemi_t9, // 0x34
        tr_damagesemi_t9, // 0x35
        shotgun_pump_t9, // 0x36
        hash_55c23f24d806e3a6, // 0x37
        ar_slowfire_t9, // 0x38
        tr_powerburst_t9, // 0x39
        ray_gun_mk2, // 0x3a
        tr_longburst_t9, // 0x3b
        ww_ray_rifle_t9, // 0x3c
        smg_standard_t9, // 0x3d
        special_nailgun_t9, // 0x3e
        smg_accurate_t9, // 0x3f
        hash_603c083704cefb0c, // 0x40
        smg_heavy_t9, // 0x41
        smg_fastfire_t9, // 0x42
        lmg_light_t9, // 0x43
        ar_british_t9, // 0x44
        sniper_standard_t9, // 0x45
        melee_cane_t9, // 0x46
        smg_spray_t9, // 0x47
        ar_fasthandling_t9, // 0x48
        ar_mobility_t9, // 0x49
        sniper_cannon_t9, // 0x4a
        shotgun_semiauto_t9, // 0x4b
        lmg_fastfire_t9, // 0x4c
        ar_standard_t9, // 0x4d
        smg_semiauto_t9, // 0x4e
        ray_gun, // 0x4f
        smg_handling_t9, // 0x50
        shotgun_fullauto_t9, // 0x51
        ww_mega_barrel_fullauto_micro_missile_t9, // 0x52
        basketball, // 0x53
        lmg_slowfire_t9 // 0x54
    };

    // idx 0x7 members: 0x13
    enum hash_7493d39e2637c1e7 {
        bonuscard, // 0x0
        hero, // 0x1
        feature, // 0x2
        weapon_special, // 0x3
        weapon_knife, // 0x4
        character, // 0x5
        miscweapon, // 0x6
        weapon_pistol, // 0x7
        killstreak, // 0x8
        weapon_sniper, // 0x9
        talent, // 0xa
        weapon_launcher, // 0xb
        weapon_grenade, // 0xc
        weapon_lmg, // 0xd
        weapon_tactical, // 0xe
        weapon_smg, // 0xf
        hash_7b68172df6035672, // 0x10
        weapon_cqb, // 0x11
        weapon_assault // 0x12
    };

    // idx 0x8 members: 0x20
    enum hash_d5731f85b8cf294 {
        napalm_strike_zm, // 0x0
        dart, // 0x1
        ultimate_turret, // 0x2
        counteruav, // 0x3
        recon_plane, // 0x4
        weapon_armor, // 0x5
        hoverjet, // 0x6
        remote_missile, // 0x7
        spy_med_pack, // 0x8
        sig_lmg, // 0x9
        spy_wanted_order, // 0xa
        swat_team, // 0xb
        supplydrop_marker, // 0xc
        chopper_gunner, // 0xd
        drone_squadron, // 0xe
        overwatch_helicopter, // 0xf
        napalm_strike, // 0x10
        hero_pineapplegun, // 0x11
        ability_dog, // 0x12
        straferun, // 0x13
        recon_car, // 0x14
        uav, // 0x15
        ac130, // 0x16
        helicopter_comlink, // 0x17
        nuke, // 0x18
        sig_bow_flame, // 0x19
        jetfighter, // 0x1a
        ai_tank_marker, // 0x1b
        helicopter_guard, // 0x1c
        hero_flamethrower, // 0x1d
        hero_annihilator, // 0x1e
        planemortar // 0x1f
    };

    // idx 0x9 members: 0x36
    enum hash_507792265be6dcc4 {
        ability_smart_cover, // 0x0
        hash_7a083f7ba43fa06, // 0x1
        eq_wraith_fire, // 0x2
        missile_turret, // 0x3
        eq_shroud, // 0x4
        gadget_supplypod, // 0x5
        gadget_vision_pulse, // 0x6
        waterballoon, // 0x7
        eq_arm_blade, // 0x8
        gadget_heat_wave, // 0x9
        eq_localheal, // 0xa
        gadget_medicalinjectiongun, // 0xb
        nightingale, // 0xc
        gadget_smart_cover, // 0xd
        willy_pete, // 0xe
        eq_emp_grenade, // 0xf
        frag_grenade, // 0x10
        land_mine, // 0x11
        hatchet, // 0x12
        gadget_health_regen, // 0x13
        listening_device, // 0x14
        hash_3507beb47a6b634e, // 0x15
        trophy_system_spy, // 0x16
        eq_stimshot, // 0x17
        gadget_jammer, // 0x18
        hash_3ab58e40011df941, // 0x19
        eq_sticky_grenade, // 0x1a
        eq_seeker_mine, // 0x1b
        hash_4b1854c2ff5135b2, // 0x1c
        snowball, // 0x1d
        eq_concertina_wire, // 0x1e
        eq_acid_bomb, // 0x1f
        gadget_spawnbeacon, // 0x20
        gadget_armor, // 0x21
        tomahawk_t8, // 0x22
        gadget_health_boost, // 0x23
        spectre_grenade, // 0x24
        eq_flash_grenade, // 0x25
        trophy_system, // 0x26
        eq_slow_grenade, // 0x27
        tear_gas, // 0x28
        eq_molotov, // 0x29
        gadget_cleanse, // 0x2a
        satchel_charge, // 0x2b
        default_specialist_equipment, // 0x2c
        gadget_health_regen_squad, // 0x2d
        hash_76b56e7e0b3b7aac, // 0x2e
        eq_decoy_grenade, // 0x2f
        hash_788c96e19cc7a46e, // 0x30
        claymore, // 0x31
        cymbal_monkey, // 0x32
        hash_7ab3f9a730359659, // 0x33
        gadget_icepick, // 0x34
        gadget_camo // 0x35
    };

    // idx 0xa members: 0x3c
    enum hash_1e2de876fb880be2 {
        quickdraw, // 0x0
        acog, // 0x1
        dw, // 0x2
        ir, // 0x3
        barrel2, // 0x4
        mixunder2, // 0x5
        fastreload, // 0x6
        heavy, // 0x7
        steadyaim, // 0x8
        stalker, // 0x9
        barrel, // 0xa
        mixstock, // 0xb
        smoothzoom2, // 0xc
        mixclip2, // 0xd
        reflex4, // 0xe
        reflex3, // 0xf
        reflex2, // 0x10
        stalker2, // 0x11
        extclip2, // 0x12
        tactical, // 0x13
        steadyaim2, // 0x14
        mixclip, // 0x15
        light, // 0x16
        speedgrip2, // 0x17
        mixhandle, // 0x18
        mixunder, // 0x19
        mixbarrel2, // 0x1a
        mixstock2, // 0x1b
        reddot, // 0x1c
        handle, // 0x1d
        mixmuzzle2, // 0x1e
        extclip, // 0x1f
        light2, // 0x20
        heavy2, // 0x21
        holo, // 0x22
        elo, // 0x23
        fastreload2, // 0x24
        scope3x, // 0x25
        scope4x, // 0x26
        mixhandle2, // 0x27
        compensator, // 0x28
        mixbody, // 0x29
        quickdraw2, // 0x2a
        suppressed2, // 0x2b
        speedgrip, // 0x2c
        sprintout2, // 0x2d
        suppressed, // 0x2e
        sprintout, // 0x2f
        grip2, // 0x30
        mixmuzzle, // 0x31
        handle2, // 0x32
        compensator2, // 0x33
        mixbody2, // 0x34
        dualoptic, // 0x35
        grip, // 0x36
        smoothzoom, // 0x37
        reflex, // 0x38
        mixbarrel, // 0x39
        elo3, // 0x3a
        elo2 // 0x3b
    };

    // idx 0xb members: 0x3c
    enum hash_48d8d533750ed177 {
        talent_gungho, // 0x0
        talent_engineer, // 0x1
        talent_coldblooded, // 0x2
        hash_9fb2125b3e673e5, // 0x3
        gear_armor, // 0x4
        hash_cd70e712f842296, // 0x5
        talent_tracker, // 0x6
        hash_101808cdfcd390d6, // 0x7
        hash_128256155e755170, // 0x8
        hash_16cfc7f70dbd8712, // 0x9
        talent_flakjacket, // 0xa
        talent_logistics, // 0xb
        talent_looter, // 0xc
        gadget_medicalinjectiongun, // 0xd
        hash_1d8863d0b864a48b, // 0xe
        hash_1db03fa9862ba330, // 0xf
        hash_20290a682a974c94, // 0x10
        talent_dexterity, // 0x11
        hash_249e75e962ea5275, // 0x12
        talent_resistance, // 0x13
        gear_awareness, // 0x14
        hash_2c3a32e6e2afd1f2, // 0x15
        hash_311283e3107dec74, // 0x16
        talent_lightweight, // 0x17
        talent_awareness, // 0x18
        gear_equipmentcharge, // 0x19
        hash_38c08136902fd553, // 0x1a
        hash_39045b0020cc3e00, // 0x1b
        hash_3c323c7819b10b4d, // 0x1c
        hash_3c60422123a9075b, // 0x1d
        talent_scavenger, // 0x1e
        talent_skulker, // 0x1f
        gear_scorestreakcharge, // 0x20
        talent_ghost, // 0x21
        hash_4f80a2c3398e97c9, // 0x22
        talent_elemental_pop, // 0x23
        talent_brawler, // 0x24
        talent_quartermaster, // 0x25
        hash_59dbe7f72baaa0f0, // 0x26
        hash_59dbe8f72baaa2a3, // 0x27
        hash_59dbecf72baaa96f, // 0x28
        hash_59dbedf72baaab22, // 0x29
        hash_59dbeef72baaacd5, // 0x2a
        hash_5c80935e7a319f21, // 0x2b
        talent_paranoia, // 0x2c
        talent_teamlink, // 0x2d
        talent_deadsilence, // 0x2e
        hash_646fc27884bdaa02, // 0x2f
        gear_medicalinjectiongun, // 0x30
        hash_661cd0d6fb33878c, // 0x31
        talent_spycraft, // 0x32
        hash_7321f9058ee65217, // 0x33
        hash_7716cb3888f5dd8a, // 0x34
        talent_elemental_pop_2, // 0x35
        talent_elemental_pop_3, // 0x36
        talent_elemental_pop_1, // 0x37
        talent_elemental_pop_4, // 0x38
        talent_elemental_pop_5, // 0x39
        hash_7ca561e40dc3c5de, // 0x3a
        hash_7f79d3ba6ed1a1d7 // 0x3b
    };

    // idx 0xc members: 0x12
    enum hash_66db207c660e33f3 {
        bonuscard_overkill, // 0x0
        bonuscard_underkill, // 0x1
        bonuscard_perk_1_greed, // 0x2
        talent_mulekick, // 0x3
        talent_deathperception, // 0x4
        talent_mulekick_1, // 0x5
        talent_mulekick_2, // 0x6
        talent_mulekick_3, // 0x7
        talent_mulekick_4, // 0x8
        talent_mulekick_5, // 0x9
        hash_4a12859000892dda, // 0xa
        hash_639ebbcda56447e7, // 0xb
        bonuscard_primary_gunfighter, // 0xc
        talent_deathperception_2, // 0xd
        talent_deathperception_3, // 0xe
        talent_deathperception_1, // 0xf
        talent_deathperception_4, // 0x10
        talent_deathperception_5 // 0x11
    };

    // idx 0xd members: 0x10d
    enum hash_1acf39b1d1bee1d5 {
        bonuscard_overkill, // 0x0
        ww_mega_barrel_fullauto_blazer_beam_t9, // 0x1
        talent_gungho, // 0x2
        tr_fastburst_t9, // 0x3
        talent_engineer, // 0x4
        napalm_strike_zm, // 0x5
        ability_smart_cover, // 0x6
        dart, // 0x7
        ultimate_turret, // 0x8
        hash_5a7fd1af4a1d5c9, // 0x9
        melee_sai_t9, // 0xa
        hash_7a083f7ba43fa06, // 0xb
        talent_coldblooded, // 0xc
        lmg_accurate_t9, // 0xd
        melee_etool_t9, // 0xe
        ray_gun_mk2z, // 0xf
        ray_gun_mk2y, // 0x10
        ray_gun_mk2x, // 0x11
        hash_9fb2125b3e673e5, // 0x12
        sniper_powersemi_t9, // 0x13
        eq_wraith_fire, // 0x14
        gear_armor, // 0x15
        counteruav, // 0x16
        hash_cd70e712f842296, // 0x17
        talent_tracker, // 0x18
        missile_turret, // 0x19
        eq_shroud, // 0x1a
        gadget_supplypod, // 0x1b
        hash_101808cdfcd390d6, // 0x1c
        ar_damage_t9, // 0x1d
        homunculus, // 0x1e
        spknifeork, // 0x1f
        melee_bowie, // 0x20
        hash_128256155e755170, // 0x21
        ww_mega_barrel_fullauto_diffusion_beam_t9, // 0x22
        ww_random_ray_gun1, // 0x23
        bonuscard_underkill, // 0x24
        recon_plane, // 0x25
        hash_16cfc7f70dbd8712, // 0x26
        bonuscard_perk_1_greed, // 0x27
        sig_buckler_dw, // 0x28
        talent_mulekick, // 0x29
        talent_flakjacket, // 0x2a
        gadget_vision_pulse, // 0x2b
        waterballoon, // 0x2c
        special_crossbow_t9, // 0x2d
        weapon_armor, // 0x2e
        eq_arm_blade, // 0x2f
        talent_logistics, // 0x30
        ww_blundergat_t8, // 0x31
        gadget_heat_wave, // 0x32
        eq_localheal, // 0x33
        hoverjet, // 0x34
        talent_looter, // 0x35
        gadget_medicalinjectiongun, // 0x36
        hash_1d8863d0b864a48b, // 0x37
        hash_1db03fa9862ba330, // 0x38
        nightingale, // 0x39
        talent_deathperception, // 0x3a
        pistol_fullauto_t9, // 0x3b
        remote_missile, // 0x3c
        gadget_smart_cover, // 0x3d
        hash_20290a682a974c94, // 0x3e
        willy_pete, // 0x3f
        eq_emp_grenade, // 0x40
        special_grenadelauncher_t9, // 0x41
        melee_machete_t9, // 0x42
        talent_dexterity, // 0x43
        launcher_freefire_t9, // 0x44
        hash_249e75e962ea5275, // 0x45
        ar_accurate_t9, // 0x46
        sig_lmg, // 0x47
        ww_crossbow_impaler_t8, // 0x48
        ww_freezegun_t8, // 0x49
        frag_grenade, // 0x4a
        smg_cqb_t9, // 0x4b
        knife_loadout, // 0x4c
        feature_default_class_1, // 0x4d
        feature_default_class_3, // 0x4e
        feature_default_class_2, // 0x4f
        feature_default_class_5, // 0x50
        feature_default_class_4, // 0x51
        feature_default_class_6, // 0x52
        talent_resistance, // 0x53
        spy_wanted_order, // 0x54
        swat_team, // 0x55
        gear_awareness, // 0x56
        land_mine, // 0x57
        hatchet, // 0x58
        hash_2c3a32e6e2afd1f2, // 0x59
        talent_mulekick_1, // 0x5a
        talent_mulekick_2, // 0x5b
        talent_mulekick_3, // 0x5c
        talent_mulekick_4, // 0x5d
        talent_mulekick_5, // 0x5e
        supplydrop_marker, // 0x5f
        mute_smoke, // 0x60
        hash_2ea46ca74ebdfcac, // 0x61
        smg_capacity_t9, // 0x62
        chopper_gunner, // 0x63
        melee_baseballbat_t9, // 0x64
        hash_311283e3107dec74, // 0x65
        null_offhand_secondary, // 0x66
        gadget_health_regen, // 0x67
        hash_31be8125c7d0f273, // 0x68
        pistol_shotgun_t9, // 0x69
        listening_device, // 0x6a
        talent_lightweight, // 0x6b
        talent_awareness, // 0x6c
        spork_alcatraz, // 0x6d
        drone_squadron, // 0x6e
        gear_equipmentcharge, // 0x6f
        pistol_semiauto_t9, // 0x70
        melee_mace_t9, // 0x71
        null_offhand_primary, // 0x72
        smg_burst_t9, // 0x73
        hash_3507beb47a6b634e, // 0x74
        pistol_revolver_t9, // 0x75
        eq_stimshot, // 0x76
        ww_mega_barrel_fullauto_copycat_t9, // 0x77
        hash_38c08136902fd553, // 0x78
        hash_39045b0020cc3e00, // 0x79
        overwatch_helicopter, // 0x7a
        gadget_jammer, // 0x7b
        hash_3ab58e40011df941, // 0x7c
        launcher_standard_t9, // 0x7d
        hash_3c323c7819b10b4d, // 0x7e
        hash_3c60422123a9075b, // 0x7f
        melee_bowie_bloody, // 0x80
        eq_sticky_grenade, // 0x81
        special_ballisticknife_t9_dw, // 0x82
        ww_ieu_shockwave_t9, // 0x83
        melee_sledgehammer_t9, // 0x84
        sig_blade, // 0x85
        talent_scavenger, // 0x86
        pistol_burst_t9, // 0x87
        hash_4385cf507401820f, // 0x88
        napalm_strike, // 0x89
        sniper_accurate_t9, // 0x8a
        ar_fastfire_t9, // 0x8b
        melee_wakizashi_t9, // 0x8c
        hero_pineapplegun, // 0x8d
        talent_skulker, // 0x8e
        hash_48206b17d50533c2, // 0x8f
        sniper_quickscope_t9, // 0x90
        ability_dog, // 0x91
        straferun, // 0x92
        hash_4a12859000892dda, // 0x93
        eq_seeker_mine, // 0x94
        ww_crossbow_t8, // 0x95
        recon_car, // 0x96
        hash_4b1854c2ff5135b2, // 0x97
        snowball, // 0x98
        feature_custom_class_9, // 0x99
        feature_custom_class_8, // 0x9a
        feature_custom_class_3, // 0x9b
        feature_custom_class_2, // 0x9c
        feature_custom_class_1, // 0x9d
        feature_custom_class_7, // 0x9e
        feature_custom_class_6, // 0x9f
        feature_custom_class_5, // 0xa0
        feature_custom_class_4, // 0xa1
        uav, // 0xa2
        eq_concertina_wire, // 0xa3
        gear_scorestreakcharge, // 0xa4
        feature_custom_class_10, // 0xa5
        ar_slowhandling_t9, // 0xa6
        eq_acid_bomb, // 0xa7
        gadget_spawnbeacon, // 0xa8
        ac130, // 0xa9
        talent_ghost, // 0xaa
        hash_4f80a2c3398e97c9, // 0xab
        tr_precisionsemi_t9, // 0xac
        helicopter_comlink, // 0xad
        gadget_armor, // 0xae
        tr_damagesemi_t9, // 0xaf
        feature_cac, // 0xb0
        talent_elemental_pop, // 0xb1
        tomahawk_t8, // 0xb2
        shotgun_pump_t9, // 0xb3
        gadget_health_boost, // 0xb4
        spectre_grenade, // 0xb5
        talent_brawler, // 0xb6
        eq_flash_grenade, // 0xb7
        hash_55c23f24d806e3a6, // 0xb8
        bare_hands, // 0xb9
        ar_slowfire_t9, // 0xba
        tr_powerburst_t9, // 0xbb
        trophy_system, // 0xbc
        talent_quartermaster, // 0xbd
        hash_59dbe7f72baaa0f0, // 0xbe
        hash_59dbe8f72baaa2a3, // 0xbf
        hash_59dbecf72baaa96f, // 0xc0
        hash_59dbedf72baaab22, // 0xc1
        hash_59dbeef72baaacd5, // 0xc2
        ray_gun_mk2, // 0xc3
        tr_longburst_t9, // 0xc4
        nuke, // 0xc5
        ww_ray_rifle_t9, // 0xc6
        smg_standard_t9, // 0xc7
        hash_5c80935e7a319f21, // 0xc8
        sig_bow_flame, // 0xc9
        eq_slow_grenade, // 0xca
        talent_paranoia, // 0xcb
        special_nailgun_t9, // 0xcc
        smg_accurate_t9, // 0xcd
        hash_603c083704cefb0c, // 0xce
        jetfighter, // 0xcf
        talent_teamlink, // 0xd0
        smg_heavy_t9, // 0xd1
        talent_deadsilence, // 0xd2
        tear_gas, // 0xd3
        hash_639ebbcda56447e7, // 0xd4
        eq_molotov, // 0xd5
        smg_fastfire_t9, // 0xd6
        hash_646fc27884bdaa02, // 0xd7
        bonuscard_primary_gunfighter, // 0xd8
        lmg_light_t9, // 0xd9
        ai_tank_marker, // 0xda
        gear_medicalinjectiongun, // 0xdb
        hash_661cd0d6fb33878c, // 0xdc
        gadget_cleanse, // 0xdd
        ar_british_t9, // 0xde
        hero_flamethrower, // 0xdf
        sniper_standard_t9, // 0xe0
        melee_cane_t9, // 0xe1
        smg_spray_t9, // 0xe2
        hero_annihilator, // 0xe3
        ar_fasthandling_t9, // 0xe4
        ar_mobility_t9, // 0xe5
        planemortar, // 0xe6
        sniper_cannon_t9, // 0xe7
        shotgun_semiauto_t9, // 0xe8
        talent_deathperception_2, // 0xe9
        talent_deathperception_3, // 0xea
        talent_deathperception_1, // 0xeb
        talent_deathperception_4, // 0xec
        talent_deathperception_5, // 0xed
        lmg_fastfire_t9, // 0xee
        ar_standard_t9, // 0xef
        weapon_null, // 0xf0
        talent_spycraft, // 0xf1
        hash_7321f9058ee65217, // 0xf2
        satchel_charge, // 0xf3
        default_specialist_equipment, // 0xf4
        gadget_health_regen_squad, // 0xf5
        hash_76b56e7e0b3b7aac, // 0xf6
        eq_decoy_grenade, // 0xf7
        hash_7716cb3888f5dd8a, // 0xf8
        smg_semiauto_t9, // 0xf9
        ray_gun, // 0xfa
        hash_788c96e19cc7a46e, // 0xfb
        claymore, // 0xfc
        talent_elemental_pop_2, // 0xfd
        talent_elemental_pop_3, // 0xfe
        talent_elemental_pop_1, // 0xff
        talent_elemental_pop_4, // 0x100
        talent_elemental_pop_5, // 0x101
        smg_handling_t9, // 0x102
        cymbal_monkey, // 0x103
        shotgun_fullauto_t9, // 0x104
        hash_7ab3f9a730359659, // 0x105
        gadget_icepick, // 0x106
        ww_mega_barrel_fullauto_micro_missile_t9, // 0x107
        hash_7ca561e40dc3c5de, // 0x108
        basketball, // 0x109
        gadget_camo, // 0x10a
        hash_7f79d3ba6ed1a1d7, // 0x10b
        lmg_slowfire_t9 // 0x10c
    };

    // root: bitSize: 0x1308, members: 16

    // offset: 0x0, bitSize: 0x6d8(0xdb Byte(s))
    region_info dml;
    // offset: 0x6d8, bitSize: 0x318(0x63 Byte(s)), array:0x3(hti:0xffff)
    lootcontracts loot_contracts[3];
    // offset: 0x9f0, bitSize: 0x20(0x4 Byte(s))
    uint hash_5a1a5df0cdadbba3;
    // offset: 0xa10, bitSize: 0x20(0x4 Byte(s))
    uint hash_151eef37df5ee845;
    // offset: 0xa30, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_tier_boost;
    // offset: 0xa38, bitSize: 0x8(0x1 Byte(s))
    hash_54196e9e9860f0be platform;
    // offset: 0xa40, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_party_tier_boost;
    // offset: 0xa48, bitSize: 0x20(0x4 Byte(s))
    uint hash_1e4fbbabf3da13fa;
    // offset: 0xa68, bitSize: 0x110(0x22 Byte(s)), array:0x11(hti:0xffff)
    hash_33944d215cff6222 hash_33944d215cff6222[17];
    // offset: 0xb78, bitSize: 0x550(0xaa Byte(s)), array:0x55(hti:0x6)
    hash_1c86958671ff27fd hash_4953b2b12f1d6b1b[hash_4b8d95aacf149fb9];
    // offset: 0x10c8, bitSize: 0xa0(0x14 Byte(s))
    client_header client;
    // offset: 0x1168, bitSize: 0x8(0x1 Byte(s))
    byte tier_boost;
    // offset: 0x1170, bitSize: 0x140(0x28 Byte(s)), array:0xa(hti:0xffff)
    uint hash_3d03353ad0aa2db1[10];
    // offset: 0x12b0, bitSize: 0x1
    bool hash_4ca91f34eba5a203;
    // offset: 0x12b1, bitSize: 0x55, array:0x55(hti:0x6)
    bool hash_4473319d8a8d9dcf[hash_4b8d95aacf149fb9];
};

version hash_f81394e6be06f336 {
    // enums ..... 14 (0xe)
    // structs ... 9 (0x9)
    // header bit size .. 5136 (0x1410)
    // header byte size . 642 (0x282)

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
    struct hash_1c86958671ff27fd {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_50ab8b7df567cd2a;
    };

    // bitSize: 0x108, members: 6
    struct lootcontracts {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint xp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint contractid;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:3 contractgamemode;
        // offset: 0x48, bitSize: 0x40(0x8 Byte(s))
        xhash contracthash;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 progress;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 target;
    };

    // bitSize: 0x10, members: 3
    struct hash_33944d215cff6222 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_174d79c341ec2c6c;
        // offset: 0x8, bitSize: 0x1
        bool hash_2401d7a2dc706a6c;
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

    // idx 0x5 members: 0xc4
    enum hash_10d50fe10481423c {
        ww_mega_barrel_fullauto_blazer_beam_t9, // 0x0
        tr_fastburst_t9, // 0x1
        napalm_strike_zm, // 0x2
        ability_smart_cover, // 0x3
        dart, // 0x4
        ultimate_turret, // 0x5
        hash_5a7fd1af4a1d5c9, // 0x6
        ar_season6_t9, // 0x7
        hash_7a083f7ba43fa06, // 0x8
        lmg_accurate_t9, // 0x9
        melee_etool_t9, // 0xa
        ray_gun_mk2z, // 0xb
        ray_gun_mk2y, // 0xc
        ray_gun_mk2x, // 0xd
        sniper_powersemi_t9, // 0xe
        eq_wraith_fire, // 0xf
        counteruav, // 0x10
        missile_turret, // 0x11
        eq_shroud, // 0x12
        gadget_supplypod, // 0x13
        ar_damage_t9, // 0x14
        homunculus, // 0x15
        spknifeork, // 0x16
        shotgun_leveraction_t9, // 0x17
        melee_bowie, // 0x18
        ww_mega_barrel_fullauto_diffusion_beam_t9, // 0x19
        ww_random_ray_gun1, // 0x1a
        recon_plane, // 0x1b
        sig_buckler_dw, // 0x1c
        gadget_vision_pulse, // 0x1d
        waterballoon, // 0x1e
        special_crossbow_t9, // 0x1f
        weapon_armor, // 0x20
        eq_arm_blade, // 0x21
        ww_blundergat_t8, // 0x22
        gadget_heat_wave, // 0x23
        eq_localheal, // 0x24
        hoverjet, // 0x25
        nightingale, // 0x26
        pistol_fullauto_t9, // 0x27
        remote_missile, // 0x28
        gadget_smart_cover, // 0x29
        willy_pete, // 0x2a
        eq_emp_grenade, // 0x2b
        special_grenadelauncher_t9, // 0x2c
        melee_machete_t9, // 0x2d
        launcher_freefire_t9, // 0x2e
        ar_accurate_t9, // 0x2f
        sig_lmg, // 0x30
        ww_crossbow_impaler_t8, // 0x31
        ww_freezegun_t8, // 0x32
        frag_grenade, // 0x33
        smg_cqb_t9, // 0x34
        knife_loadout, // 0x35
        feature_default_class_1, // 0x36
        feature_default_class_3, // 0x37
        feature_default_class_2, // 0x38
        feature_default_class_5, // 0x39
        feature_default_class_4, // 0x3a
        feature_default_class_6, // 0x3b
        spy_wanted_order, // 0x3c
        swat_team, // 0x3d
        land_mine, // 0x3e
        hatchet, // 0x3f
        supplydrop_marker, // 0x40
        mute_smoke, // 0x41
        hash_2ea46ca74ebdfcac, // 0x42
        smg_capacity_t9, // 0x43
        chopper_gunner, // 0x44
        melee_baseballbat_t9, // 0x45
        null_offhand_secondary, // 0x46
        gadget_health_regen, // 0x47
        hash_31be8125c7d0f273, // 0x48
        pistol_shotgun_t9, // 0x49
        listening_device, // 0x4a
        spork_alcatraz, // 0x4b
        drone_squadron, // 0x4c
        pistol_semiauto_t9, // 0x4d
        melee_mace_t9, // 0x4e
        null_offhand_primary, // 0x4f
        smg_burst_t9, // 0x50
        hash_3507beb47a6b634e, // 0x51
        pistol_revolver_t9, // 0x52
        eq_stimshot, // 0x53
        ww_mega_barrel_fullauto_copycat_t9, // 0x54
        overwatch_helicopter, // 0x55
        gadget_jammer, // 0x56
        hash_3ab58e40011df941, // 0x57
        melee_coldwar_t9_dw, // 0x58
        launcher_standard_t9, // 0x59
        melee_sai_t9_dw, // 0x5a
        melee_bowie_bloody, // 0x5b
        eq_sticky_grenade, // 0x5c
        special_ballisticknife_t9_dw, // 0x5d
        ww_ieu_shockwave_t9, // 0x5e
        melee_sledgehammer_t9, // 0x5f
        sig_blade, // 0x60
        pistol_burst_t9, // 0x61
        hash_4385cf507401820f, // 0x62
        napalm_strike, // 0x63
        sniper_accurate_t9, // 0x64
        ar_fastfire_t9, // 0x65
        melee_wakizashi_t9, // 0x66
        hero_pineapplegun, // 0x67
        hash_48206b17d50533c2, // 0x68
        sniper_quickscope_t9, // 0x69
        ability_dog, // 0x6a
        straferun, // 0x6b
        eq_seeker_mine, // 0x6c
        ww_crossbow_t8, // 0x6d
        recon_car, // 0x6e
        hash_4b1854c2ff5135b2, // 0x6f
        snowball, // 0x70
        feature_custom_class_9, // 0x71
        feature_custom_class_8, // 0x72
        feature_custom_class_3, // 0x73
        feature_custom_class_2, // 0x74
        feature_custom_class_1, // 0x75
        feature_custom_class_7, // 0x76
        feature_custom_class_6, // 0x77
        feature_custom_class_5, // 0x78
        feature_custom_class_4, // 0x79
        uav, // 0x7a
        eq_concertina_wire, // 0x7b
        feature_custom_class_10, // 0x7c
        ar_slowhandling_t9, // 0x7d
        eq_acid_bomb, // 0x7e
        gadget_spawnbeacon, // 0x7f
        ac130, // 0x80
        tr_precisionsemi_t9, // 0x81
        helicopter_comlink, // 0x82
        gadget_armor, // 0x83
        tr_damagesemi_t9, // 0x84
        feature_cac, // 0x85
        tomahawk_t8, // 0x86
        shotgun_pump_t9, // 0x87
        gadget_health_boost, // 0x88
        spectre_grenade, // 0x89
        eq_flash_grenade, // 0x8a
        hash_55c23f24d806e3a6, // 0x8b
        bare_hands, // 0x8c
        ar_slowfire_t9, // 0x8d
        tr_powerburst_t9, // 0x8e
        trophy_system, // 0x8f
        ray_gun_mk2, // 0x90
        tr_longburst_t9, // 0x91
        nuke, // 0x92
        ww_ray_rifle_t9, // 0x93
        smg_standard_t9, // 0x94
        sig_bow_flame, // 0x95
        eq_slow_grenade, // 0x96
        special_nailgun_t9, // 0x97
        smg_accurate_t9, // 0x98
        hash_603c083704cefb0c, // 0x99
        jetfighter, // 0x9a
        smg_heavy_t9, // 0x9b
        tear_gas, // 0x9c
        eq_molotov, // 0x9d
        smg_fastfire_t9, // 0x9e
        lmg_light_t9, // 0x9f
        ai_tank_marker, // 0xa0
        gadget_cleanse, // 0xa1
        ar_british_t9, // 0xa2
        hero_flamethrower, // 0xa3
        melee_battleaxe_t9, // 0xa4
        sniper_standard_t9, // 0xa5
        melee_cane_t9, // 0xa6
        smg_spray_t9, // 0xa7
        hero_annihilator, // 0xa8
        ar_fasthandling_t9, // 0xa9
        ar_mobility_t9, // 0xaa
        planemortar, // 0xab
        sniper_cannon_t9, // 0xac
        shotgun_semiauto_t9, // 0xad
        lmg_fastfire_t9, // 0xae
        ar_standard_t9, // 0xaf
        weapon_null, // 0xb0
        satchel_charge, // 0xb1
        default_specialist_equipment, // 0xb2
        gadget_health_regen_squad, // 0xb3
        hash_76b56e7e0b3b7aac, // 0xb4
        eq_decoy_grenade, // 0xb5
        smg_season6_t9, // 0xb6
        smg_semiauto_t9, // 0xb7
        ray_gun, // 0xb8
        hash_788c96e19cc7a46e, // 0xb9
        claymore, // 0xba
        smg_handling_t9, // 0xbb
        cymbal_monkey, // 0xbc
        shotgun_fullauto_t9, // 0xbd
        hash_7ab3f9a730359659, // 0xbe
        gadget_icepick, // 0xbf
        ww_mega_barrel_fullauto_micro_missile_t9, // 0xc0
        basketball, // 0xc1
        gadget_camo, // 0xc2
        lmg_slowfire_t9 // 0xc3
    };

    // idx 0x6 members: 0x5a
    enum hash_4b8d95aacf149fb9 {
        ww_mega_barrel_fullauto_blazer_beam_t9, // 0x0
        tr_fastburst_t9, // 0x1
        ar_season6_t9, // 0x2
        lmg_accurate_t9, // 0x3
        melee_etool_t9, // 0x4
        ray_gun_mk2z, // 0x5
        ray_gun_mk2y, // 0x6
        ray_gun_mk2x, // 0x7
        sniper_powersemi_t9, // 0x8
        hash_c21b61b32a5d972, // 0x9
        ar_damage_t9, // 0xa
        homunculus, // 0xb
        spknifeork, // 0xc
        shotgun_leveraction_t9, // 0xd
        melee_bowie, // 0xe
        ww_mega_barrel_fullauto_diffusion_beam_t9, // 0xf
        ww_random_ray_gun1, // 0x10
        hash_165cf52ce418f5a1, // 0x11
        special_crossbow_t9, // 0x12
        ww_blundergat_t8, // 0x13
        pistol_fullauto_t9, // 0x14
        special_grenadelauncher_t9, // 0x15
        melee_machete_t9, // 0x16
        launcher_freefire_t9, // 0x17
        ar_accurate_t9, // 0x18
        ww_crossbow_impaler_t8, // 0x19
        ww_freezegun_t8, // 0x1a
        smg_cqb_t9, // 0x1b
        knife_loadout, // 0x1c
        hash_2ea46ca74ebdfcac, // 0x1d
        smg_capacity_t9, // 0x1e
        melee_baseballbat_t9, // 0x1f
        pistol_shotgun_t9, // 0x20
        spork_alcatraz, // 0x21
        pistol_semiauto_t9, // 0x22
        melee_mace_t9, // 0x23
        smg_burst_t9, // 0x24
        pistol_revolver_t9, // 0x25
        ww_mega_barrel_fullauto_copycat_t9, // 0x26
        melee_coldwar_t9_dw, // 0x27
        launcher_standard_t9, // 0x28
        melee_sai_t9_dw, // 0x29
        melee_bowie_bloody, // 0x2a
        special_ballisticknife_t9_dw, // 0x2b
        ww_ieu_shockwave_t9, // 0x2c
        melee_sledgehammer_t9, // 0x2d
        pistol_burst_t9, // 0x2e
        hash_4385cf507401820f, // 0x2f
        sniper_accurate_t9, // 0x30
        ar_fastfire_t9, // 0x31
        melee_wakizashi_t9, // 0x32
        hash_48206b17d50533c2, // 0x33
        sniper_quickscope_t9, // 0x34
        ww_crossbow_t8, // 0x35
        ar_slowhandling_t9, // 0x36
        tr_precisionsemi_t9, // 0x37
        tr_damagesemi_t9, // 0x38
        shotgun_pump_t9, // 0x39
        hash_55c23f24d806e3a6, // 0x3a
        ar_slowfire_t9, // 0x3b
        tr_powerburst_t9, // 0x3c
        ray_gun_mk2, // 0x3d
        tr_longburst_t9, // 0x3e
        ww_ray_rifle_t9, // 0x3f
        smg_standard_t9, // 0x40
        special_nailgun_t9, // 0x41
        smg_accurate_t9, // 0x42
        hash_603c083704cefb0c, // 0x43
        smg_heavy_t9, // 0x44
        smg_fastfire_t9, // 0x45
        lmg_light_t9, // 0x46
        ar_british_t9, // 0x47
        melee_battleaxe_t9, // 0x48
        sniper_standard_t9, // 0x49
        melee_cane_t9, // 0x4a
        smg_spray_t9, // 0x4b
        ar_fasthandling_t9, // 0x4c
        ar_mobility_t9, // 0x4d
        sniper_cannon_t9, // 0x4e
        shotgun_semiauto_t9, // 0x4f
        lmg_fastfire_t9, // 0x50
        ar_standard_t9, // 0x51
        smg_season6_t9, // 0x52
        smg_semiauto_t9, // 0x53
        ray_gun, // 0x54
        smg_handling_t9, // 0x55
        shotgun_fullauto_t9, // 0x56
        ww_mega_barrel_fullauto_micro_missile_t9, // 0x57
        basketball, // 0x58
        lmg_slowfire_t9 // 0x59
    };

    // idx 0x7 members: 0x13
    enum hash_7493d39e2637c1e7 {
        bonuscard, // 0x0
        hero, // 0x1
        feature, // 0x2
        weapon_special, // 0x3
        weapon_knife, // 0x4
        character, // 0x5
        miscweapon, // 0x6
        weapon_pistol, // 0x7
        killstreak, // 0x8
        weapon_sniper, // 0x9
        talent, // 0xa
        weapon_launcher, // 0xb
        weapon_grenade, // 0xc
        weapon_lmg, // 0xd
        weapon_tactical, // 0xe
        weapon_smg, // 0xf
        hash_7b68172df6035672, // 0x10
        weapon_cqb, // 0x11
        weapon_assault // 0x12
    };

    // idx 0x8 members: 0x20
    enum hash_d5731f85b8cf294 {
        napalm_strike_zm, // 0x0
        dart, // 0x1
        ultimate_turret, // 0x2
        counteruav, // 0x3
        recon_plane, // 0x4
        weapon_armor, // 0x5
        hoverjet, // 0x6
        remote_missile, // 0x7
        spy_med_pack, // 0x8
        sig_lmg, // 0x9
        spy_wanted_order, // 0xa
        swat_team, // 0xb
        supplydrop_marker, // 0xc
        chopper_gunner, // 0xd
        drone_squadron, // 0xe
        overwatch_helicopter, // 0xf
        napalm_strike, // 0x10
        hero_pineapplegun, // 0x11
        ability_dog, // 0x12
        straferun, // 0x13
        recon_car, // 0x14
        uav, // 0x15
        ac130, // 0x16
        helicopter_comlink, // 0x17
        nuke, // 0x18
        sig_bow_flame, // 0x19
        jetfighter, // 0x1a
        ai_tank_marker, // 0x1b
        helicopter_guard, // 0x1c
        hero_flamethrower, // 0x1d
        hero_annihilator, // 0x1e
        planemortar // 0x1f
    };

    // idx 0x9 members: 0x36
    enum hash_507792265be6dcc4 {
        ability_smart_cover, // 0x0
        hash_7a083f7ba43fa06, // 0x1
        eq_wraith_fire, // 0x2
        missile_turret, // 0x3
        eq_shroud, // 0x4
        gadget_supplypod, // 0x5
        gadget_vision_pulse, // 0x6
        waterballoon, // 0x7
        eq_arm_blade, // 0x8
        gadget_heat_wave, // 0x9
        eq_localheal, // 0xa
        gadget_medicalinjectiongun, // 0xb
        nightingale, // 0xc
        gadget_smart_cover, // 0xd
        willy_pete, // 0xe
        eq_emp_grenade, // 0xf
        frag_grenade, // 0x10
        land_mine, // 0x11
        hatchet, // 0x12
        gadget_health_regen, // 0x13
        listening_device, // 0x14
        hash_3507beb47a6b634e, // 0x15
        trophy_system_spy, // 0x16
        eq_stimshot, // 0x17
        gadget_jammer, // 0x18
        hash_3ab58e40011df941, // 0x19
        eq_sticky_grenade, // 0x1a
        eq_seeker_mine, // 0x1b
        hash_4b1854c2ff5135b2, // 0x1c
        snowball, // 0x1d
        eq_concertina_wire, // 0x1e
        eq_acid_bomb, // 0x1f
        gadget_spawnbeacon, // 0x20
        gadget_armor, // 0x21
        tomahawk_t8, // 0x22
        gadget_health_boost, // 0x23
        spectre_grenade, // 0x24
        eq_flash_grenade, // 0x25
        trophy_system, // 0x26
        eq_slow_grenade, // 0x27
        tear_gas, // 0x28
        eq_molotov, // 0x29
        gadget_cleanse, // 0x2a
        satchel_charge, // 0x2b
        default_specialist_equipment, // 0x2c
        gadget_health_regen_squad, // 0x2d
        hash_76b56e7e0b3b7aac, // 0x2e
        eq_decoy_grenade, // 0x2f
        hash_788c96e19cc7a46e, // 0x30
        claymore, // 0x31
        cymbal_monkey, // 0x32
        hash_7ab3f9a730359659, // 0x33
        gadget_icepick, // 0x34
        gadget_camo // 0x35
    };

    // idx 0xa members: 0x3c
    enum hash_1e2de876fb880be2 {
        quickdraw, // 0x0
        acog, // 0x1
        dw, // 0x2
        ir, // 0x3
        barrel2, // 0x4
        mixunder2, // 0x5
        fastreload, // 0x6
        heavy, // 0x7
        steadyaim, // 0x8
        stalker, // 0x9
        barrel, // 0xa
        mixstock, // 0xb
        smoothzoom2, // 0xc
        mixclip2, // 0xd
        reflex4, // 0xe
        reflex3, // 0xf
        reflex2, // 0x10
        stalker2, // 0x11
        extclip2, // 0x12
        tactical, // 0x13
        steadyaim2, // 0x14
        mixclip, // 0x15
        light, // 0x16
        speedgrip2, // 0x17
        mixhandle, // 0x18
        mixunder, // 0x19
        mixbarrel2, // 0x1a
        mixstock2, // 0x1b
        reddot, // 0x1c
        handle, // 0x1d
        mixmuzzle2, // 0x1e
        extclip, // 0x1f
        light2, // 0x20
        heavy2, // 0x21
        holo, // 0x22
        elo, // 0x23
        fastreload2, // 0x24
        scope3x, // 0x25
        scope4x, // 0x26
        mixhandle2, // 0x27
        compensator, // 0x28
        mixbody, // 0x29
        quickdraw2, // 0x2a
        suppressed2, // 0x2b
        speedgrip, // 0x2c
        sprintout2, // 0x2d
        suppressed, // 0x2e
        sprintout, // 0x2f
        grip2, // 0x30
        mixmuzzle, // 0x31
        handle2, // 0x32
        compensator2, // 0x33
        mixbody2, // 0x34
        dualoptic, // 0x35
        grip, // 0x36
        smoothzoom, // 0x37
        reflex, // 0x38
        mixbarrel, // 0x39
        elo3, // 0x3a
        elo2 // 0x3b
    };

    // idx 0xb members: 0x3e
    enum hash_48d8d533750ed177 {
        talent_gungho, // 0x0
        talent_phdslider, // 0x1
        talent_engineer, // 0x2
        talent_coldblooded, // 0x3
        hash_9fb2125b3e673e5, // 0x4
        gear_armor, // 0x5
        hash_cd70e712f842296, // 0x6
        talent_tracker, // 0x7
        hash_101808cdfcd390d6, // 0x8
        hash_128256155e755170, // 0x9
        hash_16cfc7f70dbd8712, // 0xa
        talent_flakjacket, // 0xb
        talent_logistics, // 0xc
        talent_looter, // 0xd
        gadget_medicalinjectiongun, // 0xe
        hash_1d8863d0b864a48b, // 0xf
        hash_1db03fa9862ba330, // 0x10
        hash_20290a682a974c94, // 0x11
        talent_dexterity, // 0x12
        hash_249e75e962ea5275, // 0x13
        talent_resistance, // 0x14
        gear_awareness, // 0x15
        hash_2c3a32e6e2afd1f2, // 0x16
        hash_311283e3107dec74, // 0x17
        talent_lightweight, // 0x18
        talent_awareness, // 0x19
        gear_equipmentcharge, // 0x1a
        talent_phdslider_1, // 0x1b
        hash_38c08136902fd553, // 0x1c
        hash_39045b0020cc3e00, // 0x1d
        hash_3c323c7819b10b4d, // 0x1e
        hash_3c60422123a9075b, // 0x1f
        talent_scavenger, // 0x20
        talent_skulker, // 0x21
        gear_scorestreakcharge, // 0x22
        talent_ghost, // 0x23
        hash_4f80a2c3398e97c9, // 0x24
        talent_elemental_pop, // 0x25
        talent_brawler, // 0x26
        talent_quartermaster, // 0x27
        hash_59dbe7f72baaa0f0, // 0x28
        hash_59dbe8f72baaa2a3, // 0x29
        hash_59dbecf72baaa96f, // 0x2a
        hash_59dbedf72baaab22, // 0x2b
        hash_59dbeef72baaacd5, // 0x2c
        hash_5c80935e7a319f21, // 0x2d
        talent_paranoia, // 0x2e
        talent_teamlink, // 0x2f
        talent_deadsilence, // 0x30
        hash_646fc27884bdaa02, // 0x31
        gear_medicalinjectiongun, // 0x32
        hash_661cd0d6fb33878c, // 0x33
        talent_spycraft, // 0x34
        hash_7321f9058ee65217, // 0x35
        hash_7716cb3888f5dd8a, // 0x36
        talent_elemental_pop_2, // 0x37
        talent_elemental_pop_3, // 0x38
        talent_elemental_pop_1, // 0x39
        talent_elemental_pop_4, // 0x3a
        talent_elemental_pop_5, // 0x3b
        hash_7ca561e40dc3c5de, // 0x3c
        hash_7f79d3ba6ed1a1d7 // 0x3d
    };

    // idx 0xc members: 0x16
    enum hash_66db207c660e33f3 {
        bonuscard_overkill, // 0x0
        bonuscard_underkill, // 0x1
        bonuscard_perk_1_greed, // 0x2
        talent_mulekick, // 0x3
        talent_deathperception, // 0x4
        talent_mulekick_1, // 0x5
        talent_mulekick_2, // 0x6
        talent_mulekick_3, // 0x7
        talent_mulekick_4, // 0x8
        talent_mulekick_5, // 0x9
        talent_phdslider_4, // 0xa
        talent_phdslider_5, // 0xb
        talent_phdslider_2, // 0xc
        talent_phdslider_3, // 0xd
        hash_4a12859000892dda, // 0xe
        hash_639ebbcda56447e7, // 0xf
        bonuscard_primary_gunfighter, // 0x10
        talent_deathperception_2, // 0x11
        talent_deathperception_3, // 0x12
        talent_deathperception_1, // 0x13
        talent_deathperception_4, // 0x14
        talent_deathperception_5 // 0x15
    };

    // idx 0xd members: 0x118
    enum hash_1acf39b1d1bee1d5 {
        bonuscard_overkill, // 0x0
        ww_mega_barrel_fullauto_blazer_beam_t9, // 0x1
        talent_gungho, // 0x2
        talent_phdslider, // 0x3
        tr_fastburst_t9, // 0x4
        talent_engineer, // 0x5
        napalm_strike_zm, // 0x6
        ability_smart_cover, // 0x7
        dart, // 0x8
        ultimate_turret, // 0x9
        hash_5a7fd1af4a1d5c9, // 0xa
        ar_season6_t9, // 0xb
        hash_7a083f7ba43fa06, // 0xc
        talent_coldblooded, // 0xd
        lmg_accurate_t9, // 0xe
        melee_etool_t9, // 0xf
        ray_gun_mk2z, // 0x10
        ray_gun_mk2y, // 0x11
        ray_gun_mk2x, // 0x12
        hash_9fb2125b3e673e5, // 0x13
        sniper_powersemi_t9, // 0x14
        eq_wraith_fire, // 0x15
        gear_armor, // 0x16
        counteruav, // 0x17
        hash_cd70e712f842296, // 0x18
        talent_tracker, // 0x19
        missile_turret, // 0x1a
        eq_shroud, // 0x1b
        gadget_supplypod, // 0x1c
        hash_101808cdfcd390d6, // 0x1d
        ar_damage_t9, // 0x1e
        homunculus, // 0x1f
        spknifeork, // 0x20
        shotgun_leveraction_t9, // 0x21
        melee_bowie, // 0x22
        hash_128256155e755170, // 0x23
        ww_mega_barrel_fullauto_diffusion_beam_t9, // 0x24
        ww_random_ray_gun1, // 0x25
        bonuscard_underkill, // 0x26
        recon_plane, // 0x27
        hash_16cfc7f70dbd8712, // 0x28
        bonuscard_perk_1_greed, // 0x29
        sig_buckler_dw, // 0x2a
        talent_mulekick, // 0x2b
        talent_flakjacket, // 0x2c
        gadget_vision_pulse, // 0x2d
        waterballoon, // 0x2e
        special_crossbow_t9, // 0x2f
        weapon_armor, // 0x30
        eq_arm_blade, // 0x31
        talent_logistics, // 0x32
        ww_blundergat_t8, // 0x33
        gadget_heat_wave, // 0x34
        eq_localheal, // 0x35
        hoverjet, // 0x36
        talent_looter, // 0x37
        gadget_medicalinjectiongun, // 0x38
        hash_1d8863d0b864a48b, // 0x39
        hash_1db03fa9862ba330, // 0x3a
        nightingale, // 0x3b
        talent_deathperception, // 0x3c
        pistol_fullauto_t9, // 0x3d
        remote_missile, // 0x3e
        gadget_smart_cover, // 0x3f
        hash_20290a682a974c94, // 0x40
        willy_pete, // 0x41
        eq_emp_grenade, // 0x42
        special_grenadelauncher_t9, // 0x43
        melee_machete_t9, // 0x44
        talent_dexterity, // 0x45
        launcher_freefire_t9, // 0x46
        hash_249e75e962ea5275, // 0x47
        ar_accurate_t9, // 0x48
        sig_lmg, // 0x49
        ww_crossbow_impaler_t8, // 0x4a
        ww_freezegun_t8, // 0x4b
        frag_grenade, // 0x4c
        smg_cqb_t9, // 0x4d
        knife_loadout, // 0x4e
        feature_default_class_1, // 0x4f
        feature_default_class_3, // 0x50
        feature_default_class_2, // 0x51
        feature_default_class_5, // 0x52
        feature_default_class_4, // 0x53
        feature_default_class_6, // 0x54
        talent_resistance, // 0x55
        spy_wanted_order, // 0x56
        swat_team, // 0x57
        gear_awareness, // 0x58
        land_mine, // 0x59
        hatchet, // 0x5a
        hash_2c3a32e6e2afd1f2, // 0x5b
        talent_mulekick_1, // 0x5c
        talent_mulekick_2, // 0x5d
        talent_mulekick_3, // 0x5e
        talent_mulekick_4, // 0x5f
        talent_mulekick_5, // 0x60
        supplydrop_marker, // 0x61
        mute_smoke, // 0x62
        hash_2ea46ca74ebdfcac, // 0x63
        smg_capacity_t9, // 0x64
        chopper_gunner, // 0x65
        melee_baseballbat_t9, // 0x66
        hash_311283e3107dec74, // 0x67
        null_offhand_secondary, // 0x68
        gadget_health_regen, // 0x69
        hash_31be8125c7d0f273, // 0x6a
        pistol_shotgun_t9, // 0x6b
        listening_device, // 0x6c
        talent_lightweight, // 0x6d
        talent_awareness, // 0x6e
        spork_alcatraz, // 0x6f
        drone_squadron, // 0x70
        gear_equipmentcharge, // 0x71
        talent_phdslider_4, // 0x72
        talent_phdslider_5, // 0x73
        talent_phdslider_2, // 0x74
        talent_phdslider_3, // 0x75
        talent_phdslider_1, // 0x76
        pistol_semiauto_t9, // 0x77
        melee_mace_t9, // 0x78
        null_offhand_primary, // 0x79
        smg_burst_t9, // 0x7a
        hash_3507beb47a6b634e, // 0x7b
        pistol_revolver_t9, // 0x7c
        eq_stimshot, // 0x7d
        ww_mega_barrel_fullauto_copycat_t9, // 0x7e
        hash_38c08136902fd553, // 0x7f
        hash_39045b0020cc3e00, // 0x80
        overwatch_helicopter, // 0x81
        gadget_jammer, // 0x82
        hash_3ab58e40011df941, // 0x83
        melee_coldwar_t9_dw, // 0x84
        launcher_standard_t9, // 0x85
        melee_sai_t9_dw, // 0x86
        hash_3c323c7819b10b4d, // 0x87
        hash_3c60422123a9075b, // 0x88
        melee_bowie_bloody, // 0x89
        eq_sticky_grenade, // 0x8a
        special_ballisticknife_t9_dw, // 0x8b
        ww_ieu_shockwave_t9, // 0x8c
        melee_sledgehammer_t9, // 0x8d
        sig_blade, // 0x8e
        talent_scavenger, // 0x8f
        pistol_burst_t9, // 0x90
        hash_4385cf507401820f, // 0x91
        napalm_strike, // 0x92
        sniper_accurate_t9, // 0x93
        ar_fastfire_t9, // 0x94
        melee_wakizashi_t9, // 0x95
        hero_pineapplegun, // 0x96
        talent_skulker, // 0x97
        hash_48206b17d50533c2, // 0x98
        sniper_quickscope_t9, // 0x99
        ability_dog, // 0x9a
        straferun, // 0x9b
        hash_4a12859000892dda, // 0x9c
        eq_seeker_mine, // 0x9d
        ww_crossbow_t8, // 0x9e
        recon_car, // 0x9f
        hash_4b1854c2ff5135b2, // 0xa0
        snowball, // 0xa1
        feature_custom_class_9, // 0xa2
        feature_custom_class_8, // 0xa3
        feature_custom_class_3, // 0xa4
        feature_custom_class_2, // 0xa5
        feature_custom_class_1, // 0xa6
        feature_custom_class_7, // 0xa7
        feature_custom_class_6, // 0xa8
        feature_custom_class_5, // 0xa9
        feature_custom_class_4, // 0xaa
        uav, // 0xab
        eq_concertina_wire, // 0xac
        gear_scorestreakcharge, // 0xad
        feature_custom_class_10, // 0xae
        ar_slowhandling_t9, // 0xaf
        eq_acid_bomb, // 0xb0
        gadget_spawnbeacon, // 0xb1
        ac130, // 0xb2
        talent_ghost, // 0xb3
        hash_4f80a2c3398e97c9, // 0xb4
        tr_precisionsemi_t9, // 0xb5
        helicopter_comlink, // 0xb6
        gadget_armor, // 0xb7
        tr_damagesemi_t9, // 0xb8
        feature_cac, // 0xb9
        talent_elemental_pop, // 0xba
        tomahawk_t8, // 0xbb
        shotgun_pump_t9, // 0xbc
        gadget_health_boost, // 0xbd
        spectre_grenade, // 0xbe
        talent_brawler, // 0xbf
        eq_flash_grenade, // 0xc0
        hash_55c23f24d806e3a6, // 0xc1
        bare_hands, // 0xc2
        ar_slowfire_t9, // 0xc3
        tr_powerburst_t9, // 0xc4
        trophy_system, // 0xc5
        talent_quartermaster, // 0xc6
        hash_59dbe7f72baaa0f0, // 0xc7
        hash_59dbe8f72baaa2a3, // 0xc8
        hash_59dbecf72baaa96f, // 0xc9
        hash_59dbedf72baaab22, // 0xca
        hash_59dbeef72baaacd5, // 0xcb
        ray_gun_mk2, // 0xcc
        tr_longburst_t9, // 0xcd
        nuke, // 0xce
        ww_ray_rifle_t9, // 0xcf
        smg_standard_t9, // 0xd0
        hash_5c80935e7a319f21, // 0xd1
        sig_bow_flame, // 0xd2
        eq_slow_grenade, // 0xd3
        talent_paranoia, // 0xd4
        special_nailgun_t9, // 0xd5
        smg_accurate_t9, // 0xd6
        hash_603c083704cefb0c, // 0xd7
        jetfighter, // 0xd8
        talent_teamlink, // 0xd9
        smg_heavy_t9, // 0xda
        talent_deadsilence, // 0xdb
        tear_gas, // 0xdc
        hash_639ebbcda56447e7, // 0xdd
        eq_molotov, // 0xde
        smg_fastfire_t9, // 0xdf
        hash_646fc27884bdaa02, // 0xe0
        bonuscard_primary_gunfighter, // 0xe1
        lmg_light_t9, // 0xe2
        ai_tank_marker, // 0xe3
        gear_medicalinjectiongun, // 0xe4
        hash_661cd0d6fb33878c, // 0xe5
        gadget_cleanse, // 0xe6
        ar_british_t9, // 0xe7
        hero_flamethrower, // 0xe8
        melee_battleaxe_t9, // 0xe9
        sniper_standard_t9, // 0xea
        melee_cane_t9, // 0xeb
        smg_spray_t9, // 0xec
        hero_annihilator, // 0xed
        ar_fasthandling_t9, // 0xee
        ar_mobility_t9, // 0xef
        planemortar, // 0xf0
        sniper_cannon_t9, // 0xf1
        shotgun_semiauto_t9, // 0xf2
        talent_deathperception_2, // 0xf3
        talent_deathperception_3, // 0xf4
        talent_deathperception_1, // 0xf5
        talent_deathperception_4, // 0xf6
        talent_deathperception_5, // 0xf7
        lmg_fastfire_t9, // 0xf8
        ar_standard_t9, // 0xf9
        weapon_null, // 0xfa
        talent_spycraft, // 0xfb
        hash_7321f9058ee65217, // 0xfc
        satchel_charge, // 0xfd
        default_specialist_equipment, // 0xfe
        gadget_health_regen_squad, // 0xff
        hash_76b56e7e0b3b7aac, // 0x100
        eq_decoy_grenade, // 0x101
        hash_7716cb3888f5dd8a, // 0x102
        smg_season6_t9, // 0x103
        smg_semiauto_t9, // 0x104
        ray_gun, // 0x105
        hash_788c96e19cc7a46e, // 0x106
        claymore, // 0x107
        talent_elemental_pop_2, // 0x108
        talent_elemental_pop_3, // 0x109
        talent_elemental_pop_1, // 0x10a
        talent_elemental_pop_4, // 0x10b
        talent_elemental_pop_5, // 0x10c
        smg_handling_t9, // 0x10d
        cymbal_monkey, // 0x10e
        shotgun_fullauto_t9, // 0x10f
        hash_7ab3f9a730359659, // 0x110
        gadget_icepick, // 0x111
        ww_mega_barrel_fullauto_micro_missile_t9, // 0x112
        hash_7ca561e40dc3c5de, // 0x113
        basketball, // 0x114
        gadget_camo, // 0x115
        hash_7f79d3ba6ed1a1d7, // 0x116
        lmg_slowfire_t9 // 0x117
    };

    // root: bitSize: 0x1360, members: 16

    // offset: 0x0, bitSize: 0x6d8(0xdb Byte(s))
    region_info dml;
    // offset: 0x6d8, bitSize: 0x318(0x63 Byte(s)), array:0x3(hti:0xffff)
    lootcontracts loot_contracts[3];
    // offset: 0x9f0, bitSize: 0x20(0x4 Byte(s))
    uint hash_5a1a5df0cdadbba3;
    // offset: 0xa10, bitSize: 0x20(0x4 Byte(s))
    uint hash_151eef37df5ee845;
    // offset: 0xa30, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_tier_boost;
    // offset: 0xa38, bitSize: 0x8(0x1 Byte(s))
    hash_54196e9e9860f0be platform;
    // offset: 0xa40, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_party_tier_boost;
    // offset: 0xa48, bitSize: 0x20(0x4 Byte(s))
    uint hash_1e4fbbabf3da13fa;
    // offset: 0xa68, bitSize: 0x110(0x22 Byte(s)), array:0x11(hti:0xffff)
    hash_33944d215cff6222 hash_33944d215cff6222[17];
    // offset: 0xb78, bitSize: 0x5a0(0xb4 Byte(s)), array:0x5a(hti:0x6)
    hash_1c86958671ff27fd hash_4953b2b12f1d6b1b[hash_4b8d95aacf149fb9];
    // offset: 0x1118, bitSize: 0xa0(0x14 Byte(s))
    client_header client;
    // offset: 0x11b8, bitSize: 0x8(0x1 Byte(s))
    byte tier_boost;
    // offset: 0x11c0, bitSize: 0x140(0x28 Byte(s)), array:0xa(hti:0xffff)
    uint hash_3d03353ad0aa2db1[10];
    // offset: 0x1300, bitSize: 0x1
    bool hash_4ca91f34eba5a203;
    // offset: 0x1301, bitSize: 0x5a, array:0x5a(hti:0x6)
    bool hash_4473319d8a8d9dcf[hash_4b8d95aacf149fb9];
};

version hash_96b27b3d37415215 {
    // enums ..... 14 (0xe)
    // structs ... 9 (0x9)
    // header bit size .. 5168 (0x1430)
    // header byte size . 646 (0x286)

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
    struct hash_1c86958671ff27fd {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_50ab8b7df567cd2a;
    };

    // bitSize: 0x108, members: 6
    struct lootcontracts {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint xp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint contractid;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:3 contractgamemode;
        // offset: 0x48, bitSize: 0x40(0x8 Byte(s))
        xhash contracthash;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 progress;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 target;
    };

    // bitSize: 0x10, members: 3
    struct hash_33944d215cff6222 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_174d79c341ec2c6c;
        // offset: 0x8, bitSize: 0x1
        bool hash_2401d7a2dc706a6c;
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

    // idx 0x5 members: 0xc6
    enum hash_10d50fe10481423c {
        ww_mega_barrel_fullauto_blazer_beam_t9, // 0x0
        tr_fastburst_t9, // 0x1
        napalm_strike_zm, // 0x2
        ability_smart_cover, // 0x3
        dart, // 0x4
        ultimate_turret, // 0x5
        hash_5a7fd1af4a1d5c9, // 0x6
        ar_season6_t9, // 0x7
        hash_7a083f7ba43fa06, // 0x8
        lmg_accurate_t9, // 0x9
        melee_etool_t9, // 0xa
        ray_gun_mk2z, // 0xb
        ray_gun_mk2y, // 0xc
        ray_gun_mk2x, // 0xd
        sniper_powersemi_t9, // 0xe
        eq_wraith_fire, // 0xf
        counteruav, // 0x10
        missile_turret, // 0x11
        eq_shroud, // 0x12
        gadget_supplypod, // 0x13
        ar_damage_t9, // 0x14
        homunculus, // 0x15
        spknifeork, // 0x16
        shotgun_leveraction_t9, // 0x17
        melee_bowie, // 0x18
        ww_mega_barrel_fullauto_diffusion_beam_t9, // 0x19
        ww_random_ray_gun1, // 0x1a
        recon_plane, // 0x1b
        sig_buckler_dw, // 0x1c
        gadget_vision_pulse, // 0x1d
        waterballoon, // 0x1e
        special_crossbow_t9, // 0x1f
        weapon_armor, // 0x20
        eq_arm_blade, // 0x21
        ww_blundergat_t8, // 0x22
        gadget_heat_wave, // 0x23
        eq_localheal, // 0x24
        hoverjet, // 0x25
        nightingale, // 0x26
        pistol_fullauto_t9, // 0x27
        remote_missile, // 0x28
        gadget_smart_cover, // 0x29
        willy_pete, // 0x2a
        eq_emp_grenade, // 0x2b
        special_grenadelauncher_t9, // 0x2c
        melee_machete_t9, // 0x2d
        launcher_freefire_t9, // 0x2e
        ar_accurate_t9, // 0x2f
        sig_lmg, // 0x30
        ww_crossbow_impaler_t8, // 0x31
        ww_freezegun_t8, // 0x32
        frag_grenade, // 0x33
        smg_cqb_t9, // 0x34
        knife_loadout, // 0x35
        feature_default_class_1, // 0x36
        feature_default_class_3, // 0x37
        feature_default_class_2, // 0x38
        feature_default_class_5, // 0x39
        feature_default_class_4, // 0x3a
        feature_default_class_6, // 0x3b
        hash_28fdaa999c8aa3af, // 0x3c
        spy_wanted_order, // 0x3d
        swat_team, // 0x3e
        land_mine, // 0x3f
        hatchet, // 0x40
        supplydrop_marker, // 0x41
        mute_smoke, // 0x42
        hash_2ea46ca74ebdfcac, // 0x43
        smg_capacity_t9, // 0x44
        chopper_gunner, // 0x45
        melee_baseballbat_t9, // 0x46
        null_offhand_secondary, // 0x47
        gadget_health_regen, // 0x48
        hash_31be8125c7d0f273, // 0x49
        pistol_shotgun_t9, // 0x4a
        listening_device, // 0x4b
        spork_alcatraz, // 0x4c
        drone_squadron, // 0x4d
        pistol_semiauto_t9, // 0x4e
        melee_mace_t9, // 0x4f
        null_offhand_primary, // 0x50
        smg_burst_t9, // 0x51
        hash_3507beb47a6b634e, // 0x52
        pistol_revolver_t9, // 0x53
        eq_stimshot, // 0x54
        ww_mega_barrel_fullauto_copycat_t9, // 0x55
        overwatch_helicopter, // 0x56
        gadget_jammer, // 0x57
        hash_3ab58e40011df941, // 0x58
        melee_coldwar_t9_dw, // 0x59
        launcher_standard_t9, // 0x5a
        melee_sai_t9_dw, // 0x5b
        melee_bowie_bloody, // 0x5c
        eq_sticky_grenade, // 0x5d
        special_ballisticknife_t9_dw, // 0x5e
        hash_3f47e8be065a0dc0, // 0x5f
        ww_ieu_shockwave_t9, // 0x60
        melee_sledgehammer_t9, // 0x61
        sig_blade, // 0x62
        pistol_burst_t9, // 0x63
        hash_4385cf507401820f, // 0x64
        napalm_strike, // 0x65
        sniper_accurate_t9, // 0x66
        ar_fastfire_t9, // 0x67
        melee_wakizashi_t9, // 0x68
        hero_pineapplegun, // 0x69
        hash_48206b17d50533c2, // 0x6a
        sniper_quickscope_t9, // 0x6b
        ability_dog, // 0x6c
        straferun, // 0x6d
        eq_seeker_mine, // 0x6e
        ww_crossbow_t8, // 0x6f
        recon_car, // 0x70
        hash_4b1854c2ff5135b2, // 0x71
        snowball, // 0x72
        feature_custom_class_9, // 0x73
        feature_custom_class_8, // 0x74
        feature_custom_class_3, // 0x75
        feature_custom_class_2, // 0x76
        feature_custom_class_1, // 0x77
        feature_custom_class_7, // 0x78
        feature_custom_class_6, // 0x79
        feature_custom_class_5, // 0x7a
        feature_custom_class_4, // 0x7b
        uav, // 0x7c
        eq_concertina_wire, // 0x7d
        feature_custom_class_10, // 0x7e
        ar_slowhandling_t9, // 0x7f
        eq_acid_bomb, // 0x80
        gadget_spawnbeacon, // 0x81
        ac130, // 0x82
        tr_precisionsemi_t9, // 0x83
        helicopter_comlink, // 0x84
        gadget_armor, // 0x85
        tr_damagesemi_t9, // 0x86
        feature_cac, // 0x87
        tomahawk_t8, // 0x88
        shotgun_pump_t9, // 0x89
        gadget_health_boost, // 0x8a
        spectre_grenade, // 0x8b
        eq_flash_grenade, // 0x8c
        hash_55c23f24d806e3a6, // 0x8d
        bare_hands, // 0x8e
        ar_slowfire_t9, // 0x8f
        tr_powerburst_t9, // 0x90
        trophy_system, // 0x91
        ray_gun_mk2, // 0x92
        tr_longburst_t9, // 0x93
        nuke, // 0x94
        ww_ray_rifle_t9, // 0x95
        smg_standard_t9, // 0x96
        sig_bow_flame, // 0x97
        eq_slow_grenade, // 0x98
        special_nailgun_t9, // 0x99
        smg_accurate_t9, // 0x9a
        hash_603c083704cefb0c, // 0x9b
        jetfighter, // 0x9c
        smg_heavy_t9, // 0x9d
        tear_gas, // 0x9e
        eq_molotov, // 0x9f
        smg_fastfire_t9, // 0xa0
        lmg_light_t9, // 0xa1
        ai_tank_marker, // 0xa2
        gadget_cleanse, // 0xa3
        ar_british_t9, // 0xa4
        hero_flamethrower, // 0xa5
        melee_battleaxe_t9, // 0xa6
        sniper_standard_t9, // 0xa7
        melee_cane_t9, // 0xa8
        smg_spray_t9, // 0xa9
        hero_annihilator, // 0xaa
        ar_fasthandling_t9, // 0xab
        ar_mobility_t9, // 0xac
        planemortar, // 0xad
        sniper_cannon_t9, // 0xae
        shotgun_semiauto_t9, // 0xaf
        lmg_fastfire_t9, // 0xb0
        ar_standard_t9, // 0xb1
        weapon_null, // 0xb2
        satchel_charge, // 0xb3
        default_specialist_equipment, // 0xb4
        gadget_health_regen_squad, // 0xb5
        hash_76b56e7e0b3b7aac, // 0xb6
        eq_decoy_grenade, // 0xb7
        smg_season6_t9, // 0xb8
        smg_semiauto_t9, // 0xb9
        ray_gun, // 0xba
        hash_788c96e19cc7a46e, // 0xbb
        claymore, // 0xbc
        smg_handling_t9, // 0xbd
        cymbal_monkey, // 0xbe
        shotgun_fullauto_t9, // 0xbf
        hash_7ab3f9a730359659, // 0xc0
        gadget_icepick, // 0xc1
        ww_mega_barrel_fullauto_micro_missile_t9, // 0xc2
        basketball, // 0xc3
        gadget_camo, // 0xc4
        lmg_slowfire_t9 // 0xc5
    };

    // idx 0x6 members: 0x5c
    enum hash_4b8d95aacf149fb9 {
        ww_mega_barrel_fullauto_blazer_beam_t9, // 0x0
        tr_fastburst_t9, // 0x1
        ar_season6_t9, // 0x2
        lmg_accurate_t9, // 0x3
        melee_etool_t9, // 0x4
        ray_gun_mk2z, // 0x5
        ray_gun_mk2y, // 0x6
        ray_gun_mk2x, // 0x7
        sniper_powersemi_t9, // 0x8
        hash_c21b61b32a5d972, // 0x9
        ar_damage_t9, // 0xa
        homunculus, // 0xb
        spknifeork, // 0xc
        shotgun_leveraction_t9, // 0xd
        melee_bowie, // 0xe
        ww_mega_barrel_fullauto_diffusion_beam_t9, // 0xf
        ww_random_ray_gun1, // 0x10
        hash_165cf52ce418f5a1, // 0x11
        special_crossbow_t9, // 0x12
        ww_blundergat_t8, // 0x13
        pistol_fullauto_t9, // 0x14
        special_grenadelauncher_t9, // 0x15
        melee_machete_t9, // 0x16
        launcher_freefire_t9, // 0x17
        ar_accurate_t9, // 0x18
        ww_crossbow_impaler_t8, // 0x19
        ww_freezegun_t8, // 0x1a
        smg_cqb_t9, // 0x1b
        knife_loadout, // 0x1c
        hash_28fdaa999c8aa3af, // 0x1d
        hash_2ea46ca74ebdfcac, // 0x1e
        smg_capacity_t9, // 0x1f
        melee_baseballbat_t9, // 0x20
        pistol_shotgun_t9, // 0x21
        spork_alcatraz, // 0x22
        pistol_semiauto_t9, // 0x23
        melee_mace_t9, // 0x24
        smg_burst_t9, // 0x25
        pistol_revolver_t9, // 0x26
        ww_mega_barrel_fullauto_copycat_t9, // 0x27
        melee_coldwar_t9_dw, // 0x28
        launcher_standard_t9, // 0x29
        melee_sai_t9_dw, // 0x2a
        melee_bowie_bloody, // 0x2b
        special_ballisticknife_t9_dw, // 0x2c
        hash_3f47e8be065a0dc0, // 0x2d
        ww_ieu_shockwave_t9, // 0x2e
        melee_sledgehammer_t9, // 0x2f
        pistol_burst_t9, // 0x30
        hash_4385cf507401820f, // 0x31
        sniper_accurate_t9, // 0x32
        ar_fastfire_t9, // 0x33
        melee_wakizashi_t9, // 0x34
        hash_48206b17d50533c2, // 0x35
        sniper_quickscope_t9, // 0x36
        ww_crossbow_t8, // 0x37
        ar_slowhandling_t9, // 0x38
        tr_precisionsemi_t9, // 0x39
        tr_damagesemi_t9, // 0x3a
        shotgun_pump_t9, // 0x3b
        hash_55c23f24d806e3a6, // 0x3c
        ar_slowfire_t9, // 0x3d
        tr_powerburst_t9, // 0x3e
        ray_gun_mk2, // 0x3f
        tr_longburst_t9, // 0x40
        ww_ray_rifle_t9, // 0x41
        smg_standard_t9, // 0x42
        special_nailgun_t9, // 0x43
        smg_accurate_t9, // 0x44
        hash_603c083704cefb0c, // 0x45
        smg_heavy_t9, // 0x46
        smg_fastfire_t9, // 0x47
        lmg_light_t9, // 0x48
        ar_british_t9, // 0x49
        melee_battleaxe_t9, // 0x4a
        sniper_standard_t9, // 0x4b
        melee_cane_t9, // 0x4c
        smg_spray_t9, // 0x4d
        ar_fasthandling_t9, // 0x4e
        ar_mobility_t9, // 0x4f
        sniper_cannon_t9, // 0x50
        shotgun_semiauto_t9, // 0x51
        lmg_fastfire_t9, // 0x52
        ar_standard_t9, // 0x53
        smg_season6_t9, // 0x54
        smg_semiauto_t9, // 0x55
        ray_gun, // 0x56
        smg_handling_t9, // 0x57
        shotgun_fullauto_t9, // 0x58
        ww_mega_barrel_fullauto_micro_missile_t9, // 0x59
        basketball, // 0x5a
        lmg_slowfire_t9 // 0x5b
    };

    // idx 0x7 members: 0x13
    enum hash_7493d39e2637c1e7 {
        bonuscard, // 0x0
        hero, // 0x1
        feature, // 0x2
        weapon_special, // 0x3
        weapon_knife, // 0x4
        character, // 0x5
        miscweapon, // 0x6
        weapon_pistol, // 0x7
        killstreak, // 0x8
        weapon_sniper, // 0x9
        talent, // 0xa
        weapon_launcher, // 0xb
        weapon_grenade, // 0xc
        weapon_lmg, // 0xd
        weapon_tactical, // 0xe
        weapon_smg, // 0xf
        hash_7b68172df6035672, // 0x10
        weapon_cqb, // 0x11
        weapon_assault // 0x12
    };

    // idx 0x8 members: 0x20
    enum hash_d5731f85b8cf294 {
        napalm_strike_zm, // 0x0
        dart, // 0x1
        ultimate_turret, // 0x2
        counteruav, // 0x3
        recon_plane, // 0x4
        weapon_armor, // 0x5
        hoverjet, // 0x6
        remote_missile, // 0x7
        spy_med_pack, // 0x8
        sig_lmg, // 0x9
        spy_wanted_order, // 0xa
        swat_team, // 0xb
        supplydrop_marker, // 0xc
        chopper_gunner, // 0xd
        drone_squadron, // 0xe
        overwatch_helicopter, // 0xf
        napalm_strike, // 0x10
        hero_pineapplegun, // 0x11
        ability_dog, // 0x12
        straferun, // 0x13
        recon_car, // 0x14
        uav, // 0x15
        ac130, // 0x16
        helicopter_comlink, // 0x17
        nuke, // 0x18
        sig_bow_flame, // 0x19
        jetfighter, // 0x1a
        ai_tank_marker, // 0x1b
        helicopter_guard, // 0x1c
        hero_flamethrower, // 0x1d
        hero_annihilator, // 0x1e
        planemortar // 0x1f
    };

    // idx 0x9 members: 0x36
    enum hash_507792265be6dcc4 {
        ability_smart_cover, // 0x0
        hash_7a083f7ba43fa06, // 0x1
        eq_wraith_fire, // 0x2
        missile_turret, // 0x3
        eq_shroud, // 0x4
        gadget_supplypod, // 0x5
        gadget_vision_pulse, // 0x6
        waterballoon, // 0x7
        eq_arm_blade, // 0x8
        gadget_heat_wave, // 0x9
        eq_localheal, // 0xa
        gadget_medicalinjectiongun, // 0xb
        nightingale, // 0xc
        gadget_smart_cover, // 0xd
        willy_pete, // 0xe
        eq_emp_grenade, // 0xf
        frag_grenade, // 0x10
        land_mine, // 0x11
        hatchet, // 0x12
        gadget_health_regen, // 0x13
        listening_device, // 0x14
        hash_3507beb47a6b634e, // 0x15
        trophy_system_spy, // 0x16
        eq_stimshot, // 0x17
        gadget_jammer, // 0x18
        hash_3ab58e40011df941, // 0x19
        eq_sticky_grenade, // 0x1a
        eq_seeker_mine, // 0x1b
        hash_4b1854c2ff5135b2, // 0x1c
        snowball, // 0x1d
        eq_concertina_wire, // 0x1e
        eq_acid_bomb, // 0x1f
        gadget_spawnbeacon, // 0x20
        gadget_armor, // 0x21
        tomahawk_t8, // 0x22
        gadget_health_boost, // 0x23
        spectre_grenade, // 0x24
        eq_flash_grenade, // 0x25
        trophy_system, // 0x26
        eq_slow_grenade, // 0x27
        tear_gas, // 0x28
        eq_molotov, // 0x29
        gadget_cleanse, // 0x2a
        satchel_charge, // 0x2b
        default_specialist_equipment, // 0x2c
        gadget_health_regen_squad, // 0x2d
        hash_76b56e7e0b3b7aac, // 0x2e
        eq_decoy_grenade, // 0x2f
        hash_788c96e19cc7a46e, // 0x30
        claymore, // 0x31
        cymbal_monkey, // 0x32
        hash_7ab3f9a730359659, // 0x33
        gadget_icepick, // 0x34
        gadget_camo // 0x35
    };

    // idx 0xa members: 0x3c
    enum hash_1e2de876fb880be2 {
        quickdraw, // 0x0
        acog, // 0x1
        dw, // 0x2
        ir, // 0x3
        barrel2, // 0x4
        mixunder2, // 0x5
        fastreload, // 0x6
        heavy, // 0x7
        steadyaim, // 0x8
        stalker, // 0x9
        barrel, // 0xa
        mixstock, // 0xb
        smoothzoom2, // 0xc
        mixclip2, // 0xd
        reflex4, // 0xe
        reflex3, // 0xf
        reflex2, // 0x10
        stalker2, // 0x11
        extclip2, // 0x12
        tactical, // 0x13
        steadyaim2, // 0x14
        mixclip, // 0x15
        light, // 0x16
        speedgrip2, // 0x17
        mixhandle, // 0x18
        mixunder, // 0x19
        mixbarrel2, // 0x1a
        mixstock2, // 0x1b
        reddot, // 0x1c
        handle, // 0x1d
        mixmuzzle2, // 0x1e
        extclip, // 0x1f
        light2, // 0x20
        heavy2, // 0x21
        holo, // 0x22
        elo, // 0x23
        fastreload2, // 0x24
        scope3x, // 0x25
        scope4x, // 0x26
        mixhandle2, // 0x27
        compensator, // 0x28
        mixbody, // 0x29
        quickdraw2, // 0x2a
        suppressed2, // 0x2b
        speedgrip, // 0x2c
        sprintout2, // 0x2d
        suppressed, // 0x2e
        sprintout, // 0x2f
        grip2, // 0x30
        mixmuzzle, // 0x31
        handle2, // 0x32
        compensator2, // 0x33
        mixbody2, // 0x34
        dualoptic, // 0x35
        grip, // 0x36
        smoothzoom, // 0x37
        reflex, // 0x38
        mixbarrel, // 0x39
        elo3, // 0x3a
        elo2 // 0x3b
    };

    // idx 0xb members: 0x3e
    enum hash_48d8d533750ed177 {
        talent_gungho, // 0x0
        talent_phdslider, // 0x1
        talent_engineer, // 0x2
        talent_coldblooded, // 0x3
        hash_9fb2125b3e673e5, // 0x4
        gear_armor, // 0x5
        hash_cd70e712f842296, // 0x6
        talent_tracker, // 0x7
        hash_101808cdfcd390d6, // 0x8
        hash_128256155e755170, // 0x9
        hash_16cfc7f70dbd8712, // 0xa
        talent_flakjacket, // 0xb
        talent_logistics, // 0xc
        talent_looter, // 0xd
        gadget_medicalinjectiongun, // 0xe
        hash_1d8863d0b864a48b, // 0xf
        hash_1db03fa9862ba330, // 0x10
        hash_20290a682a974c94, // 0x11
        talent_dexterity, // 0x12
        hash_249e75e962ea5275, // 0x13
        talent_resistance, // 0x14
        gear_awareness, // 0x15
        hash_2c3a32e6e2afd1f2, // 0x16
        hash_311283e3107dec74, // 0x17
        talent_lightweight, // 0x18
        talent_awareness, // 0x19
        gear_equipmentcharge, // 0x1a
        talent_phdslider_1, // 0x1b
        hash_38c08136902fd553, // 0x1c
        hash_39045b0020cc3e00, // 0x1d
        hash_3c323c7819b10b4d, // 0x1e
        hash_3c60422123a9075b, // 0x1f
        talent_scavenger, // 0x20
        talent_skulker, // 0x21
        gear_scorestreakcharge, // 0x22
        talent_ghost, // 0x23
        hash_4f80a2c3398e97c9, // 0x24
        talent_elemental_pop, // 0x25
        talent_brawler, // 0x26
        talent_quartermaster, // 0x27
        hash_59dbe7f72baaa0f0, // 0x28
        hash_59dbe8f72baaa2a3, // 0x29
        hash_59dbecf72baaa96f, // 0x2a
        hash_59dbedf72baaab22, // 0x2b
        hash_59dbeef72baaacd5, // 0x2c
        hash_5c80935e7a319f21, // 0x2d
        talent_paranoia, // 0x2e
        talent_teamlink, // 0x2f
        talent_deadsilence, // 0x30
        hash_646fc27884bdaa02, // 0x31
        gear_medicalinjectiongun, // 0x32
        hash_661cd0d6fb33878c, // 0x33
        talent_spycraft, // 0x34
        hash_7321f9058ee65217, // 0x35
        hash_7716cb3888f5dd8a, // 0x36
        talent_elemental_pop_2, // 0x37
        talent_elemental_pop_3, // 0x38
        talent_elemental_pop_1, // 0x39
        talent_elemental_pop_4, // 0x3a
        talent_elemental_pop_5, // 0x3b
        hash_7ca561e40dc3c5de, // 0x3c
        hash_7f79d3ba6ed1a1d7 // 0x3d
    };

    // idx 0xc members: 0x16
    enum hash_66db207c660e33f3 {
        bonuscard_overkill, // 0x0
        bonuscard_underkill, // 0x1
        bonuscard_perk_1_greed, // 0x2
        talent_mulekick, // 0x3
        talent_deathperception, // 0x4
        talent_mulekick_1, // 0x5
        talent_mulekick_2, // 0x6
        talent_mulekick_3, // 0x7
        talent_mulekick_4, // 0x8
        talent_mulekick_5, // 0x9
        talent_phdslider_4, // 0xa
        talent_phdslider_5, // 0xb
        talent_phdslider_2, // 0xc
        talent_phdslider_3, // 0xd
        hash_4a12859000892dda, // 0xe
        hash_639ebbcda56447e7, // 0xf
        bonuscard_primary_gunfighter, // 0x10
        talent_deathperception_2, // 0x11
        talent_deathperception_3, // 0x12
        talent_deathperception_1, // 0x13
        talent_deathperception_4, // 0x14
        talent_deathperception_5 // 0x15
    };

    // idx 0xd members: 0x11a
    enum hash_1acf39b1d1bee1d5 {
        bonuscard_overkill, // 0x0
        ww_mega_barrel_fullauto_blazer_beam_t9, // 0x1
        talent_gungho, // 0x2
        talent_phdslider, // 0x3
        tr_fastburst_t9, // 0x4
        talent_engineer, // 0x5
        napalm_strike_zm, // 0x6
        ability_smart_cover, // 0x7
        dart, // 0x8
        ultimate_turret, // 0x9
        hash_5a7fd1af4a1d5c9, // 0xa
        ar_season6_t9, // 0xb
        hash_7a083f7ba43fa06, // 0xc
        talent_coldblooded, // 0xd
        lmg_accurate_t9, // 0xe
        melee_etool_t9, // 0xf
        ray_gun_mk2z, // 0x10
        ray_gun_mk2y, // 0x11
        ray_gun_mk2x, // 0x12
        hash_9fb2125b3e673e5, // 0x13
        sniper_powersemi_t9, // 0x14
        eq_wraith_fire, // 0x15
        gear_armor, // 0x16
        counteruav, // 0x17
        hash_cd70e712f842296, // 0x18
        talent_tracker, // 0x19
        missile_turret, // 0x1a
        eq_shroud, // 0x1b
        gadget_supplypod, // 0x1c
        hash_101808cdfcd390d6, // 0x1d
        ar_damage_t9, // 0x1e
        homunculus, // 0x1f
        spknifeork, // 0x20
        shotgun_leveraction_t9, // 0x21
        melee_bowie, // 0x22
        hash_128256155e755170, // 0x23
        ww_mega_barrel_fullauto_diffusion_beam_t9, // 0x24
        ww_random_ray_gun1, // 0x25
        bonuscard_underkill, // 0x26
        recon_plane, // 0x27
        hash_16cfc7f70dbd8712, // 0x28
        bonuscard_perk_1_greed, // 0x29
        sig_buckler_dw, // 0x2a
        talent_mulekick, // 0x2b
        talent_flakjacket, // 0x2c
        gadget_vision_pulse, // 0x2d
        waterballoon, // 0x2e
        special_crossbow_t9, // 0x2f
        weapon_armor, // 0x30
        eq_arm_blade, // 0x31
        talent_logistics, // 0x32
        ww_blundergat_t8, // 0x33
        gadget_heat_wave, // 0x34
        eq_localheal, // 0x35
        hoverjet, // 0x36
        talent_looter, // 0x37
        gadget_medicalinjectiongun, // 0x38
        hash_1d8863d0b864a48b, // 0x39
        hash_1db03fa9862ba330, // 0x3a
        nightingale, // 0x3b
        talent_deathperception, // 0x3c
        pistol_fullauto_t9, // 0x3d
        remote_missile, // 0x3e
        gadget_smart_cover, // 0x3f
        hash_20290a682a974c94, // 0x40
        willy_pete, // 0x41
        eq_emp_grenade, // 0x42
        special_grenadelauncher_t9, // 0x43
        melee_machete_t9, // 0x44
        talent_dexterity, // 0x45
        launcher_freefire_t9, // 0x46
        hash_249e75e962ea5275, // 0x47
        ar_accurate_t9, // 0x48
        sig_lmg, // 0x49
        ww_crossbow_impaler_t8, // 0x4a
        ww_freezegun_t8, // 0x4b
        frag_grenade, // 0x4c
        smg_cqb_t9, // 0x4d
        knife_loadout, // 0x4e
        feature_default_class_1, // 0x4f
        feature_default_class_3, // 0x50
        feature_default_class_2, // 0x51
        feature_default_class_5, // 0x52
        feature_default_class_4, // 0x53
        feature_default_class_6, // 0x54
        hash_28fdaa999c8aa3af, // 0x55
        talent_resistance, // 0x56
        spy_wanted_order, // 0x57
        swat_team, // 0x58
        gear_awareness, // 0x59
        land_mine, // 0x5a
        hatchet, // 0x5b
        hash_2c3a32e6e2afd1f2, // 0x5c
        talent_mulekick_1, // 0x5d
        talent_mulekick_2, // 0x5e
        talent_mulekick_3, // 0x5f
        talent_mulekick_4, // 0x60
        talent_mulekick_5, // 0x61
        supplydrop_marker, // 0x62
        mute_smoke, // 0x63
        hash_2ea46ca74ebdfcac, // 0x64
        smg_capacity_t9, // 0x65
        chopper_gunner, // 0x66
        melee_baseballbat_t9, // 0x67
        hash_311283e3107dec74, // 0x68
        null_offhand_secondary, // 0x69
        gadget_health_regen, // 0x6a
        hash_31be8125c7d0f273, // 0x6b
        pistol_shotgun_t9, // 0x6c
        listening_device, // 0x6d
        talent_lightweight, // 0x6e
        talent_awareness, // 0x6f
        spork_alcatraz, // 0x70
        drone_squadron, // 0x71
        gear_equipmentcharge, // 0x72
        talent_phdslider_4, // 0x73
        talent_phdslider_5, // 0x74
        talent_phdslider_2, // 0x75
        talent_phdslider_3, // 0x76
        talent_phdslider_1, // 0x77
        pistol_semiauto_t9, // 0x78
        melee_mace_t9, // 0x79
        null_offhand_primary, // 0x7a
        smg_burst_t9, // 0x7b
        hash_3507beb47a6b634e, // 0x7c
        pistol_revolver_t9, // 0x7d
        eq_stimshot, // 0x7e
        ww_mega_barrel_fullauto_copycat_t9, // 0x7f
        hash_38c08136902fd553, // 0x80
        hash_39045b0020cc3e00, // 0x81
        overwatch_helicopter, // 0x82
        gadget_jammer, // 0x83
        hash_3ab58e40011df941, // 0x84
        melee_coldwar_t9_dw, // 0x85
        launcher_standard_t9, // 0x86
        melee_sai_t9_dw, // 0x87
        hash_3c323c7819b10b4d, // 0x88
        hash_3c60422123a9075b, // 0x89
        melee_bowie_bloody, // 0x8a
        eq_sticky_grenade, // 0x8b
        special_ballisticknife_t9_dw, // 0x8c
        hash_3f47e8be065a0dc0, // 0x8d
        ww_ieu_shockwave_t9, // 0x8e
        melee_sledgehammer_t9, // 0x8f
        sig_blade, // 0x90
        talent_scavenger, // 0x91
        pistol_burst_t9, // 0x92
        hash_4385cf507401820f, // 0x93
        napalm_strike, // 0x94
        sniper_accurate_t9, // 0x95
        ar_fastfire_t9, // 0x96
        melee_wakizashi_t9, // 0x97
        hero_pineapplegun, // 0x98
        talent_skulker, // 0x99
        hash_48206b17d50533c2, // 0x9a
        sniper_quickscope_t9, // 0x9b
        ability_dog, // 0x9c
        straferun, // 0x9d
        hash_4a12859000892dda, // 0x9e
        eq_seeker_mine, // 0x9f
        ww_crossbow_t8, // 0xa0
        recon_car, // 0xa1
        hash_4b1854c2ff5135b2, // 0xa2
        snowball, // 0xa3
        feature_custom_class_9, // 0xa4
        feature_custom_class_8, // 0xa5
        feature_custom_class_3, // 0xa6
        feature_custom_class_2, // 0xa7
        feature_custom_class_1, // 0xa8
        feature_custom_class_7, // 0xa9
        feature_custom_class_6, // 0xaa
        feature_custom_class_5, // 0xab
        feature_custom_class_4, // 0xac
        uav, // 0xad
        eq_concertina_wire, // 0xae
        gear_scorestreakcharge, // 0xaf
        feature_custom_class_10, // 0xb0
        ar_slowhandling_t9, // 0xb1
        eq_acid_bomb, // 0xb2
        gadget_spawnbeacon, // 0xb3
        ac130, // 0xb4
        talent_ghost, // 0xb5
        hash_4f80a2c3398e97c9, // 0xb6
        tr_precisionsemi_t9, // 0xb7
        helicopter_comlink, // 0xb8
        gadget_armor, // 0xb9
        tr_damagesemi_t9, // 0xba
        feature_cac, // 0xbb
        talent_elemental_pop, // 0xbc
        tomahawk_t8, // 0xbd
        shotgun_pump_t9, // 0xbe
        gadget_health_boost, // 0xbf
        spectre_grenade, // 0xc0
        talent_brawler, // 0xc1
        eq_flash_grenade, // 0xc2
        hash_55c23f24d806e3a6, // 0xc3
        bare_hands, // 0xc4
        ar_slowfire_t9, // 0xc5
        tr_powerburst_t9, // 0xc6
        trophy_system, // 0xc7
        talent_quartermaster, // 0xc8
        hash_59dbe7f72baaa0f0, // 0xc9
        hash_59dbe8f72baaa2a3, // 0xca
        hash_59dbecf72baaa96f, // 0xcb
        hash_59dbedf72baaab22, // 0xcc
        hash_59dbeef72baaacd5, // 0xcd
        ray_gun_mk2, // 0xce
        tr_longburst_t9, // 0xcf
        nuke, // 0xd0
        ww_ray_rifle_t9, // 0xd1
        smg_standard_t9, // 0xd2
        hash_5c80935e7a319f21, // 0xd3
        sig_bow_flame, // 0xd4
        eq_slow_grenade, // 0xd5
        talent_paranoia, // 0xd6
        special_nailgun_t9, // 0xd7
        smg_accurate_t9, // 0xd8
        hash_603c083704cefb0c, // 0xd9
        jetfighter, // 0xda
        talent_teamlink, // 0xdb
        smg_heavy_t9, // 0xdc
        talent_deadsilence, // 0xdd
        tear_gas, // 0xde
        hash_639ebbcda56447e7, // 0xdf
        eq_molotov, // 0xe0
        smg_fastfire_t9, // 0xe1
        hash_646fc27884bdaa02, // 0xe2
        bonuscard_primary_gunfighter, // 0xe3
        lmg_light_t9, // 0xe4
        ai_tank_marker, // 0xe5
        gear_medicalinjectiongun, // 0xe6
        hash_661cd0d6fb33878c, // 0xe7
        gadget_cleanse, // 0xe8
        ar_british_t9, // 0xe9
        hero_flamethrower, // 0xea
        melee_battleaxe_t9, // 0xeb
        sniper_standard_t9, // 0xec
        melee_cane_t9, // 0xed
        smg_spray_t9, // 0xee
        hero_annihilator, // 0xef
        ar_fasthandling_t9, // 0xf0
        ar_mobility_t9, // 0xf1
        planemortar, // 0xf2
        sniper_cannon_t9, // 0xf3
        shotgun_semiauto_t9, // 0xf4
        talent_deathperception_2, // 0xf5
        talent_deathperception_3, // 0xf6
        talent_deathperception_1, // 0xf7
        talent_deathperception_4, // 0xf8
        talent_deathperception_5, // 0xf9
        lmg_fastfire_t9, // 0xfa
        ar_standard_t9, // 0xfb
        weapon_null, // 0xfc
        talent_spycraft, // 0xfd
        hash_7321f9058ee65217, // 0xfe
        satchel_charge, // 0xff
        default_specialist_equipment, // 0x100
        gadget_health_regen_squad, // 0x101
        hash_76b56e7e0b3b7aac, // 0x102
        eq_decoy_grenade, // 0x103
        hash_7716cb3888f5dd8a, // 0x104
        smg_season6_t9, // 0x105
        smg_semiauto_t9, // 0x106
        ray_gun, // 0x107
        hash_788c96e19cc7a46e, // 0x108
        claymore, // 0x109
        talent_elemental_pop_2, // 0x10a
        talent_elemental_pop_3, // 0x10b
        talent_elemental_pop_1, // 0x10c
        talent_elemental_pop_4, // 0x10d
        talent_elemental_pop_5, // 0x10e
        smg_handling_t9, // 0x10f
        cymbal_monkey, // 0x110
        shotgun_fullauto_t9, // 0x111
        hash_7ab3f9a730359659, // 0x112
        gadget_icepick, // 0x113
        ww_mega_barrel_fullauto_micro_missile_t9, // 0x114
        hash_7ca561e40dc3c5de, // 0x115
        basketball, // 0x116
        gadget_camo, // 0x117
        hash_7f79d3ba6ed1a1d7, // 0x118
        lmg_slowfire_t9 // 0x119
    };

    // root: bitSize: 0x1380, members: 16

    // offset: 0x0, bitSize: 0x6d8(0xdb Byte(s))
    region_info dml;
    // offset: 0x6d8, bitSize: 0x318(0x63 Byte(s)), array:0x3(hti:0xffff)
    lootcontracts loot_contracts[3];
    // offset: 0x9f0, bitSize: 0x20(0x4 Byte(s))
    uint hash_5a1a5df0cdadbba3;
    // offset: 0xa10, bitSize: 0x20(0x4 Byte(s))
    uint hash_151eef37df5ee845;
    // offset: 0xa30, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_tier_boost;
    // offset: 0xa38, bitSize: 0x8(0x1 Byte(s))
    hash_54196e9e9860f0be platform;
    // offset: 0xa40, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_party_tier_boost;
    // offset: 0xa48, bitSize: 0x20(0x4 Byte(s))
    uint hash_1e4fbbabf3da13fa;
    // offset: 0xa68, bitSize: 0x110(0x22 Byte(s)), array:0x11(hti:0xffff)
    hash_33944d215cff6222 hash_33944d215cff6222[17];
    // offset: 0xb78, bitSize: 0x5c0(0xb8 Byte(s)), array:0x5c(hti:0x6)
    hash_1c86958671ff27fd hash_4953b2b12f1d6b1b[hash_4b8d95aacf149fb9];
    // offset: 0x1138, bitSize: 0xa0(0x14 Byte(s))
    client_header client;
    // offset: 0x11d8, bitSize: 0x8(0x1 Byte(s))
    byte tier_boost;
    // offset: 0x11e0, bitSize: 0x140(0x28 Byte(s)), array:0xa(hti:0xffff)
    uint hash_3d03353ad0aa2db1[10];
    // offset: 0x1320, bitSize: 0x1
    bool hash_4ca91f34eba5a203;
    // offset: 0x1321, bitSize: 0x5c, array:0x5c(hti:0x6)
    bool hash_4473319d8a8d9dcf[hash_4b8d95aacf149fb9];
};

version hash_208201f60115072c {
    // enums ..... 14 (0xe)
    // structs ... 9 (0x9)
    // header bit size .. 5480 (0x1568)
    // header byte size . 685 (0x2ad)

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
    struct hash_1c86958671ff27fd {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_50ab8b7df567cd2a;
    };

    // bitSize: 0x108, members: 6
    struct lootcontracts {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint xp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint contractid;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:3 contractgamemode;
        // offset: 0x48, bitSize: 0x40(0x8 Byte(s))
        xhash contracthash;
        // offset: 0x88, bitSize: 0x40(0x8 Byte(s))
        uint64 progress;
        // offset: 0xc8, bitSize: 0x40(0x8 Byte(s))
        uint64 target;
    };

    // bitSize: 0x10, members: 3
    struct hash_33944d215cff6222 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_174d79c341ec2c6c;
        // offset: 0x8, bitSize: 0x1
        bool hash_2401d7a2dc706a6c;
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

    // idx 0x5 members: 0xca
    enum hash_10d50fe10481423c {
        ww_mega_barrel_fullauto_blazer_beam_t9, // 0x0
        tr_fastburst_t9, // 0x1
        napalm_strike_zm, // 0x2
        ability_smart_cover, // 0x3
        dart, // 0x4
        ultimate_turret, // 0x5
        hash_5a7fd1af4a1d5c9, // 0x6
        ar_season6_t9, // 0x7
        hash_7a083f7ba43fa06, // 0x8
        lmg_accurate_t9, // 0x9
        melee_etool_t9, // 0xa
        ray_gun_mk2z, // 0xb
        ray_gun_mk2y, // 0xc
        ray_gun_mk2x, // 0xd
        sniper_powersemi_t9, // 0xe
        eq_wraith_fire, // 0xf
        counteruav, // 0x10
        missile_turret, // 0x11
        eq_shroud, // 0x12
        gadget_supplypod, // 0x13
        ar_damage_t9, // 0x14
        homunculus, // 0x15
        spknifeork, // 0x16
        shotgun_leveraction_t9, // 0x17
        melee_bowie, // 0x18
        ww_mega_barrel_fullauto_diffusion_beam_t9, // 0x19
        ww_random_ray_gun1, // 0x1a
        recon_plane, // 0x1b
        sig_buckler_dw, // 0x1c
        hash_18696150427f2efb, // 0x1d
        gadget_vision_pulse, // 0x1e
        waterballoon, // 0x1f
        special_crossbow_t9, // 0x20
        weapon_armor, // 0x21
        eq_arm_blade, // 0x22
        ww_blundergat_t8, // 0x23
        gadget_heat_wave, // 0x24
        eq_localheal, // 0x25
        hoverjet, // 0x26
        nightingale, // 0x27
        pistol_fullauto_t9, // 0x28
        remote_missile, // 0x29
        gadget_smart_cover, // 0x2a
        willy_pete, // 0x2b
        eq_emp_grenade, // 0x2c
        special_grenadelauncher_t9, // 0x2d
        melee_machete_t9, // 0x2e
        launcher_freefire_t9, // 0x2f
        ar_accurate_t9, // 0x30
        sig_lmg, // 0x31
        ww_crossbow_impaler_t8, // 0x32
        ar_soviet_t9, // 0x33
        ww_freezegun_t8, // 0x34
        frag_grenade, // 0x35
        smg_cqb_t9, // 0x36
        knife_loadout, // 0x37
        feature_default_class_1, // 0x38
        feature_default_class_3, // 0x39
        feature_default_class_2, // 0x3a
        feature_default_class_5, // 0x3b
        feature_default_class_4, // 0x3c
        feature_default_class_6, // 0x3d
        hash_28fdaa999c8aa3af, // 0x3e
        spy_wanted_order, // 0x3f
        swat_team, // 0x40
        land_mine, // 0x41
        hatchet, // 0x42
        supplydrop_marker, // 0x43
        mute_smoke, // 0x44
        hash_2ea46ca74ebdfcac, // 0x45
        smg_capacity_t9, // 0x46
        chopper_gunner, // 0x47
        melee_baseballbat_t9, // 0x48
        null_offhand_secondary, // 0x49
        gadget_health_regen, // 0x4a
        hash_31be8125c7d0f273, // 0x4b
        pistol_shotgun_t9, // 0x4c
        listening_device, // 0x4d
        spork_alcatraz, // 0x4e
        drone_squadron, // 0x4f
        pistol_semiauto_t9, // 0x50
        melee_mace_t9, // 0x51
        null_offhand_primary, // 0x52
        smg_burst_t9, // 0x53
        hash_3507beb47a6b634e, // 0x54
        pistol_revolver_t9, // 0x55
        eq_stimshot, // 0x56
        ww_mega_barrel_fullauto_copycat_t9, // 0x57
        overwatch_helicopter, // 0x58
        gadget_jammer, // 0x59
        hash_3ab58e40011df941, // 0x5a
        melee_coldwar_t9_dw, // 0x5b
        launcher_standard_t9, // 0x5c
        melee_sai_t9_dw, // 0x5d
        melee_bowie_bloody, // 0x5e
        eq_sticky_grenade, // 0x5f
        special_ballisticknife_t9_dw, // 0x60
        hash_3f47e8be065a0dc0, // 0x61
        ww_ieu_shockwave_t9, // 0x62
        melee_sledgehammer_t9, // 0x63
        sig_blade, // 0x64
        pistol_burst_t9, // 0x65
        hash_4385cf507401820f, // 0x66
        napalm_strike, // 0x67
        sniper_accurate_t9, // 0x68
        ar_fastfire_t9, // 0x69
        melee_wakizashi_t9, // 0x6a
        hero_pineapplegun, // 0x6b
        hash_48206b17d50533c2, // 0x6c
        sniper_quickscope_t9, // 0x6d
        ability_dog, // 0x6e
        straferun, // 0x6f
        eq_seeker_mine, // 0x70
        ww_crossbow_t8, // 0x71
        recon_car, // 0x72
        hash_4b1854c2ff5135b2, // 0x73
        snowball, // 0x74
        feature_custom_class_9, // 0x75
        feature_custom_class_8, // 0x76
        feature_custom_class_3, // 0x77
        feature_custom_class_2, // 0x78
        feature_custom_class_1, // 0x79
        feature_custom_class_7, // 0x7a
        feature_custom_class_6, // 0x7b
        feature_custom_class_5, // 0x7c
        feature_custom_class_4, // 0x7d
        uav, // 0x7e
        eq_concertina_wire, // 0x7f
        feature_custom_class_10, // 0x80
        ar_slowhandling_t9, // 0x81
        eq_acid_bomb, // 0x82
        gadget_spawnbeacon, // 0x83
        ac130, // 0x84
        tr_precisionsemi_t9, // 0x85
        helicopter_comlink, // 0x86
        gadget_armor, // 0x87
        tr_damagesemi_t9, // 0x88
        feature_cac, // 0x89
        tomahawk_t8, // 0x8a
        shotgun_pump_t9, // 0x8b
        gadget_health_boost, // 0x8c
        spectre_grenade, // 0x8d
        eq_flash_grenade, // 0x8e
        hash_55c23f24d806e3a6, // 0x8f
        bare_hands, // 0x90
        ar_slowfire_t9, // 0x91
        tr_powerburst_t9, // 0x92
        trophy_system, // 0x93
        ray_gun_mk2, // 0x94
        tr_longburst_t9, // 0x95
        nuke, // 0x96
        ww_ray_rifle_t9, // 0x97
        smg_standard_t9, // 0x98
        sig_bow_flame, // 0x99
        eq_slow_grenade, // 0x9a
        special_nailgun_t9, // 0x9b
        smg_accurate_t9, // 0x9c
        hash_603c083704cefb0c, // 0x9d
        jetfighter, // 0x9e
        smg_heavy_t9, // 0x9f
        tear_gas, // 0xa0
        eq_molotov, // 0xa1
        smg_fastfire_t9, // 0xa2
        lmg_light_t9, // 0xa3
        ai_tank_marker, // 0xa4
        gadget_cleanse, // 0xa5
        ar_british_t9, // 0xa6
        hero_flamethrower, // 0xa7
        melee_battleaxe_t9, // 0xa8
        ww_axe_gun_melee_t9, // 0xa9
        sniper_standard_t9, // 0xaa
        melee_cane_t9, // 0xab
        smg_spray_t9, // 0xac
        hero_annihilator, // 0xad
        ar_fasthandling_t9, // 0xae
        ar_mobility_t9, // 0xaf
        planemortar, // 0xb0
        sniper_cannon_t9, // 0xb1
        shotgun_semiauto_t9, // 0xb2
        lmg_fastfire_t9, // 0xb3
        ar_standard_t9, // 0xb4
        weapon_null, // 0xb5
        satchel_charge, // 0xb6
        default_specialist_equipment, // 0xb7
        gadget_health_regen_squad, // 0xb8
        hash_76b56e7e0b3b7aac, // 0xb9
        eq_decoy_grenade, // 0xba
        smg_season6_t9, // 0xbb
        smg_semiauto_t9, // 0xbc
        ray_gun, // 0xbd
        hash_788c96e19cc7a46e, // 0xbe
        claymore, // 0xbf
        smg_handling_t9, // 0xc0
        cymbal_monkey, // 0xc1
        shotgun_fullauto_t9, // 0xc2
        smg_flechette_t9, // 0xc3
        hash_7ab3f9a730359659, // 0xc4
        gadget_icepick, // 0xc5
        ww_mega_barrel_fullauto_micro_missile_t9, // 0xc6
        basketball, // 0xc7
        gadget_camo, // 0xc8
        lmg_slowfire_t9 // 0xc9
    };

    // idx 0x6 members: 0x60
    enum hash_4b8d95aacf149fb9 {
        ww_mega_barrel_fullauto_blazer_beam_t9, // 0x0
        tr_fastburst_t9, // 0x1
        ar_season6_t9, // 0x2
        lmg_accurate_t9, // 0x3
        melee_etool_t9, // 0x4
        ray_gun_mk2z, // 0x5
        ray_gun_mk2y, // 0x6
        ray_gun_mk2x, // 0x7
        sniper_powersemi_t9, // 0x8
        hash_c21b61b32a5d972, // 0x9
        ar_damage_t9, // 0xa
        homunculus, // 0xb
        spknifeork, // 0xc
        shotgun_leveraction_t9, // 0xd
        melee_bowie, // 0xe
        ww_mega_barrel_fullauto_diffusion_beam_t9, // 0xf
        ww_random_ray_gun1, // 0x10
        hash_165cf52ce418f5a1, // 0x11
        hash_18696150427f2efb, // 0x12
        special_crossbow_t9, // 0x13
        ww_blundergat_t8, // 0x14
        pistol_fullauto_t9, // 0x15
        special_grenadelauncher_t9, // 0x16
        melee_machete_t9, // 0x17
        launcher_freefire_t9, // 0x18
        ar_accurate_t9, // 0x19
        ww_crossbow_impaler_t8, // 0x1a
        ar_soviet_t9, // 0x1b
        ww_freezegun_t8, // 0x1c
        smg_cqb_t9, // 0x1d
        knife_loadout, // 0x1e
        hash_28fdaa999c8aa3af, // 0x1f
        hash_2ea46ca74ebdfcac, // 0x20
        smg_capacity_t9, // 0x21
        melee_baseballbat_t9, // 0x22
        pistol_shotgun_t9, // 0x23
        spork_alcatraz, // 0x24
        pistol_semiauto_t9, // 0x25
        melee_mace_t9, // 0x26
        smg_burst_t9, // 0x27
        pistol_revolver_t9, // 0x28
        ww_mega_barrel_fullauto_copycat_t9, // 0x29
        melee_coldwar_t9_dw, // 0x2a
        launcher_standard_t9, // 0x2b
        melee_sai_t9_dw, // 0x2c
        melee_bowie_bloody, // 0x2d
        special_ballisticknife_t9_dw, // 0x2e
        hash_3f47e8be065a0dc0, // 0x2f
        ww_ieu_shockwave_t9, // 0x30
        melee_sledgehammer_t9, // 0x31
        pistol_burst_t9, // 0x32
        hash_4385cf507401820f, // 0x33
        sniper_accurate_t9, // 0x34
        ar_fastfire_t9, // 0x35
        melee_wakizashi_t9, // 0x36
        hash_48206b17d50533c2, // 0x37
        sniper_quickscope_t9, // 0x38
        ww_crossbow_t8, // 0x39
        ar_slowhandling_t9, // 0x3a
        tr_precisionsemi_t9, // 0x3b
        tr_damagesemi_t9, // 0x3c
        shotgun_pump_t9, // 0x3d
        hash_55c23f24d806e3a6, // 0x3e
        ar_slowfire_t9, // 0x3f
        tr_powerburst_t9, // 0x40
        ray_gun_mk2, // 0x41
        tr_longburst_t9, // 0x42
        ww_ray_rifle_t9, // 0x43
        smg_standard_t9, // 0x44
        special_nailgun_t9, // 0x45
        smg_accurate_t9, // 0x46
        hash_603c083704cefb0c, // 0x47
        smg_heavy_t9, // 0x48
        smg_fastfire_t9, // 0x49
        lmg_light_t9, // 0x4a
        ar_british_t9, // 0x4b
        melee_battleaxe_t9, // 0x4c
        ww_axe_gun_melee_t9, // 0x4d
        sniper_standard_t9, // 0x4e
        melee_cane_t9, // 0x4f
        smg_spray_t9, // 0x50
        ar_fasthandling_t9, // 0x51
        ar_mobility_t9, // 0x52
        sniper_cannon_t9, // 0x53
        shotgun_semiauto_t9, // 0x54
        lmg_fastfire_t9, // 0x55
        ar_standard_t9, // 0x56
        smg_season6_t9, // 0x57
        smg_semiauto_t9, // 0x58
        ray_gun, // 0x59
        smg_handling_t9, // 0x5a
        shotgun_fullauto_t9, // 0x5b
        smg_flechette_t9, // 0x5c
        ww_mega_barrel_fullauto_micro_missile_t9, // 0x5d
        basketball, // 0x5e
        lmg_slowfire_t9 // 0x5f
    };

    // idx 0x7 members: 0x13
    enum hash_7493d39e2637c1e7 {
        bonuscard, // 0x0
        hero, // 0x1
        feature, // 0x2
        weapon_special, // 0x3
        weapon_knife, // 0x4
        character, // 0x5
        miscweapon, // 0x6
        weapon_pistol, // 0x7
        killstreak, // 0x8
        weapon_sniper, // 0x9
        talent, // 0xa
        weapon_launcher, // 0xb
        weapon_grenade, // 0xc
        weapon_lmg, // 0xd
        weapon_tactical, // 0xe
        weapon_smg, // 0xf
        hash_7b68172df6035672, // 0x10
        weapon_cqb, // 0x11
        weapon_assault // 0x12
    };

    // idx 0x8 members: 0x20
    enum hash_d5731f85b8cf294 {
        napalm_strike_zm, // 0x0
        dart, // 0x1
        ultimate_turret, // 0x2
        counteruav, // 0x3
        recon_plane, // 0x4
        weapon_armor, // 0x5
        hoverjet, // 0x6
        remote_missile, // 0x7
        spy_med_pack, // 0x8
        sig_lmg, // 0x9
        spy_wanted_order, // 0xa
        swat_team, // 0xb
        supplydrop_marker, // 0xc
        chopper_gunner, // 0xd
        drone_squadron, // 0xe
        overwatch_helicopter, // 0xf
        napalm_strike, // 0x10
        hero_pineapplegun, // 0x11
        ability_dog, // 0x12
        straferun, // 0x13
        recon_car, // 0x14
        uav, // 0x15
        ac130, // 0x16
        helicopter_comlink, // 0x17
        nuke, // 0x18
        sig_bow_flame, // 0x19
        jetfighter, // 0x1a
        ai_tank_marker, // 0x1b
        helicopter_guard, // 0x1c
        hero_flamethrower, // 0x1d
        hero_annihilator, // 0x1e
        planemortar // 0x1f
    };

    // idx 0x9 members: 0x36
    enum hash_507792265be6dcc4 {
        ability_smart_cover, // 0x0
        hash_7a083f7ba43fa06, // 0x1
        eq_wraith_fire, // 0x2
        missile_turret, // 0x3
        eq_shroud, // 0x4
        gadget_supplypod, // 0x5
        gadget_vision_pulse, // 0x6
        waterballoon, // 0x7
        eq_arm_blade, // 0x8
        gadget_heat_wave, // 0x9
        eq_localheal, // 0xa
        gadget_medicalinjectiongun, // 0xb
        nightingale, // 0xc
        gadget_smart_cover, // 0xd
        willy_pete, // 0xe
        eq_emp_grenade, // 0xf
        frag_grenade, // 0x10
        land_mine, // 0x11
        hatchet, // 0x12
        gadget_health_regen, // 0x13
        listening_device, // 0x14
        hash_3507beb47a6b634e, // 0x15
        trophy_system_spy, // 0x16
        eq_stimshot, // 0x17
        gadget_jammer, // 0x18
        hash_3ab58e40011df941, // 0x19
        eq_sticky_grenade, // 0x1a
        eq_seeker_mine, // 0x1b
        hash_4b1854c2ff5135b2, // 0x1c
        snowball, // 0x1d
        eq_concertina_wire, // 0x1e
        eq_acid_bomb, // 0x1f
        gadget_spawnbeacon, // 0x20
        gadget_armor, // 0x21
        tomahawk_t8, // 0x22
        gadget_health_boost, // 0x23
        spectre_grenade, // 0x24
        eq_flash_grenade, // 0x25
        trophy_system, // 0x26
        eq_slow_grenade, // 0x27
        tear_gas, // 0x28
        eq_molotov, // 0x29
        gadget_cleanse, // 0x2a
        satchel_charge, // 0x2b
        default_specialist_equipment, // 0x2c
        gadget_health_regen_squad, // 0x2d
        hash_76b56e7e0b3b7aac, // 0x2e
        eq_decoy_grenade, // 0x2f
        hash_788c96e19cc7a46e, // 0x30
        claymore, // 0x31
        cymbal_monkey, // 0x32
        hash_7ab3f9a730359659, // 0x33
        gadget_icepick, // 0x34
        gadget_camo // 0x35
    };

    // idx 0xa members: 0x3c
    enum hash_1e2de876fb880be2 {
        quickdraw, // 0x0
        acog, // 0x1
        dw, // 0x2
        ir, // 0x3
        barrel2, // 0x4
        mixunder2, // 0x5
        fastreload, // 0x6
        heavy, // 0x7
        steadyaim, // 0x8
        stalker, // 0x9
        barrel, // 0xa
        mixstock, // 0xb
        smoothzoom2, // 0xc
        mixclip2, // 0xd
        reflex4, // 0xe
        reflex3, // 0xf
        reflex2, // 0x10
        stalker2, // 0x11
        extclip2, // 0x12
        tactical, // 0x13
        steadyaim2, // 0x14
        mixclip, // 0x15
        light, // 0x16
        speedgrip2, // 0x17
        mixhandle, // 0x18
        mixunder, // 0x19
        mixbarrel2, // 0x1a
        mixstock2, // 0x1b
        reddot, // 0x1c
        handle, // 0x1d
        mixmuzzle2, // 0x1e
        extclip, // 0x1f
        light2, // 0x20
        heavy2, // 0x21
        holo, // 0x22
        elo, // 0x23
        fastreload2, // 0x24
        scope3x, // 0x25
        scope4x, // 0x26
        mixhandle2, // 0x27
        compensator, // 0x28
        mixbody, // 0x29
        quickdraw2, // 0x2a
        suppressed2, // 0x2b
        speedgrip, // 0x2c
        sprintout2, // 0x2d
        suppressed, // 0x2e
        sprintout, // 0x2f
        grip2, // 0x30
        mixmuzzle, // 0x31
        handle2, // 0x32
        compensator2, // 0x33
        mixbody2, // 0x34
        dualoptic, // 0x35
        grip, // 0x36
        smoothzoom, // 0x37
        reflex, // 0x38
        mixbarrel, // 0x39
        elo3, // 0x3a
        elo2 // 0x3b
    };

    // idx 0xb members: 0x3e
    enum hash_48d8d533750ed177 {
        talent_gungho, // 0x0
        talent_phdslider, // 0x1
        talent_engineer, // 0x2
        talent_coldblooded, // 0x3
        hash_9fb2125b3e673e5, // 0x4
        gear_armor, // 0x5
        hash_cd70e712f842296, // 0x6
        talent_tracker, // 0x7
        hash_101808cdfcd390d6, // 0x8
        hash_128256155e755170, // 0x9
        hash_16cfc7f70dbd8712, // 0xa
        talent_flakjacket, // 0xb
        talent_logistics, // 0xc
        talent_looter, // 0xd
        gadget_medicalinjectiongun, // 0xe
        hash_1d8863d0b864a48b, // 0xf
        hash_1db03fa9862ba330, // 0x10
        hash_20290a682a974c94, // 0x11
        talent_dexterity, // 0x12
        hash_249e75e962ea5275, // 0x13
        talent_resistance, // 0x14
        gear_awareness, // 0x15
        hash_2c3a32e6e2afd1f2, // 0x16
        hash_311283e3107dec74, // 0x17
        talent_lightweight, // 0x18
        talent_awareness, // 0x19
        gear_equipmentcharge, // 0x1a
        talent_phdslider_1, // 0x1b
        hash_38c08136902fd553, // 0x1c
        hash_39045b0020cc3e00, // 0x1d
        hash_3c323c7819b10b4d, // 0x1e
        hash_3c60422123a9075b, // 0x1f
        talent_scavenger, // 0x20
        talent_skulker, // 0x21
        gear_scorestreakcharge, // 0x22
        talent_ghost, // 0x23
        hash_4f80a2c3398e97c9, // 0x24
        talent_elemental_pop, // 0x25
        talent_brawler, // 0x26
        talent_quartermaster, // 0x27
        hash_59dbe7f72baaa0f0, // 0x28
        hash_59dbe8f72baaa2a3, // 0x29
        hash_59dbecf72baaa96f, // 0x2a
        hash_59dbedf72baaab22, // 0x2b
        hash_59dbeef72baaacd5, // 0x2c
        hash_5c80935e7a319f21, // 0x2d
        talent_paranoia, // 0x2e
        talent_teamlink, // 0x2f
        talent_deadsilence, // 0x30
        hash_646fc27884bdaa02, // 0x31
        gear_medicalinjectiongun, // 0x32
        hash_661cd0d6fb33878c, // 0x33
        talent_spycraft, // 0x34
        hash_7321f9058ee65217, // 0x35
        hash_7716cb3888f5dd8a, // 0x36
        talent_elemental_pop_2, // 0x37
        talent_elemental_pop_3, // 0x38
        talent_elemental_pop_1, // 0x39
        talent_elemental_pop_4, // 0x3a
        talent_elemental_pop_5, // 0x3b
        hash_7ca561e40dc3c5de, // 0x3c
        hash_7f79d3ba6ed1a1d7 // 0x3d
    };

    // idx 0xc members: 0x16
    enum hash_66db207c660e33f3 {
        bonuscard_overkill, // 0x0
        bonuscard_underkill, // 0x1
        bonuscard_perk_1_greed, // 0x2
        talent_mulekick, // 0x3
        talent_deathperception, // 0x4
        talent_mulekick_1, // 0x5
        talent_mulekick_2, // 0x6
        talent_mulekick_3, // 0x7
        talent_mulekick_4, // 0x8
        talent_mulekick_5, // 0x9
        talent_phdslider_4, // 0xa
        talent_phdslider_5, // 0xb
        talent_phdslider_2, // 0xc
        talent_phdslider_3, // 0xd
        hash_4a12859000892dda, // 0xe
        hash_639ebbcda56447e7, // 0xf
        bonuscard_primary_gunfighter, // 0x10
        talent_deathperception_2, // 0x11
        talent_deathperception_3, // 0x12
        talent_deathperception_1, // 0x13
        talent_deathperception_4, // 0x14
        talent_deathperception_5 // 0x15
    };

    // idx 0xd members: 0x11e
    enum hash_1acf39b1d1bee1d5 {
        bonuscard_overkill, // 0x0
        ww_mega_barrel_fullauto_blazer_beam_t9, // 0x1
        talent_gungho, // 0x2
        talent_phdslider, // 0x3
        tr_fastburst_t9, // 0x4
        talent_engineer, // 0x5
        napalm_strike_zm, // 0x6
        ability_smart_cover, // 0x7
        dart, // 0x8
        ultimate_turret, // 0x9
        hash_5a7fd1af4a1d5c9, // 0xa
        ar_season6_t9, // 0xb
        hash_7a083f7ba43fa06, // 0xc
        talent_coldblooded, // 0xd
        lmg_accurate_t9, // 0xe
        melee_etool_t9, // 0xf
        ray_gun_mk2z, // 0x10
        ray_gun_mk2y, // 0x11
        ray_gun_mk2x, // 0x12
        hash_9fb2125b3e673e5, // 0x13
        sniper_powersemi_t9, // 0x14
        eq_wraith_fire, // 0x15
        gear_armor, // 0x16
        counteruav, // 0x17
        hash_cd70e712f842296, // 0x18
        talent_tracker, // 0x19
        missile_turret, // 0x1a
        eq_shroud, // 0x1b
        gadget_supplypod, // 0x1c
        hash_101808cdfcd390d6, // 0x1d
        ar_damage_t9, // 0x1e
        homunculus, // 0x1f
        spknifeork, // 0x20
        shotgun_leveraction_t9, // 0x21
        melee_bowie, // 0x22
        hash_128256155e755170, // 0x23
        ww_mega_barrel_fullauto_diffusion_beam_t9, // 0x24
        ww_random_ray_gun1, // 0x25
        bonuscard_underkill, // 0x26
        recon_plane, // 0x27
        hash_16cfc7f70dbd8712, // 0x28
        bonuscard_perk_1_greed, // 0x29
        sig_buckler_dw, // 0x2a
        talent_mulekick, // 0x2b
        talent_flakjacket, // 0x2c
        hash_18696150427f2efb, // 0x2d
        gadget_vision_pulse, // 0x2e
        waterballoon, // 0x2f
        special_crossbow_t9, // 0x30
        weapon_armor, // 0x31
        eq_arm_blade, // 0x32
        talent_logistics, // 0x33
        ww_blundergat_t8, // 0x34
        gadget_heat_wave, // 0x35
        eq_localheal, // 0x36
        hoverjet, // 0x37
        talent_looter, // 0x38
        gadget_medicalinjectiongun, // 0x39
        hash_1d8863d0b864a48b, // 0x3a
        hash_1db03fa9862ba330, // 0x3b
        nightingale, // 0x3c
        talent_deathperception, // 0x3d
        pistol_fullauto_t9, // 0x3e
        remote_missile, // 0x3f
        gadget_smart_cover, // 0x40
        hash_20290a682a974c94, // 0x41
        willy_pete, // 0x42
        eq_emp_grenade, // 0x43
        special_grenadelauncher_t9, // 0x44
        melee_machete_t9, // 0x45
        talent_dexterity, // 0x46
        launcher_freefire_t9, // 0x47
        hash_249e75e962ea5275, // 0x48
        ar_accurate_t9, // 0x49
        sig_lmg, // 0x4a
        ww_crossbow_impaler_t8, // 0x4b
        ar_soviet_t9, // 0x4c
        ww_freezegun_t8, // 0x4d
        frag_grenade, // 0x4e
        smg_cqb_t9, // 0x4f
        knife_loadout, // 0x50
        feature_default_class_1, // 0x51
        feature_default_class_3, // 0x52
        feature_default_class_2, // 0x53
        feature_default_class_5, // 0x54
        feature_default_class_4, // 0x55
        feature_default_class_6, // 0x56
        hash_28fdaa999c8aa3af, // 0x57
        talent_resistance, // 0x58
        spy_wanted_order, // 0x59
        swat_team, // 0x5a
        gear_awareness, // 0x5b
        land_mine, // 0x5c
        hatchet, // 0x5d
        hash_2c3a32e6e2afd1f2, // 0x5e
        talent_mulekick_1, // 0x5f
        talent_mulekick_2, // 0x60
        talent_mulekick_3, // 0x61
        talent_mulekick_4, // 0x62
        talent_mulekick_5, // 0x63
        supplydrop_marker, // 0x64
        mute_smoke, // 0x65
        hash_2ea46ca74ebdfcac, // 0x66
        smg_capacity_t9, // 0x67
        chopper_gunner, // 0x68
        melee_baseballbat_t9, // 0x69
        hash_311283e3107dec74, // 0x6a
        null_offhand_secondary, // 0x6b
        gadget_health_regen, // 0x6c
        hash_31be8125c7d0f273, // 0x6d
        pistol_shotgun_t9, // 0x6e
        listening_device, // 0x6f
        talent_lightweight, // 0x70
        talent_awareness, // 0x71
        spork_alcatraz, // 0x72
        drone_squadron, // 0x73
        gear_equipmentcharge, // 0x74
        talent_phdslider_4, // 0x75
        talent_phdslider_5, // 0x76
        talent_phdslider_2, // 0x77
        talent_phdslider_3, // 0x78
        talent_phdslider_1, // 0x79
        pistol_semiauto_t9, // 0x7a
        melee_mace_t9, // 0x7b
        null_offhand_primary, // 0x7c
        smg_burst_t9, // 0x7d
        hash_3507beb47a6b634e, // 0x7e
        pistol_revolver_t9, // 0x7f
        eq_stimshot, // 0x80
        ww_mega_barrel_fullauto_copycat_t9, // 0x81
        hash_38c08136902fd553, // 0x82
        hash_39045b0020cc3e00, // 0x83
        overwatch_helicopter, // 0x84
        gadget_jammer, // 0x85
        hash_3ab58e40011df941, // 0x86
        melee_coldwar_t9_dw, // 0x87
        launcher_standard_t9, // 0x88
        melee_sai_t9_dw, // 0x89
        hash_3c323c7819b10b4d, // 0x8a
        hash_3c60422123a9075b, // 0x8b
        melee_bowie_bloody, // 0x8c
        eq_sticky_grenade, // 0x8d
        special_ballisticknife_t9_dw, // 0x8e
        hash_3f47e8be065a0dc0, // 0x8f
        ww_ieu_shockwave_t9, // 0x90
        melee_sledgehammer_t9, // 0x91
        sig_blade, // 0x92
        talent_scavenger, // 0x93
        pistol_burst_t9, // 0x94
        hash_4385cf507401820f, // 0x95
        napalm_strike, // 0x96
        sniper_accurate_t9, // 0x97
        ar_fastfire_t9, // 0x98
        melee_wakizashi_t9, // 0x99
        hero_pineapplegun, // 0x9a
        talent_skulker, // 0x9b
        hash_48206b17d50533c2, // 0x9c
        sniper_quickscope_t9, // 0x9d
        ability_dog, // 0x9e
        straferun, // 0x9f
        hash_4a12859000892dda, // 0xa0
        eq_seeker_mine, // 0xa1
        ww_crossbow_t8, // 0xa2
        recon_car, // 0xa3
        hash_4b1854c2ff5135b2, // 0xa4
        snowball, // 0xa5
        feature_custom_class_9, // 0xa6
        feature_custom_class_8, // 0xa7
        feature_custom_class_3, // 0xa8
        feature_custom_class_2, // 0xa9
        feature_custom_class_1, // 0xaa
        feature_custom_class_7, // 0xab
        feature_custom_class_6, // 0xac
        feature_custom_class_5, // 0xad
        feature_custom_class_4, // 0xae
        uav, // 0xaf
        eq_concertina_wire, // 0xb0
        gear_scorestreakcharge, // 0xb1
        feature_custom_class_10, // 0xb2
        ar_slowhandling_t9, // 0xb3
        eq_acid_bomb, // 0xb4
        gadget_spawnbeacon, // 0xb5
        ac130, // 0xb6
        talent_ghost, // 0xb7
        hash_4f80a2c3398e97c9, // 0xb8
        tr_precisionsemi_t9, // 0xb9
        helicopter_comlink, // 0xba
        gadget_armor, // 0xbb
        tr_damagesemi_t9, // 0xbc
        feature_cac, // 0xbd
        talent_elemental_pop, // 0xbe
        tomahawk_t8, // 0xbf
        shotgun_pump_t9, // 0xc0
        gadget_health_boost, // 0xc1
        spectre_grenade, // 0xc2
        talent_brawler, // 0xc3
        eq_flash_grenade, // 0xc4
        hash_55c23f24d806e3a6, // 0xc5
        bare_hands, // 0xc6
        ar_slowfire_t9, // 0xc7
        tr_powerburst_t9, // 0xc8
        trophy_system, // 0xc9
        talent_quartermaster, // 0xca
        hash_59dbe7f72baaa0f0, // 0xcb
        hash_59dbe8f72baaa2a3, // 0xcc
        hash_59dbecf72baaa96f, // 0xcd
        hash_59dbedf72baaab22, // 0xce
        hash_59dbeef72baaacd5, // 0xcf
        ray_gun_mk2, // 0xd0
        tr_longburst_t9, // 0xd1
        nuke, // 0xd2
        ww_ray_rifle_t9, // 0xd3
        smg_standard_t9, // 0xd4
        hash_5c80935e7a319f21, // 0xd5
        sig_bow_flame, // 0xd6
        eq_slow_grenade, // 0xd7
        talent_paranoia, // 0xd8
        special_nailgun_t9, // 0xd9
        smg_accurate_t9, // 0xda
        hash_603c083704cefb0c, // 0xdb
        jetfighter, // 0xdc
        talent_teamlink, // 0xdd
        smg_heavy_t9, // 0xde
        talent_deadsilence, // 0xdf
        tear_gas, // 0xe0
        hash_639ebbcda56447e7, // 0xe1
        eq_molotov, // 0xe2
        smg_fastfire_t9, // 0xe3
        hash_646fc27884bdaa02, // 0xe4
        bonuscard_primary_gunfighter, // 0xe5
        lmg_light_t9, // 0xe6
        ai_tank_marker, // 0xe7
        gear_medicalinjectiongun, // 0xe8
        hash_661cd0d6fb33878c, // 0xe9
        gadget_cleanse, // 0xea
        ar_british_t9, // 0xeb
        hero_flamethrower, // 0xec
        melee_battleaxe_t9, // 0xed
        ww_axe_gun_melee_t9, // 0xee
        sniper_standard_t9, // 0xef
        melee_cane_t9, // 0xf0
        smg_spray_t9, // 0xf1
        hero_annihilator, // 0xf2
        ar_fasthandling_t9, // 0xf3
        ar_mobility_t9, // 0xf4
        planemortar, // 0xf5
        sniper_cannon_t9, // 0xf6
        shotgun_semiauto_t9, // 0xf7
        talent_deathperception_2, // 0xf8
        talent_deathperception_3, // 0xf9
        talent_deathperception_1, // 0xfa
        talent_deathperception_4, // 0xfb
        talent_deathperception_5, // 0xfc
        lmg_fastfire_t9, // 0xfd
        ar_standard_t9, // 0xfe
        weapon_null, // 0xff
        talent_spycraft, // 0x100
        hash_7321f9058ee65217, // 0x101
        satchel_charge, // 0x102
        default_specialist_equipment, // 0x103
        gadget_health_regen_squad, // 0x104
        hash_76b56e7e0b3b7aac, // 0x105
        eq_decoy_grenade, // 0x106
        hash_7716cb3888f5dd8a, // 0x107
        smg_season6_t9, // 0x108
        smg_semiauto_t9, // 0x109
        ray_gun, // 0x10a
        hash_788c96e19cc7a46e, // 0x10b
        claymore, // 0x10c
        talent_elemental_pop_2, // 0x10d
        talent_elemental_pop_3, // 0x10e
        talent_elemental_pop_1, // 0x10f
        talent_elemental_pop_4, // 0x110
        talent_elemental_pop_5, // 0x111
        smg_handling_t9, // 0x112
        cymbal_monkey, // 0x113
        shotgun_fullauto_t9, // 0x114
        smg_flechette_t9, // 0x115
        hash_7ab3f9a730359659, // 0x116
        gadget_icepick, // 0x117
        ww_mega_barrel_fullauto_micro_missile_t9, // 0x118
        hash_7ca561e40dc3c5de, // 0x119
        basketball, // 0x11a
        gadget_camo, // 0x11b
        hash_7f79d3ba6ed1a1d7, // 0x11c
        lmg_slowfire_t9 // 0x11d
    };

    // root: bitSize: 0x14b8, members: 16

    // offset: 0x0, bitSize: 0x6d8(0xdb Byte(s))
    region_info dml;
    // offset: 0x6d8, bitSize: 0x318(0x63 Byte(s)), array:0x3(hti:0xffff)
    lootcontracts loot_contracts[3];
    // offset: 0x9f0, bitSize: 0x20(0x4 Byte(s))
    uint hash_5a1a5df0cdadbba3;
    // offset: 0xa10, bitSize: 0x20(0x4 Byte(s))
    uint hash_151eef37df5ee845;
    // offset: 0xa30, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_tier_boost;
    // offset: 0xa38, bitSize: 0x8(0x1 Byte(s))
    hash_54196e9e9860f0be platform;
    // offset: 0xa40, bitSize: 0x8(0x1 Byte(s))
    byte bo_pass_party_tier_boost;
    // offset: 0xa48, bitSize: 0x20(0x4 Byte(s))
    uint hash_1e4fbbabf3da13fa;
    // offset: 0xa68, bitSize: 0x200(0x40 Byte(s)), array:0x20(hti:0xffff)
    hash_33944d215cff6222 hash_33944d215cff6222[32];
    // offset: 0xc68, bitSize: 0x600(0xc0 Byte(s)), array:0x60(hti:0x6)
    hash_1c86958671ff27fd hash_4953b2b12f1d6b1b[hash_4b8d95aacf149fb9];
    // offset: 0x1268, bitSize: 0xa0(0x14 Byte(s))
    client_header client;
    // offset: 0x1308, bitSize: 0x8(0x1 Byte(s))
    byte tier_boost;
    // offset: 0x1310, bitSize: 0x140(0x28 Byte(s)), array:0xa(hti:0xffff)
    uint hash_3d03353ad0aa2db1[10];
    // offset: 0x1450, bitSize: 0x1
    bool hash_4ca91f34eba5a203;
    // offset: 0x1451, bitSize: 0x60(0xc Byte(s)), array:0x60(hti:0x6)
    bool hash_4473319d8a8d9dcf[hash_4b8d95aacf149fb9];
};

