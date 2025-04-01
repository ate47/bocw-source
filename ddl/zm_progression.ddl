// file .... zm_progression.ddl

#redirect hash_2a59aa1fcc383ebf;

version hash_c84754b26a4ce009 {
    // enums ..... 32 (0x20)
    // structs ... 55 (0x37)
    // header bit size .. 1268752 (0x135c10)
    // header byte size . 158594 (0x26b82)

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

    // bitSize: 0x80, members: 8
    struct prevscores {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        uint:16 kills;
        // offset: 0x10, bitSize: 0x18(0x3 Byte(s))
        uint:24 score;
        // offset: 0x28, bitSize: 0x20(0x4 Byte(s))
        uint timeplayed;
        // offset: 0x48, bitSize: 0x18(0x3 Byte(s))
        uint:24 damage;
        // offset: 0x60, bitSize: 0x10(0x2 Byte(s))
        uint:16 deaths;
        // offset: 0x70, bitSize: 0x8(0x1 Byte(s))
        outcome outcome;
        // offset: 0x78, bitSize: 0x1
        bool valid;
    };

    // bitSize: 0xa8, members: 7
    struct hash_2398b4de459cc95f {
        // offset: 0x0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec critical_kills;
        // offset: 0x30, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec friendly_fire;
        // offset: 0x48, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec deaths;
        // offset: 0x60, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec assists;
        // offset: 0x78, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2cf6bbbea8e3073a;
        // offset: 0x90, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec armor_destroyed;
    };

    // bitSize: 0x1a58, members: 75
    struct gametypestats {
        // offset: 0x0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec ties;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec wins;
        // offset: 0x30, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec assists;
        // offset: 0x48, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec crush;
        // offset: 0x60, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills;
        // offset: 0x78, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec score;
        // offset: 0x90, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec total_games_played;
        // offset: 0xa8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4eb8281db189b5b5;
        // offset: 0xc0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_31fddde734c4b9bd;
        // offset: 0xd8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec most_revives;
        // offset: 0xf0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec time_played_total;
        // offset: 0x108, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec highest_round_reached;
        // offset: 0x120, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills_special;
        // offset: 0x138, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec challenge1;
        // offset: 0x150, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec challenge2;
        // offset: 0x168, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec challenge3;
        // offset: 0x180, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec challenge4;
        // offset: 0x198, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec challenge5;
        // offset: 0x1b0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec challenge6;
        // offset: 0x1c8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec challenge7;
        // offset: 0x1e0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec challenge8;
        // offset: 0x1f8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec challenge9;
        // offset: 0x210, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec win_streak;
        // offset: 0x228, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6c569aeda3cd64a2;
        // offset: 0x240, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec cur_win_streak;
        // offset: 0x258, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_681f20667f1a68;
        // offset: 0x270, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_d068a8e618e4b8c;
        // offset: 0x288, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec rush_first_place_finishes;
        // offset: 0x2a0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_5312a43d013e7e78;
        // offset: 0x2b8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec total_rounds_survived;
        // offset: 0x2d0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_792bdab237a7fb6;
        // offset: 0x2e8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec total_points;
        // offset: 0x300, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kill_streak;
        // offset: 0x318, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_28d586d85caaa25d;
        // offset: 0x330, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_3d8e8bf48b2e3a1;
        // offset: 0x348, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec revives;
        // offset: 0x360, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_3d916fa18f69e145;
        // offset: 0x378, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec deaths;
        // offset: 0x390, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4219bfdfa1237b29;
        // offset: 0x3a8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_14b6b4e189c43f1;
        // offset: 0x3c0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec wlratio;
        // offset: 0x3d8, bitSize: 0x8(0x1 Byte(s))
        int:5 prevscoreindex;
        // offset: 0x3e0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec losses;
        // offset: 0x3f8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec defends;
        // offset: 0x410, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills_critical;
        // offset: 0x428, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_37360b7b681ce2d9;
        // offset: 0x440, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_78e1654de947dd6c;
        // offset: 0x458, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1c5ba828d18192bc;
        // offset: 0x470, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec headshots;
        // offset: 0x488, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills_vehicle;
        // offset: 0x4a0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1b1ca730e7bf6cb0;
        // offset: 0x4b8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6ae9a3797a35f5b2;
        // offset: 0x4d0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1463e22942e4a6cc;
        // offset: 0x4e8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_5e21bea2490944e7;
        // offset: 0x500, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec offends;
        // offset: 0x518, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_37b012a833bb8dfc;
        // offset: 0x530, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_c4c93ca79dfe49f;
        // offset: 0x548, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec challenge10;
        // offset: 0x560, bitSize: 0x500(0xa0 Byte(s)), array:0xa(hti:0xffff)
        prevscores prevscores[10];
        // offset: 0xa60, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7ce8fb78183b3f20;
        // offset: 0xa78, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4dc9b4ff6c585fef;
        // offset: 0xa90, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4c33a382808b6c6f;
        // offset: 0xaa8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec assists_vehicle;
        // offset: 0xac0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1dd37feaabb8df90;
        // offset: 0xad8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_19951794f58398d6;
        // offset: 0xaf0, bitSize: 0xe70(0x1ce Byte(s)), array:0x16(hti:0xd)
        hash_2398b4de459cc95f hash_483f5be0d25bab80[zmenemytypes];
        // offset: 0x1960, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec most_kills;
        // offset: 0x1978, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills_elite;
        // offset: 0x1990, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills_melee;
        // offset: 0x19a8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7517ad59fa81906f;
        // offset: 0x19c0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6066b5c8f4f3c493;
        // offset: 0x19d8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kdratio;
        // offset: 0x19f0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7ea66b44d6518c0a;
        // offset: 0x1a08, bitSize: 0x4e, array:0x4e(hti:0x0)
        bool hash_2ea4ad1aad4915f9[zmmedaltype];
    };

    // bitSize: 0x17b8, members: 19
    struct weaponstats {
        // offset: 0x0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hits;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills;
        // offset: 0x30, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec shots;
        // offset: 0x48, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec critical_kills;
        // offset: 0x60, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4eb8281db189b5b5;
        // offset: 0x78, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7bf29fa438d54aad;
        // offset: 0x90, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_33c456702a75cdeb;
        // offset: 0xa8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_45814ac55657fc62;
        // offset: 0xc0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_15009978a744ee16;
        // offset: 0xd8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec best_kills;
        // offset: 0xf0, bitSize: 0x78(0xf Byte(s)), array:0x5(hti:0xffff)
        hash_6c116eea1f7184ec engagement_ranges[5];
        // offset: 0x168, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_645c6772ff68073b;
        // offset: 0x180, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec packed_kills;
        // offset: 0x198, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec assists;
        // offset: 0x1b0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_2cf6bbbea8e3073a;
        // offset: 0x1c8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec special_kills;
        // offset: 0x1e0, bitSize: 0xe70(0x1ce Byte(s)), array:0x16(hti:0xd)
        hash_2398b4de459cc95f hash_483f5be0d25bab80[zmenemytypes];
        // offset: 0x1050, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec best_assists;
        // offset: 0x1068, bitSize: 0x750(0xea Byte(s)), array:0x4e(hti:0x2)
        hash_6c116eea1f7184ec hash_246c6b655d6acfe0[zmrankeditems];
    };

    // bitSize: 0xf48, members: 10
    struct scorestreakstats {
        // offset: 0x0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec uses;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills;
        // offset: 0x30, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7bf29fa438d54aad;
        // offset: 0x48, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec crafted;
        // offset: 0x60, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1975d12a85c62fd6;
        // offset: 0x78, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec best_kills;
        // offset: 0x90, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_4af819397d9b896e;
        // offset: 0xa8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_645c6772ff68073b;
        // offset: 0xc0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec assists;
        // offset: 0xd8, bitSize: 0xe70(0x1ce Byte(s)), array:0x16(hti:0xd)
        hash_2398b4de459cc95f hash_483f5be0d25bab80[zmenemytypes];
    };

    // bitSize: 0x1f8, members: 21
    struct equipmentstats {
        // offset: 0x0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_541781a552ffd970;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec uses;
        // offset: 0x30, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_359bbe76d1d24148;
        // offset: 0x48, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec kills;
        // offset: 0x60, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_5c5c962a0971316a;
        // offset: 0x78, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_65e055407b6d8c3e;
        // offset: 0x90, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7bf29fa438d54aad;
        // offset: 0xa8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6b473078d990e6b2;
        // offset: 0xc0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec crafted;
        // offset: 0xd8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_485f780a2a3da36a;
        // offset: 0xf0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec best_ekia;
        // offset: 0x108, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec best_kills;
        // offset: 0x120, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7612343d459539e4;
        // offset: 0x138, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_1bc3e0ea4bf67adf;
        // offset: 0x150, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec aether_shroud_revives;
        // offset: 0x168, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6b0fbad1bb3b10f1;
        // offset: 0x180, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_54fc499311f0b3d;
        // offset: 0x198, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_7b650cc374e36b5b;
        // offset: 0x1b0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_6104ccb8b9cd1659;
        // offset: 0x1c8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec assists;
        // offset: 0x1e0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_28be23967ca019c6;
    };

    // bitSize: 0x160, members: 11
    struct hash_597907208f5d1b09 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint gems;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint kills;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint version;
        // offset: 0x60, bitSize: 0x20(0x4 Byte(s))
        uint hash_30b1d9e3c997a7e9;
        // offset: 0x80, bitSize: 0x20(0x4 Byte(s))
        uint hash_15ec68fc61006a73;
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        uint deaths;
        // offset: 0xc0, bitSize: 0x20(0x4 Byte(s))
        uint hash_16bf05d4f1efc4eb;
        // offset: 0xe0, bitSize: 0x20(0x4 Byte(s))
        uint hash_293184ce9f1b2938;
        // offset: 0x100, bitSize: 0x20(0x4 Byte(s))
        uint totalgames;
        // offset: 0x120, bitSize: 0x20(0x4 Byte(s))
        uint highest_round;
        // offset: 0x140, bitSize: 0x20(0x4 Byte(s))
        uint highest_score;
    };

    // bitSize: 0x260, members: 18
    struct doastats {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint keys;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint version;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint hash_30c3377dea0ec672;
        // offset: 0x60, bitSize: 0x20(0x4 Byte(s))
        uint lastscore;
        // offset: 0x80, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_38521164875979cf;
        // offset: 0xc0, bitSize: 0x20(0x4 Byte(s))
        uint hash_72018b7229672430;
        // offset: 0xe0, bitSize: 0x20(0x4 Byte(s))
        uint hash_1328d5cabc7889be;
        // offset: 0x100, bitSize: 0x20(0x4 Byte(s))
        uint hintmask;
        // offset: 0x120, bitSize: 0x20(0x4 Byte(s))
        uint hash_264b2ce1e929e63;
        // offset: 0x140, bitSize: 0x20(0x4 Byte(s))
        uint hash_783086b558e2dc6d;
        // offset: 0x160, bitSize: 0x20(0x4 Byte(s))
        uint hash_5a6bd78423046ffb;
        // offset: 0x180, bitSize: 0x20(0x4 Byte(s))
        uint hash_6c97ca81659454e4;
        // offset: 0x1a0, bitSize: 0x20(0x4 Byte(s))
        uint careergames;
        // offset: 0x1c0, bitSize: 0x20(0x4 Byte(s))
        uint hash_662517d93580ed90;
        // offset: 0x1e0, bitSize: 0x20(0x4 Byte(s))
        uint career_kills;
        // offset: 0x200, bitSize: 0x20(0x4 Byte(s))
        uint career_deaths;
        // offset: 0x220, bitSize: 0x20(0x4 Byte(s))
        uint hash_504d11817d1d551e;
        // offset: 0x240, bitSize: 0x20(0x4 Byte(s))
        uint hash_2ee36cbdfb5f4bc1;
    };

    // bitSize: 0xa0, members: 5
    struct hash_728e8b5a7105e67b {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint lastkills;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint lastround;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint lastscore;
        // offset: 0x60, bitSize: 0x20(0x4 Byte(s))
        uint lastdeaths;
        // offset: 0x80, bitSize: 0x20(0x4 Byte(s))
        uint hash_200d869fc17e4b89;
    };

    // bitSize: 0xc0, members: 6
    struct hash_153f7ad59dfc6f88 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint hash_485f52fe58e6c27e;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint lastround;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint lastscore;
        // offset: 0x60, bitSize: 0x20(0x4 Byte(s))
        uint hash_35eb0550952dec8e;
        // offset: 0x80, bitSize: 0x20(0x4 Byte(s))
        uint hash_3a2be61c77418bea;
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        uint hash_453cb758fb485633;
    };

    // bitSize: 0x420, members: 2
    struct hash_128152f4aff1bf85 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint version;
        // offset: 0x20, bitSize: 0x400(0x80 Byte(s)), array:0x20(hti:0xffff)
        uint generic[32];
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
        hash_2b6b162a9af31225 hash_45814ac55657fc62;
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
        hash_6c116eea1f7184ec accuracy;
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

    // bitSize: 0x20, members: 2
    struct rankeditemstats {
        // offset: 0x0, bitSize: 0x18(0x3 Byte(s))
        uint:24 xp;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        byte plevel;
    };

    // bitSize: 0x448, members: 36
    struct itemstats {
        // offset: 0x0, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d ekia;
        // offset: 0x30, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hits;
        // offset: 0x48, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec used;
        // offset: 0x60, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d packedkills;
        // offset: 0x90, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hits_headshot;
        // offset: 0xa8, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d kills;
        // offset: 0xd8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec shots;
        // offset: 0xf0, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d criticals;
        // offset: 0x120, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 challenge1;
        // offset: 0x140, bitSize: 0x18(0x3 Byte(s))
        hash_126773fe8808efc0 challenges;
        // offset: 0x158, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d hash_c95b11060979bcb;
        // offset: 0x188, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec hash_20806ac72acd7d15;
        // offset: 0x1a0, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d doublepacked;
        // offset: 0x1d0, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 criticalmultikill;
        // offset: 0x1f8, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_14b7133a39a0456e;
        // offset: 0x210, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec deathsduringuse;
        // offset: 0x228, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec destroyed;
        // offset: 0x240, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 eliteeliminations;
        // offset: 0x268, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec timeused;
        // offset: 0x280, bitSize: 0x18(0x3 Byte(s))
        hash_126773fe8808efc0 challenges_completed;
        // offset: 0x298, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 hash_1f3b0d3bd9acb4a5;
        // offset: 0x2c0, bitSize: 0x18(0x3 Byte(s))
        hash_126773fe8808efc0 hash_362cbd72d16eaa5d;
        // offset: 0x2d8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec combatrecordstat;
        // offset: 0x2f0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec deaths;
        // offset: 0x308, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec specialkills;
        // offset: 0x320, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec verminkills;
        // offset: 0x338, bitSize: 0x28(0x5 Byte(s))
        hash_2b6b162a9af31225 multikill;
        // offset: 0x360, bitSize: 0x30(0x6 Byte(s))
        hash_3a0863dc1d7d622d packed;
        // offset: 0x390, bitSize: 0x18(0x3 Byte(s))
        hash_126773fe8808efc0 rapidkills;
        // offset: 0x3a8, bitSize: 0x8(0x1 Byte(s))
        bitstat hash_5a2ba340560103b3;
        // offset: 0x3b0, bitSize: 0x18(0x3 Byte(s))
        hash_285aa5a19a4bbb20 hash_49b586d05aaa0209;
        // offset: 0x3c8, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec assists;
        // offset: 0x3e0, bitSize: 0x18(0x3 Byte(s))
        hash_126773fe8808efc0 hash_1f451bc4d664e2ad;
        // offset: 0x3f8, bitSize: 0x18(0x3 Byte(s))
        hash_126773fe8808efc0 meleecombo;
        // offset: 0x410, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec headshots;
        // offset: 0x428, bitSize: 0x20(0x4 Byte(s))
        hash_1dd529d6f1f087b0 bigbang;
    };

    // bitSize: 0x30, members: 2
    struct perkstats {
        // offset: 0x0, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec modifier_given;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s))
        hash_6c116eea1f7184ec given;
    };

    // bitSize: 0x68, members: 3
    struct hash_60f6edbfd3c6553b {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_487f0fce798b3a4b;
        // offset: 0x8, bitSize: 0x40(0x8 Byte(s))
        uint64 calling_timestamp;
        // offset: 0x48, bitSize: 0x20(0x4 Byte(s))
        int progress;
    };

    // bitSize: 0x248, members: 582
    struct zmintelstats {
        // offset: 0x0, bitSize: 0x1
        bool zmintel_platinum_darkaether_radio_01;
        // offset: 0x1, bitSize: 0x1
        bool zmintel_platinum_darkaether_radio_02;
        // offset: 0x2, bitSize: 0x1
        bool zmintel_cartel_omega_document_1;
        // offset: 0x3, bitSize: 0x1
        bool zmintel_cartel_omega_document_2;
        // offset: 0x4, bitSize: 0x1
        bool zmintel_cartel_omega_document_3;
        // offset: 0x5, bitSize: 0x1
        bool zmintel_survival_darkaether_audiolog_1;
        // offset: 0x6, bitSize: 0x1
        bool zmintel_survival_darkaether_audiolog_2;
        // offset: 0x7, bitSize: 0x1
        bool zmintel_survival_darkaether_audiolog_3;
        // offset: 0x8, bitSize: 0x1
        bool zmintel_survival_darkaether_audiolog_4;
        // offset: 0x9, bitSize: 0x1
        bool zmintel_survival_darkaether_audiolog_5;
        // offset: 0xa, bitSize: 0x1
        bool zmintel_survival_darkaether_audiolog_6;
        // offset: 0xb, bitSize: 0x1
        bool zmintel_survival_darkaether_audiolog_7;
        // offset: 0xc, bitSize: 0x1
        bool zmintel_survival_darkaether_audiolog_8;
        // offset: 0xd, bitSize: 0x1
        bool zmintel_survival_darkaether_audiolog_9;
        // offset: 0xe, bitSize: 0x1
        bool zmintel_gold_requiem_document_1;
        // offset: 0xf, bitSize: 0x1
        bool zmintel_gold_requiem_document_2;
        // offset: 0x10, bitSize: 0x1
        bool zmintel_gold_requiem_document_3;
        // offset: 0x11, bitSize: 0x1
        bool zmintel_gold_requiem_document_4;
        // offset: 0x12, bitSize: 0x1
        bool zmintel_gold_requiem_document_5;
        // offset: 0x13, bitSize: 0x1
        bool zmintel_gold_requiem_document_6;
        // offset: 0x14, bitSize: 0x1
        bool zmintel_gold_requiem_document_7;
        // offset: 0x15, bitSize: 0x1
        bool zmintel_platinum_requiem_artifact_01;
        // offset: 0x16, bitSize: 0x1
        bool zmintel_platinum_requiem_artifact_02;
        // offset: 0x17, bitSize: 0x1
        bool zmintel_platinum_requiem_artifact_03;
        // offset: 0x18, bitSize: 0x1
        bool zmintel_platinum_requiem_artifact_04;
        // offset: 0x19, bitSize: 0x1
        bool zmintel_platinum_requiem_artifact_05;
        // offset: 0x1a, bitSize: 0x1
        bool zmintel_platinum_requiem_artifact_06;
        // offset: 0x1b, bitSize: 0x1
        bool zmintel_gold_darkaether_document_10;
        // offset: 0x1c, bitSize: 0x1
        bool zmintel_gold_darkaether_document_11;
        // offset: 0x1d, bitSize: 0x1
        bool zmintel_gold_darkaether_document_12;
        // offset: 0x1e, bitSize: 0x1
        bool zmintel_gold_darkaether_document_13;
        // offset: 0x1f, bitSize: 0x1
        bool zmintel_survival_maxis_document_1;
        // offset: 0x20, bitSize: 0x1
        bool zmintel_survival_maxis_document_2;
        // offset: 0x21, bitSize: 0x1
        bool zmintel_survival_maxis_document_3;
        // offset: 0x22, bitSize: 0x1
        bool zmintel_survival_maxis_document_4;
        // offset: 0x23, bitSize: 0x1
        bool zmintel_survival_maxis_document_5;
        // offset: 0x24, bitSize: 0x1
        bool zmintel_survival_maxis_document_6;
        // offset: 0x25, bitSize: 0x1
        bool zmintel_survival_maxis_document_7;
        // offset: 0x26, bitSize: 0x1
        bool zmintel_survival_maxis_document_8;
        // offset: 0x27, bitSize: 0x1
        bool zmintel_survival_maxis_document_9;
        // offset: 0x28, bitSize: 0x1
        bool zmintel_satellite_requiem_document_1;
        // offset: 0x29, bitSize: 0x1
        bool zmintel_satellite_requiem_document_2;
        // offset: 0x2a, bitSize: 0x1
        bool zmintel_satellite_requiem_document_3;
        // offset: 0x2b, bitSize: 0x1
        bool zmintel_platinum_darkaether_document_01;
        // offset: 0x2c, bitSize: 0x1
        bool zmintel_platinum_darkaether_document_02;
        // offset: 0x2d, bitSize: 0x1
        bool zmintel_platinum_darkaether_document_03;
        // offset: 0x2e, bitSize: 0x1
        bool hash_152bc0f97f475e8a;
        // offset: 0x2f, bitSize: 0x1
        bool zmintel_silver_darkaether_radio_1;
        // offset: 0x30, bitSize: 0x1
        bool zmintel_silver_darkaether_radio_2;
        // offset: 0x31, bitSize: 0x1
        bool zmintel_silver_darkaether_radio_3;
        // offset: 0x32, bitSize: 0x1
        bool zmintel_silver_darkaether_radio_4;
        // offset: 0x33, bitSize: 0x1
        bool zmintel_silver_darkaether_radio_5;
        // offset: 0x34, bitSize: 0x1
        bool zmintel_survival_omega_artifact_1;
        // offset: 0x35, bitSize: 0x1
        bool zmintel_survival_omega_artifact_2;
        // offset: 0x36, bitSize: 0x1
        bool zmintel_survival_omega_artifact_3;
        // offset: 0x37, bitSize: 0x1
        bool zmintel_survival_omega_artifact_4;
        // offset: 0x38, bitSize: 0x1
        bool zmintel_survival_omega_artifact_5;
        // offset: 0x39, bitSize: 0x1
        bool zmintel_survival_omega_artifact_6;
        // offset: 0x3a, bitSize: 0x1
        bool zmintel_survival_omega_artifact_7;
        // offset: 0x3b, bitSize: 0x1
        bool zmintel_survival_omega_artifact_8;
        // offset: 0x3c, bitSize: 0x1
        bool zmintel_survival_omega_artifact_9;
        // offset: 0x3d, bitSize: 0x1
        bool zmintel_survival_maxis_radio_1;
        // offset: 0x3e, bitSize: 0x1
        bool zmintel_survival_maxis_radio_2;
        // offset: 0x3f, bitSize: 0x1
        bool zmintel_survival_maxis_radio_3;
        // offset: 0x40, bitSize: 0x1
        bool zmintel_survival_maxis_radio_4;
        // offset: 0x41, bitSize: 0x1
        bool zmintel_survival_maxis_radio_5;
        // offset: 0x42, bitSize: 0x1
        bool zmintel_survival_maxis_radio_6;
        // offset: 0x43, bitSize: 0x1
        bool zmintel_survival_maxis_radio_7;
        // offset: 0x44, bitSize: 0x1
        bool zmintel_survival_maxis_radio_8;
        // offset: 0x45, bitSize: 0x1
        bool zmintel_survival_maxis_radio_9;
        // offset: 0x46, bitSize: 0x1
        bool zmintel_tungsten_requiem_artifact_1;
        // offset: 0x47, bitSize: 0x1
        bool zmintel_tungsten_requiem_artifact_2;
        // offset: 0x48, bitSize: 0x1
        bool zmintel_tungsten_requiem_artifact_3;
        // offset: 0x49, bitSize: 0x1
        bool zmintel_tungsten_requiem_artifact_4;
        // offset: 0x4a, bitSize: 0x1
        bool zmintel_tungsten_requiem_artifact_5;
        // offset: 0x4b, bitSize: 0x1
        bool zmintel_gold_darkaether_radio_1;
        // offset: 0x4c, bitSize: 0x1
        bool zmintel_gold_darkaether_radio_2;
        // offset: 0x4d, bitSize: 0x1
        bool zmintel_silver_darkaether_document_10;
        // offset: 0x4e, bitSize: 0x1
        bool zmintel_silver_darkaether_document_11;
        // offset: 0x4f, bitSize: 0x1
        bool zmintel_silver_darkaether_document_12;
        // offset: 0x50, bitSize: 0x1
        bool zmintel_silver_darkaether_document_13;
        // offset: 0x51, bitSize: 0x1
        bool zmintel_silver_darkaether_document_14;
        // offset: 0x52, bitSize: 0x1
        bool zmintel_silver_darkaether_document_15;
        // offset: 0x53, bitSize: 0x1
        bool zmintel_apocalypse_omega_document_1;
        // offset: 0x54, bitSize: 0x1
        bool zmintel_apocalypse_omega_document_2;
        // offset: 0x55, bitSize: 0x1
        bool zmintel_apocalypse_omega_document_3;
        // offset: 0x56, bitSize: 0x1
        bool zmintel_tungsten_darkaether_artifact_1;
        // offset: 0x57, bitSize: 0x1
        bool zmintel_tungsten_darkaether_artifact_2;
        // offset: 0x58, bitSize: 0x1
        bool zmintel_tungsten_darkaether_artifact_3;
        // offset: 0x59, bitSize: 0x1
        bool zmintel_tungsten_darkaether_artifact_4;
        // offset: 0x5a, bitSize: 0x1
        bool zmintel_silver_maxis_document_1;
        // offset: 0x5b, bitSize: 0x1
        bool zmintel_silver_maxis_document_2;
        // offset: 0x5c, bitSize: 0x1
        bool zmintel_silver_maxis_document_3;
        // offset: 0x5d, bitSize: 0x1
        bool zmintel_survival_requiem_document_10;
        // offset: 0x5e, bitSize: 0x1
        bool zmintel_survival_requiem_document_11;
        // offset: 0x5f, bitSize: 0x1
        bool zmintel_survival_requiem_document_12;
        // offset: 0x60, bitSize: 0x1
        bool zmintel_survival_requiem_document_13;
        // offset: 0x61, bitSize: 0x1
        bool zmintel_survival_requiem_document_14;
        // offset: 0x62, bitSize: 0x1
        bool zmintel_survival_requiem_document_15;
        // offset: 0x63, bitSize: 0x1
        bool zmintel_survival_requiem_document_16;
        // offset: 0x64, bitSize: 0x1
        bool zmintel_survival_requiem_document_17;
        // offset: 0x65, bitSize: 0x1
        bool zmintel_survival_requiem_document_18;
        // offset: 0x66, bitSize: 0x1
        bool zmintel_survival_requiem_document_19;
        // offset: 0x67, bitSize: 0x1
        bool zmintel_survival_requiem_document_20;
        // offset: 0x68, bitSize: 0x1
        bool zmintel_survival_requiem_document_21;
        // offset: 0x69, bitSize: 0x1
        bool zmintel_survival_requiem_document_22;
        // offset: 0x6a, bitSize: 0x1
        bool zmintel_survival_requiem_document_23;
        // offset: 0x6b, bitSize: 0x1
        bool zmintel_survival_requiem_document_24;
        // offset: 0x6c, bitSize: 0x1
        bool zmintel_survival_requiem_document_25;
        // offset: 0x6d, bitSize: 0x1
        bool zmintel_survival_requiem_document_26;
        // offset: 0x6e, bitSize: 0x1
        bool zmintel_gold_omega_document_1;
        // offset: 0x6f, bitSize: 0x1
        bool zmintel_gold_omega_document_2;
        // offset: 0x70, bitSize: 0x1
        bool zmintel_gold_omega_document_3;
        // offset: 0x71, bitSize: 0x1
        bool zmintel_gold_omega_document_4;
        // offset: 0x72, bitSize: 0x1
        bool zmintel_gold_omega_document_5;
        // offset: 0x73, bitSize: 0x1
        bool zmintel_gold_omega_document_6;
        // offset: 0x74, bitSize: 0x1
        bool zmintel_village_omega_document_1;
        // offset: 0x75, bitSize: 0x1
        bool zmintel_village_omega_document_2;
        // offset: 0x76, bitSize: 0x1
        bool zmintel_village_omega_document_3;
        // offset: 0x77, bitSize: 0x1
        bool zmintel_express_requiem_document_1;
        // offset: 0x78, bitSize: 0x1
        bool zmintel_express_requiem_document_2;
        // offset: 0x79, bitSize: 0x1
        bool zmintel_express_requiem_document_3;
        // offset: 0x7a, bitSize: 0x1
        bool zmintel_gold_omega_radio_1;
        // offset: 0x7b, bitSize: 0x1
        bool zmintel_gold_omega_radio_2;
        // offset: 0x7c, bitSize: 0x1
        bool zmintel_gold_omega_radio_3;
        // offset: 0x7d, bitSize: 0x1
        bool zmintel_gold_omega_radio_4;
        // offset: 0x7e, bitSize: 0x1
        bool zmintel_gold_omega_radio_5;
        // offset: 0x7f, bitSize: 0x1
        bool zmintel_survival_requiem_audiolog_1;
        // offset: 0x80, bitSize: 0x1
        bool zmintel_survival_requiem_audiolog_2;
        // offset: 0x81, bitSize: 0x1
        bool zmintel_survival_requiem_audiolog_3;
        // offset: 0x82, bitSize: 0x1
        bool zmintel_survival_requiem_audiolog_4;
        // offset: 0x83, bitSize: 0x1
        bool zmintel_survival_requiem_audiolog_5;
        // offset: 0x84, bitSize: 0x1
        bool zmintel_survival_requiem_audiolog_6;
        // offset: 0x85, bitSize: 0x1
        bool zmintel_survival_requiem_audiolog_7;
        // offset: 0x86, bitSize: 0x1
        bool zmintel_survival_requiem_audiolog_8;
        // offset: 0x87, bitSize: 0x1
        bool zmintel_survival_requiem_audiolog_9;
        // offset: 0x88, bitSize: 0x1
        bool zmintel_silver_omega_artifact_1;
        // offset: 0x89, bitSize: 0x1
        bool zmintel_silver_requiem_artifact_1;
        // offset: 0x8a, bitSize: 0x1
        bool zmintel_silver_requiem_artifact_2;
        // offset: 0x8b, bitSize: 0x1
        bool zmintel_silver_requiem_artifact_3;
        // offset: 0x8c, bitSize: 0x1
        bool zmintel_silver_requiem_artifact_4;
        // offset: 0x8d, bitSize: 0x1
        bool zmintel_silver_requiem_artifact_5;
        // offset: 0x8e, bitSize: 0x1
        bool zmintel_platinum_darkaether_audiolog_01;
        // offset: 0x8f, bitSize: 0x1
        bool zmintel_platinum_darkaether_audiolog_02;
        // offset: 0x90, bitSize: 0x1
        bool zmintel_platinum_darkaether_audiolog_03;
        // offset: 0x91, bitSize: 0x1
        bool zmintel_gold_requiem_artifact_1;
        // offset: 0x92, bitSize: 0x1
        bool zmintel_gold_requiem_artifact_2;
        // offset: 0x93, bitSize: 0x1
        bool zmintel_gold_requiem_artifact_3;
        // offset: 0x94, bitSize: 0x1
        bool zmintel_gold_requiem_artifact_4;
        // offset: 0x95, bitSize: 0x1
        bool zmintel_survival_requiem_radio_10;
        // offset: 0x96, bitSize: 0x1
        bool zmintel_survival_requiem_radio_11;
        // offset: 0x97, bitSize: 0x1
        bool zmintel_survival_requiem_radio_12;
        // offset: 0x98, bitSize: 0x1
        bool zmintel_survival_requiem_radio_13;
        // offset: 0x99, bitSize: 0x1
        bool zmintel_survival_requiem_radio_14;
        // offset: 0x9a, bitSize: 0x1
        bool zmintel_survival_requiem_radio_15;
        // offset: 0x9b, bitSize: 0x1
        bool zmintel_silver_darkaether_audiolog_1;
        // offset: 0x9c, bitSize: 0x1
        bool zmintel_silver_darkaether_audiolog_2;
        // offset: 0x9d, bitSize: 0x1
        bool zmintel_silver_darkaether_audiolog_3;
        // offset: 0x9e, bitSize: 0x1
        bool zmintel_silver_darkaether_audiolog_4;
        // offset: 0x9f, bitSize: 0x1
        bool zmintel_silver_darkaether_audiolog_5;
        // offset: 0xa0, bitSize: 0x1
        bool zmintel_silver_darkaether_audiolog_6;
        // offset: 0xa1, bitSize: 0x1
        bool zmintel_silver_darkaether_audiolog_7;
        // offset: 0xa2, bitSize: 0x1
        bool zmintel_silver_darkaether_audiolog_8;
        // offset: 0xa3, bitSize: 0x1
        bool zmintel_survival_maxis_artifact_1;
        // offset: 0xa4, bitSize: 0x1
        bool zmintel_survival_maxis_artifact_2;
        // offset: 0xa5, bitSize: 0x1
        bool zmintel_survival_maxis_artifact_3;
        // offset: 0xa6, bitSize: 0x1
        bool zmintel_survival_maxis_artifact_4;
        // offset: 0xa7, bitSize: 0x1
        bool zmintel_survival_maxis_artifact_5;
        // offset: 0xa8, bitSize: 0x1
        bool zmintel_survival_maxis_artifact_6;
        // offset: 0xa9, bitSize: 0x1
        bool zmintel_survival_maxis_artifact_7;
        // offset: 0xaa, bitSize: 0x1
        bool zmintel_survival_maxis_artifact_8;
        // offset: 0xab, bitSize: 0x1
        bool zmintel_survival_requiem_audiolog_10;
        // offset: 0xac, bitSize: 0x1
        bool zmintel_survival_requiem_audiolog_11;
        // offset: 0xad, bitSize: 0x1
        bool zmintel_survival_requiem_audiolog_12;
        // offset: 0xae, bitSize: 0x1
        bool zmintel_survival_requiem_audiolog_13;
        // offset: 0xaf, bitSize: 0x1
        bool zmintel_survival_requiem_audiolog_14;
        // offset: 0xb0, bitSize: 0x1
        bool zmintel_survival_requiem_audiolog_15;
        // offset: 0xb1, bitSize: 0x1
        bool zmintel_survival_requiem_audiolog_16;
        // offset: 0xb2, bitSize: 0x1
        bool zmintel_survival_requiem_audiolog_17;
        // offset: 0xb3, bitSize: 0x1
        bool zmintel_survival_requiem_audiolog_18;
        // offset: 0xb4, bitSize: 0x1
        bool zmintel_survival_requiem_audiolog_19;
        // offset: 0xb5, bitSize: 0x1
        bool zmintel_survival_requiem_audiolog_20;
        // offset: 0xb6, bitSize: 0x1
        bool zmintel_survival_requiem_audiolog_21;
        // offset: 0xb7, bitSize: 0x1
        bool zmintel_survival_requiem_audiolog_22;
        // offset: 0xb8, bitSize: 0x1
        bool zmintel_survival_requiem_audiolog_23;
        // offset: 0xb9, bitSize: 0x1
        bool zmintel_survival_requiem_audiolog_24;
        // offset: 0xba, bitSize: 0x1
        bool zmintel_tank_maxis_document_1;
        // offset: 0xbb, bitSize: 0x1
        bool zmintel_tank_maxis_document_2;
        // offset: 0xbc, bitSize: 0x1
        bool zmintel_tank_maxis_document_3;
        // offset: 0xbd, bitSize: 0x1
        bool zmintel_tungsten_omega_audiolog_1;
        // offset: 0xbe, bitSize: 0x1
        bool zmintel_tungsten_omega_audiolog_2;
        // offset: 0xbf, bitSize: 0x1
        bool zmintel_tungsten_omega_audiolog_3;
        // offset: 0xc0, bitSize: 0x1
        bool zmintel_tungsten_omega_audiolog_4;
        // offset: 0xc1, bitSize: 0x1
        bool zmintel_drivein_requiem_document_1;
        // offset: 0xc2, bitSize: 0x1
        bool zmintel_drivein_requiem_document_2;
        // offset: 0xc3, bitSize: 0x1
        bool zmintel_drivein_requiem_document_3;
        // offset: 0xc4, bitSize: 0x1
        bool zmintel_firebase_maxis_document_1;
        // offset: 0xc5, bitSize: 0x1
        bool zmintel_firebase_maxis_document_2;
        // offset: 0xc6, bitSize: 0x1
        bool zmintel_firebase_maxis_document_3;
        // offset: 0xc7, bitSize: 0x1
        bool zmintel_survival_darkaether_artifact_10;
        // offset: 0xc8, bitSize: 0x1
        bool zmintel_survival_darkaether_artifact_11;
        // offset: 0xc9, bitSize: 0x1
        bool zmintel_survival_darkaether_artifact_12;
        // offset: 0xca, bitSize: 0x1
        bool zmintel_survival_darkaether_artifact_13;
        // offset: 0xcb, bitSize: 0x1
        bool zmintel_survival_darkaether_artifact_14;
        // offset: 0xcc, bitSize: 0x1
        bool zmintel_survival_darkaether_artifact_15;
        // offset: 0xcd, bitSize: 0x1
        bool zmintel_survival_darkaether_artifact_16;
        // offset: 0xce, bitSize: 0x1
        bool zmintel_survival_darkaether_artifact_17;
        // offset: 0xcf, bitSize: 0x1
        bool zmintel_survival_darkaether_artifact_18;
        // offset: 0xd0, bitSize: 0x1
        bool zmintel_survival_darkaether_artifact_19;
        // offset: 0xd1, bitSize: 0x1
        bool zmintel_survival_darkaether_artifact_20;
        // offset: 0xd2, bitSize: 0x1
        bool zmintel_survival_darkaether_artifact_21;
        // offset: 0xd3, bitSize: 0x1
        bool zmintel_survival_darkaether_artifact_22;
        // offset: 0xd4, bitSize: 0x1
        bool zmintel_gold_maxis_radio_1;
        // offset: 0xd5, bitSize: 0x1
        bool zmintel_gold_maxis_radio_2;
        // offset: 0xd6, bitSize: 0x1
        bool zmintel_gold_maxis_radio_3;
        // offset: 0xd7, bitSize: 0x1
        bool zmintel_gold_maxis_radio_4;
        // offset: 0xd8, bitSize: 0x1
        bool zmintel_gold_maxis_radio_5;
        // offset: 0xd9, bitSize: 0x1
        bool zmintel_gold_maxis_radio_6;
        // offset: 0xda, bitSize: 0x1
        bool zmintel_gold_maxis_radio_7;
        // offset: 0xdb, bitSize: 0x1
        bool zmintel_gold_maxis_radio_8;
        // offset: 0xdc, bitSize: 0x1
        bool zmintel_gold_maxis_radio_9;
        // offset: 0xdd, bitSize: 0x1
        bool zmintel_gold_darkaether_document_1;
        // offset: 0xde, bitSize: 0x1
        bool zmintel_gold_darkaether_document_2;
        // offset: 0xdf, bitSize: 0x1
        bool zmintel_gold_darkaether_document_3;
        // offset: 0xe0, bitSize: 0x1
        bool zmintel_gold_darkaether_document_4;
        // offset: 0xe1, bitSize: 0x1
        bool zmintel_gold_darkaether_document_5;
        // offset: 0xe2, bitSize: 0x1
        bool zmintel_gold_darkaether_document_6;
        // offset: 0xe3, bitSize: 0x1
        bool zmintel_gold_darkaether_document_7;
        // offset: 0xe4, bitSize: 0x1
        bool zmintel_gold_darkaether_document_8;
        // offset: 0xe5, bitSize: 0x1
        bool zmintel_gold_darkaether_document_9;
        // offset: 0xe6, bitSize: 0x1
        bool zmintel_platinum_omega_document_01;
        // offset: 0xe7, bitSize: 0x1
        bool zmintel_platinum_omega_document_02;
        // offset: 0xe8, bitSize: 0x1
        bool zmintel_platinum_omega_document_03;
        // offset: 0xe9, bitSize: 0x1
        bool zmintel_platinum_omega_document_04;
        // offset: 0xea, bitSize: 0x1
        bool zmintel_platinum_omega_document_05;
        // offset: 0xeb, bitSize: 0x1
        bool zmintel_platinum_omega_document_06;
        // offset: 0xec, bitSize: 0x1
        bool zmintel_gold_maxis_document_1;
        // offset: 0xed, bitSize: 0x1
        bool zmintel_gold_maxis_document_2;
        // offset: 0xee, bitSize: 0x1
        bool zmintel_gold_maxis_document_3;
        // offset: 0xef, bitSize: 0x1
        bool zmintel_gold_maxis_document_4;
        // offset: 0xf0, bitSize: 0x1
        bool zmintel_gold_requiem_radio_1;
        // offset: 0xf1, bitSize: 0x1
        bool zmintel_gold_requiem_radio_2;
        // offset: 0xf2, bitSize: 0x1
        bool zmintel_gold_requiem_radio_3;
        // offset: 0xf3, bitSize: 0x1
        bool zmintel_gold_requiem_radio_4;
        // offset: 0xf4, bitSize: 0x1
        bool zmintel_gold_requiem_radio_5;
        // offset: 0xf5, bitSize: 0x1
        bool zmintel_gold_requiem_radio_6;
        // offset: 0xf6, bitSize: 0x1
        bool zmintel_gold_requiem_radio_7;
        // offset: 0xf7, bitSize: 0x1
        bool zmintel_gold_requiem_radio_8;
        // offset: 0xf8, bitSize: 0x1
        bool zmintel_gold_requiem_radio_9;
        // offset: 0xf9, bitSize: 0x1
        bool zmintel_moscow_omega_document_1;
        // offset: 0xfa, bitSize: 0x1
        bool zmintel_platinum_requiem_document_01;
        // offset: 0xfb, bitSize: 0x1
        bool zmintel_platinum_requiem_document_02;
        // offset: 0xfc, bitSize: 0x1
        bool zmintel_platinum_requiem_document_03;
        // offset: 0xfd, bitSize: 0x1
        bool zmintel_platinum_requiem_document_04;
        // offset: 0xfe, bitSize: 0x1
        bool zmintel_platinum_requiem_document_05;
        // offset: 0xff, bitSize: 0x1
        bool zmintel_platinum_requiem_document_06;
        // offset: 0x100, bitSize: 0x1
        bool zmintel_platinum_requiem_document_07;
        // offset: 0x101, bitSize: 0x1
        bool zmintel_platinum_requiem_document_08;
        // offset: 0x102, bitSize: 0x1
        bool zmintel_platinum_requiem_document_09;
        // offset: 0x103, bitSize: 0x1
        bool zmintel_platinum_requiem_document_10;
        // offset: 0x104, bitSize: 0x1
        bool zmintel_survival_omega_audiolog_1;
        // offset: 0x105, bitSize: 0x1
        bool zmintel_survival_omega_audiolog_2;
        // offset: 0x106, bitSize: 0x1
        bool zmintel_survival_omega_audiolog_3;
        // offset: 0x107, bitSize: 0x1
        bool zmintel_survival_omega_audiolog_4;
        // offset: 0x108, bitSize: 0x1
        bool zmintel_survival_omega_audiolog_5;
        // offset: 0x109, bitSize: 0x1
        bool zmintel_survival_omega_audiolog_6;
        // offset: 0x10a, bitSize: 0x1
        bool zmintel_survival_omega_audiolog_7;
        // offset: 0x10b, bitSize: 0x1
        bool zmintel_survival_omega_audiolog_8;
        // offset: 0x10c, bitSize: 0x1
        bool zmintel_survival_omega_audiolog_9;
        // offset: 0x10d, bitSize: 0x1
        bool zmintel_gold_omega_artifact_1;
        // offset: 0x10e, bitSize: 0x1
        bool zmintel_gold_omega_artifact_2;
        // offset: 0x10f, bitSize: 0x1
        bool zmintel_gold_omega_artifact_3;
        // offset: 0x110, bitSize: 0x1
        bool zmintel_gold_omega_artifact_4;
        // offset: 0x111, bitSize: 0x1
        bool zmintel_gold_omega_artifact_5;
        // offset: 0x112, bitSize: 0x1
        bool zmintel_tungsten_requiem_audiolog_1;
        // offset: 0x113, bitSize: 0x1
        bool zmintel_tungsten_requiem_audiolog_2;
        // offset: 0x114, bitSize: 0x1
        bool zmintel_tungsten_requiem_audiolog_3;
        // offset: 0x115, bitSize: 0x1
        bool zmintel_tungsten_requiem_audiolog_4;
        // offset: 0x116, bitSize: 0x1
        bool zmintel_survival_omega_artifact_10;
        // offset: 0x117, bitSize: 0x1
        bool zmintel_survival_omega_artifact_11;
        // offset: 0x118, bitSize: 0x1
        bool zmintel_survival_omega_artifact_12;
        // offset: 0x119, bitSize: 0x1
        bool zmintel_survival_omega_artifact_13;
        // offset: 0x11a, bitSize: 0x1
        bool zmintel_survival_omega_artifact_14;
        // offset: 0x11b, bitSize: 0x1
        bool zmintel_survival_omega_artifact_15;
        // offset: 0x11c, bitSize: 0x1
        bool zmintel_survival_omega_artifact_16;
        // offset: 0x11d, bitSize: 0x1
        bool zmintel_survival_omega_artifact_17;
        // offset: 0x11e, bitSize: 0x1
        bool zmintel_survival_omega_artifact_18;
        // offset: 0x11f, bitSize: 0x1
        bool zmintel_survival_omega_artifact_19;
        // offset: 0x120, bitSize: 0x1
        bool zmintel_survival_omega_artifact_20;
        // offset: 0x121, bitSize: 0x1
        bool zmintel_survival_darkaether_document_1;
        // offset: 0x122, bitSize: 0x1
        bool zmintel_survival_darkaether_document_2;
        // offset: 0x123, bitSize: 0x1
        bool zmintel_survival_darkaether_document_3;
        // offset: 0x124, bitSize: 0x1
        bool zmintel_survival_darkaether_document_4;
        // offset: 0x125, bitSize: 0x1
        bool zmintel_survival_darkaether_document_5;
        // offset: 0x126, bitSize: 0x1
        bool zmintel_survival_darkaether_document_6;
        // offset: 0x127, bitSize: 0x1
        bool zmintel_survival_darkaether_document_7;
        // offset: 0x128, bitSize: 0x1
        bool zmintel_survival_darkaether_document_8;
        // offset: 0x129, bitSize: 0x1
        bool zmintel_survival_darkaether_document_9;
        // offset: 0x12a, bitSize: 0x1
        bool zmintel_cliffhanger_omega_document_1;
        // offset: 0x12b, bitSize: 0x1
        bool zmintel_cliffhanger_omega_document_2;
        // offset: 0x12c, bitSize: 0x1
        bool zmintel_cliffhanger_omega_document_3;
        // offset: 0x12d, bitSize: 0x1
        bool zmintel_platinum_omega_audiolog_01;
        // offset: 0x12e, bitSize: 0x1
        bool zmintel_platinum_omega_audiolog_02;
        // offset: 0x12f, bitSize: 0x1
        bool zmintel_platinum_omega_audiolog_03;
        // offset: 0x130, bitSize: 0x1
        bool zmintel_mp_s1_m_document_1;
        // offset: 0x131, bitSize: 0x1
        bool zmintel_mp_s1_m_document_2;
        // offset: 0x132, bitSize: 0x1
        bool zmintel_mp_s1_m_document_3;
        // offset: 0x133, bitSize: 0x1
        bool zmintel_tungsten_maxis_audiolog_1;
        // offset: 0x134, bitSize: 0x1
        bool zmintel_tungsten_maxis_audiolog_2;
        // offset: 0x135, bitSize: 0x1
        bool zmintel_tungsten_maxis_audiolog_3;
        // offset: 0x136, bitSize: 0x1
        bool zmintel_survival_requiem_radio_1;
        // offset: 0x137, bitSize: 0x1
        bool zmintel_survival_requiem_radio_2;
        // offset: 0x138, bitSize: 0x1
        bool zmintel_survival_requiem_radio_3;
        // offset: 0x139, bitSize: 0x1
        bool zmintel_survival_requiem_radio_4;
        // offset: 0x13a, bitSize: 0x1
        bool zmintel_survival_requiem_radio_5;
        // offset: 0x13b, bitSize: 0x1
        bool zmintel_survival_requiem_radio_6;
        // offset: 0x13c, bitSize: 0x1
        bool zmintel_survival_requiem_radio_7;
        // offset: 0x13d, bitSize: 0x1
        bool zmintel_survival_requiem_radio_8;
        // offset: 0x13e, bitSize: 0x1
        bool zmintel_survival_requiem_radio_9;
        // offset: 0x13f, bitSize: 0x1
        bool zmintel_silver_omega_audiolog_1;
        // offset: 0x140, bitSize: 0x1
        bool zmintel_silver_omega_audiolog_2;
        // offset: 0x141, bitSize: 0x1
        bool zmintel_silver_omega_audiolog_3;
        // offset: 0x142, bitSize: 0x1
        bool zmintel_silver_omega_audiolog_4;
        // offset: 0x143, bitSize: 0x1
        bool zmintel_silver_omega_audiolog_5;
        // offset: 0x144, bitSize: 0x1
        bool zmintel_paintball_requiem_document_1;
        // offset: 0x145, bitSize: 0x1
        bool zmintel_paintball_requiem_document_2;
        // offset: 0x146, bitSize: 0x1
        bool zmintel_paintball_requiem_document_3;
        // offset: 0x147, bitSize: 0x1
        bool zmintel_silver_requiem_audiolog_1;
        // offset: 0x148, bitSize: 0x1
        bool zmintel_silver_requiem_audiolog_2;
        // offset: 0x149, bitSize: 0x1
        bool zmintel_silver_requiem_audiolog_3;
        // offset: 0x14a, bitSize: 0x1
        bool zmintel_silver_requiem_audiolog_4;
        // offset: 0x14b, bitSize: 0x1
        bool zmintel_platinum_requiem_audiolog_01;
        // offset: 0x14c, bitSize: 0x1
        bool zmintel_platinum_requiem_audiolog_02;
        // offset: 0x14d, bitSize: 0x1
        bool zmintel_platinum_requiem_audiolog_03;
        // offset: 0x14e, bitSize: 0x1
        bool zmintel_platinum_requiem_audiolog_04;
        // offset: 0x14f, bitSize: 0x1
        bool zmintel_platinum_requiem_audiolog_05;
        // offset: 0x150, bitSize: 0x1
        bool zmintel_gold_requiem_audiolog_1;
        // offset: 0x151, bitSize: 0x1
        bool zmintel_gold_requiem_audiolog_2;
        // offset: 0x152, bitSize: 0x1
        bool zmintel_gold_requiem_audiolog_3;
        // offset: 0x153, bitSize: 0x1
        bool zmintel_gold_requiem_audiolog_4;
        // offset: 0x154, bitSize: 0x1
        bool zmintel_nuketown_requiem_document_1;
        // offset: 0x155, bitSize: 0x1
        bool zmintel_nuketown_requiem_document_2;
        // offset: 0x156, bitSize: 0x1
        bool zmintel_nuketown_requiem_document_3;
        // offset: 0x157, bitSize: 0x1
        bool zmintel_gold_requiem_radio_10;
        // offset: 0x158, bitSize: 0x1
        bool zmintel_gold_requiem_radio_11;
        // offset: 0x159, bitSize: 0x1
        bool zmintel_gold_requiem_radio_12;
        // offset: 0x15a, bitSize: 0x1
        bool zmintel_gold_requiem_radio_13;
        // offset: 0x15b, bitSize: 0x1
        bool zmintel_gold_darkaether_artifact_1;
        // offset: 0x15c, bitSize: 0x1
        bool zmintel_survival_maxis_audiolog_1;
        // offset: 0x15d, bitSize: 0x1
        bool zmintel_survival_maxis_audiolog_2;
        // offset: 0x15e, bitSize: 0x1
        bool zmintel_survival_maxis_audiolog_3;
        // offset: 0x15f, bitSize: 0x1
        bool zmintel_survival_maxis_audiolog_4;
        // offset: 0x160, bitSize: 0x1
        bool zmintel_survival_maxis_audiolog_5;
        // offset: 0x161, bitSize: 0x1
        bool zmintel_survival_maxis_audiolog_6;
        // offset: 0x162, bitSize: 0x1
        bool zmintel_survival_maxis_audiolog_7;
        // offset: 0x163, bitSize: 0x1
        bool zmintel_survival_maxis_audiolog_8;
        // offset: 0x164, bitSize: 0x1
        bool zmintel_survival_maxis_audiolog_9;
        // offset: 0x165, bitSize: 0x1
        bool zmintel_survival_requiem_document_1;
        // offset: 0x166, bitSize: 0x1
        bool zmintel_survival_requiem_document_2;
        // offset: 0x167, bitSize: 0x1
        bool zmintel_survival_requiem_document_3;
        // offset: 0x168, bitSize: 0x1
        bool zmintel_survival_requiem_document_4;
        // offset: 0x169, bitSize: 0x1
        bool zmintel_survival_requiem_document_5;
        // offset: 0x16a, bitSize: 0x1
        bool zmintel_survival_requiem_document_6;
        // offset: 0x16b, bitSize: 0x1
        bool zmintel_survival_requiem_document_7;
        // offset: 0x16c, bitSize: 0x1
        bool zmintel_survival_requiem_document_8;
        // offset: 0x16d, bitSize: 0x1
        bool zmintel_survival_requiem_document_9;
        // offset: 0x16e, bitSize: 0x1
        bool zmintel_echelon_requiem_document_1;
        // offset: 0x16f, bitSize: 0x1
        bool zmintel_echelon_requiem_document_2;
        // offset: 0x170, bitSize: 0x1
        bool zmintel_echelon_requiem_document_3;
        // offset: 0x171, bitSize: 0x1
        bool zmintel_mp_s1_r_document_1;
        // offset: 0x172, bitSize: 0x1
        bool zmintel_mp_s1_r_document_2;
        // offset: 0x173, bitSize: 0x1
        bool zmintel_mp_s1_r_document_3;
        // offset: 0x174, bitSize: 0x1
        bool zmintel_kgb_maxis_document_1;
        // offset: 0x175, bitSize: 0x1
        bool zmintel_kgb_maxis_document_2;
        // offset: 0x176, bitSize: 0x1
        bool zmintel_kgb_maxis_document_3;
        // offset: 0x177, bitSize: 0x1
        bool zmintel_platinum_omega_radio_01;
        // offset: 0x178, bitSize: 0x1
        bool zmintel_platinum_omega_radio_02;
        // offset: 0x179, bitSize: 0x1
        bool zmintel_platinum_omega_radio_03;
        // offset: 0x17a, bitSize: 0x1
        bool zmintel_platinum_omega_radio_04;
        // offset: 0x17b, bitSize: 0x1
        bool zmintel_platinum_omega_radio_05;
        // offset: 0x17c, bitSize: 0x1
        bool zmintel_platinum_darkaether_artifact_01;
        // offset: 0x17d, bitSize: 0x1
        bool zmintel_platinum_darkaether_artifact_02;
        // offset: 0x17e, bitSize: 0x1
        bool zmintel_platinum_darkaether_artifact_03;
        // offset: 0x17f, bitSize: 0x1
        bool zmintel_survival_darkaether_artifact_1;
        // offset: 0x180, bitSize: 0x1
        bool zmintel_survival_darkaether_artifact_2;
        // offset: 0x181, bitSize: 0x1
        bool zmintel_survival_darkaether_artifact_3;
        // offset: 0x182, bitSize: 0x1
        bool zmintel_survival_darkaether_artifact_4;
        // offset: 0x183, bitSize: 0x1
        bool zmintel_survival_darkaether_artifact_5;
        // offset: 0x184, bitSize: 0x1
        bool zmintel_survival_darkaether_artifact_6;
        // offset: 0x185, bitSize: 0x1
        bool zmintel_survival_darkaether_artifact_7;
        // offset: 0x186, bitSize: 0x1
        bool zmintel_survival_darkaether_artifact_8;
        // offset: 0x187, bitSize: 0x1
        bool zmintel_survival_darkaether_artifact_9;
        // offset: 0x188, bitSize: 0x1
        bool zmintel_silver_maxis_audiolog_1;
        // offset: 0x189, bitSize: 0x1
        bool zmintel_silver_maxis_audiolog_2;
        // offset: 0x18a, bitSize: 0x1
        bool zmintel_silver_maxis_audiolog_3;
        // offset: 0x18b, bitSize: 0x1
        bool zmintel_silver_requiem_radio_1;
        // offset: 0x18c, bitSize: 0x1
        bool zmintel_silver_requiem_radio_2;
        // offset: 0x18d, bitSize: 0x1
        bool zmintel_silver_requiem_radio_3;
        // offset: 0x18e, bitSize: 0x1
        bool zmintel_silver_requiem_radio_4;
        // offset: 0x18f, bitSize: 0x1
        bool zmintel_silver_requiem_radio_5;
        // offset: 0x190, bitSize: 0x1
        bool zmintel_silver_requiem_radio_6;
        // offset: 0x191, bitSize: 0x1
        bool zmintel_silver_requiem_radio_7;
        // offset: 0x192, bitSize: 0x1
        bool zmintel_gold_omega_audiolog_1;
        // offset: 0x193, bitSize: 0x1
        bool zmintel_gold_omega_audiolog_2;
        // offset: 0x194, bitSize: 0x1
        bool zmintel_gold_omega_audiolog_3;
        // offset: 0x195, bitSize: 0x1
        bool zmintel_gold_omega_audiolog_4;
        // offset: 0x196, bitSize: 0x1
        bool zmintel_gold_omega_audiolog_5;
        // offset: 0x197, bitSize: 0x1
        bool zmintel_gold_omega_audiolog_6;
        // offset: 0x198, bitSize: 0x1
        bool zmintel_gold_omega_audiolog_7;
        // offset: 0x199, bitSize: 0x1
        bool zmintel_gold_omega_audiolog_8;
        // offset: 0x19a, bitSize: 0x1
        bool zmintel_gold_omega_audiolog_9;
        // offset: 0x19b, bitSize: 0x1
        bool zmintel_survival_darkaether_document_10;
        // offset: 0x19c, bitSize: 0x1
        bool zmintel_survival_darkaether_document_11;
        // offset: 0x19d, bitSize: 0x1
        bool zmintel_survival_darkaether_document_12;
        // offset: 0x19e, bitSize: 0x1
        bool zmintel_silver_darkaether_document_1;
        // offset: 0x19f, bitSize: 0x1
        bool zmintel_silver_darkaether_document_2;
        // offset: 0x1a0, bitSize: 0x1
        bool zmintel_silver_darkaether_document_3;
        // offset: 0x1a1, bitSize: 0x1
        bool zmintel_silver_darkaether_document_4;
        // offset: 0x1a2, bitSize: 0x1
        bool zmintel_silver_darkaether_document_5;
        // offset: 0x1a3, bitSize: 0x1
        bool zmintel_silver_darkaether_document_6;
        // offset: 0x1a4, bitSize: 0x1
        bool zmintel_silver_darkaether_document_7;
        // offset: 0x1a5, bitSize: 0x1
        bool zmintel_silver_darkaether_document_8;
        // offset: 0x1a6, bitSize: 0x1
        bool zmintel_silver_darkaether_document_9;
        // offset: 0x1a7, bitSize: 0x1
        bool zmintel_survival_darkaether_radio_10;
        // offset: 0x1a8, bitSize: 0x1
        bool zmintel_survival_darkaether_radio_11;
        // offset: 0x1a9, bitSize: 0x1
        bool zmintel_survival_darkaether_radio_12;
        // offset: 0x1aa, bitSize: 0x1
        bool zmintel_survival_darkaether_radio_13;
        // offset: 0x1ab, bitSize: 0x1
        bool zmintel_survival_darkaether_radio_14;
        // offset: 0x1ac, bitSize: 0x1
        bool zmintel_survival_darkaether_radio_1;
        // offset: 0x1ad, bitSize: 0x1
        bool zmintel_survival_darkaether_radio_2;
        // offset: 0x1ae, bitSize: 0x1
        bool zmintel_survival_darkaether_radio_3;
        // offset: 0x1af, bitSize: 0x1
        bool zmintel_survival_darkaether_radio_4;
        // offset: 0x1b0, bitSize: 0x1
        bool zmintel_survival_darkaether_radio_5;
        // offset: 0x1b1, bitSize: 0x1
        bool zmintel_survival_darkaether_radio_6;
        // offset: 0x1b2, bitSize: 0x1
        bool zmintel_survival_darkaether_radio_7;
        // offset: 0x1b3, bitSize: 0x1
        bool zmintel_survival_darkaether_radio_8;
        // offset: 0x1b4, bitSize: 0x1
        bool zmintel_survival_darkaether_radio_9;
        // offset: 0x1b5, bitSize: 0x1
        bool zmintel_tundra_omega_document_1;
        // offset: 0x1b6, bitSize: 0x1
        bool zmintel_tundra_omega_document_2;
        // offset: 0x1b7, bitSize: 0x1
        bool zmintel_tundra_omega_document_3;
        // offset: 0x1b8, bitSize: 0x1
        bool zmintel_tungsten_omega_document_1;
        // offset: 0x1b9, bitSize: 0x1
        bool zmintel_tungsten_omega_document_2;
        // offset: 0x1ba, bitSize: 0x1
        bool zmintel_tungsten_omega_document_3;
        // offset: 0x1bb, bitSize: 0x1
        bool zmintel_tungsten_omega_document_4;
        // offset: 0x1bc, bitSize: 0x1
        bool zmintel_tungsten_omega_document_5;
        // offset: 0x1bd, bitSize: 0x1
        bool zmintel_tungsten_omega_document_6;
        // offset: 0x1be, bitSize: 0x1
        bool zmintel_tungsten_omega_document_7;
        // offset: 0x1bf, bitSize: 0x1
        bool zmintel_tungsten_omega_document_8;
        // offset: 0x1c0, bitSize: 0x1
        bool zmintel_tungsten_omega_document_9;
        // offset: 0x1c1, bitSize: 0x1
        bool zmintel_survival_requiem_artifact_10;
        // offset: 0x1c2, bitSize: 0x1
        bool zmintel_survival_requiem_artifact_11;
        // offset: 0x1c3, bitSize: 0x1
        bool zmintel_survival_requiem_artifact_12;
        // offset: 0x1c4, bitSize: 0x1
        bool zmintel_survival_requiem_artifact_13;
        // offset: 0x1c5, bitSize: 0x1
        bool zmintel_survival_requiem_artifact_14;
        // offset: 0x1c6, bitSize: 0x1
        bool zmintel_survival_requiem_artifact_15;
        // offset: 0x1c7, bitSize: 0x1
        bool zmintel_survival_requiem_artifact_16;
        // offset: 0x1c8, bitSize: 0x1
        bool zmintel_survival_requiem_artifact_17;
        // offset: 0x1c9, bitSize: 0x1
        bool zmintel_survival_requiem_artifact_18;
        // offset: 0x1ca, bitSize: 0x1
        bool zmintel_survival_requiem_artifact_19;
        // offset: 0x1cb, bitSize: 0x1
        bool zmintel_survival_requiem_artifact_20;
        // offset: 0x1cc, bitSize: 0x1
        bool zmintel_survival_requiem_artifact_21;
        // offset: 0x1cd, bitSize: 0x1
        bool zmintel_survival_requiem_artifact_22;
        // offset: 0x1ce, bitSize: 0x1
        bool zmintel_survival_requiem_artifact_23;
        // offset: 0x1cf, bitSize: 0x1
        bool zmintel_silver_maxis_radio_1;
        // offset: 0x1d0, bitSize: 0x1
        bool zmintel_silver_maxis_radio_2;
        // offset: 0x1d1, bitSize: 0x1
        bool zmintel_silver_maxis_radio_3;
        // offset: 0x1d2, bitSize: 0x1
        bool zmintel_silver_maxis_radio_4;
        // offset: 0x1d3, bitSize: 0x1
        bool zmintel_silver_maxis_radio_5;
        // offset: 0x1d4, bitSize: 0x1
        bool zmintel_silver_maxis_radio_6;
        // offset: 0x1d5, bitSize: 0x1
        bool zmintel_dune_omega_document_1;
        // offset: 0x1d6, bitSize: 0x1
        bool zmintel_dune_omega_document_2;
        // offset: 0x1d7, bitSize: 0x1
        bool zmintel_dune_omega_document_3;
        // offset: 0x1d8, bitSize: 0x1
        bool zmintel_survival_omega_document_10;
        // offset: 0x1d9, bitSize: 0x1
        bool zmintel_survival_omega_document_11;
        // offset: 0x1da, bitSize: 0x1
        bool zmintel_survival_omega_document_12;
        // offset: 0x1db, bitSize: 0x1
        bool zmintel_survival_omega_document_13;
        // offset: 0x1dc, bitSize: 0x1
        bool zmintel_survival_omega_document_14;
        // offset: 0x1dd, bitSize: 0x1
        bool zmintel_survival_omega_document_15;
        // offset: 0x1de, bitSize: 0x1
        bool zmintel_survival_omega_document_16;
        // offset: 0x1df, bitSize: 0x1
        bool zmintel_survival_omega_document_17;
        // offset: 0x1e0, bitSize: 0x1
        bool zmintel_survival_omega_document_18;
        // offset: 0x1e1, bitSize: 0x1
        bool zmintel_survival_omega_document_19;
        // offset: 0x1e2, bitSize: 0x1
        bool zmintel_survival_maxis_document_10;
        // offset: 0x1e3, bitSize: 0x1
        bool zmintel_survival_maxis_document_11;
        // offset: 0x1e4, bitSize: 0x1
        bool zmintel_survival_maxis_document_12;
        // offset: 0x1e5, bitSize: 0x1
        bool zmintel_survival_maxis_document_13;
        // offset: 0x1e6, bitSize: 0x1
        bool zmintel_survival_maxis_document_14;
        // offset: 0x1e7, bitSize: 0x1
        bool zmintel_survival_maxis_radio_10;
        // offset: 0x1e8, bitSize: 0x1
        bool zmintel_survival_maxis_radio_11;
        // offset: 0x1e9, bitSize: 0x1
        bool zmintel_moscow_requiem_document_1;
        // offset: 0x1ea, bitSize: 0x1
        bool zmintel_moscow_requiem_document_2;
        // offset: 0x1eb, bitSize: 0x1
        bool zmintel_survival_omega_document_1;
        // offset: 0x1ec, bitSize: 0x1
        bool zmintel_survival_omega_document_2;
        // offset: 0x1ed, bitSize: 0x1
        bool zmintel_survival_omega_document_3;
        // offset: 0x1ee, bitSize: 0x1
        bool hash_5438ebd54ae80f0e;
        // offset: 0x1ef, bitSize: 0x1
        bool zmintel_survival_omega_document_5;
        // offset: 0x1f0, bitSize: 0x1
        bool zmintel_survival_omega_document_6;
        // offset: 0x1f1, bitSize: 0x1
        bool zmintel_survival_omega_document_7;
        // offset: 0x1f2, bitSize: 0x1
        bool zmintel_survival_omega_document_8;
        // offset: 0x1f3, bitSize: 0x1
        bool zmintel_survival_omega_document_9;
        // offset: 0x1f4, bitSize: 0x1
        bool zmintel_miami_requiem_document_1;
        // offset: 0x1f5, bitSize: 0x1
        bool zmintel_miami_requiem_document_2;
        // offset: 0x1f6, bitSize: 0x1
        bool zmintel_miami_requiem_document_3;
        // offset: 0x1f7, bitSize: 0x1
        bool zmintel_survival_requiem_artifact_1;
        // offset: 0x1f8, bitSize: 0x1
        bool zmintel_survival_requiem_artifact_2;
        // offset: 0x1f9, bitSize: 0x1
        bool zmintel_survival_requiem_artifact_3;
        // offset: 0x1fa, bitSize: 0x1
        bool zmintel_survival_requiem_artifact_4;
        // offset: 0x1fb, bitSize: 0x1
        bool zmintel_survival_requiem_artifact_5;
        // offset: 0x1fc, bitSize: 0x1
        bool zmintel_survival_requiem_artifact_6;
        // offset: 0x1fd, bitSize: 0x1
        bool zmintel_survival_requiem_artifact_7;
        // offset: 0x1fe, bitSize: 0x1
        bool zmintel_survival_requiem_artifact_8;
        // offset: 0x1ff, bitSize: 0x1
        bool zmintel_survival_requiem_artifact_9;
        // offset: 0x200, bitSize: 0x1
        bool zmintel_tungsten_requiem_document_1;
        // offset: 0x201, bitSize: 0x1
        bool zmintel_tungsten_requiem_document_2;
        // offset: 0x202, bitSize: 0x1
        bool zmintel_tungsten_requiem_document_3;
        // offset: 0x203, bitSize: 0x1
        bool zmintel_tungsten_requiem_document_4;
        // offset: 0x204, bitSize: 0x1
        bool zmintel_tungsten_requiem_document_5;
        // offset: 0x205, bitSize: 0x1
        bool zmintel_tungsten_requiem_document_6;
        // offset: 0x206, bitSize: 0x1
        bool zmintel_gold_darkaether_audiolog_1;
        // offset: 0x207, bitSize: 0x1
        bool zmintel_gold_darkaether_audiolog_2;
        // offset: 0x208, bitSize: 0x1
        bool zmintel_gold_darkaether_audiolog_3;
        // offset: 0x209, bitSize: 0x1
        bool zmintel_gold_darkaether_audiolog_4;
        // offset: 0x20a, bitSize: 0x1
        bool zmintel_gold_darkaether_audiolog_5;
        // offset: 0x20b, bitSize: 0x1
        bool zmintel_gold_maxis_audiolog_1;
        // offset: 0x20c, bitSize: 0x1
        bool zmintel_gold_maxis_audiolog_2;
        // offset: 0x20d, bitSize: 0x1
        bool zmintel_gold_maxis_audiolog_3;
        // offset: 0x20e, bitSize: 0x1
        bool zmintel_gold_maxis_audiolog_4;
        // offset: 0x20f, bitSize: 0x1
        bool zmintel_survival_omega_radio_1;
        // offset: 0x210, bitSize: 0x1
        bool zmintel_survival_omega_radio_2;
        // offset: 0x211, bitSize: 0x1
        bool zmintel_survival_omega_radio_3;
        // offset: 0x212, bitSize: 0x1
        bool zmintel_survival_omega_radio_4;
        // offset: 0x213, bitSize: 0x1
        bool zmintel_survival_omega_radio_5;
        // offset: 0x214, bitSize: 0x1
        bool zmintel_survival_omega_radio_6;
        // offset: 0x215, bitSize: 0x1
        bool zmintel_survival_omega_radio_7;
        // offset: 0x216, bitSize: 0x1
        bool zmintel_survival_omega_radio_8;
        // offset: 0x217, bitSize: 0x1
        bool zmintel_survival_omega_radio_9;
        // offset: 0x218, bitSize: 0x1
        bool zmintel_tungsten_maxis_document_1;
        // offset: 0x219, bitSize: 0x1
        bool zmintel_silver_omega_document_1;
        // offset: 0x21a, bitSize: 0x1
        bool zmintel_silver_omega_document_2;
        // offset: 0x21b, bitSize: 0x1
        bool zmintel_silver_omega_document_3;
        // offset: 0x21c, bitSize: 0x1
        bool zmintel_silver_omega_document_4;
        // offset: 0x21d, bitSize: 0x1
        bool zmintel_silver_omega_document_5;
        // offset: 0x21e, bitSize: 0x1
        bool zmintel_silver_omega_document_6;
        // offset: 0x21f, bitSize: 0x1
        bool zmintel_silver_omega_document_7;
        // offset: 0x220, bitSize: 0x1
        bool zmintel_platinum_omega_artifact_01;
        // offset: 0x221, bitSize: 0x1
        bool zmintel_platinum_omega_artifact_02;
        // offset: 0x222, bitSize: 0x1
        bool zmintel_silver_requiem_document_1;
        // offset: 0x223, bitSize: 0x1
        bool zmintel_silver_requiem_document_2;
        // offset: 0x224, bitSize: 0x1
        bool zmintel_silver_requiem_document_3;
        // offset: 0x225, bitSize: 0x1
        bool zmintel_silver_requiem_document_4;
        // offset: 0x226, bitSize: 0x1
        bool zmintel_silver_requiem_document_5;
        // offset: 0x227, bitSize: 0x1
        bool zmintel_silver_requiem_document_6;
        // offset: 0x228, bitSize: 0x1
        bool zmintel_silver_requiem_document_7;
        // offset: 0x229, bitSize: 0x1
        bool zmintel_survival_omega_audiolog_10;
        // offset: 0x22a, bitSize: 0x1
        bool zmintel_survival_omega_audiolog_11;
        // offset: 0x22b, bitSize: 0x1
        bool zmintel_survival_omega_audiolog_12;
        // offset: 0x22c, bitSize: 0x1
        bool zmintel_survival_omega_audiolog_13;
        // offset: 0x22d, bitSize: 0x1
        bool zmintel_survival_omega_audiolog_14;
        // offset: 0x22e, bitSize: 0x1
        bool zmintel_survival_omega_audiolog_15;
        // offset: 0x22f, bitSize: 0x1
        bool zmintel_survival_omega_audiolog_16;
        // offset: 0x230, bitSize: 0x1
        bool zmintel_survival_omega_audiolog_17;
        // offset: 0x231, bitSize: 0x1
        bool zmintel_survival_omega_audiolog_18;
        // offset: 0x232, bitSize: 0x1
        bool zmintel_survival_omega_audiolog_19;
        // offset: 0x233, bitSize: 0x1
        bool zmintel_survival_omega_audiolog_20;
        // offset: 0x234, bitSize: 0x1
        bool zmintel_survival_omega_audiolog_21;
        // offset: 0x235, bitSize: 0x1
        bool zmintel_survival_omega_audiolog_22;
        // offset: 0x236, bitSize: 0x1
        bool zmintel_survival_omega_audiolog_23;
        // offset: 0x237, bitSize: 0x1
        bool zmintel_survival_omega_audiolog_24;
        // offset: 0x238, bitSize: 0x1
        bool zmintel_survival_maxis_audiolog_10;
        // offset: 0x239, bitSize: 0x1
        bool zmintel_survival_maxis_audiolog_11;
        // offset: 0x23a, bitSize: 0x1
        bool zmintel_survival_maxis_audiolog_12;
        // offset: 0x23b, bitSize: 0x1
        bool zmintel_survival_maxis_audiolog_13;
        // offset: 0x23c, bitSize: 0x1
        bool zmintel_survival_maxis_audiolog_14;
        // offset: 0x23d, bitSize: 0x1
        bool zmintel_survival_maxis_audiolog_15;
        // offset: 0x23e, bitSize: 0x1
        bool zmintel_survival_maxis_audiolog_16;
        // offset: 0x23f, bitSize: 0x1
        bool zmintel_survival_maxis_audiolog_17;
        // offset: 0x240, bitSize: 0x1
        bool zmintel_survival_maxis_audiolog_18;
        // offset: 0x241, bitSize: 0x1
        bool zmintel_silver_darkaether_artifact_1;
        // offset: 0x242, bitSize: 0x1
        bool zmintel_silver_darkaether_artifact_2;
        // offset: 0x243, bitSize: 0x1
        bool zmintel_silver_darkaether_artifact_3;
        // offset: 0x244, bitSize: 0x1
        bool zmintel_silver_darkaether_artifact_4;
    };

    // bitSize: 0x10, members: 11
    struct hash_14a0be26898fbeb0 {
        // offset: 0x0, bitSize: 0x1
        bool hash_104a0f324ff449a3;
        // offset: 0x1, bitSize: 0x1
        bool hash_2be6eda2d188e1fa;
        // offset: 0x2, bitSize: 0x1
        bool hash_629e6a7ec564645a;
        // offset: 0x3, bitSize: 0x1
        bool hash_7c24f6ffd4fe3ad5;
        // offset: 0x4, bitSize: 0x1
        bool hash_2b58c53a46eb853;
        // offset: 0x5, bitSize: 0x1
        bool hash_55279bc6926c7ea4;
        // offset: 0x6, bitSize: 0x1
        bool hash_1639debe5cf290cb;
        // offset: 0x7, bitSize: 0x1
        bool hash_8a6100b519878ac;
        // offset: 0x8, bitSize: 0x1
        bool hash_362b361c9c686ebf;
        // offset: 0x9, bitSize: 0x1
        bool hash_3d79550a031d56bf;
    };

    // bitSize: 0x18, members: 3
    struct cheatstats {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 cheat_out_of_playable;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 cheat_too_friendly;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        uint:8 cheat_too_many_weapons;
    };

    // bitSize: 0x120, members: 1
    struct hash_3b9fd6643db733b1 {
        // offset: 0x0, bitSize: 0x120(0x24 Byte(s)), array:0xc(hti:0x17)
        hash_6c116eea1f7184ec stats[hash_6bb4c60bf524dd89];
    };

    // bitSize: 0x648, members: 2
    struct hash_63c13a9e22ff5468 {
        // offset: 0x0, bitSize: 0x1c8(0x39 Byte(s)), array:0x13(hti:0x15)
        hash_6c116eea1f7184ec stats[hash_5f3118b8c9eb06c0];
        // offset: 0x1c8, bitSize: 0x480(0x90 Byte(s)), array:0x4(hti:0xffff)
        hash_3b9fd6643db733b1 hash_413b4abc26595b34[4];
    };

    // bitSize: 0x6a8, members: 2
    struct hash_2540927fb8ae9a27 {
        // offset: 0x0, bitSize: 0x228(0x45 Byte(s)), array:0x17(hti:0x16)
        hash_6c116eea1f7184ec stats[hash_37b46432aa72415f];
        // offset: 0x228, bitSize: 0x480(0x90 Byte(s)), array:0x4(hti:0xffff)
        hash_3b9fd6643db733b1 hash_413b4abc26595b34[4];
    };

    // bitSize: 0x28f0, members: 4
    struct mapstats {
        // offset: 0x0, bitSize: 0xd8(0x1b Byte(s)), array:0x9(hti:0x14)
        hash_6c116eea1f7184ec stats[mapstatslist];
        // offset: 0xd8, bitSize: 0x27f0(0x4fe Byte(s)), array:0x6(hti:0xf)
        hash_2540927fb8ae9a27 statsbygametype[zmgametypes];
        // offset: 0x28c8, bitSize: 0x10(0x2 Byte(s))
        short vote_succeeded;
        // offset: 0x28d8, bitSize: 0x18(0x3 Byte(s))
        cheatstats cheats;
    };

    // bitSize: 0x26e0, members: 4
    struct hash_4afef1eca1d63e07 {
        // offset: 0x0, bitSize: 0x108(0x21 Byte(s)), array:0xb(hti:0x18)
        hash_6c116eea1f7184ec stats[hash_5aaca28b6442a96f];
        // offset: 0x108, bitSize: 0x25b0(0x4b6 Byte(s)), array:0x6(hti:0xf)
        hash_63c13a9e22ff5468 statsbygametype[zmgametypes];
        // offset: 0x26b8, bitSize: 0x10(0x2 Byte(s))
        short vote_succeeded;
        // offset: 0x26c8, bitSize: 0x18(0x3 Byte(s))
        cheatstats cheats;
    };

    // bitSize: 0x8, members: 1
    struct hash_4f97e2253508b6e9 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:2 rarity_upgrade;
    };

    // bitSize: 0x20, members: 1
    struct hash_7662ce32708de040 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint progress;
    };

    // bitSize: 0x148, members: 6
    struct hash_506d08f6b39538d1 {
        // offset: 0x0, bitSize: 0x80(0x10 Byte(s)), array:0x4(hti:0xffff)
        hash_7662ce32708de040 hash_20deab97abbf7b12[4];
        // offset: 0x80, bitSize: 0x20(0x4 Byte(s))
        hash_7662ce32708de040 tcmgoal;
        // offset: 0xa0, bitSize: 0x40(0x8 Byte(s)), array:0x2(hti:0xffff)
        hash_7662ce32708de040 hash_647ebc7d24425fee[2];
        // offset: 0xe0, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
        hash_7662ce32708de040 hash_764a5fc3ba8820d2[3];
        // offset: 0x140, bitSize: 0x1
        bool hash_4e145bc7755a9a8b;
    };

    // bitSize: 0x8, members: 2
    struct hash_2550e60e3a5fc33f {
        // offset: 0x0, bitSize: 0x4, array:0x4(hti:0x1a)
        bool purchased[hash_4b0e09f11187d024];
    };

    // bitSize: 0x28, members: 4
    struct hash_18720d43cfb3094d {
        // offset: 0x0, bitSize: 0x18(0x3 Byte(s)), array:0x3(hti:0x1b)
        hash_2550e60e3a5fc33f rewards[hash_2b912aa49fb2e683];
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_7a54171ce10db54f;
        // offset: 0x20, bitSize: 0x1
        bool hash_346f514a63aa16e2;
    };

    // bitSize: 0x1010, members: 5
    struct hash_2bf2e4a130fa6bec {
        // offset: 0x0, bitSize: 0xa0(0x14 Byte(s)), array:0x4(hti:0x1c)
        hash_18720d43cfb3094d factions[factionid];
        // offset: 0xa0, bitSize: 0x8(0x1 Byte(s))
        factionid hash_7e597fbe41270a4d;
        // offset: 0xa8, bitSize: 0xf60(0x1ec Byte(s)), array:0xc(hti:0xffff)
        hash_506d08f6b39538d1 callings[12];
        // offset: 0x1008, bitSize: 0x1
        bool hash_4e145bc7755a9a8b;
    };

    // bitSize: 0x80f0, members: 10
    struct hash_2584f92704256892 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_3a5ab6fb11258ebf;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        uint:8 currentseasondvar;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        factionid currentfaction;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_4d468697915dfaa;
        // offset: 0x20, bitSize: 0x8080(0x1010 Byte(s)), array:0x8(hti:0xffff)
        hash_2bf2e4a130fa6bec seasons[8];
        // offset: 0x80a0, bitSize: 0x8(0x1 Byte(s))
        uint:8 currentseason;
        // offset: 0x80a8, bitSize: 0x40(0x8 Byte(s))
        uint64 hash_2e608064d306991f;
        // offset: 0x80e8, bitSize: 0x1
        bool hash_5bf1ebbfa7b16c64;
        // offset: 0x80e9, bitSize: 0x1
        bool hash_7d8eaf5a5a9f1cc1;
    };

    // bitSize: 0x90, members: 6
    struct hash_1b2a05426d7c883b {
        // offset: 0x0, bitSize: 0x18(0x3 Byte(s))
        uint:24 quit;
        // offset: 0x18, bitSize: 0x18(0x3 Byte(s))
        uint:24 started;
        // offset: 0x30, bitSize: 0x18(0x3 Byte(s))
        uint:24 completed;
        // offset: 0x48, bitSize: 0x18(0x3 Byte(s))
        uint:24 timeout;
        // offset: 0x60, bitSize: 0x18(0x3 Byte(s))
        uint:24 kicked;
        // offset: 0x78, bitSize: 0x18(0x3 Byte(s))
        uint:24 dashboard;
    };

    // bitSize: 0x120, members: 2
    struct gamecompletion {
        // offset: 0x0, bitSize: 0x90(0x12 Byte(s))
        hash_1b2a05426d7c883b hosted;
        // offset: 0x90, bitSize: 0x90(0x12 Byte(s))
        hash_1b2a05426d7c883b played;
    };

    // bitSize: 0xb8, members: 11
    struct matchhistorystats {
        // offset: 0x0, bitSize: 0x10(0x2 Byte(s))
        short kills;
        // offset: 0x10, bitSize: 0x18(0x3 Byte(s))
        uint:24 score;
        // offset: 0x28, bitSize: 0x20(0x4 Byte(s))
        uint startingtime;
        // offset: 0x48, bitSize: 0x20(0x4 Byte(s))
        uint endingtime;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:5 scoreboardposition;
        // offset: 0x70, bitSize: 0x20(0x4 Byte(s))
        float teamscoreratio;
        // offset: 0x90, bitSize: 0x8(0x1 Byte(s))
        uint:5 gametype;
        // offset: 0x98, bitSize: 0x10(0x2 Byte(s))
        short deaths;
        // offset: 0xa8, bitSize: 0x8(0x1 Byte(s))
        uint:3 quittype;
        // offset: 0xb0, bitSize: 0x1
        bool forgiven;
    };

    // bitSize: 0x1828, members: 3
    struct gamehistorystats {
        // offset: 0x0, bitSize: 0x1700(0x2e0 Byte(s)), array:0x20(hti:0xffff)
        matchhistorystats matchhistory[32];
        // offset: 0x1700, bitSize: 0x120(0x24 Byte(s))
        gamecompletion modehistory;
        // offset: 0x1820, bitSize: 0x8(0x1 Byte(s))
        byte currentmatchhistoryindex;
    };

    // bitSize: 0x60, members: 3
    struct hash_16df3a6474be0b92 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint count;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint version;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint timewhenprobationisdone;
    };

    // bitSize: 0x668, members: 38
    struct aarstats {
        // offset: 0x0, bitSize: 0x80(0x10 Byte(s)), array:0x4(hti:0x11)
        int bonusxp[hash_4e52d9b748f0a4a7];
        // offset: 0x80, bitSize: 0x20(0x4 Byte(s))
        int kills;
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        int hash_20e770cec441c9f2;
        // offset: 0xc0, bitSize: 0x20(0x4 Byte(s))
        int hash_20e46acec43f89e9;
        // offset: 0xe0, bitSize: 0x10(0x2 Byte(s))
        short nemesisrankicon;
        // offset: 0xf0, bitSize: 0x10(0x2 Byte(s))
        short characterindex;
        // offset: 0x100, bitSize: 0x20(0x4 Byte(s))
        int gamelength;
        // offset: 0x120, bitSize: 0x20(0x4 Byte(s))
        int total_points;
        // offset: 0x140, bitSize: 0x8(0x1 Byte(s))
        uint:2 survivaloutcome;
        // offset: 0x148, bitSize: 0x40(0x8 Byte(s))
        uint64 matchid;
        // offset: 0x188, bitSize: 0x20(0x4 Byte(s))
        int revives;
        // offset: 0x1a8, bitSize: 0x20(0x4 Byte(s))
        int total_rounds_survived;
        // offset: 0x1c8, bitSize: 0x20(0x4 Byte(s))
        int hash_5e21bea2490944e7;
        // offset: 0x1e8, bitSize: 0x20(0x4 Byte(s))
        int difficulty;
        // offset: 0x208, bitSize: 0x20(0x4 Byte(s))
        int highest_multiplier;
        // offset: 0x228, bitSize: 0x8(0x1 Byte(s))
        byte clientnum;
        // offset: 0x230, bitSize: 0x40(0x8 Byte(s))
        uint64 demofileid;
        // offset: 0x270, bitSize: 0x100(0x20 Byte(s))
        string(32) gametype;
        // offset: 0x370, bitSize: 0x20(0x4 Byte(s))
        int surveyid;
        // offset: 0x390, bitSize: 0x20(0x4 Byte(s))
        int highest_round_reached;
        // offset: 0x3b0, bitSize: 0x10(0x2 Byte(s))
        short nemesiskills;
        // offset: 0x3c0, bitSize: 0x80(0x10 Byte(s)), array:0x4(hti:0x11)
        int hash_284cdde9074ae4a0[hash_4e52d9b748f0a4a7];
        // offset: 0x440, bitSize: 0x20(0x4 Byte(s))
        int hash_7ea66b44d6518c0a;
        // offset: 0x460, bitSize: 0x20(0x4 Byte(s))
        int team_score;
        // offset: 0x480, bitSize: 0x20(0x4 Byte(s))
        int hash_5389e9911067579a;
        // offset: 0x4a0, bitSize: 0x20(0x4 Byte(s))
        int fastest_time_to_complete_round_30;
        // offset: 0x4c0, bitSize: 0x10(0x2 Byte(s))
        short nemesiskilledby;
        // offset: 0x4d0, bitSize: 0x20(0x4 Byte(s))
        uint initialplasma;
        // offset: 0x4f0, bitSize: 0x20(0x4 Byte(s))
        int headshots;
        // offset: 0x510, bitSize: 0x100(0x20 Byte(s))
        string(32) nemesisname;
        // offset: 0x610, bitSize: 0x10(0x2 Byte(s))
        short nemesisrank;
        // offset: 0x620, bitSize: 0x40(0x8 Byte(s))
        uint64 nemesisxuid;
        // offset: 0x660, bitSize: 0x1
        bool hash_2ef93ce9247e7287;
        // offset: 0x661, bitSize: 0x1
        bool valid;
        // offset: 0x662, bitSize: 0x1
        bool hash_771c0c2047e83de0;
        // offset: 0x663, bitSize: 0x1
        bool hash_74adf231e7a9636e;
        // offset: 0x664, bitSize: 0x1
        bool privatematch;
    };

    // bitSize: 0x20, members: 4
    struct hash_25a11738b4152d0e {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        byte a;
        // offset: 0x8, bitSize: 0x8(0x1 Byte(s))
        byte b;
        // offset: 0x10, bitSize: 0x8(0x1 Byte(s))
        byte c;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        byte d;
    };

    // bitSize: 0x1c0, members: 6
    struct hash_4976dab983b23e8c {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint timestamp;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint nattype;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        uint64 macaddress;
        // offset: 0x80, bitSize: 0x100(0x20 Byte(s))
        string(32) consoleid64;
        // offset: 0x180, bitSize: 0x20(0x4 Byte(s))
        hash_25a11738b4152d0e ipexternal;
        // offset: 0x1a0, bitSize: 0x20(0x4 Byte(s))
        uint usecount;
    };

    // idx 0x0 members: 0x4e
    enum zmmedaltype {
        medal_toxic_growth_multikill_zm, // 0x0
        medal_frag_multikill_zm, // 0x1
        medal_combat_axe_multikill_zm, // 0x2
        medal_vehicle_impact_multikill_zm, // 0x3
        medal_frost_blast_multikill_zm, // 0x4
        medal_abomination_kia_zm, // 0x5
        medal_retrieve_perfect_delivery_zm, // 0x6
        medal_flamethrower_multikill_zm, // 0x7
        medal_napalm_strike_multikill_zm, // 0x8
        medal_aether_shroud_multikill_zm, // 0x9
        medal_mimic_killed_without_getting_hit_zm, // 0xa
        medal_jump_pads_collect_3_or_more_containers_zm, // 0xb
        medal_transport_pristine_zm, // 0xc
        medal_multikillstreak_25_zm, // 0xd
        medal_demented_echo_kill_before_shriek_zm, // 0xe
        medal_oneshot_multikill_zm, // 0xf
        medal_mangler_arm_cannon_kill_zm, // 0x10
        medal_transport_rapid_delivery_zm, // 0x11
        medal_crbrs_variants_multikill_zm, // 0x12
        medal_nightengale_multikill_zm, // 0x13
        medal_monkey_bomb_multikill_zm, // 0x14
        medal_molotov_multikill_zm, // 0x15
        medal_cruise_missile_multikill_zm, // 0x16
        medal_grenade_launcher_multikill_zm, // 0x17
        medal_driver_fav_passenger_multikill_zm, // 0x18
        medal_energy_mine_multikill_zm, // 0x19
        medal_soa_multikill_without_reloading_auto_zm, // 0x1a
        medal_disciple_kill_with_max_zombies_zm, // 0x1b
        medal_healing_aura_multikill_zm, // 0x1c
        medal_soa_explosion_multikill_zm, // 0x1d
        medal_avogadro_teleport_kia_zm, // 0x1e
        medal_tesla_storm_multikill_zm, // 0x1f
        medal_kill_both_steiner_halves_rapidly_zm, // 0x20
        medal_soa_death_machine_multikill_zm, // 0x21
        medal_frenzied_guard_multikill_zm, // 0x22
        medal_passenger_gunner_multikill_zm, // 0x23
        medal_mechz_kia_zm, // 0x24
        medal_multikillstreak_5_zm, // 0x25
        medal_concussion_grenade_multikill_zm, // 0x26
        medal_defend_pristine_zm, // 0x27
        medal_sentry_turret_multikill_zm, // 0x28
        medal_vehicle_impact_kill_special_elite_zm, // 0x29
        medal_hulking_summoner_kia_zm, // 0x2a
        medal_multikillstreak_20_zm, // 0x2b
        medal_crbrs_multikill_zm, // 0x2c
        medal_ieu_multikill_zm, // 0x2d
        medal_combat_bow_multikill_zm, // 0x2e
        medal_mechz_jetpack_multikill_zm, // 0x2f
        medal_soa_melee_weapon_multikill_zm, // 0x30
        medal_melee_weapon_multikill_zm, // 0x31
        medal_chopper_gunner_multikill_zm, // 0x32
        medal_escort_pristine_zm, // 0x33
        medal_killstreak_without_getting_hit_zm, // 0x34
        medal_holdout_perfect_defense_zm, // 0x35
        medal_hatchet_multikill_zm, // 0x36
        medal_kill_steiner_caught_with_ieu_zm, // 0x37
        medal_artillery_strike_multikill_zm, // 0x38
        medal_steiner_kia_zm, // 0x39
        medal_lt53_kazimir_multikill_zm, // 0x3a
        medal_oneshot_explosive_multikill_zm, // 0x3b
        medal_aether_shroud_revive_zm, // 0x3c
        medal_semtex_multikill_zm, // 0x3d
        medal_stim_shot_multikill_zm, // 0x3e
        medal_assault_perfect_defense_zm, // 0x3f
        medal_secure_pristine_zm, // 0x40
        medal_destroy_aether_orb_zm, // 0x41
        medal_crit_finisher_multikill_zm, // 0x42
        medal_multikillstreak_15_zm, // 0x43
        medal_vehicle_weapon_multikill_zm, // 0x44
        medal_hvt_quick_kill_zm, // 0x45
        medal_soa_hatchet_multikill_zm, // 0x46
        medal_satchel_charge_multikill_zm, // 0x47
        medal_soa_first_kill_zm, // 0x48
        medal_ring_of_fire_multikill_zm, // 0x49
        medal_multikillstreak_10_zm, // 0x4a
        medal_hand_cannon_multikill_zm, // 0x4b
        medal_death_machine_multikill_zm, // 0x4c
        medal_ray_rifle_multikill_zm // 0x4d
    };

    // idx 0x1 members: 0xbb
    enum zmitems {
        aether_shroud_1, // 0x0
        aether_shroud_3, // 0x1
        aether_shroud_2, // 0x2
        aether_shroud_5, // 0x3
        aether_shroud_4, // 0x4
        ww_mega_barrel_fullauto_blazer_beam_t9, // 0x5
        tr_fastburst_t9, // 0x6
        napalm_strike_zm, // 0x7
        ultimate_turret, // 0x8
        ar_season6_t9, // 0x9
        ring_of_fire_5, // 0xa
        ring_of_fire_4, // 0xb
        ring_of_fire_3, // 0xc
        ring_of_fire_2, // 0xd
        ring_of_fire_1, // 0xe
        hash_7a083f7ba43fa06, // 0xf
        frost_blast, // 0x10
        lmg_accurate_t9, // 0x11
        melee_etool_t9, // 0x12
        sniper_powersemi_t9, // 0x13
        eq_wraith_fire, // 0x14
        ar_damage_t9, // 0x15
        spknifeork, // 0x16
        shotgun_leveraction_t9, // 0x17
        ww_mega_barrel_fullauto_diffusion_beam_t9, // 0x18
        lightning_links, // 0x19
        bowie_knife, // 0x1a
        hash_18696150427f2efb, // 0x1b
        hero_flamethrower_t8_lv1, // 0x1c
        hero_flamethrower_t8_lv2, // 0x1d
        hero_flamethrower_t8_lv3, // 0x1e
        special_crossbow_t9, // 0x1f
        ww_blundergat_t8, // 0x20
        hero_gravityspikes_t8_lv3, // 0x21
        hero_gravityspikes_t8_lv2, // 0x22
        hero_gravityspikes_t8_lv1, // 0x23
        ring_of_fire, // 0x24
        nightingale, // 0x25
        pistol_fullauto_t9, // 0x26
        special_grenadelauncher_t9, // 0x27
        melee_machete_t9, // 0x28
        launcher_freefire_t9, // 0x29
        ar_accurate_t9, // 0x2a
        sig_lmg, // 0x2b
        ar_soviet_t9, // 0x2c
        smg_cqb_t9, // 0x2d
        knife_loadout, // 0x2e
        feature_default_class_1, // 0x2f
        feature_default_class_3, // 0x30
        feature_default_class_2, // 0x31
        feature_default_class_5, // 0x32
        feature_default_class_4, // 0x33
        hatchet, // 0x34
        aether_shroud, // 0x35
        frost_blast_1, // 0x36
        frost_blast_3, // 0x37
        frost_blast_2, // 0x38
        frost_blast_5, // 0x39
        frost_blast_4, // 0x3a
        smg_capacity_t9, // 0x3b
        chopper_gunner, // 0x3c
        melee_baseballbat_t9, // 0x3d
        pistol_shotgun_t9, // 0x3e
        spork_alcatraz, // 0x3f
        pistol_semiauto_t9, // 0x40
        melee_mace_t9, // 0x41
        null_offhand_primary, // 0x42
        smg_burst_t9, // 0x43
        eq_frag_grenade, // 0x44
        pistol_revolver_t9, // 0x45
        eq_stimshot, // 0x46
        heal_aoe_1, // 0x47
        heal_aoe_2, // 0x48
        heal_aoe_3, // 0x49
        heal_aoe_4, // 0x4a
        heal_aoe_5, // 0x4b
        ww_mega_barrel_fullauto_copycat_t9, // 0x4c
        eq_grapple, // 0x4d
        melee_coldwar_t9_dw, // 0x4e
        launcher_standard_t9, // 0x4f
        melee_sai_t9_dw, // 0x50
        hero_hammer_lv3, // 0x51
        hero_hammer_lv2, // 0x52
        hero_hammer_lv1, // 0x53
        recon_car_zm, // 0x54
        lightning_links_1, // 0x55
        lightning_links_2, // 0x56
        lightning_links_3, // 0x57
        lightning_links_4, // 0x58
        lightning_links_5, // 0x59
        remote_missile_zm, // 0x5a
        eq_sticky_grenade, // 0x5b
        special_ballisticknife_t9_dw, // 0x5c
        ww_ieu_shockwave_t9, // 0x5d
        melee_sledgehammer_t9, // 0x5e
        energy_mine, // 0x5f
        pistol_burst_t9, // 0x60
        napalm_strike, // 0x61
        hash_43e322396554dac0, // 0x62
        hash_43e323396554dc73, // 0x63
        hash_43e326396554e18c, // 0x64
        hash_43e328396554e4f2, // 0x65
        hash_43e329396554e6a5, // 0x66
        sniper_accurate_t9, // 0x67
        ar_fastfire_t9, // 0x68
        melee_wakizashi_t9, // 0x69
        hero_pineapplegun, // 0x6a
        sniper_quickscope_t9, // 0x6b
        energy_mine_4, // 0x6c
        energy_mine_5, // 0x6d
        energy_mine_2, // 0x6e
        energy_mine_3, // 0x6f
        energy_mine_1, // 0x70
        feature_custom_class_9, // 0x71
        feature_custom_class_8, // 0x72
        feature_custom_class_7, // 0x73
        feature_custom_class_6, // 0x74
        feature_custom_class_5, // 0x75
        feature_custom_class_10, // 0x76
        ar_slowhandling_t9, // 0x77
        eq_acid_bomb, // 0x78
        hero_chakram_lv2, // 0x79
        hero_chakram_lv3, // 0x7a
        hero_chakram_lv1, // 0x7b
        tr_precisionsemi_t9, // 0x7c
        tr_damagesemi_t9, // 0x7d
        feature_cac, // 0x7e
        shotgun_pump_t9, // 0x7f
        hash_55569355da0f0f68, // 0x80
        ar_slowfire_t9, // 0x81
        tr_powerburst_t9, // 0x82
        ray_gun_mk2, // 0x83
        tr_longburst_t9, // 0x84
        ww_ray_rifle_t9, // 0x85
        smg_standard_t9, // 0x86
        sig_bow_flame, // 0x87
        eq_slow_grenade, // 0x88
        toxic_growth, // 0x89
        special_nailgun_t9, // 0x8a
        self_revive, // 0x8b
        smg_accurate_t9, // 0x8c
        smg_heavy_t9, // 0x8d
        eq_molotov, // 0x8e
        smg_fastfire_t9, // 0x8f
        lmg_light_t9, // 0x90
        melee_scythe_t9, // 0x91
        hero_katana_t8_lv1, // 0x92
        hero_katana_t8_lv2, // 0x93
        hero_katana_t8_lv3, // 0x94
        ar_british_t9, // 0x95
        hero_flamethrower, // 0x96
        melee_battleaxe_t9, // 0x97
        ww_axe_gun_melee_t9, // 0x98
        sniper_standard_t9, // 0x99
        melee_cane_t9, // 0x9a
        smg_spray_t9, // 0x9b
        hero_annihilator, // 0x9c
        ar_fasthandling_t9, // 0x9d
        ar_mobility_t9, // 0x9e
        planemortar, // 0x9f
        sniper_cannon_t9, // 0xa0
        shotgun_semiauto_t9, // 0xa1
        lmg_fastfire_t9, // 0xa2
        ar_standard_t9, // 0xa3
        mini_turret, // 0xa4
        weapon_null, // 0xa5
        satchel_charge, // 0xa6
        hero_minigun_t8_lv1, // 0xa7
        hero_minigun_t8_lv3, // 0xa8
        hero_minigun_t8_lv2, // 0xa9
        smg_season6_t9, // 0xaa
        smg_semiauto_t9, // 0xab
        ray_gun, // 0xac
        hash_788c96e19cc7a46e, // 0xad
        claymore, // 0xae
        toxic_growth_5, // 0xaf
        toxic_growth_4, // 0xb0
        toxic_growth_3, // 0xb1
        toxic_growth_2, // 0xb2
        toxic_growth_1, // 0xb3
        smg_handling_t9, // 0xb4
        cymbal_monkey, // 0xb5
        shotgun_fullauto_t9, // 0xb6
        smg_flechette_t9, // 0xb7
        heal_aoe, // 0xb8
        ww_mega_barrel_fullauto_micro_missile_t9, // 0xb9
        lmg_slowfire_t9 // 0xba
    };

    // idx 0x2 members: 0x4e
    enum zmrankeditems {
        ww_mega_barrel_fullauto_blazer_beam_t9, // 0x0
        tr_fastburst_t9, // 0x1
        ar_season6_t9, // 0x2
        lmg_accurate_t9, // 0x3
        melee_etool_t9, // 0x4
        sniper_powersemi_t9, // 0x5
        ar_damage_t9, // 0x6
        spknifeork, // 0x7
        shotgun_leveraction_t9, // 0x8
        ww_mega_barrel_fullauto_diffusion_beam_t9, // 0x9
        bowie_knife, // 0xa
        hash_18696150427f2efb, // 0xb
        special_crossbow_t9, // 0xc
        ww_blundergat_t8, // 0xd
        pistol_fullauto_t9, // 0xe
        special_grenadelauncher_t9, // 0xf
        melee_machete_t9, // 0x10
        launcher_freefire_t9, // 0x11
        ar_accurate_t9, // 0x12
        ar_soviet_t9, // 0x13
        smg_cqb_t9, // 0x14
        knife_loadout, // 0x15
        smg_capacity_t9, // 0x16
        melee_baseballbat_t9, // 0x17
        pistol_shotgun_t9, // 0x18
        spork_alcatraz, // 0x19
        pistol_semiauto_t9, // 0x1a
        melee_mace_t9, // 0x1b
        smg_burst_t9, // 0x1c
        pistol_revolver_t9, // 0x1d
        ww_mega_barrel_fullauto_copycat_t9, // 0x1e
        melee_coldwar_t9_dw, // 0x1f
        launcher_standard_t9, // 0x20
        melee_sai_t9_dw, // 0x21
        special_ballisticknife_t9_dw, // 0x22
        ww_ieu_shockwave_t9, // 0x23
        melee_sledgehammer_t9, // 0x24
        pistol_burst_t9, // 0x25
        sniper_accurate_t9, // 0x26
        ar_fastfire_t9, // 0x27
        melee_wakizashi_t9, // 0x28
        sniper_quickscope_t9, // 0x29
        ar_slowhandling_t9, // 0x2a
        tr_precisionsemi_t9, // 0x2b
        tr_damagesemi_t9, // 0x2c
        shotgun_pump_t9, // 0x2d
        ar_slowfire_t9, // 0x2e
        tr_powerburst_t9, // 0x2f
        ray_gun_mk2, // 0x30
        tr_longburst_t9, // 0x31
        ww_ray_rifle_t9, // 0x32
        smg_standard_t9, // 0x33
        special_nailgun_t9, // 0x34
        smg_accurate_t9, // 0x35
        smg_heavy_t9, // 0x36
        smg_fastfire_t9, // 0x37
        lmg_light_t9, // 0x38
        melee_scythe_t9, // 0x39
        ar_british_t9, // 0x3a
        melee_battleaxe_t9, // 0x3b
        ww_axe_gun_melee_t9, // 0x3c
        sniper_standard_t9, // 0x3d
        melee_cane_t9, // 0x3e
        smg_spray_t9, // 0x3f
        ar_fasthandling_t9, // 0x40
        ar_mobility_t9, // 0x41
        sniper_cannon_t9, // 0x42
        shotgun_semiauto_t9, // 0x43
        lmg_fastfire_t9, // 0x44
        ar_standard_t9, // 0x45
        smg_season6_t9, // 0x46
        smg_semiauto_t9, // 0x47
        ray_gun, // 0x48
        smg_handling_t9, // 0x49
        shotgun_fullauto_t9, // 0x4a
        smg_flechette_t9, // 0x4b
        ww_mega_barrel_fullauto_micro_missile_t9, // 0x4c
        lmg_slowfire_t9 // 0x4d
    };

    // idx 0x3 members: 0x15
    enum zmitemgroups {
        specialty, // 0x0
        bubblegum, // 0x1
        hero, // 0x2
        feature, // 0x3
        weapon_special, // 0x4
        hash_2c715fdfe6ed2987, // 0x5
        weapon_knife, // 0x6
        miscweapon, // 0x7
        weapon_pistol, // 0x8
        killstreak, // 0x9
        weapon_sniper, // 0xa
        talent, // 0xb
        weapon_launcher, // 0xc
        weapon_grenade, // 0xd
        bubblegum_consumable, // 0xe
        weapon_lmg, // 0xf
        weapon_tactical, // 0x10
        weapon_smg, // 0x11
        hash_7b68172df6035672, // 0x12
        weapon_cqb, // 0x13
        weapon_assault // 0x14
    };

    // idx 0x4 members: 0xd
    enum zmscorestreakitems {
        napalm_strike_zm, // 0x0
        ultimate_turret, // 0x1
        sig_lmg, // 0x2
        chopper_gunner, // 0x3
        recon_car_zm, // 0x4
        remote_missile_zm, // 0x5
        napalm_strike, // 0x6
        hero_pineapplegun, // 0x7
        sig_bow_flame, // 0x8
        self_revive, // 0x9
        hero_flamethrower, // 0xa
        hero_annihilator, // 0xb
        planemortar // 0xc
    };

    // idx 0x5 members: 0x40
    enum zmequipmentitems {
        aether_shroud_1, // 0x0
        aether_shroud_3, // 0x1
        aether_shroud_2, // 0x2
        aether_shroud_5, // 0x3
        aether_shroud_4, // 0x4
        ring_of_fire_5, // 0x5
        ring_of_fire_4, // 0x6
        ring_of_fire_3, // 0x7
        ring_of_fire_2, // 0x8
        ring_of_fire_1, // 0x9
        hash_7a083f7ba43fa06, // 0xa
        frost_blast, // 0xb
        eq_wraith_fire, // 0xc
        lightning_links, // 0xd
        ring_of_fire, // 0xe
        nightingale, // 0xf
        hatchet, // 0x10
        aether_shroud, // 0x11
        frost_blast_1, // 0x12
        frost_blast_3, // 0x13
        frost_blast_2, // 0x14
        frost_blast_5, // 0x15
        frost_blast_4, // 0x16
        eq_frag_grenade, // 0x17
        eq_stimshot, // 0x18
        heal_aoe_1, // 0x19
        heal_aoe_2, // 0x1a
        heal_aoe_3, // 0x1b
        heal_aoe_4, // 0x1c
        heal_aoe_5, // 0x1d
        eq_grapple, // 0x1e
        lightning_links_1, // 0x1f
        lightning_links_2, // 0x20
        lightning_links_3, // 0x21
        lightning_links_4, // 0x22
        lightning_links_5, // 0x23
        eq_sticky_grenade, // 0x24
        energy_mine, // 0x25
        hash_43e322396554dac0, // 0x26
        hash_43e323396554dc73, // 0x27
        hash_43e326396554e18c, // 0x28
        hash_43e328396554e4f2, // 0x29
        hash_43e329396554e6a5, // 0x2a
        energy_mine_4, // 0x2b
        energy_mine_5, // 0x2c
        energy_mine_2, // 0x2d
        energy_mine_3, // 0x2e
        energy_mine_1, // 0x2f
        eq_acid_bomb, // 0x30
        hash_55569355da0f0f68, // 0x31
        eq_slow_grenade, // 0x32
        toxic_growth, // 0x33
        eq_molotov, // 0x34
        hash_6a4dd5ed56f6e3f6, // 0x35
        satchel_charge, // 0x36
        hash_788c96e19cc7a46e, // 0x37
        claymore, // 0x38
        toxic_growth_5, // 0x39
        toxic_growth_4, // 0x3a
        toxic_growth_3, // 0x3b
        toxic_growth_2, // 0x3c
        toxic_growth_1, // 0x3d
        cymbal_monkey, // 0x3e
        heal_aoe // 0x3f
    };

    // idx 0x6 members: 0x3d
    enum zmattachments {
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
        custom2, // 0x32
        handle2, // 0x33
        compensator2, // 0x34
        mixbody2, // 0x35
        dualoptic, // 0x36
        grip, // 0x37
        smoothzoom, // 0x38
        reflex, // 0x39
        mixbarrel, // 0x3a
        elo3, // 0x3b
        elo2 // 0x3c
    };

    // idx 0x7 members: 0x34
    enum zmbgbs {
        zm_bgb_cache_back, // 0x0
        zm_bgb_refresh_mint, // 0x1
        zm_bgb_kill_joy, // 0x2
        zm_bgb_head_scan, // 0x3
        zm_bgb_head_drama, // 0x4
        zm_bgb_nowhere_but_there, // 0x5
        zm_bgb_free_fire, // 0x6
        zm_bgb_now_you_see_me, // 0x7
        zm_bgb_arsenal_accelerator, // 0x8
        zm_bgb_near_death_experience, // 0x9
        zm_bgb_sword_flay, // 0xa
        zm_bgb_shopping_free, // 0xb
        zm_bgb_newtonian_negation, // 0xc
        zm_bgb_wall_power, // 0xd
        zm_bgb_quacknarok, // 0xe
        zm_bgb_extra_credit, // 0xf
        zm_bgb_alchemical_antithesis, // 0x10
        zm_bgb_perk_up, // 0x11
        zm_bgb_point_drops, // 0x12
        zm_bgb_equip_mint, // 0x13
        zm_bgb_immolation_liquidation, // 0x14
        zm_bgb_pop_shocks, // 0x15
        zm_bgb_phoenix_up, // 0x16
        zm_bgb_dividend_yield, // 0x17
        zm_bgb_always_done_swiftly, // 0x18
        zm_bgb_burned_out, // 0x19
        zm_bgb_perkaholic, // 0x1a
        zm_bgb_join_the_party, // 0x1b
        zm_bgb_whos_keeping_score, // 0x1c
        zm_bgb_bullet_boost, // 0x1d
        zm_bgb_talkin_bout_regeneration, // 0x1e
        zm_bgb_temporal_gift, // 0x1f
        zm_bgb_conflagration_liquidation, // 0x20
        zm_bgb_stock_option, // 0x21
        zm_bgb_wall_to_wall_clearance, // 0x22
        zm_bgb_undead_man_walking, // 0x23
        zm_bgb_power_keg, // 0x24
        zm_bgb_power_vacuum, // 0x25
        zm_bgb_licensed_contractor, // 0x26
        zm_bgb_suit_up, // 0x27
        zm_bgb_phantom_reload, // 0x28
        zm_bgb_shields_up, // 0x29
        zm_bgb_dead_of_nuclear_winter, // 0x2a
        zm_bgb_aftertaste, // 0x2b
        zm_bgb_anywhere_but_here, // 0x2c
        zm_bgb_in_plain_sight, // 0x2d
        zm_bgb_ctrl_z, // 0x2e
        hash_6a4dd5ed56f6e3f6, // 0x2f
        zm_bgb_secret_shopper, // 0x30
        zm_bgb_blood_debt, // 0x31
        zm_bgb_reign_drops, // 0x32
        zm_bgb_anti_entrapment // 0x33
    };

    // idx 0x8 members: 0x1e
    enum zmspecialties {
        ammomod_cryofreeze, // 0x0
        ammomod_shatterblast, // 0x1
        ammomod_deadwire_2, // 0x2
        ammomod_deadwire_3, // 0x3
        ammomod_deadwire_1, // 0x4
        ammomod_deadwire_4, // 0x5
        ammomod_deadwire_5, // 0x6
        ammomod_shatterblast_4, // 0x7
        ammomod_shatterblast_5, // 0x8
        ammomod_shatterblast_1, // 0x9
        ammomod_shatterblast_2, // 0xa
        ammomod_shatterblast_3, // 0xb
        ammomod_cryofreeze_5, // 0xc
        ammomod_cryofreeze_4, // 0xd
        ammomod_cryofreeze_1, // 0xe
        ammomod_cryofreeze_3, // 0xf
        ammomod_cryofreeze_2, // 0x10
        ammomod_brainrot_4, // 0x11
        ammomod_brainrot_5, // 0x12
        ammomod_brainrot_1, // 0x13
        ammomod_brainrot_2, // 0x14
        ammomod_brainrot_3, // 0x15
        ammomod_napalmburst, // 0x16
        ammomod_deadwire, // 0x17
        ammomod_napalmburst_1, // 0x18
        ammomod_napalmburst_2, // 0x19
        ammomod_napalmburst_3, // 0x1a
        ammomod_napalmburst_4, // 0x1b
        ammomod_napalmburst_5, // 0x1c
        ammomod_brainrot // 0x1d
    };

    // idx 0x9 members: 0x17
    enum zmtalismans {
        hash_21b7d195b8d4a27, // 0x0
        hash_7e834844e770d24, // 0x1
        hash_bea39a42d8dc445, // 0x2
        hash_c65521ef9516db1, // 0x3
        hash_ee0002d672c8746, // 0x4
        hash_11859383be1db2bb, // 0x5
        hash_13fcedeb72e1ee6c, // 0x6
        hash_15aed70273b3c161, // 0x7
        hash_1aa4b0ee811f500d, // 0x8
        hash_2197f0d5718b226e, // 0x9
        hash_288dbb4f2318e382, // 0xa
        hash_2cc6d361147708a8, // 0xb
        hash_2fd8993237273c08, // 0xc
        hash_3027333c33c892d2, // 0xd
        hash_30a294abbdf56df2, // 0xe
        hash_3688835fa29eb718, // 0xf
        hash_3ab0a3dbf4294282, // 0x10
        hash_410dfd547f9de5d1, // 0x11
        hash_56bc9a0fc8b4accb, // 0x12
        hash_576e8ab23ae39ae7, // 0x13
        hash_5b8d4c84254927ea, // 0x14
        hash_5d589aec68279ca5, // 0x15
        hash_6ff60ced9f356bd2 // 0x16
    };

    // idx 0xa members: 0xe
    enum zmtalents {
        talent_phdslider, // 0x0
        talent_phdslider_1, // 0x1
        hash_38c08136902fd553, // 0x2
        talent_elemental_pop, // 0x3
        hash_59dbe7f72baaa0f0, // 0x4
        hash_59dbe8f72baaa2a3, // 0x5
        hash_59dbecf72baaa96f, // 0x6
        hash_59dbedf72baaab22, // 0x7
        hash_59dbeef72baaacd5, // 0x8
        talent_elemental_pop_2, // 0x9
        talent_elemental_pop_3, // 0xa
        talent_elemental_pop_1, // 0xb
        talent_elemental_pop_4, // 0xc
        talent_elemental_pop_5 // 0xd
    };

    // idx 0xb members: 0x10
    enum zmwildcards {
        talent_mulekick, // 0x0
        talent_deathperception, // 0x1
        talent_mulekick_1, // 0x2
        talent_mulekick_2, // 0x3
        talent_mulekick_3, // 0x4
        talent_mulekick_4, // 0x5
        talent_mulekick_5, // 0x6
        talent_phdslider_4, // 0x7
        talent_phdslider_5, // 0x8
        talent_phdslider_2, // 0x9
        talent_phdslider_3, // 0xa
        talent_deathperception_2, // 0xb
        talent_deathperception_3, // 0xc
        talent_deathperception_1, // 0xd
        talent_deathperception_4, // 0xe
        talent_deathperception_5 // 0xf
    };

    // idx 0xc members: 0x38
    enum zmskills {
        ammomod_cryofreeze, // 0x0
        hash_21b7d195b8d4a27, // 0x1
        talent_phdslider, // 0x2
        hash_47d7a8105237c88, // 0x3
        hash_493bd7854fb851e, // 0x4
        hash_79a6c34737083a5, // 0x5
        hash_7e834844e770d24, // 0x6
        frost_blast, // 0x7
        ammomod_shatterblast, // 0x8
        hash_bea39a42d8dc445, // 0x9
        hash_c65521ef9516db1, // 0xa
        hash_ee0002d672c8746, // 0xb
        hash_1002003edd7f87c1, // 0xc
        hash_11859383be1db2bb, // 0xd
        hash_13fcedeb72e1ee6c, // 0xe
        lightning_links, // 0xf
        hash_15aed70273b3c161, // 0x10
        talent_mulekick, // 0x11
        hash_1aa4b0ee811f500d, // 0x12
        ring_of_fire, // 0x13
        talent_deathperception, // 0x14
        talent_deadshot, // 0x15
        hash_2197f0d5718b226e, // 0x16
        hash_22932c2aa618c693, // 0x17
        hash_22d4422aa65082ea, // 0x18
        hash_288dbb4f2318e382, // 0x19
        hash_28f948200dd3b78a, // 0x1a
        hash_2a5702305c66bda0, // 0x1b
        hash_2a9db878b371119f, // 0x1c
        hash_2cc6d361147708a8, // 0x1d
        aether_shroud, // 0x1e
        hash_2fd8993237273c08, // 0x1f
        hash_3027333c33c892d2, // 0x20
        hash_30a294abbdf56df2, // 0x21
        hash_3688835fa29eb718, // 0x22
        hash_3815ccb92668bae6, // 0x23
        hash_38c08136902fd553, // 0x24
        ammomod_napalmburst, // 0x25
        hash_3ab0a3dbf4294282, // 0x26
        hash_410dfd547f9de5d1, // 0x27
        energy_mine, // 0x28
        talent_elemental_pop, // 0x29
        hash_55569355da0f0f68, // 0x2a
        hash_56bc9a0fc8b4accb, // 0x2b
        hash_576e8ab23ae39ae7, // 0x2c
        talent_speedcola, // 0x2d
        hash_5b8d4c84254927ea, // 0x2e
        hash_5d589aec68279ca5, // 0x2f
        toxic_growth, // 0x30
        talent_staminup, // 0x31
        ammomod_deadwire, // 0x32
        hash_6ff60ced9f356bd2, // 0x33
        hash_791c7f5f82cd6ea6, // 0x34
        ammomod_brainrot, // 0x35
        heal_aoe, // 0x36
        talent_quickrevive // 0x37
    };

    // idx 0xd members: 0x16
    enum zmenemytypes {
        bat, // 0x0
        zwasp, // 0x1
        stoker, // 0x2
        catalyst, // 0x3
        blightfather, // 0x4
        gladiator, // 0x5
        catalyst_electric, // 0x6
        zdog, // 0x7
        nova_crawler, // 0x8
        zsentinel, // 0x9
        zspider, // 0xa
        zthrasher, // 0xb
        nosferatu, // 0xc
        tiger, // 0xd
        catalyst_plasma, // 0xe
        catalyst_water, // 0xf
        zrap, // 0x10
        zraz, // 0x11
        crimson_nosferatu, // 0x12
        brutus, // 0x13
        catalyst_corrosive, // 0x14
        werewolf // 0x15
    };

    // idx 0xe members: 0x3
    enum outcome {
        loss, // 0x0
        win, // 0x1
        draw // 0x2
    };

    // idx 0xf members: 0x6
    enum zmgametypes {
        zonslaught, // 0x0
        zsurvival, // 0x1
        zcranked, // 0x2
        doa, // 0x3
        zclassic, // 0x4
        hash_79fc63477566cd5f // 0x5
    };

    // idx 0x10 members: 0x5
    enum zmmaps {
        zm_platinum, // 0x0
        wz_doa, // 0x1
        zm_silver, // 0x2
        zm_gold, // 0x3
        zm_tungsten // 0x4
    };

    // idx 0x11 members: 0x4
    enum hash_4e52d9b748f0a4a7 {
        hash_2600390d2c09814, // 0x0
        hash_2d314630debbdb2d, // 0x1
        hash_38d3b5707998a8bd, // 0x2
        hash_47033e679d8e8a1a // 0x3
    };

    // idx 0x12 members: 0x3
    enum hash_17c741aff3480ed8 {
        epic, // 0x0
        legendary, // 0x1
        rare // 0x2
    };

    // idx 0x13 members: 0x21
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

    // idx 0x14 members: 0x9
    enum mapstatslist {
        time_played_total, // 0x0
        total_downs, // 0x1
        total_rounds_survived, // 0x2
        score, // 0x3
        total_games_played, // 0x4
        main_quest_completed, // 0x5
        highest_round_reached, // 0x6
        hash_5e21bea2490944e7, // 0x7
        hash_7ea66b44d6518c0a // 0x8
    };

    // idx 0x15 members: 0x13
    enum hash_5f3118b8c9eb06c0 {
        highest_multiplier, // 0x0
        total_downs, // 0x1
        fastest_time_to_complete_round_30, // 0x2
        total_rounds_survived, // 0x3
        hash_20e46acec43f89e9, // 0x4
        hash_20e770cec441c9f2, // 0x5
        revives, // 0x6
        total_games_played, // 0x7
        highest_team_score, // 0x8
        most_kills, // 0x9
        highest_round_reached, // 0xa
        highest_score, // 0xb
        most_headshots, // 0xc
        hash_5e21bea2490944e7, // 0xd
        kills_elite, // 0xe
        kills_critical, // 0xf
        headshots, // 0x10
        kills, // 0x11
        hash_7ea66b44d6518c0a // 0x12
    };

    // idx 0x16 members: 0x17
    enum hash_37b46432aa72415f {
        highest_multiplier, // 0x0
        total_downs, // 0x1
        doors_purchased, // 0x2
        fastest_time_to_complete_round_30, // 0x3
        total_rounds_survived, // 0x4
        hash_20e46acec43f89e9, // 0x5
        hash_20e770cec441c9f2, // 0x6
        revives, // 0x7
        total_games_played, // 0x8
        highest_team_score, // 0x9
        main_quest_completed, // 0xa
        most_kills, // 0xb
        highest_round_reached, // 0xc
        highest_score, // 0xd
        rush_first_place_finishes, // 0xe
        fastest_quest_completion_time, // 0xf
        most_headshots, // 0x10
        hash_5e21bea2490944e7, // 0x11
        kills_elite, // 0x12
        kills_critical, // 0x13
        headshots, // 0x14
        kills, // 0x15
        hash_7ea66b44d6518c0a // 0x16
    };

    // idx 0x17 members: 0xc
    enum hash_6bb4c60bf524dd89 {
        total_downs, // 0x0
        total_rounds_survived, // 0x1
        total_games_played, // 0x2
        main_quest_completed, // 0x3
        most_kills, // 0x4
        highest_round_reached, // 0x5
        fastest_quest_completion_time, // 0x6
        most_headshots, // 0x7
        hash_5e21bea2490944e7, // 0x8
        headshots, // 0x9
        kills, // 0xa
        hash_7ea66b44d6518c0a // 0xb
    };

    // idx 0x18 members: 0xb
    enum hash_5aaca28b6442a96f {
        time_played_total, // 0x0
        total_downs, // 0x1
        total_rounds_survived, // 0x2
        score, // 0x3
        total_games_played, // 0x4
        most_kills, // 0x5
        highest_round_reached, // 0x6
        hash_50dc15187c54967c, // 0x7
        highest_score, // 0x8
        hash_5e21bea2490944e7, // 0x9
        hash_7ea66b44d6518c0a // 0xa
    };

    // idx 0x19 members: 0x17
    enum hash_7e2a34463e5480c2 {
        mp_sm_game_show, // 0x0
        mp_miami, // 0x1
        mp_moscow, // 0x2
        mp_satellite, // 0x3
        mp_cartel, // 0x4
        mp_sm_finance, // 0x5
        mp_raid_rm, // 0x6
        mp_express_rm, // 0x7
        mp_drivein_rm, // 0x8
        mp_nuketown6, // 0x9
        mp_firebase, // 0xa
        mp_kgb, // 0xb
        mp_mall, // 0xc
        mp_echelon, // 0xd
        mp_cliffhanger, // 0xe
        mp_village_rm, // 0xf
        mp_dune, // 0x10
        mp_sm_central, // 0x11
        mp_tank, // 0x12
        mp_apocalypse, // 0x13
        mp_tundra, // 0x14
        mp_sm_berlin_tunnel, // 0x15
        mp_paintball_rm // 0x16
    };

    // idx 0x1a members: 0x4
    enum hash_4b0e09f11187d024 {
        outfit2, // 0x0
        outfit1, // 0x1
        warpaint, // 0x2
        headgear // 0x3
    };

    // idx 0x1b members: 0x3
    enum hash_2b912aa49fb2e683 {
        cast2, // 0x0
        cast3, // 0x1
        cast1 // 0x2
    };

    // idx 0x1c members: 0x4
    enum factionid {
        hash_18c28589b479f06a, // 0x0
        hash_2124264a34840538, // 0x1
        hash_43d9d84f736489fe, // 0x2
        hash_688d1b6ce419b5f5 // 0x3
    };

    // idx 0x1d members: 0x8
    enum higheststatslist {
        kill_streak, // 0x0
        highest_accuracy, // 0x1
        highest_kdratio, // 0x2
        win_streak, // 0x3
        death_streak, // 0x4
        highest_kills, // 0x5
        highest_score_per_minute, // 0x6
        highest_score // 0x7
    };

    // idx 0x1e members: 0x2
    enum gamehistorymodes {
        publicmatch, // 0x0
        leaguematch // 0x1
    };

    // idx 0x1f members: 0x5
    enum quittype {
        dashboard, // 0x0
        quit, // 0x1
        kicked, // 0x2
        finished, // 0x3
        timeout // 0x4
    };

    // root: bitSize: 0x135b60, members: 59

    // offset: 0x0, bitSize: 0x59e8(0xb3d Byte(s)), array:0x15(hti:0x3)
    itemstats item_group_stats[zmitemgroups];
    // offset: 0x59e8, bitSize: 0x8(0x1 Byte(s))
    uint:4 lastconsolesave;
    // offset: 0x59f0, bitSize: 0x580(0xb0 Byte(s)), array:0x4(hti:0xffff)
    hash_597907208f5d1b09 hash_4c137caaf669154f[4];
    // offset: 0x5f70, bitSize: 0x260(0x4c Byte(s))
    doastats hash_612e897b8faf4be5;
    // offset: 0x61d0, bitSize: 0x8(0x1 Byte(s))
    hash_4f97e2253508b6e9 hash_2dd2a2b3580dd409;
    // offset: 0x61d8, bitSize: 0x40(0x8 Byte(s))
    uint64 player_xuid;
    // offset: 0x6218, bitSize: 0x10528(0x20a5 Byte(s)), array:0x3d(hti:0x6)
    itemstats attachment_stats[zmattachments];
    // offset: 0x16740, bitSize: 0x20(0x4 Byte(s))
    uint hashlen;
    // offset: 0x16760, bitSize: 0x580(0xb0 Byte(s)), array:0x4(hti:0xffff)
    hash_597907208f5d1b09 hash_7eb2e5e9d5a52fbe[4];
    // offset: 0x16ce0, bitSize: 0x420(0x84 Byte(s))
    hash_128152f4aff1bf85 hash_4e2b235aab294a3a;
    // offset: 0x17100, bitSize: 0x37e20(0x6fc4 Byte(s)), array:0x17(hti:0x19)
    hash_4afef1eca1d63e07 hash_1ac2582ef7472ac3[hash_7e2a34463e5480c2];
    // offset: 0x4ef20, bitSize: 0x3050(0x60a Byte(s)), array:0x2(hti:0x1e)
    gamehistorystats gamehistory[gamehistorymodes];
    // offset: 0x51f70, bitSize: 0xc0(0x18 Byte(s))
    hash_153f7ad59dfc6f88 hash_694e40bd2fe6dcf2;
    // offset: 0x52030, bitSize: 0x580(0xb0 Byte(s)), array:0x4(hti:0xffff)
    hash_597907208f5d1b09 hash_73a979a5dfcc9239[4];
    // offset: 0x525b0, bitSize: 0x248(0x49 Byte(s))
    zmintelstats hash_118b6e7581ca3893;
    // offset: 0x527f8, bitSize: 0x200(0x40 Byte(s)), array:0x8(hti:0xffff)
    xhash heroweaponsmaxed[8];
    // offset: 0x529f8, bitSize: 0x100(0x20 Byte(s)), array:0x8(hti:0x1d)
    uint higheststats[higheststatslist];
    // offset: 0x52af8, bitSize: 0x580(0xb0 Byte(s)), array:0x4(hti:0xffff)
    hash_597907208f5d1b09 hash_34d39d29ecc57a21[4];
    // offset: 0x53078, bitSize: 0x9c0(0x138 Byte(s)), array:0x4e(hti:0x2)
    rankeditemstats ranked_item_stats[zmrankeditems];
    // offset: 0x53a38, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0x12)
    uint hash_65febbdf3f1ab4d7[hash_17c741aff3480ed8];
    // offset: 0x53a98, bitSize: 0x73a10(0xe742 Byte(s)), array:0x4e(hti:0x2)
    weaponstats hash_3713686a5fc7b39e[zmrankeditems];
    // offset: 0xc74a8, bitSize: 0x7e00(0xfc0 Byte(s)), array:0x40(hti:0x5)
    equipmentstats hash_7a634ccef92080c6[zmequipmentitems];
    // offset: 0xcf2a8, bitSize: 0x280(0x50 Byte(s)), array:0x14(hti:0xffff)
    uint hash_658c026fb3d608db[20];
    // offset: 0xcf528, bitSize: 0x580(0xb0 Byte(s)), array:0x4(hti:0xffff)
    hash_597907208f5d1b09 hash_2d53ab82534a78a0[4];
    // offset: 0xcfaa8, bitSize: 0x5a0(0xb4 Byte(s)), array:0x1e(hti:0x8)
    perkstats perk_stats[zmspecialties];
    // offset: 0xd0048, bitSize: 0x40(0x8 Byte(s))
    uint64 connectionid;
    // offset: 0xd0088, bitSize: 0x8(0x1 Byte(s))
    uint:5 gamebookmarkindex;
    // offset: 0xd0090, bitSize: 0x20(0x4 Byte(s))
    int design_version;
    // offset: 0xd00b0, bitSize: 0x190(0x32 Byte(s)), array:0x32(hti:0xffff)
    byte statshash[50];
    // offset: 0xd0240, bitSize: 0x580(0xb0 Byte(s)), array:0x4(hti:0xffff)
    hash_597907208f5d1b09 hash_31991c471ee140b2[4];
    // offset: 0xd07c0, bitSize: 0x32098(0x6413 Byte(s)), array:0xbb(hti:0x1)
    itemstats item_stats[zmitems];
    // offset: 0x102858, bitSize: 0xccb0(0x1996 Byte(s)), array:0x5(hti:0x10)
    mapstats playerstatsbymap[zmmaps];
    // offset: 0x10f508, bitSize: 0x1180(0x230 Byte(s)), array:0xa(hti:0xffff)
    hash_4976dab983b23e8c consoleinfo[10];
    // offset: 0x110688, bitSize: 0x40(0x8 Byte(s))
    uint64 hash_188ecc3aca50f93d;
    // offset: 0x1106c8, bitSize: 0xa0(0x14 Byte(s))
    hash_728e8b5a7105e67b hash_728e8b5a7105e67b;
    // offset: 0x110768, bitSize: 0x580(0xb0 Byte(s)), array:0x4(hti:0xffff)
    hash_597907208f5d1b09 hash_65b4f15ea5b78483[4];
    // offset: 0x110ce8, bitSize: 0x9e10(0x13c2 Byte(s)), array:0x6(hti:0xf)
    gametypestats playerstatsbygametype[zmgametypes];
    // offset: 0x11aaf8, bitSize: 0x100(0x20 Byte(s)), array:0x20(hti:0xffff)
    byte demonwareflags[32];
    // offset: 0x11abf8, bitSize: 0x20(0x4 Byte(s))
    float skill_rating;
    // offset: 0x11ac18, bitSize: 0xc0(0x18 Byte(s)), array:0x6(hti:0xf)
    float hash_2363e7e74077b1c0[zmgametypes];
    // offset: 0x11acd8, bitSize: 0x20(0x4 Byte(s))
    uint uploadbandwidth;
    // offset: 0x11acf8, bitSize: 0x10(0x2 Byte(s))
    hash_14a0be26898fbeb0 hash_4fc98fa4f99fe608;
    // offset: 0x11ad08, bitSize: 0xc0(0x18 Byte(s)), array:0x2(hti:0x1e)
    hash_16df3a6474be0b92 probation[gamehistorymodes];
    // offset: 0x11adc8, bitSize: 0x8(0x1 Byte(s))
    byte vialsowed;
    // offset: 0x11add0, bitSize: 0x580(0xb0 Byte(s)), array:0x4(hti:0xffff)
    hash_597907208f5d1b09 hash_b3fc7f8a3625bd8[4];
    // offset: 0x11b350, bitSize: 0x80f0(0x101e Byte(s))
    hash_2584f92704256892 playercalling;
    // offset: 0x123440, bitSize: 0x260(0x4c Byte(s))
    doastats hash_64fd75a9ce18b89f;
    // offset: 0x1236a0, bitSize: 0x68(0xd Byte(s))
    hash_60f6edbfd3c6553b hash_18e3320ccf4091e5;
    // offset: 0x123708, bitSize: 0x400(0x80 Byte(s)), array:0x10(hti:0xffff)
    uint64 gamebookmarks[16];
    // offset: 0x123b08, bitSize: 0x5240(0xa48 Byte(s))
    globalstats playerstatslist;
    // offset: 0x128d48, bitSize: 0x20(0x4 Byte(s))
    float skill_variance;
    // offset: 0x128d68, bitSize: 0xc0(0x18 Byte(s)), array:0x6(hti:0xf)
    float hash_3a7324ad328f0e2e[zmgametypes];
    // offset: 0x128e28, bitSize: 0x668(0xcd Byte(s))
    aarstats afteractionreportstats;
    // offset: 0x129490, bitSize: 0xc6a8(0x18d5 Byte(s)), array:0xd(hti:0x4)
    scorestreakstats hash_5d925e2af850ce9e[zmscorestreakitems];
    // offset: 0x135b38, bitSize: 0x20(0x4 Byte(s)), array:0x20(hti:0xffff)
    bool musicunlocks[32];
    // offset: 0x135b58, bitSize: 0x1
    bool playingonwifi;
    // offset: 0x135b59, bitSize: 0x1
    bool completedfirsttimeflow;
    // offset: 0x135b5a, bitSize: 0x3, array:0x3(hti:0xffff)
    bool eastereggcompleted[3];
};

