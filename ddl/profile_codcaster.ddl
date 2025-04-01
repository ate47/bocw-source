// file .... profile_codcaster.ddl

#redirect hash_1e96ff1b2e87fd28;

version hash_3eb1fd7cd24cd83c {
    // enums ..... 2 (0x2)
    // structs ... 3 (0x3)
    // header bit size .. 98088 (0x17f28)
    // header byte size . 12261 (0x2fe5)

    // bitSize: 0x70, members: 6
    struct codcaster_camera_pose {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 fov;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        int:12 angles_yaw;
        // offset: 0x18, bitSize: 0x10(0x2 Byte(s))
        int:12 angles_pitch;
        // offset: 0x28, bitSize: 0x18(0x3 Byte(s))
        int:24 origin_x;
        // offset: 0x40, bitSize: 0x18(0x3 Byte(s))
        int:24 origin_y;
        // offset: 0x58, bitSize: 0x18(0x3 Byte(s))
        int:24 origin_z;
    };

    // bitSize: 0x8c8, members: 2
    struct codcaster_map_data {
        // offset: 0x0, bitSize: 0x8c0(0x118 Byte(s)), array:0x14(hti:0xffff)
        codcaster_camera_pose poses[20];
        // offset: 0x8c0, bitSize: 0x8(0x1 Byte(s))
        uint:8 mapindex;
    };

    // idx 0x0 members: 0x2b
    enum mpmaps {
        mp_sm_game_show, // 0x0
        mp_miami, // 0x1
        mp_moscow, // 0x2
        mp_amerika, // 0x3
        wz_zoo, // 0x4
        mp_satellite, // 0x5
        mp_cartel, // 0x6
        mp_sm_finance, // 0x7
        mp_raid_rm, // 0x8
        mp_express_rm, // 0x9
        mp_drivein_rm, // 0xa
        hash_2a5c9d82575f9045, // 0xb
        wz_sanatorium, // 0xc
        wz_golova, // 0xd
        mp_nuketown6, // 0xe
        mp_sm_amsterdam, // 0xf
        wz_ski_slopes, // 0x10
        mp_firebase, // 0x11
        mp_sm_market, // 0x12
        mp_kgb, // 0x13
        mp_mall, // 0x14
        mp_echelon, // 0x15
        mp_cliffhanger, // 0x16
        hash_4f0163e68a9333ac, // 0x17
        mp_village_rm, // 0x18
        mp_zoo_rm, // 0x19
        mp_slums_rm, // 0x1a
        mp_sm_deptstore, // 0x1b
        mp_sm_gas_station, // 0x1c
        mp_dune, // 0x1d
        mp_sm_vault, // 0x1e
        mp_black_sea, // 0x1f
        mp_sm_central, // 0x20
        mp_tank, // 0x21
        mp_miami_strike, // 0x22
        mp_apocalypse, // 0x23
        mp_tundra, // 0x24
        mp_hijacked_rm, // 0x25
        wz_duga, // 0x26
        mp_sm_berlin_tunnel, // 0x27
        wz_forest, // 0x28
        wz_russia, // 0x29
        mp_paintball_rm // 0x2a
    };

    // idx 0x1 members: 0x1c
    enum hash_f63c30a3cf473b7 {
        mp_sm_game_show, // 0x0
        mp_amerika, // 0x1
        mp_satellite, // 0x2
        mp_sm_finance, // 0x3
        mp_raid_rm, // 0x4
        mp_express_rm, // 0x5
        mp_drivein_rm, // 0x6
        hash_2a5c9d82575f9045, // 0x7
        mp_nuketown6, // 0x8
        mp_sm_amsterdam, // 0x9
        mp_sm_market, // 0xa
        mp_kgb, // 0xb
        mp_echelon, // 0xc
        mp_cliffhanger, // 0xd
        hash_4f0163e68a9333ac, // 0xe
        mp_village_rm, // 0xf
        mp_zoo_rm, // 0x10
        mp_slums_rm, // 0x11
        mp_sm_deptstore, // 0x12
        mp_sm_gas_station, // 0x13
        mp_dune, // 0x14
        mp_sm_vault, // 0x15
        mp_tank, // 0x16
        mp_apocalypse, // 0x17
        mp_tundra, // 0x18
        mp_hijacked_rm, // 0x19
        mp_sm_berlin_tunnel, // 0x1a
        mp_paintball_rm // 0x1b
    };

    // root: bitSize: 0x17e78, members: 76

    // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
    uint:2 codcaster_xray_advanced_target;
    // offset: 0x8, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
    byte hash_7b08ba3e1f5fe79d[3];
    // offset: 0x20, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
    byte hash_7b08b73e1f5fe284[3];
    // offset: 0x38, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
    byte hash_7b08b83e1f5fe437[3];
    // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
    uint:3 codcaster_seriesscore_team1;
    // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
    uint:3 codcaster_seriesscore_team2;
    // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
    uint:8 codcaster_ticker_bottom;
    // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
    uint:5 hash_61aefca0f8ee525e;
    // offset: 0x70, bitSize: 0x100(0x20 Byte(s))
    string(32) hash_40e24577491cdacc;
    // offset: 0x170, bitSize: 0x8(0x1 Byte(s))
    uint:5 hash_6d318f5847de29a9;
    // offset: 0x178, bitSize: 0x100(0x20 Byte(s))
    string(32) hash_2f78e6820a511fdb;
    // offset: 0x278, bitSize: 0x8(0x1 Byte(s))
    uint:8 codcaster_ticker_top;
    // offset: 0x280, bitSize: 0x17998(0x2f33 Byte(s)), array:0x2b(hti:0x0)
    codcaster_map_data codcaster_maps[mpmaps];
    // offset: 0x17c18, bitSize: 0x8(0x1 Byte(s))
    uint:7 hash_663713b2117f805f;
    // offset: 0x17c20, bitSize: 0x20(0x4 Byte(s))
    string(4) hash_3ae23af8b88b6321;
    // offset: 0x17c40, bitSize: 0x8(0x1 Byte(s))
    uint:2 codcaster_teamlist_type;
    // offset: 0x17c48, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
    byte hash_4c5cd8cc11adcdba[3];
    // offset: 0x17c60, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
    byte hash_4c5cd7cc11adcc07[3];
    // offset: 0x17c78, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
    byte hash_4c5cd6cc11adca54[3];
    // offset: 0x17c90, bitSize: 0x100(0x20 Byte(s))
    string(32) codcaster_datacenter_cdl;
    // offset: 0x17d90, bitSize: 0x20(0x4 Byte(s))
    float codcaster_freecam_smooth_factor;
    // offset: 0x17db0, bitSize: 0x8(0x1 Byte(s))
    uint:2 codcaster_xray_target;
    // offset: 0x17db8, bitSize: 0x20(0x4 Byte(s))
    string(4) hash_2d6cdf404218ddc4;
    // offset: 0x17dd8, bitSize: 0x20(0x4 Byte(s))
    float codcaster_freecam_slow_speed_modifier;
    // offset: 0x17df8, bitSize: 0x8(0x1 Byte(s))
    uint:4 codcaster_seriesscore_wins;
    // offset: 0x17e00, bitSize: 0x20(0x4 Byte(s))
    float codcaster_freecam_base_speed;
    // offset: 0x17e20, bitSize: 0x20(0x4 Byte(s))
    float codcaster_freecam_high_speed_modifier;
    // offset: 0x17e40, bitSize: 0x8(0x1 Byte(s))
    uint:8 codcaster_freecam_default_fov;
    // offset: 0x17e48, bitSize: 0x1
    bool codcaster_seriesscore;
    // offset: 0x17e49, bitSize: 0x1
    bool codcaster_player_scoring;
    // offset: 0x17e4a, bitSize: 0x1
    bool codcaster_teamscore;
    // offset: 0x17e4b, bitSize: 0x1
    bool codcaster_playernumbers_minimap;
    // offset: 0x17e4c, bitSize: 0x1
    bool codcaster_freecam_speed_modifier_mode;
    // offset: 0x17e4d, bitSize: 0x1
    bool codcaster_playercard;
    // offset: 0x17e4e, bitSize: 0x1
    bool hash_23c54591c2b5fb47;
    // offset: 0x17e4f, bitSize: 0x1
    bool codcaster_playernumbers_nameplates;
    // offset: 0x17e50, bitSize: 0x1
    bool codcaster_playernumbers_cdl;
    // offset: 0x17e51, bitSize: 0x1
    bool codcaster_playercard_weapon;
    // offset: 0x17e52, bitSize: 0x1
    bool codcaster_teamlist;
    // offset: 0x17e53, bitSize: 0x1
    bool codcaster_xray;
    // offset: 0x17e54, bitSize: 0x1
    bool codcaster_playercard_portrait;
    // offset: 0x17e55, bitSize: 0x1
    bool hash_291d6ca28128d66c;
    // offset: 0x17e56, bitSize: 0x1
    bool codcaster_fieldupgrade_notification;
    // offset: 0x17e57, bitSize: 0x1
    bool hash_61d8eb8b7799d32a;
    // offset: 0x17e58, bitSize: 0x1
    bool codcaster_freecam_enable_collisions;
    // offset: 0x17e59, bitSize: 0x1
    bool codcaster_playercard_equipment;
    // offset: 0x17e5a, bitSize: 0x1
    bool hash_9d1cbd4a024ad49;
    // offset: 0x17e5b, bitSize: 0x1
    bool codcaster_status_effects_disabled;
    // offset: 0x17e5c, bitSize: 0x1
    bool codcaster_aerialcam_pucks;
    // offset: 0x17e5d, bitSize: 0x1
    bool codcaster_killfeed;
    // offset: 0x17e5e, bitSize: 0x1
    bool codcaster_nameplates_name;
    // offset: 0x17e5f, bitSize: 0x1
    bool codcaster_scorestreaks;
    // offset: 0x17e60, bitSize: 0x1
    bool codcaster_flip_scorepanel;
    // offset: 0x17e61, bitSize: 0x1
    bool codcaster_playernumbers_teamlist;
    // offset: 0x17e62, bitSize: 0x1
    bool hash_63f8c32e3c9f02fc;
    // offset: 0x17e63, bitSize: 0x1
    bool codcaster_freecam_pucks;
    // offset: 0x17e64, bitSize: 0x1
    bool codcaster_freecam_movement_mode;
    // offset: 0x17e65, bitSize: 0x1
    bool hash_b99ef228cd804ac;
    // offset: 0x17e66, bitSize: 0x1
    bool codcaster_playernumbers_playercard;
    // offset: 0x17e67, bitSize: 0x1
    bool codcaster_team_identity;
    // offset: 0x17e68, bitSize: 0x1
    bool hash_268ae4806692f872;
    // offset: 0x17e69, bitSize: 0x1
    bool codcaster_waypoint_markers;
    // offset: 0x17e6a, bitSize: 0x1
    bool hash_1f6dadc29bedae7b;
    // offset: 0x17e6b, bitSize: 0x1
    bool hash_7a2b47d62341e8ac;
    // offset: 0x17e6c, bitSize: 0x1
    bool codcaster_nameplates;
    // offset: 0x17e6d, bitSize: 0x1
    bool hash_5a7fdefefad7b113;
    // offset: 0x17e6e, bitSize: 0x1
    bool codcaster_notification_announcements;
    // offset: 0x17e6f, bitSize: 0x1
    bool hash_70ede64e018ba028;
    // offset: 0x17e70, bitSize: 0x1
    bool hash_52757ff0a46771dc;
    // offset: 0x17e71, bitSize: 0x1
    bool codcaster_minimap_show_faces_enabled;
    // offset: 0x17e72, bitSize: 0x1
    bool codcaster_playernumbers;
    // offset: 0x17e73, bitSize: 0x1
    bool codcaster_scorestreaks_notification;
    // offset: 0x17e74, bitSize: 0x1
    bool codcaster_nameplates_health;
    // offset: 0x17e75, bitSize: 0x1
    bool codcaster_minimap;
    // offset: 0x17e76, bitSize: 0x1
    bool hash_528c193ff09047c2;
    // offset: 0x17e77, bitSize: 0x1
    bool hash_41e9a4ed118f1d5d;
};

