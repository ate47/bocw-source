// file .... team_data.ddl

#redirect hash_9ce539b9e7d985a;

version hash_6cae4088c4b2dd2d {
    // enums ..... 0 (0x0)
    // structs ... 7 (0x7)
    // header bit size .. 14176 (0x3760)
    // header byte size . 1772 (0x6ec)

    // bitSize: 0x100, members: 8
    struct hash_7b048091b1488cec {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint ties;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint wins;
        // offset: 0x40, bitSize: 0x20(0x4 Byte(s))
        uint matchcount;
        // offset: 0x60, bitSize: 0x20(0x4 Byte(s))
        uint matchstartlosses;
        // offset: 0x80, bitSize: 0x20(0x4 Byte(s))
        uint losseslatejoin;
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        uint losses;
        // offset: 0xc0, bitSize: 0x20(0x4 Byte(s))
        int matchstartstreak;
        // offset: 0xe0, bitSize: 0x20(0x4 Byte(s))
        int streak;
    };

    // bitSize: 0x140, members: 3
    struct hash_3bdd45425562efbc {
        // offset: 0x0, bitSize: 0x100(0x20 Byte(s))
        hash_7b048091b1488cec matchesstats;
        // offset: 0x100, bitSize: 0x20(0x4 Byte(s))
        uint matchstartpoints;
        // offset: 0x120, bitSize: 0x20(0x4 Byte(s))
        uint points;
    };

    // bitSize: 0x240, members: 9
    struct hash_6ed89f7cef839c06 {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        uint bestsubdivisionrank;
        // offset: 0x20, bitSize: 0x20(0x4 Byte(s))
        uint firstsubdivisionrankstreak;
        // offset: 0x40, bitSize: 0x40(0x8 Byte(s))
        uint64 subdivisionid;
        // offset: 0x80, bitSize: 0x20(0x4 Byte(s))
        uint hash_40ab2c89a089b5a1;
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        uint subdivisionrank;
        // offset: 0xc0, bitSize: 0x20(0x4 Byte(s))
        uint hash_650daed6d12d46cc;
        // offset: 0xe0, bitSize: 0x100(0x20 Byte(s))
        hash_7b048091b1488cec matchesstats;
        // offset: 0x1e0, bitSize: 0x20(0x4 Byte(s))
        uint points;
        // offset: 0x200, bitSize: 0x40(0x8 Byte(s))
        uint64 teamid;
    };

    // bitSize: 0x180, members: 3
    struct hash_116b5b72eac0fc21 {
        // offset: 0x0, bitSize: 0x60(0xc Byte(s)), array:0x3(hti:0xffff)
        uint gamestates[3];
        // offset: 0x60, bitSize: 0x20(0x4 Byte(s))
        uint hash_22c57e1351555439;
        // offset: 0x80, bitSize: 0x100(0x20 Byte(s))
        hash_7b048091b1488cec matchesstats;
    };

    // bitSize: 0x100, members: 1
    struct hash_23802d45f95d62c2 {
        // offset: 0x0, bitSize: 0x100(0x20 Byte(s))
        hash_7b048091b1488cec matchesstats;
    };

    // bitSize: 0x4d0, members: 6
    struct arenastats {
        // offset: 0x0, bitSize: 0x20(0x4 Byte(s))
        float skill;
        // offset: 0x20, bitSize: 0x100(0x20 Byte(s))
        hash_23802d45f95d62c2 hash_4986c748eb81d3c5;
        // offset: 0x120, bitSize: 0x140(0x28 Byte(s))
        hash_3bdd45425562efbc rankedplaystats;
        // offset: 0x260, bitSize: 0x20(0x4 Byte(s))
        float variance;
        // offset: 0x280, bitSize: 0x10(0x2 Byte(s))
        short season;
        // offset: 0x290, bitSize: 0x240(0x48 Byte(s))
        hash_6ed89f7cef839c06 leagueplaystats;
    };

    // root: bitSize: 0x36b0, members: 5

    // offset: 0x0, bitSize: 0x4d0(0x9a Byte(s))
    arenastats arenabest;
    // offset: 0x4d0, bitSize: 0xc0(0x18 Byte(s)), array:0xc(hti:0xffff)
    short arenachallengeseasons[12];
    // offset: 0x590, bitSize: 0x4d0(0x9a Byte(s))
    arenastats arenaperseasonstats;
    // offset: 0xa60, bitSize: 0x2b50(0x56a Byte(s)), array:0x9(hti:0xffff)
    arenastats arenastats[9];
    // offset: 0x35b0, bitSize: 0x100(0x20 Byte(s))
    string(32) hash_7d19b83705dea420;
};

