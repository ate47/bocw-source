// file .... host_migration.ddl

#redirect hash_76bd0790aaf44bfb;

version hash_771118076be96b70 {
    // enums ..... 0 (0x0)
    // structs ... 3 (0x3)
    // header bit size .. 28784 (0x7070)
    // header byte size . 3598 (0xe0e)

    // bitSize: 0x28, members: 2
    struct teamdata {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint score;
        // offset: 0x20, bitSize: 0x8(0x1 Byte(s))
        uint:5 roundswon;
    };

    // bitSize: 0x370, members: 16
    struct playerdata {
        // offset: 0x0, bitSize: 0x140(0x28 Byte(s))
        string(40) name;
        // offset: 0x140, bitSize: 0x10(0x2 Byte(s))
        uint:16 kills;
        // offset: 0x150, bitSize: 0x20(0x4 Byte(s))
        uint score;
        // offset: 0x170, bitSize: 0x10(0x2 Byte(s))
        uint:16 killsdenied;
        // offset: 0x180, bitSize: 0x10(0x2 Byte(s))
        uint:16 returns;
        // offset: 0x190, bitSize: 0x10(0x2 Byte(s))
        uint:10 cur_kill_streak;
        // offset: 0x1a0, bitSize: 0x140(0x28 Byte(s))
        string(40) hash_763e00a108f8960a;
        // offset: 0x2e0, bitSize: 0x10(0x2 Byte(s))
        uint:16 defends;
        // offset: 0x2f0, bitSize: 0x10(0x2 Byte(s))
        uint:16 defuses;
        // offset: 0x300, bitSize: 0x10(0x2 Byte(s))
        uint:10 cur_total_kill_streak;
        // offset: 0x310, bitSize: 0x10(0x2 Byte(s))
        uint:10 deaths;
        // offset: 0x320, bitSize: 0x10(0x2 Byte(s))
        uint:16 plants;
        // offset: 0x330, bitSize: 0x10(0x2 Byte(s))
        uint:10 assists;
        // offset: 0x340, bitSize: 0x10(0x2 Byte(s))
        uint:16 killsconfirmed;
        // offset: 0x350, bitSize: 0x10(0x2 Byte(s))
        uint:10 momentum;
        // offset: 0x360, bitSize: 0x10(0x2 Byte(s))
        uint:16 captures;
    };

    // root: bitSize: 0x6fc0, members: 5

    // offset: 0x0, bitSize: 0x190(0x32 Byte(s)), array:0xa(hti:0xffff)
    teamdata team[10];
    // offset: 0x190, bitSize: 0x20(0x4 Byte(s))
    uint timepassed;
    // offset: 0x1b0, bitSize: 0x8(0x1 Byte(s))
    uint:6 roundsplayed;
    // offset: 0x1b8, bitSize: 0x6e00(0xdc0 Byte(s)), array:0x20(hti:0xffff)
    playerdata player[32];
    // offset: 0x6fb8, bitSize: 0x8(0x1 Byte(s))
    uint:5 roundstied;
};