version hash_b22e17c2f335ff45 {
    // enums ..... 2 (0x2)
    // structs ... 3 (0x3)
    // header bit size .. 57544 (0xe0c8)
    // header byte size . 7193 (0x1c19)

    // bitSize: 0x70, members: 6
    struct codcaster_camera_pose {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 fov;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        int:12 angles_yaw;
        // offset: 0x18, bitSize: 0x10(0x2 Byte(s))
        int:12 angles_pitch;
        // offset: 0x28, bitSize: 0x18(0x3 Byte(s))
        int:24 origin_x;
        // offset: 0x40, bitSize: 0x18(0x3 Byte(s))
        int:24 origin_y;
        // offset: 0x58, bitSize: 0x18(0x3 Byte(s))
        int:24 origin_z;
    };

    // bitSize: 0x8c8, members: 2
    struct codcaster_map_data {
        // offset: 0x0, bitSize: 0x8c0(0x118 Byte(s)), array:0x14(hti:0xffff)
        codcaster_camera_pose poses[20];
        // offset: 0x8c0, bitSize: 0x8(0x1 Byte(s))
        uint:8 mapindex;
    };

    // idx 0x0 members: 0x19
    enum mpmaps {
        mp_sm_game_show, // 0x0
        mp_miami, // 0x1
        mp_moscow, // 0x2
        mp_satellite, // 0x3
        mp_cartel, // 0x4
        mp_sm_finance, // 0x5
        mp_raid_rm, // 0x6
        hash_24f907c5fd362ecd, // 0x7
        mp_nuketown6, // 0x8
        wz_ski_slopes, // 0x9
        mp_kgb, // 0xa
        mp_mall, // 0xb
        mp_echelon, // 0xc
        mp_cliffhanger, // 0xd
        wz_dob, // 0xe
        mp_dune, // 0xf
        mp_black_sea, // 0x10
        mp_sm_central, // 0x11
        mp_tank, // 0x12
        mp_apocalypse, // 0x13
        mp_tundra, // 0x14
        wz_duga, // 0x15
        mp_sm_berlin_tunnel, // 0x16
        wz_forest, // 0x17
        wz_russia // 0x18
    };

    // idx 0x1 members: 0xd
    enum hash_f63c30a3cf473b7 {
        mp_sm_game_show, // 0x0
        mp_satellite, // 0x1
        mp_sm_finance, // 0x2
        mp_raid_rm, // 0x3
        mp_nuketown6, // 0x4
        mp_kgb, // 0x5
        mp_echelon, // 0x6
        mp_cliffhanger, // 0x7
        mp_dune, // 0x8
        mp_tank, // 0x9
        mp_apocalypse, // 0xa
        mp_tundra, // 0xb
        mp_sm_berlin_tunnel // 0xc
    };

    // root: bitSize: 0xe018, members: 71

    // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
    uint:2 codcaster_xray_advanced_target;
    // offset: 0x8, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
    byte hash_7b08ba3e1f5fe79d[3];
    // offset: 0x20, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
    byte hash_7b08b73e1f5fe284[3];
    // offset: 0x38, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
    byte hash_7b08b83e1f5fe437[3];
    // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
    uint:3 codcaster_seriesscore_team1;
    // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
    uint:3 codcaster_seriesscore_team2;
    // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
    uint:5 hash_61aefca0f8ee525e;
    // offset: 0x68, bitSize: 0x100(0x20 Byte(s))
    string(32) hash_40e24577491cdacc;
    // offset: 0x168, bitSize: 0x8(0x1 Byte(s))
    uint:5 hash_6d318f5847de29a9;
    // offset: 0x170, bitSize: 0x100(0x20 Byte(s))
    string(32) hash_2f78e6820a511fdb;
    // offset: 0x270, bitSize: 0xdb88(0x1b71 Byte(s)), array:0x19(hti:0x0)
    codcaster_map_data codcaster_maps[mpmaps];
    // offset: 0xddf8, bitSize: 0x8(0x1 Byte(s))
    uint:7 hash_663713b2117f805f;
    // offset: 0xde00, bitSize: 0x8(0x1 Byte(s))
    uint:2 codcaster_teamlist_type;
    // offset: 0xde08, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
    byte hash_4c5cd8cc11adcdba[3];
    // offset: 0xde20, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
    byte hash_4c5cd7cc11adcc07[3];
    // offset: 0xde38, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
    byte hash_4c5cd6cc11adca54[3];
    // offset: 0xde50, bitSize: 0x100(0x20 Byte(s))
    string(32) codcaster_datacenter_cdl;
    // offset: 0xdf50, bitSize: 0x20(0x4 Byte(s))
    float codcaster_freecam_smooth_factor;
    // offset: 0xdf70, bitSize: 0x8(0x1 Byte(s))
    uint:2 codcaster_xray_target;
    // offset: 0xdf78, bitSize: 0x20(0x4 Byte(s))
    float codcaster_freecam_slow_speed_modifier;
    // offset: 0xdf98, bitSize: 0x8(0x1 Byte(s))
    uint:4 codcaster_seriesscore_wins;
    // offset: 0xdfa0, bitSize: 0x20(0x4 Byte(s))
    float codcaster_freecam_base_speed;
    // offset: 0xdfc0, bitSize: 0x20(0x4 Byte(s))
    float codcaster_freecam_high_speed_modifier;
    // offset: 0xdfe0, bitSize: 0x8(0x1 Byte(s))
    uint:8 codcaster_freecam_default_fov;
    // offset: 0xdfe8, bitSize: 0x1
    bool codcaster_seriesscore;
    // offset: 0xdfe9, bitSize: 0x1
    bool codcaster_player_scoring;
    // offset: 0xdfea, bitSize: 0x1
    bool codcaster_teamscore;
    // offset: 0xdfeb, bitSize: 0x1
    bool codcaster_playernumbers_minimap;
    // offset: 0xdfec, bitSize: 0x1
    bool codcaster_freecam_speed_modifier_mode;
    // offset: 0xdfed, bitSize: 0x1
    bool codcaster_playercard;
    // offset: 0xdfee, bitSize: 0x1
    bool hash_23c54591c2b5fb47;
    // offset: 0xdfef, bitSize: 0x1
    bool codcaster_playernumbers_nameplates;
    // offset: 0xdff0, bitSize: 0x1
    bool codcaster_playernumbers_cdl;
    // offset: 0xdff1, bitSize: 0x1
    bool codcaster_playercard_weapon;
    // offset: 0xdff2, bitSize: 0x1
    bool codcaster_teamlist;
    // offset: 0xdff3, bitSize: 0x1
    bool codcaster_xray;
    // offset: 0xdff4, bitSize: 0x1
    bool codcaster_playercard_portrait;
    // offset: 0xdff5, bitSize: 0x1
    bool hash_291d6ca28128d66c;
    // offset: 0xdff6, bitSize: 0x1
    bool codcaster_fieldupgrade_notification;
    // offset: 0xdff7, bitSize: 0x1
    bool hash_61d8eb8b7799d32a;
    // offset: 0xdff8, bitSize: 0x1
    bool codcaster_freecam_enable_collisions;
    // offset: 0xdff9, bitSize: 0x1
    bool codcaster_playercard_equipment;
    // offset: 0xdffa, bitSize: 0x1
    bool hash_9d1cbd4a024ad49;
    // offset: 0xdffb, bitSize: 0x1
    bool codcaster_aerialcam_pucks;
    // offset: 0xdffc, bitSize: 0x1
    bool codcaster_killfeed;
    // offset: 0xdffd, bitSize: 0x1
    bool codcaster_nameplates_name;
    // offset: 0xdffe, bitSize: 0x1
    bool codcaster_scorestreaks;
    // offset: 0xdfff, bitSize: 0x1
    bool codcaster_flip_scorepanel;
    // offset: 0xe000, bitSize: 0x1
    bool codcaster_playernumbers_teamlist;
    // offset: 0xe001, bitSize: 0x1
    bool hash_63f8c32e3c9f02fc;
    // offset: 0xe002, bitSize: 0x1
    bool codcaster_freecam_pucks;
    // offset: 0xe003, bitSize: 0x1
    bool codcaster_freecam_movement_mode;
    // offset: 0xe004, bitSize: 0x1
    bool hash_b99ef228cd804ac;
    // offset: 0xe005, bitSize: 0x1
    bool codcaster_playernumbers_playercard;
    // offset: 0xe006, bitSize: 0x1
    bool codcaster_team_identity;
    // offset: 0xe007, bitSize: 0x1
    bool hash_268ae4806692f872;
    // offset: 0xe008, bitSize: 0x1
    bool codcaster_waypoint_markers;
    // offset: 0xe009, bitSize: 0x1
    bool hash_1f6dadc29bedae7b;
    // offset: 0xe00a, bitSize: 0x1
    bool hash_7a2b47d62341e8ac;
    // offset: 0xe00b, bitSize: 0x1
    bool codcaster_nameplates;
    // offset: 0xe00c, bitSize: 0x1
    bool hash_5a7fdefefad7b113;
    // offset: 0xe00d, bitSize: 0x1
    bool codcaster_notification_announcements;
    // offset: 0xe00e, bitSize: 0x1
    bool hash_70ede64e018ba028;
    // offset: 0xe00f, bitSize: 0x1
    bool hash_52757ff0a46771dc;
    // offset: 0xe010, bitSize: 0x1
    bool codcaster_playernumbers;
    // offset: 0xe011, bitSize: 0x1
    bool codcaster_scorestreaks_notification;
    // offset: 0xe012, bitSize: 0x1
    bool codcaster_nameplates_health;
    // offset: 0xe013, bitSize: 0x1
    bool codcaster_minimap;
    // offset: 0xe014, bitSize: 0x1
    bool hash_528c193ff09047c2;
    // offset: 0xe015, bitSize: 0x1
    bool hash_41e9a4ed118f1d5d;
};

