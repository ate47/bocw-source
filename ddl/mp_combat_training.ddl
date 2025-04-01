// file .... mp_combat_training.ddl

#redirect hash_1992acb0f866e40f;

version hash_57bb28b3cad4e597 {
    // enums ..... 4 (0x4)
    // structs ... 2 (0x2)
    // header bit size .. 584 (0x248)
    // header byte size . 73 (0x49)

    // bitSize: 0x10, members: 3
    struct hash_59cc7e9a5821e816 {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        trainingstate trainingstate;
        // offset: 0x8, bitSize: 0x3, array:0x3(hti:0x3)
        bool hash_5bc234d7be11d761[hash_1c9501e7b4c18b7e];
    };

    // idx 0x0 members: 0x4
    enum hash_30e2ee84fb43aad7 {
        woods_intro, // 0x0
        woods_outro, // 0x1
        story_outro, // 0x2
        story_intro // 0x3
    };

    // idx 0x1 members: 0x10
    enum challengetype {
        hash_4d4a62396c1ec8, // 0x0
        bronze_stars, // 0x1
        weapon_class_kills_sniper, // 0x2
        hash_1ebacadf6dc3dbdf, // 0x3
        silver_stars, // 0x4
        hash_3caeae083fb50ceb, // 0x5
        veteran_kills, // 0x6
        gold_stars, // 0x7
        scorestreak_kills, // 0x8
        hash_512584b15284d144, // 0x9
        hash_513bb5302a850f1c, // 0xa
        best_killstreak, // 0xb
        hash_68046b0858420412, // 0xc
        hash_683d7dfc8782d6b9, // 0xd
        headshots, // 0xe
        melee_kills // 0xf
    };

    // idx 0x2 members: 0x5
    enum trainingstate {
        skirmish_started, // 0x0
        tutorial_completed, // 0x1
        tutorial_started, // 0x2
        not_started, // 0x3
        skirmish_completed // 0x4
    };

    // idx 0x3 members: 0x3
    enum hash_1c9501e7b4c18b7e {
        bronze, // 0x0
        gold, // 0x1
        silver // 0x2
    };

    // root: bitSize: 0x198, members: 7

    // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
    uint:8 hash_5926d5020afdbf8a;
    // offset: 0x8, bitSize: 0x80(0x10 Byte(s)), array:0x10(hti:0x1)
    uint:8 challengeprogress[challengetype];
    // offset: 0x88, bitSize: 0x8(0x1 Byte(s))
    uint:8 selectedspecialist;
    // offset: 0x90, bitSize: 0x100(0x20 Byte(s)), array:0x10(hti:0xffff)
    hash_59cc7e9a5821e816 specialiststats[16];
    // offset: 0x190, bitSize: 0x4, array:0x4(hti:0x0)
    bool hash_20141830935b7f11[hash_30e2ee84fb43aad7];
    // offset: 0x194, bitSize: 0x1
    bool hash_5b9483ca80247cc7;
};