version hash_fc176cdbc78ac397 {
    // enums ..... 2 (0x2)
    // structs ... 3 (0x3)
    // header bit size .. 57624 (0xe118)
    // header byte size . 7203 (0x1c23)

    // bitSize: 0x70, members: 6
    struct codcaster_camera_pose {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 fov;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        int:12 angles_yaw;
        // offset: 0x18, bitSize: 0x10(0x2 Byte(s))
        int:12 angles_pitch;
        // offset: 0x28, bitSize: 0x18(0x3 Byte(s))
        int:24 origin_x;
        // offset: 0x40, bitSize: 0x18(0x3 Byte(s))
        int:24 origin_y;
        // offset: 0x58, bitSize: 0x18(0x3 Byte(s))
        int:24 origin_z;
    };

    // bitSize: 0x8c8, members: 2
    struct codcaster_map_data {
        // offset: 0x0, bitSize: 0x8c0(0x118 Byte(s)), array:0x14(hti:0xffff)
        codcaster_camera_pose poses[20];
        // offset: 0x8c0, bitSize: 0x8(0x1 Byte(s))
        uint:8 mapindex;
    };

    // idx 0x0 members: 0x19
    enum mpmaps {
        mp_sm_game_show, // 0x0
        mp_miami, // 0x1
        mp_moscow, // 0x2
        mp_satellite, // 0x3
        mp_cartel, // 0x4
        mp_sm_finance, // 0x5
        mp_raid_rm, // 0x6
        hash_24f907c5fd362ecd, // 0x7
        mp_nuketown6, // 0x8
        wz_ski_slopes, // 0x9
        mp_kgb, // 0xa
        mp_mall, // 0xb
        mp_echelon, // 0xc
        mp_cliffhanger, // 0xd
        wz_dob, // 0xe
        mp_dune, // 0xf
        mp_black_sea, // 0x10
        mp_sm_central, // 0x11
        mp_tank, // 0x12
        mp_apocalypse, // 0x13
        mp_tundra, // 0x14
        wz_duga, // 0x15
        mp_sm_berlin_tunnel, // 0x16
        wz_forest, // 0x17
        wz_russia // 0x18
    };

    // idx 0x1 members: 0xd
    enum hash_f63c30a3cf473b7 {
        mp_sm_game_show, // 0x0
        mp_satellite, // 0x1
        mp_sm_finance, // 0x2
        mp_raid_rm, // 0x3
        mp_nuketown6, // 0x4
        mp_kgb, // 0x5
        mp_echelon, // 0x6
        mp_cliffhanger, // 0x7
        mp_dune, // 0x8
        mp_tank, // 0x9
        mp_apocalypse, // 0xa
        mp_tundra, // 0xb
        mp_sm_berlin_tunnel // 0xc
    };

    // root: bitSize: 0xe068, members: 75

    // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
    uint:2 codcaster_xray_advanced_target;
    // offset: 0x8, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
    byte hash_7b08ba3e1f5fe79d[3];
    // offset: 0x20, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
    byte hash_7b08b73e1f5fe284[3];
    // offset: 0x38, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
    byte hash_7b08b83e1f5fe437[3];
    // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
    uint:3 codcaster_seriesscore_team1;
    // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
    uint:3 codcaster_seriesscore_team2;
    // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
    uint:8 codcaster_ticker_bottom;
    // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
    uint:5 hash_61aefca0f8ee525e;
    // offset: 0x70, bitSize: 0x100(0x20 Byte(s))
    string(32) hash_40e24577491cdacc;
    // offset: 0x170, bitSize: 0x8(0x1 Byte(s))
    uint:5 hash_6d318f5847de29a9;
    // offset: 0x178, bitSize: 0x100(0x20 Byte(s))
    string(32) hash_2f78e6820a511fdb;
    // offset: 0x278, bitSize: 0x8(0x1 Byte(s))
    uint:8 codcaster_ticker_top;
    // offset: 0x280, bitSize: 0xdb88(0x1b71 Byte(s)), array:0x19(hti:0x0)
    codcaster_map_data codcaster_maps[mpmaps];
    // offset: 0xde08, bitSize: 0x8(0x1 Byte(s))
    uint:7 hash_663713b2117f805f;
    // offset: 0xde10, bitSize: 0x20(0x4 Byte(s))
    string(4) hash_3ae23af8b88b6321;
    // offset: 0xde30, bitSize: 0x8(0x1 Byte(s))
    uint:2 codcaster_teamlist_type;
    // offset: 0xde38, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
    byte hash_4c5cd8cc11adcdba[3];
    // offset: 0xde50, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
    byte hash_4c5cd7cc11adcc07[3];
    // offset: 0xde68, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
    byte hash_4c5cd6cc11adca54[3];
    // offset: 0xde80, bitSize: 0x100(0x20 Byte(s))
    string(32) codcaster_datacenter_cdl;
    // offset: 0xdf80, bitSize: 0x20(0x4 Byte(s))
    float codcaster_freecam_smooth_factor;
    // offset: 0xdfa0, bitSize: 0x8(0x1 Byte(s))
    uint:2 codcaster_xray_target;
    // offset: 0xdfa8, bitSize: 0x20(0x4 Byte(s))
    string(4) hash_2d6cdf404218ddc4;
    // offset: 0xdfc8, bitSize: 0x20(0x4 Byte(s))
    float codcaster_freecam_slow_speed_modifier;
    // offset: 0xdfe8, bitSize: 0x8(0x1 Byte(s))
    uint:4 codcaster_seriesscore_wins;
    // offset: 0xdff0, bitSize: 0x20(0x4 Byte(s))
    float codcaster_freecam_base_speed;
    // offset: 0xe010, bitSize: 0x20(0x4 Byte(s))
    float codcaster_freecam_high_speed_modifier;
    // offset: 0xe030, bitSize: 0x8(0x1 Byte(s))
    uint:8 codcaster_freecam_default_fov;
    // offset: 0xe038, bitSize: 0x1
    bool codcaster_seriesscore;
    // offset: 0xe039, bitSize: 0x1
    bool codcaster_player_scoring;
    // offset: 0xe03a, bitSize: 0x1
    bool codcaster_teamscore;
    // offset: 0xe03b, bitSize: 0x1
    bool codcaster_playernumbers_minimap;
    // offset: 0xe03c, bitSize: 0x1
    bool codcaster_freecam_speed_modifier_mode;
    // offset: 0xe03d, bitSize: 0x1
    bool codcaster_playercard;
    // offset: 0xe03e, bitSize: 0x1
    bool hash_23c54591c2b5fb47;
    // offset: 0xe03f, bitSize: 0x1
    bool codcaster_playernumbers_nameplates;
    // offset: 0xe040, bitSize: 0x1
    bool codcaster_playernumbers_cdl;
    // offset: 0xe041, bitSize: 0x1
    bool codcaster_playercard_weapon;
    // offset: 0xe042, bitSize: 0x1
    bool codcaster_teamlist;
    // offset: 0xe043, bitSize: 0x1
    bool codcaster_xray;
    // offset: 0xe044, bitSize: 0x1
    bool codcaster_playercard_portrait;
    // offset: 0xe045, bitSize: 0x1
    bool hash_291d6ca28128d66c;
    // offset: 0xe046, bitSize: 0x1
    bool codcaster_fieldupgrade_notification;
    // offset: 0xe047, bitSize: 0x1
    bool hash_61d8eb8b7799d32a;
    // offset: 0xe048, bitSize: 0x1
    bool codcaster_freecam_enable_collisions;
    // offset: 0xe049, bitSize: 0x1
    bool codcaster_playercard_equipment;
    // offset: 0xe04a, bitSize: 0x1
    bool hash_9d1cbd4a024ad49;
    // offset: 0xe04b, bitSize: 0x1
    bool codcaster_aerialcam_pucks;
    // offset: 0xe04c, bitSize: 0x1
    bool codcaster_killfeed;
    // offset: 0xe04d, bitSize: 0x1
    bool codcaster_nameplates_name;
    // offset: 0xe04e, bitSize: 0x1
    bool codcaster_scorestreaks;
    // offset: 0xe04f, bitSize: 0x1
    bool codcaster_flip_scorepanel;
    // offset: 0xe050, bitSize: 0x1
    bool codcaster_playernumbers_teamlist;
    // offset: 0xe051, bitSize: 0x1
    bool hash_63f8c32e3c9f02fc;
    // offset: 0xe052, bitSize: 0x1
    bool codcaster_freecam_pucks;
    // offset: 0xe053, bitSize: 0x1
    bool codcaster_freecam_movement_mode;
    // offset: 0xe054, bitSize: 0x1
    bool hash_b99ef228cd804ac;
    // offset: 0xe055, bitSize: 0x1
    bool codcaster_playernumbers_playercard;
    // offset: 0xe056, bitSize: 0x1
    bool codcaster_team_identity;
    // offset: 0xe057, bitSize: 0x1
    bool hash_268ae4806692f872;
    // offset: 0xe058, bitSize: 0x1
    bool codcaster_waypoint_markers;
    // offset: 0xe059, bitSize: 0x1
    bool hash_1f6dadc29bedae7b;
    // offset: 0xe05a, bitSize: 0x1
    bool hash_7a2b47d62341e8ac;
    // offset: 0xe05b, bitSize: 0x1
    bool codcaster_nameplates;
    // offset: 0xe05c, bitSize: 0x1
    bool hash_5a7fdefefad7b113;
    // offset: 0xe05d, bitSize: 0x1
    bool codcaster_notification_announcements;
    // offset: 0xe05e, bitSize: 0x1
    bool hash_70ede64e018ba028;
    // offset: 0xe05f, bitSize: 0x1
    bool hash_52757ff0a46771dc;
    // offset: 0xe060, bitSize: 0x1
    bool codcaster_playernumbers;
    // offset: 0xe061, bitSize: 0x1
    bool codcaster_scorestreaks_notification;
    // offset: 0xe062, bitSize: 0x1
    bool codcaster_nameplates_health;
    // offset: 0xe063, bitSize: 0x1
    bool codcaster_minimap;
    // offset: 0xe064, bitSize: 0x1
    bool hash_528c193ff09047c2;
    // offset: 0xe065, bitSize: 0x1
    bool hash_41e9a4ed118f1d5d;
};

version hash_8229dfc4966c4c7f {
    // enums ..... 2 (0x2)
    // structs ... 3 (0x3)
    // header bit size .. 57624 (0xe118)
    // header byte size . 7203 (0x1c23)

    // bitSize: 0x70, members: 6
    struct codcaster_camera_pose {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 fov;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        int:12 angles_yaw;
        // offset: 0x18, bitSize: 0x10(0x2 Byte(s))
        int:12 angles_pitch;
        // offset: 0x28, bitSize: 0x18(0x3 Byte(s))
        int:24 origin_x;
        // offset: 0x40, bitSize: 0x18(0x3 Byte(s))
        int:24 origin_y;
        // offset: 0x58, bitSize: 0x18(0x3 Byte(s))
        int:24 origin_z;
    };

    // bitSize: 0x8c8, members: 2
    struct codcaster_map_data {
        // offset: 0x0, bitSize: 0x8c0(0x118 Byte(s)), array:0x14(hti:0xffff)
        codcaster_camera_pose poses[20];
        // offset: 0x8c0, bitSize: 0x8(0x1 Byte(s))
        uint:8 mapindex;
    };

    // idx 0x0 members: 0x19
    enum mpmaps {
        mp_sm_game_show, // 0x0
        mp_miami, // 0x1
        mp_moscow, // 0x2
        mp_satellite, // 0x3
        mp_cartel, // 0x4
        mp_sm_finance, // 0x5
        mp_raid_rm, // 0x6
        hash_24f907c5fd362ecd, // 0x7
        mp_nuketown6, // 0x8
        wz_ski_slopes, // 0x9
        mp_kgb, // 0xa
        mp_mall, // 0xb
        mp_echelon, // 0xc
        mp_cliffhanger, // 0xd
        wz_dob, // 0xe
        mp_dune, // 0xf
        mp_black_sea, // 0x10
        mp_sm_central, // 0x11
        mp_tank, // 0x12
        mp_apocalypse, // 0x13
        mp_tundra, // 0x14
        wz_duga, // 0x15
        mp_sm_berlin_tunnel, // 0x16
        wz_forest, // 0x17
        wz_russia // 0x18
    };

    // idx 0x1 members: 0xd
    enum hash_f63c30a3cf473b7 {
        mp_sm_game_show, // 0x0
        mp_satellite, // 0x1
        mp_sm_finance, // 0x2
        mp_raid_rm, // 0x3
        mp_nuketown6, // 0x4
        mp_kgb, // 0x5
        mp_echelon, // 0x6
        mp_cliffhanger, // 0x7
        mp_dune, // 0x8
        mp_tank, // 0x9
        mp_apocalypse, // 0xa
        mp_tundra, // 0xb
        mp_sm_berlin_tunnel // 0xc
    };

    // root: bitSize: 0xe068, members: 76

    // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
    uint:2 codcaster_xray_advanced_target;
    // offset: 0x8, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
    byte hash_7b08ba3e1f5fe79d[3];
    // offset: 0x20, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
    byte hash_7b08b73e1f5fe284[3];
    // offset: 0x38, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
    byte hash_7b08b83e1f5fe437[3];
    // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
    uint:3 codcaster_seriesscore_team1;
    // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
    uint:3 codcaster_seriesscore_team2;
    // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
    uint:8 codcaster_ticker_bottom;
    // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
    uint:5 hash_61aefca0f8ee525e;
    // offset: 0x70, bitSize: 0x100(0x20 Byte(s))
    string(32) hash_40e24577491cdacc;
    // offset: 0x170, bitSize: 0x8(0x1 Byte(s))
    uint:5 hash_6d318f5847de29a9;
    // offset: 0x178, bitSize: 0x100(0x20 Byte(s))
    string(32) hash_2f78e6820a511fdb;
    // offset: 0x278, bitSize: 0x8(0x1 Byte(s))
    uint:8 codcaster_ticker_top;
    // offset: 0x280, bitSize: 0xdb88(0x1b71 Byte(s)), array:0x19(hti:0x0)
    codcaster_map_data codcaster_maps[mpmaps];
    // offset: 0xde08, bitSize: 0x8(0x1 Byte(s))
    uint:7 hash_663713b2117f805f;
    // offset: 0xde10, bitSize: 0x20(0x4 Byte(s))
    string(4) hash_3ae23af8b88b6321;
    // offset: 0xde30, bitSize: 0x8(0x1 Byte(s))
    uint:2 codcaster_teamlist_type;
    // offset: 0xde38, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
    byte hash_4c5cd8cc11adcdba[3];
    // offset: 0xde50, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
    byte hash_4c5cd7cc11adcc07[3];
    // offset: 0xde68, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
    byte hash_4c5cd6cc11adca54[3];
    // offset: 0xde80, bitSize: 0x100(0x20 Byte(s))
    string(32) codcaster_datacenter_cdl;
    // offset: 0xdf80, bitSize: 0x20(0x4 Byte(s))
    float codcaster_freecam_smooth_factor;
    // offset: 0xdfa0, bitSize: 0x8(0x1 Byte(s))
    uint:2 codcaster_xray_target;
    // offset: 0xdfa8, bitSize: 0x20(0x4 Byte(s))
    string(4) hash_2d6cdf404218ddc4;
    // offset: 0xdfc8, bitSize: 0x20(0x4 Byte(s))
    float codcaster_freecam_slow_speed_modifier;
    // offset: 0xdfe8, bitSize: 0x8(0x1 Byte(s))
    uint:4 codcaster_seriesscore_wins;
    // offset: 0xdff0, bitSize: 0x20(0x4 Byte(s))
    float codcaster_freecam_base_speed;
    // offset: 0xe010, bitSize: 0x20(0x4 Byte(s))
    float codcaster_freecam_high_speed_modifier;
    // offset: 0xe030, bitSize: 0x8(0x1 Byte(s))
    uint:8 codcaster_freecam_default_fov;
    // offset: 0xe038, bitSize: 0x1
    bool codcaster_seriesscore;
    // offset: 0xe039, bitSize: 0x1
    bool codcaster_player_scoring;
    // offset: 0xe03a, bitSize: 0x1
    bool codcaster_teamscore;
    // offset: 0xe03b, bitSize: 0x1
    bool codcaster_playernumbers_minimap;
    // offset: 0xe03c, bitSize: 0x1
    bool codcaster_freecam_speed_modifier_mode;
    // offset: 0xe03d, bitSize: 0x1
    bool codcaster_playercard;
    // offset: 0xe03e, bitSize: 0x1
    bool hash_23c54591c2b5fb47;
    // offset: 0xe03f, bitSize: 0x1
    bool codcaster_playernumbers_nameplates;
    // offset: 0xe040, bitSize: 0x1
    bool codcaster_playernumbers_cdl;
    // offset: 0xe041, bitSize: 0x1
    bool codcaster_playercard_weapon;
    // offset: 0xe042, bitSize: 0x1
    bool codcaster_teamlist;
    // offset: 0xe043, bitSize: 0x1
    bool codcaster_xray;
    // offset: 0xe044, bitSize: 0x1
    bool codcaster_playercard_portrait;
    // offset: 0xe045, bitSize: 0x1
    bool hash_291d6ca28128d66c;
    // offset: 0xe046, bitSize: 0x1
    bool codcaster_fieldupgrade_notification;
    // offset: 0xe047, bitSize: 0x1
    bool hash_61d8eb8b7799d32a;
    // offset: 0xe048, bitSize: 0x1
    bool codcaster_freecam_enable_collisions;
    // offset: 0xe049, bitSize: 0x1
    bool codcaster_playercard_equipment;
    // offset: 0xe04a, bitSize: 0x1
    bool hash_9d1cbd4a024ad49;
    // offset: 0xe04b, bitSize: 0x1
    bool codcaster_status_effects_disabled;
    // offset: 0xe04c, bitSize: 0x1
    bool codcaster_aerialcam_pucks;
    // offset: 0xe04d, bitSize: 0x1
    bool codcaster_killfeed;
    // offset: 0xe04e, bitSize: 0x1
    bool codcaster_nameplates_name;
    // offset: 0xe04f, bitSize: 0x1
    bool codcaster_scorestreaks;
    // offset: 0xe050, bitSize: 0x1
    bool codcaster_flip_scorepanel;
    // offset: 0xe051, bitSize: 0x1
    bool codcaster_playernumbers_teamlist;
    // offset: 0xe052, bitSize: 0x1
    bool hash_63f8c32e3c9f02fc;
    // offset: 0xe053, bitSize: 0x1
    bool codcaster_freecam_pucks;
    // offset: 0xe054, bitSize: 0x1
    bool codcaster_freecam_movement_mode;
    // offset: 0xe055, bitSize: 0x1
    bool hash_b99ef228cd804ac;
    // offset: 0xe056, bitSize: 0x1
    bool codcaster_playernumbers_playercard;
    // offset: 0xe057, bitSize: 0x1
    bool codcaster_team_identity;
    // offset: 0xe058, bitSize: 0x1
    bool hash_268ae4806692f872;
    // offset: 0xe059, bitSize: 0x1
    bool codcaster_waypoint_markers;
    // offset: 0xe05a, bitSize: 0x1
    bool hash_1f6dadc29bedae7b;
    // offset: 0xe05b, bitSize: 0x1
    bool hash_7a2b47d62341e8ac;
    // offset: 0xe05c, bitSize: 0x1
    bool codcaster_nameplates;
    // offset: 0xe05d, bitSize: 0x1
    bool hash_5a7fdefefad7b113;
    // offset: 0xe05e, bitSize: 0x1
    bool codcaster_notification_announcements;
    // offset: 0xe05f, bitSize: 0x1
    bool hash_70ede64e018ba028;
    // offset: 0xe060, bitSize: 0x1
    bool hash_52757ff0a46771dc;
    // offset: 0xe061, bitSize: 0x1
    bool codcaster_minimap_show_faces_enabled;
    // offset: 0xe062, bitSize: 0x1
    bool codcaster_playernumbers;
    // offset: 0xe063, bitSize: 0x1
    bool codcaster_scorestreaks_notification;
    // offset: 0xe064, bitSize: 0x1
    bool codcaster_nameplates_health;
    // offset: 0xe065, bitSize: 0x1
    bool codcaster_minimap;
    // offset: 0xe066, bitSize: 0x1
    bool hash_528c193ff09047c2;
    // offset: 0xe067, bitSize: 0x1
    bool hash_41e9a4ed118f1d5d;
};

version hash_deb3d357f21544c2 {
    // enums ..... 2 (0x2)
    // structs ... 3 (0x3)
    // header bit size .. 95840 (0x17660)
    // header byte size . 11980 (0x2ecc)

    // bitSize: 0x70, members: 6
    struct codcaster_camera_pose {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 fov;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        int:12 angles_yaw;
        // offset: 0x18, bitSize: 0x10(0x2 Byte(s))
        int:12 angles_pitch;
        // offset: 0x28, bitSize: 0x18(0x3 Byte(s))
        int:24 origin_x;
        // offset: 0x40, bitSize: 0x18(0x3 Byte(s))
        int:24 origin_y;
        // offset: 0x58, bitSize: 0x18(0x3 Byte(s))
        int:24 origin_z;
    };

    // bitSize: 0x8c8, members: 2
    struct codcaster_map_data {
        // offset: 0x0, bitSize: 0x8c0(0x118 Byte(s)), array:0x14(hti:0xffff)
        codcaster_camera_pose poses[20];
        // offset: 0x8c0, bitSize: 0x8(0x1 Byte(s))
        uint:8 mapindex;
    };

    // idx 0x0 members: 0x2a
    enum mpmaps {
        mp_sm_game_show, // 0x0
        mp_miami, // 0x1
        mp_moscow, // 0x2
        mp_amerika, // 0x3
        wz_zoo, // 0x4
        mp_satellite, // 0x5
        mp_cartel, // 0x6
        mp_sm_finance, // 0x7
        mp_raid_rm, // 0x8
        mp_express_rm, // 0x9
        mp_drivein_rm, // 0xa
        hash_2a5c9d82575f9045, // 0xb
        wz_sanatorium, // 0xc
        wz_golova, // 0xd
        mp_nuketown6, // 0xe
        mp_sm_amsterdam, // 0xf
        wz_ski_slopes, // 0x10
        mp_firebase, // 0x11
        mp_sm_market, // 0x12
        mp_kgb, // 0x13
        mp_mall, // 0x14
        mp_echelon, // 0x15
        mp_cliffhanger, // 0x16
        mp_village_rm, // 0x17
        mp_zoo_rm, // 0x18
        mp_slums_rm, // 0x19
        mp_sm_deptstore, // 0x1a
        mp_sm_gas_station, // 0x1b
        mp_dune, // 0x1c
        mp_sm_vault, // 0x1d
        mp_black_sea, // 0x1e
        mp_sm_central, // 0x1f
        mp_tank, // 0x20
        mp_miami_strike, // 0x21
        mp_apocalypse, // 0x22
        mp_tundra, // 0x23
        mp_hijacked_rm, // 0x24
        wz_duga, // 0x25
        mp_sm_berlin_tunnel, // 0x26
        wz_forest, // 0x27
        wz_russia, // 0x28
        mp_paintball_rm // 0x29
    };

    // idx 0x1 members: 0x1b
    enum hash_f63c30a3cf473b7 {
        mp_sm_game_show, // 0x0
        mp_amerika, // 0x1
        mp_satellite, // 0x2
        mp_sm_finance, // 0x3
        mp_raid_rm, // 0x4
        mp_express_rm, // 0x5
        mp_drivein_rm, // 0x6
        hash_2a5c9d82575f9045, // 0x7
        mp_nuketown6, // 0x8
        mp_sm_amsterdam, // 0x9
        mp_sm_market, // 0xa
        mp_kgb, // 0xb
        mp_echelon, // 0xc
        mp_cliffhanger, // 0xd
        mp_village_rm, // 0xe
        mp_zoo_rm, // 0xf
        mp_slums_rm, // 0x10
        mp_sm_deptstore, // 0x11
        mp_sm_gas_station, // 0x12
        mp_dune, // 0x13
        mp_sm_vault, // 0x14
        mp_tank, // 0x15
        mp_apocalypse, // 0x16
        mp_tundra, // 0x17
        mp_hijacked_rm, // 0x18
        mp_sm_berlin_tunnel, // 0x19
        mp_paintball_rm // 0x1a
    };

    // root: bitSize: 0x175b0, members: 76

    // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
    uint:2 codcaster_xray_advanced_target;
    // offset: 0x8, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
    byte hash_7b08ba3e1f5fe79d[3];
    // offset: 0x20, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
    byte hash_7b08b73e1f5fe284[3];
    // offset: 0x38, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
    byte hash_7b08b83e1f5fe437[3];
    // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
    uint:3 codcaster_seriesscore_team1;
    // offset: 0x58, bitSize: 0x8(0x1 Byte(s))
    uint:3 codcaster_seriesscore_team2;
    // offset: 0x60, bitSize: 0x8(0x1 Byte(s))
    uint:8 codcaster_ticker_bottom;
    // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
    uint:5 hash_61aefca0f8ee525e;
    // offset: 0x70, bitSize: 0x100(0x20 Byte(s))
    string(32) hash_40e24577491cdacc;
    // offset: 0x170, bitSize: 0x8(0x1 Byte(s))
    uint:5 hash_6d318f5847de29a9;
    // offset: 0x178, bitSize: 0x100(0x20 Byte(s))
    string(32) hash_2f78e6820a511fdb;
    // offset: 0x278, bitSize: 0x8(0x1 Byte(s))
    uint:8 codcaster_ticker_top;
    // offset: 0x280, bitSize: 0x170d0(0x2e1a Byte(s)), array:0x2a(hti:0x0)
    codcaster_map_data codcaster_maps[mpmaps];
    // offset: 0x17350, bitSize: 0x8(0x1 Byte(s))
    uint:7 hash_663713b2117f805f;
    // offset: 0x17358, bitSize: 0x20(0x4 Byte(s))
    string(4) hash_3ae23af8b88b6321;
    // offset: 0x17378, bitSize: 0x8(0x1 Byte(s))
    uint:2 codcaster_teamlist_type;
    // offset: 0x17380, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
    byte hash_4c5cd8cc11adcdba[3];
    // offset: 0x17398, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
    byte hash_4c5cd7cc11adcc07[3];
    // offset: 0x173b0, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0xffff)
    byte hash_4c5cd6cc11adca54[3];
    // offset: 0x173c8, bitSize: 0x100(0x20 Byte(s))
    string(32) codcaster_datacenter_cdl;
    // offset: 0x174c8, bitSize: 0x20(0x4 Byte(s))
    float codcaster_freecam_smooth_factor;
    // offset: 0x174e8, bitSize: 0x8(0x1 Byte(s))
    uint:2 codcaster_xray_target;
    // offset: 0x174f0, bitSize: 0x20(0x4 Byte(s))
    string(4) hash_2d6cdf404218ddc4;
    // offset: 0x17510, bitSize: 0x20(0x4 Byte(s))
    float codcaster_freecam_slow_speed_modifier;
    // offset: 0x17530, bitSize: 0x8(0x1 Byte(s))
    uint:4 codcaster_seriesscore_wins;
    // offset: 0x17538, bitSize: 0x20(0x4 Byte(s))
    float codcaster_freecam_base_speed;
    // offset: 0x17558, bitSize: 0x20(0x4 Byte(s))
    float codcaster_freecam_high_speed_modifier;
    // offset: 0x17578, bitSize: 0x8(0x1 Byte(s))
    uint:8 codcaster_freecam_default_fov;
    // offset: 0x17580, bitSize: 0x1
    bool codcaster_seriesscore;
    // offset: 0x17581, bitSize: 0x1
    bool codcaster_player_scoring;
    // offset: 0x17582, bitSize: 0x1
    bool codcaster_teamscore;
    // offset: 0x17583, bitSize: 0x1
    bool codcaster_playernumbers_minimap;
    // offset: 0x17584, bitSize: 0x1
    bool codcaster_freecam_speed_modifier_mode;
    // offset: 0x17585, bitSize: 0x1
    bool codcaster_playercard;
    // offset: 0x17586, bitSize: 0x1
    bool hash_23c54591c2b5fb47;
    // offset: 0x17587, bitSize: 0x1
    bool codcaster_playernumbers_nameplates;
    // offset: 0x17588, bitSize: 0x1
    bool codcaster_playernumbers_cdl;
    // offset: 0x17589, bitSize: 0x1
    bool codcaster_playercard_weapon;
    // offset: 0x1758a, bitSize: 0x1
    bool codcaster_teamlist;
    // offset: 0x1758b, bitSize: 0x1
    bool codcaster_xray;
    // offset: 0x1758c, bitSize: 0x1
    bool codcaster_playercard_portrait;
    // offset: 0x1758d, bitSize: 0x1
    bool hash_291d6ca28128d66c;
    // offset: 0x1758e, bitSize: 0x1
    bool codcaster_fieldupgrade_notification;
    // offset: 0x1758f, bitSize: 0x1
    bool hash_61d8eb8b7799d32a;
    // offset: 0x17590, bitSize: 0x1
    bool codcaster_freecam_enable_collisions;
    // offset: 0x17591, bitSize: 0x1
    bool codcaster_playercard_equipment;
    // offset: 0x17592, bitSize: 0x1
    bool hash_9d1cbd4a024ad49;
    // offset: 0x17593, bitSize: 0x1
    bool codcaster_status_effects_disabled;
    // offset: 0x17594, bitSize: 0x1
    bool codcaster_aerialcam_pucks;
    // offset: 0x17595, bitSize: 0x1
    bool codcaster_killfeed;
    // offset: 0x17596, bitSize: 0x1
    bool codcaster_nameplates_name;
    // offset: 0x17597, bitSize: 0x1
    bool codcaster_scorestreaks;
    // offset: 0x17598, bitSize: 0x1
    bool codcaster_flip_scorepanel;
    // offset: 0x17599, bitSize: 0x1
    bool codcaster_playernumbers_teamlist;
    // offset: 0x1759a, bitSize: 0x1
    bool hash_63f8c32e3c9f02fc;
    // offset: 0x1759b, bitSize: 0x1
    bool codcaster_freecam_pucks;
    // offset: 0x1759c, bitSize: 0x1
    bool codcaster_freecam_movement_mode;
    // offset: 0x1759d, bitSize: 0x1
    bool hash_b99ef228cd804ac;
    // offset: 0x1759e, bitSize: 0x1
    bool codcaster_playernumbers_playercard;
    // offset: 0x1759f, bitSize: 0x1
    bool codcaster_team_identity;
    // offset: 0x175a0, bitSize: 0x1
    bool hash_268ae4806692f872;
    // offset: 0x175a1, bitSize: 0x1
    bool codcaster_waypoint_markers;
    // offset: 0x175a2, bitSize: 0x1
    bool hash_1f6dadc29bedae7b;
    // offset: 0x175a3, bitSize: 0x1
    bool hash_7a2b47d62341e8ac;
    // offset: 0x175a4, bitSize: 0x1
    bool codcaster_nameplates;
    // offset: 0x175a5, bitSize: 0x1
    bool hash_5a7fdefefad7b113;
    // offset: 0x175a6, bitSize: 0x1
    bool codcaster_notification_announcements;
    // offset: 0x175a7, bitSize: 0x1
    bool hash_70ede64e018ba028;
    // offset: 0x175a8, bitSize: 0x1
    bool hash_52757ff0a46771dc;
    // offset: 0x175a9, bitSize: 0x1
    bool codcaster_minimap_show_faces_enabled;
    // offset: 0x175aa, bitSize: 0x1
    bool codcaster_playernumbers;
    // offset: 0x175ab, bitSize: 0x1
    bool codcaster_scorestreaks_notification;
    // offset: 0x175ac, bitSize: 0x1
    bool codcaster_nameplates_health;
    // offset: 0x175ad, bitSize: 0x1
    bool codcaster_minimap;
    // offset: 0x175ae, bitSize: 0x1
    bool hash_528c193ff09047c2;
    // offset: 0x175af, bitSize: 0x1
    bool hash_41e9a4ed118f1d5d;
};

