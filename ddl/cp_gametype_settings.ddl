// file .... cp_gametype_settings.ddl

#redirect hash_714e2803cc82a0ec;

version hash_7f2870480a4a694d {
    // enums ..... 0 (0x0)
    // structs ... 2 (0x2)
    // header bit size .. 5320 (0x14c8)
    // header byte size . 665 (0x299)

    // bitSize: 0x1418, members: 582
    struct gametypesettings {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> timelimit;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_25740f686a5cfc7e;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        uint:4 playerkillsmax;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_129fca5e3a00477f;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_444634d99df7a661;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperdeath;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:2 forceradar;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkill;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playersprinttime;
        // offset: 0x58, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> capturetime;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleroundswon;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_9fe0e2b1a7f556;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayerdefensive;
        // offset: 0x88, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_35e9fc8eee6881e0;
        // offset: 0x90, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_613785a993624133;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandrevivehealth;
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierdestroytime;
        // offset: 0xc0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostattackhelicopter;
        // offset: 0xc8, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_6024ee628431415;
        // offset: 0xd8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostbow;
        // offset: 0xe0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostuav;
        // offset: 0xe8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperweaponkill;
        // offset: 0xf0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_722d8dafb62ce7fe;
        // offset: 0x108, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_4a10303376ed2d10;
        // offset: 0x110, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_68b825c95acb9218;
        // offset: 0x120, bitSize: 0x8(0x1 Byte(s))
        uint:6 maxteamplayers;
        // offset: 0x128, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandhealth;
        // offset: 0x130, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6b2754246df1bc7c;
        // offset: 0x140, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_46f0ae82f5c2f7d4;
        // offset: 0x150, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> maxusers;
        // offset: 0x160, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_1ca4d65346568642;
        // offset: 0x170, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_312848239629f5b9;
        // offset: 0x180, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1d77a77db928f695;
        // offset: 0x190, bitSize: 0x8(0x1 Byte(s))
        uint:4 draftrequiredclients;
        // offset: 0x198, bitSize: 0x8(0x1 Byte(s))
        uint:3 friendlyfiretype;
        // offset: 0x1a0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7fee0559953eec6;
        // offset: 0x1b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_28005bb885acabc3;
        // offset: 0x1c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4725de6afe873b87;
        // offset: 0x1d8, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_16184f2fd4014b39;
        // offset: 0x1e0, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspermeleekill;
        // offset: 0x1e8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_51f121252f1d8c7f;
        // offset: 0x1f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_32da91b78e54e7b5;
        // offset: 0x200, bitSize: 0x8(0x1 Byte(s))
        uint:6 preroundperiod;
        // offset: 0x208, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_56f6d77da3124af2;
        // offset: 0x218, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowertimefactor;
        // offset: 0x220, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_62a4fd40810cb61;
        // offset: 0x228, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_56a31bddd92a64dc;
        // offset: 0x230, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> laststandrevivetime;
        // offset: 0x238, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_429d353f0be087a5;
        // offset: 0x250, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpunishcount;
        // offset: 0x258, bitSize: 0x8(0x1 Byte(s))
        uint:7 maxplayers;
        // offset: 0x260, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53fd9a3e9a0e78e1;
        // offset: 0x270, bitSize: 0x20(0x4 Byte(s))
        int forwardspawnhealth;
        // offset: 0x290, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5598d36d6b224c9a;
        // offset: 0x2a0, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnteamkilledpenalty;
        // offset: 0x2a8, bitSize: 0x8(0x1 Byte(s))
        uint:3 ballcount;
        // offset: 0x2b0, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_6ae29c8144cb7659;
        // offset: 0x2b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c82ffb472a21cac;
        // offset: 0x2c8, bitSize: 0x8(0x1 Byte(s))
        uint:3 gunselection;
        // offset: 0x2d0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_53c1e74b2d385c17;
        // offset: 0x2e8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_17cc26f74ef911e0;
        // offset: 0x2f0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_67d54bbc52811921;
        // offset: 0x2f8, bitSize: 0x8(0x1 Byte(s))
        fixed<5,2> hash_1614b9cbe0df6f75;
        // offset: 0x300, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_35104d2d5fd22ce7;
        // offset: 0x318, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1441f7ad44e1cfd4;
        // offset: 0x320, bitSize: 0x8(0x1 Byte(s))
        uint:7 killstreakdeathpenaltyindividualearn;
        // offset: 0x328, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_c0beb1e5a80c25c;
        // offset: 0x330, bitSize: 0x8(0x1 Byte(s))
        uint:5 prematchrequirement;
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:3 spectatetype;
        // offset: 0x340, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> hash_57fe6337297bcce9;
        // offset: 0x348, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_1df445b9d1af641f;
        // offset: 0x350, bitSize: 0x8(0x1 Byte(s))
        uint:3 randomobjectivelocations;
        // offset: 0x358, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_55db4a8546a13c79;
        // offset: 0x370, bitSize: 0x8(0x1 Byte(s))
        uint:5 roundwinlimit;
        // offset: 0x378, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_ecf2124e9108fc4;
        // offset: 0x380, bitSize: 0x10(0x2 Byte(s))
        uint:10 antiboostdistance;
        // offset: 0x390, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_115a3410d9dbf98d;
        // offset: 0x3a0, bitSize: 0x10(0x2 Byte(s))
        uint:15 roundscorelimit;
        // offset: 0x3b0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_320a5028d10f305a;
        // offset: 0x3c8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> hash_154db5a1b2e9d757;
        // offset: 0x3d8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> bulletdamagescalar;
        // offset: 0x3e0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1df1e1139a1a4eb8;
        // offset: 0x3f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_79c708d50a12e336;
        // offset: 0x408, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_49d61407873849a2;
        // offset: 0x410, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostontimeamount;
        // offset: 0x418, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> defusetime;
        // offset: 0x420, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> teamkillreducedpenalty;
        // offset: 0x428, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxallocation;
        // offset: 0x430, bitSize: 0x8(0x1 Byte(s))
        uint:4 carryscore;
        // offset: 0x438, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c8636144ad47ac9;
        // offset: 0x448, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53cd45b387951ca1;
        // offset: 0x458, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_6e49ce7bbe6d3f1f;
        // offset: 0x460, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> killeventscoremultiplier;
        // offset: 0x468, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_2efff808b2701aa5;
        // offset: 0x478, bitSize: 0x8(0x1 Byte(s))
        uint:6 ticketslostontimeinterval;
        // offset: 0x480, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartexplosivedelay;
        // offset: 0x488, bitSize: 0x8(0x1 Byte(s))
        uint:2 cleandepositrotation;
        // offset: 0x490, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_21754b274494502e;
        // offset: 0x4a0, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_1311b008d2f6dbc1;
        // offset: 0x4b0, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_5f7c18fecb2a1a44;
        // offset: 0x4c0, bitSize: 0x8(0x1 Byte(s))
        uint:7 idleflagresettime;
        // offset: 0x4c8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowergainfactor;
        // offset: 0x4d0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1f65f0a6f0eb3110;
        // offset: 0x4e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2a02614601829003;
        // offset: 0x4f8, bitSize: 0x8(0x1 Byte(s))
        uint:4 setbacks;
        // offset: 0x500, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1db05f3e34ccaaaf;
        // offset: 0x510, bitSize: 0x20(0x4 Byte(s))
        int hash_6b808ab4016cb1e1;
        // offset: 0x530, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1efac5fcdfa4f;
        // offset: 0x540, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1eeac5fcdf89c;
        // offset: 0x550, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f1ac5fcdfdb5;
        // offset: 0x560, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f0ac5fcdfc02;
        // offset: 0x570, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1ebac5fcdf383;
        // offset: 0x580, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_20a83071685f7bd9;
        // offset: 0x598, bitSize: 0x10(0x2 Byte(s))
        fixed<12,4> trm_maxheight;
        // offset: 0x5a8, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_2b88c6ac064e9c59;
        // offset: 0x5b0, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayofthematchevents;
        // offset: 0x5b8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostwarmachine;
        // offset: 0x5c0, bitSize: 0x10(0x2 Byte(s))
        uint:15 scorelimit;
        // offset: 0x5d0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> cratecapturetime;
        // offset: 0x5d8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4a6ef8940f4cbb83;
        // offset: 0x5e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eeb8cb5c84b1939;
        // offset: 0x5f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eba3289161fd45f;
        // offset: 0x600, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_22c53ddb2cb67f13;
        // offset: 0x610, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_9c266bdf9cad7fa;
        // offset: 0x620, bitSize: 0x8(0x1 Byte(s))
        uint:3 killpointsinenemyprotectedzone;
        // offset: 0x628, bitSize: 0x10(0x2 Byte(s))
        uint:14 playersprintrecoverydelayoverridems;
        // offset: 0x638, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6e2b8452b08a545c;
        // offset: 0x640, bitSize: 0x10(0x2 Byte(s))
        uint:10 playermaxhealth;
        // offset: 0x650, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1833c853bfe78ffc;
        // offset: 0x658, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_5e8818f69d557ad2;
        // offset: 0x670, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_3e13b420d6773b4c;
        // offset: 0x678, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_718b497c5205e74b;
        // offset: 0x688, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostgunship;
        // offset: 0x690, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_42b840c668fd2c85;
        // offset: 0x6a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_44f0b1c6b2d3b6f8;
        // offset: 0x6b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5dc620c6c0919d82;
        // offset: 0x6c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2aea36c6a4135574;
        // offset: 0x6d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_32c16dc6a8490e81;
        // offset: 0x6e0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_66a7d866327081eb;
        // offset: 0x6e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5f116b8cfbdbc3fe;
        // offset: 0x6f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsforsurvivalbonus;
        // offset: 0x700, bitSize: 0x258(0x4b Byte(s)), array:0x4b(hti:0xffff)
        uint:5 maxuniquerolesperteam[75];
        // offset: 0x958, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_7adb62a64c6d963;
        // offset: 0x960, bitSize: 0x8(0x1 Byte(s))
        uint:3 objectivepingtime;
        // offset: 0x968, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_271177b8b4cfcf15;
        // offset: 0x980, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamkillspawndelay;
        // offset: 0x988, bitSize: 0x8(0x1 Byte(s))
        uint:8 carrierarmor;
        // offset: 0x990, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_51a2ab391c340e03;
        // offset: 0x9a8, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostondeath;
        // offset: 0x9b0, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_47d4aa0161d78e15;
        // offset: 0x9b8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostremotemissile;
        // offset: 0x9c0, bitSize: 0x10(0x2 Byte(s))
        uint:9 carriermovespeed;
        // offset: 0x9d0, bitSize: 0x8(0x1 Byte(s))
        uint:5 boottime;
        // offset: 0x9d8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_652bc8c2577ec788;
        // offset: 0x9e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_72852fc1d977c3a0;
        // offset: 0x9f8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_314c2f7312bde4af;
        // offset: 0xa00, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_5d5f4ee35c9977c7;
        // offset: 0xa08, bitSize: 0x8(0x1 Byte(s))
        uint:3 roundstartfriendlyfiretype;
        // offset: 0xa10, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagdecaytime;
        // offset: 0xa18, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_76f686986e1a58b;
        // offset: 0xa28, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_vs_bots;
        // offset: 0xa30, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_26b08269156ca0e5;
        // offset: 0xa38, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamnumlives;
        // offset: 0xa40, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> planttime;
        // offset: 0xa48, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6141cddd96ac214e;
        // offset: 0xa50, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnprotectiontime;
        // offset: 0xa58, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7353bbc24d72ec59;
        // offset: 0xa68, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_573034b3252cb4e3;
        // offset: 0xa80, bitSize: 0x10(0x2 Byte(s))
        uint:10 inactivitykick;
        // offset: 0xa90, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspersecondarykill;
        // offset: 0xa98, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team3;
        // offset: 0xaa0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team4;
        // offset: 0xaa8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team5;
        // offset: 0xab0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team6;
        // offset: 0xab8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team7;
        // offset: 0xac0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team8;
        // offset: 0xac8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team9;
        // offset: 0xad0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerhealthregentime;
        // offset: 0xad8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5d40d1f9fb7f;
        // offset: 0xae8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5c40d1f9f9cc;
        // offset: 0xaf8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5f40d1f9fee5;
        // offset: 0xb08, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5e40d1f9fd32;
        // offset: 0xb18, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5940d1f9f4b3;
        // offset: 0xb28, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4f00f3f568c284af;
        // offset: 0xb38, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7f190c8839d3f05c;
        // offset: 0xb48, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_3a4691a853585241;
        // offset: 0xb50, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> destroytime;
        // offset: 0xb60, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagrespawntime;
        // offset: 0xb68, bitSize: 0x8(0x1 Byte(s))
        uint:2 shutdowndamage;
        // offset: 0xb70, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> gameadvertisementruletimeleft;
        // offset: 0xb78, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_6a48bbfb703d5c9c;
        // offset: 0xb80, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_239b391c77ebf8c1;
        // offset: 0xb88, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7c33e5bebaf05afb;
        // offset: 0xb98, bitSize: 0x10(0x2 Byte(s))
        uint:11 objectivehealth;
        // offset: 0xba8, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnsuicidepenalty;
        // offset: 0xbb0, bitSize: 0x8(0x1 Byte(s))
        uint:2 robotspeed;
        // offset: 0xbb8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_467be34402dad274;
        // offset: 0xbc0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_68e3f54e05f57d85;
        // offset: 0xbc8, bitSize: 0x8(0x1 Byte(s))
        uint:7 servermsec;
        // offset: 0xbd0, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_410c5c7c1e60b534;
        // offset: 0xbd8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_212cc2b5b360189c;
        // offset: 0xbe0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostminigun;
        // offset: 0xbe8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_55a92a1d652b5edc;
        // offset: 0xbf0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_552338718ec6d2df;
        // offset: 0xbf8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1c0040943c216593;
        // offset: 0xc00, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxplayereventsperminute;
        // offset: 0xc10, bitSize: 0x10(0x2 Byte(s))
        uint:10 leaderbonus;
        // offset: 0xc20, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_5c918cbf75e16116;
        // offset: 0xc28, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_51e989796c38cd87;
        // offset: 0xc30, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostnapalm;
        // offset: 0xc38, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_119bd2704c238e5;
        // offset: 0xc50, bitSize: 0x8(0x1 Byte(s))
        uint:2 enemycarriervisible;
        // offset: 0xc58, bitSize: 0x10(0x2 Byte(s))
        uint:9 autodestroytime;
        // offset: 0xc68, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkillconfirmed;
        // offset: 0xc70, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4e4352bd1aaeedfe;
        // offset: 0xc78, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_507e1eb7f297d872;
        // offset: 0xc88, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_342835495fca42bb;
        // offset: 0xc98, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7cada6c0936f259b;
        // offset: 0xca8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> waverespawndelay;
        // offset: 0xcb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1974892bc7266bab;
        // offset: 0xcc0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_567db38226658dbf;
        // offset: 0xcc8, bitSize: 0x8(0x1 Byte(s))
        uint:6 prematchperiod;
        // offset: 0xcd0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostsentry;
        // offset: 0xcd8, bitSize: 0x8(0x1 Byte(s))
        uint:6 teamkillscore;
        // offset: 0xce0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_102aeddad113f70c;
        // offset: 0xce8, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_4635a26c94b56725;
        // offset: 0xcf0, bitSize: 0x8(0x1 Byte(s))
        uint:3 platooncount;
        // offset: 0xcf8, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierhealth;
        // offset: 0xd18, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_71da377e373bc755;
        // offset: 0xd30, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_38a8f601ab8388d0;
        // offset: 0xd40, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarykill;
        // offset: 0xd48, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperheadshot;
        // offset: 0xd50, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_75ff4383212c5111;
        // offset: 0xd60, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1908ad844e6c3e37;
        // offset: 0xd68, bitSize: 0x8(0x1 Byte(s))
        uint:4 pregameitemmaxvotes;
        // offset: 0xd70, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_50029ecff5e7d383;
        // offset: 0xd80, bitSize: 0x8(0x1 Byte(s))
        uint:7 playernumlives;
        // offset: 0xd88, bitSize: 0x8(0x1 Byte(s))
        uint:2 infectionmode;
        // offset: 0xd90, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleround;
        // offset: 0xd98, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7d53c8bab3db8122;
        // offset: 0xda8, bitSize: 0x8(0x1 Byte(s))
        fixed<7,1> incrementalspawndelay;
        // offset: 0xdb0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_allies;
        // offset: 0xdb8, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxsuicidesbeforekick;
        // offset: 0xdc0, bitSize: 0x8(0x1 Byte(s))
        uint:7 gameadvertisementrulescorepercent;
        // offset: 0xdc8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_3e76ce42036815cc;
        // offset: 0xdd8, bitSize: 0x10(0x2 Byte(s))
        int:10 hash_3ccd8e1bf3864fa1;
        // offset: 0xde8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_130d127406ab976e;
        // offset: 0xdf8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostairpatrol;
        // offset: 0xe00, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcoststraferun;
        // offset: 0xe08, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostcuav;
        // offset: 0xe10, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostrcxd;
        // offset: 0xe18, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostvtol;
        // offset: 0xe20, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_40c4b447a58a7da4;
        // offset: 0xe30, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> hash_47e9736d437be7c8;
        // offset: 0xe38, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3e1bb1840c4ab667;
        // offset: 0xe48, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1ea82b1edff2a13b;
        // offset: 0xe58, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c31c3f19402e1f;
        // offset: 0xe68, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandtimer;
        // offset: 0xe70, bitSize: 0x8(0x1 Byte(s))
        uint:6 reboottime;
        // offset: 0xe78, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscorepercleandeposit;
        // offset: 0xe80, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extrasegmenttime;
        // offset: 0xe90, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_2081d79c44b2cefb;
        // offset: 0xea8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6773166f56896564;
        // offset: 0xeb8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1725e90b73841702;
        // offset: 0xec8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_273d049136c76afa;
        // offset: 0xed8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_2849b6cf7317ab1b;
        // offset: 0xee0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5a4fde688cbf1a01;
        // offset: 0xef0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c72ac3d026ca4eb;
        // offset: 0xf00, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_83f11b8abac148f;
        // offset: 0xf08, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_22fa97d05461a3e8;
        // offset: 0xf20, bitSize: 0x8(0x1 Byte(s))
        uint:4 pickuptime;
        // offset: 0xf28, bitSize: 0x10(0x2 Byte(s))
        fixed<14,7> hash_451245a24412d90f;
        // offset: 0xf38, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3d5a87878a3bef28;
        // offset: 0xf48, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_552467c143123c1c;
        // offset: 0xf50, bitSize: 0x20(0x4 Byte(s))
        int hash_64727525f5957d06;
        // offset: 0xf70, bitSize: 0x20(0x4 Byte(s))
        int hash_1f3285ddee84620c;
        // offset: 0xf90, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_2596f9e3d6e26ac9;
        // offset: 0xf98, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostchoppergunner;
        // offset: 0xfa0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_3767386c050fa0eb;
        // offset: 0xfa8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerrespawndelay;
        // offset: 0xfb0, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_34ee1a1a574eaa4c;
        // offset: 0xfc0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> spawntraptriggertime;
        // offset: 0xfc8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_26ff1d48be83e46c;
        // offset: 0xfe0, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayeroffensive;
        // offset: 0xfe8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_527f80b77f20b8c8;
        // offset: 0xff8, bitSize: 0x8(0x1 Byte(s))
        uint:2 allowhitmarkers;
        // offset: 0x1000, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_d8215d30d36fa59;
        // offset: 0x1018, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_67ee1d8d7938baa1;
        // offset: 0x1028, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2c02a63d2c336b30;
        // offset: 0x1038, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxobjectiveeventsperminute;
        // offset: 0x1048, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_47dd11084763c671;
        // offset: 0x1058, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4201d2890785fb14;
        // offset: 0x1068, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarygrenadekill;
        // offset: 0x1070, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team10;
        // offset: 0x1078, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostcarepackage;
        // offset: 0x1080, bitSize: 0x8(0x1 Byte(s))
        uint:7 bonuslivesforcapturingzone;
        // offset: 0x1088, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_39d008c4c2044bc7;
        // offset: 0x1098, bitSize: 0x8(0x1 Byte(s))
        uint:7 startplayers;
        // offset: 0x10a0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_7d590533364efa87;
        // offset: 0x10a8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_252e760b41f3d94a;
        // offset: 0x10b0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartkillstreakdelay;
        // offset: 0x10b8, bitSize: 0x8(0x1 Byte(s))
        uint:5 totalkillsmax;
        // offset: 0x10c0, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundswitch;
        // offset: 0x10c8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerobjectiveheldrespawndelay;
        // offset: 0x10d0, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpenalty;
        // offset: 0x10d8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_18bdaa4b00863e9d;
        // offset: 0x10e0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_12ef93fbb06b1e2c;
        // offset: 0x10f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 weaponcount;
        // offset: 0x1100, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1706d4b546538286;
        // offset: 0x1118, bitSize: 0x8(0x1 Byte(s))
        uint:7 weapontimer;
        // offset: 0x1120, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> overtimetimelimit;
        // offset: 0x1130, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_96215e6d55c4b2b;
        // offset: 0x1140, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_6cd27d9716989cf5;
        // offset: 0x1150, bitSize: 0x8(0x1 Byte(s))
        uint:7 cleandepositonlinetime;
        // offset: 0x1158, bitSize: 0x8(0x1 Byte(s))
        fixed<7,3> hash_4c7c8c4bd1b2a58b;
        // offset: 0x1160, bitSize: 0x8(0x1 Byte(s))
        uint:7 drafttime;
        // offset: 0x1168, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_ed89addfaaafe48;
        // offset: 0x1170, bitSize: 0x8(0x1 Byte(s))
        uint:7 objectivespawntime;
        // offset: 0x1178, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostreconplane;
        // offset: 0x1180, bitSize: 0x8(0x1 Byte(s))
        uint:2 killcammode;
        // offset: 0x1188, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> killcamtime;
        // offset: 0x1198, bitSize: 0x8(0x1 Byte(s))
        uint:4 throwscore;
        // offset: 0x11a0, bitSize: 0x8(0x1 Byte(s))
        uint:4 deposittime;
        // offset: 0x11a8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extratime;
        // offset: 0x11b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_54d908d6273c8893;
        // offset: 0x11c8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6269eb986d22cd37;
        // offset: 0x11d0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreequipmentpowertimefactor;
        // offset: 0x11d8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostarmor;
        // offset: 0x11e0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_36ea712d503b054c;
        // offset: 0x11f8, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamcount;
        // offset: 0x1200, bitSize: 0x20(0x4 Byte(s))
        int hash_7f38d88521da4c79;
        // offset: 0x1220, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_24c718cc0c526c38;
        // offset: 0x1228, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundlimit;
        // offset: 0x1230, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_531cc9c63ae86a93;
        // offset: 0x1240, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostartillery;
        // offset: 0x1248, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_b30022a9302a5a6;
        // offset: 0x1258, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_25d72112144c5ea0;
        // offset: 0x1268, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_39cfd81268504039;
        // offset: 0x1278, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_208071125a2b0b0b;
        // offset: 0x1288, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_52ef5b12764c8139;
        // offset: 0x1298, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4bf2241272d06bec;
        // offset: 0x12a8, bitSize: 0x8(0x1 Byte(s))
        uint:2 charactercustomization;
        // offset: 0x12b0, bitSize: 0x20(0x4 Byte(s))
        int hash_af4ad3316f0ded6;
        // offset: 0x12d0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_437a986f8d24d7eb;
        // offset: 0x12d8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_16182516e10d0250;
        // offset: 0x12f0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_axis;
        // offset: 0x12f8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7344dfa399020a06;
        // offset: 0x1310, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6e2abf2cc40e03f1;
        // offset: 0x1318, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkilldenied;
        // offset: 0x1320, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> bombtimer;
        // offset: 0x1330, bitSize: 0x1
        bool delayplayer;
        // offset: 0x1331, bitSize: 0x1
        bool hash_196e997a082443a9;
        // offset: 0x1332, bitSize: 0x1
        bool voipdeadchatwithdead;
        // offset: 0x1333, bitSize: 0x1
        bool voipdeadchatwithteam;
        // offset: 0x1334, bitSize: 0x1
        bool hash_729930c3c52653c3;
        // offset: 0x1335, bitSize: 0x1
        bool useembleminsteadoffactionicon;
        // offset: 0x1336, bitSize: 0x1
        bool draftenabled;
        // offset: 0x1337, bitSize: 0x1
        bool hash_85fbdce1f1a0290;
        // offset: 0x1338, bitSize: 0x1
        bool hash_3a15393c2e90e121;
        // offset: 0x1339, bitSize: 0x1
        bool hash_1d708093c2664515;
        // offset: 0x133a, bitSize: 0x1
        bool overtimebestteam;
        // offset: 0x133b, bitSize: 0x1
        bool droppedtagrespawn;
        // offset: 0x133c, bitSize: 0x1
        bool hash_1e71b5ce1cd845b3;
        // offset: 0x133d, bitSize: 0x1
        bool hash_25aaa9a29a90534c;
        // offset: 0x133e, bitSize: 0x1
        bool voipkillershearvictim;
        // offset: 0x133f, bitSize: 0x1
        bool hash_7c0dcff6ffb1e348;
        // offset: 0x1340, bitSize: 0x1
        bool hash_4091f2d0019b1f4a;
        // offset: 0x1341, bitSize: 0x1
        bool hash_5183877c20675325;
        // offset: 0x1342, bitSize: 0x1
        bool deathcirclerespawn;
        // offset: 0x1343, bitSize: 0x1
        bool hash_2683a105198a7407;
        // offset: 0x1344, bitSize: 0x1
        bool presetclassesperteam;
        // offset: 0x1345, bitSize: 0x1
        bool hash_361f7fe066281093;
        // offset: 0x1346, bitSize: 0x1
        bool hash_232892d3b0a6240c;
        // offset: 0x1347, bitSize: 0x1
        bool bot_autofill_allies;
        // offset: 0x1348, bitSize: 0x1
        bool hash_2c55a3723cd9fdf9;
        // offset: 0x1349, bitSize: 0x1
        bool forcegibbing;
        // offset: 0x134a, bitSize: 0x1
        bool hash_5c57222bb95a06cb;
        // offset: 0x134b, bitSize: 0x1
        bool hardcoremode;
        // offset: 0x134c, bitSize: 0x1
        bool hash_135829cbab367329;
        // offset: 0x134d, bitSize: 0x1
        bool hash_495b64bd935bf7b;
        // offset: 0x134e, bitSize: 0x1
        bool useitemspawns;
        // offset: 0x134f, bitSize: 0x1
        bool hash_77b7734750cd75e9;
        // offset: 0x1350, bitSize: 0x1
        bool silentplant;
        // offset: 0x1351, bitSize: 0x1
        bool hash_5711f3e42924a635;
        // offset: 0x1352, bitSize: 0x1
        bool drafteveryround;
        // offset: 0x1353, bitSize: 0x1
        bool timepauseswheninzone;
        // offset: 0x1354, bitSize: 0x1
        bool hash_4b55d75b8d779e4;
        // offset: 0x1355, bitSize: 0x1
        bool hash_549abfbb3665d526;
        // offset: 0x1356, bitSize: 0x1
        bool scoreperplayer;
        // offset: 0x1357, bitSize: 0x1
        bool ekiaresetondeath;
        // offset: 0x1358, bitSize: 0x1
        bool kothmode;
        // offset: 0x1359, bitSize: 0x1
        bool hash_70c6890214831a58;
        // offset: 0x135a, bitSize: 0x1
        bool hash_62665aebde32c8ae;
        // offset: 0x135b, bitSize: 0x1
        bool hash_18c053cae82c1167;
        // offset: 0x135c, bitSize: 0x1
        bool hash_6cf5f53d1fbb1066;
        // offset: 0x135d, bitSize: 0x1
        bool hash_3d23923f9c9757cd;
        // offset: 0x135e, bitSize: 0x1
        bool decayprogress;
        // offset: 0x135f, bitSize: 0x1
        bool playerqueuedrespawn;
        // offset: 0x1360, bitSize: 0x1
        bool onlyexecution;
        // offset: 0x1361, bitSize: 0x1
        bool scorestreaksbarebones;
        // offset: 0x1362, bitSize: 0x1
        bool cumulativeroundscores;
        // offset: 0x1363, bitSize: 0x1
        bool hash_3ad2212223b76a72;
        // offset: 0x1364, bitSize: 0x1
        bool voipdeadhearkiller;
        // offset: 0x1365, bitSize: 0x1
        bool bot_autofill_team10;
        // offset: 0x1366, bitSize: 0x1
        bool hash_6e6991561babdd7e;
        // offset: 0x1367, bitSize: 0x1
        bool bot_autofill_axis;
        // offset: 0x1368, bitSize: 0x1
        bool skiplaststand;
        // offset: 0x1369, bitSize: 0x1
        bool hash_1f3825ba2a669400;
        // offset: 0x136a, bitSize: 0x1
        bool usespawngroups;
        // offset: 0x136b, bitSize: 0x1
        bool hash_b76e50c1202aa23;
        // offset: 0x136c, bitSize: 0x1
        bool disablethirdpersonspectating;
        // offset: 0x136d, bitSize: 0x1
        bool platoonassignment;
        // offset: 0x136e, bitSize: 0x1
        bool hash_7daf08db0c451ad1;
        // offset: 0x136f, bitSize: 0x1
        bool allowlaststandforactiveclients;
        // offset: 0x1370, bitSize: 0x1
        bool hash_5cc3c32813d17039;
        // offset: 0x1371, bitSize: 0x1
        bool allowbattlechatter;
        // offset: 0x1372, bitSize: 0x1
        bool fowrevealenabled;
        // offset: 0x1373, bitSize: 0x1
        bool hash_4e8cafe9a4470898;
        // offset: 0x1374, bitSize: 0x1
        bool hash_7647d0e9a45eeca6;
        // offset: 0x1375, bitSize: 0x1
        bool hash_3cd7f961322b6b7;
        // offset: 0x1376, bitSize: 0x1
        bool hash_3293bf384d3c1e2f;
        // offset: 0x1377, bitSize: 0x1
        bool hash_5fcc23190f135afe;
        // offset: 0x1378, bitSize: 0x1
        bool hash_35376812247cdc3;
        // offset: 0x1379, bitSize: 0x1
        bool disablecontracts;
        // offset: 0x137a, bitSize: 0x1
        bool hash_2b1f40bc711c41f3;
        // offset: 0x137b, bitSize: 0x1
        bool hash_75d44b1542e3edf9;
        // offset: 0x137c, bitSize: 0x1
        bool hash_5462586bdce0346e;
        // offset: 0x137d, bitSize: 0x1
        bool gameobjectscontestedmajoritywins;
        // offset: 0x137e, bitSize: 0x1
        bool hash_2f0beae14bf17810;
        // offset: 0x137f, bitSize: 0x1
        bool autoheal;
        // offset: 0x1380, bitSize: 0x1
        bool allowannouncer;
        // offset: 0x1381, bitSize: 0x1
        bool disallowaimslowdown;
        // offset: 0x1382, bitSize: 0x1
        bool hash_435c853b64e3175e;
        // offset: 0x1383, bitSize: 0x1
        bool hash_5538f8f7758641b4;
        // offset: 0x1384, bitSize: 0x1
        bool bot_autofill_team3;
        // offset: 0x1385, bitSize: 0x1
        bool bot_autofill_team4;
        // offset: 0x1386, bitSize: 0x1
        bool bot_autofill_team5;
        // offset: 0x1387, bitSize: 0x1
        bool bot_autofill_team6;
        // offset: 0x1388, bitSize: 0x1
        bool bot_autofill_team7;
        // offset: 0x1389, bitSize: 0x1
        bool bot_autofill_team8;
        // offset: 0x138a, bitSize: 0x1
        bool bot_autofill_team9;
        // offset: 0x138b, bitSize: 0x1
        bool hash_35e6177743dac957;
        // offset: 0x138c, bitSize: 0x1
        bool hash_14fd184091ff1af;
        // offset: 0x138d, bitSize: 0x1
        bool vehiclesenabled;
        // offset: 0x138e, bitSize: 0x1
        bool decaycapturedzones;
        // offset: 0x138f, bitSize: 0x1
        bool neutralzone;
        // offset: 0x1390, bitSize: 0x1
        bool boastallowcam;
        // offset: 0x1391, bitSize: 0x1
        bool hash_7cc354dd83013a47;
        // offset: 0x1392, bitSize: 0x1
        bool onlyheadshots;
        // offset: 0x1393, bitSize: 0x1
        bool competitivesettings;
        // offset: 0x1394, bitSize: 0x1
        bool flagcapturecondition;
        // offset: 0x1395, bitSize: 0x1
        bool hash_1ca94a3bd057f19f;
        // offset: 0x1396, bitSize: 0x1
        bool hash_1346ebfec214d724;
        // offset: 0x1397, bitSize: 0x1
        bool hash_7b822d42a5d1643d;
        // offset: 0x1398, bitSize: 0x1
        bool hash_4be46e952d54e9a2;
        // offset: 0x1399, bitSize: 0x1
        bool hash_1ebf97988141c498;
        // offset: 0x139a, bitSize: 0x1
        bool hash_25fa292c7fc561b8;
        // offset: 0x139b, bitSize: 0x1
        bool flagcanbeneutralized;
        // offset: 0x139c, bitSize: 0x1
        bool hash_241e17e13da23de2;
        // offset: 0x139d, bitSize: 0x1
        bool hash_4057701fc646435d;
        // offset: 0x139e, bitSize: 0x1
        bool hash_6881c7cab0dcef39;
        // offset: 0x139f, bitSize: 0x1
        bool vehiclestimed;
        // offset: 0x13a0, bitSize: 0x1
        bool pregamedraftenabled;
        // offset: 0x13a1, bitSize: 0x1
        bool hash_6f03247bbcf52311;
        // offset: 0x13a2, bitSize: 0x1
        bool hash_6143c4e1e18f08fd;
        // offset: 0x13a3, bitSize: 0x1
        bool teamkillpointloss;
        // offset: 0x13a4, bitSize: 0x1
        bool hash_322026c0342869d1;
        // offset: 0x13a5, bitSize: 0x1
        bool hash_1e346fbfe02f1294;
        // offset: 0x13a6, bitSize: 0x1
        bool hash_3724e6bfee03ce6e;
        // offset: 0x13a7, bitSize: 0x1
        bool hash_497a2cbff8af4988;
        // offset: 0x13a8, bitSize: 0x1
        bool hash_50776bbffc2b6c6d;
        // offset: 0x13a9, bitSize: 0x1
        bool hash_55fc1cb09246fe30;
        // offset: 0x13aa, bitSize: 0x1
        bool hash_1d5943e61e65eeae;
        // offset: 0x13ab, bitSize: 0x1
        bool hash_656fd3c508d1d33e;
        // offset: 0x13ac, bitSize: 0x1
        bool hash_29f3630e8e542a0a;
        // offset: 0x13ad, bitSize: 0x1
        bool hash_c6a2e6c3e86125a;
        // offset: 0x13ae, bitSize: 0x1
        bool hash_2ebcaa6630ba8fd5;
        // offset: 0x13af, bitSize: 0x1
        bool perksenabled;
        // offset: 0x13b0, bitSize: 0x1
        bool hash_33bc6781006ae83d;
        // offset: 0x13b1, bitSize: 0x1
        bool hash_655d904d5995891f;
        // offset: 0x13b2, bitSize: 0x1
        bool hash_6c21d8e8de53e9c3;
        // offset: 0x13b3, bitSize: 0x1
        bool hash_2966662989c3484c;
        // offset: 0x13b4, bitSize: 0x1
        bool allowmapscripting;
        // offset: 0x13b5, bitSize: 0x1
        bool robotshield;
        // offset: 0x13b6, bitSize: 0x1
        bool hash_62e3e33ec68db92f;
        // offset: 0x13b7, bitSize: 0x1
        bool hash_2a76bf462f4c2f50;
        // offset: 0x13b8, bitSize: 0x1
        bool disableattachments;
        // offset: 0x13b9, bitSize: 0x1
        bool disablecompass;
        // offset: 0x13ba, bitSize: 0x1
        bool disableweapondrop;
        // offset: 0x13bb, bitSize: 0x1
        bool hash_1eaa149676ef52d9;
        // offset: 0x13bc, bitSize: 0x1
        bool escalationenabled;
        // offset: 0x13bd, bitSize: 0x1
        bool hash_a564dde6ee3c657;
        // offset: 0x13be, bitSize: 0x1
        bool hash_7b8284382bffc197;
        // offset: 0x13bf, bitSize: 0x1
        bool hash_25368755636c91a4;
        // offset: 0x13c0, bitSize: 0x1
        bool disableclassselection;
        // offset: 0x13c1, bitSize: 0x1
        bool hash_290721f8deb6ef5e;
        // offset: 0x13c2, bitSize: 0x1
        bool hash_48670d9509071424;
        // offset: 0x13c3, bitSize: 0x1
        bool autoteambalance;
        // offset: 0x13c4, bitSize: 0x1
        bool hash_4bdd1bd86b610871;
        // offset: 0x13c5, bitSize: 0x1
        bool hash_69df7093cd32f107;
        // offset: 0x13c6, bitSize: 0x1
        bool hash_7c0acf14fb1f4080;
        // offset: 0x13c7, bitSize: 0x1
        bool allowplayofthematch;
        // offset: 0x13c8, bitSize: 0x1
        bool allowprone;
        // offset: 0x13c9, bitSize: 0x1
        bool scoreresetondeath;
        // offset: 0x13ca, bitSize: 0x1
        bool hash_452a45e599d3a575;
        // offset: 0x13cb, bitSize: 0x1
        bool playerforcerespawn;
        // offset: 0x13cc, bitSize: 0x1
        bool hash_7098f146a35b8468;
        // offset: 0x13cd, bitSize: 0x1
        bool multibomb;
        // offset: 0x13ce, bitSize: 0x1
        bool hash_4dd37bf6da89131;
        // offset: 0x13cf, bitSize: 0x1
        bool hash_29fd164e7ff1abb0;
        // offset: 0x13d0, bitSize: 0x1
        bool hash_104f124f56f0f20a;
        // offset: 0x13d1, bitSize: 0x1
        bool hash_2560dae45cc112e3;
        // offset: 0x13d2, bitSize: 0x1
        bool hash_50a46f60312cf53c;
        // offset: 0x13d3, bitSize: 0x1
        bool hash_23b110691971b537;
        // offset: 0x13d4, bitSize: 0x1
        bool deathcircle;
        // offset: 0x13d5, bitSize: 0x1
        bool hash_4669425278875e14;
        // offset: 0x13d6, bitSize: 0x1
        bool boastenabled;
        // offset: 0x13d7, bitSize: 0x1
        bool hash_5002b8a3b8882084;
        // offset: 0x13d8, bitSize: 0x1
        bool hash_3513cf8b4287cdd7;
        // offset: 0x13d9, bitSize: 0x1
        bool hash_72a2919d2ac65850;
        // offset: 0x13da, bitSize: 0x1
        bool hash_59272f59f19c342a;
        // offset: 0x13db, bitSize: 0x1
        bool hash_429521a79f75a327;
        // offset: 0x13dc, bitSize: 0x1
        bool hash_69f74281cacb8a0f;
        // offset: 0x13dd, bitSize: 0x1
        bool hash_5d65f5abcdad24fe;
        // offset: 0x13de, bitSize: 0x1
        bool deathpointloss;
        // offset: 0x13df, bitSize: 0x1
        bool disablecustomcac;
        // offset: 0x13e0, bitSize: 0x1
        bool hash_1260b639348098e3;
        // offset: 0x13e1, bitSize: 0x1
        bool rebootplayers;
        // offset: 0x13e2, bitSize: 0x1
        bool oldschoolmode;
        // offset: 0x13e3, bitSize: 0x1
        bool hash_4238acad9fa0f317;
        // offset: 0x13e4, bitSize: 0x1
        bool allowfinalkillcam;
        // offset: 0x13e5, bitSize: 0x1
        bool allowspectating;
        // offset: 0x13e6, bitSize: 0x1
        bool usabledynents;
        // offset: 0x13e7, bitSize: 0x1
        bool playintrocinematics;
        // offset: 0x13e8, bitSize: 0x1
        bool hash_564289af24e283db;
        // offset: 0x13e9, bitSize: 0x1
        bool hash_11e1a0adebdab01a;
        // offset: 0x13ea, bitSize: 0x1
        bool hash_7379657f823bfef9;
        // offset: 0x13eb, bitSize: 0x1
        bool hash_47df56af71e4df3;
        // offset: 0x13ec, bitSize: 0x1
        bool hash_282689f7ec6d7d32;
        // offset: 0x13ed, bitSize: 0x1
        bool hash_4ce6b119f5979182;
        // offset: 0x13ee, bitSize: 0x1
        bool spawnselectenabled;
        // offset: 0x13ef, bitSize: 0x1
        bool loadoutkillstreaksenabled;
        // offset: 0x13f0, bitSize: 0x1
        bool pregameitemvoteenabled;
        // offset: 0x13f1, bitSize: 0x1
        bool hash_38d6e4d91bbc82ee;
        // offset: 0x13f2, bitSize: 0x1
        bool hash_2ffb09b25b95a125;
        // offset: 0x13f3, bitSize: 0x1
        bool hash_5684ea266d45be15;
        // offset: 0x13f4, bitSize: 0x1
        bool hash_7f273e367f26254;
        // offset: 0x13f5, bitSize: 0x1
        bool hash_65c535aa5198d01d;
        // offset: 0x13f6, bitSize: 0x1
        bool disallowprone;
        // offset: 0x13f7, bitSize: 0x1
        bool hash_3cc3acd830a8eef;
        // offset: 0x13f8, bitSize: 0x1
        bool moveplayers;
        // offset: 0x13f9, bitSize: 0x1
        bool hash_6945105793e31c56;
        // offset: 0x13fa, bitSize: 0x1
        bool disabletacinsert;
        // offset: 0x13fb, bitSize: 0x1
        bool voipdeadhearallliving;
        // offset: 0x13fc, bitSize: 0x1
        bool hash_4ca06c610b5d53bd;
        // offset: 0x13fd, bitSize: 0x1
        bool killstreaksgivegamescore;
        // offset: 0x13fe, bitSize: 0x1
        bool hash_1cc3f98086d6f5dd;
        // offset: 0x13ff, bitSize: 0x1
        bool flagcapturerateincrease;
        // offset: 0x1400, bitSize: 0x1
        bool use_doors;
        // offset: 0x1401, bitSize: 0x1
        bool pvponly;
        // offset: 0x1402, bitSize: 0x1
        bool forwardspawnteamspecificspawns;
        // offset: 0x1403, bitSize: 0x1
        bool hash_50b56d2635cbb74b;
        // offset: 0x1404, bitSize: 0x1
        bool hash_68fd4f67ea4b4ff8;
        // offset: 0x1405, bitSize: 0x1
        bool forwardspawntakesdamage;
        // offset: 0x1406, bitSize: 0x1
        bool allowingameteamchange;
        // offset: 0x1407, bitSize: 0x1
        bool hash_297b69789a6283b4;
        // offset: 0x1408, bitSize: 0x1
        bool deathzones;
        // offset: 0x1409, bitSize: 0x1
        bool classicmode;
        // offset: 0x140a, bitSize: 0x1
        bool hash_12c8b36832284f70;
        // offset: 0x140b, bitSize: 0x1
        bool voipdeadhearteamliving;
        // offset: 0x140c, bitSize: 0x1
        bool hash_51f7292117d41790;
        // offset: 0x140d, bitSize: 0x1
        bool capdecay;
        // offset: 0x140e, bitSize: 0x1
        bool hash_7bcb76b8a52c35e;
        // offset: 0x140f, bitSize: 0x1
        bool hash_5c90286f1514c76;
        // offset: 0x1410, bitSize: 0x1
        bool hash_b87383d5497a826;
        // offset: 0x1411, bitSize: 0x1
        bool voipeveryonehearseveryone;
        // offset: 0x1412, bitSize: 0x1
        bool hash_460af55ecefb11f;
        // offset: 0x1413, bitSize: 0x1
        bool hash_4f4a73f236278ba8;
        // offset: 0x1414, bitSize: 0x1
        bool hash_5f76e2d55ad861ed;
        // offset: 0x1415, bitSize: 0x1
        bool hash_52a73dca4cbce600;
        // offset: 0x1416, bitSize: 0x1
        bool laststandfinishing;
        // offset: 0x1417, bitSize: 0x1
        bool hash_201c1769d32b30d3;
    };

    // root: bitSize: 0x1418, members: 1

    // offset: 0x0, bitSize: 0x1418(0x283 Byte(s))
    gametypesettings gametypesettings;
};

version hash_90701ced2902e60c {
    // enums ..... 0 (0x0)
    // structs ... 2 (0x2)
    // header bit size .. 4768 (0x12a0)
    // header byte size . 596 (0x254)

    // bitSize: 0x11f0, members: 530
    struct gametypesettings {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> timelimit;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_25740f686a5cfc7e;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        uint:4 playerkillsmax;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_129fca5e3a00477f;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_444634d99df7a661;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperdeath;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:2 forceradar;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkill;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playersprinttime;
        // offset: 0x58, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> capturetime;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleroundswon;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_9fe0e2b1a7f556;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayerdefensive;
        // offset: 0x88, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_35e9fc8eee6881e0;
        // offset: 0x90, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_613785a993624133;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandrevivehealth;
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierdestroytime;
        // offset: 0xc0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_6024ee628431415;
        // offset: 0xd0, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperweaponkill;
        // offset: 0xd8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_722d8dafb62ce7fe;
        // offset: 0xf0, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_68b825c95acb9218;
        // offset: 0x100, bitSize: 0x8(0x1 Byte(s))
        uint:6 maxteamplayers;
        // offset: 0x108, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandhealth;
        // offset: 0x110, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6b2754246df1bc7c;
        // offset: 0x120, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_46f0ae82f5c2f7d4;
        // offset: 0x130, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> maxusers;
        // offset: 0x140, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_1ca4d65346568642;
        // offset: 0x150, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1d77a77db928f695;
        // offset: 0x160, bitSize: 0x8(0x1 Byte(s))
        uint:4 draftrequiredclients;
        // offset: 0x168, bitSize: 0x8(0x1 Byte(s))
        uint:2 friendlyfiretype;
        // offset: 0x170, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7fee0559953eec6;
        // offset: 0x188, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_28005bb885acabc3;
        // offset: 0x198, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4725de6afe873b87;
        // offset: 0x1a8, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_16184f2fd4014b39;
        // offset: 0x1b0, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspermeleekill;
        // offset: 0x1b8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_51f121252f1d8c7f;
        // offset: 0x1c8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_32da91b78e54e7b5;
        // offset: 0x1d0, bitSize: 0x8(0x1 Byte(s))
        uint:6 preroundperiod;
        // offset: 0x1d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_56f6d77da3124af2;
        // offset: 0x1e8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowertimefactor;
        // offset: 0x1f0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_62a4fd40810cb61;
        // offset: 0x1f8, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_56a31bddd92a64dc;
        // offset: 0x200, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> laststandrevivetime;
        // offset: 0x208, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_429d353f0be087a5;
        // offset: 0x220, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpunishcount;
        // offset: 0x228, bitSize: 0x8(0x1 Byte(s))
        uint:7 maxplayers;
        // offset: 0x230, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53fd9a3e9a0e78e1;
        // offset: 0x240, bitSize: 0x20(0x4 Byte(s))
        int forwardspawnhealth;
        // offset: 0x260, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5598d36d6b224c9a;
        // offset: 0x270, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnteamkilledpenalty;
        // offset: 0x278, bitSize: 0x8(0x1 Byte(s))
        uint:3 ballcount;
        // offset: 0x280, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_6ae29c8144cb7659;
        // offset: 0x288, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c82ffb472a21cac;
        // offset: 0x298, bitSize: 0x8(0x1 Byte(s))
        uint:3 gunselection;
        // offset: 0x2a0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_53c1e74b2d385c17;
        // offset: 0x2b8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_17cc26f74ef911e0;
        // offset: 0x2c0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_67d54bbc52811921;
        // offset: 0x2c8, bitSize: 0x8(0x1 Byte(s))
        fixed<5,2> hash_1614b9cbe0df6f75;
        // offset: 0x2d0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_35104d2d5fd22ce7;
        // offset: 0x2e8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1441f7ad44e1cfd4;
        // offset: 0x2f0, bitSize: 0x8(0x1 Byte(s))
        uint:7 killstreakdeathpenaltyindividualearn;
        // offset: 0x2f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 prematchrequirement;
        // offset: 0x300, bitSize: 0x8(0x1 Byte(s))
        uint:3 spectatetype;
        // offset: 0x308, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> hash_57fe6337297bcce9;
        // offset: 0x310, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_1df445b9d1af641f;
        // offset: 0x318, bitSize: 0x8(0x1 Byte(s))
        uint:2 randomobjectivelocations;
        // offset: 0x320, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_55db4a8546a13c79;
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:5 roundwinlimit;
        // offset: 0x340, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_ecf2124e9108fc4;
        // offset: 0x348, bitSize: 0x10(0x2 Byte(s))
        uint:10 antiboostdistance;
        // offset: 0x358, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_115a3410d9dbf98d;
        // offset: 0x368, bitSize: 0x10(0x2 Byte(s))
        uint:15 roundscorelimit;
        // offset: 0x378, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_320a5028d10f305a;
        // offset: 0x390, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> hash_154db5a1b2e9d757;
        // offset: 0x3a0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> bulletdamagescalar;
        // offset: 0x3a8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1df1e1139a1a4eb8;
        // offset: 0x3c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_79c708d50a12e336;
        // offset: 0x3d0, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostontimeamount;
        // offset: 0x3d8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> defusetime;
        // offset: 0x3e0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> teamkillreducedpenalty;
        // offset: 0x3e8, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxallocation;
        // offset: 0x3f0, bitSize: 0x8(0x1 Byte(s))
        uint:4 carryscore;
        // offset: 0x3f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c8636144ad47ac9;
        // offset: 0x408, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53cd45b387951ca1;
        // offset: 0x418, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_6e49ce7bbe6d3f1f;
        // offset: 0x420, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> killeventscoremultiplier;
        // offset: 0x428, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_2efff808b2701aa5;
        // offset: 0x438, bitSize: 0x8(0x1 Byte(s))
        uint:6 ticketslostontimeinterval;
        // offset: 0x440, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartexplosivedelay;
        // offset: 0x448, bitSize: 0x8(0x1 Byte(s))
        uint:2 cleandepositrotation;
        // offset: 0x450, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_21754b274494502e;
        // offset: 0x460, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_5f7c18fecb2a1a44;
        // offset: 0x470, bitSize: 0x8(0x1 Byte(s))
        uint:7 idleflagresettime;
        // offset: 0x478, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowergainfactor;
        // offset: 0x480, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1f65f0a6f0eb3110;
        // offset: 0x498, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2a02614601829003;
        // offset: 0x4a8, bitSize: 0x8(0x1 Byte(s))
        uint:4 setbacks;
        // offset: 0x4b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1db05f3e34ccaaaf;
        // offset: 0x4c0, bitSize: 0x20(0x4 Byte(s))
        int hash_6b808ab4016cb1e1;
        // offset: 0x4e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1efac5fcdfa4f;
        // offset: 0x4f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1eeac5fcdf89c;
        // offset: 0x500, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f1ac5fcdfdb5;
        // offset: 0x510, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f0ac5fcdfc02;
        // offset: 0x520, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1ebac5fcdf383;
        // offset: 0x530, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_20a83071685f7bd9;
        // offset: 0x548, bitSize: 0x10(0x2 Byte(s))
        fixed<12,4> trm_maxheight;
        // offset: 0x558, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_2b88c6ac064e9c59;
        // offset: 0x560, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayofthematchevents;
        // offset: 0x568, bitSize: 0x10(0x2 Byte(s))
        uint:15 scorelimit;
        // offset: 0x578, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> cratecapturetime;
        // offset: 0x580, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4a6ef8940f4cbb83;
        // offset: 0x588, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eeb8cb5c84b1939;
        // offset: 0x598, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eba3289161fd45f;
        // offset: 0x5a8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_22c53ddb2cb67f13;
        // offset: 0x5b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_9c266bdf9cad7fa;
        // offset: 0x5c8, bitSize: 0x8(0x1 Byte(s))
        uint:3 killpointsinenemyprotectedzone;
        // offset: 0x5d0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6e2b8452b08a545c;
        // offset: 0x5d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 playermaxhealth;
        // offset: 0x5e8, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1833c853bfe78ffc;
        // offset: 0x5f0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_5e8818f69d557ad2;
        // offset: 0x608, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_3e13b420d6773b4c;
        // offset: 0x610, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_718b497c5205e74b;
        // offset: 0x620, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_42b840c668fd2c85;
        // offset: 0x630, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_44f0b1c6b2d3b6f8;
        // offset: 0x640, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5dc620c6c0919d82;
        // offset: 0x650, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2aea36c6a4135574;
        // offset: 0x660, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_32c16dc6a8490e81;
        // offset: 0x670, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_66a7d866327081eb;
        // offset: 0x678, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5f116b8cfbdbc3fe;
        // offset: 0x688, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsforsurvivalbonus;
        // offset: 0x690, bitSize: 0x190(0x32 Byte(s)), array:0x32(hti:0xffff)
        uint:5 maxuniquerolesperteam[50];
        // offset: 0x820, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_7adb62a64c6d963;
        // offset: 0x828, bitSize: 0x8(0x1 Byte(s))
        uint:3 objectivepingtime;
        // offset: 0x830, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_271177b8b4cfcf15;
        // offset: 0x848, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamkillspawndelay;
        // offset: 0x850, bitSize: 0x8(0x1 Byte(s))
        uint:8 carrierarmor;
        // offset: 0x858, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_51a2ab391c340e03;
        // offset: 0x870, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostondeath;
        // offset: 0x878, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_47d4aa0161d78e15;
        // offset: 0x880, bitSize: 0x10(0x2 Byte(s))
        uint:9 carriermovespeed;
        // offset: 0x890, bitSize: 0x8(0x1 Byte(s))
        uint:5 boottime;
        // offset: 0x898, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_652bc8c2577ec788;
        // offset: 0x8a8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_72852fc1d977c3a0;
        // offset: 0x8b8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_314c2f7312bde4af;
        // offset: 0x8c0, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_5d5f4ee35c9977c7;
        // offset: 0x8c8, bitSize: 0x8(0x1 Byte(s))
        uint:2 roundstartfriendlyfiretype;
        // offset: 0x8d0, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagdecaytime;
        // offset: 0x8d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_76f686986e1a58b;
        // offset: 0x8e8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_vs_bots;
        // offset: 0x8f0, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_26b08269156ca0e5;
        // offset: 0x8f8, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamnumlives;
        // offset: 0x900, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> planttime;
        // offset: 0x908, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6141cddd96ac214e;
        // offset: 0x910, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnprotectiontime;
        // offset: 0x918, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7353bbc24d72ec59;
        // offset: 0x928, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_573034b3252cb4e3;
        // offset: 0x940, bitSize: 0x10(0x2 Byte(s))
        uint:10 inactivitykick;
        // offset: 0x950, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspersecondarykill;
        // offset: 0x958, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team3;
        // offset: 0x960, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team4;
        // offset: 0x968, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team5;
        // offset: 0x970, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team6;
        // offset: 0x978, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team7;
        // offset: 0x980, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team8;
        // offset: 0x988, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team9;
        // offset: 0x990, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerhealthregentime;
        // offset: 0x998, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5d40d1f9fb7f;
        // offset: 0x9a8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5c40d1f9f9cc;
        // offset: 0x9b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5f40d1f9fee5;
        // offset: 0x9c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5e40d1f9fd32;
        // offset: 0x9d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5940d1f9f4b3;
        // offset: 0x9e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4f00f3f568c284af;
        // offset: 0x9f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7f190c8839d3f05c;
        // offset: 0xa08, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_3a4691a853585241;
        // offset: 0xa10, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> destroytime;
        // offset: 0xa20, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagrespawntime;
        // offset: 0xa28, bitSize: 0x8(0x1 Byte(s))
        uint:2 shutdowndamage;
        // offset: 0xa30, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> gameadvertisementruletimeleft;
        // offset: 0xa38, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_6a48bbfb703d5c9c;
        // offset: 0xa40, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_239b391c77ebf8c1;
        // offset: 0xa48, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7c33e5bebaf05afb;
        // offset: 0xa58, bitSize: 0x10(0x2 Byte(s))
        uint:11 objectivehealth;
        // offset: 0xa68, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnsuicidepenalty;
        // offset: 0xa70, bitSize: 0x8(0x1 Byte(s))
        uint:2 robotspeed;
        // offset: 0xa78, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_467be34402dad274;
        // offset: 0xa80, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_68e3f54e05f57d85;
        // offset: 0xa88, bitSize: 0x8(0x1 Byte(s))
        uint:7 servermsec;
        // offset: 0xa90, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_410c5c7c1e60b534;
        // offset: 0xa98, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_212cc2b5b360189c;
        // offset: 0xaa0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_552338718ec6d2df;
        // offset: 0xaa8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1c0040943c216593;
        // offset: 0xab0, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxplayereventsperminute;
        // offset: 0xac0, bitSize: 0x10(0x2 Byte(s))
        uint:10 leaderbonus;
        // offset: 0xad0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_5c918cbf75e16116;
        // offset: 0xad8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_51e989796c38cd87;
        // offset: 0xae0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_119bd2704c238e5;
        // offset: 0xaf8, bitSize: 0x8(0x1 Byte(s))
        uint:2 enemycarriervisible;
        // offset: 0xb00, bitSize: 0x10(0x2 Byte(s))
        uint:9 autodestroytime;
        // offset: 0xb10, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkillconfirmed;
        // offset: 0xb18, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4e4352bd1aaeedfe;
        // offset: 0xb20, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_507e1eb7f297d872;
        // offset: 0xb30, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_342835495fca42bb;
        // offset: 0xb40, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7cada6c0936f259b;
        // offset: 0xb50, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> waverespawndelay;
        // offset: 0xb58, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1974892bc7266bab;
        // offset: 0xb68, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_567db38226658dbf;
        // offset: 0xb70, bitSize: 0x8(0x1 Byte(s))
        uint:6 prematchperiod;
        // offset: 0xb78, bitSize: 0x8(0x1 Byte(s))
        uint:6 teamkillscore;
        // offset: 0xb80, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_102aeddad113f70c;
        // offset: 0xb88, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_4635a26c94b56725;
        // offset: 0xb90, bitSize: 0x8(0x1 Byte(s))
        uint:3 platooncount;
        // offset: 0xb98, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierhealth;
        // offset: 0xbb8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_71da377e373bc755;
        // offset: 0xbd0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_38a8f601ab8388d0;
        // offset: 0xbe0, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarykill;
        // offset: 0xbe8, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperheadshot;
        // offset: 0xbf0, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_75ff4383212c5111;
        // offset: 0xc00, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1908ad844e6c3e37;
        // offset: 0xc08, bitSize: 0x8(0x1 Byte(s))
        uint:4 pregameitemmaxvotes;
        // offset: 0xc10, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_50029ecff5e7d383;
        // offset: 0xc20, bitSize: 0x8(0x1 Byte(s))
        uint:7 playernumlives;
        // offset: 0xc28, bitSize: 0x8(0x1 Byte(s))
        uint:2 infectionmode;
        // offset: 0xc30, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleround;
        // offset: 0xc38, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7d53c8bab3db8122;
        // offset: 0xc48, bitSize: 0x8(0x1 Byte(s))
        fixed<7,1> incrementalspawndelay;
        // offset: 0xc50, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_allies;
        // offset: 0xc58, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxsuicidesbeforekick;
        // offset: 0xc60, bitSize: 0x8(0x1 Byte(s))
        uint:7 gameadvertisementrulescorepercent;
        // offset: 0xc68, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_3e76ce42036815cc;
        // offset: 0xc78, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_130d127406ab976e;
        // offset: 0xc88, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_40c4b447a58a7da4;
        // offset: 0xc98, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> hash_47e9736d437be7c8;
        // offset: 0xca0, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1ea82b1edff2a13b;
        // offset: 0xcb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c31c3f19402e1f;
        // offset: 0xcc0, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandtimer;
        // offset: 0xcc8, bitSize: 0x8(0x1 Byte(s))
        uint:6 reboottime;
        // offset: 0xcd0, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscorepercleandeposit;
        // offset: 0xcd8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_2081d79c44b2cefb;
        // offset: 0xcf0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6773166f56896564;
        // offset: 0xd00, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1725e90b73841702;
        // offset: 0xd10, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_273d049136c76afa;
        // offset: 0xd20, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_2849b6cf7317ab1b;
        // offset: 0xd28, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5a4fde688cbf1a01;
        // offset: 0xd38, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c72ac3d026ca4eb;
        // offset: 0xd48, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_83f11b8abac148f;
        // offset: 0xd50, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_22fa97d05461a3e8;
        // offset: 0xd68, bitSize: 0x8(0x1 Byte(s))
        uint:4 pickuptime;
        // offset: 0xd70, bitSize: 0x10(0x2 Byte(s))
        fixed<14,7> hash_451245a24412d90f;
        // offset: 0xd80, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3d5a87878a3bef28;
        // offset: 0xd90, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_552467c143123c1c;
        // offset: 0xd98, bitSize: 0x20(0x4 Byte(s))
        int hash_64727525f5957d06;
        // offset: 0xdb8, bitSize: 0x20(0x4 Byte(s))
        int hash_1f3285ddee84620c;
        // offset: 0xdd8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_2596f9e3d6e26ac9;
        // offset: 0xde0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_3767386c050fa0eb;
        // offset: 0xde8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerrespawndelay;
        // offset: 0xdf0, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_34ee1a1a574eaa4c;
        // offset: 0xe00, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> spawntraptriggertime;
        // offset: 0xe08, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_26ff1d48be83e46c;
        // offset: 0xe20, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayeroffensive;
        // offset: 0xe28, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_527f80b77f20b8c8;
        // offset: 0xe38, bitSize: 0x8(0x1 Byte(s))
        uint:2 allowhitmarkers;
        // offset: 0xe40, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_d8215d30d36fa59;
        // offset: 0xe58, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_67ee1d8d7938baa1;
        // offset: 0xe68, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2c02a63d2c336b30;
        // offset: 0xe78, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxobjectiveeventsperminute;
        // offset: 0xe88, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_47dd11084763c671;
        // offset: 0xe98, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4201d2890785fb14;
        // offset: 0xea8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarygrenadekill;
        // offset: 0xeb0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team10;
        // offset: 0xeb8, bitSize: 0x8(0x1 Byte(s))
        uint:7 bonuslivesforcapturingzone;
        // offset: 0xec0, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_39d008c4c2044bc7;
        // offset: 0xed0, bitSize: 0x8(0x1 Byte(s))
        uint:7 startplayers;
        // offset: 0xed8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_7d590533364efa87;
        // offset: 0xee0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_252e760b41f3d94a;
        // offset: 0xee8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartkillstreakdelay;
        // offset: 0xef0, bitSize: 0x8(0x1 Byte(s))
        uint:5 totalkillsmax;
        // offset: 0xef8, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundswitch;
        // offset: 0xf00, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerobjectiveheldrespawndelay;
        // offset: 0xf08, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpenalty;
        // offset: 0xf10, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_18bdaa4b00863e9d;
        // offset: 0xf18, bitSize: 0x8(0x1 Byte(s))
        uint:5 weaponcount;
        // offset: 0xf20, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1706d4b546538286;
        // offset: 0xf38, bitSize: 0x8(0x1 Byte(s))
        uint:7 weapontimer;
        // offset: 0xf40, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> overtimetimelimit;
        // offset: 0xf50, bitSize: 0x8(0x1 Byte(s))
        uint:7 cleandepositonlinetime;
        // offset: 0xf58, bitSize: 0x8(0x1 Byte(s))
        fixed<7,3> hash_4c7c8c4bd1b2a58b;
        // offset: 0xf60, bitSize: 0x8(0x1 Byte(s))
        uint:7 drafttime;
        // offset: 0xf68, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_ed89addfaaafe48;
        // offset: 0xf70, bitSize: 0x8(0x1 Byte(s))
        uint:7 objectivespawntime;
        // offset: 0xf78, bitSize: 0x8(0x1 Byte(s))
        uint:2 killcammode;
        // offset: 0xf80, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> killcamtime;
        // offset: 0xf90, bitSize: 0x8(0x1 Byte(s))
        uint:4 throwscore;
        // offset: 0xf98, bitSize: 0x8(0x1 Byte(s))
        uint:4 deposittime;
        // offset: 0xfa0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extratime;
        // offset: 0xfb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_54d908d6273c8893;
        // offset: 0xfc0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6269eb986d22cd37;
        // offset: 0xfc8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreequipmentpowertimefactor;
        // offset: 0xfd0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_36ea712d503b054c;
        // offset: 0xfe8, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamcount;
        // offset: 0xff0, bitSize: 0x20(0x4 Byte(s))
        int hash_7f38d88521da4c79;
        // offset: 0x1010, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_24c718cc0c526c38;
        // offset: 0x1018, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundlimit;
        // offset: 0x1020, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_531cc9c63ae86a93;
        // offset: 0x1030, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_b30022a9302a5a6;
        // offset: 0x1040, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_25d72112144c5ea0;
        // offset: 0x1050, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_39cfd81268504039;
        // offset: 0x1060, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_208071125a2b0b0b;
        // offset: 0x1070, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_52ef5b12764c8139;
        // offset: 0x1080, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4bf2241272d06bec;
        // offset: 0x1090, bitSize: 0x8(0x1 Byte(s))
        uint:2 charactercustomization;
        // offset: 0x1098, bitSize: 0x20(0x4 Byte(s))
        int hash_af4ad3316f0ded6;
        // offset: 0x10b8, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_437a986f8d24d7eb;
        // offset: 0x10c0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_16182516e10d0250;
        // offset: 0x10d8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_axis;
        // offset: 0x10e0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7344dfa399020a06;
        // offset: 0x10f8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6e2abf2cc40e03f1;
        // offset: 0x1100, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkilldenied;
        // offset: 0x1108, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> bombtimer;
        // offset: 0x1118, bitSize: 0x1
        bool delayplayer;
        // offset: 0x1119, bitSize: 0x1
        bool voipdeadchatwithdead;
        // offset: 0x111a, bitSize: 0x1
        bool voipdeadchatwithteam;
        // offset: 0x111b, bitSize: 0x1
        bool hash_729930c3c52653c3;
        // offset: 0x111c, bitSize: 0x1
        bool useembleminsteadoffactionicon;
        // offset: 0x111d, bitSize: 0x1
        bool draftenabled;
        // offset: 0x111e, bitSize: 0x1
        bool hash_3a15393c2e90e121;
        // offset: 0x111f, bitSize: 0x1
        bool hash_1d708093c2664515;
        // offset: 0x1120, bitSize: 0x1
        bool droppedtagrespawn;
        // offset: 0x1121, bitSize: 0x1
        bool hash_1e71b5ce1cd845b3;
        // offset: 0x1122, bitSize: 0x1
        bool hash_25aaa9a29a90534c;
        // offset: 0x1123, bitSize: 0x1
        bool voipkillershearvictim;
        // offset: 0x1124, bitSize: 0x1
        bool hash_7c0dcff6ffb1e348;
        // offset: 0x1125, bitSize: 0x1
        bool hash_4091f2d0019b1f4a;
        // offset: 0x1126, bitSize: 0x1
        bool deathcirclerespawn;
        // offset: 0x1127, bitSize: 0x1
        bool hash_2683a105198a7407;
        // offset: 0x1128, bitSize: 0x1
        bool presetclassesperteam;
        // offset: 0x1129, bitSize: 0x1
        bool hash_361f7fe066281093;
        // offset: 0x112a, bitSize: 0x1
        bool hash_232892d3b0a6240c;
        // offset: 0x112b, bitSize: 0x1
        bool bot_autofill_allies;
        // offset: 0x112c, bitSize: 0x1
        bool hash_2c55a3723cd9fdf9;
        // offset: 0x112d, bitSize: 0x1
        bool hash_5c57222bb95a06cb;
        // offset: 0x112e, bitSize: 0x1
        bool hardcoremode;
        // offset: 0x112f, bitSize: 0x1
        bool hash_135829cbab367329;
        // offset: 0x1130, bitSize: 0x1
        bool hash_495b64bd935bf7b;
        // offset: 0x1131, bitSize: 0x1
        bool useitemspawns;
        // offset: 0x1132, bitSize: 0x1
        bool hash_77b7734750cd75e9;
        // offset: 0x1133, bitSize: 0x1
        bool silentplant;
        // offset: 0x1134, bitSize: 0x1
        bool hash_5711f3e42924a635;
        // offset: 0x1135, bitSize: 0x1
        bool drafteveryround;
        // offset: 0x1136, bitSize: 0x1
        bool timepauseswheninzone;
        // offset: 0x1137, bitSize: 0x1
        bool hash_4b55d75b8d779e4;
        // offset: 0x1138, bitSize: 0x1
        bool hash_549abfbb3665d526;
        // offset: 0x1139, bitSize: 0x1
        bool scoreperplayer;
        // offset: 0x113a, bitSize: 0x1
        bool ekiaresetondeath;
        // offset: 0x113b, bitSize: 0x1
        bool kothmode;
        // offset: 0x113c, bitSize: 0x1
        bool hash_62665aebde32c8ae;
        // offset: 0x113d, bitSize: 0x1
        bool hash_18c053cae82c1167;
        // offset: 0x113e, bitSize: 0x1
        bool hash_6cf5f53d1fbb1066;
        // offset: 0x113f, bitSize: 0x1
        bool decayprogress;
        // offset: 0x1140, bitSize: 0x1
        bool playerqueuedrespawn;
        // offset: 0x1141, bitSize: 0x1
        bool scorestreaksbarebones;
        // offset: 0x1142, bitSize: 0x1
        bool cumulativeroundscores;
        // offset: 0x1143, bitSize: 0x1
        bool hash_3ad2212223b76a72;
        // offset: 0x1144, bitSize: 0x1
        bool voipdeadhearkiller;
        // offset: 0x1145, bitSize: 0x1
        bool bot_autofill_team10;
        // offset: 0x1146, bitSize: 0x1
        bool hash_6e6991561babdd7e;
        // offset: 0x1147, bitSize: 0x1
        bool bot_autofill_axis;
        // offset: 0x1148, bitSize: 0x1
        bool skiplaststand;
        // offset: 0x1149, bitSize: 0x1
        bool hash_1f3825ba2a669400;
        // offset: 0x114a, bitSize: 0x1
        bool usespawngroups;
        // offset: 0x114b, bitSize: 0x1
        bool hash_b76e50c1202aa23;
        // offset: 0x114c, bitSize: 0x1
        bool disablethirdpersonspectating;
        // offset: 0x114d, bitSize: 0x1
        bool platoonassignment;
        // offset: 0x114e, bitSize: 0x1
        bool hash_7daf08db0c451ad1;
        // offset: 0x114f, bitSize: 0x1
        bool allowlaststandforactiveclients;
        // offset: 0x1150, bitSize: 0x1
        bool allowbattlechatter;
        // offset: 0x1151, bitSize: 0x1
        bool fowrevealenabled;
        // offset: 0x1152, bitSize: 0x1
        bool hash_4e8cafe9a4470898;
        // offset: 0x1153, bitSize: 0x1
        bool hash_7647d0e9a45eeca6;
        // offset: 0x1154, bitSize: 0x1
        bool hash_3cd7f961322b6b7;
        // offset: 0x1155, bitSize: 0x1
        bool hash_3293bf384d3c1e2f;
        // offset: 0x1156, bitSize: 0x1
        bool hash_35376812247cdc3;
        // offset: 0x1157, bitSize: 0x1
        bool disablecontracts;
        // offset: 0x1158, bitSize: 0x1
        bool hash_2b1f40bc711c41f3;
        // offset: 0x1159, bitSize: 0x1
        bool hash_75d44b1542e3edf9;
        // offset: 0x115a, bitSize: 0x1
        bool hash_5462586bdce0346e;
        // offset: 0x115b, bitSize: 0x1
        bool gameobjectscontestedmajoritywins;
        // offset: 0x115c, bitSize: 0x1
        bool hash_2f0beae14bf17810;
        // offset: 0x115d, bitSize: 0x1
        bool autoheal;
        // offset: 0x115e, bitSize: 0x1
        bool allowannouncer;
        // offset: 0x115f, bitSize: 0x1
        bool disallowaimslowdown;
        // offset: 0x1160, bitSize: 0x1
        bool hash_435c853b64e3175e;
        // offset: 0x1161, bitSize: 0x1
        bool hash_5538f8f7758641b4;
        // offset: 0x1162, bitSize: 0x1
        bool bot_autofill_team3;
        // offset: 0x1163, bitSize: 0x1
        bool bot_autofill_team4;
        // offset: 0x1164, bitSize: 0x1
        bool bot_autofill_team5;
        // offset: 0x1165, bitSize: 0x1
        bool bot_autofill_team6;
        // offset: 0x1166, bitSize: 0x1
        bool bot_autofill_team7;
        // offset: 0x1167, bitSize: 0x1
        bool bot_autofill_team8;
        // offset: 0x1168, bitSize: 0x1
        bool bot_autofill_team9;
        // offset: 0x1169, bitSize: 0x1
        bool hash_35e6177743dac957;
        // offset: 0x116a, bitSize: 0x1
        bool hash_14fd184091ff1af;
        // offset: 0x116b, bitSize: 0x1
        bool vehiclesenabled;
        // offset: 0x116c, bitSize: 0x1
        bool decaycapturedzones;
        // offset: 0x116d, bitSize: 0x1
        bool neutralzone;
        // offset: 0x116e, bitSize: 0x1
        bool boastallowcam;
        // offset: 0x116f, bitSize: 0x1
        bool hash_7cc354dd83013a47;
        // offset: 0x1170, bitSize: 0x1
        bool onlyheadshots;
        // offset: 0x1171, bitSize: 0x1
        bool competitivesettings;
        // offset: 0x1172, bitSize: 0x1
        bool flagcapturecondition;
        // offset: 0x1173, bitSize: 0x1
        bool hash_1ca94a3bd057f19f;
        // offset: 0x1174, bitSize: 0x1
        bool hash_4be46e952d54e9a2;
        // offset: 0x1175, bitSize: 0x1
        bool hash_1ebf97988141c498;
        // offset: 0x1176, bitSize: 0x1
        bool hash_25fa292c7fc561b8;
        // offset: 0x1177, bitSize: 0x1
        bool flagcanbeneutralized;
        // offset: 0x1178, bitSize: 0x1
        bool hash_241e17e13da23de2;
        // offset: 0x1179, bitSize: 0x1
        bool hash_6881c7cab0dcef39;
        // offset: 0x117a, bitSize: 0x1
        bool vehiclestimed;
        // offset: 0x117b, bitSize: 0x1
        bool pregamedraftenabled;
        // offset: 0x117c, bitSize: 0x1
        bool hash_6f03247bbcf52311;
        // offset: 0x117d, bitSize: 0x1
        bool hash_6143c4e1e18f08fd;
        // offset: 0x117e, bitSize: 0x1
        bool teamkillpointloss;
        // offset: 0x117f, bitSize: 0x1
        bool hash_322026c0342869d1;
        // offset: 0x1180, bitSize: 0x1
        bool hash_1e346fbfe02f1294;
        // offset: 0x1181, bitSize: 0x1
        bool hash_3724e6bfee03ce6e;
        // offset: 0x1182, bitSize: 0x1
        bool hash_497a2cbff8af4988;
        // offset: 0x1183, bitSize: 0x1
        bool hash_50776bbffc2b6c6d;
        // offset: 0x1184, bitSize: 0x1
        bool hash_55fc1cb09246fe30;
        // offset: 0x1185, bitSize: 0x1
        bool hash_1d5943e61e65eeae;
        // offset: 0x1186, bitSize: 0x1
        bool hash_656fd3c508d1d33e;
        // offset: 0x1187, bitSize: 0x1
        bool hash_29f3630e8e542a0a;
        // offset: 0x1188, bitSize: 0x1
        bool hash_c6a2e6c3e86125a;
        // offset: 0x1189, bitSize: 0x1
        bool hash_2ebcaa6630ba8fd5;
        // offset: 0x118a, bitSize: 0x1
        bool perksenabled;
        // offset: 0x118b, bitSize: 0x1
        bool hash_33bc6781006ae83d;
        // offset: 0x118c, bitSize: 0x1
        bool hash_655d904d5995891f;
        // offset: 0x118d, bitSize: 0x1
        bool hash_6c21d8e8de53e9c3;
        // offset: 0x118e, bitSize: 0x1
        bool hash_2966662989c3484c;
        // offset: 0x118f, bitSize: 0x1
        bool allowmapscripting;
        // offset: 0x1190, bitSize: 0x1
        bool robotshield;
        // offset: 0x1191, bitSize: 0x1
        bool hash_62e3e33ec68db92f;
        // offset: 0x1192, bitSize: 0x1
        bool hash_2a76bf462f4c2f50;
        // offset: 0x1193, bitSize: 0x1
        bool disableattachments;
        // offset: 0x1194, bitSize: 0x1
        bool disablecompass;
        // offset: 0x1195, bitSize: 0x1
        bool disableweapondrop;
        // offset: 0x1196, bitSize: 0x1
        bool escalationenabled;
        // offset: 0x1197, bitSize: 0x1
        bool hash_a564dde6ee3c657;
        // offset: 0x1198, bitSize: 0x1
        bool hash_7b8284382bffc197;
        // offset: 0x1199, bitSize: 0x1
        bool hash_25368755636c91a4;
        // offset: 0x119a, bitSize: 0x1
        bool disableclassselection;
        // offset: 0x119b, bitSize: 0x1
        bool hash_290721f8deb6ef5e;
        // offset: 0x119c, bitSize: 0x1
        bool hash_48670d9509071424;
        // offset: 0x119d, bitSize: 0x1
        bool autoteambalance;
        // offset: 0x119e, bitSize: 0x1
        bool hash_4bdd1bd86b610871;
        // offset: 0x119f, bitSize: 0x1
        bool hash_69df7093cd32f107;
        // offset: 0x11a0, bitSize: 0x1
        bool hash_7c0acf14fb1f4080;
        // offset: 0x11a1, bitSize: 0x1
        bool allowplayofthematch;
        // offset: 0x11a2, bitSize: 0x1
        bool allowprone;
        // offset: 0x11a3, bitSize: 0x1
        bool scoreresetondeath;
        // offset: 0x11a4, bitSize: 0x1
        bool hash_452a45e599d3a575;
        // offset: 0x11a5, bitSize: 0x1
        bool playerforcerespawn;
        // offset: 0x11a6, bitSize: 0x1
        bool hash_7098f146a35b8468;
        // offset: 0x11a7, bitSize: 0x1
        bool multibomb;
        // offset: 0x11a8, bitSize: 0x1
        bool hash_4dd37bf6da89131;
        // offset: 0x11a9, bitSize: 0x1
        bool hash_29fd164e7ff1abb0;
        // offset: 0x11aa, bitSize: 0x1
        bool hash_104f124f56f0f20a;
        // offset: 0x11ab, bitSize: 0x1
        bool hash_2560dae45cc112e3;
        // offset: 0x11ac, bitSize: 0x1
        bool hash_23b110691971b537;
        // offset: 0x11ad, bitSize: 0x1
        bool deathcircle;
        // offset: 0x11ae, bitSize: 0x1
        bool hash_4669425278875e14;
        // offset: 0x11af, bitSize: 0x1
        bool boastenabled;
        // offset: 0x11b0, bitSize: 0x1
        bool hash_3513cf8b4287cdd7;
        // offset: 0x11b1, bitSize: 0x1
        bool hash_72a2919d2ac65850;
        // offset: 0x11b2, bitSize: 0x1
        bool hash_59272f59f19c342a;
        // offset: 0x11b3, bitSize: 0x1
        bool hash_429521a79f75a327;
        // offset: 0x11b4, bitSize: 0x1
        bool hash_69f74281cacb8a0f;
        // offset: 0x11b5, bitSize: 0x1
        bool hash_5d65f5abcdad24fe;
        // offset: 0x11b6, bitSize: 0x1
        bool deathpointloss;
        // offset: 0x11b7, bitSize: 0x1
        bool disablecustomcac;
        // offset: 0x11b8, bitSize: 0x1
        bool hash_1260b639348098e3;
        // offset: 0x11b9, bitSize: 0x1
        bool rebootplayers;
        // offset: 0x11ba, bitSize: 0x1
        bool oldschoolmode;
        // offset: 0x11bb, bitSize: 0x1
        bool hash_4238acad9fa0f317;
        // offset: 0x11bc, bitSize: 0x1
        bool allowfinalkillcam;
        // offset: 0x11bd, bitSize: 0x1
        bool allowspectating;
        // offset: 0x11be, bitSize: 0x1
        bool usabledynents;
        // offset: 0x11bf, bitSize: 0x1
        bool playintrocinematics;
        // offset: 0x11c0, bitSize: 0x1
        bool hash_564289af24e283db;
        // offset: 0x11c1, bitSize: 0x1
        bool hash_11e1a0adebdab01a;
        // offset: 0x11c2, bitSize: 0x1
        bool hash_47df56af71e4df3;
        // offset: 0x11c3, bitSize: 0x1
        bool hash_282689f7ec6d7d32;
        // offset: 0x11c4, bitSize: 0x1
        bool hash_4ce6b119f5979182;
        // offset: 0x11c5, bitSize: 0x1
        bool spawnselectenabled;
        // offset: 0x11c6, bitSize: 0x1
        bool loadoutkillstreaksenabled;
        // offset: 0x11c7, bitSize: 0x1
        bool pregameitemvoteenabled;
        // offset: 0x11c8, bitSize: 0x1
        bool hash_5684ea266d45be15;
        // offset: 0x11c9, bitSize: 0x1
        bool hash_7f273e367f26254;
        // offset: 0x11ca, bitSize: 0x1
        bool hash_65c535aa5198d01d;
        // offset: 0x11cb, bitSize: 0x1
        bool disallowprone;
        // offset: 0x11cc, bitSize: 0x1
        bool hash_3cc3acd830a8eef;
        // offset: 0x11cd, bitSize: 0x1
        bool moveplayers;
        // offset: 0x11ce, bitSize: 0x1
        bool hash_6945105793e31c56;
        // offset: 0x11cf, bitSize: 0x1
        bool disabletacinsert;
        // offset: 0x11d0, bitSize: 0x1
        bool voipdeadhearallliving;
        // offset: 0x11d1, bitSize: 0x1
        bool hash_4ca06c610b5d53bd;
        // offset: 0x11d2, bitSize: 0x1
        bool killstreaksgivegamescore;
        // offset: 0x11d3, bitSize: 0x1
        bool hash_1cc3f98086d6f5dd;
        // offset: 0x11d4, bitSize: 0x1
        bool flagcapturerateincrease;
        // offset: 0x11d5, bitSize: 0x1
        bool use_doors;
        // offset: 0x11d6, bitSize: 0x1
        bool pvponly;
        // offset: 0x11d7, bitSize: 0x1
        bool forwardspawnteamspecificspawns;
        // offset: 0x11d8, bitSize: 0x1
        bool hash_50b56d2635cbb74b;
        // offset: 0x11d9, bitSize: 0x1
        bool hash_68fd4f67ea4b4ff8;
        // offset: 0x11da, bitSize: 0x1
        bool forwardspawntakesdamage;
        // offset: 0x11db, bitSize: 0x1
        bool allowingameteamchange;
        // offset: 0x11dc, bitSize: 0x1
        bool hash_297b69789a6283b4;
        // offset: 0x11dd, bitSize: 0x1
        bool deathzones;
        // offset: 0x11de, bitSize: 0x1
        bool classicmode;
        // offset: 0x11df, bitSize: 0x1
        bool voipdeadhearteamliving;
        // offset: 0x11e0, bitSize: 0x1
        bool hash_51f7292117d41790;
        // offset: 0x11e1, bitSize: 0x1
        bool capdecay;
        // offset: 0x11e2, bitSize: 0x1
        bool hash_7bcb76b8a52c35e;
        // offset: 0x11e3, bitSize: 0x1
        bool hash_5c90286f1514c76;
        // offset: 0x11e4, bitSize: 0x1
        bool hash_b87383d5497a826;
        // offset: 0x11e5, bitSize: 0x1
        bool voipeveryonehearseveryone;
        // offset: 0x11e6, bitSize: 0x1
        bool hash_460af55ecefb11f;
        // offset: 0x11e7, bitSize: 0x1
        bool hash_4f4a73f236278ba8;
        // offset: 0x11e8, bitSize: 0x1
        bool hash_5f76e2d55ad861ed;
        // offset: 0x11e9, bitSize: 0x1
        bool laststandfinishing;
        // offset: 0x11ea, bitSize: 0x1
        bool hash_201c1769d32b30d3;
    };

    // root: bitSize: 0x11f0, members: 1

    // offset: 0x0, bitSize: 0x11f0(0x23e Byte(s))
    gametypesettings gametypesettings;
};

version hash_5300e78db31991df {
    // enums ..... 0 (0x0)
    // structs ... 2 (0x2)
    // header bit size .. 4904 (0x1328)
    // header byte size . 613 (0x265)

    // bitSize: 0x1278, members: 548
    struct gametypesettings {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> timelimit;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_25740f686a5cfc7e;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        uint:4 playerkillsmax;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_129fca5e3a00477f;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_444634d99df7a661;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperdeath;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:2 forceradar;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkill;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playersprinttime;
        // offset: 0x58, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> capturetime;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleroundswon;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_9fe0e2b1a7f556;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayerdefensive;
        // offset: 0x88, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_35e9fc8eee6881e0;
        // offset: 0x90, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_613785a993624133;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandrevivehealth;
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierdestroytime;
        // offset: 0xc0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostattackhelicopter;
        // offset: 0xc8, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_6024ee628431415;
        // offset: 0xd8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostbow;
        // offset: 0xe0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostuav;
        // offset: 0xe8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperweaponkill;
        // offset: 0xf0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_722d8dafb62ce7fe;
        // offset: 0x108, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_68b825c95acb9218;
        // offset: 0x118, bitSize: 0x8(0x1 Byte(s))
        uint:6 maxteamplayers;
        // offset: 0x120, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandhealth;
        // offset: 0x128, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6b2754246df1bc7c;
        // offset: 0x138, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_46f0ae82f5c2f7d4;
        // offset: 0x148, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> maxusers;
        // offset: 0x158, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_1ca4d65346568642;
        // offset: 0x168, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1d77a77db928f695;
        // offset: 0x178, bitSize: 0x8(0x1 Byte(s))
        uint:4 draftrequiredclients;
        // offset: 0x180, bitSize: 0x8(0x1 Byte(s))
        uint:2 friendlyfiretype;
        // offset: 0x188, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7fee0559953eec6;
        // offset: 0x1a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_28005bb885acabc3;
        // offset: 0x1b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4725de6afe873b87;
        // offset: 0x1c0, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_16184f2fd4014b39;
        // offset: 0x1c8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspermeleekill;
        // offset: 0x1d0, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_51f121252f1d8c7f;
        // offset: 0x1e0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_32da91b78e54e7b5;
        // offset: 0x1e8, bitSize: 0x8(0x1 Byte(s))
        uint:6 preroundperiod;
        // offset: 0x1f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_56f6d77da3124af2;
        // offset: 0x200, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowertimefactor;
        // offset: 0x208, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_62a4fd40810cb61;
        // offset: 0x210, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_56a31bddd92a64dc;
        // offset: 0x218, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> laststandrevivetime;
        // offset: 0x220, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_429d353f0be087a5;
        // offset: 0x238, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpunishcount;
        // offset: 0x240, bitSize: 0x8(0x1 Byte(s))
        uint:7 maxplayers;
        // offset: 0x248, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53fd9a3e9a0e78e1;
        // offset: 0x258, bitSize: 0x20(0x4 Byte(s))
        int forwardspawnhealth;
        // offset: 0x278, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5598d36d6b224c9a;
        // offset: 0x288, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnteamkilledpenalty;
        // offset: 0x290, bitSize: 0x8(0x1 Byte(s))
        uint:3 ballcount;
        // offset: 0x298, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_6ae29c8144cb7659;
        // offset: 0x2a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c82ffb472a21cac;
        // offset: 0x2b0, bitSize: 0x8(0x1 Byte(s))
        uint:3 gunselection;
        // offset: 0x2b8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_53c1e74b2d385c17;
        // offset: 0x2d0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_17cc26f74ef911e0;
        // offset: 0x2d8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_67d54bbc52811921;
        // offset: 0x2e0, bitSize: 0x8(0x1 Byte(s))
        fixed<5,2> hash_1614b9cbe0df6f75;
        // offset: 0x2e8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_35104d2d5fd22ce7;
        // offset: 0x300, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1441f7ad44e1cfd4;
        // offset: 0x308, bitSize: 0x8(0x1 Byte(s))
        uint:7 killstreakdeathpenaltyindividualearn;
        // offset: 0x310, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_c0beb1e5a80c25c;
        // offset: 0x318, bitSize: 0x8(0x1 Byte(s))
        uint:5 prematchrequirement;
        // offset: 0x320, bitSize: 0x8(0x1 Byte(s))
        uint:3 spectatetype;
        // offset: 0x328, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> hash_57fe6337297bcce9;
        // offset: 0x330, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_1df445b9d1af641f;
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:2 randomobjectivelocations;
        // offset: 0x340, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_55db4a8546a13c79;
        // offset: 0x358, bitSize: 0x8(0x1 Byte(s))
        uint:5 roundwinlimit;
        // offset: 0x360, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_ecf2124e9108fc4;
        // offset: 0x368, bitSize: 0x10(0x2 Byte(s))
        uint:10 antiboostdistance;
        // offset: 0x378, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_115a3410d9dbf98d;
        // offset: 0x388, bitSize: 0x10(0x2 Byte(s))
        uint:15 roundscorelimit;
        // offset: 0x398, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_320a5028d10f305a;
        // offset: 0x3b0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> hash_154db5a1b2e9d757;
        // offset: 0x3c0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> bulletdamagescalar;
        // offset: 0x3c8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1df1e1139a1a4eb8;
        // offset: 0x3e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_79c708d50a12e336;
        // offset: 0x3f0, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostontimeamount;
        // offset: 0x3f8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> defusetime;
        // offset: 0x400, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> teamkillreducedpenalty;
        // offset: 0x408, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxallocation;
        // offset: 0x410, bitSize: 0x8(0x1 Byte(s))
        uint:4 carryscore;
        // offset: 0x418, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c8636144ad47ac9;
        // offset: 0x428, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53cd45b387951ca1;
        // offset: 0x438, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_6e49ce7bbe6d3f1f;
        // offset: 0x440, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> killeventscoremultiplier;
        // offset: 0x448, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_2efff808b2701aa5;
        // offset: 0x458, bitSize: 0x8(0x1 Byte(s))
        uint:6 ticketslostontimeinterval;
        // offset: 0x460, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartexplosivedelay;
        // offset: 0x468, bitSize: 0x8(0x1 Byte(s))
        uint:2 cleandepositrotation;
        // offset: 0x470, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_21754b274494502e;
        // offset: 0x480, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_5f7c18fecb2a1a44;
        // offset: 0x490, bitSize: 0x8(0x1 Byte(s))
        uint:7 idleflagresettime;
        // offset: 0x498, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowergainfactor;
        // offset: 0x4a0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1f65f0a6f0eb3110;
        // offset: 0x4b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2a02614601829003;
        // offset: 0x4c8, bitSize: 0x8(0x1 Byte(s))
        uint:4 setbacks;
        // offset: 0x4d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1db05f3e34ccaaaf;
        // offset: 0x4e0, bitSize: 0x20(0x4 Byte(s))
        int hash_6b808ab4016cb1e1;
        // offset: 0x500, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1efac5fcdfa4f;
        // offset: 0x510, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1eeac5fcdf89c;
        // offset: 0x520, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f1ac5fcdfdb5;
        // offset: 0x530, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f0ac5fcdfc02;
        // offset: 0x540, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1ebac5fcdf383;
        // offset: 0x550, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_20a83071685f7bd9;
        // offset: 0x568, bitSize: 0x10(0x2 Byte(s))
        fixed<12,4> trm_maxheight;
        // offset: 0x578, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_2b88c6ac064e9c59;
        // offset: 0x580, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayofthematchevents;
        // offset: 0x588, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostwarmachine;
        // offset: 0x590, bitSize: 0x10(0x2 Byte(s))
        uint:15 scorelimit;
        // offset: 0x5a0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> cratecapturetime;
        // offset: 0x5a8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4a6ef8940f4cbb83;
        // offset: 0x5b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eeb8cb5c84b1939;
        // offset: 0x5c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eba3289161fd45f;
        // offset: 0x5d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_22c53ddb2cb67f13;
        // offset: 0x5e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_9c266bdf9cad7fa;
        // offset: 0x5f0, bitSize: 0x8(0x1 Byte(s))
        uint:3 killpointsinenemyprotectedzone;
        // offset: 0x5f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6e2b8452b08a545c;
        // offset: 0x600, bitSize: 0x10(0x2 Byte(s))
        uint:10 playermaxhealth;
        // offset: 0x610, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1833c853bfe78ffc;
        // offset: 0x618, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_5e8818f69d557ad2;
        // offset: 0x630, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_3e13b420d6773b4c;
        // offset: 0x638, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_718b497c5205e74b;
        // offset: 0x648, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostgunship;
        // offset: 0x650, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_42b840c668fd2c85;
        // offset: 0x660, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_44f0b1c6b2d3b6f8;
        // offset: 0x670, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5dc620c6c0919d82;
        // offset: 0x680, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2aea36c6a4135574;
        // offset: 0x690, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_32c16dc6a8490e81;
        // offset: 0x6a0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_66a7d866327081eb;
        // offset: 0x6a8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5f116b8cfbdbc3fe;
        // offset: 0x6b8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsforsurvivalbonus;
        // offset: 0x6c0, bitSize: 0x190(0x32 Byte(s)), array:0x32(hti:0xffff)
        uint:5 maxuniquerolesperteam[50];
        // offset: 0x850, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_7adb62a64c6d963;
        // offset: 0x858, bitSize: 0x8(0x1 Byte(s))
        uint:3 objectivepingtime;
        // offset: 0x860, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_271177b8b4cfcf15;
        // offset: 0x878, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamkillspawndelay;
        // offset: 0x880, bitSize: 0x8(0x1 Byte(s))
        uint:8 carrierarmor;
        // offset: 0x888, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_51a2ab391c340e03;
        // offset: 0x8a0, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostondeath;
        // offset: 0x8a8, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_47d4aa0161d78e15;
        // offset: 0x8b0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostremotemissile;
        // offset: 0x8b8, bitSize: 0x10(0x2 Byte(s))
        uint:9 carriermovespeed;
        // offset: 0x8c8, bitSize: 0x8(0x1 Byte(s))
        uint:5 boottime;
        // offset: 0x8d0, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_652bc8c2577ec788;
        // offset: 0x8e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_72852fc1d977c3a0;
        // offset: 0x8f0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_314c2f7312bde4af;
        // offset: 0x8f8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_5d5f4ee35c9977c7;
        // offset: 0x900, bitSize: 0x8(0x1 Byte(s))
        uint:2 roundstartfriendlyfiretype;
        // offset: 0x908, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagdecaytime;
        // offset: 0x910, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_76f686986e1a58b;
        // offset: 0x920, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_vs_bots;
        // offset: 0x928, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_26b08269156ca0e5;
        // offset: 0x930, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamnumlives;
        // offset: 0x938, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> planttime;
        // offset: 0x940, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6141cddd96ac214e;
        // offset: 0x948, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnprotectiontime;
        // offset: 0x950, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7353bbc24d72ec59;
        // offset: 0x960, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_573034b3252cb4e3;
        // offset: 0x978, bitSize: 0x10(0x2 Byte(s))
        uint:10 inactivitykick;
        // offset: 0x988, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspersecondarykill;
        // offset: 0x990, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team3;
        // offset: 0x998, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team4;
        // offset: 0x9a0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team5;
        // offset: 0x9a8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team6;
        // offset: 0x9b0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team7;
        // offset: 0x9b8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team8;
        // offset: 0x9c0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team9;
        // offset: 0x9c8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerhealthregentime;
        // offset: 0x9d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5d40d1f9fb7f;
        // offset: 0x9e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5c40d1f9f9cc;
        // offset: 0x9f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5f40d1f9fee5;
        // offset: 0xa00, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5e40d1f9fd32;
        // offset: 0xa10, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5940d1f9f4b3;
        // offset: 0xa20, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4f00f3f568c284af;
        // offset: 0xa30, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7f190c8839d3f05c;
        // offset: 0xa40, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_3a4691a853585241;
        // offset: 0xa48, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> destroytime;
        // offset: 0xa58, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagrespawntime;
        // offset: 0xa60, bitSize: 0x8(0x1 Byte(s))
        uint:2 shutdowndamage;
        // offset: 0xa68, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> gameadvertisementruletimeleft;
        // offset: 0xa70, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_6a48bbfb703d5c9c;
        // offset: 0xa78, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_239b391c77ebf8c1;
        // offset: 0xa80, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7c33e5bebaf05afb;
        // offset: 0xa90, bitSize: 0x10(0x2 Byte(s))
        uint:11 objectivehealth;
        // offset: 0xaa0, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnsuicidepenalty;
        // offset: 0xaa8, bitSize: 0x8(0x1 Byte(s))
        uint:2 robotspeed;
        // offset: 0xab0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_467be34402dad274;
        // offset: 0xab8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_68e3f54e05f57d85;
        // offset: 0xac0, bitSize: 0x8(0x1 Byte(s))
        uint:7 servermsec;
        // offset: 0xac8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_410c5c7c1e60b534;
        // offset: 0xad0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_212cc2b5b360189c;
        // offset: 0xad8, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_552338718ec6d2df;
        // offset: 0xae0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1c0040943c216593;
        // offset: 0xae8, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxplayereventsperminute;
        // offset: 0xaf8, bitSize: 0x10(0x2 Byte(s))
        uint:10 leaderbonus;
        // offset: 0xb08, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_5c918cbf75e16116;
        // offset: 0xb10, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_51e989796c38cd87;
        // offset: 0xb18, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostnapalm;
        // offset: 0xb20, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_119bd2704c238e5;
        // offset: 0xb38, bitSize: 0x8(0x1 Byte(s))
        uint:2 enemycarriervisible;
        // offset: 0xb40, bitSize: 0x10(0x2 Byte(s))
        uint:9 autodestroytime;
        // offset: 0xb50, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkillconfirmed;
        // offset: 0xb58, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4e4352bd1aaeedfe;
        // offset: 0xb60, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_507e1eb7f297d872;
        // offset: 0xb70, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_342835495fca42bb;
        // offset: 0xb80, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7cada6c0936f259b;
        // offset: 0xb90, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> waverespawndelay;
        // offset: 0xb98, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1974892bc7266bab;
        // offset: 0xba8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_567db38226658dbf;
        // offset: 0xbb0, bitSize: 0x8(0x1 Byte(s))
        uint:6 prematchperiod;
        // offset: 0xbb8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostsentry;
        // offset: 0xbc0, bitSize: 0x8(0x1 Byte(s))
        uint:6 teamkillscore;
        // offset: 0xbc8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_102aeddad113f70c;
        // offset: 0xbd0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_4635a26c94b56725;
        // offset: 0xbd8, bitSize: 0x8(0x1 Byte(s))
        uint:3 platooncount;
        // offset: 0xbe0, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierhealth;
        // offset: 0xc00, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_71da377e373bc755;
        // offset: 0xc18, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_38a8f601ab8388d0;
        // offset: 0xc28, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarykill;
        // offset: 0xc30, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperheadshot;
        // offset: 0xc38, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_75ff4383212c5111;
        // offset: 0xc48, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1908ad844e6c3e37;
        // offset: 0xc50, bitSize: 0x8(0x1 Byte(s))
        uint:4 pregameitemmaxvotes;
        // offset: 0xc58, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_50029ecff5e7d383;
        // offset: 0xc68, bitSize: 0x8(0x1 Byte(s))
        uint:7 playernumlives;
        // offset: 0xc70, bitSize: 0x8(0x1 Byte(s))
        uint:2 infectionmode;
        // offset: 0xc78, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleround;
        // offset: 0xc80, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7d53c8bab3db8122;
        // offset: 0xc90, bitSize: 0x8(0x1 Byte(s))
        fixed<7,1> incrementalspawndelay;
        // offset: 0xc98, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_allies;
        // offset: 0xca0, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxsuicidesbeforekick;
        // offset: 0xca8, bitSize: 0x8(0x1 Byte(s))
        uint:7 gameadvertisementrulescorepercent;
        // offset: 0xcb0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_3e76ce42036815cc;
        // offset: 0xcc0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_130d127406ab976e;
        // offset: 0xcd0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostairpatrol;
        // offset: 0xcd8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostcuav;
        // offset: 0xce0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostrcxd;
        // offset: 0xce8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostvtol;
        // offset: 0xcf0, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_40c4b447a58a7da4;
        // offset: 0xd00, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> hash_47e9736d437be7c8;
        // offset: 0xd08, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1ea82b1edff2a13b;
        // offset: 0xd18, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c31c3f19402e1f;
        // offset: 0xd28, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandtimer;
        // offset: 0xd30, bitSize: 0x8(0x1 Byte(s))
        uint:6 reboottime;
        // offset: 0xd38, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscorepercleandeposit;
        // offset: 0xd40, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_2081d79c44b2cefb;
        // offset: 0xd58, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6773166f56896564;
        // offset: 0xd68, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1725e90b73841702;
        // offset: 0xd78, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_273d049136c76afa;
        // offset: 0xd88, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_2849b6cf7317ab1b;
        // offset: 0xd90, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5a4fde688cbf1a01;
        // offset: 0xda0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c72ac3d026ca4eb;
        // offset: 0xdb0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_83f11b8abac148f;
        // offset: 0xdb8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_22fa97d05461a3e8;
        // offset: 0xdd0, bitSize: 0x8(0x1 Byte(s))
        uint:4 pickuptime;
        // offset: 0xdd8, bitSize: 0x10(0x2 Byte(s))
        fixed<14,7> hash_451245a24412d90f;
        // offset: 0xde8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3d5a87878a3bef28;
        // offset: 0xdf8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_552467c143123c1c;
        // offset: 0xe00, bitSize: 0x20(0x4 Byte(s))
        int hash_64727525f5957d06;
        // offset: 0xe20, bitSize: 0x20(0x4 Byte(s))
        int hash_1f3285ddee84620c;
        // offset: 0xe40, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_2596f9e3d6e26ac9;
        // offset: 0xe48, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostchoppergunner;
        // offset: 0xe50, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_3767386c050fa0eb;
        // offset: 0xe58, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerrespawndelay;
        // offset: 0xe60, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_34ee1a1a574eaa4c;
        // offset: 0xe70, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> spawntraptriggertime;
        // offset: 0xe78, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_26ff1d48be83e46c;
        // offset: 0xe90, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayeroffensive;
        // offset: 0xe98, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_527f80b77f20b8c8;
        // offset: 0xea8, bitSize: 0x8(0x1 Byte(s))
        uint:2 allowhitmarkers;
        // offset: 0xeb0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_d8215d30d36fa59;
        // offset: 0xec8, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_67ee1d8d7938baa1;
        // offset: 0xed8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2c02a63d2c336b30;
        // offset: 0xee8, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxobjectiveeventsperminute;
        // offset: 0xef8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_47dd11084763c671;
        // offset: 0xf08, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4201d2890785fb14;
        // offset: 0xf18, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarygrenadekill;
        // offset: 0xf20, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team10;
        // offset: 0xf28, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostcarepackage;
        // offset: 0xf30, bitSize: 0x8(0x1 Byte(s))
        uint:7 bonuslivesforcapturingzone;
        // offset: 0xf38, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_39d008c4c2044bc7;
        // offset: 0xf48, bitSize: 0x8(0x1 Byte(s))
        uint:7 startplayers;
        // offset: 0xf50, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_7d590533364efa87;
        // offset: 0xf58, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_252e760b41f3d94a;
        // offset: 0xf60, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartkillstreakdelay;
        // offset: 0xf68, bitSize: 0x8(0x1 Byte(s))
        uint:5 totalkillsmax;
        // offset: 0xf70, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundswitch;
        // offset: 0xf78, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerobjectiveheldrespawndelay;
        // offset: 0xf80, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpenalty;
        // offset: 0xf88, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_18bdaa4b00863e9d;
        // offset: 0xf90, bitSize: 0x8(0x1 Byte(s))
        uint:5 weaponcount;
        // offset: 0xf98, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1706d4b546538286;
        // offset: 0xfb0, bitSize: 0x8(0x1 Byte(s))
        uint:7 weapontimer;
        // offset: 0xfb8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> overtimetimelimit;
        // offset: 0xfc8, bitSize: 0x8(0x1 Byte(s))
        uint:7 cleandepositonlinetime;
        // offset: 0xfd0, bitSize: 0x8(0x1 Byte(s))
        fixed<7,3> hash_4c7c8c4bd1b2a58b;
        // offset: 0xfd8, bitSize: 0x8(0x1 Byte(s))
        uint:7 drafttime;
        // offset: 0xfe0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_ed89addfaaafe48;
        // offset: 0xfe8, bitSize: 0x8(0x1 Byte(s))
        uint:7 objectivespawntime;
        // offset: 0xff0, bitSize: 0x8(0x1 Byte(s))
        uint:2 killcammode;
        // offset: 0xff8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> killcamtime;
        // offset: 0x1008, bitSize: 0x8(0x1 Byte(s))
        uint:4 throwscore;
        // offset: 0x1010, bitSize: 0x8(0x1 Byte(s))
        uint:4 deposittime;
        // offset: 0x1018, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extratime;
        // offset: 0x1028, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_54d908d6273c8893;
        // offset: 0x1038, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6269eb986d22cd37;
        // offset: 0x1040, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreequipmentpowertimefactor;
        // offset: 0x1048, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostarmor;
        // offset: 0x1050, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_36ea712d503b054c;
        // offset: 0x1068, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamcount;
        // offset: 0x1070, bitSize: 0x20(0x4 Byte(s))
        int hash_7f38d88521da4c79;
        // offset: 0x1090, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_24c718cc0c526c38;
        // offset: 0x1098, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundlimit;
        // offset: 0x10a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_531cc9c63ae86a93;
        // offset: 0x10b0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostartillery;
        // offset: 0x10b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_b30022a9302a5a6;
        // offset: 0x10c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_25d72112144c5ea0;
        // offset: 0x10d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_39cfd81268504039;
        // offset: 0x10e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_208071125a2b0b0b;
        // offset: 0x10f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_52ef5b12764c8139;
        // offset: 0x1108, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4bf2241272d06bec;
        // offset: 0x1118, bitSize: 0x8(0x1 Byte(s))
        uint:2 charactercustomization;
        // offset: 0x1120, bitSize: 0x20(0x4 Byte(s))
        int hash_af4ad3316f0ded6;
        // offset: 0x1140, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_437a986f8d24d7eb;
        // offset: 0x1148, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_16182516e10d0250;
        // offset: 0x1160, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_axis;
        // offset: 0x1168, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7344dfa399020a06;
        // offset: 0x1180, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6e2abf2cc40e03f1;
        // offset: 0x1188, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkilldenied;
        // offset: 0x1190, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> bombtimer;
        // offset: 0x11a0, bitSize: 0x1
        bool delayplayer;
        // offset: 0x11a1, bitSize: 0x1
        bool voipdeadchatwithdead;
        // offset: 0x11a2, bitSize: 0x1
        bool voipdeadchatwithteam;
        // offset: 0x11a3, bitSize: 0x1
        bool hash_729930c3c52653c3;
        // offset: 0x11a4, bitSize: 0x1
        bool useembleminsteadoffactionicon;
        // offset: 0x11a5, bitSize: 0x1
        bool draftenabled;
        // offset: 0x11a6, bitSize: 0x1
        bool hash_3a15393c2e90e121;
        // offset: 0x11a7, bitSize: 0x1
        bool hash_1d708093c2664515;
        // offset: 0x11a8, bitSize: 0x1
        bool droppedtagrespawn;
        // offset: 0x11a9, bitSize: 0x1
        bool hash_1e71b5ce1cd845b3;
        // offset: 0x11aa, bitSize: 0x1
        bool hash_25aaa9a29a90534c;
        // offset: 0x11ab, bitSize: 0x1
        bool voipkillershearvictim;
        // offset: 0x11ac, bitSize: 0x1
        bool hash_7c0dcff6ffb1e348;
        // offset: 0x11ad, bitSize: 0x1
        bool hash_4091f2d0019b1f4a;
        // offset: 0x11ae, bitSize: 0x1
        bool deathcirclerespawn;
        // offset: 0x11af, bitSize: 0x1
        bool hash_2683a105198a7407;
        // offset: 0x11b0, bitSize: 0x1
        bool presetclassesperteam;
        // offset: 0x11b1, bitSize: 0x1
        bool hash_361f7fe066281093;
        // offset: 0x11b2, bitSize: 0x1
        bool hash_232892d3b0a6240c;
        // offset: 0x11b3, bitSize: 0x1
        bool bot_autofill_allies;
        // offset: 0x11b4, bitSize: 0x1
        bool hash_2c55a3723cd9fdf9;
        // offset: 0x11b5, bitSize: 0x1
        bool hash_5c57222bb95a06cb;
        // offset: 0x11b6, bitSize: 0x1
        bool hardcoremode;
        // offset: 0x11b7, bitSize: 0x1
        bool hash_135829cbab367329;
        // offset: 0x11b8, bitSize: 0x1
        bool hash_495b64bd935bf7b;
        // offset: 0x11b9, bitSize: 0x1
        bool useitemspawns;
        // offset: 0x11ba, bitSize: 0x1
        bool hash_77b7734750cd75e9;
        // offset: 0x11bb, bitSize: 0x1
        bool silentplant;
        // offset: 0x11bc, bitSize: 0x1
        bool hash_5711f3e42924a635;
        // offset: 0x11bd, bitSize: 0x1
        bool drafteveryround;
        // offset: 0x11be, bitSize: 0x1
        bool timepauseswheninzone;
        // offset: 0x11bf, bitSize: 0x1
        bool hash_4b55d75b8d779e4;
        // offset: 0x11c0, bitSize: 0x1
        bool hash_549abfbb3665d526;
        // offset: 0x11c1, bitSize: 0x1
        bool scoreperplayer;
        // offset: 0x11c2, bitSize: 0x1
        bool ekiaresetondeath;
        // offset: 0x11c3, bitSize: 0x1
        bool kothmode;
        // offset: 0x11c4, bitSize: 0x1
        bool hash_62665aebde32c8ae;
        // offset: 0x11c5, bitSize: 0x1
        bool hash_18c053cae82c1167;
        // offset: 0x11c6, bitSize: 0x1
        bool hash_6cf5f53d1fbb1066;
        // offset: 0x11c7, bitSize: 0x1
        bool decayprogress;
        // offset: 0x11c8, bitSize: 0x1
        bool playerqueuedrespawn;
        // offset: 0x11c9, bitSize: 0x1
        bool scorestreaksbarebones;
        // offset: 0x11ca, bitSize: 0x1
        bool cumulativeroundscores;
        // offset: 0x11cb, bitSize: 0x1
        bool hash_3ad2212223b76a72;
        // offset: 0x11cc, bitSize: 0x1
        bool voipdeadhearkiller;
        // offset: 0x11cd, bitSize: 0x1
        bool bot_autofill_team10;
        // offset: 0x11ce, bitSize: 0x1
        bool hash_6e6991561babdd7e;
        // offset: 0x11cf, bitSize: 0x1
        bool bot_autofill_axis;
        // offset: 0x11d0, bitSize: 0x1
        bool skiplaststand;
        // offset: 0x11d1, bitSize: 0x1
        bool hash_1f3825ba2a669400;
        // offset: 0x11d2, bitSize: 0x1
        bool usespawngroups;
        // offset: 0x11d3, bitSize: 0x1
        bool hash_b76e50c1202aa23;
        // offset: 0x11d4, bitSize: 0x1
        bool disablethirdpersonspectating;
        // offset: 0x11d5, bitSize: 0x1
        bool platoonassignment;
        // offset: 0x11d6, bitSize: 0x1
        bool hash_7daf08db0c451ad1;
        // offset: 0x11d7, bitSize: 0x1
        bool allowlaststandforactiveclients;
        // offset: 0x11d8, bitSize: 0x1
        bool allowbattlechatter;
        // offset: 0x11d9, bitSize: 0x1
        bool fowrevealenabled;
        // offset: 0x11da, bitSize: 0x1
        bool hash_4e8cafe9a4470898;
        // offset: 0x11db, bitSize: 0x1
        bool hash_7647d0e9a45eeca6;
        // offset: 0x11dc, bitSize: 0x1
        bool hash_3cd7f961322b6b7;
        // offset: 0x11dd, bitSize: 0x1
        bool hash_3293bf384d3c1e2f;
        // offset: 0x11de, bitSize: 0x1
        bool hash_35376812247cdc3;
        // offset: 0x11df, bitSize: 0x1
        bool disablecontracts;
        // offset: 0x11e0, bitSize: 0x1
        bool hash_2b1f40bc711c41f3;
        // offset: 0x11e1, bitSize: 0x1
        bool hash_75d44b1542e3edf9;
        // offset: 0x11e2, bitSize: 0x1
        bool hash_5462586bdce0346e;
        // offset: 0x11e3, bitSize: 0x1
        bool gameobjectscontestedmajoritywins;
        // offset: 0x11e4, bitSize: 0x1
        bool hash_2f0beae14bf17810;
        // offset: 0x11e5, bitSize: 0x1
        bool autoheal;
        // offset: 0x11e6, bitSize: 0x1
        bool allowannouncer;
        // offset: 0x11e7, bitSize: 0x1
        bool disallowaimslowdown;
        // offset: 0x11e8, bitSize: 0x1
        bool hash_435c853b64e3175e;
        // offset: 0x11e9, bitSize: 0x1
        bool hash_5538f8f7758641b4;
        // offset: 0x11ea, bitSize: 0x1
        bool bot_autofill_team3;
        // offset: 0x11eb, bitSize: 0x1
        bool bot_autofill_team4;
        // offset: 0x11ec, bitSize: 0x1
        bool bot_autofill_team5;
        // offset: 0x11ed, bitSize: 0x1
        bool bot_autofill_team6;
        // offset: 0x11ee, bitSize: 0x1
        bool bot_autofill_team7;
        // offset: 0x11ef, bitSize: 0x1
        bool bot_autofill_team8;
        // offset: 0x11f0, bitSize: 0x1
        bool bot_autofill_team9;
        // offset: 0x11f1, bitSize: 0x1
        bool hash_35e6177743dac957;
        // offset: 0x11f2, bitSize: 0x1
        bool hash_14fd184091ff1af;
        // offset: 0x11f3, bitSize: 0x1
        bool vehiclesenabled;
        // offset: 0x11f4, bitSize: 0x1
        bool decaycapturedzones;
        // offset: 0x11f5, bitSize: 0x1
        bool neutralzone;
        // offset: 0x11f6, bitSize: 0x1
        bool boastallowcam;
        // offset: 0x11f7, bitSize: 0x1
        bool hash_7cc354dd83013a47;
        // offset: 0x11f8, bitSize: 0x1
        bool onlyheadshots;
        // offset: 0x11f9, bitSize: 0x1
        bool competitivesettings;
        // offset: 0x11fa, bitSize: 0x1
        bool flagcapturecondition;
        // offset: 0x11fb, bitSize: 0x1
        bool hash_1ca94a3bd057f19f;
        // offset: 0x11fc, bitSize: 0x1
        bool hash_4be46e952d54e9a2;
        // offset: 0x11fd, bitSize: 0x1
        bool hash_1ebf97988141c498;
        // offset: 0x11fe, bitSize: 0x1
        bool hash_25fa292c7fc561b8;
        // offset: 0x11ff, bitSize: 0x1
        bool flagcanbeneutralized;
        // offset: 0x1200, bitSize: 0x1
        bool hash_241e17e13da23de2;
        // offset: 0x1201, bitSize: 0x1
        bool hash_6881c7cab0dcef39;
        // offset: 0x1202, bitSize: 0x1
        bool vehiclestimed;
        // offset: 0x1203, bitSize: 0x1
        bool pregamedraftenabled;
        // offset: 0x1204, bitSize: 0x1
        bool hash_6f03247bbcf52311;
        // offset: 0x1205, bitSize: 0x1
        bool hash_6143c4e1e18f08fd;
        // offset: 0x1206, bitSize: 0x1
        bool teamkillpointloss;
        // offset: 0x1207, bitSize: 0x1
        bool hash_322026c0342869d1;
        // offset: 0x1208, bitSize: 0x1
        bool hash_1e346fbfe02f1294;
        // offset: 0x1209, bitSize: 0x1
        bool hash_3724e6bfee03ce6e;
        // offset: 0x120a, bitSize: 0x1
        bool hash_497a2cbff8af4988;
        // offset: 0x120b, bitSize: 0x1
        bool hash_50776bbffc2b6c6d;
        // offset: 0x120c, bitSize: 0x1
        bool hash_55fc1cb09246fe30;
        // offset: 0x120d, bitSize: 0x1
        bool hash_1d5943e61e65eeae;
        // offset: 0x120e, bitSize: 0x1
        bool hash_656fd3c508d1d33e;
        // offset: 0x120f, bitSize: 0x1
        bool hash_29f3630e8e542a0a;
        // offset: 0x1210, bitSize: 0x1
        bool hash_c6a2e6c3e86125a;
        // offset: 0x1211, bitSize: 0x1
        bool hash_2ebcaa6630ba8fd5;
        // offset: 0x1212, bitSize: 0x1
        bool perksenabled;
        // offset: 0x1213, bitSize: 0x1
        bool hash_33bc6781006ae83d;
        // offset: 0x1214, bitSize: 0x1
        bool hash_655d904d5995891f;
        // offset: 0x1215, bitSize: 0x1
        bool hash_6c21d8e8de53e9c3;
        // offset: 0x1216, bitSize: 0x1
        bool hash_2966662989c3484c;
        // offset: 0x1217, bitSize: 0x1
        bool allowmapscripting;
        // offset: 0x1218, bitSize: 0x1
        bool robotshield;
        // offset: 0x1219, bitSize: 0x1
        bool hash_62e3e33ec68db92f;
        // offset: 0x121a, bitSize: 0x1
        bool hash_2a76bf462f4c2f50;
        // offset: 0x121b, bitSize: 0x1
        bool disableattachments;
        // offset: 0x121c, bitSize: 0x1
        bool disablecompass;
        // offset: 0x121d, bitSize: 0x1
        bool disableweapondrop;
        // offset: 0x121e, bitSize: 0x1
        bool escalationenabled;
        // offset: 0x121f, bitSize: 0x1
        bool hash_a564dde6ee3c657;
        // offset: 0x1220, bitSize: 0x1
        bool hash_7b8284382bffc197;
        // offset: 0x1221, bitSize: 0x1
        bool hash_25368755636c91a4;
        // offset: 0x1222, bitSize: 0x1
        bool disableclassselection;
        // offset: 0x1223, bitSize: 0x1
        bool hash_290721f8deb6ef5e;
        // offset: 0x1224, bitSize: 0x1
        bool hash_48670d9509071424;
        // offset: 0x1225, bitSize: 0x1
        bool autoteambalance;
        // offset: 0x1226, bitSize: 0x1
        bool hash_4bdd1bd86b610871;
        // offset: 0x1227, bitSize: 0x1
        bool hash_69df7093cd32f107;
        // offset: 0x1228, bitSize: 0x1
        bool hash_7c0acf14fb1f4080;
        // offset: 0x1229, bitSize: 0x1
        bool allowplayofthematch;
        // offset: 0x122a, bitSize: 0x1
        bool allowprone;
        // offset: 0x122b, bitSize: 0x1
        bool scoreresetondeath;
        // offset: 0x122c, bitSize: 0x1
        bool hash_452a45e599d3a575;
        // offset: 0x122d, bitSize: 0x1
        bool playerforcerespawn;
        // offset: 0x122e, bitSize: 0x1
        bool hash_7098f146a35b8468;
        // offset: 0x122f, bitSize: 0x1
        bool multibomb;
        // offset: 0x1230, bitSize: 0x1
        bool hash_4dd37bf6da89131;
        // offset: 0x1231, bitSize: 0x1
        bool hash_29fd164e7ff1abb0;
        // offset: 0x1232, bitSize: 0x1
        bool hash_104f124f56f0f20a;
        // offset: 0x1233, bitSize: 0x1
        bool hash_2560dae45cc112e3;
        // offset: 0x1234, bitSize: 0x1
        bool hash_23b110691971b537;
        // offset: 0x1235, bitSize: 0x1
        bool deathcircle;
        // offset: 0x1236, bitSize: 0x1
        bool hash_4669425278875e14;
        // offset: 0x1237, bitSize: 0x1
        bool boastenabled;
        // offset: 0x1238, bitSize: 0x1
        bool hash_3513cf8b4287cdd7;
        // offset: 0x1239, bitSize: 0x1
        bool hash_72a2919d2ac65850;
        // offset: 0x123a, bitSize: 0x1
        bool hash_59272f59f19c342a;
        // offset: 0x123b, bitSize: 0x1
        bool hash_429521a79f75a327;
        // offset: 0x123c, bitSize: 0x1
        bool hash_69f74281cacb8a0f;
        // offset: 0x123d, bitSize: 0x1
        bool hash_5d65f5abcdad24fe;
        // offset: 0x123e, bitSize: 0x1
        bool deathpointloss;
        // offset: 0x123f, bitSize: 0x1
        bool disablecustomcac;
        // offset: 0x1240, bitSize: 0x1
        bool hash_1260b639348098e3;
        // offset: 0x1241, bitSize: 0x1
        bool rebootplayers;
        // offset: 0x1242, bitSize: 0x1
        bool oldschoolmode;
        // offset: 0x1243, bitSize: 0x1
        bool hash_4238acad9fa0f317;
        // offset: 0x1244, bitSize: 0x1
        bool allowfinalkillcam;
        // offset: 0x1245, bitSize: 0x1
        bool allowspectating;
        // offset: 0x1246, bitSize: 0x1
        bool usabledynents;
        // offset: 0x1247, bitSize: 0x1
        bool playintrocinematics;
        // offset: 0x1248, bitSize: 0x1
        bool hash_564289af24e283db;
        // offset: 0x1249, bitSize: 0x1
        bool hash_11e1a0adebdab01a;
        // offset: 0x124a, bitSize: 0x1
        bool hash_47df56af71e4df3;
        // offset: 0x124b, bitSize: 0x1
        bool hash_282689f7ec6d7d32;
        // offset: 0x124c, bitSize: 0x1
        bool hash_4ce6b119f5979182;
        // offset: 0x124d, bitSize: 0x1
        bool spawnselectenabled;
        // offset: 0x124e, bitSize: 0x1
        bool loadoutkillstreaksenabled;
        // offset: 0x124f, bitSize: 0x1
        bool pregameitemvoteenabled;
        // offset: 0x1250, bitSize: 0x1
        bool hash_38d6e4d91bbc82ee;
        // offset: 0x1251, bitSize: 0x1
        bool hash_5684ea266d45be15;
        // offset: 0x1252, bitSize: 0x1
        bool hash_7f273e367f26254;
        // offset: 0x1253, bitSize: 0x1
        bool hash_65c535aa5198d01d;
        // offset: 0x1254, bitSize: 0x1
        bool disallowprone;
        // offset: 0x1255, bitSize: 0x1
        bool hash_3cc3acd830a8eef;
        // offset: 0x1256, bitSize: 0x1
        bool moveplayers;
        // offset: 0x1257, bitSize: 0x1
        bool hash_6945105793e31c56;
        // offset: 0x1258, bitSize: 0x1
        bool disabletacinsert;
        // offset: 0x1259, bitSize: 0x1
        bool voipdeadhearallliving;
        // offset: 0x125a, bitSize: 0x1
        bool hash_4ca06c610b5d53bd;
        // offset: 0x125b, bitSize: 0x1
        bool killstreaksgivegamescore;
        // offset: 0x125c, bitSize: 0x1
        bool hash_1cc3f98086d6f5dd;
        // offset: 0x125d, bitSize: 0x1
        bool flagcapturerateincrease;
        // offset: 0x125e, bitSize: 0x1
        bool use_doors;
        // offset: 0x125f, bitSize: 0x1
        bool pvponly;
        // offset: 0x1260, bitSize: 0x1
        bool forwardspawnteamspecificspawns;
        // offset: 0x1261, bitSize: 0x1
        bool hash_50b56d2635cbb74b;
        // offset: 0x1262, bitSize: 0x1
        bool hash_68fd4f67ea4b4ff8;
        // offset: 0x1263, bitSize: 0x1
        bool forwardspawntakesdamage;
        // offset: 0x1264, bitSize: 0x1
        bool allowingameteamchange;
        // offset: 0x1265, bitSize: 0x1
        bool hash_297b69789a6283b4;
        // offset: 0x1266, bitSize: 0x1
        bool deathzones;
        // offset: 0x1267, bitSize: 0x1
        bool classicmode;
        // offset: 0x1268, bitSize: 0x1
        bool voipdeadhearteamliving;
        // offset: 0x1269, bitSize: 0x1
        bool hash_51f7292117d41790;
        // offset: 0x126a, bitSize: 0x1
        bool capdecay;
        // offset: 0x126b, bitSize: 0x1
        bool hash_7bcb76b8a52c35e;
        // offset: 0x126c, bitSize: 0x1
        bool hash_5c90286f1514c76;
        // offset: 0x126d, bitSize: 0x1
        bool hash_b87383d5497a826;
        // offset: 0x126e, bitSize: 0x1
        bool voipeveryonehearseveryone;
        // offset: 0x126f, bitSize: 0x1
        bool hash_460af55ecefb11f;
        // offset: 0x1270, bitSize: 0x1
        bool hash_4f4a73f236278ba8;
        // offset: 0x1271, bitSize: 0x1
        bool hash_5f76e2d55ad861ed;
        // offset: 0x1272, bitSize: 0x1
        bool laststandfinishing;
        // offset: 0x1273, bitSize: 0x1
        bool hash_201c1769d32b30d3;
    };

    // root: bitSize: 0x1278, members: 1

    // offset: 0x0, bitSize: 0x1278(0x24f Byte(s))
    gametypesettings gametypesettings;
};

version hash_623334e25772d999 {
    // enums ..... 0 (0x0)
    // structs ... 2 (0x2)
    // header bit size .. 4768 (0x12a0)
    // header byte size . 596 (0x254)

    // bitSize: 0x11f0, members: 528
    struct gametypesettings {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> timelimit;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_25740f686a5cfc7e;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        uint:4 playerkillsmax;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_129fca5e3a00477f;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_444634d99df7a661;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperdeath;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:2 forceradar;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkill;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playersprinttime;
        // offset: 0x58, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> capturetime;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleroundswon;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_9fe0e2b1a7f556;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayerdefensive;
        // offset: 0x88, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_35e9fc8eee6881e0;
        // offset: 0x90, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_613785a993624133;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandrevivehealth;
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierdestroytime;
        // offset: 0xc0, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_6024ee628431415;
        // offset: 0xd0, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperweaponkill;
        // offset: 0xd8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_722d8dafb62ce7fe;
        // offset: 0xf0, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_68b825c95acb9218;
        // offset: 0x100, bitSize: 0x8(0x1 Byte(s))
        uint:6 maxteamplayers;
        // offset: 0x108, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandhealth;
        // offset: 0x110, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6b2754246df1bc7c;
        // offset: 0x120, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_46f0ae82f5c2f7d4;
        // offset: 0x130, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> maxusers;
        // offset: 0x140, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_1ca4d65346568642;
        // offset: 0x150, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1d77a77db928f695;
        // offset: 0x160, bitSize: 0x8(0x1 Byte(s))
        uint:4 draftrequiredclients;
        // offset: 0x168, bitSize: 0x8(0x1 Byte(s))
        uint:2 friendlyfiretype;
        // offset: 0x170, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7fee0559953eec6;
        // offset: 0x188, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_28005bb885acabc3;
        // offset: 0x198, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4725de6afe873b87;
        // offset: 0x1a8, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_16184f2fd4014b39;
        // offset: 0x1b0, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspermeleekill;
        // offset: 0x1b8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_51f121252f1d8c7f;
        // offset: 0x1c8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_32da91b78e54e7b5;
        // offset: 0x1d0, bitSize: 0x8(0x1 Byte(s))
        uint:6 preroundperiod;
        // offset: 0x1d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_56f6d77da3124af2;
        // offset: 0x1e8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowertimefactor;
        // offset: 0x1f0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_62a4fd40810cb61;
        // offset: 0x1f8, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_56a31bddd92a64dc;
        // offset: 0x200, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> laststandrevivetime;
        // offset: 0x208, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_429d353f0be087a5;
        // offset: 0x220, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpunishcount;
        // offset: 0x228, bitSize: 0x8(0x1 Byte(s))
        uint:7 maxplayers;
        // offset: 0x230, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53fd9a3e9a0e78e1;
        // offset: 0x240, bitSize: 0x20(0x4 Byte(s))
        int forwardspawnhealth;
        // offset: 0x260, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5598d36d6b224c9a;
        // offset: 0x270, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnteamkilledpenalty;
        // offset: 0x278, bitSize: 0x8(0x1 Byte(s))
        uint:3 ballcount;
        // offset: 0x280, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_6ae29c8144cb7659;
        // offset: 0x288, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c82ffb472a21cac;
        // offset: 0x298, bitSize: 0x8(0x1 Byte(s))
        uint:3 gunselection;
        // offset: 0x2a0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_53c1e74b2d385c17;
        // offset: 0x2b8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_17cc26f74ef911e0;
        // offset: 0x2c0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_67d54bbc52811921;
        // offset: 0x2c8, bitSize: 0x8(0x1 Byte(s))
        fixed<5,2> hash_1614b9cbe0df6f75;
        // offset: 0x2d0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_35104d2d5fd22ce7;
        // offset: 0x2e8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1441f7ad44e1cfd4;
        // offset: 0x2f0, bitSize: 0x8(0x1 Byte(s))
        uint:7 killstreakdeathpenaltyindividualearn;
        // offset: 0x2f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 prematchrequirement;
        // offset: 0x300, bitSize: 0x8(0x1 Byte(s))
        uint:3 spectatetype;
        // offset: 0x308, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> hash_57fe6337297bcce9;
        // offset: 0x310, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_1df445b9d1af641f;
        // offset: 0x318, bitSize: 0x8(0x1 Byte(s))
        uint:2 randomobjectivelocations;
        // offset: 0x320, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_55db4a8546a13c79;
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:5 roundwinlimit;
        // offset: 0x340, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_ecf2124e9108fc4;
        // offset: 0x348, bitSize: 0x10(0x2 Byte(s))
        uint:10 antiboostdistance;
        // offset: 0x358, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_115a3410d9dbf98d;
        // offset: 0x368, bitSize: 0x10(0x2 Byte(s))
        uint:15 roundscorelimit;
        // offset: 0x378, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_320a5028d10f305a;
        // offset: 0x390, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> hash_154db5a1b2e9d757;
        // offset: 0x3a0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> bulletdamagescalar;
        // offset: 0x3a8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1df1e1139a1a4eb8;
        // offset: 0x3c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_79c708d50a12e336;
        // offset: 0x3d0, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostontimeamount;
        // offset: 0x3d8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> defusetime;
        // offset: 0x3e0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> teamkillreducedpenalty;
        // offset: 0x3e8, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxallocation;
        // offset: 0x3f0, bitSize: 0x8(0x1 Byte(s))
        uint:4 carryscore;
        // offset: 0x3f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c8636144ad47ac9;
        // offset: 0x408, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53cd45b387951ca1;
        // offset: 0x418, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_6e49ce7bbe6d3f1f;
        // offset: 0x420, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> killeventscoremultiplier;
        // offset: 0x428, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_2efff808b2701aa5;
        // offset: 0x438, bitSize: 0x8(0x1 Byte(s))
        uint:6 ticketslostontimeinterval;
        // offset: 0x440, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartexplosivedelay;
        // offset: 0x448, bitSize: 0x8(0x1 Byte(s))
        uint:2 cleandepositrotation;
        // offset: 0x450, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_21754b274494502e;
        // offset: 0x460, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_5f7c18fecb2a1a44;
        // offset: 0x470, bitSize: 0x8(0x1 Byte(s))
        uint:7 idleflagresettime;
        // offset: 0x478, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowergainfactor;
        // offset: 0x480, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1f65f0a6f0eb3110;
        // offset: 0x498, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2a02614601829003;
        // offset: 0x4a8, bitSize: 0x8(0x1 Byte(s))
        uint:4 setbacks;
        // offset: 0x4b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1db05f3e34ccaaaf;
        // offset: 0x4c0, bitSize: 0x20(0x4 Byte(s))
        int hash_6b808ab4016cb1e1;
        // offset: 0x4e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1efac5fcdfa4f;
        // offset: 0x4f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1eeac5fcdf89c;
        // offset: 0x500, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f1ac5fcdfdb5;
        // offset: 0x510, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f0ac5fcdfc02;
        // offset: 0x520, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1ebac5fcdf383;
        // offset: 0x530, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_20a83071685f7bd9;
        // offset: 0x548, bitSize: 0x10(0x2 Byte(s))
        fixed<12,4> trm_maxheight;
        // offset: 0x558, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_2b88c6ac064e9c59;
        // offset: 0x560, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayofthematchevents;
        // offset: 0x568, bitSize: 0x10(0x2 Byte(s))
        uint:15 scorelimit;
        // offset: 0x578, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> cratecapturetime;
        // offset: 0x580, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4a6ef8940f4cbb83;
        // offset: 0x588, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eeb8cb5c84b1939;
        // offset: 0x598, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eba3289161fd45f;
        // offset: 0x5a8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_22c53ddb2cb67f13;
        // offset: 0x5b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_9c266bdf9cad7fa;
        // offset: 0x5c8, bitSize: 0x8(0x1 Byte(s))
        uint:3 killpointsinenemyprotectedzone;
        // offset: 0x5d0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6e2b8452b08a545c;
        // offset: 0x5d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 playermaxhealth;
        // offset: 0x5e8, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1833c853bfe78ffc;
        // offset: 0x5f0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_5e8818f69d557ad2;
        // offset: 0x608, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_3e13b420d6773b4c;
        // offset: 0x610, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_718b497c5205e74b;
        // offset: 0x620, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_42b840c668fd2c85;
        // offset: 0x630, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_44f0b1c6b2d3b6f8;
        // offset: 0x640, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5dc620c6c0919d82;
        // offset: 0x650, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2aea36c6a4135574;
        // offset: 0x660, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_32c16dc6a8490e81;
        // offset: 0x670, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_66a7d866327081eb;
        // offset: 0x678, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5f116b8cfbdbc3fe;
        // offset: 0x688, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsforsurvivalbonus;
        // offset: 0x690, bitSize: 0x190(0x32 Byte(s)), array:0x32(hti:0xffff)
        uint:5 maxuniquerolesperteam[50];
        // offset: 0x820, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_7adb62a64c6d963;
        // offset: 0x828, bitSize: 0x8(0x1 Byte(s))
        uint:3 objectivepingtime;
        // offset: 0x830, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_271177b8b4cfcf15;
        // offset: 0x848, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamkillspawndelay;
        // offset: 0x850, bitSize: 0x8(0x1 Byte(s))
        uint:8 carrierarmor;
        // offset: 0x858, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_51a2ab391c340e03;
        // offset: 0x870, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostondeath;
        // offset: 0x878, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_47d4aa0161d78e15;
        // offset: 0x880, bitSize: 0x10(0x2 Byte(s))
        uint:9 carriermovespeed;
        // offset: 0x890, bitSize: 0x8(0x1 Byte(s))
        uint:5 boottime;
        // offset: 0x898, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_652bc8c2577ec788;
        // offset: 0x8a8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_72852fc1d977c3a0;
        // offset: 0x8b8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_314c2f7312bde4af;
        // offset: 0x8c0, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_5d5f4ee35c9977c7;
        // offset: 0x8c8, bitSize: 0x8(0x1 Byte(s))
        uint:2 roundstartfriendlyfiretype;
        // offset: 0x8d0, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagdecaytime;
        // offset: 0x8d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_76f686986e1a58b;
        // offset: 0x8e8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_vs_bots;
        // offset: 0x8f0, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_26b08269156ca0e5;
        // offset: 0x8f8, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamnumlives;
        // offset: 0x900, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> planttime;
        // offset: 0x908, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6141cddd96ac214e;
        // offset: 0x910, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnprotectiontime;
        // offset: 0x918, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7353bbc24d72ec59;
        // offset: 0x928, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_573034b3252cb4e3;
        // offset: 0x940, bitSize: 0x10(0x2 Byte(s))
        uint:10 inactivitykick;
        // offset: 0x950, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspersecondarykill;
        // offset: 0x958, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team3;
        // offset: 0x960, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team4;
        // offset: 0x968, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team5;
        // offset: 0x970, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team6;
        // offset: 0x978, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team7;
        // offset: 0x980, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team8;
        // offset: 0x988, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team9;
        // offset: 0x990, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerhealthregentime;
        // offset: 0x998, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5d40d1f9fb7f;
        // offset: 0x9a8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5c40d1f9f9cc;
        // offset: 0x9b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5f40d1f9fee5;
        // offset: 0x9c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5e40d1f9fd32;
        // offset: 0x9d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5940d1f9f4b3;
        // offset: 0x9e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4f00f3f568c284af;
        // offset: 0x9f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7f190c8839d3f05c;
        // offset: 0xa08, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_3a4691a853585241;
        // offset: 0xa10, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> destroytime;
        // offset: 0xa20, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagrespawntime;
        // offset: 0xa28, bitSize: 0x8(0x1 Byte(s))
        uint:2 shutdowndamage;
        // offset: 0xa30, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> gameadvertisementruletimeleft;
        // offset: 0xa38, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_6a48bbfb703d5c9c;
        // offset: 0xa40, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_239b391c77ebf8c1;
        // offset: 0xa48, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7c33e5bebaf05afb;
        // offset: 0xa58, bitSize: 0x10(0x2 Byte(s))
        uint:11 objectivehealth;
        // offset: 0xa68, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnsuicidepenalty;
        // offset: 0xa70, bitSize: 0x8(0x1 Byte(s))
        uint:2 robotspeed;
        // offset: 0xa78, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_467be34402dad274;
        // offset: 0xa80, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_68e3f54e05f57d85;
        // offset: 0xa88, bitSize: 0x8(0x1 Byte(s))
        uint:7 servermsec;
        // offset: 0xa90, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_410c5c7c1e60b534;
        // offset: 0xa98, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_212cc2b5b360189c;
        // offset: 0xaa0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_552338718ec6d2df;
        // offset: 0xaa8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1c0040943c216593;
        // offset: 0xab0, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxplayereventsperminute;
        // offset: 0xac0, bitSize: 0x10(0x2 Byte(s))
        uint:10 leaderbonus;
        // offset: 0xad0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_5c918cbf75e16116;
        // offset: 0xad8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_51e989796c38cd87;
        // offset: 0xae0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_119bd2704c238e5;
        // offset: 0xaf8, bitSize: 0x8(0x1 Byte(s))
        uint:2 enemycarriervisible;
        // offset: 0xb00, bitSize: 0x10(0x2 Byte(s))
        uint:9 autodestroytime;
        // offset: 0xb10, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkillconfirmed;
        // offset: 0xb18, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4e4352bd1aaeedfe;
        // offset: 0xb20, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_507e1eb7f297d872;
        // offset: 0xb30, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_342835495fca42bb;
        // offset: 0xb40, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7cada6c0936f259b;
        // offset: 0xb50, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> waverespawndelay;
        // offset: 0xb58, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1974892bc7266bab;
        // offset: 0xb68, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_567db38226658dbf;
        // offset: 0xb70, bitSize: 0x8(0x1 Byte(s))
        uint:6 prematchperiod;
        // offset: 0xb78, bitSize: 0x8(0x1 Byte(s))
        uint:6 teamkillscore;
        // offset: 0xb80, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_102aeddad113f70c;
        // offset: 0xb88, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_4635a26c94b56725;
        // offset: 0xb90, bitSize: 0x8(0x1 Byte(s))
        uint:3 platooncount;
        // offset: 0xb98, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierhealth;
        // offset: 0xbb8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_71da377e373bc755;
        // offset: 0xbd0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_38a8f601ab8388d0;
        // offset: 0xbe0, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarykill;
        // offset: 0xbe8, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperheadshot;
        // offset: 0xbf0, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_75ff4383212c5111;
        // offset: 0xc00, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1908ad844e6c3e37;
        // offset: 0xc08, bitSize: 0x8(0x1 Byte(s))
        uint:4 pregameitemmaxvotes;
        // offset: 0xc10, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_50029ecff5e7d383;
        // offset: 0xc20, bitSize: 0x8(0x1 Byte(s))
        uint:7 playernumlives;
        // offset: 0xc28, bitSize: 0x8(0x1 Byte(s))
        uint:2 infectionmode;
        // offset: 0xc30, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleround;
        // offset: 0xc38, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7d53c8bab3db8122;
        // offset: 0xc48, bitSize: 0x8(0x1 Byte(s))
        fixed<7,1> incrementalspawndelay;
        // offset: 0xc50, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_allies;
        // offset: 0xc58, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxsuicidesbeforekick;
        // offset: 0xc60, bitSize: 0x8(0x1 Byte(s))
        uint:7 gameadvertisementrulescorepercent;
        // offset: 0xc68, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_3e76ce42036815cc;
        // offset: 0xc78, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_130d127406ab976e;
        // offset: 0xc88, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_40c4b447a58a7da4;
        // offset: 0xc98, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> hash_47e9736d437be7c8;
        // offset: 0xca0, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1ea82b1edff2a13b;
        // offset: 0xcb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c31c3f19402e1f;
        // offset: 0xcc0, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandtimer;
        // offset: 0xcc8, bitSize: 0x8(0x1 Byte(s))
        uint:6 reboottime;
        // offset: 0xcd0, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscorepercleandeposit;
        // offset: 0xcd8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_2081d79c44b2cefb;
        // offset: 0xcf0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6773166f56896564;
        // offset: 0xd00, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1725e90b73841702;
        // offset: 0xd10, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_273d049136c76afa;
        // offset: 0xd20, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_2849b6cf7317ab1b;
        // offset: 0xd28, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5a4fde688cbf1a01;
        // offset: 0xd38, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c72ac3d026ca4eb;
        // offset: 0xd48, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_83f11b8abac148f;
        // offset: 0xd50, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_22fa97d05461a3e8;
        // offset: 0xd68, bitSize: 0x8(0x1 Byte(s))
        uint:4 pickuptime;
        // offset: 0xd70, bitSize: 0x10(0x2 Byte(s))
        fixed<14,7> hash_451245a24412d90f;
        // offset: 0xd80, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3d5a87878a3bef28;
        // offset: 0xd90, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_552467c143123c1c;
        // offset: 0xd98, bitSize: 0x20(0x4 Byte(s))
        int hash_64727525f5957d06;
        // offset: 0xdb8, bitSize: 0x20(0x4 Byte(s))
        int hash_1f3285ddee84620c;
        // offset: 0xdd8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_2596f9e3d6e26ac9;
        // offset: 0xde0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_3767386c050fa0eb;
        // offset: 0xde8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerrespawndelay;
        // offset: 0xdf0, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_34ee1a1a574eaa4c;
        // offset: 0xe00, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> spawntraptriggertime;
        // offset: 0xe08, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_26ff1d48be83e46c;
        // offset: 0xe20, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayeroffensive;
        // offset: 0xe28, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_527f80b77f20b8c8;
        // offset: 0xe38, bitSize: 0x8(0x1 Byte(s))
        uint:2 allowhitmarkers;
        // offset: 0xe40, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_d8215d30d36fa59;
        // offset: 0xe58, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_67ee1d8d7938baa1;
        // offset: 0xe68, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2c02a63d2c336b30;
        // offset: 0xe78, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxobjectiveeventsperminute;
        // offset: 0xe88, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_47dd11084763c671;
        // offset: 0xe98, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4201d2890785fb14;
        // offset: 0xea8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarygrenadekill;
        // offset: 0xeb0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team10;
        // offset: 0xeb8, bitSize: 0x8(0x1 Byte(s))
        uint:7 bonuslivesforcapturingzone;
        // offset: 0xec0, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_39d008c4c2044bc7;
        // offset: 0xed0, bitSize: 0x8(0x1 Byte(s))
        uint:7 startplayers;
        // offset: 0xed8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_7d590533364efa87;
        // offset: 0xee0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_252e760b41f3d94a;
        // offset: 0xee8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartkillstreakdelay;
        // offset: 0xef0, bitSize: 0x8(0x1 Byte(s))
        uint:5 totalkillsmax;
        // offset: 0xef8, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundswitch;
        // offset: 0xf00, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerobjectiveheldrespawndelay;
        // offset: 0xf08, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpenalty;
        // offset: 0xf10, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_18bdaa4b00863e9d;
        // offset: 0xf18, bitSize: 0x8(0x1 Byte(s))
        uint:5 weaponcount;
        // offset: 0xf20, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1706d4b546538286;
        // offset: 0xf38, bitSize: 0x8(0x1 Byte(s))
        uint:7 weapontimer;
        // offset: 0xf40, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> overtimetimelimit;
        // offset: 0xf50, bitSize: 0x8(0x1 Byte(s))
        uint:7 cleandepositonlinetime;
        // offset: 0xf58, bitSize: 0x8(0x1 Byte(s))
        fixed<7,3> hash_4c7c8c4bd1b2a58b;
        // offset: 0xf60, bitSize: 0x8(0x1 Byte(s))
        uint:7 drafttime;
        // offset: 0xf68, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_ed89addfaaafe48;
        // offset: 0xf70, bitSize: 0x8(0x1 Byte(s))
        uint:7 objectivespawntime;
        // offset: 0xf78, bitSize: 0x8(0x1 Byte(s))
        uint:2 killcammode;
        // offset: 0xf80, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> killcamtime;
        // offset: 0xf90, bitSize: 0x8(0x1 Byte(s))
        uint:4 throwscore;
        // offset: 0xf98, bitSize: 0x8(0x1 Byte(s))
        uint:4 deposittime;
        // offset: 0xfa0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extratime;
        // offset: 0xfb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_54d908d6273c8893;
        // offset: 0xfc0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6269eb986d22cd37;
        // offset: 0xfc8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreequipmentpowertimefactor;
        // offset: 0xfd0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_36ea712d503b054c;
        // offset: 0xfe8, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamcount;
        // offset: 0xff0, bitSize: 0x20(0x4 Byte(s))
        int hash_7f38d88521da4c79;
        // offset: 0x1010, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_24c718cc0c526c38;
        // offset: 0x1018, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundlimit;
        // offset: 0x1020, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_531cc9c63ae86a93;
        // offset: 0x1030, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_b30022a9302a5a6;
        // offset: 0x1040, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_25d72112144c5ea0;
        // offset: 0x1050, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_39cfd81268504039;
        // offset: 0x1060, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_208071125a2b0b0b;
        // offset: 0x1070, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_52ef5b12764c8139;
        // offset: 0x1080, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4bf2241272d06bec;
        // offset: 0x1090, bitSize: 0x8(0x1 Byte(s))
        uint:2 charactercustomization;
        // offset: 0x1098, bitSize: 0x20(0x4 Byte(s))
        int hash_af4ad3316f0ded6;
        // offset: 0x10b8, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_437a986f8d24d7eb;
        // offset: 0x10c0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_16182516e10d0250;
        // offset: 0x10d8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_axis;
        // offset: 0x10e0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7344dfa399020a06;
        // offset: 0x10f8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6e2abf2cc40e03f1;
        // offset: 0x1100, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkilldenied;
        // offset: 0x1108, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> bombtimer;
        // offset: 0x1118, bitSize: 0x1
        bool shownextzoneobjective;
        // offset: 0x1119, bitSize: 0x1
        bool delayplayer;
        // offset: 0x111a, bitSize: 0x1
        bool voipdeadchatwithdead;
        // offset: 0x111b, bitSize: 0x1
        bool voipdeadchatwithteam;
        // offset: 0x111c, bitSize: 0x1
        bool hash_729930c3c52653c3;
        // offset: 0x111d, bitSize: 0x1
        bool useembleminsteadoffactionicon;
        // offset: 0x111e, bitSize: 0x1
        bool draftenabled;
        // offset: 0x111f, bitSize: 0x1
        bool hash_3a15393c2e90e121;
        // offset: 0x1120, bitSize: 0x1
        bool hash_1d708093c2664515;
        // offset: 0x1121, bitSize: 0x1
        bool droppedtagrespawn;
        // offset: 0x1122, bitSize: 0x1
        bool hash_1e71b5ce1cd845b3;
        // offset: 0x1123, bitSize: 0x1
        bool hash_25aaa9a29a90534c;
        // offset: 0x1124, bitSize: 0x1
        bool voipkillershearvictim;
        // offset: 0x1125, bitSize: 0x1
        bool hash_7c0dcff6ffb1e348;
        // offset: 0x1126, bitSize: 0x1
        bool hash_4091f2d0019b1f4a;
        // offset: 0x1127, bitSize: 0x1
        bool deathcirclerespawn;
        // offset: 0x1128, bitSize: 0x1
        bool hash_2683a105198a7407;
        // offset: 0x1129, bitSize: 0x1
        bool presetclassesperteam;
        // offset: 0x112a, bitSize: 0x1
        bool hash_361f7fe066281093;
        // offset: 0x112b, bitSize: 0x1
        bool hash_232892d3b0a6240c;
        // offset: 0x112c, bitSize: 0x1
        bool bot_autofill_allies;
        // offset: 0x112d, bitSize: 0x1
        bool hash_2c55a3723cd9fdf9;
        // offset: 0x112e, bitSize: 0x1
        bool hash_5c57222bb95a06cb;
        // offset: 0x112f, bitSize: 0x1
        bool hardcoremode;
        // offset: 0x1130, bitSize: 0x1
        bool hash_495b64bd935bf7b;
        // offset: 0x1131, bitSize: 0x1
        bool useitemspawns;
        // offset: 0x1132, bitSize: 0x1
        bool hash_77b7734750cd75e9;
        // offset: 0x1133, bitSize: 0x1
        bool silentplant;
        // offset: 0x1134, bitSize: 0x1
        bool hash_5711f3e42924a635;
        // offset: 0x1135, bitSize: 0x1
        bool drafteveryround;
        // offset: 0x1136, bitSize: 0x1
        bool timepauseswheninzone;
        // offset: 0x1137, bitSize: 0x1
        bool hash_4b55d75b8d779e4;
        // offset: 0x1138, bitSize: 0x1
        bool hash_549abfbb3665d526;
        // offset: 0x1139, bitSize: 0x1
        bool scoreperplayer;
        // offset: 0x113a, bitSize: 0x1
        bool ekiaresetondeath;
        // offset: 0x113b, bitSize: 0x1
        bool kothmode;
        // offset: 0x113c, bitSize: 0x1
        bool hash_62665aebde32c8ae;
        // offset: 0x113d, bitSize: 0x1
        bool hash_18c053cae82c1167;
        // offset: 0x113e, bitSize: 0x1
        bool hash_6cf5f53d1fbb1066;
        // offset: 0x113f, bitSize: 0x1
        bool decayprogress;
        // offset: 0x1140, bitSize: 0x1
        bool playerqueuedrespawn;
        // offset: 0x1141, bitSize: 0x1
        bool scorestreaksbarebones;
        // offset: 0x1142, bitSize: 0x1
        bool cumulativeroundscores;
        // offset: 0x1143, bitSize: 0x1
        bool hash_3ad2212223b76a72;
        // offset: 0x1144, bitSize: 0x1
        bool voipdeadhearkiller;
        // offset: 0x1145, bitSize: 0x1
        bool bot_autofill_team10;
        // offset: 0x1146, bitSize: 0x1
        bool hash_6e6991561babdd7e;
        // offset: 0x1147, bitSize: 0x1
        bool bot_autofill_axis;
        // offset: 0x1148, bitSize: 0x1
        bool skiplaststand;
        // offset: 0x1149, bitSize: 0x1
        bool hash_1f3825ba2a669400;
        // offset: 0x114a, bitSize: 0x1
        bool usespawngroups;
        // offset: 0x114b, bitSize: 0x1
        bool hash_b76e50c1202aa23;
        // offset: 0x114c, bitSize: 0x1
        bool disablethirdpersonspectating;
        // offset: 0x114d, bitSize: 0x1
        bool platoonassignment;
        // offset: 0x114e, bitSize: 0x1
        bool allowlaststandforactiveclients;
        // offset: 0x114f, bitSize: 0x1
        bool allowbattlechatter;
        // offset: 0x1150, bitSize: 0x1
        bool fowrevealenabled;
        // offset: 0x1151, bitSize: 0x1
        bool hash_4e8cafe9a4470898;
        // offset: 0x1152, bitSize: 0x1
        bool hash_7647d0e9a45eeca6;
        // offset: 0x1153, bitSize: 0x1
        bool hash_3cd7f961322b6b7;
        // offset: 0x1154, bitSize: 0x1
        bool hash_3293bf384d3c1e2f;
        // offset: 0x1155, bitSize: 0x1
        bool hash_35376812247cdc3;
        // offset: 0x1156, bitSize: 0x1
        bool disablecontracts;
        // offset: 0x1157, bitSize: 0x1
        bool hash_2b1f40bc711c41f3;
        // offset: 0x1158, bitSize: 0x1
        bool hash_75d44b1542e3edf9;
        // offset: 0x1159, bitSize: 0x1
        bool hash_5462586bdce0346e;
        // offset: 0x115a, bitSize: 0x1
        bool gameobjectscontestedmajoritywins;
        // offset: 0x115b, bitSize: 0x1
        bool hash_2f0beae14bf17810;
        // offset: 0x115c, bitSize: 0x1
        bool autoheal;
        // offset: 0x115d, bitSize: 0x1
        bool allowannouncer;
        // offset: 0x115e, bitSize: 0x1
        bool disallowaimslowdown;
        // offset: 0x115f, bitSize: 0x1
        bool hash_435c853b64e3175e;
        // offset: 0x1160, bitSize: 0x1
        bool hash_5538f8f7758641b4;
        // offset: 0x1161, bitSize: 0x1
        bool bot_autofill_team3;
        // offset: 0x1162, bitSize: 0x1
        bool bot_autofill_team4;
        // offset: 0x1163, bitSize: 0x1
        bool bot_autofill_team5;
        // offset: 0x1164, bitSize: 0x1
        bool bot_autofill_team6;
        // offset: 0x1165, bitSize: 0x1
        bool bot_autofill_team7;
        // offset: 0x1166, bitSize: 0x1
        bool bot_autofill_team8;
        // offset: 0x1167, bitSize: 0x1
        bool bot_autofill_team9;
        // offset: 0x1168, bitSize: 0x1
        bool hash_35e6177743dac957;
        // offset: 0x1169, bitSize: 0x1
        bool hash_14fd184091ff1af;
        // offset: 0x116a, bitSize: 0x1
        bool vehiclesenabled;
        // offset: 0x116b, bitSize: 0x1
        bool decaycapturedzones;
        // offset: 0x116c, bitSize: 0x1
        bool neutralzone;
        // offset: 0x116d, bitSize: 0x1
        bool boastallowcam;
        // offset: 0x116e, bitSize: 0x1
        bool hash_7cc354dd83013a47;
        // offset: 0x116f, bitSize: 0x1
        bool onlyheadshots;
        // offset: 0x1170, bitSize: 0x1
        bool competitivesettings;
        // offset: 0x1171, bitSize: 0x1
        bool flagcapturecondition;
        // offset: 0x1172, bitSize: 0x1
        bool hash_1ca94a3bd057f19f;
        // offset: 0x1173, bitSize: 0x1
        bool hash_4be46e952d54e9a2;
        // offset: 0x1174, bitSize: 0x1
        bool hash_1ebf97988141c498;
        // offset: 0x1175, bitSize: 0x1
        bool hash_25fa292c7fc561b8;
        // offset: 0x1176, bitSize: 0x1
        bool flagcanbeneutralized;
        // offset: 0x1177, bitSize: 0x1
        bool hash_241e17e13da23de2;
        // offset: 0x1178, bitSize: 0x1
        bool hash_6881c7cab0dcef39;
        // offset: 0x1179, bitSize: 0x1
        bool vehiclestimed;
        // offset: 0x117a, bitSize: 0x1
        bool pregamedraftenabled;
        // offset: 0x117b, bitSize: 0x1
        bool hash_6f03247bbcf52311;
        // offset: 0x117c, bitSize: 0x1
        bool hash_6143c4e1e18f08fd;
        // offset: 0x117d, bitSize: 0x1
        bool teamkillpointloss;
        // offset: 0x117e, bitSize: 0x1
        bool hash_322026c0342869d1;
        // offset: 0x117f, bitSize: 0x1
        bool hash_1e346fbfe02f1294;
        // offset: 0x1180, bitSize: 0x1
        bool hash_3724e6bfee03ce6e;
        // offset: 0x1181, bitSize: 0x1
        bool hash_497a2cbff8af4988;
        // offset: 0x1182, bitSize: 0x1
        bool hash_50776bbffc2b6c6d;
        // offset: 0x1183, bitSize: 0x1
        bool hash_55fc1cb09246fe30;
        // offset: 0x1184, bitSize: 0x1
        bool hash_1d5943e61e65eeae;
        // offset: 0x1185, bitSize: 0x1
        bool hash_656fd3c508d1d33e;
        // offset: 0x1186, bitSize: 0x1
        bool hash_29f3630e8e542a0a;
        // offset: 0x1187, bitSize: 0x1
        bool hash_c6a2e6c3e86125a;
        // offset: 0x1188, bitSize: 0x1
        bool hash_2ebcaa6630ba8fd5;
        // offset: 0x1189, bitSize: 0x1
        bool perksenabled;
        // offset: 0x118a, bitSize: 0x1
        bool hash_33bc6781006ae83d;
        // offset: 0x118b, bitSize: 0x1
        bool hash_655d904d5995891f;
        // offset: 0x118c, bitSize: 0x1
        bool hash_6c21d8e8de53e9c3;
        // offset: 0x118d, bitSize: 0x1
        bool hash_2966662989c3484c;
        // offset: 0x118e, bitSize: 0x1
        bool allowmapscripting;
        // offset: 0x118f, bitSize: 0x1
        bool robotshield;
        // offset: 0x1190, bitSize: 0x1
        bool hash_62e3e33ec68db92f;
        // offset: 0x1191, bitSize: 0x1
        bool hash_2a76bf462f4c2f50;
        // offset: 0x1192, bitSize: 0x1
        bool disableattachments;
        // offset: 0x1193, bitSize: 0x1
        bool disablecompass;
        // offset: 0x1194, bitSize: 0x1
        bool disableweapondrop;
        // offset: 0x1195, bitSize: 0x1
        bool escalationenabled;
        // offset: 0x1196, bitSize: 0x1
        bool hash_a564dde6ee3c657;
        // offset: 0x1197, bitSize: 0x1
        bool hash_7b8284382bffc197;
        // offset: 0x1198, bitSize: 0x1
        bool hash_25368755636c91a4;
        // offset: 0x1199, bitSize: 0x1
        bool disableclassselection;
        // offset: 0x119a, bitSize: 0x1
        bool hash_290721f8deb6ef5e;
        // offset: 0x119b, bitSize: 0x1
        bool hash_48670d9509071424;
        // offset: 0x119c, bitSize: 0x1
        bool autoteambalance;
        // offset: 0x119d, bitSize: 0x1
        bool hash_4bdd1bd86b610871;
        // offset: 0x119e, bitSize: 0x1
        bool hash_69df7093cd32f107;
        // offset: 0x119f, bitSize: 0x1
        bool hash_7c0acf14fb1f4080;
        // offset: 0x11a0, bitSize: 0x1
        bool allowplayofthematch;
        // offset: 0x11a1, bitSize: 0x1
        bool allowprone;
        // offset: 0x11a2, bitSize: 0x1
        bool scoreresetondeath;
        // offset: 0x11a3, bitSize: 0x1
        bool hash_452a45e599d3a575;
        // offset: 0x11a4, bitSize: 0x1
        bool playerforcerespawn;
        // offset: 0x11a5, bitSize: 0x1
        bool hash_7098f146a35b8468;
        // offset: 0x11a6, bitSize: 0x1
        bool multibomb;
        // offset: 0x11a7, bitSize: 0x1
        bool hash_4dd37bf6da89131;
        // offset: 0x11a8, bitSize: 0x1
        bool hash_29fd164e7ff1abb0;
        // offset: 0x11a9, bitSize: 0x1
        bool hash_104f124f56f0f20a;
        // offset: 0x11aa, bitSize: 0x1
        bool hash_2560dae45cc112e3;
        // offset: 0x11ab, bitSize: 0x1
        bool hash_23b110691971b537;
        // offset: 0x11ac, bitSize: 0x1
        bool deathcircle;
        // offset: 0x11ad, bitSize: 0x1
        bool hash_4669425278875e14;
        // offset: 0x11ae, bitSize: 0x1
        bool boastenabled;
        // offset: 0x11af, bitSize: 0x1
        bool hash_3513cf8b4287cdd7;
        // offset: 0x11b0, bitSize: 0x1
        bool hash_72a2919d2ac65850;
        // offset: 0x11b1, bitSize: 0x1
        bool hash_59272f59f19c342a;
        // offset: 0x11b2, bitSize: 0x1
        bool hash_429521a79f75a327;
        // offset: 0x11b3, bitSize: 0x1
        bool hash_69f74281cacb8a0f;
        // offset: 0x11b4, bitSize: 0x1
        bool hash_5d65f5abcdad24fe;
        // offset: 0x11b5, bitSize: 0x1
        bool deathpointloss;
        // offset: 0x11b6, bitSize: 0x1
        bool disablecustomcac;
        // offset: 0x11b7, bitSize: 0x1
        bool hash_1260b639348098e3;
        // offset: 0x11b8, bitSize: 0x1
        bool rebootplayers;
        // offset: 0x11b9, bitSize: 0x1
        bool oldschoolmode;
        // offset: 0x11ba, bitSize: 0x1
        bool hash_4238acad9fa0f317;
        // offset: 0x11bb, bitSize: 0x1
        bool allowfinalkillcam;
        // offset: 0x11bc, bitSize: 0x1
        bool allowspectating;
        // offset: 0x11bd, bitSize: 0x1
        bool usabledynents;
        // offset: 0x11be, bitSize: 0x1
        bool hash_564289af24e283db;
        // offset: 0x11bf, bitSize: 0x1
        bool hash_11e1a0adebdab01a;
        // offset: 0x11c0, bitSize: 0x1
        bool hash_47df56af71e4df3;
        // offset: 0x11c1, bitSize: 0x1
        bool hash_282689f7ec6d7d32;
        // offset: 0x11c2, bitSize: 0x1
        bool hash_4ce6b119f5979182;
        // offset: 0x11c3, bitSize: 0x1
        bool spawnselectenabled;
        // offset: 0x11c4, bitSize: 0x1
        bool loadoutkillstreaksenabled;
        // offset: 0x11c5, bitSize: 0x1
        bool pregameitemvoteenabled;
        // offset: 0x11c6, bitSize: 0x1
        bool hash_5684ea266d45be15;
        // offset: 0x11c7, bitSize: 0x1
        bool hash_7f273e367f26254;
        // offset: 0x11c8, bitSize: 0x1
        bool hash_65c535aa5198d01d;
        // offset: 0x11c9, bitSize: 0x1
        bool disallowprone;
        // offset: 0x11ca, bitSize: 0x1
        bool hash_3cc3acd830a8eef;
        // offset: 0x11cb, bitSize: 0x1
        bool moveplayers;
        // offset: 0x11cc, bitSize: 0x1
        bool hash_6945105793e31c56;
        // offset: 0x11cd, bitSize: 0x1
        bool disabletacinsert;
        // offset: 0x11ce, bitSize: 0x1
        bool voipdeadhearallliving;
        // offset: 0x11cf, bitSize: 0x1
        bool hash_4ca06c610b5d53bd;
        // offset: 0x11d0, bitSize: 0x1
        bool killstreaksgivegamescore;
        // offset: 0x11d1, bitSize: 0x1
        bool hash_1cc3f98086d6f5dd;
        // offset: 0x11d2, bitSize: 0x1
        bool flagcapturerateincrease;
        // offset: 0x11d3, bitSize: 0x1
        bool use_doors;
        // offset: 0x11d4, bitSize: 0x1
        bool pvponly;
        // offset: 0x11d5, bitSize: 0x1
        bool forwardspawnteamspecificspawns;
        // offset: 0x11d6, bitSize: 0x1
        bool hash_50b56d2635cbb74b;
        // offset: 0x11d7, bitSize: 0x1
        bool hash_68fd4f67ea4b4ff8;
        // offset: 0x11d8, bitSize: 0x1
        bool forwardspawntakesdamage;
        // offset: 0x11d9, bitSize: 0x1
        bool allowingameteamchange;
        // offset: 0x11da, bitSize: 0x1
        bool hash_297b69789a6283b4;
        // offset: 0x11db, bitSize: 0x1
        bool deathzones;
        // offset: 0x11dc, bitSize: 0x1
        bool classicmode;
        // offset: 0x11dd, bitSize: 0x1
        bool voipdeadhearteamliving;
        // offset: 0x11de, bitSize: 0x1
        bool hash_51f7292117d41790;
        // offset: 0x11df, bitSize: 0x1
        bool capdecay;
        // offset: 0x11e0, bitSize: 0x1
        bool hash_7bcb76b8a52c35e;
        // offset: 0x11e1, bitSize: 0x1
        bool hash_5c90286f1514c76;
        // offset: 0x11e2, bitSize: 0x1
        bool hash_b87383d5497a826;
        // offset: 0x11e3, bitSize: 0x1
        bool voipeveryonehearseveryone;
        // offset: 0x11e4, bitSize: 0x1
        bool hash_460af55ecefb11f;
        // offset: 0x11e5, bitSize: 0x1
        bool hash_4f4a73f236278ba8;
        // offset: 0x11e6, bitSize: 0x1
        bool hash_5f76e2d55ad861ed;
        // offset: 0x11e7, bitSize: 0x1
        bool laststandfinishing;
        // offset: 0x11e8, bitSize: 0x1
        bool hash_201c1769d32b30d3;
    };

    // root: bitSize: 0x11f0, members: 1

    // offset: 0x0, bitSize: 0x11f0(0x23e Byte(s))
    gametypesettings gametypesettings;
};

version hash_cbbab60fa08a69ce {
    // enums ..... 0 (0x0)
    // structs ... 2 (0x2)
    // header bit size .. 4920 (0x1338)
    // header byte size . 615 (0x267)

    // bitSize: 0x1288, members: 550
    struct gametypesettings {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> timelimit;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_25740f686a5cfc7e;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        uint:4 playerkillsmax;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_129fca5e3a00477f;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_444634d99df7a661;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperdeath;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:2 forceradar;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkill;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playersprinttime;
        // offset: 0x58, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> capturetime;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleroundswon;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_9fe0e2b1a7f556;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayerdefensive;
        // offset: 0x88, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_35e9fc8eee6881e0;
        // offset: 0x90, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_613785a993624133;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandrevivehealth;
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierdestroytime;
        // offset: 0xc0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostattackhelicopter;
        // offset: 0xc8, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_6024ee628431415;
        // offset: 0xd8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostbow;
        // offset: 0xe0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostuav;
        // offset: 0xe8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperweaponkill;
        // offset: 0xf0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_722d8dafb62ce7fe;
        // offset: 0x108, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_68b825c95acb9218;
        // offset: 0x118, bitSize: 0x8(0x1 Byte(s))
        uint:6 maxteamplayers;
        // offset: 0x120, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandhealth;
        // offset: 0x128, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6b2754246df1bc7c;
        // offset: 0x138, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_46f0ae82f5c2f7d4;
        // offset: 0x148, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> maxusers;
        // offset: 0x158, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_1ca4d65346568642;
        // offset: 0x168, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1d77a77db928f695;
        // offset: 0x178, bitSize: 0x8(0x1 Byte(s))
        uint:4 draftrequiredclients;
        // offset: 0x180, bitSize: 0x8(0x1 Byte(s))
        uint:3 friendlyfiretype;
        // offset: 0x188, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7fee0559953eec6;
        // offset: 0x1a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_28005bb885acabc3;
        // offset: 0x1b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4725de6afe873b87;
        // offset: 0x1c0, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_16184f2fd4014b39;
        // offset: 0x1c8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspermeleekill;
        // offset: 0x1d0, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_51f121252f1d8c7f;
        // offset: 0x1e0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_32da91b78e54e7b5;
        // offset: 0x1e8, bitSize: 0x8(0x1 Byte(s))
        uint:6 preroundperiod;
        // offset: 0x1f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_56f6d77da3124af2;
        // offset: 0x200, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowertimefactor;
        // offset: 0x208, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_62a4fd40810cb61;
        // offset: 0x210, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_56a31bddd92a64dc;
        // offset: 0x218, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> laststandrevivetime;
        // offset: 0x220, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_429d353f0be087a5;
        // offset: 0x238, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpunishcount;
        // offset: 0x240, bitSize: 0x8(0x1 Byte(s))
        uint:7 maxplayers;
        // offset: 0x248, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53fd9a3e9a0e78e1;
        // offset: 0x258, bitSize: 0x20(0x4 Byte(s))
        int forwardspawnhealth;
        // offset: 0x278, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5598d36d6b224c9a;
        // offset: 0x288, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnteamkilledpenalty;
        // offset: 0x290, bitSize: 0x8(0x1 Byte(s))
        uint:3 ballcount;
        // offset: 0x298, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_6ae29c8144cb7659;
        // offset: 0x2a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c82ffb472a21cac;
        // offset: 0x2b0, bitSize: 0x8(0x1 Byte(s))
        uint:3 gunselection;
        // offset: 0x2b8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_53c1e74b2d385c17;
        // offset: 0x2d0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_17cc26f74ef911e0;
        // offset: 0x2d8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_67d54bbc52811921;
        // offset: 0x2e0, bitSize: 0x8(0x1 Byte(s))
        fixed<5,2> hash_1614b9cbe0df6f75;
        // offset: 0x2e8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_35104d2d5fd22ce7;
        // offset: 0x300, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1441f7ad44e1cfd4;
        // offset: 0x308, bitSize: 0x8(0x1 Byte(s))
        uint:7 killstreakdeathpenaltyindividualearn;
        // offset: 0x310, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_c0beb1e5a80c25c;
        // offset: 0x318, bitSize: 0x8(0x1 Byte(s))
        uint:5 prematchrequirement;
        // offset: 0x320, bitSize: 0x8(0x1 Byte(s))
        uint:3 spectatetype;
        // offset: 0x328, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> hash_57fe6337297bcce9;
        // offset: 0x330, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_1df445b9d1af641f;
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:2 randomobjectivelocations;
        // offset: 0x340, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_55db4a8546a13c79;
        // offset: 0x358, bitSize: 0x8(0x1 Byte(s))
        uint:5 roundwinlimit;
        // offset: 0x360, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_ecf2124e9108fc4;
        // offset: 0x368, bitSize: 0x10(0x2 Byte(s))
        uint:10 antiboostdistance;
        // offset: 0x378, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_115a3410d9dbf98d;
        // offset: 0x388, bitSize: 0x10(0x2 Byte(s))
        uint:15 roundscorelimit;
        // offset: 0x398, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_320a5028d10f305a;
        // offset: 0x3b0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> hash_154db5a1b2e9d757;
        // offset: 0x3c0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> bulletdamagescalar;
        // offset: 0x3c8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1df1e1139a1a4eb8;
        // offset: 0x3e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_79c708d50a12e336;
        // offset: 0x3f0, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostontimeamount;
        // offset: 0x3f8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> defusetime;
        // offset: 0x400, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> teamkillreducedpenalty;
        // offset: 0x408, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxallocation;
        // offset: 0x410, bitSize: 0x8(0x1 Byte(s))
        uint:4 carryscore;
        // offset: 0x418, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c8636144ad47ac9;
        // offset: 0x428, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53cd45b387951ca1;
        // offset: 0x438, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_6e49ce7bbe6d3f1f;
        // offset: 0x440, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> killeventscoremultiplier;
        // offset: 0x448, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_2efff808b2701aa5;
        // offset: 0x458, bitSize: 0x8(0x1 Byte(s))
        uint:6 ticketslostontimeinterval;
        // offset: 0x460, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartexplosivedelay;
        // offset: 0x468, bitSize: 0x8(0x1 Byte(s))
        uint:2 cleandepositrotation;
        // offset: 0x470, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_21754b274494502e;
        // offset: 0x480, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_5f7c18fecb2a1a44;
        // offset: 0x490, bitSize: 0x8(0x1 Byte(s))
        uint:7 idleflagresettime;
        // offset: 0x498, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowergainfactor;
        // offset: 0x4a0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1f65f0a6f0eb3110;
        // offset: 0x4b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2a02614601829003;
        // offset: 0x4c8, bitSize: 0x8(0x1 Byte(s))
        uint:4 setbacks;
        // offset: 0x4d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1db05f3e34ccaaaf;
        // offset: 0x4e0, bitSize: 0x20(0x4 Byte(s))
        int hash_6b808ab4016cb1e1;
        // offset: 0x500, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1efac5fcdfa4f;
        // offset: 0x510, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1eeac5fcdf89c;
        // offset: 0x520, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f1ac5fcdfdb5;
        // offset: 0x530, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f0ac5fcdfc02;
        // offset: 0x540, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1ebac5fcdf383;
        // offset: 0x550, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_20a83071685f7bd9;
        // offset: 0x568, bitSize: 0x10(0x2 Byte(s))
        fixed<12,4> trm_maxheight;
        // offset: 0x578, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_2b88c6ac064e9c59;
        // offset: 0x580, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayofthematchevents;
        // offset: 0x588, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostwarmachine;
        // offset: 0x590, bitSize: 0x10(0x2 Byte(s))
        uint:15 scorelimit;
        // offset: 0x5a0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> cratecapturetime;
        // offset: 0x5a8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4a6ef8940f4cbb83;
        // offset: 0x5b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eeb8cb5c84b1939;
        // offset: 0x5c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eba3289161fd45f;
        // offset: 0x5d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_22c53ddb2cb67f13;
        // offset: 0x5e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_9c266bdf9cad7fa;
        // offset: 0x5f0, bitSize: 0x8(0x1 Byte(s))
        uint:3 killpointsinenemyprotectedzone;
        // offset: 0x5f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6e2b8452b08a545c;
        // offset: 0x600, bitSize: 0x10(0x2 Byte(s))
        uint:10 playermaxhealth;
        // offset: 0x610, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1833c853bfe78ffc;
        // offset: 0x618, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_5e8818f69d557ad2;
        // offset: 0x630, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_3e13b420d6773b4c;
        // offset: 0x638, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_718b497c5205e74b;
        // offset: 0x648, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostgunship;
        // offset: 0x650, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_42b840c668fd2c85;
        // offset: 0x660, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_44f0b1c6b2d3b6f8;
        // offset: 0x670, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5dc620c6c0919d82;
        // offset: 0x680, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2aea36c6a4135574;
        // offset: 0x690, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_32c16dc6a8490e81;
        // offset: 0x6a0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_66a7d866327081eb;
        // offset: 0x6a8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5f116b8cfbdbc3fe;
        // offset: 0x6b8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsforsurvivalbonus;
        // offset: 0x6c0, bitSize: 0x190(0x32 Byte(s)), array:0x32(hti:0xffff)
        uint:5 maxuniquerolesperteam[50];
        // offset: 0x850, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_7adb62a64c6d963;
        // offset: 0x858, bitSize: 0x8(0x1 Byte(s))
        uint:3 objectivepingtime;
        // offset: 0x860, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_271177b8b4cfcf15;
        // offset: 0x878, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamkillspawndelay;
        // offset: 0x880, bitSize: 0x8(0x1 Byte(s))
        uint:8 carrierarmor;
        // offset: 0x888, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_51a2ab391c340e03;
        // offset: 0x8a0, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostondeath;
        // offset: 0x8a8, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_47d4aa0161d78e15;
        // offset: 0x8b0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostremotemissile;
        // offset: 0x8b8, bitSize: 0x10(0x2 Byte(s))
        uint:9 carriermovespeed;
        // offset: 0x8c8, bitSize: 0x8(0x1 Byte(s))
        uint:5 boottime;
        // offset: 0x8d0, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_652bc8c2577ec788;
        // offset: 0x8e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_72852fc1d977c3a0;
        // offset: 0x8f0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_314c2f7312bde4af;
        // offset: 0x8f8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_5d5f4ee35c9977c7;
        // offset: 0x900, bitSize: 0x8(0x1 Byte(s))
        uint:3 roundstartfriendlyfiretype;
        // offset: 0x908, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagdecaytime;
        // offset: 0x910, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_76f686986e1a58b;
        // offset: 0x920, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_vs_bots;
        // offset: 0x928, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_26b08269156ca0e5;
        // offset: 0x930, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamnumlives;
        // offset: 0x938, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> planttime;
        // offset: 0x940, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6141cddd96ac214e;
        // offset: 0x948, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnprotectiontime;
        // offset: 0x950, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7353bbc24d72ec59;
        // offset: 0x960, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_573034b3252cb4e3;
        // offset: 0x978, bitSize: 0x10(0x2 Byte(s))
        uint:10 inactivitykick;
        // offset: 0x988, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspersecondarykill;
        // offset: 0x990, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team3;
        // offset: 0x998, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team4;
        // offset: 0x9a0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team5;
        // offset: 0x9a8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team6;
        // offset: 0x9b0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team7;
        // offset: 0x9b8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team8;
        // offset: 0x9c0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team9;
        // offset: 0x9c8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerhealthregentime;
        // offset: 0x9d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5d40d1f9fb7f;
        // offset: 0x9e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5c40d1f9f9cc;
        // offset: 0x9f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5f40d1f9fee5;
        // offset: 0xa00, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5e40d1f9fd32;
        // offset: 0xa10, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5940d1f9f4b3;
        // offset: 0xa20, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4f00f3f568c284af;
        // offset: 0xa30, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7f190c8839d3f05c;
        // offset: 0xa40, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_3a4691a853585241;
        // offset: 0xa48, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> destroytime;
        // offset: 0xa58, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagrespawntime;
        // offset: 0xa60, bitSize: 0x8(0x1 Byte(s))
        uint:2 shutdowndamage;
        // offset: 0xa68, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> gameadvertisementruletimeleft;
        // offset: 0xa70, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_6a48bbfb703d5c9c;
        // offset: 0xa78, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_239b391c77ebf8c1;
        // offset: 0xa80, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7c33e5bebaf05afb;
        // offset: 0xa90, bitSize: 0x10(0x2 Byte(s))
        uint:11 objectivehealth;
        // offset: 0xaa0, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnsuicidepenalty;
        // offset: 0xaa8, bitSize: 0x8(0x1 Byte(s))
        uint:2 robotspeed;
        // offset: 0xab0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_467be34402dad274;
        // offset: 0xab8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_68e3f54e05f57d85;
        // offset: 0xac0, bitSize: 0x8(0x1 Byte(s))
        uint:7 servermsec;
        // offset: 0xac8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_410c5c7c1e60b534;
        // offset: 0xad0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_212cc2b5b360189c;
        // offset: 0xad8, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_552338718ec6d2df;
        // offset: 0xae0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1c0040943c216593;
        // offset: 0xae8, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxplayereventsperminute;
        // offset: 0xaf8, bitSize: 0x10(0x2 Byte(s))
        uint:10 leaderbonus;
        // offset: 0xb08, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_5c918cbf75e16116;
        // offset: 0xb10, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_51e989796c38cd87;
        // offset: 0xb18, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostnapalm;
        // offset: 0xb20, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_119bd2704c238e5;
        // offset: 0xb38, bitSize: 0x8(0x1 Byte(s))
        uint:2 enemycarriervisible;
        // offset: 0xb40, bitSize: 0x10(0x2 Byte(s))
        uint:9 autodestroytime;
        // offset: 0xb50, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkillconfirmed;
        // offset: 0xb58, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4e4352bd1aaeedfe;
        // offset: 0xb60, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_507e1eb7f297d872;
        // offset: 0xb70, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_342835495fca42bb;
        // offset: 0xb80, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7cada6c0936f259b;
        // offset: 0xb90, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> waverespawndelay;
        // offset: 0xb98, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1974892bc7266bab;
        // offset: 0xba8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_567db38226658dbf;
        // offset: 0xbb0, bitSize: 0x8(0x1 Byte(s))
        uint:6 prematchperiod;
        // offset: 0xbb8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostsentry;
        // offset: 0xbc0, bitSize: 0x8(0x1 Byte(s))
        uint:6 teamkillscore;
        // offset: 0xbc8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_102aeddad113f70c;
        // offset: 0xbd0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_4635a26c94b56725;
        // offset: 0xbd8, bitSize: 0x8(0x1 Byte(s))
        uint:3 platooncount;
        // offset: 0xbe0, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierhealth;
        // offset: 0xc00, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_71da377e373bc755;
        // offset: 0xc18, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_38a8f601ab8388d0;
        // offset: 0xc28, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarykill;
        // offset: 0xc30, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperheadshot;
        // offset: 0xc38, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_75ff4383212c5111;
        // offset: 0xc48, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1908ad844e6c3e37;
        // offset: 0xc50, bitSize: 0x8(0x1 Byte(s))
        uint:4 pregameitemmaxvotes;
        // offset: 0xc58, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_50029ecff5e7d383;
        // offset: 0xc68, bitSize: 0x8(0x1 Byte(s))
        uint:7 playernumlives;
        // offset: 0xc70, bitSize: 0x8(0x1 Byte(s))
        uint:2 infectionmode;
        // offset: 0xc78, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleround;
        // offset: 0xc80, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7d53c8bab3db8122;
        // offset: 0xc90, bitSize: 0x8(0x1 Byte(s))
        fixed<7,1> incrementalspawndelay;
        // offset: 0xc98, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_allies;
        // offset: 0xca0, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxsuicidesbeforekick;
        // offset: 0xca8, bitSize: 0x8(0x1 Byte(s))
        uint:7 gameadvertisementrulescorepercent;
        // offset: 0xcb0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_3e76ce42036815cc;
        // offset: 0xcc0, bitSize: 0x10(0x2 Byte(s))
        int:10 hash_3ccd8e1bf3864fa1;
        // offset: 0xcd0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_130d127406ab976e;
        // offset: 0xce0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostairpatrol;
        // offset: 0xce8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostcuav;
        // offset: 0xcf0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostrcxd;
        // offset: 0xcf8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostvtol;
        // offset: 0xd00, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_40c4b447a58a7da4;
        // offset: 0xd10, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> hash_47e9736d437be7c8;
        // offset: 0xd18, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1ea82b1edff2a13b;
        // offset: 0xd28, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c31c3f19402e1f;
        // offset: 0xd38, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandtimer;
        // offset: 0xd40, bitSize: 0x8(0x1 Byte(s))
        uint:6 reboottime;
        // offset: 0xd48, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscorepercleandeposit;
        // offset: 0xd50, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_2081d79c44b2cefb;
        // offset: 0xd68, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6773166f56896564;
        // offset: 0xd78, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1725e90b73841702;
        // offset: 0xd88, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_273d049136c76afa;
        // offset: 0xd98, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_2849b6cf7317ab1b;
        // offset: 0xda0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5a4fde688cbf1a01;
        // offset: 0xdb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c72ac3d026ca4eb;
        // offset: 0xdc0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_83f11b8abac148f;
        // offset: 0xdc8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_22fa97d05461a3e8;
        // offset: 0xde0, bitSize: 0x8(0x1 Byte(s))
        uint:4 pickuptime;
        // offset: 0xde8, bitSize: 0x10(0x2 Byte(s))
        fixed<14,7> hash_451245a24412d90f;
        // offset: 0xdf8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3d5a87878a3bef28;
        // offset: 0xe08, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_552467c143123c1c;
        // offset: 0xe10, bitSize: 0x20(0x4 Byte(s))
        int hash_64727525f5957d06;
        // offset: 0xe30, bitSize: 0x20(0x4 Byte(s))
        int hash_1f3285ddee84620c;
        // offset: 0xe50, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_2596f9e3d6e26ac9;
        // offset: 0xe58, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostchoppergunner;
        // offset: 0xe60, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_3767386c050fa0eb;
        // offset: 0xe68, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerrespawndelay;
        // offset: 0xe70, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_34ee1a1a574eaa4c;
        // offset: 0xe80, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> spawntraptriggertime;
        // offset: 0xe88, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_26ff1d48be83e46c;
        // offset: 0xea0, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayeroffensive;
        // offset: 0xea8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_527f80b77f20b8c8;
        // offset: 0xeb8, bitSize: 0x8(0x1 Byte(s))
        uint:2 allowhitmarkers;
        // offset: 0xec0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_d8215d30d36fa59;
        // offset: 0xed8, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_67ee1d8d7938baa1;
        // offset: 0xee8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2c02a63d2c336b30;
        // offset: 0xef8, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxobjectiveeventsperminute;
        // offset: 0xf08, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_47dd11084763c671;
        // offset: 0xf18, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4201d2890785fb14;
        // offset: 0xf28, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarygrenadekill;
        // offset: 0xf30, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team10;
        // offset: 0xf38, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostcarepackage;
        // offset: 0xf40, bitSize: 0x8(0x1 Byte(s))
        uint:7 bonuslivesforcapturingzone;
        // offset: 0xf48, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_39d008c4c2044bc7;
        // offset: 0xf58, bitSize: 0x8(0x1 Byte(s))
        uint:7 startplayers;
        // offset: 0xf60, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_7d590533364efa87;
        // offset: 0xf68, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_252e760b41f3d94a;
        // offset: 0xf70, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartkillstreakdelay;
        // offset: 0xf78, bitSize: 0x8(0x1 Byte(s))
        uint:5 totalkillsmax;
        // offset: 0xf80, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundswitch;
        // offset: 0xf88, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerobjectiveheldrespawndelay;
        // offset: 0xf90, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpenalty;
        // offset: 0xf98, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_18bdaa4b00863e9d;
        // offset: 0xfa0, bitSize: 0x8(0x1 Byte(s))
        uint:5 weaponcount;
        // offset: 0xfa8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1706d4b546538286;
        // offset: 0xfc0, bitSize: 0x8(0x1 Byte(s))
        uint:7 weapontimer;
        // offset: 0xfc8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> overtimetimelimit;
        // offset: 0xfd8, bitSize: 0x8(0x1 Byte(s))
        uint:7 cleandepositonlinetime;
        // offset: 0xfe0, bitSize: 0x8(0x1 Byte(s))
        fixed<7,3> hash_4c7c8c4bd1b2a58b;
        // offset: 0xfe8, bitSize: 0x8(0x1 Byte(s))
        uint:7 drafttime;
        // offset: 0xff0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_ed89addfaaafe48;
        // offset: 0xff8, bitSize: 0x8(0x1 Byte(s))
        uint:7 objectivespawntime;
        // offset: 0x1000, bitSize: 0x8(0x1 Byte(s))
        uint:2 killcammode;
        // offset: 0x1008, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> killcamtime;
        // offset: 0x1018, bitSize: 0x8(0x1 Byte(s))
        uint:4 throwscore;
        // offset: 0x1020, bitSize: 0x8(0x1 Byte(s))
        uint:4 deposittime;
        // offset: 0x1028, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extratime;
        // offset: 0x1038, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_54d908d6273c8893;
        // offset: 0x1048, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6269eb986d22cd37;
        // offset: 0x1050, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreequipmentpowertimefactor;
        // offset: 0x1058, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostarmor;
        // offset: 0x1060, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_36ea712d503b054c;
        // offset: 0x1078, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamcount;
        // offset: 0x1080, bitSize: 0x20(0x4 Byte(s))
        int hash_7f38d88521da4c79;
        // offset: 0x10a0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_24c718cc0c526c38;
        // offset: 0x10a8, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundlimit;
        // offset: 0x10b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_531cc9c63ae86a93;
        // offset: 0x10c0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostartillery;
        // offset: 0x10c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_b30022a9302a5a6;
        // offset: 0x10d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_25d72112144c5ea0;
        // offset: 0x10e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_39cfd81268504039;
        // offset: 0x10f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_208071125a2b0b0b;
        // offset: 0x1108, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_52ef5b12764c8139;
        // offset: 0x1118, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4bf2241272d06bec;
        // offset: 0x1128, bitSize: 0x8(0x1 Byte(s))
        uint:2 charactercustomization;
        // offset: 0x1130, bitSize: 0x20(0x4 Byte(s))
        int hash_af4ad3316f0ded6;
        // offset: 0x1150, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_437a986f8d24d7eb;
        // offset: 0x1158, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_16182516e10d0250;
        // offset: 0x1170, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_axis;
        // offset: 0x1178, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7344dfa399020a06;
        // offset: 0x1190, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6e2abf2cc40e03f1;
        // offset: 0x1198, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkilldenied;
        // offset: 0x11a0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> bombtimer;
        // offset: 0x11b0, bitSize: 0x1
        bool delayplayer;
        // offset: 0x11b1, bitSize: 0x1
        bool hash_196e997a082443a9;
        // offset: 0x11b2, bitSize: 0x1
        bool voipdeadchatwithdead;
        // offset: 0x11b3, bitSize: 0x1
        bool voipdeadchatwithteam;
        // offset: 0x11b4, bitSize: 0x1
        bool hash_729930c3c52653c3;
        // offset: 0x11b5, bitSize: 0x1
        bool useembleminsteadoffactionicon;
        // offset: 0x11b6, bitSize: 0x1
        bool draftenabled;
        // offset: 0x11b7, bitSize: 0x1
        bool hash_3a15393c2e90e121;
        // offset: 0x11b8, bitSize: 0x1
        bool hash_1d708093c2664515;
        // offset: 0x11b9, bitSize: 0x1
        bool droppedtagrespawn;
        // offset: 0x11ba, bitSize: 0x1
        bool hash_1e71b5ce1cd845b3;
        // offset: 0x11bb, bitSize: 0x1
        bool hash_25aaa9a29a90534c;
        // offset: 0x11bc, bitSize: 0x1
        bool voipkillershearvictim;
        // offset: 0x11bd, bitSize: 0x1
        bool hash_7c0dcff6ffb1e348;
        // offset: 0x11be, bitSize: 0x1
        bool hash_4091f2d0019b1f4a;
        // offset: 0x11bf, bitSize: 0x1
        bool deathcirclerespawn;
        // offset: 0x11c0, bitSize: 0x1
        bool hash_2683a105198a7407;
        // offset: 0x11c1, bitSize: 0x1
        bool presetclassesperteam;
        // offset: 0x11c2, bitSize: 0x1
        bool hash_361f7fe066281093;
        // offset: 0x11c3, bitSize: 0x1
        bool hash_232892d3b0a6240c;
        // offset: 0x11c4, bitSize: 0x1
        bool bot_autofill_allies;
        // offset: 0x11c5, bitSize: 0x1
        bool hash_2c55a3723cd9fdf9;
        // offset: 0x11c6, bitSize: 0x1
        bool hash_5c57222bb95a06cb;
        // offset: 0x11c7, bitSize: 0x1
        bool hardcoremode;
        // offset: 0x11c8, bitSize: 0x1
        bool hash_135829cbab367329;
        // offset: 0x11c9, bitSize: 0x1
        bool hash_495b64bd935bf7b;
        // offset: 0x11ca, bitSize: 0x1
        bool useitemspawns;
        // offset: 0x11cb, bitSize: 0x1
        bool hash_77b7734750cd75e9;
        // offset: 0x11cc, bitSize: 0x1
        bool silentplant;
        // offset: 0x11cd, bitSize: 0x1
        bool hash_5711f3e42924a635;
        // offset: 0x11ce, bitSize: 0x1
        bool drafteveryround;
        // offset: 0x11cf, bitSize: 0x1
        bool timepauseswheninzone;
        // offset: 0x11d0, bitSize: 0x1
        bool hash_4b55d75b8d779e4;
        // offset: 0x11d1, bitSize: 0x1
        bool hash_549abfbb3665d526;
        // offset: 0x11d2, bitSize: 0x1
        bool scoreperplayer;
        // offset: 0x11d3, bitSize: 0x1
        bool ekiaresetondeath;
        // offset: 0x11d4, bitSize: 0x1
        bool kothmode;
        // offset: 0x11d5, bitSize: 0x1
        bool hash_62665aebde32c8ae;
        // offset: 0x11d6, bitSize: 0x1
        bool hash_18c053cae82c1167;
        // offset: 0x11d7, bitSize: 0x1
        bool hash_6cf5f53d1fbb1066;
        // offset: 0x11d8, bitSize: 0x1
        bool decayprogress;
        // offset: 0x11d9, bitSize: 0x1
        bool playerqueuedrespawn;
        // offset: 0x11da, bitSize: 0x1
        bool scorestreaksbarebones;
        // offset: 0x11db, bitSize: 0x1
        bool cumulativeroundscores;
        // offset: 0x11dc, bitSize: 0x1
        bool hash_3ad2212223b76a72;
        // offset: 0x11dd, bitSize: 0x1
        bool voipdeadhearkiller;
        // offset: 0x11de, bitSize: 0x1
        bool bot_autofill_team10;
        // offset: 0x11df, bitSize: 0x1
        bool hash_6e6991561babdd7e;
        // offset: 0x11e0, bitSize: 0x1
        bool bot_autofill_axis;
        // offset: 0x11e1, bitSize: 0x1
        bool skiplaststand;
        // offset: 0x11e2, bitSize: 0x1
        bool hash_1f3825ba2a669400;
        // offset: 0x11e3, bitSize: 0x1
        bool usespawngroups;
        // offset: 0x11e4, bitSize: 0x1
        bool hash_b76e50c1202aa23;
        // offset: 0x11e5, bitSize: 0x1
        bool disablethirdpersonspectating;
        // offset: 0x11e6, bitSize: 0x1
        bool platoonassignment;
        // offset: 0x11e7, bitSize: 0x1
        bool hash_7daf08db0c451ad1;
        // offset: 0x11e8, bitSize: 0x1
        bool allowlaststandforactiveclients;
        // offset: 0x11e9, bitSize: 0x1
        bool allowbattlechatter;
        // offset: 0x11ea, bitSize: 0x1
        bool fowrevealenabled;
        // offset: 0x11eb, bitSize: 0x1
        bool hash_4e8cafe9a4470898;
        // offset: 0x11ec, bitSize: 0x1
        bool hash_7647d0e9a45eeca6;
        // offset: 0x11ed, bitSize: 0x1
        bool hash_3cd7f961322b6b7;
        // offset: 0x11ee, bitSize: 0x1
        bool hash_3293bf384d3c1e2f;
        // offset: 0x11ef, bitSize: 0x1
        bool hash_35376812247cdc3;
        // offset: 0x11f0, bitSize: 0x1
        bool disablecontracts;
        // offset: 0x11f1, bitSize: 0x1
        bool hash_2b1f40bc711c41f3;
        // offset: 0x11f2, bitSize: 0x1
        bool hash_75d44b1542e3edf9;
        // offset: 0x11f3, bitSize: 0x1
        bool hash_5462586bdce0346e;
        // offset: 0x11f4, bitSize: 0x1
        bool gameobjectscontestedmajoritywins;
        // offset: 0x11f5, bitSize: 0x1
        bool hash_2f0beae14bf17810;
        // offset: 0x11f6, bitSize: 0x1
        bool autoheal;
        // offset: 0x11f7, bitSize: 0x1
        bool allowannouncer;
        // offset: 0x11f8, bitSize: 0x1
        bool disallowaimslowdown;
        // offset: 0x11f9, bitSize: 0x1
        bool hash_435c853b64e3175e;
        // offset: 0x11fa, bitSize: 0x1
        bool hash_5538f8f7758641b4;
        // offset: 0x11fb, bitSize: 0x1
        bool bot_autofill_team3;
        // offset: 0x11fc, bitSize: 0x1
        bool bot_autofill_team4;
        // offset: 0x11fd, bitSize: 0x1
        bool bot_autofill_team5;
        // offset: 0x11fe, bitSize: 0x1
        bool bot_autofill_team6;
        // offset: 0x11ff, bitSize: 0x1
        bool bot_autofill_team7;
        // offset: 0x1200, bitSize: 0x1
        bool bot_autofill_team8;
        // offset: 0x1201, bitSize: 0x1
        bool bot_autofill_team9;
        // offset: 0x1202, bitSize: 0x1
        bool hash_35e6177743dac957;
        // offset: 0x1203, bitSize: 0x1
        bool hash_14fd184091ff1af;
        // offset: 0x1204, bitSize: 0x1
        bool vehiclesenabled;
        // offset: 0x1205, bitSize: 0x1
        bool decaycapturedzones;
        // offset: 0x1206, bitSize: 0x1
        bool neutralzone;
        // offset: 0x1207, bitSize: 0x1
        bool boastallowcam;
        // offset: 0x1208, bitSize: 0x1
        bool hash_7cc354dd83013a47;
        // offset: 0x1209, bitSize: 0x1
        bool onlyheadshots;
        // offset: 0x120a, bitSize: 0x1
        bool competitivesettings;
        // offset: 0x120b, bitSize: 0x1
        bool flagcapturecondition;
        // offset: 0x120c, bitSize: 0x1
        bool hash_1ca94a3bd057f19f;
        // offset: 0x120d, bitSize: 0x1
        bool hash_4be46e952d54e9a2;
        // offset: 0x120e, bitSize: 0x1
        bool hash_1ebf97988141c498;
        // offset: 0x120f, bitSize: 0x1
        bool hash_25fa292c7fc561b8;
        // offset: 0x1210, bitSize: 0x1
        bool flagcanbeneutralized;
        // offset: 0x1211, bitSize: 0x1
        bool hash_241e17e13da23de2;
        // offset: 0x1212, bitSize: 0x1
        bool hash_6881c7cab0dcef39;
        // offset: 0x1213, bitSize: 0x1
        bool vehiclestimed;
        // offset: 0x1214, bitSize: 0x1
        bool pregamedraftenabled;
        // offset: 0x1215, bitSize: 0x1
        bool hash_6f03247bbcf52311;
        // offset: 0x1216, bitSize: 0x1
        bool hash_6143c4e1e18f08fd;
        // offset: 0x1217, bitSize: 0x1
        bool teamkillpointloss;
        // offset: 0x1218, bitSize: 0x1
        bool hash_322026c0342869d1;
        // offset: 0x1219, bitSize: 0x1
        bool hash_1e346fbfe02f1294;
        // offset: 0x121a, bitSize: 0x1
        bool hash_3724e6bfee03ce6e;
        // offset: 0x121b, bitSize: 0x1
        bool hash_497a2cbff8af4988;
        // offset: 0x121c, bitSize: 0x1
        bool hash_50776bbffc2b6c6d;
        // offset: 0x121d, bitSize: 0x1
        bool hash_55fc1cb09246fe30;
        // offset: 0x121e, bitSize: 0x1
        bool hash_1d5943e61e65eeae;
        // offset: 0x121f, bitSize: 0x1
        bool hash_656fd3c508d1d33e;
        // offset: 0x1220, bitSize: 0x1
        bool hash_29f3630e8e542a0a;
        // offset: 0x1221, bitSize: 0x1
        bool hash_c6a2e6c3e86125a;
        // offset: 0x1222, bitSize: 0x1
        bool hash_2ebcaa6630ba8fd5;
        // offset: 0x1223, bitSize: 0x1
        bool perksenabled;
        // offset: 0x1224, bitSize: 0x1
        bool hash_33bc6781006ae83d;
        // offset: 0x1225, bitSize: 0x1
        bool hash_655d904d5995891f;
        // offset: 0x1226, bitSize: 0x1
        bool hash_6c21d8e8de53e9c3;
        // offset: 0x1227, bitSize: 0x1
        bool hash_2966662989c3484c;
        // offset: 0x1228, bitSize: 0x1
        bool allowmapscripting;
        // offset: 0x1229, bitSize: 0x1
        bool robotshield;
        // offset: 0x122a, bitSize: 0x1
        bool hash_62e3e33ec68db92f;
        // offset: 0x122b, bitSize: 0x1
        bool hash_2a76bf462f4c2f50;
        // offset: 0x122c, bitSize: 0x1
        bool disableattachments;
        // offset: 0x122d, bitSize: 0x1
        bool disablecompass;
        // offset: 0x122e, bitSize: 0x1
        bool disableweapondrop;
        // offset: 0x122f, bitSize: 0x1
        bool escalationenabled;
        // offset: 0x1230, bitSize: 0x1
        bool hash_a564dde6ee3c657;
        // offset: 0x1231, bitSize: 0x1
        bool hash_7b8284382bffc197;
        // offset: 0x1232, bitSize: 0x1
        bool hash_25368755636c91a4;
        // offset: 0x1233, bitSize: 0x1
        bool disableclassselection;
        // offset: 0x1234, bitSize: 0x1
        bool hash_290721f8deb6ef5e;
        // offset: 0x1235, bitSize: 0x1
        bool hash_48670d9509071424;
        // offset: 0x1236, bitSize: 0x1
        bool autoteambalance;
        // offset: 0x1237, bitSize: 0x1
        bool hash_4bdd1bd86b610871;
        // offset: 0x1238, bitSize: 0x1
        bool hash_69df7093cd32f107;
        // offset: 0x1239, bitSize: 0x1
        bool hash_7c0acf14fb1f4080;
        // offset: 0x123a, bitSize: 0x1
        bool allowplayofthematch;
        // offset: 0x123b, bitSize: 0x1
        bool allowprone;
        // offset: 0x123c, bitSize: 0x1
        bool scoreresetondeath;
        // offset: 0x123d, bitSize: 0x1
        bool hash_452a45e599d3a575;
        // offset: 0x123e, bitSize: 0x1
        bool playerforcerespawn;
        // offset: 0x123f, bitSize: 0x1
        bool hash_7098f146a35b8468;
        // offset: 0x1240, bitSize: 0x1
        bool multibomb;
        // offset: 0x1241, bitSize: 0x1
        bool hash_4dd37bf6da89131;
        // offset: 0x1242, bitSize: 0x1
        bool hash_29fd164e7ff1abb0;
        // offset: 0x1243, bitSize: 0x1
        bool hash_104f124f56f0f20a;
        // offset: 0x1244, bitSize: 0x1
        bool hash_2560dae45cc112e3;
        // offset: 0x1245, bitSize: 0x1
        bool hash_23b110691971b537;
        // offset: 0x1246, bitSize: 0x1
        bool deathcircle;
        // offset: 0x1247, bitSize: 0x1
        bool hash_4669425278875e14;
        // offset: 0x1248, bitSize: 0x1
        bool boastenabled;
        // offset: 0x1249, bitSize: 0x1
        bool hash_3513cf8b4287cdd7;
        // offset: 0x124a, bitSize: 0x1
        bool hash_72a2919d2ac65850;
        // offset: 0x124b, bitSize: 0x1
        bool hash_59272f59f19c342a;
        // offset: 0x124c, bitSize: 0x1
        bool hash_429521a79f75a327;
        // offset: 0x124d, bitSize: 0x1
        bool hash_69f74281cacb8a0f;
        // offset: 0x124e, bitSize: 0x1
        bool hash_5d65f5abcdad24fe;
        // offset: 0x124f, bitSize: 0x1
        bool deathpointloss;
        // offset: 0x1250, bitSize: 0x1
        bool disablecustomcac;
        // offset: 0x1251, bitSize: 0x1
        bool hash_1260b639348098e3;
        // offset: 0x1252, bitSize: 0x1
        bool rebootplayers;
        // offset: 0x1253, bitSize: 0x1
        bool oldschoolmode;
        // offset: 0x1254, bitSize: 0x1
        bool hash_4238acad9fa0f317;
        // offset: 0x1255, bitSize: 0x1
        bool allowfinalkillcam;
        // offset: 0x1256, bitSize: 0x1
        bool allowspectating;
        // offset: 0x1257, bitSize: 0x1
        bool usabledynents;
        // offset: 0x1258, bitSize: 0x1
        bool playintrocinematics;
        // offset: 0x1259, bitSize: 0x1
        bool hash_564289af24e283db;
        // offset: 0x125a, bitSize: 0x1
        bool hash_11e1a0adebdab01a;
        // offset: 0x125b, bitSize: 0x1
        bool hash_47df56af71e4df3;
        // offset: 0x125c, bitSize: 0x1
        bool hash_282689f7ec6d7d32;
        // offset: 0x125d, bitSize: 0x1
        bool hash_4ce6b119f5979182;
        // offset: 0x125e, bitSize: 0x1
        bool spawnselectenabled;
        // offset: 0x125f, bitSize: 0x1
        bool loadoutkillstreaksenabled;
        // offset: 0x1260, bitSize: 0x1
        bool pregameitemvoteenabled;
        // offset: 0x1261, bitSize: 0x1
        bool hash_38d6e4d91bbc82ee;
        // offset: 0x1262, bitSize: 0x1
        bool hash_5684ea266d45be15;
        // offset: 0x1263, bitSize: 0x1
        bool hash_7f273e367f26254;
        // offset: 0x1264, bitSize: 0x1
        bool hash_65c535aa5198d01d;
        // offset: 0x1265, bitSize: 0x1
        bool disallowprone;
        // offset: 0x1266, bitSize: 0x1
        bool hash_3cc3acd830a8eef;
        // offset: 0x1267, bitSize: 0x1
        bool moveplayers;
        // offset: 0x1268, bitSize: 0x1
        bool hash_6945105793e31c56;
        // offset: 0x1269, bitSize: 0x1
        bool disabletacinsert;
        // offset: 0x126a, bitSize: 0x1
        bool voipdeadhearallliving;
        // offset: 0x126b, bitSize: 0x1
        bool hash_4ca06c610b5d53bd;
        // offset: 0x126c, bitSize: 0x1
        bool killstreaksgivegamescore;
        // offset: 0x126d, bitSize: 0x1
        bool hash_1cc3f98086d6f5dd;
        // offset: 0x126e, bitSize: 0x1
        bool flagcapturerateincrease;
        // offset: 0x126f, bitSize: 0x1
        bool use_doors;
        // offset: 0x1270, bitSize: 0x1
        bool pvponly;
        // offset: 0x1271, bitSize: 0x1
        bool forwardspawnteamspecificspawns;
        // offset: 0x1272, bitSize: 0x1
        bool hash_50b56d2635cbb74b;
        // offset: 0x1273, bitSize: 0x1
        bool hash_68fd4f67ea4b4ff8;
        // offset: 0x1274, bitSize: 0x1
        bool forwardspawntakesdamage;
        // offset: 0x1275, bitSize: 0x1
        bool allowingameteamchange;
        // offset: 0x1276, bitSize: 0x1
        bool hash_297b69789a6283b4;
        // offset: 0x1277, bitSize: 0x1
        bool deathzones;
        // offset: 0x1278, bitSize: 0x1
        bool classicmode;
        // offset: 0x1279, bitSize: 0x1
        bool voipdeadhearteamliving;
        // offset: 0x127a, bitSize: 0x1
        bool hash_51f7292117d41790;
        // offset: 0x127b, bitSize: 0x1
        bool capdecay;
        // offset: 0x127c, bitSize: 0x1
        bool hash_7bcb76b8a52c35e;
        // offset: 0x127d, bitSize: 0x1
        bool hash_5c90286f1514c76;
        // offset: 0x127e, bitSize: 0x1
        bool hash_b87383d5497a826;
        // offset: 0x127f, bitSize: 0x1
        bool voipeveryonehearseveryone;
        // offset: 0x1280, bitSize: 0x1
        bool hash_460af55ecefb11f;
        // offset: 0x1281, bitSize: 0x1
        bool hash_4f4a73f236278ba8;
        // offset: 0x1282, bitSize: 0x1
        bool hash_5f76e2d55ad861ed;
        // offset: 0x1283, bitSize: 0x1
        bool laststandfinishing;
        // offset: 0x1284, bitSize: 0x1
        bool hash_201c1769d32b30d3;
    };

    // root: bitSize: 0x1288, members: 1

    // offset: 0x0, bitSize: 0x1288(0x251 Byte(s))
    gametypesettings gametypesettings;
};

version hash_bc08f161c65d89e7 {
    // enums ..... 0 (0x0)
    // structs ... 2 (0x2)
    // header bit size .. 4904 (0x1328)
    // header byte size . 613 (0x265)

    // bitSize: 0x1278, members: 548
    struct gametypesettings {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> timelimit;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_25740f686a5cfc7e;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        uint:4 playerkillsmax;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_129fca5e3a00477f;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_444634d99df7a661;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperdeath;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:2 forceradar;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkill;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playersprinttime;
        // offset: 0x58, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> capturetime;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleroundswon;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_9fe0e2b1a7f556;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayerdefensive;
        // offset: 0x88, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_35e9fc8eee6881e0;
        // offset: 0x90, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_613785a993624133;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandrevivehealth;
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierdestroytime;
        // offset: 0xc0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostattackhelicopter;
        // offset: 0xc8, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_6024ee628431415;
        // offset: 0xd8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostbow;
        // offset: 0xe0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostuav;
        // offset: 0xe8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperweaponkill;
        // offset: 0xf0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_722d8dafb62ce7fe;
        // offset: 0x108, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_68b825c95acb9218;
        // offset: 0x118, bitSize: 0x8(0x1 Byte(s))
        uint:6 maxteamplayers;
        // offset: 0x120, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandhealth;
        // offset: 0x128, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6b2754246df1bc7c;
        // offset: 0x138, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_46f0ae82f5c2f7d4;
        // offset: 0x148, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> maxusers;
        // offset: 0x158, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_1ca4d65346568642;
        // offset: 0x168, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1d77a77db928f695;
        // offset: 0x178, bitSize: 0x8(0x1 Byte(s))
        uint:4 draftrequiredclients;
        // offset: 0x180, bitSize: 0x8(0x1 Byte(s))
        uint:3 friendlyfiretype;
        // offset: 0x188, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7fee0559953eec6;
        // offset: 0x1a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_28005bb885acabc3;
        // offset: 0x1b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4725de6afe873b87;
        // offset: 0x1c0, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_16184f2fd4014b39;
        // offset: 0x1c8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspermeleekill;
        // offset: 0x1d0, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_51f121252f1d8c7f;
        // offset: 0x1e0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_32da91b78e54e7b5;
        // offset: 0x1e8, bitSize: 0x8(0x1 Byte(s))
        uint:6 preroundperiod;
        // offset: 0x1f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_56f6d77da3124af2;
        // offset: 0x200, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowertimefactor;
        // offset: 0x208, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_62a4fd40810cb61;
        // offset: 0x210, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_56a31bddd92a64dc;
        // offset: 0x218, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> laststandrevivetime;
        // offset: 0x220, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_429d353f0be087a5;
        // offset: 0x238, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpunishcount;
        // offset: 0x240, bitSize: 0x8(0x1 Byte(s))
        uint:7 maxplayers;
        // offset: 0x248, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53fd9a3e9a0e78e1;
        // offset: 0x258, bitSize: 0x20(0x4 Byte(s))
        int forwardspawnhealth;
        // offset: 0x278, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5598d36d6b224c9a;
        // offset: 0x288, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnteamkilledpenalty;
        // offset: 0x290, bitSize: 0x8(0x1 Byte(s))
        uint:3 ballcount;
        // offset: 0x298, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_6ae29c8144cb7659;
        // offset: 0x2a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c82ffb472a21cac;
        // offset: 0x2b0, bitSize: 0x8(0x1 Byte(s))
        uint:3 gunselection;
        // offset: 0x2b8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_53c1e74b2d385c17;
        // offset: 0x2d0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_17cc26f74ef911e0;
        // offset: 0x2d8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_67d54bbc52811921;
        // offset: 0x2e0, bitSize: 0x8(0x1 Byte(s))
        fixed<5,2> hash_1614b9cbe0df6f75;
        // offset: 0x2e8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_35104d2d5fd22ce7;
        // offset: 0x300, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1441f7ad44e1cfd4;
        // offset: 0x308, bitSize: 0x8(0x1 Byte(s))
        uint:7 killstreakdeathpenaltyindividualearn;
        // offset: 0x310, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_c0beb1e5a80c25c;
        // offset: 0x318, bitSize: 0x8(0x1 Byte(s))
        uint:5 prematchrequirement;
        // offset: 0x320, bitSize: 0x8(0x1 Byte(s))
        uint:3 spectatetype;
        // offset: 0x328, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> hash_57fe6337297bcce9;
        // offset: 0x330, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_1df445b9d1af641f;
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:2 randomobjectivelocations;
        // offset: 0x340, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_55db4a8546a13c79;
        // offset: 0x358, bitSize: 0x8(0x1 Byte(s))
        uint:5 roundwinlimit;
        // offset: 0x360, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_ecf2124e9108fc4;
        // offset: 0x368, bitSize: 0x10(0x2 Byte(s))
        uint:10 antiboostdistance;
        // offset: 0x378, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_115a3410d9dbf98d;
        // offset: 0x388, bitSize: 0x10(0x2 Byte(s))
        uint:15 roundscorelimit;
        // offset: 0x398, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_320a5028d10f305a;
        // offset: 0x3b0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> hash_154db5a1b2e9d757;
        // offset: 0x3c0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> bulletdamagescalar;
        // offset: 0x3c8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1df1e1139a1a4eb8;
        // offset: 0x3e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_79c708d50a12e336;
        // offset: 0x3f0, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostontimeamount;
        // offset: 0x3f8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> defusetime;
        // offset: 0x400, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> teamkillreducedpenalty;
        // offset: 0x408, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxallocation;
        // offset: 0x410, bitSize: 0x8(0x1 Byte(s))
        uint:4 carryscore;
        // offset: 0x418, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c8636144ad47ac9;
        // offset: 0x428, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53cd45b387951ca1;
        // offset: 0x438, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_6e49ce7bbe6d3f1f;
        // offset: 0x440, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> killeventscoremultiplier;
        // offset: 0x448, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_2efff808b2701aa5;
        // offset: 0x458, bitSize: 0x8(0x1 Byte(s))
        uint:6 ticketslostontimeinterval;
        // offset: 0x460, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartexplosivedelay;
        // offset: 0x468, bitSize: 0x8(0x1 Byte(s))
        uint:2 cleandepositrotation;
        // offset: 0x470, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_21754b274494502e;
        // offset: 0x480, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_5f7c18fecb2a1a44;
        // offset: 0x490, bitSize: 0x8(0x1 Byte(s))
        uint:7 idleflagresettime;
        // offset: 0x498, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowergainfactor;
        // offset: 0x4a0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1f65f0a6f0eb3110;
        // offset: 0x4b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2a02614601829003;
        // offset: 0x4c8, bitSize: 0x8(0x1 Byte(s))
        uint:4 setbacks;
        // offset: 0x4d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1db05f3e34ccaaaf;
        // offset: 0x4e0, bitSize: 0x20(0x4 Byte(s))
        int hash_6b808ab4016cb1e1;
        // offset: 0x500, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1efac5fcdfa4f;
        // offset: 0x510, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1eeac5fcdf89c;
        // offset: 0x520, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f1ac5fcdfdb5;
        // offset: 0x530, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f0ac5fcdfc02;
        // offset: 0x540, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1ebac5fcdf383;
        // offset: 0x550, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_20a83071685f7bd9;
        // offset: 0x568, bitSize: 0x10(0x2 Byte(s))
        fixed<12,4> trm_maxheight;
        // offset: 0x578, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_2b88c6ac064e9c59;
        // offset: 0x580, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayofthematchevents;
        // offset: 0x588, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostwarmachine;
        // offset: 0x590, bitSize: 0x10(0x2 Byte(s))
        uint:15 scorelimit;
        // offset: 0x5a0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> cratecapturetime;
        // offset: 0x5a8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4a6ef8940f4cbb83;
        // offset: 0x5b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eeb8cb5c84b1939;
        // offset: 0x5c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eba3289161fd45f;
        // offset: 0x5d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_22c53ddb2cb67f13;
        // offset: 0x5e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_9c266bdf9cad7fa;
        // offset: 0x5f0, bitSize: 0x8(0x1 Byte(s))
        uint:3 killpointsinenemyprotectedzone;
        // offset: 0x5f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6e2b8452b08a545c;
        // offset: 0x600, bitSize: 0x10(0x2 Byte(s))
        uint:10 playermaxhealth;
        // offset: 0x610, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1833c853bfe78ffc;
        // offset: 0x618, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_5e8818f69d557ad2;
        // offset: 0x630, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_3e13b420d6773b4c;
        // offset: 0x638, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_718b497c5205e74b;
        // offset: 0x648, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostgunship;
        // offset: 0x650, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_42b840c668fd2c85;
        // offset: 0x660, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_44f0b1c6b2d3b6f8;
        // offset: 0x670, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5dc620c6c0919d82;
        // offset: 0x680, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2aea36c6a4135574;
        // offset: 0x690, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_32c16dc6a8490e81;
        // offset: 0x6a0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_66a7d866327081eb;
        // offset: 0x6a8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5f116b8cfbdbc3fe;
        // offset: 0x6b8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsforsurvivalbonus;
        // offset: 0x6c0, bitSize: 0x190(0x32 Byte(s)), array:0x32(hti:0xffff)
        uint:5 maxuniquerolesperteam[50];
        // offset: 0x850, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_7adb62a64c6d963;
        // offset: 0x858, bitSize: 0x8(0x1 Byte(s))
        uint:3 objectivepingtime;
        // offset: 0x860, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_271177b8b4cfcf15;
        // offset: 0x878, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamkillspawndelay;
        // offset: 0x880, bitSize: 0x8(0x1 Byte(s))
        uint:8 carrierarmor;
        // offset: 0x888, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_51a2ab391c340e03;
        // offset: 0x8a0, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostondeath;
        // offset: 0x8a8, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_47d4aa0161d78e15;
        // offset: 0x8b0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostremotemissile;
        // offset: 0x8b8, bitSize: 0x10(0x2 Byte(s))
        uint:9 carriermovespeed;
        // offset: 0x8c8, bitSize: 0x8(0x1 Byte(s))
        uint:5 boottime;
        // offset: 0x8d0, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_652bc8c2577ec788;
        // offset: 0x8e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_72852fc1d977c3a0;
        // offset: 0x8f0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_314c2f7312bde4af;
        // offset: 0x8f8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_5d5f4ee35c9977c7;
        // offset: 0x900, bitSize: 0x8(0x1 Byte(s))
        uint:3 roundstartfriendlyfiretype;
        // offset: 0x908, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagdecaytime;
        // offset: 0x910, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_76f686986e1a58b;
        // offset: 0x920, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_vs_bots;
        // offset: 0x928, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_26b08269156ca0e5;
        // offset: 0x930, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamnumlives;
        // offset: 0x938, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> planttime;
        // offset: 0x940, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6141cddd96ac214e;
        // offset: 0x948, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnprotectiontime;
        // offset: 0x950, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7353bbc24d72ec59;
        // offset: 0x960, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_573034b3252cb4e3;
        // offset: 0x978, bitSize: 0x10(0x2 Byte(s))
        uint:10 inactivitykick;
        // offset: 0x988, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspersecondarykill;
        // offset: 0x990, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team3;
        // offset: 0x998, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team4;
        // offset: 0x9a0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team5;
        // offset: 0x9a8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team6;
        // offset: 0x9b0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team7;
        // offset: 0x9b8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team8;
        // offset: 0x9c0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team9;
        // offset: 0x9c8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerhealthregentime;
        // offset: 0x9d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5d40d1f9fb7f;
        // offset: 0x9e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5c40d1f9f9cc;
        // offset: 0x9f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5f40d1f9fee5;
        // offset: 0xa00, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5e40d1f9fd32;
        // offset: 0xa10, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5940d1f9f4b3;
        // offset: 0xa20, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4f00f3f568c284af;
        // offset: 0xa30, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7f190c8839d3f05c;
        // offset: 0xa40, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_3a4691a853585241;
        // offset: 0xa48, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> destroytime;
        // offset: 0xa58, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagrespawntime;
        // offset: 0xa60, bitSize: 0x8(0x1 Byte(s))
        uint:2 shutdowndamage;
        // offset: 0xa68, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> gameadvertisementruletimeleft;
        // offset: 0xa70, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_6a48bbfb703d5c9c;
        // offset: 0xa78, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_239b391c77ebf8c1;
        // offset: 0xa80, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7c33e5bebaf05afb;
        // offset: 0xa90, bitSize: 0x10(0x2 Byte(s))
        uint:11 objectivehealth;
        // offset: 0xaa0, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnsuicidepenalty;
        // offset: 0xaa8, bitSize: 0x8(0x1 Byte(s))
        uint:2 robotspeed;
        // offset: 0xab0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_467be34402dad274;
        // offset: 0xab8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_68e3f54e05f57d85;
        // offset: 0xac0, bitSize: 0x8(0x1 Byte(s))
        uint:7 servermsec;
        // offset: 0xac8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_410c5c7c1e60b534;
        // offset: 0xad0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_212cc2b5b360189c;
        // offset: 0xad8, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_552338718ec6d2df;
        // offset: 0xae0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1c0040943c216593;
        // offset: 0xae8, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxplayereventsperminute;
        // offset: 0xaf8, bitSize: 0x10(0x2 Byte(s))
        uint:10 leaderbonus;
        // offset: 0xb08, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_5c918cbf75e16116;
        // offset: 0xb10, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_51e989796c38cd87;
        // offset: 0xb18, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostnapalm;
        // offset: 0xb20, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_119bd2704c238e5;
        // offset: 0xb38, bitSize: 0x8(0x1 Byte(s))
        uint:2 enemycarriervisible;
        // offset: 0xb40, bitSize: 0x10(0x2 Byte(s))
        uint:9 autodestroytime;
        // offset: 0xb50, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkillconfirmed;
        // offset: 0xb58, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4e4352bd1aaeedfe;
        // offset: 0xb60, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_507e1eb7f297d872;
        // offset: 0xb70, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_342835495fca42bb;
        // offset: 0xb80, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7cada6c0936f259b;
        // offset: 0xb90, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> waverespawndelay;
        // offset: 0xb98, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1974892bc7266bab;
        // offset: 0xba8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_567db38226658dbf;
        // offset: 0xbb0, bitSize: 0x8(0x1 Byte(s))
        uint:6 prematchperiod;
        // offset: 0xbb8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostsentry;
        // offset: 0xbc0, bitSize: 0x8(0x1 Byte(s))
        uint:6 teamkillscore;
        // offset: 0xbc8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_102aeddad113f70c;
        // offset: 0xbd0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_4635a26c94b56725;
        // offset: 0xbd8, bitSize: 0x8(0x1 Byte(s))
        uint:3 platooncount;
        // offset: 0xbe0, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierhealth;
        // offset: 0xc00, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_71da377e373bc755;
        // offset: 0xc18, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_38a8f601ab8388d0;
        // offset: 0xc28, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarykill;
        // offset: 0xc30, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperheadshot;
        // offset: 0xc38, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_75ff4383212c5111;
        // offset: 0xc48, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1908ad844e6c3e37;
        // offset: 0xc50, bitSize: 0x8(0x1 Byte(s))
        uint:4 pregameitemmaxvotes;
        // offset: 0xc58, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_50029ecff5e7d383;
        // offset: 0xc68, bitSize: 0x8(0x1 Byte(s))
        uint:7 playernumlives;
        // offset: 0xc70, bitSize: 0x8(0x1 Byte(s))
        uint:2 infectionmode;
        // offset: 0xc78, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleround;
        // offset: 0xc80, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7d53c8bab3db8122;
        // offset: 0xc90, bitSize: 0x8(0x1 Byte(s))
        fixed<7,1> incrementalspawndelay;
        // offset: 0xc98, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_allies;
        // offset: 0xca0, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxsuicidesbeforekick;
        // offset: 0xca8, bitSize: 0x8(0x1 Byte(s))
        uint:7 gameadvertisementrulescorepercent;
        // offset: 0xcb0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_3e76ce42036815cc;
        // offset: 0xcc0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_130d127406ab976e;
        // offset: 0xcd0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostairpatrol;
        // offset: 0xcd8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostcuav;
        // offset: 0xce0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostrcxd;
        // offset: 0xce8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostvtol;
        // offset: 0xcf0, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_40c4b447a58a7da4;
        // offset: 0xd00, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> hash_47e9736d437be7c8;
        // offset: 0xd08, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1ea82b1edff2a13b;
        // offset: 0xd18, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c31c3f19402e1f;
        // offset: 0xd28, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandtimer;
        // offset: 0xd30, bitSize: 0x8(0x1 Byte(s))
        uint:6 reboottime;
        // offset: 0xd38, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscorepercleandeposit;
        // offset: 0xd40, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_2081d79c44b2cefb;
        // offset: 0xd58, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6773166f56896564;
        // offset: 0xd68, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1725e90b73841702;
        // offset: 0xd78, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_273d049136c76afa;
        // offset: 0xd88, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_2849b6cf7317ab1b;
        // offset: 0xd90, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5a4fde688cbf1a01;
        // offset: 0xda0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c72ac3d026ca4eb;
        // offset: 0xdb0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_83f11b8abac148f;
        // offset: 0xdb8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_22fa97d05461a3e8;
        // offset: 0xdd0, bitSize: 0x8(0x1 Byte(s))
        uint:4 pickuptime;
        // offset: 0xdd8, bitSize: 0x10(0x2 Byte(s))
        fixed<14,7> hash_451245a24412d90f;
        // offset: 0xde8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3d5a87878a3bef28;
        // offset: 0xdf8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_552467c143123c1c;
        // offset: 0xe00, bitSize: 0x20(0x4 Byte(s))
        int hash_64727525f5957d06;
        // offset: 0xe20, bitSize: 0x20(0x4 Byte(s))
        int hash_1f3285ddee84620c;
        // offset: 0xe40, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_2596f9e3d6e26ac9;
        // offset: 0xe48, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostchoppergunner;
        // offset: 0xe50, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_3767386c050fa0eb;
        // offset: 0xe58, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerrespawndelay;
        // offset: 0xe60, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_34ee1a1a574eaa4c;
        // offset: 0xe70, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> spawntraptriggertime;
        // offset: 0xe78, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_26ff1d48be83e46c;
        // offset: 0xe90, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayeroffensive;
        // offset: 0xe98, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_527f80b77f20b8c8;
        // offset: 0xea8, bitSize: 0x8(0x1 Byte(s))
        uint:2 allowhitmarkers;
        // offset: 0xeb0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_d8215d30d36fa59;
        // offset: 0xec8, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_67ee1d8d7938baa1;
        // offset: 0xed8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2c02a63d2c336b30;
        // offset: 0xee8, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxobjectiveeventsperminute;
        // offset: 0xef8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_47dd11084763c671;
        // offset: 0xf08, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4201d2890785fb14;
        // offset: 0xf18, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarygrenadekill;
        // offset: 0xf20, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team10;
        // offset: 0xf28, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostcarepackage;
        // offset: 0xf30, bitSize: 0x8(0x1 Byte(s))
        uint:7 bonuslivesforcapturingzone;
        // offset: 0xf38, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_39d008c4c2044bc7;
        // offset: 0xf48, bitSize: 0x8(0x1 Byte(s))
        uint:7 startplayers;
        // offset: 0xf50, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_7d590533364efa87;
        // offset: 0xf58, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_252e760b41f3d94a;
        // offset: 0xf60, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartkillstreakdelay;
        // offset: 0xf68, bitSize: 0x8(0x1 Byte(s))
        uint:5 totalkillsmax;
        // offset: 0xf70, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundswitch;
        // offset: 0xf78, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerobjectiveheldrespawndelay;
        // offset: 0xf80, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpenalty;
        // offset: 0xf88, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_18bdaa4b00863e9d;
        // offset: 0xf90, bitSize: 0x8(0x1 Byte(s))
        uint:5 weaponcount;
        // offset: 0xf98, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1706d4b546538286;
        // offset: 0xfb0, bitSize: 0x8(0x1 Byte(s))
        uint:7 weapontimer;
        // offset: 0xfb8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> overtimetimelimit;
        // offset: 0xfc8, bitSize: 0x8(0x1 Byte(s))
        uint:7 cleandepositonlinetime;
        // offset: 0xfd0, bitSize: 0x8(0x1 Byte(s))
        fixed<7,3> hash_4c7c8c4bd1b2a58b;
        // offset: 0xfd8, bitSize: 0x8(0x1 Byte(s))
        uint:7 drafttime;
        // offset: 0xfe0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_ed89addfaaafe48;
        // offset: 0xfe8, bitSize: 0x8(0x1 Byte(s))
        uint:7 objectivespawntime;
        // offset: 0xff0, bitSize: 0x8(0x1 Byte(s))
        uint:2 killcammode;
        // offset: 0xff8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> killcamtime;
        // offset: 0x1008, bitSize: 0x8(0x1 Byte(s))
        uint:4 throwscore;
        // offset: 0x1010, bitSize: 0x8(0x1 Byte(s))
        uint:4 deposittime;
        // offset: 0x1018, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extratime;
        // offset: 0x1028, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_54d908d6273c8893;
        // offset: 0x1038, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6269eb986d22cd37;
        // offset: 0x1040, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreequipmentpowertimefactor;
        // offset: 0x1048, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostarmor;
        // offset: 0x1050, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_36ea712d503b054c;
        // offset: 0x1068, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamcount;
        // offset: 0x1070, bitSize: 0x20(0x4 Byte(s))
        int hash_7f38d88521da4c79;
        // offset: 0x1090, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_24c718cc0c526c38;
        // offset: 0x1098, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundlimit;
        // offset: 0x10a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_531cc9c63ae86a93;
        // offset: 0x10b0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostartillery;
        // offset: 0x10b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_b30022a9302a5a6;
        // offset: 0x10c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_25d72112144c5ea0;
        // offset: 0x10d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_39cfd81268504039;
        // offset: 0x10e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_208071125a2b0b0b;
        // offset: 0x10f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_52ef5b12764c8139;
        // offset: 0x1108, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4bf2241272d06bec;
        // offset: 0x1118, bitSize: 0x8(0x1 Byte(s))
        uint:2 charactercustomization;
        // offset: 0x1120, bitSize: 0x20(0x4 Byte(s))
        int hash_af4ad3316f0ded6;
        // offset: 0x1140, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_437a986f8d24d7eb;
        // offset: 0x1148, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_16182516e10d0250;
        // offset: 0x1160, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_axis;
        // offset: 0x1168, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7344dfa399020a06;
        // offset: 0x1180, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6e2abf2cc40e03f1;
        // offset: 0x1188, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkilldenied;
        // offset: 0x1190, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> bombtimer;
        // offset: 0x11a0, bitSize: 0x1
        bool delayplayer;
        // offset: 0x11a1, bitSize: 0x1
        bool voipdeadchatwithdead;
        // offset: 0x11a2, bitSize: 0x1
        bool voipdeadchatwithteam;
        // offset: 0x11a3, bitSize: 0x1
        bool hash_729930c3c52653c3;
        // offset: 0x11a4, bitSize: 0x1
        bool useembleminsteadoffactionicon;
        // offset: 0x11a5, bitSize: 0x1
        bool draftenabled;
        // offset: 0x11a6, bitSize: 0x1
        bool hash_3a15393c2e90e121;
        // offset: 0x11a7, bitSize: 0x1
        bool hash_1d708093c2664515;
        // offset: 0x11a8, bitSize: 0x1
        bool droppedtagrespawn;
        // offset: 0x11a9, bitSize: 0x1
        bool hash_1e71b5ce1cd845b3;
        // offset: 0x11aa, bitSize: 0x1
        bool hash_25aaa9a29a90534c;
        // offset: 0x11ab, bitSize: 0x1
        bool voipkillershearvictim;
        // offset: 0x11ac, bitSize: 0x1
        bool hash_7c0dcff6ffb1e348;
        // offset: 0x11ad, bitSize: 0x1
        bool hash_4091f2d0019b1f4a;
        // offset: 0x11ae, bitSize: 0x1
        bool deathcirclerespawn;
        // offset: 0x11af, bitSize: 0x1
        bool hash_2683a105198a7407;
        // offset: 0x11b0, bitSize: 0x1
        bool presetclassesperteam;
        // offset: 0x11b1, bitSize: 0x1
        bool hash_361f7fe066281093;
        // offset: 0x11b2, bitSize: 0x1
        bool hash_232892d3b0a6240c;
        // offset: 0x11b3, bitSize: 0x1
        bool bot_autofill_allies;
        // offset: 0x11b4, bitSize: 0x1
        bool hash_2c55a3723cd9fdf9;
        // offset: 0x11b5, bitSize: 0x1
        bool hash_5c57222bb95a06cb;
        // offset: 0x11b6, bitSize: 0x1
        bool hardcoremode;
        // offset: 0x11b7, bitSize: 0x1
        bool hash_135829cbab367329;
        // offset: 0x11b8, bitSize: 0x1
        bool hash_495b64bd935bf7b;
        // offset: 0x11b9, bitSize: 0x1
        bool useitemspawns;
        // offset: 0x11ba, bitSize: 0x1
        bool hash_77b7734750cd75e9;
        // offset: 0x11bb, bitSize: 0x1
        bool silentplant;
        // offset: 0x11bc, bitSize: 0x1
        bool hash_5711f3e42924a635;
        // offset: 0x11bd, bitSize: 0x1
        bool drafteveryround;
        // offset: 0x11be, bitSize: 0x1
        bool timepauseswheninzone;
        // offset: 0x11bf, bitSize: 0x1
        bool hash_4b55d75b8d779e4;
        // offset: 0x11c0, bitSize: 0x1
        bool hash_549abfbb3665d526;
        // offset: 0x11c1, bitSize: 0x1
        bool scoreperplayer;
        // offset: 0x11c2, bitSize: 0x1
        bool ekiaresetondeath;
        // offset: 0x11c3, bitSize: 0x1
        bool kothmode;
        // offset: 0x11c4, bitSize: 0x1
        bool hash_62665aebde32c8ae;
        // offset: 0x11c5, bitSize: 0x1
        bool hash_18c053cae82c1167;
        // offset: 0x11c6, bitSize: 0x1
        bool hash_6cf5f53d1fbb1066;
        // offset: 0x11c7, bitSize: 0x1
        bool decayprogress;
        // offset: 0x11c8, bitSize: 0x1
        bool playerqueuedrespawn;
        // offset: 0x11c9, bitSize: 0x1
        bool scorestreaksbarebones;
        // offset: 0x11ca, bitSize: 0x1
        bool cumulativeroundscores;
        // offset: 0x11cb, bitSize: 0x1
        bool hash_3ad2212223b76a72;
        // offset: 0x11cc, bitSize: 0x1
        bool voipdeadhearkiller;
        // offset: 0x11cd, bitSize: 0x1
        bool bot_autofill_team10;
        // offset: 0x11ce, bitSize: 0x1
        bool hash_6e6991561babdd7e;
        // offset: 0x11cf, bitSize: 0x1
        bool bot_autofill_axis;
        // offset: 0x11d0, bitSize: 0x1
        bool skiplaststand;
        // offset: 0x11d1, bitSize: 0x1
        bool hash_1f3825ba2a669400;
        // offset: 0x11d2, bitSize: 0x1
        bool usespawngroups;
        // offset: 0x11d3, bitSize: 0x1
        bool hash_b76e50c1202aa23;
        // offset: 0x11d4, bitSize: 0x1
        bool disablethirdpersonspectating;
        // offset: 0x11d5, bitSize: 0x1
        bool platoonassignment;
        // offset: 0x11d6, bitSize: 0x1
        bool hash_7daf08db0c451ad1;
        // offset: 0x11d7, bitSize: 0x1
        bool allowlaststandforactiveclients;
        // offset: 0x11d8, bitSize: 0x1
        bool allowbattlechatter;
        // offset: 0x11d9, bitSize: 0x1
        bool fowrevealenabled;
        // offset: 0x11da, bitSize: 0x1
        bool hash_4e8cafe9a4470898;
        // offset: 0x11db, bitSize: 0x1
        bool hash_7647d0e9a45eeca6;
        // offset: 0x11dc, bitSize: 0x1
        bool hash_3cd7f961322b6b7;
        // offset: 0x11dd, bitSize: 0x1
        bool hash_3293bf384d3c1e2f;
        // offset: 0x11de, bitSize: 0x1
        bool hash_35376812247cdc3;
        // offset: 0x11df, bitSize: 0x1
        bool disablecontracts;
        // offset: 0x11e0, bitSize: 0x1
        bool hash_2b1f40bc711c41f3;
        // offset: 0x11e1, bitSize: 0x1
        bool hash_75d44b1542e3edf9;
        // offset: 0x11e2, bitSize: 0x1
        bool hash_5462586bdce0346e;
        // offset: 0x11e3, bitSize: 0x1
        bool gameobjectscontestedmajoritywins;
        // offset: 0x11e4, bitSize: 0x1
        bool hash_2f0beae14bf17810;
        // offset: 0x11e5, bitSize: 0x1
        bool autoheal;
        // offset: 0x11e6, bitSize: 0x1
        bool allowannouncer;
        // offset: 0x11e7, bitSize: 0x1
        bool disallowaimslowdown;
        // offset: 0x11e8, bitSize: 0x1
        bool hash_435c853b64e3175e;
        // offset: 0x11e9, bitSize: 0x1
        bool hash_5538f8f7758641b4;
        // offset: 0x11ea, bitSize: 0x1
        bool bot_autofill_team3;
        // offset: 0x11eb, bitSize: 0x1
        bool bot_autofill_team4;
        // offset: 0x11ec, bitSize: 0x1
        bool bot_autofill_team5;
        // offset: 0x11ed, bitSize: 0x1
        bool bot_autofill_team6;
        // offset: 0x11ee, bitSize: 0x1
        bool bot_autofill_team7;
        // offset: 0x11ef, bitSize: 0x1
        bool bot_autofill_team8;
        // offset: 0x11f0, bitSize: 0x1
        bool bot_autofill_team9;
        // offset: 0x11f1, bitSize: 0x1
        bool hash_35e6177743dac957;
        // offset: 0x11f2, bitSize: 0x1
        bool hash_14fd184091ff1af;
        // offset: 0x11f3, bitSize: 0x1
        bool vehiclesenabled;
        // offset: 0x11f4, bitSize: 0x1
        bool decaycapturedzones;
        // offset: 0x11f5, bitSize: 0x1
        bool neutralzone;
        // offset: 0x11f6, bitSize: 0x1
        bool boastallowcam;
        // offset: 0x11f7, bitSize: 0x1
        bool hash_7cc354dd83013a47;
        // offset: 0x11f8, bitSize: 0x1
        bool onlyheadshots;
        // offset: 0x11f9, bitSize: 0x1
        bool competitivesettings;
        // offset: 0x11fa, bitSize: 0x1
        bool flagcapturecondition;
        // offset: 0x11fb, bitSize: 0x1
        bool hash_1ca94a3bd057f19f;
        // offset: 0x11fc, bitSize: 0x1
        bool hash_4be46e952d54e9a2;
        // offset: 0x11fd, bitSize: 0x1
        bool hash_1ebf97988141c498;
        // offset: 0x11fe, bitSize: 0x1
        bool hash_25fa292c7fc561b8;
        // offset: 0x11ff, bitSize: 0x1
        bool flagcanbeneutralized;
        // offset: 0x1200, bitSize: 0x1
        bool hash_241e17e13da23de2;
        // offset: 0x1201, bitSize: 0x1
        bool hash_6881c7cab0dcef39;
        // offset: 0x1202, bitSize: 0x1
        bool vehiclestimed;
        // offset: 0x1203, bitSize: 0x1
        bool pregamedraftenabled;
        // offset: 0x1204, bitSize: 0x1
        bool hash_6f03247bbcf52311;
        // offset: 0x1205, bitSize: 0x1
        bool hash_6143c4e1e18f08fd;
        // offset: 0x1206, bitSize: 0x1
        bool teamkillpointloss;
        // offset: 0x1207, bitSize: 0x1
        bool hash_322026c0342869d1;
        // offset: 0x1208, bitSize: 0x1
        bool hash_1e346fbfe02f1294;
        // offset: 0x1209, bitSize: 0x1
        bool hash_3724e6bfee03ce6e;
        // offset: 0x120a, bitSize: 0x1
        bool hash_497a2cbff8af4988;
        // offset: 0x120b, bitSize: 0x1
        bool hash_50776bbffc2b6c6d;
        // offset: 0x120c, bitSize: 0x1
        bool hash_55fc1cb09246fe30;
        // offset: 0x120d, bitSize: 0x1
        bool hash_1d5943e61e65eeae;
        // offset: 0x120e, bitSize: 0x1
        bool hash_656fd3c508d1d33e;
        // offset: 0x120f, bitSize: 0x1
        bool hash_29f3630e8e542a0a;
        // offset: 0x1210, bitSize: 0x1
        bool hash_c6a2e6c3e86125a;
        // offset: 0x1211, bitSize: 0x1
        bool hash_2ebcaa6630ba8fd5;
        // offset: 0x1212, bitSize: 0x1
        bool perksenabled;
        // offset: 0x1213, bitSize: 0x1
        bool hash_33bc6781006ae83d;
        // offset: 0x1214, bitSize: 0x1
        bool hash_655d904d5995891f;
        // offset: 0x1215, bitSize: 0x1
        bool hash_6c21d8e8de53e9c3;
        // offset: 0x1216, bitSize: 0x1
        bool hash_2966662989c3484c;
        // offset: 0x1217, bitSize: 0x1
        bool allowmapscripting;
        // offset: 0x1218, bitSize: 0x1
        bool robotshield;
        // offset: 0x1219, bitSize: 0x1
        bool hash_62e3e33ec68db92f;
        // offset: 0x121a, bitSize: 0x1
        bool hash_2a76bf462f4c2f50;
        // offset: 0x121b, bitSize: 0x1
        bool disableattachments;
        // offset: 0x121c, bitSize: 0x1
        bool disablecompass;
        // offset: 0x121d, bitSize: 0x1
        bool disableweapondrop;
        // offset: 0x121e, bitSize: 0x1
        bool escalationenabled;
        // offset: 0x121f, bitSize: 0x1
        bool hash_a564dde6ee3c657;
        // offset: 0x1220, bitSize: 0x1
        bool hash_7b8284382bffc197;
        // offset: 0x1221, bitSize: 0x1
        bool hash_25368755636c91a4;
        // offset: 0x1222, bitSize: 0x1
        bool disableclassselection;
        // offset: 0x1223, bitSize: 0x1
        bool hash_290721f8deb6ef5e;
        // offset: 0x1224, bitSize: 0x1
        bool hash_48670d9509071424;
        // offset: 0x1225, bitSize: 0x1
        bool autoteambalance;
        // offset: 0x1226, bitSize: 0x1
        bool hash_4bdd1bd86b610871;
        // offset: 0x1227, bitSize: 0x1
        bool hash_69df7093cd32f107;
        // offset: 0x1228, bitSize: 0x1
        bool hash_7c0acf14fb1f4080;
        // offset: 0x1229, bitSize: 0x1
        bool allowplayofthematch;
        // offset: 0x122a, bitSize: 0x1
        bool allowprone;
        // offset: 0x122b, bitSize: 0x1
        bool scoreresetondeath;
        // offset: 0x122c, bitSize: 0x1
        bool hash_452a45e599d3a575;
        // offset: 0x122d, bitSize: 0x1
        bool playerforcerespawn;
        // offset: 0x122e, bitSize: 0x1
        bool hash_7098f146a35b8468;
        // offset: 0x122f, bitSize: 0x1
        bool multibomb;
        // offset: 0x1230, bitSize: 0x1
        bool hash_4dd37bf6da89131;
        // offset: 0x1231, bitSize: 0x1
        bool hash_29fd164e7ff1abb0;
        // offset: 0x1232, bitSize: 0x1
        bool hash_104f124f56f0f20a;
        // offset: 0x1233, bitSize: 0x1
        bool hash_2560dae45cc112e3;
        // offset: 0x1234, bitSize: 0x1
        bool hash_23b110691971b537;
        // offset: 0x1235, bitSize: 0x1
        bool deathcircle;
        // offset: 0x1236, bitSize: 0x1
        bool hash_4669425278875e14;
        // offset: 0x1237, bitSize: 0x1
        bool boastenabled;
        // offset: 0x1238, bitSize: 0x1
        bool hash_3513cf8b4287cdd7;
        // offset: 0x1239, bitSize: 0x1
        bool hash_72a2919d2ac65850;
        // offset: 0x123a, bitSize: 0x1
        bool hash_59272f59f19c342a;
        // offset: 0x123b, bitSize: 0x1
        bool hash_429521a79f75a327;
        // offset: 0x123c, bitSize: 0x1
        bool hash_69f74281cacb8a0f;
        // offset: 0x123d, bitSize: 0x1
        bool hash_5d65f5abcdad24fe;
        // offset: 0x123e, bitSize: 0x1
        bool deathpointloss;
        // offset: 0x123f, bitSize: 0x1
        bool disablecustomcac;
        // offset: 0x1240, bitSize: 0x1
        bool hash_1260b639348098e3;
        // offset: 0x1241, bitSize: 0x1
        bool rebootplayers;
        // offset: 0x1242, bitSize: 0x1
        bool oldschoolmode;
        // offset: 0x1243, bitSize: 0x1
        bool hash_4238acad9fa0f317;
        // offset: 0x1244, bitSize: 0x1
        bool allowfinalkillcam;
        // offset: 0x1245, bitSize: 0x1
        bool allowspectating;
        // offset: 0x1246, bitSize: 0x1
        bool usabledynents;
        // offset: 0x1247, bitSize: 0x1
        bool playintrocinematics;
        // offset: 0x1248, bitSize: 0x1
        bool hash_564289af24e283db;
        // offset: 0x1249, bitSize: 0x1
        bool hash_11e1a0adebdab01a;
        // offset: 0x124a, bitSize: 0x1
        bool hash_47df56af71e4df3;
        // offset: 0x124b, bitSize: 0x1
        bool hash_282689f7ec6d7d32;
        // offset: 0x124c, bitSize: 0x1
        bool hash_4ce6b119f5979182;
        // offset: 0x124d, bitSize: 0x1
        bool spawnselectenabled;
        // offset: 0x124e, bitSize: 0x1
        bool loadoutkillstreaksenabled;
        // offset: 0x124f, bitSize: 0x1
        bool pregameitemvoteenabled;
        // offset: 0x1250, bitSize: 0x1
        bool hash_38d6e4d91bbc82ee;
        // offset: 0x1251, bitSize: 0x1
        bool hash_5684ea266d45be15;
        // offset: 0x1252, bitSize: 0x1
        bool hash_7f273e367f26254;
        // offset: 0x1253, bitSize: 0x1
        bool hash_65c535aa5198d01d;
        // offset: 0x1254, bitSize: 0x1
        bool disallowprone;
        // offset: 0x1255, bitSize: 0x1
        bool hash_3cc3acd830a8eef;
        // offset: 0x1256, bitSize: 0x1
        bool moveplayers;
        // offset: 0x1257, bitSize: 0x1
        bool hash_6945105793e31c56;
        // offset: 0x1258, bitSize: 0x1
        bool disabletacinsert;
        // offset: 0x1259, bitSize: 0x1
        bool voipdeadhearallliving;
        // offset: 0x125a, bitSize: 0x1
        bool hash_4ca06c610b5d53bd;
        // offset: 0x125b, bitSize: 0x1
        bool killstreaksgivegamescore;
        // offset: 0x125c, bitSize: 0x1
        bool hash_1cc3f98086d6f5dd;
        // offset: 0x125d, bitSize: 0x1
        bool flagcapturerateincrease;
        // offset: 0x125e, bitSize: 0x1
        bool use_doors;
        // offset: 0x125f, bitSize: 0x1
        bool pvponly;
        // offset: 0x1260, bitSize: 0x1
        bool forwardspawnteamspecificspawns;
        // offset: 0x1261, bitSize: 0x1
        bool hash_50b56d2635cbb74b;
        // offset: 0x1262, bitSize: 0x1
        bool hash_68fd4f67ea4b4ff8;
        // offset: 0x1263, bitSize: 0x1
        bool forwardspawntakesdamage;
        // offset: 0x1264, bitSize: 0x1
        bool allowingameteamchange;
        // offset: 0x1265, bitSize: 0x1
        bool hash_297b69789a6283b4;
        // offset: 0x1266, bitSize: 0x1
        bool deathzones;
        // offset: 0x1267, bitSize: 0x1
        bool classicmode;
        // offset: 0x1268, bitSize: 0x1
        bool voipdeadhearteamliving;
        // offset: 0x1269, bitSize: 0x1
        bool hash_51f7292117d41790;
        // offset: 0x126a, bitSize: 0x1
        bool capdecay;
        // offset: 0x126b, bitSize: 0x1
        bool hash_7bcb76b8a52c35e;
        // offset: 0x126c, bitSize: 0x1
        bool hash_5c90286f1514c76;
        // offset: 0x126d, bitSize: 0x1
        bool hash_b87383d5497a826;
        // offset: 0x126e, bitSize: 0x1
        bool voipeveryonehearseveryone;
        // offset: 0x126f, bitSize: 0x1
        bool hash_460af55ecefb11f;
        // offset: 0x1270, bitSize: 0x1
        bool hash_4f4a73f236278ba8;
        // offset: 0x1271, bitSize: 0x1
        bool hash_5f76e2d55ad861ed;
        // offset: 0x1272, bitSize: 0x1
        bool laststandfinishing;
        // offset: 0x1273, bitSize: 0x1
        bool hash_201c1769d32b30d3;
    };

    // root: bitSize: 0x1278, members: 1

    // offset: 0x0, bitSize: 0x1278(0x24f Byte(s))
    gametypesettings gametypesettings;
};

version hash_6b52fbf27380ecc3 {
    // enums ..... 0 (0x0)
    // structs ... 2 (0x2)
    // header bit size .. 4920 (0x1338)
    // header byte size . 615 (0x267)

    // bitSize: 0x1288, members: 551
    struct gametypesettings {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> timelimit;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_25740f686a5cfc7e;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        uint:4 playerkillsmax;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_129fca5e3a00477f;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_444634d99df7a661;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperdeath;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:2 forceradar;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkill;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playersprinttime;
        // offset: 0x58, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> capturetime;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleroundswon;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_9fe0e2b1a7f556;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayerdefensive;
        // offset: 0x88, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_35e9fc8eee6881e0;
        // offset: 0x90, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_613785a993624133;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandrevivehealth;
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierdestroytime;
        // offset: 0xc0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostattackhelicopter;
        // offset: 0xc8, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_6024ee628431415;
        // offset: 0xd8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostbow;
        // offset: 0xe0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostuav;
        // offset: 0xe8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperweaponkill;
        // offset: 0xf0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_722d8dafb62ce7fe;
        // offset: 0x108, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_68b825c95acb9218;
        // offset: 0x118, bitSize: 0x8(0x1 Byte(s))
        uint:6 maxteamplayers;
        // offset: 0x120, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandhealth;
        // offset: 0x128, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6b2754246df1bc7c;
        // offset: 0x138, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_46f0ae82f5c2f7d4;
        // offset: 0x148, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> maxusers;
        // offset: 0x158, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_1ca4d65346568642;
        // offset: 0x168, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1d77a77db928f695;
        // offset: 0x178, bitSize: 0x8(0x1 Byte(s))
        uint:4 draftrequiredclients;
        // offset: 0x180, bitSize: 0x8(0x1 Byte(s))
        uint:3 friendlyfiretype;
        // offset: 0x188, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7fee0559953eec6;
        // offset: 0x1a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_28005bb885acabc3;
        // offset: 0x1b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4725de6afe873b87;
        // offset: 0x1c0, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_16184f2fd4014b39;
        // offset: 0x1c8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspermeleekill;
        // offset: 0x1d0, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_51f121252f1d8c7f;
        // offset: 0x1e0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_32da91b78e54e7b5;
        // offset: 0x1e8, bitSize: 0x8(0x1 Byte(s))
        uint:6 preroundperiod;
        // offset: 0x1f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_56f6d77da3124af2;
        // offset: 0x200, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowertimefactor;
        // offset: 0x208, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_62a4fd40810cb61;
        // offset: 0x210, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_56a31bddd92a64dc;
        // offset: 0x218, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> laststandrevivetime;
        // offset: 0x220, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_429d353f0be087a5;
        // offset: 0x238, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpunishcount;
        // offset: 0x240, bitSize: 0x8(0x1 Byte(s))
        uint:7 maxplayers;
        // offset: 0x248, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53fd9a3e9a0e78e1;
        // offset: 0x258, bitSize: 0x20(0x4 Byte(s))
        int forwardspawnhealth;
        // offset: 0x278, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5598d36d6b224c9a;
        // offset: 0x288, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnteamkilledpenalty;
        // offset: 0x290, bitSize: 0x8(0x1 Byte(s))
        uint:3 ballcount;
        // offset: 0x298, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_6ae29c8144cb7659;
        // offset: 0x2a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c82ffb472a21cac;
        // offset: 0x2b0, bitSize: 0x8(0x1 Byte(s))
        uint:3 gunselection;
        // offset: 0x2b8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_53c1e74b2d385c17;
        // offset: 0x2d0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_17cc26f74ef911e0;
        // offset: 0x2d8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_67d54bbc52811921;
        // offset: 0x2e0, bitSize: 0x8(0x1 Byte(s))
        fixed<5,2> hash_1614b9cbe0df6f75;
        // offset: 0x2e8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_35104d2d5fd22ce7;
        // offset: 0x300, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1441f7ad44e1cfd4;
        // offset: 0x308, bitSize: 0x8(0x1 Byte(s))
        uint:7 killstreakdeathpenaltyindividualearn;
        // offset: 0x310, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_c0beb1e5a80c25c;
        // offset: 0x318, bitSize: 0x8(0x1 Byte(s))
        uint:5 prematchrequirement;
        // offset: 0x320, bitSize: 0x8(0x1 Byte(s))
        uint:3 spectatetype;
        // offset: 0x328, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> hash_57fe6337297bcce9;
        // offset: 0x330, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_1df445b9d1af641f;
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:2 randomobjectivelocations;
        // offset: 0x340, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_55db4a8546a13c79;
        // offset: 0x358, bitSize: 0x8(0x1 Byte(s))
        uint:5 roundwinlimit;
        // offset: 0x360, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_ecf2124e9108fc4;
        // offset: 0x368, bitSize: 0x10(0x2 Byte(s))
        uint:10 antiboostdistance;
        // offset: 0x378, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_115a3410d9dbf98d;
        // offset: 0x388, bitSize: 0x10(0x2 Byte(s))
        uint:15 roundscorelimit;
        // offset: 0x398, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_320a5028d10f305a;
        // offset: 0x3b0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> hash_154db5a1b2e9d757;
        // offset: 0x3c0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> bulletdamagescalar;
        // offset: 0x3c8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1df1e1139a1a4eb8;
        // offset: 0x3e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_79c708d50a12e336;
        // offset: 0x3f0, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostontimeamount;
        // offset: 0x3f8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> defusetime;
        // offset: 0x400, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> teamkillreducedpenalty;
        // offset: 0x408, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxallocation;
        // offset: 0x410, bitSize: 0x8(0x1 Byte(s))
        uint:4 carryscore;
        // offset: 0x418, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c8636144ad47ac9;
        // offset: 0x428, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53cd45b387951ca1;
        // offset: 0x438, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_6e49ce7bbe6d3f1f;
        // offset: 0x440, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> killeventscoremultiplier;
        // offset: 0x448, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_2efff808b2701aa5;
        // offset: 0x458, bitSize: 0x8(0x1 Byte(s))
        uint:6 ticketslostontimeinterval;
        // offset: 0x460, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartexplosivedelay;
        // offset: 0x468, bitSize: 0x8(0x1 Byte(s))
        uint:2 cleandepositrotation;
        // offset: 0x470, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_21754b274494502e;
        // offset: 0x480, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_5f7c18fecb2a1a44;
        // offset: 0x490, bitSize: 0x8(0x1 Byte(s))
        uint:7 idleflagresettime;
        // offset: 0x498, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowergainfactor;
        // offset: 0x4a0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1f65f0a6f0eb3110;
        // offset: 0x4b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2a02614601829003;
        // offset: 0x4c8, bitSize: 0x8(0x1 Byte(s))
        uint:4 setbacks;
        // offset: 0x4d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1db05f3e34ccaaaf;
        // offset: 0x4e0, bitSize: 0x20(0x4 Byte(s))
        int hash_6b808ab4016cb1e1;
        // offset: 0x500, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1efac5fcdfa4f;
        // offset: 0x510, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1eeac5fcdf89c;
        // offset: 0x520, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f1ac5fcdfdb5;
        // offset: 0x530, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f0ac5fcdfc02;
        // offset: 0x540, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1ebac5fcdf383;
        // offset: 0x550, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_20a83071685f7bd9;
        // offset: 0x568, bitSize: 0x10(0x2 Byte(s))
        fixed<12,4> trm_maxheight;
        // offset: 0x578, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_2b88c6ac064e9c59;
        // offset: 0x580, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayofthematchevents;
        // offset: 0x588, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostwarmachine;
        // offset: 0x590, bitSize: 0x10(0x2 Byte(s))
        uint:15 scorelimit;
        // offset: 0x5a0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> cratecapturetime;
        // offset: 0x5a8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4a6ef8940f4cbb83;
        // offset: 0x5b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eeb8cb5c84b1939;
        // offset: 0x5c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eba3289161fd45f;
        // offset: 0x5d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_22c53ddb2cb67f13;
        // offset: 0x5e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_9c266bdf9cad7fa;
        // offset: 0x5f0, bitSize: 0x8(0x1 Byte(s))
        uint:3 killpointsinenemyprotectedzone;
        // offset: 0x5f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6e2b8452b08a545c;
        // offset: 0x600, bitSize: 0x10(0x2 Byte(s))
        uint:10 playermaxhealth;
        // offset: 0x610, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1833c853bfe78ffc;
        // offset: 0x618, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_5e8818f69d557ad2;
        // offset: 0x630, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_3e13b420d6773b4c;
        // offset: 0x638, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_718b497c5205e74b;
        // offset: 0x648, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostgunship;
        // offset: 0x650, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_42b840c668fd2c85;
        // offset: 0x660, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_44f0b1c6b2d3b6f8;
        // offset: 0x670, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5dc620c6c0919d82;
        // offset: 0x680, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2aea36c6a4135574;
        // offset: 0x690, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_32c16dc6a8490e81;
        // offset: 0x6a0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_66a7d866327081eb;
        // offset: 0x6a8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5f116b8cfbdbc3fe;
        // offset: 0x6b8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsforsurvivalbonus;
        // offset: 0x6c0, bitSize: 0x190(0x32 Byte(s)), array:0x32(hti:0xffff)
        uint:5 maxuniquerolesperteam[50];
        // offset: 0x850, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_7adb62a64c6d963;
        // offset: 0x858, bitSize: 0x8(0x1 Byte(s))
        uint:3 objectivepingtime;
        // offset: 0x860, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_271177b8b4cfcf15;
        // offset: 0x878, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamkillspawndelay;
        // offset: 0x880, bitSize: 0x8(0x1 Byte(s))
        uint:8 carrierarmor;
        // offset: 0x888, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_51a2ab391c340e03;
        // offset: 0x8a0, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostondeath;
        // offset: 0x8a8, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_47d4aa0161d78e15;
        // offset: 0x8b0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostremotemissile;
        // offset: 0x8b8, bitSize: 0x10(0x2 Byte(s))
        uint:9 carriermovespeed;
        // offset: 0x8c8, bitSize: 0x8(0x1 Byte(s))
        uint:5 boottime;
        // offset: 0x8d0, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_652bc8c2577ec788;
        // offset: 0x8e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_72852fc1d977c3a0;
        // offset: 0x8f0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_314c2f7312bde4af;
        // offset: 0x8f8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_5d5f4ee35c9977c7;
        // offset: 0x900, bitSize: 0x8(0x1 Byte(s))
        uint:3 roundstartfriendlyfiretype;
        // offset: 0x908, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagdecaytime;
        // offset: 0x910, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_76f686986e1a58b;
        // offset: 0x920, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_vs_bots;
        // offset: 0x928, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_26b08269156ca0e5;
        // offset: 0x930, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamnumlives;
        // offset: 0x938, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> planttime;
        // offset: 0x940, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6141cddd96ac214e;
        // offset: 0x948, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnprotectiontime;
        // offset: 0x950, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7353bbc24d72ec59;
        // offset: 0x960, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_573034b3252cb4e3;
        // offset: 0x978, bitSize: 0x10(0x2 Byte(s))
        uint:10 inactivitykick;
        // offset: 0x988, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspersecondarykill;
        // offset: 0x990, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team3;
        // offset: 0x998, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team4;
        // offset: 0x9a0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team5;
        // offset: 0x9a8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team6;
        // offset: 0x9b0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team7;
        // offset: 0x9b8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team8;
        // offset: 0x9c0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team9;
        // offset: 0x9c8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerhealthregentime;
        // offset: 0x9d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5d40d1f9fb7f;
        // offset: 0x9e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5c40d1f9f9cc;
        // offset: 0x9f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5f40d1f9fee5;
        // offset: 0xa00, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5e40d1f9fd32;
        // offset: 0xa10, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5940d1f9f4b3;
        // offset: 0xa20, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4f00f3f568c284af;
        // offset: 0xa30, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7f190c8839d3f05c;
        // offset: 0xa40, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_3a4691a853585241;
        // offset: 0xa48, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> destroytime;
        // offset: 0xa58, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagrespawntime;
        // offset: 0xa60, bitSize: 0x8(0x1 Byte(s))
        uint:2 shutdowndamage;
        // offset: 0xa68, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> gameadvertisementruletimeleft;
        // offset: 0xa70, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_6a48bbfb703d5c9c;
        // offset: 0xa78, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_239b391c77ebf8c1;
        // offset: 0xa80, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7c33e5bebaf05afb;
        // offset: 0xa90, bitSize: 0x10(0x2 Byte(s))
        uint:11 objectivehealth;
        // offset: 0xaa0, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnsuicidepenalty;
        // offset: 0xaa8, bitSize: 0x8(0x1 Byte(s))
        uint:2 robotspeed;
        // offset: 0xab0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_467be34402dad274;
        // offset: 0xab8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_68e3f54e05f57d85;
        // offset: 0xac0, bitSize: 0x8(0x1 Byte(s))
        uint:7 servermsec;
        // offset: 0xac8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_410c5c7c1e60b534;
        // offset: 0xad0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_212cc2b5b360189c;
        // offset: 0xad8, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_552338718ec6d2df;
        // offset: 0xae0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1c0040943c216593;
        // offset: 0xae8, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxplayereventsperminute;
        // offset: 0xaf8, bitSize: 0x10(0x2 Byte(s))
        uint:10 leaderbonus;
        // offset: 0xb08, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_5c918cbf75e16116;
        // offset: 0xb10, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_51e989796c38cd87;
        // offset: 0xb18, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostnapalm;
        // offset: 0xb20, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_119bd2704c238e5;
        // offset: 0xb38, bitSize: 0x8(0x1 Byte(s))
        uint:2 enemycarriervisible;
        // offset: 0xb40, bitSize: 0x10(0x2 Byte(s))
        uint:9 autodestroytime;
        // offset: 0xb50, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkillconfirmed;
        // offset: 0xb58, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4e4352bd1aaeedfe;
        // offset: 0xb60, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_507e1eb7f297d872;
        // offset: 0xb70, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_342835495fca42bb;
        // offset: 0xb80, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7cada6c0936f259b;
        // offset: 0xb90, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> waverespawndelay;
        // offset: 0xb98, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1974892bc7266bab;
        // offset: 0xba8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_567db38226658dbf;
        // offset: 0xbb0, bitSize: 0x8(0x1 Byte(s))
        uint:6 prematchperiod;
        // offset: 0xbb8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostsentry;
        // offset: 0xbc0, bitSize: 0x8(0x1 Byte(s))
        uint:6 teamkillscore;
        // offset: 0xbc8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_102aeddad113f70c;
        // offset: 0xbd0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_4635a26c94b56725;
        // offset: 0xbd8, bitSize: 0x8(0x1 Byte(s))
        uint:3 platooncount;
        // offset: 0xbe0, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierhealth;
        // offset: 0xc00, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_71da377e373bc755;
        // offset: 0xc18, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_38a8f601ab8388d0;
        // offset: 0xc28, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarykill;
        // offset: 0xc30, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperheadshot;
        // offset: 0xc38, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_75ff4383212c5111;
        // offset: 0xc48, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1908ad844e6c3e37;
        // offset: 0xc50, bitSize: 0x8(0x1 Byte(s))
        uint:4 pregameitemmaxvotes;
        // offset: 0xc58, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_50029ecff5e7d383;
        // offset: 0xc68, bitSize: 0x8(0x1 Byte(s))
        uint:7 playernumlives;
        // offset: 0xc70, bitSize: 0x8(0x1 Byte(s))
        uint:2 infectionmode;
        // offset: 0xc78, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleround;
        // offset: 0xc80, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7d53c8bab3db8122;
        // offset: 0xc90, bitSize: 0x8(0x1 Byte(s))
        fixed<7,1> incrementalspawndelay;
        // offset: 0xc98, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_allies;
        // offset: 0xca0, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxsuicidesbeforekick;
        // offset: 0xca8, bitSize: 0x8(0x1 Byte(s))
        uint:7 gameadvertisementrulescorepercent;
        // offset: 0xcb0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_3e76ce42036815cc;
        // offset: 0xcc0, bitSize: 0x10(0x2 Byte(s))
        int:10 hash_3ccd8e1bf3864fa1;
        // offset: 0xcd0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_130d127406ab976e;
        // offset: 0xce0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostairpatrol;
        // offset: 0xce8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostcuav;
        // offset: 0xcf0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostrcxd;
        // offset: 0xcf8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostvtol;
        // offset: 0xd00, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_40c4b447a58a7da4;
        // offset: 0xd10, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> hash_47e9736d437be7c8;
        // offset: 0xd18, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1ea82b1edff2a13b;
        // offset: 0xd28, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c31c3f19402e1f;
        // offset: 0xd38, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandtimer;
        // offset: 0xd40, bitSize: 0x8(0x1 Byte(s))
        uint:6 reboottime;
        // offset: 0xd48, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscorepercleandeposit;
        // offset: 0xd50, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_2081d79c44b2cefb;
        // offset: 0xd68, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6773166f56896564;
        // offset: 0xd78, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1725e90b73841702;
        // offset: 0xd88, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_273d049136c76afa;
        // offset: 0xd98, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_2849b6cf7317ab1b;
        // offset: 0xda0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5a4fde688cbf1a01;
        // offset: 0xdb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c72ac3d026ca4eb;
        // offset: 0xdc0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_83f11b8abac148f;
        // offset: 0xdc8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_22fa97d05461a3e8;
        // offset: 0xde0, bitSize: 0x8(0x1 Byte(s))
        uint:4 pickuptime;
        // offset: 0xde8, bitSize: 0x10(0x2 Byte(s))
        fixed<14,7> hash_451245a24412d90f;
        // offset: 0xdf8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3d5a87878a3bef28;
        // offset: 0xe08, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_552467c143123c1c;
        // offset: 0xe10, bitSize: 0x20(0x4 Byte(s))
        int hash_64727525f5957d06;
        // offset: 0xe30, bitSize: 0x20(0x4 Byte(s))
        int hash_1f3285ddee84620c;
        // offset: 0xe50, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_2596f9e3d6e26ac9;
        // offset: 0xe58, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostchoppergunner;
        // offset: 0xe60, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_3767386c050fa0eb;
        // offset: 0xe68, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerrespawndelay;
        // offset: 0xe70, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_34ee1a1a574eaa4c;
        // offset: 0xe80, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> spawntraptriggertime;
        // offset: 0xe88, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_26ff1d48be83e46c;
        // offset: 0xea0, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayeroffensive;
        // offset: 0xea8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_527f80b77f20b8c8;
        // offset: 0xeb8, bitSize: 0x8(0x1 Byte(s))
        uint:2 allowhitmarkers;
        // offset: 0xec0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_d8215d30d36fa59;
        // offset: 0xed8, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_67ee1d8d7938baa1;
        // offset: 0xee8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2c02a63d2c336b30;
        // offset: 0xef8, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxobjectiveeventsperminute;
        // offset: 0xf08, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_47dd11084763c671;
        // offset: 0xf18, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4201d2890785fb14;
        // offset: 0xf28, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarygrenadekill;
        // offset: 0xf30, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team10;
        // offset: 0xf38, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostcarepackage;
        // offset: 0xf40, bitSize: 0x8(0x1 Byte(s))
        uint:7 bonuslivesforcapturingzone;
        // offset: 0xf48, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_39d008c4c2044bc7;
        // offset: 0xf58, bitSize: 0x8(0x1 Byte(s))
        uint:7 startplayers;
        // offset: 0xf60, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_7d590533364efa87;
        // offset: 0xf68, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_252e760b41f3d94a;
        // offset: 0xf70, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartkillstreakdelay;
        // offset: 0xf78, bitSize: 0x8(0x1 Byte(s))
        uint:5 totalkillsmax;
        // offset: 0xf80, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundswitch;
        // offset: 0xf88, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerobjectiveheldrespawndelay;
        // offset: 0xf90, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpenalty;
        // offset: 0xf98, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_18bdaa4b00863e9d;
        // offset: 0xfa0, bitSize: 0x8(0x1 Byte(s))
        uint:5 weaponcount;
        // offset: 0xfa8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1706d4b546538286;
        // offset: 0xfc0, bitSize: 0x8(0x1 Byte(s))
        uint:7 weapontimer;
        // offset: 0xfc8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> overtimetimelimit;
        // offset: 0xfd8, bitSize: 0x8(0x1 Byte(s))
        uint:7 cleandepositonlinetime;
        // offset: 0xfe0, bitSize: 0x8(0x1 Byte(s))
        fixed<7,3> hash_4c7c8c4bd1b2a58b;
        // offset: 0xfe8, bitSize: 0x8(0x1 Byte(s))
        uint:7 drafttime;
        // offset: 0xff0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_ed89addfaaafe48;
        // offset: 0xff8, bitSize: 0x8(0x1 Byte(s))
        uint:7 objectivespawntime;
        // offset: 0x1000, bitSize: 0x8(0x1 Byte(s))
        uint:2 killcammode;
        // offset: 0x1008, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> killcamtime;
        // offset: 0x1018, bitSize: 0x8(0x1 Byte(s))
        uint:4 throwscore;
        // offset: 0x1020, bitSize: 0x8(0x1 Byte(s))
        uint:4 deposittime;
        // offset: 0x1028, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extratime;
        // offset: 0x1038, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_54d908d6273c8893;
        // offset: 0x1048, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6269eb986d22cd37;
        // offset: 0x1050, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreequipmentpowertimefactor;
        // offset: 0x1058, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostarmor;
        // offset: 0x1060, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_36ea712d503b054c;
        // offset: 0x1078, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamcount;
        // offset: 0x1080, bitSize: 0x20(0x4 Byte(s))
        int hash_7f38d88521da4c79;
        // offset: 0x10a0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_24c718cc0c526c38;
        // offset: 0x10a8, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundlimit;
        // offset: 0x10b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_531cc9c63ae86a93;
        // offset: 0x10c0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostartillery;
        // offset: 0x10c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_b30022a9302a5a6;
        // offset: 0x10d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_25d72112144c5ea0;
        // offset: 0x10e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_39cfd81268504039;
        // offset: 0x10f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_208071125a2b0b0b;
        // offset: 0x1108, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_52ef5b12764c8139;
        // offset: 0x1118, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4bf2241272d06bec;
        // offset: 0x1128, bitSize: 0x8(0x1 Byte(s))
        uint:2 charactercustomization;
        // offset: 0x1130, bitSize: 0x20(0x4 Byte(s))
        int hash_af4ad3316f0ded6;
        // offset: 0x1150, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_437a986f8d24d7eb;
        // offset: 0x1158, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_16182516e10d0250;
        // offset: 0x1170, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_axis;
        // offset: 0x1178, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7344dfa399020a06;
        // offset: 0x1190, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6e2abf2cc40e03f1;
        // offset: 0x1198, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkilldenied;
        // offset: 0x11a0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> bombtimer;
        // offset: 0x11b0, bitSize: 0x1
        bool delayplayer;
        // offset: 0x11b1, bitSize: 0x1
        bool hash_196e997a082443a9;
        // offset: 0x11b2, bitSize: 0x1
        bool voipdeadchatwithdead;
        // offset: 0x11b3, bitSize: 0x1
        bool voipdeadchatwithteam;
        // offset: 0x11b4, bitSize: 0x1
        bool hash_729930c3c52653c3;
        // offset: 0x11b5, bitSize: 0x1
        bool useembleminsteadoffactionicon;
        // offset: 0x11b6, bitSize: 0x1
        bool draftenabled;
        // offset: 0x11b7, bitSize: 0x1
        bool hash_3a15393c2e90e121;
        // offset: 0x11b8, bitSize: 0x1
        bool hash_1d708093c2664515;
        // offset: 0x11b9, bitSize: 0x1
        bool droppedtagrespawn;
        // offset: 0x11ba, bitSize: 0x1
        bool hash_1e71b5ce1cd845b3;
        // offset: 0x11bb, bitSize: 0x1
        bool hash_25aaa9a29a90534c;
        // offset: 0x11bc, bitSize: 0x1
        bool voipkillershearvictim;
        // offset: 0x11bd, bitSize: 0x1
        bool hash_7c0dcff6ffb1e348;
        // offset: 0x11be, bitSize: 0x1
        bool hash_4091f2d0019b1f4a;
        // offset: 0x11bf, bitSize: 0x1
        bool deathcirclerespawn;
        // offset: 0x11c0, bitSize: 0x1
        bool hash_2683a105198a7407;
        // offset: 0x11c1, bitSize: 0x1
        bool presetclassesperteam;
        // offset: 0x11c2, bitSize: 0x1
        bool hash_361f7fe066281093;
        // offset: 0x11c3, bitSize: 0x1
        bool hash_232892d3b0a6240c;
        // offset: 0x11c4, bitSize: 0x1
        bool bot_autofill_allies;
        // offset: 0x11c5, bitSize: 0x1
        bool hash_2c55a3723cd9fdf9;
        // offset: 0x11c6, bitSize: 0x1
        bool hash_5c57222bb95a06cb;
        // offset: 0x11c7, bitSize: 0x1
        bool hardcoremode;
        // offset: 0x11c8, bitSize: 0x1
        bool hash_135829cbab367329;
        // offset: 0x11c9, bitSize: 0x1
        bool hash_495b64bd935bf7b;
        // offset: 0x11ca, bitSize: 0x1
        bool useitemspawns;
        // offset: 0x11cb, bitSize: 0x1
        bool hash_77b7734750cd75e9;
        // offset: 0x11cc, bitSize: 0x1
        bool silentplant;
        // offset: 0x11cd, bitSize: 0x1
        bool hash_5711f3e42924a635;
        // offset: 0x11ce, bitSize: 0x1
        bool drafteveryround;
        // offset: 0x11cf, bitSize: 0x1
        bool timepauseswheninzone;
        // offset: 0x11d0, bitSize: 0x1
        bool hash_4b55d75b8d779e4;
        // offset: 0x11d1, bitSize: 0x1
        bool hash_549abfbb3665d526;
        // offset: 0x11d2, bitSize: 0x1
        bool scoreperplayer;
        // offset: 0x11d3, bitSize: 0x1
        bool ekiaresetondeath;
        // offset: 0x11d4, bitSize: 0x1
        bool kothmode;
        // offset: 0x11d5, bitSize: 0x1
        bool hash_62665aebde32c8ae;
        // offset: 0x11d6, bitSize: 0x1
        bool hash_18c053cae82c1167;
        // offset: 0x11d7, bitSize: 0x1
        bool hash_6cf5f53d1fbb1066;
        // offset: 0x11d8, bitSize: 0x1
        bool hash_3d23923f9c9757cd;
        // offset: 0x11d9, bitSize: 0x1
        bool decayprogress;
        // offset: 0x11da, bitSize: 0x1
        bool playerqueuedrespawn;
        // offset: 0x11db, bitSize: 0x1
        bool scorestreaksbarebones;
        // offset: 0x11dc, bitSize: 0x1
        bool cumulativeroundscores;
        // offset: 0x11dd, bitSize: 0x1
        bool hash_3ad2212223b76a72;
        // offset: 0x11de, bitSize: 0x1
        bool voipdeadhearkiller;
        // offset: 0x11df, bitSize: 0x1
        bool bot_autofill_team10;
        // offset: 0x11e0, bitSize: 0x1
        bool hash_6e6991561babdd7e;
        // offset: 0x11e1, bitSize: 0x1
        bool bot_autofill_axis;
        // offset: 0x11e2, bitSize: 0x1
        bool skiplaststand;
        // offset: 0x11e3, bitSize: 0x1
        bool hash_1f3825ba2a669400;
        // offset: 0x11e4, bitSize: 0x1
        bool usespawngroups;
        // offset: 0x11e5, bitSize: 0x1
        bool hash_b76e50c1202aa23;
        // offset: 0x11e6, bitSize: 0x1
        bool disablethirdpersonspectating;
        // offset: 0x11e7, bitSize: 0x1
        bool platoonassignment;
        // offset: 0x11e8, bitSize: 0x1
        bool hash_7daf08db0c451ad1;
        // offset: 0x11e9, bitSize: 0x1
        bool allowlaststandforactiveclients;
        // offset: 0x11ea, bitSize: 0x1
        bool allowbattlechatter;
        // offset: 0x11eb, bitSize: 0x1
        bool fowrevealenabled;
        // offset: 0x11ec, bitSize: 0x1
        bool hash_4e8cafe9a4470898;
        // offset: 0x11ed, bitSize: 0x1
        bool hash_7647d0e9a45eeca6;
        // offset: 0x11ee, bitSize: 0x1
        bool hash_3cd7f961322b6b7;
        // offset: 0x11ef, bitSize: 0x1
        bool hash_3293bf384d3c1e2f;
        // offset: 0x11f0, bitSize: 0x1
        bool hash_35376812247cdc3;
        // offset: 0x11f1, bitSize: 0x1
        bool disablecontracts;
        // offset: 0x11f2, bitSize: 0x1
        bool hash_2b1f40bc711c41f3;
        // offset: 0x11f3, bitSize: 0x1
        bool hash_75d44b1542e3edf9;
        // offset: 0x11f4, bitSize: 0x1
        bool hash_5462586bdce0346e;
        // offset: 0x11f5, bitSize: 0x1
        bool gameobjectscontestedmajoritywins;
        // offset: 0x11f6, bitSize: 0x1
        bool hash_2f0beae14bf17810;
        // offset: 0x11f7, bitSize: 0x1
        bool autoheal;
        // offset: 0x11f8, bitSize: 0x1
        bool allowannouncer;
        // offset: 0x11f9, bitSize: 0x1
        bool disallowaimslowdown;
        // offset: 0x11fa, bitSize: 0x1
        bool hash_435c853b64e3175e;
        // offset: 0x11fb, bitSize: 0x1
        bool hash_5538f8f7758641b4;
        // offset: 0x11fc, bitSize: 0x1
        bool bot_autofill_team3;
        // offset: 0x11fd, bitSize: 0x1
        bool bot_autofill_team4;
        // offset: 0x11fe, bitSize: 0x1
        bool bot_autofill_team5;
        // offset: 0x11ff, bitSize: 0x1
        bool bot_autofill_team6;
        // offset: 0x1200, bitSize: 0x1
        bool bot_autofill_team7;
        // offset: 0x1201, bitSize: 0x1
        bool bot_autofill_team8;
        // offset: 0x1202, bitSize: 0x1
        bool bot_autofill_team9;
        // offset: 0x1203, bitSize: 0x1
        bool hash_35e6177743dac957;
        // offset: 0x1204, bitSize: 0x1
        bool hash_14fd184091ff1af;
        // offset: 0x1205, bitSize: 0x1
        bool vehiclesenabled;
        // offset: 0x1206, bitSize: 0x1
        bool decaycapturedzones;
        // offset: 0x1207, bitSize: 0x1
        bool neutralzone;
        // offset: 0x1208, bitSize: 0x1
        bool boastallowcam;
        // offset: 0x1209, bitSize: 0x1
        bool hash_7cc354dd83013a47;
        // offset: 0x120a, bitSize: 0x1
        bool onlyheadshots;
        // offset: 0x120b, bitSize: 0x1
        bool competitivesettings;
        // offset: 0x120c, bitSize: 0x1
        bool flagcapturecondition;
        // offset: 0x120d, bitSize: 0x1
        bool hash_1ca94a3bd057f19f;
        // offset: 0x120e, bitSize: 0x1
        bool hash_4be46e952d54e9a2;
        // offset: 0x120f, bitSize: 0x1
        bool hash_1ebf97988141c498;
        // offset: 0x1210, bitSize: 0x1
        bool hash_25fa292c7fc561b8;
        // offset: 0x1211, bitSize: 0x1
        bool flagcanbeneutralized;
        // offset: 0x1212, bitSize: 0x1
        bool hash_241e17e13da23de2;
        // offset: 0x1213, bitSize: 0x1
        bool hash_6881c7cab0dcef39;
        // offset: 0x1214, bitSize: 0x1
        bool vehiclestimed;
        // offset: 0x1215, bitSize: 0x1
        bool pregamedraftenabled;
        // offset: 0x1216, bitSize: 0x1
        bool hash_6f03247bbcf52311;
        // offset: 0x1217, bitSize: 0x1
        bool hash_6143c4e1e18f08fd;
        // offset: 0x1218, bitSize: 0x1
        bool teamkillpointloss;
        // offset: 0x1219, bitSize: 0x1
        bool hash_322026c0342869d1;
        // offset: 0x121a, bitSize: 0x1
        bool hash_1e346fbfe02f1294;
        // offset: 0x121b, bitSize: 0x1
        bool hash_3724e6bfee03ce6e;
        // offset: 0x121c, bitSize: 0x1
        bool hash_497a2cbff8af4988;
        // offset: 0x121d, bitSize: 0x1
        bool hash_50776bbffc2b6c6d;
        // offset: 0x121e, bitSize: 0x1
        bool hash_55fc1cb09246fe30;
        // offset: 0x121f, bitSize: 0x1
        bool hash_1d5943e61e65eeae;
        // offset: 0x1220, bitSize: 0x1
        bool hash_656fd3c508d1d33e;
        // offset: 0x1221, bitSize: 0x1
        bool hash_29f3630e8e542a0a;
        // offset: 0x1222, bitSize: 0x1
        bool hash_c6a2e6c3e86125a;
        // offset: 0x1223, bitSize: 0x1
        bool hash_2ebcaa6630ba8fd5;
        // offset: 0x1224, bitSize: 0x1
        bool perksenabled;
        // offset: 0x1225, bitSize: 0x1
        bool hash_33bc6781006ae83d;
        // offset: 0x1226, bitSize: 0x1
        bool hash_655d904d5995891f;
        // offset: 0x1227, bitSize: 0x1
        bool hash_6c21d8e8de53e9c3;
        // offset: 0x1228, bitSize: 0x1
        bool hash_2966662989c3484c;
        // offset: 0x1229, bitSize: 0x1
        bool allowmapscripting;
        // offset: 0x122a, bitSize: 0x1
        bool robotshield;
        // offset: 0x122b, bitSize: 0x1
        bool hash_62e3e33ec68db92f;
        // offset: 0x122c, bitSize: 0x1
        bool hash_2a76bf462f4c2f50;
        // offset: 0x122d, bitSize: 0x1
        bool disableattachments;
        // offset: 0x122e, bitSize: 0x1
        bool disablecompass;
        // offset: 0x122f, bitSize: 0x1
        bool disableweapondrop;
        // offset: 0x1230, bitSize: 0x1
        bool escalationenabled;
        // offset: 0x1231, bitSize: 0x1
        bool hash_a564dde6ee3c657;
        // offset: 0x1232, bitSize: 0x1
        bool hash_7b8284382bffc197;
        // offset: 0x1233, bitSize: 0x1
        bool hash_25368755636c91a4;
        // offset: 0x1234, bitSize: 0x1
        bool disableclassselection;
        // offset: 0x1235, bitSize: 0x1
        bool hash_290721f8deb6ef5e;
        // offset: 0x1236, bitSize: 0x1
        bool hash_48670d9509071424;
        // offset: 0x1237, bitSize: 0x1
        bool autoteambalance;
        // offset: 0x1238, bitSize: 0x1
        bool hash_4bdd1bd86b610871;
        // offset: 0x1239, bitSize: 0x1
        bool hash_69df7093cd32f107;
        // offset: 0x123a, bitSize: 0x1
        bool hash_7c0acf14fb1f4080;
        // offset: 0x123b, bitSize: 0x1
        bool allowplayofthematch;
        // offset: 0x123c, bitSize: 0x1
        bool allowprone;
        // offset: 0x123d, bitSize: 0x1
        bool scoreresetondeath;
        // offset: 0x123e, bitSize: 0x1
        bool hash_452a45e599d3a575;
        // offset: 0x123f, bitSize: 0x1
        bool playerforcerespawn;
        // offset: 0x1240, bitSize: 0x1
        bool hash_7098f146a35b8468;
        // offset: 0x1241, bitSize: 0x1
        bool multibomb;
        // offset: 0x1242, bitSize: 0x1
        bool hash_4dd37bf6da89131;
        // offset: 0x1243, bitSize: 0x1
        bool hash_29fd164e7ff1abb0;
        // offset: 0x1244, bitSize: 0x1
        bool hash_104f124f56f0f20a;
        // offset: 0x1245, bitSize: 0x1
        bool hash_2560dae45cc112e3;
        // offset: 0x1246, bitSize: 0x1
        bool hash_23b110691971b537;
        // offset: 0x1247, bitSize: 0x1
        bool deathcircle;
        // offset: 0x1248, bitSize: 0x1
        bool hash_4669425278875e14;
        // offset: 0x1249, bitSize: 0x1
        bool boastenabled;
        // offset: 0x124a, bitSize: 0x1
        bool hash_3513cf8b4287cdd7;
        // offset: 0x124b, bitSize: 0x1
        bool hash_72a2919d2ac65850;
        // offset: 0x124c, bitSize: 0x1
        bool hash_59272f59f19c342a;
        // offset: 0x124d, bitSize: 0x1
        bool hash_429521a79f75a327;
        // offset: 0x124e, bitSize: 0x1
        bool hash_69f74281cacb8a0f;
        // offset: 0x124f, bitSize: 0x1
        bool hash_5d65f5abcdad24fe;
        // offset: 0x1250, bitSize: 0x1
        bool deathpointloss;
        // offset: 0x1251, bitSize: 0x1
        bool disablecustomcac;
        // offset: 0x1252, bitSize: 0x1
        bool hash_1260b639348098e3;
        // offset: 0x1253, bitSize: 0x1
        bool rebootplayers;
        // offset: 0x1254, bitSize: 0x1
        bool oldschoolmode;
        // offset: 0x1255, bitSize: 0x1
        bool hash_4238acad9fa0f317;
        // offset: 0x1256, bitSize: 0x1
        bool allowfinalkillcam;
        // offset: 0x1257, bitSize: 0x1
        bool allowspectating;
        // offset: 0x1258, bitSize: 0x1
        bool usabledynents;
        // offset: 0x1259, bitSize: 0x1
        bool playintrocinematics;
        // offset: 0x125a, bitSize: 0x1
        bool hash_564289af24e283db;
        // offset: 0x125b, bitSize: 0x1
        bool hash_11e1a0adebdab01a;
        // offset: 0x125c, bitSize: 0x1
        bool hash_47df56af71e4df3;
        // offset: 0x125d, bitSize: 0x1
        bool hash_282689f7ec6d7d32;
        // offset: 0x125e, bitSize: 0x1
        bool hash_4ce6b119f5979182;
        // offset: 0x125f, bitSize: 0x1
        bool spawnselectenabled;
        // offset: 0x1260, bitSize: 0x1
        bool loadoutkillstreaksenabled;
        // offset: 0x1261, bitSize: 0x1
        bool pregameitemvoteenabled;
        // offset: 0x1262, bitSize: 0x1
        bool hash_38d6e4d91bbc82ee;
        // offset: 0x1263, bitSize: 0x1
        bool hash_5684ea266d45be15;
        // offset: 0x1264, bitSize: 0x1
        bool hash_7f273e367f26254;
        // offset: 0x1265, bitSize: 0x1
        bool hash_65c535aa5198d01d;
        // offset: 0x1266, bitSize: 0x1
        bool disallowprone;
        // offset: 0x1267, bitSize: 0x1
        bool hash_3cc3acd830a8eef;
        // offset: 0x1268, bitSize: 0x1
        bool moveplayers;
        // offset: 0x1269, bitSize: 0x1
        bool hash_6945105793e31c56;
        // offset: 0x126a, bitSize: 0x1
        bool disabletacinsert;
        // offset: 0x126b, bitSize: 0x1
        bool voipdeadhearallliving;
        // offset: 0x126c, bitSize: 0x1
        bool hash_4ca06c610b5d53bd;
        // offset: 0x126d, bitSize: 0x1
        bool killstreaksgivegamescore;
        // offset: 0x126e, bitSize: 0x1
        bool hash_1cc3f98086d6f5dd;
        // offset: 0x126f, bitSize: 0x1
        bool flagcapturerateincrease;
        // offset: 0x1270, bitSize: 0x1
        bool use_doors;
        // offset: 0x1271, bitSize: 0x1
        bool pvponly;
        // offset: 0x1272, bitSize: 0x1
        bool forwardspawnteamspecificspawns;
        // offset: 0x1273, bitSize: 0x1
        bool hash_50b56d2635cbb74b;
        // offset: 0x1274, bitSize: 0x1
        bool hash_68fd4f67ea4b4ff8;
        // offset: 0x1275, bitSize: 0x1
        bool forwardspawntakesdamage;
        // offset: 0x1276, bitSize: 0x1
        bool allowingameteamchange;
        // offset: 0x1277, bitSize: 0x1
        bool hash_297b69789a6283b4;
        // offset: 0x1278, bitSize: 0x1
        bool deathzones;
        // offset: 0x1279, bitSize: 0x1
        bool classicmode;
        // offset: 0x127a, bitSize: 0x1
        bool voipdeadhearteamliving;
        // offset: 0x127b, bitSize: 0x1
        bool hash_51f7292117d41790;
        // offset: 0x127c, bitSize: 0x1
        bool capdecay;
        // offset: 0x127d, bitSize: 0x1
        bool hash_7bcb76b8a52c35e;
        // offset: 0x127e, bitSize: 0x1
        bool hash_5c90286f1514c76;
        // offset: 0x127f, bitSize: 0x1
        bool hash_b87383d5497a826;
        // offset: 0x1280, bitSize: 0x1
        bool voipeveryonehearseveryone;
        // offset: 0x1281, bitSize: 0x1
        bool hash_460af55ecefb11f;
        // offset: 0x1282, bitSize: 0x1
        bool hash_4f4a73f236278ba8;
        // offset: 0x1283, bitSize: 0x1
        bool hash_5f76e2d55ad861ed;
        // offset: 0x1284, bitSize: 0x1
        bool laststandfinishing;
        // offset: 0x1285, bitSize: 0x1
        bool hash_201c1769d32b30d3;
    };

    // root: bitSize: 0x1288, members: 1

    // offset: 0x0, bitSize: 0x1288(0x251 Byte(s))
    gametypesettings gametypesettings;
};

version hash_4c99a777c36743c1 {
    // enums ..... 0 (0x0)
    // structs ... 2 (0x2)
    // header bit size .. 4944 (0x1350)
    // header byte size . 618 (0x26a)

    // bitSize: 0x12a0, members: 557
    struct gametypesettings {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> timelimit;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_25740f686a5cfc7e;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        uint:4 playerkillsmax;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_129fca5e3a00477f;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_444634d99df7a661;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperdeath;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:2 forceradar;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkill;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playersprinttime;
        // offset: 0x58, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> capturetime;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleroundswon;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_9fe0e2b1a7f556;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayerdefensive;
        // offset: 0x88, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_35e9fc8eee6881e0;
        // offset: 0x90, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_613785a993624133;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandrevivehealth;
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierdestroytime;
        // offset: 0xc0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostattackhelicopter;
        // offset: 0xc8, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_6024ee628431415;
        // offset: 0xd8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostbow;
        // offset: 0xe0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostuav;
        // offset: 0xe8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperweaponkill;
        // offset: 0xf0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_722d8dafb62ce7fe;
        // offset: 0x108, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_68b825c95acb9218;
        // offset: 0x118, bitSize: 0x8(0x1 Byte(s))
        uint:6 maxteamplayers;
        // offset: 0x120, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandhealth;
        // offset: 0x128, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6b2754246df1bc7c;
        // offset: 0x138, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_46f0ae82f5c2f7d4;
        // offset: 0x148, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> maxusers;
        // offset: 0x158, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_1ca4d65346568642;
        // offset: 0x168, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1d77a77db928f695;
        // offset: 0x178, bitSize: 0x8(0x1 Byte(s))
        uint:4 draftrequiredclients;
        // offset: 0x180, bitSize: 0x8(0x1 Byte(s))
        uint:3 friendlyfiretype;
        // offset: 0x188, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7fee0559953eec6;
        // offset: 0x1a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_28005bb885acabc3;
        // offset: 0x1b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4725de6afe873b87;
        // offset: 0x1c0, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_16184f2fd4014b39;
        // offset: 0x1c8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspermeleekill;
        // offset: 0x1d0, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_51f121252f1d8c7f;
        // offset: 0x1e0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_32da91b78e54e7b5;
        // offset: 0x1e8, bitSize: 0x8(0x1 Byte(s))
        uint:6 preroundperiod;
        // offset: 0x1f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_56f6d77da3124af2;
        // offset: 0x200, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowertimefactor;
        // offset: 0x208, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_62a4fd40810cb61;
        // offset: 0x210, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_56a31bddd92a64dc;
        // offset: 0x218, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> laststandrevivetime;
        // offset: 0x220, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_429d353f0be087a5;
        // offset: 0x238, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpunishcount;
        // offset: 0x240, bitSize: 0x8(0x1 Byte(s))
        uint:7 maxplayers;
        // offset: 0x248, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53fd9a3e9a0e78e1;
        // offset: 0x258, bitSize: 0x20(0x4 Byte(s))
        int forwardspawnhealth;
        // offset: 0x278, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5598d36d6b224c9a;
        // offset: 0x288, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnteamkilledpenalty;
        // offset: 0x290, bitSize: 0x8(0x1 Byte(s))
        uint:3 ballcount;
        // offset: 0x298, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_6ae29c8144cb7659;
        // offset: 0x2a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c82ffb472a21cac;
        // offset: 0x2b0, bitSize: 0x8(0x1 Byte(s))
        uint:3 gunselection;
        // offset: 0x2b8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_53c1e74b2d385c17;
        // offset: 0x2d0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_17cc26f74ef911e0;
        // offset: 0x2d8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_67d54bbc52811921;
        // offset: 0x2e0, bitSize: 0x8(0x1 Byte(s))
        fixed<5,2> hash_1614b9cbe0df6f75;
        // offset: 0x2e8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_35104d2d5fd22ce7;
        // offset: 0x300, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1441f7ad44e1cfd4;
        // offset: 0x308, bitSize: 0x8(0x1 Byte(s))
        uint:7 killstreakdeathpenaltyindividualearn;
        // offset: 0x310, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_c0beb1e5a80c25c;
        // offset: 0x318, bitSize: 0x8(0x1 Byte(s))
        uint:5 prematchrequirement;
        // offset: 0x320, bitSize: 0x8(0x1 Byte(s))
        uint:3 spectatetype;
        // offset: 0x328, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> hash_57fe6337297bcce9;
        // offset: 0x330, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_1df445b9d1af641f;
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:2 randomobjectivelocations;
        // offset: 0x340, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_55db4a8546a13c79;
        // offset: 0x358, bitSize: 0x8(0x1 Byte(s))
        uint:5 roundwinlimit;
        // offset: 0x360, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_ecf2124e9108fc4;
        // offset: 0x368, bitSize: 0x10(0x2 Byte(s))
        uint:10 antiboostdistance;
        // offset: 0x378, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_115a3410d9dbf98d;
        // offset: 0x388, bitSize: 0x10(0x2 Byte(s))
        uint:15 roundscorelimit;
        // offset: 0x398, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_320a5028d10f305a;
        // offset: 0x3b0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> hash_154db5a1b2e9d757;
        // offset: 0x3c0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> bulletdamagescalar;
        // offset: 0x3c8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1df1e1139a1a4eb8;
        // offset: 0x3e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_79c708d50a12e336;
        // offset: 0x3f0, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostontimeamount;
        // offset: 0x3f8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> defusetime;
        // offset: 0x400, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> teamkillreducedpenalty;
        // offset: 0x408, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxallocation;
        // offset: 0x410, bitSize: 0x8(0x1 Byte(s))
        uint:4 carryscore;
        // offset: 0x418, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c8636144ad47ac9;
        // offset: 0x428, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53cd45b387951ca1;
        // offset: 0x438, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_6e49ce7bbe6d3f1f;
        // offset: 0x440, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> killeventscoremultiplier;
        // offset: 0x448, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_2efff808b2701aa5;
        // offset: 0x458, bitSize: 0x8(0x1 Byte(s))
        uint:6 ticketslostontimeinterval;
        // offset: 0x460, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartexplosivedelay;
        // offset: 0x468, bitSize: 0x8(0x1 Byte(s))
        uint:2 cleandepositrotation;
        // offset: 0x470, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_21754b274494502e;
        // offset: 0x480, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_1311b008d2f6dbc1;
        // offset: 0x490, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_5f7c18fecb2a1a44;
        // offset: 0x4a0, bitSize: 0x8(0x1 Byte(s))
        uint:7 idleflagresettime;
        // offset: 0x4a8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowergainfactor;
        // offset: 0x4b0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1f65f0a6f0eb3110;
        // offset: 0x4c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2a02614601829003;
        // offset: 0x4d8, bitSize: 0x8(0x1 Byte(s))
        uint:4 setbacks;
        // offset: 0x4e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1db05f3e34ccaaaf;
        // offset: 0x4f0, bitSize: 0x20(0x4 Byte(s))
        int hash_6b808ab4016cb1e1;
        // offset: 0x510, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1efac5fcdfa4f;
        // offset: 0x520, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1eeac5fcdf89c;
        // offset: 0x530, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f1ac5fcdfdb5;
        // offset: 0x540, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f0ac5fcdfc02;
        // offset: 0x550, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1ebac5fcdf383;
        // offset: 0x560, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_20a83071685f7bd9;
        // offset: 0x578, bitSize: 0x10(0x2 Byte(s))
        fixed<12,4> trm_maxheight;
        // offset: 0x588, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_2b88c6ac064e9c59;
        // offset: 0x590, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayofthematchevents;
        // offset: 0x598, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostwarmachine;
        // offset: 0x5a0, bitSize: 0x10(0x2 Byte(s))
        uint:15 scorelimit;
        // offset: 0x5b0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> cratecapturetime;
        // offset: 0x5b8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4a6ef8940f4cbb83;
        // offset: 0x5c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eeb8cb5c84b1939;
        // offset: 0x5d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eba3289161fd45f;
        // offset: 0x5e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_22c53ddb2cb67f13;
        // offset: 0x5f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_9c266bdf9cad7fa;
        // offset: 0x600, bitSize: 0x8(0x1 Byte(s))
        uint:3 killpointsinenemyprotectedzone;
        // offset: 0x608, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6e2b8452b08a545c;
        // offset: 0x610, bitSize: 0x10(0x2 Byte(s))
        uint:10 playermaxhealth;
        // offset: 0x620, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1833c853bfe78ffc;
        // offset: 0x628, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_5e8818f69d557ad2;
        // offset: 0x640, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_3e13b420d6773b4c;
        // offset: 0x648, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_718b497c5205e74b;
        // offset: 0x658, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostgunship;
        // offset: 0x660, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_42b840c668fd2c85;
        // offset: 0x670, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_44f0b1c6b2d3b6f8;
        // offset: 0x680, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5dc620c6c0919d82;
        // offset: 0x690, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2aea36c6a4135574;
        // offset: 0x6a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_32c16dc6a8490e81;
        // offset: 0x6b0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_66a7d866327081eb;
        // offset: 0x6b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5f116b8cfbdbc3fe;
        // offset: 0x6c8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsforsurvivalbonus;
        // offset: 0x6d0, bitSize: 0x190(0x32 Byte(s)), array:0x32(hti:0xffff)
        uint:5 maxuniquerolesperteam[50];
        // offset: 0x860, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_7adb62a64c6d963;
        // offset: 0x868, bitSize: 0x8(0x1 Byte(s))
        uint:3 objectivepingtime;
        // offset: 0x870, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_271177b8b4cfcf15;
        // offset: 0x888, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamkillspawndelay;
        // offset: 0x890, bitSize: 0x8(0x1 Byte(s))
        uint:8 carrierarmor;
        // offset: 0x898, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_51a2ab391c340e03;
        // offset: 0x8b0, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostondeath;
        // offset: 0x8b8, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_47d4aa0161d78e15;
        // offset: 0x8c0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostremotemissile;
        // offset: 0x8c8, bitSize: 0x10(0x2 Byte(s))
        uint:9 carriermovespeed;
        // offset: 0x8d8, bitSize: 0x8(0x1 Byte(s))
        uint:5 boottime;
        // offset: 0x8e0, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_652bc8c2577ec788;
        // offset: 0x8f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_72852fc1d977c3a0;
        // offset: 0x900, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_314c2f7312bde4af;
        // offset: 0x908, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_5d5f4ee35c9977c7;
        // offset: 0x910, bitSize: 0x8(0x1 Byte(s))
        uint:3 roundstartfriendlyfiretype;
        // offset: 0x918, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagdecaytime;
        // offset: 0x920, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_76f686986e1a58b;
        // offset: 0x930, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_vs_bots;
        // offset: 0x938, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_26b08269156ca0e5;
        // offset: 0x940, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamnumlives;
        // offset: 0x948, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> planttime;
        // offset: 0x950, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6141cddd96ac214e;
        // offset: 0x958, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnprotectiontime;
        // offset: 0x960, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7353bbc24d72ec59;
        // offset: 0x970, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_573034b3252cb4e3;
        // offset: 0x988, bitSize: 0x10(0x2 Byte(s))
        uint:10 inactivitykick;
        // offset: 0x998, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspersecondarykill;
        // offset: 0x9a0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team3;
        // offset: 0x9a8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team4;
        // offset: 0x9b0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team5;
        // offset: 0x9b8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team6;
        // offset: 0x9c0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team7;
        // offset: 0x9c8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team8;
        // offset: 0x9d0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team9;
        // offset: 0x9d8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerhealthregentime;
        // offset: 0x9e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5d40d1f9fb7f;
        // offset: 0x9f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5c40d1f9f9cc;
        // offset: 0xa00, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5f40d1f9fee5;
        // offset: 0xa10, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5e40d1f9fd32;
        // offset: 0xa20, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5940d1f9f4b3;
        // offset: 0xa30, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4f00f3f568c284af;
        // offset: 0xa40, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7f190c8839d3f05c;
        // offset: 0xa50, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_3a4691a853585241;
        // offset: 0xa58, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> destroytime;
        // offset: 0xa68, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagrespawntime;
        // offset: 0xa70, bitSize: 0x8(0x1 Byte(s))
        uint:2 shutdowndamage;
        // offset: 0xa78, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> gameadvertisementruletimeleft;
        // offset: 0xa80, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_6a48bbfb703d5c9c;
        // offset: 0xa88, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_239b391c77ebf8c1;
        // offset: 0xa90, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7c33e5bebaf05afb;
        // offset: 0xaa0, bitSize: 0x10(0x2 Byte(s))
        uint:11 objectivehealth;
        // offset: 0xab0, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnsuicidepenalty;
        // offset: 0xab8, bitSize: 0x8(0x1 Byte(s))
        uint:2 robotspeed;
        // offset: 0xac0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_467be34402dad274;
        // offset: 0xac8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_68e3f54e05f57d85;
        // offset: 0xad0, bitSize: 0x8(0x1 Byte(s))
        uint:7 servermsec;
        // offset: 0xad8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_410c5c7c1e60b534;
        // offset: 0xae0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_212cc2b5b360189c;
        // offset: 0xae8, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_552338718ec6d2df;
        // offset: 0xaf0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1c0040943c216593;
        // offset: 0xaf8, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxplayereventsperminute;
        // offset: 0xb08, bitSize: 0x10(0x2 Byte(s))
        uint:10 leaderbonus;
        // offset: 0xb18, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_5c918cbf75e16116;
        // offset: 0xb20, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_51e989796c38cd87;
        // offset: 0xb28, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostnapalm;
        // offset: 0xb30, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_119bd2704c238e5;
        // offset: 0xb48, bitSize: 0x8(0x1 Byte(s))
        uint:2 enemycarriervisible;
        // offset: 0xb50, bitSize: 0x10(0x2 Byte(s))
        uint:9 autodestroytime;
        // offset: 0xb60, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkillconfirmed;
        // offset: 0xb68, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4e4352bd1aaeedfe;
        // offset: 0xb70, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_507e1eb7f297d872;
        // offset: 0xb80, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_342835495fca42bb;
        // offset: 0xb90, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7cada6c0936f259b;
        // offset: 0xba0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> waverespawndelay;
        // offset: 0xba8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1974892bc7266bab;
        // offset: 0xbb8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_567db38226658dbf;
        // offset: 0xbc0, bitSize: 0x8(0x1 Byte(s))
        uint:6 prematchperiod;
        // offset: 0xbc8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostsentry;
        // offset: 0xbd0, bitSize: 0x8(0x1 Byte(s))
        uint:6 teamkillscore;
        // offset: 0xbd8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_102aeddad113f70c;
        // offset: 0xbe0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_4635a26c94b56725;
        // offset: 0xbe8, bitSize: 0x8(0x1 Byte(s))
        uint:3 platooncount;
        // offset: 0xbf0, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierhealth;
        // offset: 0xc10, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_71da377e373bc755;
        // offset: 0xc28, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_38a8f601ab8388d0;
        // offset: 0xc38, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarykill;
        // offset: 0xc40, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperheadshot;
        // offset: 0xc48, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_75ff4383212c5111;
        // offset: 0xc58, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1908ad844e6c3e37;
        // offset: 0xc60, bitSize: 0x8(0x1 Byte(s))
        uint:4 pregameitemmaxvotes;
        // offset: 0xc68, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_50029ecff5e7d383;
        // offset: 0xc78, bitSize: 0x8(0x1 Byte(s))
        uint:7 playernumlives;
        // offset: 0xc80, bitSize: 0x8(0x1 Byte(s))
        uint:2 infectionmode;
        // offset: 0xc88, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleround;
        // offset: 0xc90, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7d53c8bab3db8122;
        // offset: 0xca0, bitSize: 0x8(0x1 Byte(s))
        fixed<7,1> incrementalspawndelay;
        // offset: 0xca8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_allies;
        // offset: 0xcb0, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxsuicidesbeforekick;
        // offset: 0xcb8, bitSize: 0x8(0x1 Byte(s))
        uint:7 gameadvertisementrulescorepercent;
        // offset: 0xcc0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_3e76ce42036815cc;
        // offset: 0xcd0, bitSize: 0x10(0x2 Byte(s))
        int:10 hash_3ccd8e1bf3864fa1;
        // offset: 0xce0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_130d127406ab976e;
        // offset: 0xcf0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostairpatrol;
        // offset: 0xcf8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostcuav;
        // offset: 0xd00, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostrcxd;
        // offset: 0xd08, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostvtol;
        // offset: 0xd10, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_40c4b447a58a7da4;
        // offset: 0xd20, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> hash_47e9736d437be7c8;
        // offset: 0xd28, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1ea82b1edff2a13b;
        // offset: 0xd38, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c31c3f19402e1f;
        // offset: 0xd48, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandtimer;
        // offset: 0xd50, bitSize: 0x8(0x1 Byte(s))
        uint:6 reboottime;
        // offset: 0xd58, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscorepercleandeposit;
        // offset: 0xd60, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_2081d79c44b2cefb;
        // offset: 0xd78, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6773166f56896564;
        // offset: 0xd88, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1725e90b73841702;
        // offset: 0xd98, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_273d049136c76afa;
        // offset: 0xda8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_2849b6cf7317ab1b;
        // offset: 0xdb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5a4fde688cbf1a01;
        // offset: 0xdc0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c72ac3d026ca4eb;
        // offset: 0xdd0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_83f11b8abac148f;
        // offset: 0xdd8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_22fa97d05461a3e8;
        // offset: 0xdf0, bitSize: 0x8(0x1 Byte(s))
        uint:4 pickuptime;
        // offset: 0xdf8, bitSize: 0x10(0x2 Byte(s))
        fixed<14,7> hash_451245a24412d90f;
        // offset: 0xe08, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3d5a87878a3bef28;
        // offset: 0xe18, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_552467c143123c1c;
        // offset: 0xe20, bitSize: 0x20(0x4 Byte(s))
        int hash_64727525f5957d06;
        // offset: 0xe40, bitSize: 0x20(0x4 Byte(s))
        int hash_1f3285ddee84620c;
        // offset: 0xe60, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_2596f9e3d6e26ac9;
        // offset: 0xe68, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostchoppergunner;
        // offset: 0xe70, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_3767386c050fa0eb;
        // offset: 0xe78, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerrespawndelay;
        // offset: 0xe80, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_34ee1a1a574eaa4c;
        // offset: 0xe90, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> spawntraptriggertime;
        // offset: 0xe98, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_26ff1d48be83e46c;
        // offset: 0xeb0, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayeroffensive;
        // offset: 0xeb8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_527f80b77f20b8c8;
        // offset: 0xec8, bitSize: 0x8(0x1 Byte(s))
        uint:2 allowhitmarkers;
        // offset: 0xed0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_d8215d30d36fa59;
        // offset: 0xee8, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_67ee1d8d7938baa1;
        // offset: 0xef8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2c02a63d2c336b30;
        // offset: 0xf08, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxobjectiveeventsperminute;
        // offset: 0xf18, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_47dd11084763c671;
        // offset: 0xf28, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4201d2890785fb14;
        // offset: 0xf38, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarygrenadekill;
        // offset: 0xf40, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team10;
        // offset: 0xf48, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostcarepackage;
        // offset: 0xf50, bitSize: 0x8(0x1 Byte(s))
        uint:7 bonuslivesforcapturingzone;
        // offset: 0xf58, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_39d008c4c2044bc7;
        // offset: 0xf68, bitSize: 0x8(0x1 Byte(s))
        uint:7 startplayers;
        // offset: 0xf70, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_7d590533364efa87;
        // offset: 0xf78, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_252e760b41f3d94a;
        // offset: 0xf80, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartkillstreakdelay;
        // offset: 0xf88, bitSize: 0x8(0x1 Byte(s))
        uint:5 totalkillsmax;
        // offset: 0xf90, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundswitch;
        // offset: 0xf98, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerobjectiveheldrespawndelay;
        // offset: 0xfa0, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpenalty;
        // offset: 0xfa8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_18bdaa4b00863e9d;
        // offset: 0xfb0, bitSize: 0x8(0x1 Byte(s))
        uint:5 weaponcount;
        // offset: 0xfb8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1706d4b546538286;
        // offset: 0xfd0, bitSize: 0x8(0x1 Byte(s))
        uint:7 weapontimer;
        // offset: 0xfd8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> overtimetimelimit;
        // offset: 0xfe8, bitSize: 0x8(0x1 Byte(s))
        uint:7 cleandepositonlinetime;
        // offset: 0xff0, bitSize: 0x8(0x1 Byte(s))
        fixed<7,3> hash_4c7c8c4bd1b2a58b;
        // offset: 0xff8, bitSize: 0x8(0x1 Byte(s))
        uint:7 drafttime;
        // offset: 0x1000, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_ed89addfaaafe48;
        // offset: 0x1008, bitSize: 0x8(0x1 Byte(s))
        uint:7 objectivespawntime;
        // offset: 0x1010, bitSize: 0x8(0x1 Byte(s))
        uint:2 killcammode;
        // offset: 0x1018, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> killcamtime;
        // offset: 0x1028, bitSize: 0x8(0x1 Byte(s))
        uint:4 throwscore;
        // offset: 0x1030, bitSize: 0x8(0x1 Byte(s))
        uint:4 deposittime;
        // offset: 0x1038, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extratime;
        // offset: 0x1048, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_54d908d6273c8893;
        // offset: 0x1058, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6269eb986d22cd37;
        // offset: 0x1060, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreequipmentpowertimefactor;
        // offset: 0x1068, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostarmor;
        // offset: 0x1070, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_36ea712d503b054c;
        // offset: 0x1088, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamcount;
        // offset: 0x1090, bitSize: 0x20(0x4 Byte(s))
        int hash_7f38d88521da4c79;
        // offset: 0x10b0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_24c718cc0c526c38;
        // offset: 0x10b8, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundlimit;
        // offset: 0x10c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_531cc9c63ae86a93;
        // offset: 0x10d0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostartillery;
        // offset: 0x10d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_b30022a9302a5a6;
        // offset: 0x10e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_25d72112144c5ea0;
        // offset: 0x10f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_39cfd81268504039;
        // offset: 0x1108, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_208071125a2b0b0b;
        // offset: 0x1118, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_52ef5b12764c8139;
        // offset: 0x1128, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4bf2241272d06bec;
        // offset: 0x1138, bitSize: 0x8(0x1 Byte(s))
        uint:2 charactercustomization;
        // offset: 0x1140, bitSize: 0x20(0x4 Byte(s))
        int hash_af4ad3316f0ded6;
        // offset: 0x1160, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_437a986f8d24d7eb;
        // offset: 0x1168, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_16182516e10d0250;
        // offset: 0x1180, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_axis;
        // offset: 0x1188, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7344dfa399020a06;
        // offset: 0x11a0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6e2abf2cc40e03f1;
        // offset: 0x11a8, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkilldenied;
        // offset: 0x11b0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> bombtimer;
        // offset: 0x11c0, bitSize: 0x1
        bool delayplayer;
        // offset: 0x11c1, bitSize: 0x1
        bool hash_196e997a082443a9;
        // offset: 0x11c2, bitSize: 0x1
        bool voipdeadchatwithdead;
        // offset: 0x11c3, bitSize: 0x1
        bool voipdeadchatwithteam;
        // offset: 0x11c4, bitSize: 0x1
        bool hash_729930c3c52653c3;
        // offset: 0x11c5, bitSize: 0x1
        bool useembleminsteadoffactionicon;
        // offset: 0x11c6, bitSize: 0x1
        bool draftenabled;
        // offset: 0x11c7, bitSize: 0x1
        bool hash_3a15393c2e90e121;
        // offset: 0x11c8, bitSize: 0x1
        bool hash_1d708093c2664515;
        // offset: 0x11c9, bitSize: 0x1
        bool droppedtagrespawn;
        // offset: 0x11ca, bitSize: 0x1
        bool hash_1e71b5ce1cd845b3;
        // offset: 0x11cb, bitSize: 0x1
        bool hash_25aaa9a29a90534c;
        // offset: 0x11cc, bitSize: 0x1
        bool voipkillershearvictim;
        // offset: 0x11cd, bitSize: 0x1
        bool hash_7c0dcff6ffb1e348;
        // offset: 0x11ce, bitSize: 0x1
        bool hash_4091f2d0019b1f4a;
        // offset: 0x11cf, bitSize: 0x1
        bool deathcirclerespawn;
        // offset: 0x11d0, bitSize: 0x1
        bool hash_2683a105198a7407;
        // offset: 0x11d1, bitSize: 0x1
        bool presetclassesperteam;
        // offset: 0x11d2, bitSize: 0x1
        bool hash_361f7fe066281093;
        // offset: 0x11d3, bitSize: 0x1
        bool hash_232892d3b0a6240c;
        // offset: 0x11d4, bitSize: 0x1
        bool bot_autofill_allies;
        // offset: 0x11d5, bitSize: 0x1
        bool hash_2c55a3723cd9fdf9;
        // offset: 0x11d6, bitSize: 0x1
        bool hash_5c57222bb95a06cb;
        // offset: 0x11d7, bitSize: 0x1
        bool hardcoremode;
        // offset: 0x11d8, bitSize: 0x1
        bool hash_135829cbab367329;
        // offset: 0x11d9, bitSize: 0x1
        bool hash_495b64bd935bf7b;
        // offset: 0x11da, bitSize: 0x1
        bool useitemspawns;
        // offset: 0x11db, bitSize: 0x1
        bool hash_77b7734750cd75e9;
        // offset: 0x11dc, bitSize: 0x1
        bool silentplant;
        // offset: 0x11dd, bitSize: 0x1
        bool hash_5711f3e42924a635;
        // offset: 0x11de, bitSize: 0x1
        bool drafteveryround;
        // offset: 0x11df, bitSize: 0x1
        bool timepauseswheninzone;
        // offset: 0x11e0, bitSize: 0x1
        bool hash_4b55d75b8d779e4;
        // offset: 0x11e1, bitSize: 0x1
        bool hash_549abfbb3665d526;
        // offset: 0x11e2, bitSize: 0x1
        bool scoreperplayer;
        // offset: 0x11e3, bitSize: 0x1
        bool ekiaresetondeath;
        // offset: 0x11e4, bitSize: 0x1
        bool kothmode;
        // offset: 0x11e5, bitSize: 0x1
        bool hash_62665aebde32c8ae;
        // offset: 0x11e6, bitSize: 0x1
        bool hash_18c053cae82c1167;
        // offset: 0x11e7, bitSize: 0x1
        bool hash_6cf5f53d1fbb1066;
        // offset: 0x11e8, bitSize: 0x1
        bool hash_3d23923f9c9757cd;
        // offset: 0x11e9, bitSize: 0x1
        bool decayprogress;
        // offset: 0x11ea, bitSize: 0x1
        bool playerqueuedrespawn;
        // offset: 0x11eb, bitSize: 0x1
        bool scorestreaksbarebones;
        // offset: 0x11ec, bitSize: 0x1
        bool cumulativeroundscores;
        // offset: 0x11ed, bitSize: 0x1
        bool hash_3ad2212223b76a72;
        // offset: 0x11ee, bitSize: 0x1
        bool voipdeadhearkiller;
        // offset: 0x11ef, bitSize: 0x1
        bool bot_autofill_team10;
        // offset: 0x11f0, bitSize: 0x1
        bool hash_6e6991561babdd7e;
        // offset: 0x11f1, bitSize: 0x1
        bool bot_autofill_axis;
        // offset: 0x11f2, bitSize: 0x1
        bool skiplaststand;
        // offset: 0x11f3, bitSize: 0x1
        bool hash_1f3825ba2a669400;
        // offset: 0x11f4, bitSize: 0x1
        bool usespawngroups;
        // offset: 0x11f5, bitSize: 0x1
        bool hash_b76e50c1202aa23;
        // offset: 0x11f6, bitSize: 0x1
        bool disablethirdpersonspectating;
        // offset: 0x11f7, bitSize: 0x1
        bool platoonassignment;
        // offset: 0x11f8, bitSize: 0x1
        bool hash_7daf08db0c451ad1;
        // offset: 0x11f9, bitSize: 0x1
        bool allowlaststandforactiveclients;
        // offset: 0x11fa, bitSize: 0x1
        bool hash_5cc3c32813d17039;
        // offset: 0x11fb, bitSize: 0x1
        bool allowbattlechatter;
        // offset: 0x11fc, bitSize: 0x1
        bool fowrevealenabled;
        // offset: 0x11fd, bitSize: 0x1
        bool hash_4e8cafe9a4470898;
        // offset: 0x11fe, bitSize: 0x1
        bool hash_7647d0e9a45eeca6;
        // offset: 0x11ff, bitSize: 0x1
        bool hash_3cd7f961322b6b7;
        // offset: 0x1200, bitSize: 0x1
        bool hash_3293bf384d3c1e2f;
        // offset: 0x1201, bitSize: 0x1
        bool hash_5fcc23190f135afe;
        // offset: 0x1202, bitSize: 0x1
        bool hash_35376812247cdc3;
        // offset: 0x1203, bitSize: 0x1
        bool disablecontracts;
        // offset: 0x1204, bitSize: 0x1
        bool hash_2b1f40bc711c41f3;
        // offset: 0x1205, bitSize: 0x1
        bool hash_75d44b1542e3edf9;
        // offset: 0x1206, bitSize: 0x1
        bool hash_5462586bdce0346e;
        // offset: 0x1207, bitSize: 0x1
        bool gameobjectscontestedmajoritywins;
        // offset: 0x1208, bitSize: 0x1
        bool hash_2f0beae14bf17810;
        // offset: 0x1209, bitSize: 0x1
        bool autoheal;
        // offset: 0x120a, bitSize: 0x1
        bool allowannouncer;
        // offset: 0x120b, bitSize: 0x1
        bool disallowaimslowdown;
        // offset: 0x120c, bitSize: 0x1
        bool hash_435c853b64e3175e;
        // offset: 0x120d, bitSize: 0x1
        bool hash_5538f8f7758641b4;
        // offset: 0x120e, bitSize: 0x1
        bool bot_autofill_team3;
        // offset: 0x120f, bitSize: 0x1
        bool bot_autofill_team4;
        // offset: 0x1210, bitSize: 0x1
        bool bot_autofill_team5;
        // offset: 0x1211, bitSize: 0x1
        bool bot_autofill_team6;
        // offset: 0x1212, bitSize: 0x1
        bool bot_autofill_team7;
        // offset: 0x1213, bitSize: 0x1
        bool bot_autofill_team8;
        // offset: 0x1214, bitSize: 0x1
        bool bot_autofill_team9;
        // offset: 0x1215, bitSize: 0x1
        bool hash_35e6177743dac957;
        // offset: 0x1216, bitSize: 0x1
        bool hash_14fd184091ff1af;
        // offset: 0x1217, bitSize: 0x1
        bool vehiclesenabled;
        // offset: 0x1218, bitSize: 0x1
        bool decaycapturedzones;
        // offset: 0x1219, bitSize: 0x1
        bool neutralzone;
        // offset: 0x121a, bitSize: 0x1
        bool boastallowcam;
        // offset: 0x121b, bitSize: 0x1
        bool hash_7cc354dd83013a47;
        // offset: 0x121c, bitSize: 0x1
        bool onlyheadshots;
        // offset: 0x121d, bitSize: 0x1
        bool competitivesettings;
        // offset: 0x121e, bitSize: 0x1
        bool flagcapturecondition;
        // offset: 0x121f, bitSize: 0x1
        bool hash_1ca94a3bd057f19f;
        // offset: 0x1220, bitSize: 0x1
        bool hash_4be46e952d54e9a2;
        // offset: 0x1221, bitSize: 0x1
        bool hash_1ebf97988141c498;
        // offset: 0x1222, bitSize: 0x1
        bool hash_25fa292c7fc561b8;
        // offset: 0x1223, bitSize: 0x1
        bool flagcanbeneutralized;
        // offset: 0x1224, bitSize: 0x1
        bool hash_241e17e13da23de2;
        // offset: 0x1225, bitSize: 0x1
        bool hash_6881c7cab0dcef39;
        // offset: 0x1226, bitSize: 0x1
        bool vehiclestimed;
        // offset: 0x1227, bitSize: 0x1
        bool pregamedraftenabled;
        // offset: 0x1228, bitSize: 0x1
        bool hash_6f03247bbcf52311;
        // offset: 0x1229, bitSize: 0x1
        bool hash_6143c4e1e18f08fd;
        // offset: 0x122a, bitSize: 0x1
        bool teamkillpointloss;
        // offset: 0x122b, bitSize: 0x1
        bool hash_322026c0342869d1;
        // offset: 0x122c, bitSize: 0x1
        bool hash_1e346fbfe02f1294;
        // offset: 0x122d, bitSize: 0x1
        bool hash_3724e6bfee03ce6e;
        // offset: 0x122e, bitSize: 0x1
        bool hash_497a2cbff8af4988;
        // offset: 0x122f, bitSize: 0x1
        bool hash_50776bbffc2b6c6d;
        // offset: 0x1230, bitSize: 0x1
        bool hash_55fc1cb09246fe30;
        // offset: 0x1231, bitSize: 0x1
        bool hash_1d5943e61e65eeae;
        // offset: 0x1232, bitSize: 0x1
        bool hash_656fd3c508d1d33e;
        // offset: 0x1233, bitSize: 0x1
        bool hash_29f3630e8e542a0a;
        // offset: 0x1234, bitSize: 0x1
        bool hash_c6a2e6c3e86125a;
        // offset: 0x1235, bitSize: 0x1
        bool hash_2ebcaa6630ba8fd5;
        // offset: 0x1236, bitSize: 0x1
        bool perksenabled;
        // offset: 0x1237, bitSize: 0x1
        bool hash_33bc6781006ae83d;
        // offset: 0x1238, bitSize: 0x1
        bool hash_655d904d5995891f;
        // offset: 0x1239, bitSize: 0x1
        bool hash_6c21d8e8de53e9c3;
        // offset: 0x123a, bitSize: 0x1
        bool hash_2966662989c3484c;
        // offset: 0x123b, bitSize: 0x1
        bool allowmapscripting;
        // offset: 0x123c, bitSize: 0x1
        bool robotshield;
        // offset: 0x123d, bitSize: 0x1
        bool hash_62e3e33ec68db92f;
        // offset: 0x123e, bitSize: 0x1
        bool hash_2a76bf462f4c2f50;
        // offset: 0x123f, bitSize: 0x1
        bool disableattachments;
        // offset: 0x1240, bitSize: 0x1
        bool disablecompass;
        // offset: 0x1241, bitSize: 0x1
        bool disableweapondrop;
        // offset: 0x1242, bitSize: 0x1
        bool escalationenabled;
        // offset: 0x1243, bitSize: 0x1
        bool hash_a564dde6ee3c657;
        // offset: 0x1244, bitSize: 0x1
        bool hash_7b8284382bffc197;
        // offset: 0x1245, bitSize: 0x1
        bool hash_25368755636c91a4;
        // offset: 0x1246, bitSize: 0x1
        bool disableclassselection;
        // offset: 0x1247, bitSize: 0x1
        bool hash_290721f8deb6ef5e;
        // offset: 0x1248, bitSize: 0x1
        bool hash_48670d9509071424;
        // offset: 0x1249, bitSize: 0x1
        bool autoteambalance;
        // offset: 0x124a, bitSize: 0x1
        bool hash_4bdd1bd86b610871;
        // offset: 0x124b, bitSize: 0x1
        bool hash_69df7093cd32f107;
        // offset: 0x124c, bitSize: 0x1
        bool hash_7c0acf14fb1f4080;
        // offset: 0x124d, bitSize: 0x1
        bool allowplayofthematch;
        // offset: 0x124e, bitSize: 0x1
        bool allowprone;
        // offset: 0x124f, bitSize: 0x1
        bool scoreresetondeath;
        // offset: 0x1250, bitSize: 0x1
        bool hash_452a45e599d3a575;
        // offset: 0x1251, bitSize: 0x1
        bool playerforcerespawn;
        // offset: 0x1252, bitSize: 0x1
        bool hash_7098f146a35b8468;
        // offset: 0x1253, bitSize: 0x1
        bool multibomb;
        // offset: 0x1254, bitSize: 0x1
        bool hash_4dd37bf6da89131;
        // offset: 0x1255, bitSize: 0x1
        bool hash_29fd164e7ff1abb0;
        // offset: 0x1256, bitSize: 0x1
        bool hash_104f124f56f0f20a;
        // offset: 0x1257, bitSize: 0x1
        bool hash_2560dae45cc112e3;
        // offset: 0x1258, bitSize: 0x1
        bool hash_50a46f60312cf53c;
        // offset: 0x1259, bitSize: 0x1
        bool hash_23b110691971b537;
        // offset: 0x125a, bitSize: 0x1
        bool deathcircle;
        // offset: 0x125b, bitSize: 0x1
        bool hash_4669425278875e14;
        // offset: 0x125c, bitSize: 0x1
        bool boastenabled;
        // offset: 0x125d, bitSize: 0x1
        bool hash_3513cf8b4287cdd7;
        // offset: 0x125e, bitSize: 0x1
        bool hash_72a2919d2ac65850;
        // offset: 0x125f, bitSize: 0x1
        bool hash_59272f59f19c342a;
        // offset: 0x1260, bitSize: 0x1
        bool hash_429521a79f75a327;
        // offset: 0x1261, bitSize: 0x1
        bool hash_69f74281cacb8a0f;
        // offset: 0x1262, bitSize: 0x1
        bool hash_5d65f5abcdad24fe;
        // offset: 0x1263, bitSize: 0x1
        bool deathpointloss;
        // offset: 0x1264, bitSize: 0x1
        bool disablecustomcac;
        // offset: 0x1265, bitSize: 0x1
        bool hash_1260b639348098e3;
        // offset: 0x1266, bitSize: 0x1
        bool rebootplayers;
        // offset: 0x1267, bitSize: 0x1
        bool oldschoolmode;
        // offset: 0x1268, bitSize: 0x1
        bool hash_4238acad9fa0f317;
        // offset: 0x1269, bitSize: 0x1
        bool allowfinalkillcam;
        // offset: 0x126a, bitSize: 0x1
        bool allowspectating;
        // offset: 0x126b, bitSize: 0x1
        bool usabledynents;
        // offset: 0x126c, bitSize: 0x1
        bool playintrocinematics;
        // offset: 0x126d, bitSize: 0x1
        bool hash_564289af24e283db;
        // offset: 0x126e, bitSize: 0x1
        bool hash_11e1a0adebdab01a;
        // offset: 0x126f, bitSize: 0x1
        bool hash_7379657f823bfef9;
        // offset: 0x1270, bitSize: 0x1
        bool hash_47df56af71e4df3;
        // offset: 0x1271, bitSize: 0x1
        bool hash_282689f7ec6d7d32;
        // offset: 0x1272, bitSize: 0x1
        bool hash_4ce6b119f5979182;
        // offset: 0x1273, bitSize: 0x1
        bool spawnselectenabled;
        // offset: 0x1274, bitSize: 0x1
        bool loadoutkillstreaksenabled;
        // offset: 0x1275, bitSize: 0x1
        bool pregameitemvoteenabled;
        // offset: 0x1276, bitSize: 0x1
        bool hash_38d6e4d91bbc82ee;
        // offset: 0x1277, bitSize: 0x1
        bool hash_5684ea266d45be15;
        // offset: 0x1278, bitSize: 0x1
        bool hash_7f273e367f26254;
        // offset: 0x1279, bitSize: 0x1
        bool hash_65c535aa5198d01d;
        // offset: 0x127a, bitSize: 0x1
        bool disallowprone;
        // offset: 0x127b, bitSize: 0x1
        bool hash_3cc3acd830a8eef;
        // offset: 0x127c, bitSize: 0x1
        bool moveplayers;
        // offset: 0x127d, bitSize: 0x1
        bool hash_6945105793e31c56;
        // offset: 0x127e, bitSize: 0x1
        bool disabletacinsert;
        // offset: 0x127f, bitSize: 0x1
        bool voipdeadhearallliving;
        // offset: 0x1280, bitSize: 0x1
        bool hash_4ca06c610b5d53bd;
        // offset: 0x1281, bitSize: 0x1
        bool killstreaksgivegamescore;
        // offset: 0x1282, bitSize: 0x1
        bool hash_1cc3f98086d6f5dd;
        // offset: 0x1283, bitSize: 0x1
        bool flagcapturerateincrease;
        // offset: 0x1284, bitSize: 0x1
        bool use_doors;
        // offset: 0x1285, bitSize: 0x1
        bool pvponly;
        // offset: 0x1286, bitSize: 0x1
        bool forwardspawnteamspecificspawns;
        // offset: 0x1287, bitSize: 0x1
        bool hash_50b56d2635cbb74b;
        // offset: 0x1288, bitSize: 0x1
        bool hash_68fd4f67ea4b4ff8;
        // offset: 0x1289, bitSize: 0x1
        bool forwardspawntakesdamage;
        // offset: 0x128a, bitSize: 0x1
        bool allowingameteamchange;
        // offset: 0x128b, bitSize: 0x1
        bool hash_297b69789a6283b4;
        // offset: 0x128c, bitSize: 0x1
        bool deathzones;
        // offset: 0x128d, bitSize: 0x1
        bool classicmode;
        // offset: 0x128e, bitSize: 0x1
        bool hash_12c8b36832284f70;
        // offset: 0x128f, bitSize: 0x1
        bool voipdeadhearteamliving;
        // offset: 0x1290, bitSize: 0x1
        bool hash_51f7292117d41790;
        // offset: 0x1291, bitSize: 0x1
        bool capdecay;
        // offset: 0x1292, bitSize: 0x1
        bool hash_7bcb76b8a52c35e;
        // offset: 0x1293, bitSize: 0x1
        bool hash_5c90286f1514c76;
        // offset: 0x1294, bitSize: 0x1
        bool hash_b87383d5497a826;
        // offset: 0x1295, bitSize: 0x1
        bool voipeveryonehearseveryone;
        // offset: 0x1296, bitSize: 0x1
        bool hash_460af55ecefb11f;
        // offset: 0x1297, bitSize: 0x1
        bool hash_4f4a73f236278ba8;
        // offset: 0x1298, bitSize: 0x1
        bool hash_5f76e2d55ad861ed;
        // offset: 0x1299, bitSize: 0x1
        bool laststandfinishing;
        // offset: 0x129a, bitSize: 0x1
        bool hash_201c1769d32b30d3;
    };

    // root: bitSize: 0x12a0, members: 1

    // offset: 0x0, bitSize: 0x12a0(0x254 Byte(s))
    gametypesettings gametypesettings;
};

version hash_6f1c43ac25723b72 {
    // enums ..... 0 (0x0)
    // structs ... 2 (0x2)
    // header bit size .. 4944 (0x1350)
    // header byte size . 618 (0x26a)

    // bitSize: 0x12a0, members: 559
    struct gametypesettings {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> timelimit;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_25740f686a5cfc7e;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        uint:4 playerkillsmax;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_129fca5e3a00477f;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_444634d99df7a661;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperdeath;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:2 forceradar;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkill;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playersprinttime;
        // offset: 0x58, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> capturetime;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleroundswon;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_9fe0e2b1a7f556;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayerdefensive;
        // offset: 0x88, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_35e9fc8eee6881e0;
        // offset: 0x90, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_613785a993624133;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandrevivehealth;
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierdestroytime;
        // offset: 0xc0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostattackhelicopter;
        // offset: 0xc8, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_6024ee628431415;
        // offset: 0xd8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostbow;
        // offset: 0xe0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostuav;
        // offset: 0xe8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperweaponkill;
        // offset: 0xf0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_722d8dafb62ce7fe;
        // offset: 0x108, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_68b825c95acb9218;
        // offset: 0x118, bitSize: 0x8(0x1 Byte(s))
        uint:6 maxteamplayers;
        // offset: 0x120, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandhealth;
        // offset: 0x128, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6b2754246df1bc7c;
        // offset: 0x138, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_46f0ae82f5c2f7d4;
        // offset: 0x148, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> maxusers;
        // offset: 0x158, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_1ca4d65346568642;
        // offset: 0x168, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1d77a77db928f695;
        // offset: 0x178, bitSize: 0x8(0x1 Byte(s))
        uint:4 draftrequiredclients;
        // offset: 0x180, bitSize: 0x8(0x1 Byte(s))
        uint:3 friendlyfiretype;
        // offset: 0x188, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7fee0559953eec6;
        // offset: 0x1a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_28005bb885acabc3;
        // offset: 0x1b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4725de6afe873b87;
        // offset: 0x1c0, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_16184f2fd4014b39;
        // offset: 0x1c8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspermeleekill;
        // offset: 0x1d0, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_51f121252f1d8c7f;
        // offset: 0x1e0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_32da91b78e54e7b5;
        // offset: 0x1e8, bitSize: 0x8(0x1 Byte(s))
        uint:6 preroundperiod;
        // offset: 0x1f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_56f6d77da3124af2;
        // offset: 0x200, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowertimefactor;
        // offset: 0x208, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_62a4fd40810cb61;
        // offset: 0x210, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_56a31bddd92a64dc;
        // offset: 0x218, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> laststandrevivetime;
        // offset: 0x220, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_429d353f0be087a5;
        // offset: 0x238, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpunishcount;
        // offset: 0x240, bitSize: 0x8(0x1 Byte(s))
        uint:7 maxplayers;
        // offset: 0x248, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53fd9a3e9a0e78e1;
        // offset: 0x258, bitSize: 0x20(0x4 Byte(s))
        int forwardspawnhealth;
        // offset: 0x278, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5598d36d6b224c9a;
        // offset: 0x288, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnteamkilledpenalty;
        // offset: 0x290, bitSize: 0x8(0x1 Byte(s))
        uint:3 ballcount;
        // offset: 0x298, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_6ae29c8144cb7659;
        // offset: 0x2a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c82ffb472a21cac;
        // offset: 0x2b0, bitSize: 0x8(0x1 Byte(s))
        uint:3 gunselection;
        // offset: 0x2b8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_53c1e74b2d385c17;
        // offset: 0x2d0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_17cc26f74ef911e0;
        // offset: 0x2d8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_67d54bbc52811921;
        // offset: 0x2e0, bitSize: 0x8(0x1 Byte(s))
        fixed<5,2> hash_1614b9cbe0df6f75;
        // offset: 0x2e8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_35104d2d5fd22ce7;
        // offset: 0x300, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1441f7ad44e1cfd4;
        // offset: 0x308, bitSize: 0x8(0x1 Byte(s))
        uint:7 killstreakdeathpenaltyindividualearn;
        // offset: 0x310, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_c0beb1e5a80c25c;
        // offset: 0x318, bitSize: 0x8(0x1 Byte(s))
        uint:5 prematchrequirement;
        // offset: 0x320, bitSize: 0x8(0x1 Byte(s))
        uint:3 spectatetype;
        // offset: 0x328, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> hash_57fe6337297bcce9;
        // offset: 0x330, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_1df445b9d1af641f;
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:2 randomobjectivelocations;
        // offset: 0x340, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_55db4a8546a13c79;
        // offset: 0x358, bitSize: 0x8(0x1 Byte(s))
        uint:5 roundwinlimit;
        // offset: 0x360, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_ecf2124e9108fc4;
        // offset: 0x368, bitSize: 0x10(0x2 Byte(s))
        uint:10 antiboostdistance;
        // offset: 0x378, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_115a3410d9dbf98d;
        // offset: 0x388, bitSize: 0x10(0x2 Byte(s))
        uint:15 roundscorelimit;
        // offset: 0x398, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_320a5028d10f305a;
        // offset: 0x3b0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> hash_154db5a1b2e9d757;
        // offset: 0x3c0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> bulletdamagescalar;
        // offset: 0x3c8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1df1e1139a1a4eb8;
        // offset: 0x3e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_79c708d50a12e336;
        // offset: 0x3f0, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostontimeamount;
        // offset: 0x3f8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> defusetime;
        // offset: 0x400, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> teamkillreducedpenalty;
        // offset: 0x408, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxallocation;
        // offset: 0x410, bitSize: 0x8(0x1 Byte(s))
        uint:4 carryscore;
        // offset: 0x418, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c8636144ad47ac9;
        // offset: 0x428, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53cd45b387951ca1;
        // offset: 0x438, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_6e49ce7bbe6d3f1f;
        // offset: 0x440, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> killeventscoremultiplier;
        // offset: 0x448, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_2efff808b2701aa5;
        // offset: 0x458, bitSize: 0x8(0x1 Byte(s))
        uint:6 ticketslostontimeinterval;
        // offset: 0x460, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartexplosivedelay;
        // offset: 0x468, bitSize: 0x8(0x1 Byte(s))
        uint:2 cleandepositrotation;
        // offset: 0x470, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_21754b274494502e;
        // offset: 0x480, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_1311b008d2f6dbc1;
        // offset: 0x490, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_5f7c18fecb2a1a44;
        // offset: 0x4a0, bitSize: 0x8(0x1 Byte(s))
        uint:7 idleflagresettime;
        // offset: 0x4a8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowergainfactor;
        // offset: 0x4b0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1f65f0a6f0eb3110;
        // offset: 0x4c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2a02614601829003;
        // offset: 0x4d8, bitSize: 0x8(0x1 Byte(s))
        uint:4 setbacks;
        // offset: 0x4e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1db05f3e34ccaaaf;
        // offset: 0x4f0, bitSize: 0x20(0x4 Byte(s))
        int hash_6b808ab4016cb1e1;
        // offset: 0x510, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1efac5fcdfa4f;
        // offset: 0x520, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1eeac5fcdf89c;
        // offset: 0x530, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f1ac5fcdfdb5;
        // offset: 0x540, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f0ac5fcdfc02;
        // offset: 0x550, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1ebac5fcdf383;
        // offset: 0x560, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_20a83071685f7bd9;
        // offset: 0x578, bitSize: 0x10(0x2 Byte(s))
        fixed<12,4> trm_maxheight;
        // offset: 0x588, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_2b88c6ac064e9c59;
        // offset: 0x590, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayofthematchevents;
        // offset: 0x598, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostwarmachine;
        // offset: 0x5a0, bitSize: 0x10(0x2 Byte(s))
        uint:15 scorelimit;
        // offset: 0x5b0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> cratecapturetime;
        // offset: 0x5b8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4a6ef8940f4cbb83;
        // offset: 0x5c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eeb8cb5c84b1939;
        // offset: 0x5d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eba3289161fd45f;
        // offset: 0x5e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_22c53ddb2cb67f13;
        // offset: 0x5f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_9c266bdf9cad7fa;
        // offset: 0x600, bitSize: 0x8(0x1 Byte(s))
        uint:3 killpointsinenemyprotectedzone;
        // offset: 0x608, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6e2b8452b08a545c;
        // offset: 0x610, bitSize: 0x10(0x2 Byte(s))
        uint:10 playermaxhealth;
        // offset: 0x620, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1833c853bfe78ffc;
        // offset: 0x628, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_5e8818f69d557ad2;
        // offset: 0x640, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_3e13b420d6773b4c;
        // offset: 0x648, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_718b497c5205e74b;
        // offset: 0x658, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostgunship;
        // offset: 0x660, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_42b840c668fd2c85;
        // offset: 0x670, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_44f0b1c6b2d3b6f8;
        // offset: 0x680, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5dc620c6c0919d82;
        // offset: 0x690, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2aea36c6a4135574;
        // offset: 0x6a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_32c16dc6a8490e81;
        // offset: 0x6b0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_66a7d866327081eb;
        // offset: 0x6b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5f116b8cfbdbc3fe;
        // offset: 0x6c8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsforsurvivalbonus;
        // offset: 0x6d0, bitSize: 0x190(0x32 Byte(s)), array:0x32(hti:0xffff)
        uint:5 maxuniquerolesperteam[50];
        // offset: 0x860, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_7adb62a64c6d963;
        // offset: 0x868, bitSize: 0x8(0x1 Byte(s))
        uint:3 objectivepingtime;
        // offset: 0x870, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_271177b8b4cfcf15;
        // offset: 0x888, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamkillspawndelay;
        // offset: 0x890, bitSize: 0x8(0x1 Byte(s))
        uint:8 carrierarmor;
        // offset: 0x898, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_51a2ab391c340e03;
        // offset: 0x8b0, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostondeath;
        // offset: 0x8b8, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_47d4aa0161d78e15;
        // offset: 0x8c0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostremotemissile;
        // offset: 0x8c8, bitSize: 0x10(0x2 Byte(s))
        uint:9 carriermovespeed;
        // offset: 0x8d8, bitSize: 0x8(0x1 Byte(s))
        uint:5 boottime;
        // offset: 0x8e0, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_652bc8c2577ec788;
        // offset: 0x8f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_72852fc1d977c3a0;
        // offset: 0x900, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_314c2f7312bde4af;
        // offset: 0x908, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_5d5f4ee35c9977c7;
        // offset: 0x910, bitSize: 0x8(0x1 Byte(s))
        uint:3 roundstartfriendlyfiretype;
        // offset: 0x918, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagdecaytime;
        // offset: 0x920, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_76f686986e1a58b;
        // offset: 0x930, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_vs_bots;
        // offset: 0x938, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_26b08269156ca0e5;
        // offset: 0x940, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamnumlives;
        // offset: 0x948, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> planttime;
        // offset: 0x950, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6141cddd96ac214e;
        // offset: 0x958, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnprotectiontime;
        // offset: 0x960, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7353bbc24d72ec59;
        // offset: 0x970, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_573034b3252cb4e3;
        // offset: 0x988, bitSize: 0x10(0x2 Byte(s))
        uint:10 inactivitykick;
        // offset: 0x998, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspersecondarykill;
        // offset: 0x9a0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team3;
        // offset: 0x9a8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team4;
        // offset: 0x9b0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team5;
        // offset: 0x9b8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team6;
        // offset: 0x9c0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team7;
        // offset: 0x9c8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team8;
        // offset: 0x9d0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team9;
        // offset: 0x9d8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerhealthregentime;
        // offset: 0x9e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5d40d1f9fb7f;
        // offset: 0x9f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5c40d1f9f9cc;
        // offset: 0xa00, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5f40d1f9fee5;
        // offset: 0xa10, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5e40d1f9fd32;
        // offset: 0xa20, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5940d1f9f4b3;
        // offset: 0xa30, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4f00f3f568c284af;
        // offset: 0xa40, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7f190c8839d3f05c;
        // offset: 0xa50, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_3a4691a853585241;
        // offset: 0xa58, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> destroytime;
        // offset: 0xa68, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagrespawntime;
        // offset: 0xa70, bitSize: 0x8(0x1 Byte(s))
        uint:2 shutdowndamage;
        // offset: 0xa78, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> gameadvertisementruletimeleft;
        // offset: 0xa80, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_6a48bbfb703d5c9c;
        // offset: 0xa88, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_239b391c77ebf8c1;
        // offset: 0xa90, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7c33e5bebaf05afb;
        // offset: 0xaa0, bitSize: 0x10(0x2 Byte(s))
        uint:11 objectivehealth;
        // offset: 0xab0, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnsuicidepenalty;
        // offset: 0xab8, bitSize: 0x8(0x1 Byte(s))
        uint:2 robotspeed;
        // offset: 0xac0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_467be34402dad274;
        // offset: 0xac8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_68e3f54e05f57d85;
        // offset: 0xad0, bitSize: 0x8(0x1 Byte(s))
        uint:7 servermsec;
        // offset: 0xad8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_410c5c7c1e60b534;
        // offset: 0xae0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_212cc2b5b360189c;
        // offset: 0xae8, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_552338718ec6d2df;
        // offset: 0xaf0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1c0040943c216593;
        // offset: 0xaf8, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxplayereventsperminute;
        // offset: 0xb08, bitSize: 0x10(0x2 Byte(s))
        uint:10 leaderbonus;
        // offset: 0xb18, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_5c918cbf75e16116;
        // offset: 0xb20, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_51e989796c38cd87;
        // offset: 0xb28, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostnapalm;
        // offset: 0xb30, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_119bd2704c238e5;
        // offset: 0xb48, bitSize: 0x8(0x1 Byte(s))
        uint:2 enemycarriervisible;
        // offset: 0xb50, bitSize: 0x10(0x2 Byte(s))
        uint:9 autodestroytime;
        // offset: 0xb60, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkillconfirmed;
        // offset: 0xb68, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4e4352bd1aaeedfe;
        // offset: 0xb70, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_507e1eb7f297d872;
        // offset: 0xb80, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_342835495fca42bb;
        // offset: 0xb90, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7cada6c0936f259b;
        // offset: 0xba0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> waverespawndelay;
        // offset: 0xba8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1974892bc7266bab;
        // offset: 0xbb8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_567db38226658dbf;
        // offset: 0xbc0, bitSize: 0x8(0x1 Byte(s))
        uint:6 prematchperiod;
        // offset: 0xbc8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostsentry;
        // offset: 0xbd0, bitSize: 0x8(0x1 Byte(s))
        uint:6 teamkillscore;
        // offset: 0xbd8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_102aeddad113f70c;
        // offset: 0xbe0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_4635a26c94b56725;
        // offset: 0xbe8, bitSize: 0x8(0x1 Byte(s))
        uint:3 platooncount;
        // offset: 0xbf0, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierhealth;
        // offset: 0xc10, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_71da377e373bc755;
        // offset: 0xc28, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_38a8f601ab8388d0;
        // offset: 0xc38, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarykill;
        // offset: 0xc40, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperheadshot;
        // offset: 0xc48, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_75ff4383212c5111;
        // offset: 0xc58, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1908ad844e6c3e37;
        // offset: 0xc60, bitSize: 0x8(0x1 Byte(s))
        uint:4 pregameitemmaxvotes;
        // offset: 0xc68, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_50029ecff5e7d383;
        // offset: 0xc78, bitSize: 0x8(0x1 Byte(s))
        uint:7 playernumlives;
        // offset: 0xc80, bitSize: 0x8(0x1 Byte(s))
        uint:2 infectionmode;
        // offset: 0xc88, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleround;
        // offset: 0xc90, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7d53c8bab3db8122;
        // offset: 0xca0, bitSize: 0x8(0x1 Byte(s))
        fixed<7,1> incrementalspawndelay;
        // offset: 0xca8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_allies;
        // offset: 0xcb0, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxsuicidesbeforekick;
        // offset: 0xcb8, bitSize: 0x8(0x1 Byte(s))
        uint:7 gameadvertisementrulescorepercent;
        // offset: 0xcc0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_3e76ce42036815cc;
        // offset: 0xcd0, bitSize: 0x10(0x2 Byte(s))
        int:10 hash_3ccd8e1bf3864fa1;
        // offset: 0xce0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_130d127406ab976e;
        // offset: 0xcf0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostairpatrol;
        // offset: 0xcf8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostcuav;
        // offset: 0xd00, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostrcxd;
        // offset: 0xd08, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostvtol;
        // offset: 0xd10, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_40c4b447a58a7da4;
        // offset: 0xd20, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> hash_47e9736d437be7c8;
        // offset: 0xd28, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1ea82b1edff2a13b;
        // offset: 0xd38, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c31c3f19402e1f;
        // offset: 0xd48, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandtimer;
        // offset: 0xd50, bitSize: 0x8(0x1 Byte(s))
        uint:6 reboottime;
        // offset: 0xd58, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscorepercleandeposit;
        // offset: 0xd60, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_2081d79c44b2cefb;
        // offset: 0xd78, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6773166f56896564;
        // offset: 0xd88, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1725e90b73841702;
        // offset: 0xd98, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_273d049136c76afa;
        // offset: 0xda8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_2849b6cf7317ab1b;
        // offset: 0xdb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5a4fde688cbf1a01;
        // offset: 0xdc0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c72ac3d026ca4eb;
        // offset: 0xdd0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_83f11b8abac148f;
        // offset: 0xdd8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_22fa97d05461a3e8;
        // offset: 0xdf0, bitSize: 0x8(0x1 Byte(s))
        uint:4 pickuptime;
        // offset: 0xdf8, bitSize: 0x10(0x2 Byte(s))
        fixed<14,7> hash_451245a24412d90f;
        // offset: 0xe08, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3d5a87878a3bef28;
        // offset: 0xe18, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_552467c143123c1c;
        // offset: 0xe20, bitSize: 0x20(0x4 Byte(s))
        int hash_64727525f5957d06;
        // offset: 0xe40, bitSize: 0x20(0x4 Byte(s))
        int hash_1f3285ddee84620c;
        // offset: 0xe60, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_2596f9e3d6e26ac9;
        // offset: 0xe68, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostchoppergunner;
        // offset: 0xe70, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_3767386c050fa0eb;
        // offset: 0xe78, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerrespawndelay;
        // offset: 0xe80, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_34ee1a1a574eaa4c;
        // offset: 0xe90, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> spawntraptriggertime;
        // offset: 0xe98, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_26ff1d48be83e46c;
        // offset: 0xeb0, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayeroffensive;
        // offset: 0xeb8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_527f80b77f20b8c8;
        // offset: 0xec8, bitSize: 0x8(0x1 Byte(s))
        uint:2 allowhitmarkers;
        // offset: 0xed0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_d8215d30d36fa59;
        // offset: 0xee8, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_67ee1d8d7938baa1;
        // offset: 0xef8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2c02a63d2c336b30;
        // offset: 0xf08, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxobjectiveeventsperminute;
        // offset: 0xf18, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_47dd11084763c671;
        // offset: 0xf28, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4201d2890785fb14;
        // offset: 0xf38, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarygrenadekill;
        // offset: 0xf40, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team10;
        // offset: 0xf48, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostcarepackage;
        // offset: 0xf50, bitSize: 0x8(0x1 Byte(s))
        uint:7 bonuslivesforcapturingzone;
        // offset: 0xf58, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_39d008c4c2044bc7;
        // offset: 0xf68, bitSize: 0x8(0x1 Byte(s))
        uint:7 startplayers;
        // offset: 0xf70, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_7d590533364efa87;
        // offset: 0xf78, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_252e760b41f3d94a;
        // offset: 0xf80, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartkillstreakdelay;
        // offset: 0xf88, bitSize: 0x8(0x1 Byte(s))
        uint:5 totalkillsmax;
        // offset: 0xf90, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundswitch;
        // offset: 0xf98, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerobjectiveheldrespawndelay;
        // offset: 0xfa0, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpenalty;
        // offset: 0xfa8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_18bdaa4b00863e9d;
        // offset: 0xfb0, bitSize: 0x8(0x1 Byte(s))
        uint:5 weaponcount;
        // offset: 0xfb8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1706d4b546538286;
        // offset: 0xfd0, bitSize: 0x8(0x1 Byte(s))
        uint:7 weapontimer;
        // offset: 0xfd8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> overtimetimelimit;
        // offset: 0xfe8, bitSize: 0x8(0x1 Byte(s))
        uint:7 cleandepositonlinetime;
        // offset: 0xff0, bitSize: 0x8(0x1 Byte(s))
        fixed<7,3> hash_4c7c8c4bd1b2a58b;
        // offset: 0xff8, bitSize: 0x8(0x1 Byte(s))
        uint:7 drafttime;
        // offset: 0x1000, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_ed89addfaaafe48;
        // offset: 0x1008, bitSize: 0x8(0x1 Byte(s))
        uint:7 objectivespawntime;
        // offset: 0x1010, bitSize: 0x8(0x1 Byte(s))
        uint:2 killcammode;
        // offset: 0x1018, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> killcamtime;
        // offset: 0x1028, bitSize: 0x8(0x1 Byte(s))
        uint:4 throwscore;
        // offset: 0x1030, bitSize: 0x8(0x1 Byte(s))
        uint:4 deposittime;
        // offset: 0x1038, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extratime;
        // offset: 0x1048, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_54d908d6273c8893;
        // offset: 0x1058, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6269eb986d22cd37;
        // offset: 0x1060, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreequipmentpowertimefactor;
        // offset: 0x1068, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostarmor;
        // offset: 0x1070, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_36ea712d503b054c;
        // offset: 0x1088, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamcount;
        // offset: 0x1090, bitSize: 0x20(0x4 Byte(s))
        int hash_7f38d88521da4c79;
        // offset: 0x10b0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_24c718cc0c526c38;
        // offset: 0x10b8, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundlimit;
        // offset: 0x10c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_531cc9c63ae86a93;
        // offset: 0x10d0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostartillery;
        // offset: 0x10d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_b30022a9302a5a6;
        // offset: 0x10e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_25d72112144c5ea0;
        // offset: 0x10f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_39cfd81268504039;
        // offset: 0x1108, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_208071125a2b0b0b;
        // offset: 0x1118, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_52ef5b12764c8139;
        // offset: 0x1128, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4bf2241272d06bec;
        // offset: 0x1138, bitSize: 0x8(0x1 Byte(s))
        uint:2 charactercustomization;
        // offset: 0x1140, bitSize: 0x20(0x4 Byte(s))
        int hash_af4ad3316f0ded6;
        // offset: 0x1160, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_437a986f8d24d7eb;
        // offset: 0x1168, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_16182516e10d0250;
        // offset: 0x1180, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_axis;
        // offset: 0x1188, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7344dfa399020a06;
        // offset: 0x11a0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6e2abf2cc40e03f1;
        // offset: 0x11a8, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkilldenied;
        // offset: 0x11b0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> bombtimer;
        // offset: 0x11c0, bitSize: 0x1
        bool delayplayer;
        // offset: 0x11c1, bitSize: 0x1
        bool hash_196e997a082443a9;
        // offset: 0x11c2, bitSize: 0x1
        bool voipdeadchatwithdead;
        // offset: 0x11c3, bitSize: 0x1
        bool voipdeadchatwithteam;
        // offset: 0x11c4, bitSize: 0x1
        bool hash_729930c3c52653c3;
        // offset: 0x11c5, bitSize: 0x1
        bool useembleminsteadoffactionicon;
        // offset: 0x11c6, bitSize: 0x1
        bool draftenabled;
        // offset: 0x11c7, bitSize: 0x1
        bool hash_3a15393c2e90e121;
        // offset: 0x11c8, bitSize: 0x1
        bool hash_1d708093c2664515;
        // offset: 0x11c9, bitSize: 0x1
        bool droppedtagrespawn;
        // offset: 0x11ca, bitSize: 0x1
        bool hash_1e71b5ce1cd845b3;
        // offset: 0x11cb, bitSize: 0x1
        bool hash_25aaa9a29a90534c;
        // offset: 0x11cc, bitSize: 0x1
        bool voipkillershearvictim;
        // offset: 0x11cd, bitSize: 0x1
        bool hash_7c0dcff6ffb1e348;
        // offset: 0x11ce, bitSize: 0x1
        bool hash_4091f2d0019b1f4a;
        // offset: 0x11cf, bitSize: 0x1
        bool deathcirclerespawn;
        // offset: 0x11d0, bitSize: 0x1
        bool hash_2683a105198a7407;
        // offset: 0x11d1, bitSize: 0x1
        bool presetclassesperteam;
        // offset: 0x11d2, bitSize: 0x1
        bool hash_361f7fe066281093;
        // offset: 0x11d3, bitSize: 0x1
        bool hash_232892d3b0a6240c;
        // offset: 0x11d4, bitSize: 0x1
        bool bot_autofill_allies;
        // offset: 0x11d5, bitSize: 0x1
        bool hash_2c55a3723cd9fdf9;
        // offset: 0x11d6, bitSize: 0x1
        bool hash_5c57222bb95a06cb;
        // offset: 0x11d7, bitSize: 0x1
        bool hardcoremode;
        // offset: 0x11d8, bitSize: 0x1
        bool hash_135829cbab367329;
        // offset: 0x11d9, bitSize: 0x1
        bool hash_495b64bd935bf7b;
        // offset: 0x11da, bitSize: 0x1
        bool useitemspawns;
        // offset: 0x11db, bitSize: 0x1
        bool hash_77b7734750cd75e9;
        // offset: 0x11dc, bitSize: 0x1
        bool silentplant;
        // offset: 0x11dd, bitSize: 0x1
        bool hash_5711f3e42924a635;
        // offset: 0x11de, bitSize: 0x1
        bool drafteveryround;
        // offset: 0x11df, bitSize: 0x1
        bool timepauseswheninzone;
        // offset: 0x11e0, bitSize: 0x1
        bool hash_4b55d75b8d779e4;
        // offset: 0x11e1, bitSize: 0x1
        bool hash_549abfbb3665d526;
        // offset: 0x11e2, bitSize: 0x1
        bool scoreperplayer;
        // offset: 0x11e3, bitSize: 0x1
        bool ekiaresetondeath;
        // offset: 0x11e4, bitSize: 0x1
        bool kothmode;
        // offset: 0x11e5, bitSize: 0x1
        bool hash_62665aebde32c8ae;
        // offset: 0x11e6, bitSize: 0x1
        bool hash_18c053cae82c1167;
        // offset: 0x11e7, bitSize: 0x1
        bool hash_6cf5f53d1fbb1066;
        // offset: 0x11e8, bitSize: 0x1
        bool hash_3d23923f9c9757cd;
        // offset: 0x11e9, bitSize: 0x1
        bool decayprogress;
        // offset: 0x11ea, bitSize: 0x1
        bool playerqueuedrespawn;
        // offset: 0x11eb, bitSize: 0x1
        bool scorestreaksbarebones;
        // offset: 0x11ec, bitSize: 0x1
        bool cumulativeroundscores;
        // offset: 0x11ed, bitSize: 0x1
        bool hash_3ad2212223b76a72;
        // offset: 0x11ee, bitSize: 0x1
        bool voipdeadhearkiller;
        // offset: 0x11ef, bitSize: 0x1
        bool bot_autofill_team10;
        // offset: 0x11f0, bitSize: 0x1
        bool hash_6e6991561babdd7e;
        // offset: 0x11f1, bitSize: 0x1
        bool bot_autofill_axis;
        // offset: 0x11f2, bitSize: 0x1
        bool skiplaststand;
        // offset: 0x11f3, bitSize: 0x1
        bool hash_1f3825ba2a669400;
        // offset: 0x11f4, bitSize: 0x1
        bool usespawngroups;
        // offset: 0x11f5, bitSize: 0x1
        bool hash_b76e50c1202aa23;
        // offset: 0x11f6, bitSize: 0x1
        bool disablethirdpersonspectating;
        // offset: 0x11f7, bitSize: 0x1
        bool platoonassignment;
        // offset: 0x11f8, bitSize: 0x1
        bool hash_7daf08db0c451ad1;
        // offset: 0x11f9, bitSize: 0x1
        bool allowlaststandforactiveclients;
        // offset: 0x11fa, bitSize: 0x1
        bool hash_5cc3c32813d17039;
        // offset: 0x11fb, bitSize: 0x1
        bool allowbattlechatter;
        // offset: 0x11fc, bitSize: 0x1
        bool fowrevealenabled;
        // offset: 0x11fd, bitSize: 0x1
        bool hash_4e8cafe9a4470898;
        // offset: 0x11fe, bitSize: 0x1
        bool hash_7647d0e9a45eeca6;
        // offset: 0x11ff, bitSize: 0x1
        bool hash_3cd7f961322b6b7;
        // offset: 0x1200, bitSize: 0x1
        bool hash_3293bf384d3c1e2f;
        // offset: 0x1201, bitSize: 0x1
        bool hash_5fcc23190f135afe;
        // offset: 0x1202, bitSize: 0x1
        bool hash_35376812247cdc3;
        // offset: 0x1203, bitSize: 0x1
        bool disablecontracts;
        // offset: 0x1204, bitSize: 0x1
        bool hash_2b1f40bc711c41f3;
        // offset: 0x1205, bitSize: 0x1
        bool hash_75d44b1542e3edf9;
        // offset: 0x1206, bitSize: 0x1
        bool hash_5462586bdce0346e;
        // offset: 0x1207, bitSize: 0x1
        bool gameobjectscontestedmajoritywins;
        // offset: 0x1208, bitSize: 0x1
        bool hash_2f0beae14bf17810;
        // offset: 0x1209, bitSize: 0x1
        bool autoheal;
        // offset: 0x120a, bitSize: 0x1
        bool allowannouncer;
        // offset: 0x120b, bitSize: 0x1
        bool disallowaimslowdown;
        // offset: 0x120c, bitSize: 0x1
        bool hash_435c853b64e3175e;
        // offset: 0x120d, bitSize: 0x1
        bool hash_5538f8f7758641b4;
        // offset: 0x120e, bitSize: 0x1
        bool bot_autofill_team3;
        // offset: 0x120f, bitSize: 0x1
        bool bot_autofill_team4;
        // offset: 0x1210, bitSize: 0x1
        bool bot_autofill_team5;
        // offset: 0x1211, bitSize: 0x1
        bool bot_autofill_team6;
        // offset: 0x1212, bitSize: 0x1
        bool bot_autofill_team7;
        // offset: 0x1213, bitSize: 0x1
        bool bot_autofill_team8;
        // offset: 0x1214, bitSize: 0x1
        bool bot_autofill_team9;
        // offset: 0x1215, bitSize: 0x1
        bool hash_35e6177743dac957;
        // offset: 0x1216, bitSize: 0x1
        bool hash_14fd184091ff1af;
        // offset: 0x1217, bitSize: 0x1
        bool vehiclesenabled;
        // offset: 0x1218, bitSize: 0x1
        bool decaycapturedzones;
        // offset: 0x1219, bitSize: 0x1
        bool neutralzone;
        // offset: 0x121a, bitSize: 0x1
        bool boastallowcam;
        // offset: 0x121b, bitSize: 0x1
        bool hash_7cc354dd83013a47;
        // offset: 0x121c, bitSize: 0x1
        bool onlyheadshots;
        // offset: 0x121d, bitSize: 0x1
        bool competitivesettings;
        // offset: 0x121e, bitSize: 0x1
        bool flagcapturecondition;
        // offset: 0x121f, bitSize: 0x1
        bool hash_1ca94a3bd057f19f;
        // offset: 0x1220, bitSize: 0x1
        bool hash_1346ebfec214d724;
        // offset: 0x1221, bitSize: 0x1
        bool hash_4be46e952d54e9a2;
        // offset: 0x1222, bitSize: 0x1
        bool hash_1ebf97988141c498;
        // offset: 0x1223, bitSize: 0x1
        bool hash_25fa292c7fc561b8;
        // offset: 0x1224, bitSize: 0x1
        bool flagcanbeneutralized;
        // offset: 0x1225, bitSize: 0x1
        bool hash_241e17e13da23de2;
        // offset: 0x1226, bitSize: 0x1
        bool hash_6881c7cab0dcef39;
        // offset: 0x1227, bitSize: 0x1
        bool vehiclestimed;
        // offset: 0x1228, bitSize: 0x1
        bool pregamedraftenabled;
        // offset: 0x1229, bitSize: 0x1
        bool hash_6f03247bbcf52311;
        // offset: 0x122a, bitSize: 0x1
        bool hash_6143c4e1e18f08fd;
        // offset: 0x122b, bitSize: 0x1
        bool teamkillpointloss;
        // offset: 0x122c, bitSize: 0x1
        bool hash_322026c0342869d1;
        // offset: 0x122d, bitSize: 0x1
        bool hash_1e346fbfe02f1294;
        // offset: 0x122e, bitSize: 0x1
        bool hash_3724e6bfee03ce6e;
        // offset: 0x122f, bitSize: 0x1
        bool hash_497a2cbff8af4988;
        // offset: 0x1230, bitSize: 0x1
        bool hash_50776bbffc2b6c6d;
        // offset: 0x1231, bitSize: 0x1
        bool hash_55fc1cb09246fe30;
        // offset: 0x1232, bitSize: 0x1
        bool hash_1d5943e61e65eeae;
        // offset: 0x1233, bitSize: 0x1
        bool hash_656fd3c508d1d33e;
        // offset: 0x1234, bitSize: 0x1
        bool hash_29f3630e8e542a0a;
        // offset: 0x1235, bitSize: 0x1
        bool hash_c6a2e6c3e86125a;
        // offset: 0x1236, bitSize: 0x1
        bool hash_2ebcaa6630ba8fd5;
        // offset: 0x1237, bitSize: 0x1
        bool perksenabled;
        // offset: 0x1238, bitSize: 0x1
        bool hash_33bc6781006ae83d;
        // offset: 0x1239, bitSize: 0x1
        bool hash_655d904d5995891f;
        // offset: 0x123a, bitSize: 0x1
        bool hash_6c21d8e8de53e9c3;
        // offset: 0x123b, bitSize: 0x1
        bool hash_2966662989c3484c;
        // offset: 0x123c, bitSize: 0x1
        bool allowmapscripting;
        // offset: 0x123d, bitSize: 0x1
        bool robotshield;
        // offset: 0x123e, bitSize: 0x1
        bool hash_62e3e33ec68db92f;
        // offset: 0x123f, bitSize: 0x1
        bool hash_2a76bf462f4c2f50;
        // offset: 0x1240, bitSize: 0x1
        bool disableattachments;
        // offset: 0x1241, bitSize: 0x1
        bool disablecompass;
        // offset: 0x1242, bitSize: 0x1
        bool disableweapondrop;
        // offset: 0x1243, bitSize: 0x1
        bool escalationenabled;
        // offset: 0x1244, bitSize: 0x1
        bool hash_a564dde6ee3c657;
        // offset: 0x1245, bitSize: 0x1
        bool hash_7b8284382bffc197;
        // offset: 0x1246, bitSize: 0x1
        bool hash_25368755636c91a4;
        // offset: 0x1247, bitSize: 0x1
        bool disableclassselection;
        // offset: 0x1248, bitSize: 0x1
        bool hash_290721f8deb6ef5e;
        // offset: 0x1249, bitSize: 0x1
        bool hash_48670d9509071424;
        // offset: 0x124a, bitSize: 0x1
        bool autoteambalance;
        // offset: 0x124b, bitSize: 0x1
        bool hash_4bdd1bd86b610871;
        // offset: 0x124c, bitSize: 0x1
        bool hash_69df7093cd32f107;
        // offset: 0x124d, bitSize: 0x1
        bool hash_7c0acf14fb1f4080;
        // offset: 0x124e, bitSize: 0x1
        bool allowplayofthematch;
        // offset: 0x124f, bitSize: 0x1
        bool allowprone;
        // offset: 0x1250, bitSize: 0x1
        bool scoreresetondeath;
        // offset: 0x1251, bitSize: 0x1
        bool hash_452a45e599d3a575;
        // offset: 0x1252, bitSize: 0x1
        bool playerforcerespawn;
        // offset: 0x1253, bitSize: 0x1
        bool hash_7098f146a35b8468;
        // offset: 0x1254, bitSize: 0x1
        bool multibomb;
        // offset: 0x1255, bitSize: 0x1
        bool hash_4dd37bf6da89131;
        // offset: 0x1256, bitSize: 0x1
        bool hash_29fd164e7ff1abb0;
        // offset: 0x1257, bitSize: 0x1
        bool hash_104f124f56f0f20a;
        // offset: 0x1258, bitSize: 0x1
        bool hash_2560dae45cc112e3;
        // offset: 0x1259, bitSize: 0x1
        bool hash_50a46f60312cf53c;
        // offset: 0x125a, bitSize: 0x1
        bool hash_23b110691971b537;
        // offset: 0x125b, bitSize: 0x1
        bool deathcircle;
        // offset: 0x125c, bitSize: 0x1
        bool hash_4669425278875e14;
        // offset: 0x125d, bitSize: 0x1
        bool boastenabled;
        // offset: 0x125e, bitSize: 0x1
        bool hash_3513cf8b4287cdd7;
        // offset: 0x125f, bitSize: 0x1
        bool hash_72a2919d2ac65850;
        // offset: 0x1260, bitSize: 0x1
        bool hash_59272f59f19c342a;
        // offset: 0x1261, bitSize: 0x1
        bool hash_429521a79f75a327;
        // offset: 0x1262, bitSize: 0x1
        bool hash_69f74281cacb8a0f;
        // offset: 0x1263, bitSize: 0x1
        bool hash_5d65f5abcdad24fe;
        // offset: 0x1264, bitSize: 0x1
        bool deathpointloss;
        // offset: 0x1265, bitSize: 0x1
        bool disablecustomcac;
        // offset: 0x1266, bitSize: 0x1
        bool hash_1260b639348098e3;
        // offset: 0x1267, bitSize: 0x1
        bool rebootplayers;
        // offset: 0x1268, bitSize: 0x1
        bool oldschoolmode;
        // offset: 0x1269, bitSize: 0x1
        bool hash_4238acad9fa0f317;
        // offset: 0x126a, bitSize: 0x1
        bool allowfinalkillcam;
        // offset: 0x126b, bitSize: 0x1
        bool allowspectating;
        // offset: 0x126c, bitSize: 0x1
        bool usabledynents;
        // offset: 0x126d, bitSize: 0x1
        bool playintrocinematics;
        // offset: 0x126e, bitSize: 0x1
        bool hash_564289af24e283db;
        // offset: 0x126f, bitSize: 0x1
        bool hash_11e1a0adebdab01a;
        // offset: 0x1270, bitSize: 0x1
        bool hash_7379657f823bfef9;
        // offset: 0x1271, bitSize: 0x1
        bool hash_47df56af71e4df3;
        // offset: 0x1272, bitSize: 0x1
        bool hash_282689f7ec6d7d32;
        // offset: 0x1273, bitSize: 0x1
        bool hash_4ce6b119f5979182;
        // offset: 0x1274, bitSize: 0x1
        bool spawnselectenabled;
        // offset: 0x1275, bitSize: 0x1
        bool loadoutkillstreaksenabled;
        // offset: 0x1276, bitSize: 0x1
        bool pregameitemvoteenabled;
        // offset: 0x1277, bitSize: 0x1
        bool hash_38d6e4d91bbc82ee;
        // offset: 0x1278, bitSize: 0x1
        bool hash_2ffb09b25b95a125;
        // offset: 0x1279, bitSize: 0x1
        bool hash_5684ea266d45be15;
        // offset: 0x127a, bitSize: 0x1
        bool hash_7f273e367f26254;
        // offset: 0x127b, bitSize: 0x1
        bool hash_65c535aa5198d01d;
        // offset: 0x127c, bitSize: 0x1
        bool disallowprone;
        // offset: 0x127d, bitSize: 0x1
        bool hash_3cc3acd830a8eef;
        // offset: 0x127e, bitSize: 0x1
        bool moveplayers;
        // offset: 0x127f, bitSize: 0x1
        bool hash_6945105793e31c56;
        // offset: 0x1280, bitSize: 0x1
        bool disabletacinsert;
        // offset: 0x1281, bitSize: 0x1
        bool voipdeadhearallliving;
        // offset: 0x1282, bitSize: 0x1
        bool hash_4ca06c610b5d53bd;
        // offset: 0x1283, bitSize: 0x1
        bool killstreaksgivegamescore;
        // offset: 0x1284, bitSize: 0x1
        bool hash_1cc3f98086d6f5dd;
        // offset: 0x1285, bitSize: 0x1
        bool flagcapturerateincrease;
        // offset: 0x1286, bitSize: 0x1
        bool use_doors;
        // offset: 0x1287, bitSize: 0x1
        bool pvponly;
        // offset: 0x1288, bitSize: 0x1
        bool forwardspawnteamspecificspawns;
        // offset: 0x1289, bitSize: 0x1
        bool hash_50b56d2635cbb74b;
        // offset: 0x128a, bitSize: 0x1
        bool hash_68fd4f67ea4b4ff8;
        // offset: 0x128b, bitSize: 0x1
        bool forwardspawntakesdamage;
        // offset: 0x128c, bitSize: 0x1
        bool allowingameteamchange;
        // offset: 0x128d, bitSize: 0x1
        bool hash_297b69789a6283b4;
        // offset: 0x128e, bitSize: 0x1
        bool deathzones;
        // offset: 0x128f, bitSize: 0x1
        bool classicmode;
        // offset: 0x1290, bitSize: 0x1
        bool hash_12c8b36832284f70;
        // offset: 0x1291, bitSize: 0x1
        bool voipdeadhearteamliving;
        // offset: 0x1292, bitSize: 0x1
        bool hash_51f7292117d41790;
        // offset: 0x1293, bitSize: 0x1
        bool capdecay;
        // offset: 0x1294, bitSize: 0x1
        bool hash_7bcb76b8a52c35e;
        // offset: 0x1295, bitSize: 0x1
        bool hash_5c90286f1514c76;
        // offset: 0x1296, bitSize: 0x1
        bool hash_b87383d5497a826;
        // offset: 0x1297, bitSize: 0x1
        bool voipeveryonehearseveryone;
        // offset: 0x1298, bitSize: 0x1
        bool hash_460af55ecefb11f;
        // offset: 0x1299, bitSize: 0x1
        bool hash_4f4a73f236278ba8;
        // offset: 0x129a, bitSize: 0x1
        bool hash_5f76e2d55ad861ed;
        // offset: 0x129b, bitSize: 0x1
        bool laststandfinishing;
        // offset: 0x129c, bitSize: 0x1
        bool hash_201c1769d32b30d3;
    };

    // root: bitSize: 0x12a0, members: 1

    // offset: 0x0, bitSize: 0x12a0(0x254 Byte(s))
    gametypesettings gametypesettings;
};

version hash_30d231c12fff3edc {
    // enums ..... 0 (0x0)
    // structs ... 2 (0x2)
    // header bit size .. 4992 (0x1380)
    // header byte size . 624 (0x270)

    // bitSize: 0x12d0, members: 564
    struct gametypesettings {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> timelimit;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_25740f686a5cfc7e;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        uint:4 playerkillsmax;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_129fca5e3a00477f;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_444634d99df7a661;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperdeath;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:2 forceradar;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkill;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playersprinttime;
        // offset: 0x58, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> capturetime;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleroundswon;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_9fe0e2b1a7f556;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayerdefensive;
        // offset: 0x88, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_35e9fc8eee6881e0;
        // offset: 0x90, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_613785a993624133;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandrevivehealth;
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierdestroytime;
        // offset: 0xc0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostattackhelicopter;
        // offset: 0xc8, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_6024ee628431415;
        // offset: 0xd8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostbow;
        // offset: 0xe0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostuav;
        // offset: 0xe8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperweaponkill;
        // offset: 0xf0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_722d8dafb62ce7fe;
        // offset: 0x108, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_68b825c95acb9218;
        // offset: 0x118, bitSize: 0x8(0x1 Byte(s))
        uint:6 maxteamplayers;
        // offset: 0x120, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandhealth;
        // offset: 0x128, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6b2754246df1bc7c;
        // offset: 0x138, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_46f0ae82f5c2f7d4;
        // offset: 0x148, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> maxusers;
        // offset: 0x158, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_1ca4d65346568642;
        // offset: 0x168, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1d77a77db928f695;
        // offset: 0x178, bitSize: 0x8(0x1 Byte(s))
        uint:4 draftrequiredclients;
        // offset: 0x180, bitSize: 0x8(0x1 Byte(s))
        uint:3 friendlyfiretype;
        // offset: 0x188, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7fee0559953eec6;
        // offset: 0x1a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_28005bb885acabc3;
        // offset: 0x1b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4725de6afe873b87;
        // offset: 0x1c0, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_16184f2fd4014b39;
        // offset: 0x1c8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspermeleekill;
        // offset: 0x1d0, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_51f121252f1d8c7f;
        // offset: 0x1e0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_32da91b78e54e7b5;
        // offset: 0x1e8, bitSize: 0x8(0x1 Byte(s))
        uint:6 preroundperiod;
        // offset: 0x1f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_56f6d77da3124af2;
        // offset: 0x200, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowertimefactor;
        // offset: 0x208, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_62a4fd40810cb61;
        // offset: 0x210, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_56a31bddd92a64dc;
        // offset: 0x218, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> laststandrevivetime;
        // offset: 0x220, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_429d353f0be087a5;
        // offset: 0x238, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpunishcount;
        // offset: 0x240, bitSize: 0x8(0x1 Byte(s))
        uint:7 maxplayers;
        // offset: 0x248, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53fd9a3e9a0e78e1;
        // offset: 0x258, bitSize: 0x20(0x4 Byte(s))
        int forwardspawnhealth;
        // offset: 0x278, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5598d36d6b224c9a;
        // offset: 0x288, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnteamkilledpenalty;
        // offset: 0x290, bitSize: 0x8(0x1 Byte(s))
        uint:3 ballcount;
        // offset: 0x298, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_6ae29c8144cb7659;
        // offset: 0x2a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c82ffb472a21cac;
        // offset: 0x2b0, bitSize: 0x8(0x1 Byte(s))
        uint:3 gunselection;
        // offset: 0x2b8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_53c1e74b2d385c17;
        // offset: 0x2d0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_17cc26f74ef911e0;
        // offset: 0x2d8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_67d54bbc52811921;
        // offset: 0x2e0, bitSize: 0x8(0x1 Byte(s))
        fixed<5,2> hash_1614b9cbe0df6f75;
        // offset: 0x2e8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_35104d2d5fd22ce7;
        // offset: 0x300, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1441f7ad44e1cfd4;
        // offset: 0x308, bitSize: 0x8(0x1 Byte(s))
        uint:7 killstreakdeathpenaltyindividualearn;
        // offset: 0x310, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_c0beb1e5a80c25c;
        // offset: 0x318, bitSize: 0x8(0x1 Byte(s))
        uint:5 prematchrequirement;
        // offset: 0x320, bitSize: 0x8(0x1 Byte(s))
        uint:3 spectatetype;
        // offset: 0x328, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> hash_57fe6337297bcce9;
        // offset: 0x330, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_1df445b9d1af641f;
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:2 randomobjectivelocations;
        // offset: 0x340, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_55db4a8546a13c79;
        // offset: 0x358, bitSize: 0x8(0x1 Byte(s))
        uint:5 roundwinlimit;
        // offset: 0x360, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_ecf2124e9108fc4;
        // offset: 0x368, bitSize: 0x10(0x2 Byte(s))
        uint:10 antiboostdistance;
        // offset: 0x378, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_115a3410d9dbf98d;
        // offset: 0x388, bitSize: 0x10(0x2 Byte(s))
        uint:15 roundscorelimit;
        // offset: 0x398, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_320a5028d10f305a;
        // offset: 0x3b0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> hash_154db5a1b2e9d757;
        // offset: 0x3c0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> bulletdamagescalar;
        // offset: 0x3c8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1df1e1139a1a4eb8;
        // offset: 0x3e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_79c708d50a12e336;
        // offset: 0x3f0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_49d61407873849a2;
        // offset: 0x3f8, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostontimeamount;
        // offset: 0x400, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> defusetime;
        // offset: 0x408, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> teamkillreducedpenalty;
        // offset: 0x410, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxallocation;
        // offset: 0x418, bitSize: 0x8(0x1 Byte(s))
        uint:4 carryscore;
        // offset: 0x420, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c8636144ad47ac9;
        // offset: 0x430, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53cd45b387951ca1;
        // offset: 0x440, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_6e49ce7bbe6d3f1f;
        // offset: 0x448, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> killeventscoremultiplier;
        // offset: 0x450, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_2efff808b2701aa5;
        // offset: 0x460, bitSize: 0x8(0x1 Byte(s))
        uint:6 ticketslostontimeinterval;
        // offset: 0x468, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartexplosivedelay;
        // offset: 0x470, bitSize: 0x8(0x1 Byte(s))
        uint:2 cleandepositrotation;
        // offset: 0x478, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_21754b274494502e;
        // offset: 0x488, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_1311b008d2f6dbc1;
        // offset: 0x498, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_5f7c18fecb2a1a44;
        // offset: 0x4a8, bitSize: 0x8(0x1 Byte(s))
        uint:7 idleflagresettime;
        // offset: 0x4b0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowergainfactor;
        // offset: 0x4b8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1f65f0a6f0eb3110;
        // offset: 0x4d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2a02614601829003;
        // offset: 0x4e0, bitSize: 0x8(0x1 Byte(s))
        uint:4 setbacks;
        // offset: 0x4e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1db05f3e34ccaaaf;
        // offset: 0x4f8, bitSize: 0x20(0x4 Byte(s))
        int hash_6b808ab4016cb1e1;
        // offset: 0x518, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1efac5fcdfa4f;
        // offset: 0x528, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1eeac5fcdf89c;
        // offset: 0x538, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f1ac5fcdfdb5;
        // offset: 0x548, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f0ac5fcdfc02;
        // offset: 0x558, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1ebac5fcdf383;
        // offset: 0x568, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_20a83071685f7bd9;
        // offset: 0x580, bitSize: 0x10(0x2 Byte(s))
        fixed<12,4> trm_maxheight;
        // offset: 0x590, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_2b88c6ac064e9c59;
        // offset: 0x598, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayofthematchevents;
        // offset: 0x5a0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostwarmachine;
        // offset: 0x5a8, bitSize: 0x10(0x2 Byte(s))
        uint:15 scorelimit;
        // offset: 0x5b8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> cratecapturetime;
        // offset: 0x5c0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4a6ef8940f4cbb83;
        // offset: 0x5c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eeb8cb5c84b1939;
        // offset: 0x5d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eba3289161fd45f;
        // offset: 0x5e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_22c53ddb2cb67f13;
        // offset: 0x5f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_9c266bdf9cad7fa;
        // offset: 0x608, bitSize: 0x8(0x1 Byte(s))
        uint:3 killpointsinenemyprotectedzone;
        // offset: 0x610, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6e2b8452b08a545c;
        // offset: 0x618, bitSize: 0x10(0x2 Byte(s))
        uint:10 playermaxhealth;
        // offset: 0x628, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1833c853bfe78ffc;
        // offset: 0x630, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_5e8818f69d557ad2;
        // offset: 0x648, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_3e13b420d6773b4c;
        // offset: 0x650, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_718b497c5205e74b;
        // offset: 0x660, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostgunship;
        // offset: 0x668, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_42b840c668fd2c85;
        // offset: 0x678, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_44f0b1c6b2d3b6f8;
        // offset: 0x688, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5dc620c6c0919d82;
        // offset: 0x698, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2aea36c6a4135574;
        // offset: 0x6a8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_32c16dc6a8490e81;
        // offset: 0x6b8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_66a7d866327081eb;
        // offset: 0x6c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5f116b8cfbdbc3fe;
        // offset: 0x6d0, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsforsurvivalbonus;
        // offset: 0x6d8, bitSize: 0x190(0x32 Byte(s)), array:0x32(hti:0xffff)
        uint:5 maxuniquerolesperteam[50];
        // offset: 0x868, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_7adb62a64c6d963;
        // offset: 0x870, bitSize: 0x8(0x1 Byte(s))
        uint:3 objectivepingtime;
        // offset: 0x878, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_271177b8b4cfcf15;
        // offset: 0x890, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamkillspawndelay;
        // offset: 0x898, bitSize: 0x8(0x1 Byte(s))
        uint:8 carrierarmor;
        // offset: 0x8a0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_51a2ab391c340e03;
        // offset: 0x8b8, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostondeath;
        // offset: 0x8c0, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_47d4aa0161d78e15;
        // offset: 0x8c8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostremotemissile;
        // offset: 0x8d0, bitSize: 0x10(0x2 Byte(s))
        uint:9 carriermovespeed;
        // offset: 0x8e0, bitSize: 0x8(0x1 Byte(s))
        uint:5 boottime;
        // offset: 0x8e8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_652bc8c2577ec788;
        // offset: 0x8f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_72852fc1d977c3a0;
        // offset: 0x908, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_314c2f7312bde4af;
        // offset: 0x910, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_5d5f4ee35c9977c7;
        // offset: 0x918, bitSize: 0x8(0x1 Byte(s))
        uint:3 roundstartfriendlyfiretype;
        // offset: 0x920, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagdecaytime;
        // offset: 0x928, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_76f686986e1a58b;
        // offset: 0x938, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_vs_bots;
        // offset: 0x940, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_26b08269156ca0e5;
        // offset: 0x948, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamnumlives;
        // offset: 0x950, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> planttime;
        // offset: 0x958, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6141cddd96ac214e;
        // offset: 0x960, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnprotectiontime;
        // offset: 0x968, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7353bbc24d72ec59;
        // offset: 0x978, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_573034b3252cb4e3;
        // offset: 0x990, bitSize: 0x10(0x2 Byte(s))
        uint:10 inactivitykick;
        // offset: 0x9a0, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspersecondarykill;
        // offset: 0x9a8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team3;
        // offset: 0x9b0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team4;
        // offset: 0x9b8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team5;
        // offset: 0x9c0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team6;
        // offset: 0x9c8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team7;
        // offset: 0x9d0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team8;
        // offset: 0x9d8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team9;
        // offset: 0x9e0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerhealthregentime;
        // offset: 0x9e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5d40d1f9fb7f;
        // offset: 0x9f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5c40d1f9f9cc;
        // offset: 0xa08, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5f40d1f9fee5;
        // offset: 0xa18, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5e40d1f9fd32;
        // offset: 0xa28, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5940d1f9f4b3;
        // offset: 0xa38, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4f00f3f568c284af;
        // offset: 0xa48, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7f190c8839d3f05c;
        // offset: 0xa58, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_3a4691a853585241;
        // offset: 0xa60, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> destroytime;
        // offset: 0xa70, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagrespawntime;
        // offset: 0xa78, bitSize: 0x8(0x1 Byte(s))
        uint:2 shutdowndamage;
        // offset: 0xa80, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> gameadvertisementruletimeleft;
        // offset: 0xa88, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_6a48bbfb703d5c9c;
        // offset: 0xa90, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_239b391c77ebf8c1;
        // offset: 0xa98, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7c33e5bebaf05afb;
        // offset: 0xaa8, bitSize: 0x10(0x2 Byte(s))
        uint:11 objectivehealth;
        // offset: 0xab8, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnsuicidepenalty;
        // offset: 0xac0, bitSize: 0x8(0x1 Byte(s))
        uint:2 robotspeed;
        // offset: 0xac8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_467be34402dad274;
        // offset: 0xad0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_68e3f54e05f57d85;
        // offset: 0xad8, bitSize: 0x8(0x1 Byte(s))
        uint:7 servermsec;
        // offset: 0xae0, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_410c5c7c1e60b534;
        // offset: 0xae8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_212cc2b5b360189c;
        // offset: 0xaf0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_552338718ec6d2df;
        // offset: 0xaf8, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1c0040943c216593;
        // offset: 0xb00, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxplayereventsperminute;
        // offset: 0xb10, bitSize: 0x10(0x2 Byte(s))
        uint:10 leaderbonus;
        // offset: 0xb20, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_5c918cbf75e16116;
        // offset: 0xb28, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_51e989796c38cd87;
        // offset: 0xb30, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostnapalm;
        // offset: 0xb38, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_119bd2704c238e5;
        // offset: 0xb50, bitSize: 0x8(0x1 Byte(s))
        uint:2 enemycarriervisible;
        // offset: 0xb58, bitSize: 0x10(0x2 Byte(s))
        uint:9 autodestroytime;
        // offset: 0xb68, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkillconfirmed;
        // offset: 0xb70, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4e4352bd1aaeedfe;
        // offset: 0xb78, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_507e1eb7f297d872;
        // offset: 0xb88, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_342835495fca42bb;
        // offset: 0xb98, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7cada6c0936f259b;
        // offset: 0xba8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> waverespawndelay;
        // offset: 0xbb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1974892bc7266bab;
        // offset: 0xbc0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_567db38226658dbf;
        // offset: 0xbc8, bitSize: 0x8(0x1 Byte(s))
        uint:6 prematchperiod;
        // offset: 0xbd0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostsentry;
        // offset: 0xbd8, bitSize: 0x8(0x1 Byte(s))
        uint:6 teamkillscore;
        // offset: 0xbe0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_102aeddad113f70c;
        // offset: 0xbe8, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_4635a26c94b56725;
        // offset: 0xbf0, bitSize: 0x8(0x1 Byte(s))
        uint:3 platooncount;
        // offset: 0xbf8, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierhealth;
        // offset: 0xc18, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_71da377e373bc755;
        // offset: 0xc30, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_38a8f601ab8388d0;
        // offset: 0xc40, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarykill;
        // offset: 0xc48, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperheadshot;
        // offset: 0xc50, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_75ff4383212c5111;
        // offset: 0xc60, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1908ad844e6c3e37;
        // offset: 0xc68, bitSize: 0x8(0x1 Byte(s))
        uint:4 pregameitemmaxvotes;
        // offset: 0xc70, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_50029ecff5e7d383;
        // offset: 0xc80, bitSize: 0x8(0x1 Byte(s))
        uint:7 playernumlives;
        // offset: 0xc88, bitSize: 0x8(0x1 Byte(s))
        uint:2 infectionmode;
        // offset: 0xc90, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleround;
        // offset: 0xc98, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7d53c8bab3db8122;
        // offset: 0xca8, bitSize: 0x8(0x1 Byte(s))
        fixed<7,1> incrementalspawndelay;
        // offset: 0xcb0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_allies;
        // offset: 0xcb8, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxsuicidesbeforekick;
        // offset: 0xcc0, bitSize: 0x8(0x1 Byte(s))
        uint:7 gameadvertisementrulescorepercent;
        // offset: 0xcc8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_3e76ce42036815cc;
        // offset: 0xcd8, bitSize: 0x10(0x2 Byte(s))
        int:10 hash_3ccd8e1bf3864fa1;
        // offset: 0xce8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_130d127406ab976e;
        // offset: 0xcf8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostairpatrol;
        // offset: 0xd00, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostcuav;
        // offset: 0xd08, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostrcxd;
        // offset: 0xd10, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostvtol;
        // offset: 0xd18, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_40c4b447a58a7da4;
        // offset: 0xd28, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> hash_47e9736d437be7c8;
        // offset: 0xd30, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1ea82b1edff2a13b;
        // offset: 0xd40, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c31c3f19402e1f;
        // offset: 0xd50, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandtimer;
        // offset: 0xd58, bitSize: 0x8(0x1 Byte(s))
        uint:6 reboottime;
        // offset: 0xd60, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscorepercleandeposit;
        // offset: 0xd68, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extrasegmenttime;
        // offset: 0xd78, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_2081d79c44b2cefb;
        // offset: 0xd90, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6773166f56896564;
        // offset: 0xda0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1725e90b73841702;
        // offset: 0xdb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_273d049136c76afa;
        // offset: 0xdc0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_2849b6cf7317ab1b;
        // offset: 0xdc8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5a4fde688cbf1a01;
        // offset: 0xdd8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c72ac3d026ca4eb;
        // offset: 0xde8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_83f11b8abac148f;
        // offset: 0xdf0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_22fa97d05461a3e8;
        // offset: 0xe08, bitSize: 0x8(0x1 Byte(s))
        uint:4 pickuptime;
        // offset: 0xe10, bitSize: 0x10(0x2 Byte(s))
        fixed<14,7> hash_451245a24412d90f;
        // offset: 0xe20, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3d5a87878a3bef28;
        // offset: 0xe30, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_552467c143123c1c;
        // offset: 0xe38, bitSize: 0x20(0x4 Byte(s))
        int hash_64727525f5957d06;
        // offset: 0xe58, bitSize: 0x20(0x4 Byte(s))
        int hash_1f3285ddee84620c;
        // offset: 0xe78, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_2596f9e3d6e26ac9;
        // offset: 0xe80, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostchoppergunner;
        // offset: 0xe88, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_3767386c050fa0eb;
        // offset: 0xe90, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerrespawndelay;
        // offset: 0xe98, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_34ee1a1a574eaa4c;
        // offset: 0xea8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> spawntraptriggertime;
        // offset: 0xeb0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_26ff1d48be83e46c;
        // offset: 0xec8, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayeroffensive;
        // offset: 0xed0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_527f80b77f20b8c8;
        // offset: 0xee0, bitSize: 0x8(0x1 Byte(s))
        uint:2 allowhitmarkers;
        // offset: 0xee8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_d8215d30d36fa59;
        // offset: 0xf00, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_67ee1d8d7938baa1;
        // offset: 0xf10, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2c02a63d2c336b30;
        // offset: 0xf20, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxobjectiveeventsperminute;
        // offset: 0xf30, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_47dd11084763c671;
        // offset: 0xf40, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4201d2890785fb14;
        // offset: 0xf50, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarygrenadekill;
        // offset: 0xf58, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team10;
        // offset: 0xf60, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostcarepackage;
        // offset: 0xf68, bitSize: 0x8(0x1 Byte(s))
        uint:7 bonuslivesforcapturingzone;
        // offset: 0xf70, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_39d008c4c2044bc7;
        // offset: 0xf80, bitSize: 0x8(0x1 Byte(s))
        uint:7 startplayers;
        // offset: 0xf88, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_7d590533364efa87;
        // offset: 0xf90, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_252e760b41f3d94a;
        // offset: 0xf98, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartkillstreakdelay;
        // offset: 0xfa0, bitSize: 0x8(0x1 Byte(s))
        uint:5 totalkillsmax;
        // offset: 0xfa8, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundswitch;
        // offset: 0xfb0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerobjectiveheldrespawndelay;
        // offset: 0xfb8, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpenalty;
        // offset: 0xfc0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_18bdaa4b00863e9d;
        // offset: 0xfc8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_12ef93fbb06b1e2c;
        // offset: 0xfe0, bitSize: 0x8(0x1 Byte(s))
        uint:5 weaponcount;
        // offset: 0xfe8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1706d4b546538286;
        // offset: 0x1000, bitSize: 0x8(0x1 Byte(s))
        uint:7 weapontimer;
        // offset: 0x1008, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> overtimetimelimit;
        // offset: 0x1018, bitSize: 0x8(0x1 Byte(s))
        uint:7 cleandepositonlinetime;
        // offset: 0x1020, bitSize: 0x8(0x1 Byte(s))
        fixed<7,3> hash_4c7c8c4bd1b2a58b;
        // offset: 0x1028, bitSize: 0x8(0x1 Byte(s))
        uint:7 drafttime;
        // offset: 0x1030, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_ed89addfaaafe48;
        // offset: 0x1038, bitSize: 0x8(0x1 Byte(s))
        uint:7 objectivespawntime;
        // offset: 0x1040, bitSize: 0x8(0x1 Byte(s))
        uint:2 killcammode;
        // offset: 0x1048, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> killcamtime;
        // offset: 0x1058, bitSize: 0x8(0x1 Byte(s))
        uint:4 throwscore;
        // offset: 0x1060, bitSize: 0x8(0x1 Byte(s))
        uint:4 deposittime;
        // offset: 0x1068, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extratime;
        // offset: 0x1078, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_54d908d6273c8893;
        // offset: 0x1088, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6269eb986d22cd37;
        // offset: 0x1090, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreequipmentpowertimefactor;
        // offset: 0x1098, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostarmor;
        // offset: 0x10a0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_36ea712d503b054c;
        // offset: 0x10b8, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamcount;
        // offset: 0x10c0, bitSize: 0x20(0x4 Byte(s))
        int hash_7f38d88521da4c79;
        // offset: 0x10e0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_24c718cc0c526c38;
        // offset: 0x10e8, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundlimit;
        // offset: 0x10f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_531cc9c63ae86a93;
        // offset: 0x1100, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostartillery;
        // offset: 0x1108, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_b30022a9302a5a6;
        // offset: 0x1118, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_25d72112144c5ea0;
        // offset: 0x1128, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_39cfd81268504039;
        // offset: 0x1138, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_208071125a2b0b0b;
        // offset: 0x1148, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_52ef5b12764c8139;
        // offset: 0x1158, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4bf2241272d06bec;
        // offset: 0x1168, bitSize: 0x8(0x1 Byte(s))
        uint:2 charactercustomization;
        // offset: 0x1170, bitSize: 0x20(0x4 Byte(s))
        int hash_af4ad3316f0ded6;
        // offset: 0x1190, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_437a986f8d24d7eb;
        // offset: 0x1198, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_16182516e10d0250;
        // offset: 0x11b0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_axis;
        // offset: 0x11b8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7344dfa399020a06;
        // offset: 0x11d0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6e2abf2cc40e03f1;
        // offset: 0x11d8, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkilldenied;
        // offset: 0x11e0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> bombtimer;
        // offset: 0x11f0, bitSize: 0x1
        bool delayplayer;
        // offset: 0x11f1, bitSize: 0x1
        bool hash_196e997a082443a9;
        // offset: 0x11f2, bitSize: 0x1
        bool voipdeadchatwithdead;
        // offset: 0x11f3, bitSize: 0x1
        bool voipdeadchatwithteam;
        // offset: 0x11f4, bitSize: 0x1
        bool hash_729930c3c52653c3;
        // offset: 0x11f5, bitSize: 0x1
        bool useembleminsteadoffactionicon;
        // offset: 0x11f6, bitSize: 0x1
        bool draftenabled;
        // offset: 0x11f7, bitSize: 0x1
        bool hash_3a15393c2e90e121;
        // offset: 0x11f8, bitSize: 0x1
        bool hash_1d708093c2664515;
        // offset: 0x11f9, bitSize: 0x1
        bool overtimebestteam;
        // offset: 0x11fa, bitSize: 0x1
        bool droppedtagrespawn;
        // offset: 0x11fb, bitSize: 0x1
        bool hash_1e71b5ce1cd845b3;
        // offset: 0x11fc, bitSize: 0x1
        bool hash_25aaa9a29a90534c;
        // offset: 0x11fd, bitSize: 0x1
        bool voipkillershearvictim;
        // offset: 0x11fe, bitSize: 0x1
        bool hash_7c0dcff6ffb1e348;
        // offset: 0x11ff, bitSize: 0x1
        bool hash_4091f2d0019b1f4a;
        // offset: 0x1200, bitSize: 0x1
        bool deathcirclerespawn;
        // offset: 0x1201, bitSize: 0x1
        bool hash_2683a105198a7407;
        // offset: 0x1202, bitSize: 0x1
        bool presetclassesperteam;
        // offset: 0x1203, bitSize: 0x1
        bool hash_361f7fe066281093;
        // offset: 0x1204, bitSize: 0x1
        bool hash_232892d3b0a6240c;
        // offset: 0x1205, bitSize: 0x1
        bool bot_autofill_allies;
        // offset: 0x1206, bitSize: 0x1
        bool hash_2c55a3723cd9fdf9;
        // offset: 0x1207, bitSize: 0x1
        bool hash_5c57222bb95a06cb;
        // offset: 0x1208, bitSize: 0x1
        bool hardcoremode;
        // offset: 0x1209, bitSize: 0x1
        bool hash_135829cbab367329;
        // offset: 0x120a, bitSize: 0x1
        bool hash_495b64bd935bf7b;
        // offset: 0x120b, bitSize: 0x1
        bool useitemspawns;
        // offset: 0x120c, bitSize: 0x1
        bool hash_77b7734750cd75e9;
        // offset: 0x120d, bitSize: 0x1
        bool silentplant;
        // offset: 0x120e, bitSize: 0x1
        bool hash_5711f3e42924a635;
        // offset: 0x120f, bitSize: 0x1
        bool drafteveryround;
        // offset: 0x1210, bitSize: 0x1
        bool timepauseswheninzone;
        // offset: 0x1211, bitSize: 0x1
        bool hash_4b55d75b8d779e4;
        // offset: 0x1212, bitSize: 0x1
        bool hash_549abfbb3665d526;
        // offset: 0x1213, bitSize: 0x1
        bool scoreperplayer;
        // offset: 0x1214, bitSize: 0x1
        bool ekiaresetondeath;
        // offset: 0x1215, bitSize: 0x1
        bool kothmode;
        // offset: 0x1216, bitSize: 0x1
        bool hash_62665aebde32c8ae;
        // offset: 0x1217, bitSize: 0x1
        bool hash_18c053cae82c1167;
        // offset: 0x1218, bitSize: 0x1
        bool hash_6cf5f53d1fbb1066;
        // offset: 0x1219, bitSize: 0x1
        bool hash_3d23923f9c9757cd;
        // offset: 0x121a, bitSize: 0x1
        bool decayprogress;
        // offset: 0x121b, bitSize: 0x1
        bool playerqueuedrespawn;
        // offset: 0x121c, bitSize: 0x1
        bool scorestreaksbarebones;
        // offset: 0x121d, bitSize: 0x1
        bool cumulativeroundscores;
        // offset: 0x121e, bitSize: 0x1
        bool hash_3ad2212223b76a72;
        // offset: 0x121f, bitSize: 0x1
        bool voipdeadhearkiller;
        // offset: 0x1220, bitSize: 0x1
        bool bot_autofill_team10;
        // offset: 0x1221, bitSize: 0x1
        bool hash_6e6991561babdd7e;
        // offset: 0x1222, bitSize: 0x1
        bool bot_autofill_axis;
        // offset: 0x1223, bitSize: 0x1
        bool skiplaststand;
        // offset: 0x1224, bitSize: 0x1
        bool hash_1f3825ba2a669400;
        // offset: 0x1225, bitSize: 0x1
        bool usespawngroups;
        // offset: 0x1226, bitSize: 0x1
        bool hash_b76e50c1202aa23;
        // offset: 0x1227, bitSize: 0x1
        bool disablethirdpersonspectating;
        // offset: 0x1228, bitSize: 0x1
        bool platoonassignment;
        // offset: 0x1229, bitSize: 0x1
        bool hash_7daf08db0c451ad1;
        // offset: 0x122a, bitSize: 0x1
        bool allowlaststandforactiveclients;
        // offset: 0x122b, bitSize: 0x1
        bool hash_5cc3c32813d17039;
        // offset: 0x122c, bitSize: 0x1
        bool allowbattlechatter;
        // offset: 0x122d, bitSize: 0x1
        bool fowrevealenabled;
        // offset: 0x122e, bitSize: 0x1
        bool hash_4e8cafe9a4470898;
        // offset: 0x122f, bitSize: 0x1
        bool hash_7647d0e9a45eeca6;
        // offset: 0x1230, bitSize: 0x1
        bool hash_3cd7f961322b6b7;
        // offset: 0x1231, bitSize: 0x1
        bool hash_3293bf384d3c1e2f;
        // offset: 0x1232, bitSize: 0x1
        bool hash_5fcc23190f135afe;
        // offset: 0x1233, bitSize: 0x1
        bool hash_35376812247cdc3;
        // offset: 0x1234, bitSize: 0x1
        bool disablecontracts;
        // offset: 0x1235, bitSize: 0x1
        bool hash_2b1f40bc711c41f3;
        // offset: 0x1236, bitSize: 0x1
        bool hash_75d44b1542e3edf9;
        // offset: 0x1237, bitSize: 0x1
        bool hash_5462586bdce0346e;
        // offset: 0x1238, bitSize: 0x1
        bool gameobjectscontestedmajoritywins;
        // offset: 0x1239, bitSize: 0x1
        bool hash_2f0beae14bf17810;
        // offset: 0x123a, bitSize: 0x1
        bool autoheal;
        // offset: 0x123b, bitSize: 0x1
        bool allowannouncer;
        // offset: 0x123c, bitSize: 0x1
        bool disallowaimslowdown;
        // offset: 0x123d, bitSize: 0x1
        bool hash_435c853b64e3175e;
        // offset: 0x123e, bitSize: 0x1
        bool hash_5538f8f7758641b4;
        // offset: 0x123f, bitSize: 0x1
        bool bot_autofill_team3;
        // offset: 0x1240, bitSize: 0x1
        bool bot_autofill_team4;
        // offset: 0x1241, bitSize: 0x1
        bool bot_autofill_team5;
        // offset: 0x1242, bitSize: 0x1
        bool bot_autofill_team6;
        // offset: 0x1243, bitSize: 0x1
        bool bot_autofill_team7;
        // offset: 0x1244, bitSize: 0x1
        bool bot_autofill_team8;
        // offset: 0x1245, bitSize: 0x1
        bool bot_autofill_team9;
        // offset: 0x1246, bitSize: 0x1
        bool hash_35e6177743dac957;
        // offset: 0x1247, bitSize: 0x1
        bool hash_14fd184091ff1af;
        // offset: 0x1248, bitSize: 0x1
        bool vehiclesenabled;
        // offset: 0x1249, bitSize: 0x1
        bool decaycapturedzones;
        // offset: 0x124a, bitSize: 0x1
        bool neutralzone;
        // offset: 0x124b, bitSize: 0x1
        bool boastallowcam;
        // offset: 0x124c, bitSize: 0x1
        bool hash_7cc354dd83013a47;
        // offset: 0x124d, bitSize: 0x1
        bool onlyheadshots;
        // offset: 0x124e, bitSize: 0x1
        bool competitivesettings;
        // offset: 0x124f, bitSize: 0x1
        bool flagcapturecondition;
        // offset: 0x1250, bitSize: 0x1
        bool hash_1ca94a3bd057f19f;
        // offset: 0x1251, bitSize: 0x1
        bool hash_1346ebfec214d724;
        // offset: 0x1252, bitSize: 0x1
        bool hash_4be46e952d54e9a2;
        // offset: 0x1253, bitSize: 0x1
        bool hash_1ebf97988141c498;
        // offset: 0x1254, bitSize: 0x1
        bool hash_25fa292c7fc561b8;
        // offset: 0x1255, bitSize: 0x1
        bool flagcanbeneutralized;
        // offset: 0x1256, bitSize: 0x1
        bool hash_241e17e13da23de2;
        // offset: 0x1257, bitSize: 0x1
        bool hash_4057701fc646435d;
        // offset: 0x1258, bitSize: 0x1
        bool hash_6881c7cab0dcef39;
        // offset: 0x1259, bitSize: 0x1
        bool vehiclestimed;
        // offset: 0x125a, bitSize: 0x1
        bool pregamedraftenabled;
        // offset: 0x125b, bitSize: 0x1
        bool hash_6f03247bbcf52311;
        // offset: 0x125c, bitSize: 0x1
        bool hash_6143c4e1e18f08fd;
        // offset: 0x125d, bitSize: 0x1
        bool teamkillpointloss;
        // offset: 0x125e, bitSize: 0x1
        bool hash_322026c0342869d1;
        // offset: 0x125f, bitSize: 0x1
        bool hash_1e346fbfe02f1294;
        // offset: 0x1260, bitSize: 0x1
        bool hash_3724e6bfee03ce6e;
        // offset: 0x1261, bitSize: 0x1
        bool hash_497a2cbff8af4988;
        // offset: 0x1262, bitSize: 0x1
        bool hash_50776bbffc2b6c6d;
        // offset: 0x1263, bitSize: 0x1
        bool hash_55fc1cb09246fe30;
        // offset: 0x1264, bitSize: 0x1
        bool hash_1d5943e61e65eeae;
        // offset: 0x1265, bitSize: 0x1
        bool hash_656fd3c508d1d33e;
        // offset: 0x1266, bitSize: 0x1
        bool hash_29f3630e8e542a0a;
        // offset: 0x1267, bitSize: 0x1
        bool hash_c6a2e6c3e86125a;
        // offset: 0x1268, bitSize: 0x1
        bool hash_2ebcaa6630ba8fd5;
        // offset: 0x1269, bitSize: 0x1
        bool perksenabled;
        // offset: 0x126a, bitSize: 0x1
        bool hash_33bc6781006ae83d;
        // offset: 0x126b, bitSize: 0x1
        bool hash_655d904d5995891f;
        // offset: 0x126c, bitSize: 0x1
        bool hash_6c21d8e8de53e9c3;
        // offset: 0x126d, bitSize: 0x1
        bool hash_2966662989c3484c;
        // offset: 0x126e, bitSize: 0x1
        bool allowmapscripting;
        // offset: 0x126f, bitSize: 0x1
        bool robotshield;
        // offset: 0x1270, bitSize: 0x1
        bool hash_62e3e33ec68db92f;
        // offset: 0x1271, bitSize: 0x1
        bool hash_2a76bf462f4c2f50;
        // offset: 0x1272, bitSize: 0x1
        bool disableattachments;
        // offset: 0x1273, bitSize: 0x1
        bool disablecompass;
        // offset: 0x1274, bitSize: 0x1
        bool disableweapondrop;
        // offset: 0x1275, bitSize: 0x1
        bool escalationenabled;
        // offset: 0x1276, bitSize: 0x1
        bool hash_a564dde6ee3c657;
        // offset: 0x1277, bitSize: 0x1
        bool hash_7b8284382bffc197;
        // offset: 0x1278, bitSize: 0x1
        bool hash_25368755636c91a4;
        // offset: 0x1279, bitSize: 0x1
        bool disableclassselection;
        // offset: 0x127a, bitSize: 0x1
        bool hash_290721f8deb6ef5e;
        // offset: 0x127b, bitSize: 0x1
        bool hash_48670d9509071424;
        // offset: 0x127c, bitSize: 0x1
        bool autoteambalance;
        // offset: 0x127d, bitSize: 0x1
        bool hash_4bdd1bd86b610871;
        // offset: 0x127e, bitSize: 0x1
        bool hash_69df7093cd32f107;
        // offset: 0x127f, bitSize: 0x1
        bool hash_7c0acf14fb1f4080;
        // offset: 0x1280, bitSize: 0x1
        bool allowplayofthematch;
        // offset: 0x1281, bitSize: 0x1
        bool allowprone;
        // offset: 0x1282, bitSize: 0x1
        bool scoreresetondeath;
        // offset: 0x1283, bitSize: 0x1
        bool hash_452a45e599d3a575;
        // offset: 0x1284, bitSize: 0x1
        bool playerforcerespawn;
        // offset: 0x1285, bitSize: 0x1
        bool hash_7098f146a35b8468;
        // offset: 0x1286, bitSize: 0x1
        bool multibomb;
        // offset: 0x1287, bitSize: 0x1
        bool hash_4dd37bf6da89131;
        // offset: 0x1288, bitSize: 0x1
        bool hash_29fd164e7ff1abb0;
        // offset: 0x1289, bitSize: 0x1
        bool hash_104f124f56f0f20a;
        // offset: 0x128a, bitSize: 0x1
        bool hash_2560dae45cc112e3;
        // offset: 0x128b, bitSize: 0x1
        bool hash_50a46f60312cf53c;
        // offset: 0x128c, bitSize: 0x1
        bool hash_23b110691971b537;
        // offset: 0x128d, bitSize: 0x1
        bool deathcircle;
        // offset: 0x128e, bitSize: 0x1
        bool hash_4669425278875e14;
        // offset: 0x128f, bitSize: 0x1
        bool boastenabled;
        // offset: 0x1290, bitSize: 0x1
        bool hash_3513cf8b4287cdd7;
        // offset: 0x1291, bitSize: 0x1
        bool hash_72a2919d2ac65850;
        // offset: 0x1292, bitSize: 0x1
        bool hash_59272f59f19c342a;
        // offset: 0x1293, bitSize: 0x1
        bool hash_429521a79f75a327;
        // offset: 0x1294, bitSize: 0x1
        bool hash_69f74281cacb8a0f;
        // offset: 0x1295, bitSize: 0x1
        bool hash_5d65f5abcdad24fe;
        // offset: 0x1296, bitSize: 0x1
        bool deathpointloss;
        // offset: 0x1297, bitSize: 0x1
        bool disablecustomcac;
        // offset: 0x1298, bitSize: 0x1
        bool hash_1260b639348098e3;
        // offset: 0x1299, bitSize: 0x1
        bool rebootplayers;
        // offset: 0x129a, bitSize: 0x1
        bool oldschoolmode;
        // offset: 0x129b, bitSize: 0x1
        bool hash_4238acad9fa0f317;
        // offset: 0x129c, bitSize: 0x1
        bool allowfinalkillcam;
        // offset: 0x129d, bitSize: 0x1
        bool allowspectating;
        // offset: 0x129e, bitSize: 0x1
        bool usabledynents;
        // offset: 0x129f, bitSize: 0x1
        bool playintrocinematics;
        // offset: 0x12a0, bitSize: 0x1
        bool hash_564289af24e283db;
        // offset: 0x12a1, bitSize: 0x1
        bool hash_11e1a0adebdab01a;
        // offset: 0x12a2, bitSize: 0x1
        bool hash_7379657f823bfef9;
        // offset: 0x12a3, bitSize: 0x1
        bool hash_47df56af71e4df3;
        // offset: 0x12a4, bitSize: 0x1
        bool hash_282689f7ec6d7d32;
        // offset: 0x12a5, bitSize: 0x1
        bool hash_4ce6b119f5979182;
        // offset: 0x12a6, bitSize: 0x1
        bool spawnselectenabled;
        // offset: 0x12a7, bitSize: 0x1
        bool loadoutkillstreaksenabled;
        // offset: 0x12a8, bitSize: 0x1
        bool pregameitemvoteenabled;
        // offset: 0x12a9, bitSize: 0x1
        bool hash_38d6e4d91bbc82ee;
        // offset: 0x12aa, bitSize: 0x1
        bool hash_2ffb09b25b95a125;
        // offset: 0x12ab, bitSize: 0x1
        bool hash_5684ea266d45be15;
        // offset: 0x12ac, bitSize: 0x1
        bool hash_7f273e367f26254;
        // offset: 0x12ad, bitSize: 0x1
        bool hash_65c535aa5198d01d;
        // offset: 0x12ae, bitSize: 0x1
        bool disallowprone;
        // offset: 0x12af, bitSize: 0x1
        bool hash_3cc3acd830a8eef;
        // offset: 0x12b0, bitSize: 0x1
        bool moveplayers;
        // offset: 0x12b1, bitSize: 0x1
        bool hash_6945105793e31c56;
        // offset: 0x12b2, bitSize: 0x1
        bool disabletacinsert;
        // offset: 0x12b3, bitSize: 0x1
        bool voipdeadhearallliving;
        // offset: 0x12b4, bitSize: 0x1
        bool hash_4ca06c610b5d53bd;
        // offset: 0x12b5, bitSize: 0x1
        bool killstreaksgivegamescore;
        // offset: 0x12b6, bitSize: 0x1
        bool hash_1cc3f98086d6f5dd;
        // offset: 0x12b7, bitSize: 0x1
        bool flagcapturerateincrease;
        // offset: 0x12b8, bitSize: 0x1
        bool use_doors;
        // offset: 0x12b9, bitSize: 0x1
        bool pvponly;
        // offset: 0x12ba, bitSize: 0x1
        bool forwardspawnteamspecificspawns;
        // offset: 0x12bb, bitSize: 0x1
        bool hash_50b56d2635cbb74b;
        // offset: 0x12bc, bitSize: 0x1
        bool hash_68fd4f67ea4b4ff8;
        // offset: 0x12bd, bitSize: 0x1
        bool forwardspawntakesdamage;
        // offset: 0x12be, bitSize: 0x1
        bool allowingameteamchange;
        // offset: 0x12bf, bitSize: 0x1
        bool hash_297b69789a6283b4;
        // offset: 0x12c0, bitSize: 0x1
        bool deathzones;
        // offset: 0x12c1, bitSize: 0x1
        bool classicmode;
        // offset: 0x12c2, bitSize: 0x1
        bool hash_12c8b36832284f70;
        // offset: 0x12c3, bitSize: 0x1
        bool voipdeadhearteamliving;
        // offset: 0x12c4, bitSize: 0x1
        bool hash_51f7292117d41790;
        // offset: 0x12c5, bitSize: 0x1
        bool capdecay;
        // offset: 0x12c6, bitSize: 0x1
        bool hash_7bcb76b8a52c35e;
        // offset: 0x12c7, bitSize: 0x1
        bool hash_5c90286f1514c76;
        // offset: 0x12c8, bitSize: 0x1
        bool hash_b87383d5497a826;
        // offset: 0x12c9, bitSize: 0x1
        bool voipeveryonehearseveryone;
        // offset: 0x12ca, bitSize: 0x1
        bool hash_460af55ecefb11f;
        // offset: 0x12cb, bitSize: 0x1
        bool hash_4f4a73f236278ba8;
        // offset: 0x12cc, bitSize: 0x1
        bool hash_5f76e2d55ad861ed;
        // offset: 0x12cd, bitSize: 0x1
        bool laststandfinishing;
        // offset: 0x12ce, bitSize: 0x1
        bool hash_201c1769d32b30d3;
    };

    // root: bitSize: 0x12d0, members: 1

    // offset: 0x0, bitSize: 0x12d0(0x25a Byte(s))
    gametypesettings gametypesettings;
};

version hash_ea09a67d735536b2 {
    // enums ..... 0 (0x0)
    // structs ... 2 (0x2)
    // header bit size .. 5080 (0x13d8)
    // header byte size . 635 (0x27b)

    // bitSize: 0x1328, members: 573
    struct gametypesettings {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> timelimit;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_25740f686a5cfc7e;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        uint:4 playerkillsmax;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_129fca5e3a00477f;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_444634d99df7a661;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperdeath;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:2 forceradar;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkill;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playersprinttime;
        // offset: 0x58, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> capturetime;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleroundswon;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_9fe0e2b1a7f556;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayerdefensive;
        // offset: 0x88, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_35e9fc8eee6881e0;
        // offset: 0x90, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_613785a993624133;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandrevivehealth;
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierdestroytime;
        // offset: 0xc0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostattackhelicopter;
        // offset: 0xc8, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_6024ee628431415;
        // offset: 0xd8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostbow;
        // offset: 0xe0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostuav;
        // offset: 0xe8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperweaponkill;
        // offset: 0xf0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_722d8dafb62ce7fe;
        // offset: 0x108, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_4a10303376ed2d10;
        // offset: 0x110, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_68b825c95acb9218;
        // offset: 0x120, bitSize: 0x8(0x1 Byte(s))
        uint:6 maxteamplayers;
        // offset: 0x128, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandhealth;
        // offset: 0x130, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6b2754246df1bc7c;
        // offset: 0x140, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_46f0ae82f5c2f7d4;
        // offset: 0x150, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> maxusers;
        // offset: 0x160, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_1ca4d65346568642;
        // offset: 0x170, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_312848239629f5b9;
        // offset: 0x180, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1d77a77db928f695;
        // offset: 0x190, bitSize: 0x8(0x1 Byte(s))
        uint:4 draftrequiredclients;
        // offset: 0x198, bitSize: 0x8(0x1 Byte(s))
        uint:3 friendlyfiretype;
        // offset: 0x1a0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7fee0559953eec6;
        // offset: 0x1b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_28005bb885acabc3;
        // offset: 0x1c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4725de6afe873b87;
        // offset: 0x1d8, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_16184f2fd4014b39;
        // offset: 0x1e0, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspermeleekill;
        // offset: 0x1e8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_51f121252f1d8c7f;
        // offset: 0x1f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_32da91b78e54e7b5;
        // offset: 0x200, bitSize: 0x8(0x1 Byte(s))
        uint:6 preroundperiod;
        // offset: 0x208, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_56f6d77da3124af2;
        // offset: 0x218, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowertimefactor;
        // offset: 0x220, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_62a4fd40810cb61;
        // offset: 0x228, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_56a31bddd92a64dc;
        // offset: 0x230, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> laststandrevivetime;
        // offset: 0x238, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_429d353f0be087a5;
        // offset: 0x250, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpunishcount;
        // offset: 0x258, bitSize: 0x8(0x1 Byte(s))
        uint:7 maxplayers;
        // offset: 0x260, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53fd9a3e9a0e78e1;
        // offset: 0x270, bitSize: 0x20(0x4 Byte(s))
        int forwardspawnhealth;
        // offset: 0x290, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5598d36d6b224c9a;
        // offset: 0x2a0, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnteamkilledpenalty;
        // offset: 0x2a8, bitSize: 0x8(0x1 Byte(s))
        uint:3 ballcount;
        // offset: 0x2b0, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_6ae29c8144cb7659;
        // offset: 0x2b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c82ffb472a21cac;
        // offset: 0x2c8, bitSize: 0x8(0x1 Byte(s))
        uint:3 gunselection;
        // offset: 0x2d0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_53c1e74b2d385c17;
        // offset: 0x2e8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_17cc26f74ef911e0;
        // offset: 0x2f0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_67d54bbc52811921;
        // offset: 0x2f8, bitSize: 0x8(0x1 Byte(s))
        fixed<5,2> hash_1614b9cbe0df6f75;
        // offset: 0x300, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_35104d2d5fd22ce7;
        // offset: 0x318, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1441f7ad44e1cfd4;
        // offset: 0x320, bitSize: 0x8(0x1 Byte(s))
        uint:7 killstreakdeathpenaltyindividualearn;
        // offset: 0x328, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_c0beb1e5a80c25c;
        // offset: 0x330, bitSize: 0x8(0x1 Byte(s))
        uint:5 prematchrequirement;
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:3 spectatetype;
        // offset: 0x340, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> hash_57fe6337297bcce9;
        // offset: 0x348, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_1df445b9d1af641f;
        // offset: 0x350, bitSize: 0x8(0x1 Byte(s))
        uint:3 randomobjectivelocations;
        // offset: 0x358, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_55db4a8546a13c79;
        // offset: 0x370, bitSize: 0x8(0x1 Byte(s))
        uint:5 roundwinlimit;
        // offset: 0x378, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_ecf2124e9108fc4;
        // offset: 0x380, bitSize: 0x10(0x2 Byte(s))
        uint:10 antiboostdistance;
        // offset: 0x390, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_115a3410d9dbf98d;
        // offset: 0x3a0, bitSize: 0x10(0x2 Byte(s))
        uint:15 roundscorelimit;
        // offset: 0x3b0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_320a5028d10f305a;
        // offset: 0x3c8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> hash_154db5a1b2e9d757;
        // offset: 0x3d8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> bulletdamagescalar;
        // offset: 0x3e0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1df1e1139a1a4eb8;
        // offset: 0x3f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_79c708d50a12e336;
        // offset: 0x408, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_49d61407873849a2;
        // offset: 0x410, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostontimeamount;
        // offset: 0x418, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> defusetime;
        // offset: 0x420, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> teamkillreducedpenalty;
        // offset: 0x428, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxallocation;
        // offset: 0x430, bitSize: 0x8(0x1 Byte(s))
        uint:4 carryscore;
        // offset: 0x438, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c8636144ad47ac9;
        // offset: 0x448, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53cd45b387951ca1;
        // offset: 0x458, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_6e49ce7bbe6d3f1f;
        // offset: 0x460, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> killeventscoremultiplier;
        // offset: 0x468, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_2efff808b2701aa5;
        // offset: 0x478, bitSize: 0x8(0x1 Byte(s))
        uint:6 ticketslostontimeinterval;
        // offset: 0x480, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartexplosivedelay;
        // offset: 0x488, bitSize: 0x8(0x1 Byte(s))
        uint:2 cleandepositrotation;
        // offset: 0x490, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_21754b274494502e;
        // offset: 0x4a0, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_1311b008d2f6dbc1;
        // offset: 0x4b0, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_5f7c18fecb2a1a44;
        // offset: 0x4c0, bitSize: 0x8(0x1 Byte(s))
        uint:7 idleflagresettime;
        // offset: 0x4c8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowergainfactor;
        // offset: 0x4d0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1f65f0a6f0eb3110;
        // offset: 0x4e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2a02614601829003;
        // offset: 0x4f8, bitSize: 0x8(0x1 Byte(s))
        uint:4 setbacks;
        // offset: 0x500, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1db05f3e34ccaaaf;
        // offset: 0x510, bitSize: 0x20(0x4 Byte(s))
        int hash_6b808ab4016cb1e1;
        // offset: 0x530, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1efac5fcdfa4f;
        // offset: 0x540, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1eeac5fcdf89c;
        // offset: 0x550, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f1ac5fcdfdb5;
        // offset: 0x560, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f0ac5fcdfc02;
        // offset: 0x570, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1ebac5fcdf383;
        // offset: 0x580, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_20a83071685f7bd9;
        // offset: 0x598, bitSize: 0x10(0x2 Byte(s))
        fixed<12,4> trm_maxheight;
        // offset: 0x5a8, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_2b88c6ac064e9c59;
        // offset: 0x5b0, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayofthematchevents;
        // offset: 0x5b8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostwarmachine;
        // offset: 0x5c0, bitSize: 0x10(0x2 Byte(s))
        uint:15 scorelimit;
        // offset: 0x5d0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> cratecapturetime;
        // offset: 0x5d8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4a6ef8940f4cbb83;
        // offset: 0x5e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eeb8cb5c84b1939;
        // offset: 0x5f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eba3289161fd45f;
        // offset: 0x600, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_22c53ddb2cb67f13;
        // offset: 0x610, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_9c266bdf9cad7fa;
        // offset: 0x620, bitSize: 0x8(0x1 Byte(s))
        uint:3 killpointsinenemyprotectedzone;
        // offset: 0x628, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6e2b8452b08a545c;
        // offset: 0x630, bitSize: 0x10(0x2 Byte(s))
        uint:10 playermaxhealth;
        // offset: 0x640, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1833c853bfe78ffc;
        // offset: 0x648, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_5e8818f69d557ad2;
        // offset: 0x660, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_3e13b420d6773b4c;
        // offset: 0x668, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_718b497c5205e74b;
        // offset: 0x678, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostgunship;
        // offset: 0x680, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_42b840c668fd2c85;
        // offset: 0x690, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_44f0b1c6b2d3b6f8;
        // offset: 0x6a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5dc620c6c0919d82;
        // offset: 0x6b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2aea36c6a4135574;
        // offset: 0x6c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_32c16dc6a8490e81;
        // offset: 0x6d0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_66a7d866327081eb;
        // offset: 0x6d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5f116b8cfbdbc3fe;
        // offset: 0x6e8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsforsurvivalbonus;
        // offset: 0x6f0, bitSize: 0x190(0x32 Byte(s)), array:0x32(hti:0xffff)
        uint:5 maxuniquerolesperteam[50];
        // offset: 0x880, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_7adb62a64c6d963;
        // offset: 0x888, bitSize: 0x8(0x1 Byte(s))
        uint:3 objectivepingtime;
        // offset: 0x890, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_271177b8b4cfcf15;
        // offset: 0x8a8, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamkillspawndelay;
        // offset: 0x8b0, bitSize: 0x8(0x1 Byte(s))
        uint:8 carrierarmor;
        // offset: 0x8b8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_51a2ab391c340e03;
        // offset: 0x8d0, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostondeath;
        // offset: 0x8d8, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_47d4aa0161d78e15;
        // offset: 0x8e0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostremotemissile;
        // offset: 0x8e8, bitSize: 0x10(0x2 Byte(s))
        uint:9 carriermovespeed;
        // offset: 0x8f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 boottime;
        // offset: 0x900, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_652bc8c2577ec788;
        // offset: 0x910, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_72852fc1d977c3a0;
        // offset: 0x920, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_314c2f7312bde4af;
        // offset: 0x928, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_5d5f4ee35c9977c7;
        // offset: 0x930, bitSize: 0x8(0x1 Byte(s))
        uint:3 roundstartfriendlyfiretype;
        // offset: 0x938, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagdecaytime;
        // offset: 0x940, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_76f686986e1a58b;
        // offset: 0x950, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_vs_bots;
        // offset: 0x958, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_26b08269156ca0e5;
        // offset: 0x960, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamnumlives;
        // offset: 0x968, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> planttime;
        // offset: 0x970, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6141cddd96ac214e;
        // offset: 0x978, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnprotectiontime;
        // offset: 0x980, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7353bbc24d72ec59;
        // offset: 0x990, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_573034b3252cb4e3;
        // offset: 0x9a8, bitSize: 0x10(0x2 Byte(s))
        uint:10 inactivitykick;
        // offset: 0x9b8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspersecondarykill;
        // offset: 0x9c0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team3;
        // offset: 0x9c8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team4;
        // offset: 0x9d0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team5;
        // offset: 0x9d8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team6;
        // offset: 0x9e0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team7;
        // offset: 0x9e8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team8;
        // offset: 0x9f0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team9;
        // offset: 0x9f8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerhealthregentime;
        // offset: 0xa00, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5d40d1f9fb7f;
        // offset: 0xa10, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5c40d1f9f9cc;
        // offset: 0xa20, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5f40d1f9fee5;
        // offset: 0xa30, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5e40d1f9fd32;
        // offset: 0xa40, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5940d1f9f4b3;
        // offset: 0xa50, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4f00f3f568c284af;
        // offset: 0xa60, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7f190c8839d3f05c;
        // offset: 0xa70, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_3a4691a853585241;
        // offset: 0xa78, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> destroytime;
        // offset: 0xa88, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagrespawntime;
        // offset: 0xa90, bitSize: 0x8(0x1 Byte(s))
        uint:2 shutdowndamage;
        // offset: 0xa98, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> gameadvertisementruletimeleft;
        // offset: 0xaa0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_6a48bbfb703d5c9c;
        // offset: 0xaa8, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_239b391c77ebf8c1;
        // offset: 0xab0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7c33e5bebaf05afb;
        // offset: 0xac0, bitSize: 0x10(0x2 Byte(s))
        uint:11 objectivehealth;
        // offset: 0xad0, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnsuicidepenalty;
        // offset: 0xad8, bitSize: 0x8(0x1 Byte(s))
        uint:2 robotspeed;
        // offset: 0xae0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_467be34402dad274;
        // offset: 0xae8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_68e3f54e05f57d85;
        // offset: 0xaf0, bitSize: 0x8(0x1 Byte(s))
        uint:7 servermsec;
        // offset: 0xaf8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_410c5c7c1e60b534;
        // offset: 0xb00, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_212cc2b5b360189c;
        // offset: 0xb08, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_55a92a1d652b5edc;
        // offset: 0xb10, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_552338718ec6d2df;
        // offset: 0xb18, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1c0040943c216593;
        // offset: 0xb20, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxplayereventsperminute;
        // offset: 0xb30, bitSize: 0x10(0x2 Byte(s))
        uint:10 leaderbonus;
        // offset: 0xb40, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_5c918cbf75e16116;
        // offset: 0xb48, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_51e989796c38cd87;
        // offset: 0xb50, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostnapalm;
        // offset: 0xb58, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_119bd2704c238e5;
        // offset: 0xb70, bitSize: 0x8(0x1 Byte(s))
        uint:2 enemycarriervisible;
        // offset: 0xb78, bitSize: 0x10(0x2 Byte(s))
        uint:9 autodestroytime;
        // offset: 0xb88, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkillconfirmed;
        // offset: 0xb90, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4e4352bd1aaeedfe;
        // offset: 0xb98, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_507e1eb7f297d872;
        // offset: 0xba8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_342835495fca42bb;
        // offset: 0xbb8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7cada6c0936f259b;
        // offset: 0xbc8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> waverespawndelay;
        // offset: 0xbd0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1974892bc7266bab;
        // offset: 0xbe0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_567db38226658dbf;
        // offset: 0xbe8, bitSize: 0x8(0x1 Byte(s))
        uint:6 prematchperiod;
        // offset: 0xbf0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostsentry;
        // offset: 0xbf8, bitSize: 0x8(0x1 Byte(s))
        uint:6 teamkillscore;
        // offset: 0xc00, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_102aeddad113f70c;
        // offset: 0xc08, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_4635a26c94b56725;
        // offset: 0xc10, bitSize: 0x8(0x1 Byte(s))
        uint:3 platooncount;
        // offset: 0xc18, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierhealth;
        // offset: 0xc38, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_71da377e373bc755;
        // offset: 0xc50, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_38a8f601ab8388d0;
        // offset: 0xc60, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarykill;
        // offset: 0xc68, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperheadshot;
        // offset: 0xc70, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_75ff4383212c5111;
        // offset: 0xc80, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1908ad844e6c3e37;
        // offset: 0xc88, bitSize: 0x8(0x1 Byte(s))
        uint:4 pregameitemmaxvotes;
        // offset: 0xc90, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_50029ecff5e7d383;
        // offset: 0xca0, bitSize: 0x8(0x1 Byte(s))
        uint:7 playernumlives;
        // offset: 0xca8, bitSize: 0x8(0x1 Byte(s))
        uint:2 infectionmode;
        // offset: 0xcb0, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleround;
        // offset: 0xcb8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7d53c8bab3db8122;
        // offset: 0xcc8, bitSize: 0x8(0x1 Byte(s))
        fixed<7,1> incrementalspawndelay;
        // offset: 0xcd0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_allies;
        // offset: 0xcd8, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxsuicidesbeforekick;
        // offset: 0xce0, bitSize: 0x8(0x1 Byte(s))
        uint:7 gameadvertisementrulescorepercent;
        // offset: 0xce8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_3e76ce42036815cc;
        // offset: 0xcf8, bitSize: 0x10(0x2 Byte(s))
        int:10 hash_3ccd8e1bf3864fa1;
        // offset: 0xd08, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_130d127406ab976e;
        // offset: 0xd18, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostairpatrol;
        // offset: 0xd20, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostcuav;
        // offset: 0xd28, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostrcxd;
        // offset: 0xd30, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostvtol;
        // offset: 0xd38, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_40c4b447a58a7da4;
        // offset: 0xd48, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> hash_47e9736d437be7c8;
        // offset: 0xd50, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3e1bb1840c4ab667;
        // offset: 0xd60, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1ea82b1edff2a13b;
        // offset: 0xd70, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c31c3f19402e1f;
        // offset: 0xd80, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandtimer;
        // offset: 0xd88, bitSize: 0x8(0x1 Byte(s))
        uint:6 reboottime;
        // offset: 0xd90, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscorepercleandeposit;
        // offset: 0xd98, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extrasegmenttime;
        // offset: 0xda8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_2081d79c44b2cefb;
        // offset: 0xdc0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6773166f56896564;
        // offset: 0xdd0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1725e90b73841702;
        // offset: 0xde0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_273d049136c76afa;
        // offset: 0xdf0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_2849b6cf7317ab1b;
        // offset: 0xdf8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5a4fde688cbf1a01;
        // offset: 0xe08, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c72ac3d026ca4eb;
        // offset: 0xe18, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_83f11b8abac148f;
        // offset: 0xe20, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_22fa97d05461a3e8;
        // offset: 0xe38, bitSize: 0x8(0x1 Byte(s))
        uint:4 pickuptime;
        // offset: 0xe40, bitSize: 0x10(0x2 Byte(s))
        fixed<14,7> hash_451245a24412d90f;
        // offset: 0xe50, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3d5a87878a3bef28;
        // offset: 0xe60, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_552467c143123c1c;
        // offset: 0xe68, bitSize: 0x20(0x4 Byte(s))
        int hash_64727525f5957d06;
        // offset: 0xe88, bitSize: 0x20(0x4 Byte(s))
        int hash_1f3285ddee84620c;
        // offset: 0xea8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_2596f9e3d6e26ac9;
        // offset: 0xeb0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostchoppergunner;
        // offset: 0xeb8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_3767386c050fa0eb;
        // offset: 0xec0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerrespawndelay;
        // offset: 0xec8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_34ee1a1a574eaa4c;
        // offset: 0xed8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> spawntraptriggertime;
        // offset: 0xee0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_26ff1d48be83e46c;
        // offset: 0xef8, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayeroffensive;
        // offset: 0xf00, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_527f80b77f20b8c8;
        // offset: 0xf10, bitSize: 0x8(0x1 Byte(s))
        uint:2 allowhitmarkers;
        // offset: 0xf18, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_d8215d30d36fa59;
        // offset: 0xf30, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_67ee1d8d7938baa1;
        // offset: 0xf40, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2c02a63d2c336b30;
        // offset: 0xf50, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxobjectiveeventsperminute;
        // offset: 0xf60, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_47dd11084763c671;
        // offset: 0xf70, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4201d2890785fb14;
        // offset: 0xf80, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarygrenadekill;
        // offset: 0xf88, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team10;
        // offset: 0xf90, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostcarepackage;
        // offset: 0xf98, bitSize: 0x8(0x1 Byte(s))
        uint:7 bonuslivesforcapturingzone;
        // offset: 0xfa0, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_39d008c4c2044bc7;
        // offset: 0xfb0, bitSize: 0x8(0x1 Byte(s))
        uint:7 startplayers;
        // offset: 0xfb8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_7d590533364efa87;
        // offset: 0xfc0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_252e760b41f3d94a;
        // offset: 0xfc8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartkillstreakdelay;
        // offset: 0xfd0, bitSize: 0x8(0x1 Byte(s))
        uint:5 totalkillsmax;
        // offset: 0xfd8, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundswitch;
        // offset: 0xfe0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerobjectiveheldrespawndelay;
        // offset: 0xfe8, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpenalty;
        // offset: 0xff0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_18bdaa4b00863e9d;
        // offset: 0xff8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_12ef93fbb06b1e2c;
        // offset: 0x1010, bitSize: 0x8(0x1 Byte(s))
        uint:5 weaponcount;
        // offset: 0x1018, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1706d4b546538286;
        // offset: 0x1030, bitSize: 0x8(0x1 Byte(s))
        uint:7 weapontimer;
        // offset: 0x1038, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> overtimetimelimit;
        // offset: 0x1048, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_96215e6d55c4b2b;
        // offset: 0x1058, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_6cd27d9716989cf5;
        // offset: 0x1068, bitSize: 0x8(0x1 Byte(s))
        uint:7 cleandepositonlinetime;
        // offset: 0x1070, bitSize: 0x8(0x1 Byte(s))
        fixed<7,3> hash_4c7c8c4bd1b2a58b;
        // offset: 0x1078, bitSize: 0x8(0x1 Byte(s))
        uint:7 drafttime;
        // offset: 0x1080, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_ed89addfaaafe48;
        // offset: 0x1088, bitSize: 0x8(0x1 Byte(s))
        uint:7 objectivespawntime;
        // offset: 0x1090, bitSize: 0x8(0x1 Byte(s))
        uint:2 killcammode;
        // offset: 0x1098, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> killcamtime;
        // offset: 0x10a8, bitSize: 0x8(0x1 Byte(s))
        uint:4 throwscore;
        // offset: 0x10b0, bitSize: 0x8(0x1 Byte(s))
        uint:4 deposittime;
        // offset: 0x10b8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extratime;
        // offset: 0x10c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_54d908d6273c8893;
        // offset: 0x10d8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6269eb986d22cd37;
        // offset: 0x10e0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreequipmentpowertimefactor;
        // offset: 0x10e8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostarmor;
        // offset: 0x10f0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_36ea712d503b054c;
        // offset: 0x1108, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamcount;
        // offset: 0x1110, bitSize: 0x20(0x4 Byte(s))
        int hash_7f38d88521da4c79;
        // offset: 0x1130, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_24c718cc0c526c38;
        // offset: 0x1138, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundlimit;
        // offset: 0x1140, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_531cc9c63ae86a93;
        // offset: 0x1150, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostartillery;
        // offset: 0x1158, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_b30022a9302a5a6;
        // offset: 0x1168, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_25d72112144c5ea0;
        // offset: 0x1178, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_39cfd81268504039;
        // offset: 0x1188, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_208071125a2b0b0b;
        // offset: 0x1198, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_52ef5b12764c8139;
        // offset: 0x11a8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4bf2241272d06bec;
        // offset: 0x11b8, bitSize: 0x8(0x1 Byte(s))
        uint:2 charactercustomization;
        // offset: 0x11c0, bitSize: 0x20(0x4 Byte(s))
        int hash_af4ad3316f0ded6;
        // offset: 0x11e0, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_437a986f8d24d7eb;
        // offset: 0x11e8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_16182516e10d0250;
        // offset: 0x1200, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_axis;
        // offset: 0x1208, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7344dfa399020a06;
        // offset: 0x1220, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6e2abf2cc40e03f1;
        // offset: 0x1228, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkilldenied;
        // offset: 0x1230, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> bombtimer;
        // offset: 0x1240, bitSize: 0x1
        bool delayplayer;
        // offset: 0x1241, bitSize: 0x1
        bool hash_196e997a082443a9;
        // offset: 0x1242, bitSize: 0x1
        bool voipdeadchatwithdead;
        // offset: 0x1243, bitSize: 0x1
        bool voipdeadchatwithteam;
        // offset: 0x1244, bitSize: 0x1
        bool hash_729930c3c52653c3;
        // offset: 0x1245, bitSize: 0x1
        bool useembleminsteadoffactionicon;
        // offset: 0x1246, bitSize: 0x1
        bool draftenabled;
        // offset: 0x1247, bitSize: 0x1
        bool hash_3a15393c2e90e121;
        // offset: 0x1248, bitSize: 0x1
        bool hash_1d708093c2664515;
        // offset: 0x1249, bitSize: 0x1
        bool overtimebestteam;
        // offset: 0x124a, bitSize: 0x1
        bool droppedtagrespawn;
        // offset: 0x124b, bitSize: 0x1
        bool hash_1e71b5ce1cd845b3;
        // offset: 0x124c, bitSize: 0x1
        bool hash_25aaa9a29a90534c;
        // offset: 0x124d, bitSize: 0x1
        bool voipkillershearvictim;
        // offset: 0x124e, bitSize: 0x1
        bool hash_7c0dcff6ffb1e348;
        // offset: 0x124f, bitSize: 0x1
        bool hash_4091f2d0019b1f4a;
        // offset: 0x1250, bitSize: 0x1
        bool deathcirclerespawn;
        // offset: 0x1251, bitSize: 0x1
        bool hash_2683a105198a7407;
        // offset: 0x1252, bitSize: 0x1
        bool presetclassesperteam;
        // offset: 0x1253, bitSize: 0x1
        bool hash_361f7fe066281093;
        // offset: 0x1254, bitSize: 0x1
        bool hash_232892d3b0a6240c;
        // offset: 0x1255, bitSize: 0x1
        bool bot_autofill_allies;
        // offset: 0x1256, bitSize: 0x1
        bool hash_2c55a3723cd9fdf9;
        // offset: 0x1257, bitSize: 0x1
        bool hash_5c57222bb95a06cb;
        // offset: 0x1258, bitSize: 0x1
        bool hardcoremode;
        // offset: 0x1259, bitSize: 0x1
        bool hash_135829cbab367329;
        // offset: 0x125a, bitSize: 0x1
        bool hash_495b64bd935bf7b;
        // offset: 0x125b, bitSize: 0x1
        bool useitemspawns;
        // offset: 0x125c, bitSize: 0x1
        bool hash_77b7734750cd75e9;
        // offset: 0x125d, bitSize: 0x1
        bool silentplant;
        // offset: 0x125e, bitSize: 0x1
        bool hash_5711f3e42924a635;
        // offset: 0x125f, bitSize: 0x1
        bool drafteveryround;
        // offset: 0x1260, bitSize: 0x1
        bool timepauseswheninzone;
        // offset: 0x1261, bitSize: 0x1
        bool hash_4b55d75b8d779e4;
        // offset: 0x1262, bitSize: 0x1
        bool hash_549abfbb3665d526;
        // offset: 0x1263, bitSize: 0x1
        bool scoreperplayer;
        // offset: 0x1264, bitSize: 0x1
        bool ekiaresetondeath;
        // offset: 0x1265, bitSize: 0x1
        bool kothmode;
        // offset: 0x1266, bitSize: 0x1
        bool hash_70c6890214831a58;
        // offset: 0x1267, bitSize: 0x1
        bool hash_62665aebde32c8ae;
        // offset: 0x1268, bitSize: 0x1
        bool hash_18c053cae82c1167;
        // offset: 0x1269, bitSize: 0x1
        bool hash_6cf5f53d1fbb1066;
        // offset: 0x126a, bitSize: 0x1
        bool hash_3d23923f9c9757cd;
        // offset: 0x126b, bitSize: 0x1
        bool decayprogress;
        // offset: 0x126c, bitSize: 0x1
        bool playerqueuedrespawn;
        // offset: 0x126d, bitSize: 0x1
        bool scorestreaksbarebones;
        // offset: 0x126e, bitSize: 0x1
        bool cumulativeroundscores;
        // offset: 0x126f, bitSize: 0x1
        bool hash_3ad2212223b76a72;
        // offset: 0x1270, bitSize: 0x1
        bool voipdeadhearkiller;
        // offset: 0x1271, bitSize: 0x1
        bool bot_autofill_team10;
        // offset: 0x1272, bitSize: 0x1
        bool hash_6e6991561babdd7e;
        // offset: 0x1273, bitSize: 0x1
        bool bot_autofill_axis;
        // offset: 0x1274, bitSize: 0x1
        bool skiplaststand;
        // offset: 0x1275, bitSize: 0x1
        bool hash_1f3825ba2a669400;
        // offset: 0x1276, bitSize: 0x1
        bool usespawngroups;
        // offset: 0x1277, bitSize: 0x1
        bool hash_b76e50c1202aa23;
        // offset: 0x1278, bitSize: 0x1
        bool disablethirdpersonspectating;
        // offset: 0x1279, bitSize: 0x1
        bool platoonassignment;
        // offset: 0x127a, bitSize: 0x1
        bool hash_7daf08db0c451ad1;
        // offset: 0x127b, bitSize: 0x1
        bool allowlaststandforactiveclients;
        // offset: 0x127c, bitSize: 0x1
        bool hash_5cc3c32813d17039;
        // offset: 0x127d, bitSize: 0x1
        bool allowbattlechatter;
        // offset: 0x127e, bitSize: 0x1
        bool fowrevealenabled;
        // offset: 0x127f, bitSize: 0x1
        bool hash_4e8cafe9a4470898;
        // offset: 0x1280, bitSize: 0x1
        bool hash_7647d0e9a45eeca6;
        // offset: 0x1281, bitSize: 0x1
        bool hash_3cd7f961322b6b7;
        // offset: 0x1282, bitSize: 0x1
        bool hash_3293bf384d3c1e2f;
        // offset: 0x1283, bitSize: 0x1
        bool hash_5fcc23190f135afe;
        // offset: 0x1284, bitSize: 0x1
        bool hash_35376812247cdc3;
        // offset: 0x1285, bitSize: 0x1
        bool disablecontracts;
        // offset: 0x1286, bitSize: 0x1
        bool hash_2b1f40bc711c41f3;
        // offset: 0x1287, bitSize: 0x1
        bool hash_75d44b1542e3edf9;
        // offset: 0x1288, bitSize: 0x1
        bool hash_5462586bdce0346e;
        // offset: 0x1289, bitSize: 0x1
        bool gameobjectscontestedmajoritywins;
        // offset: 0x128a, bitSize: 0x1
        bool hash_2f0beae14bf17810;
        // offset: 0x128b, bitSize: 0x1
        bool autoheal;
        // offset: 0x128c, bitSize: 0x1
        bool allowannouncer;
        // offset: 0x128d, bitSize: 0x1
        bool disallowaimslowdown;
        // offset: 0x128e, bitSize: 0x1
        bool hash_435c853b64e3175e;
        // offset: 0x128f, bitSize: 0x1
        bool hash_5538f8f7758641b4;
        // offset: 0x1290, bitSize: 0x1
        bool bot_autofill_team3;
        // offset: 0x1291, bitSize: 0x1
        bool bot_autofill_team4;
        // offset: 0x1292, bitSize: 0x1
        bool bot_autofill_team5;
        // offset: 0x1293, bitSize: 0x1
        bool bot_autofill_team6;
        // offset: 0x1294, bitSize: 0x1
        bool bot_autofill_team7;
        // offset: 0x1295, bitSize: 0x1
        bool bot_autofill_team8;
        // offset: 0x1296, bitSize: 0x1
        bool bot_autofill_team9;
        // offset: 0x1297, bitSize: 0x1
        bool hash_35e6177743dac957;
        // offset: 0x1298, bitSize: 0x1
        bool hash_14fd184091ff1af;
        // offset: 0x1299, bitSize: 0x1
        bool vehiclesenabled;
        // offset: 0x129a, bitSize: 0x1
        bool decaycapturedzones;
        // offset: 0x129b, bitSize: 0x1
        bool neutralzone;
        // offset: 0x129c, bitSize: 0x1
        bool boastallowcam;
        // offset: 0x129d, bitSize: 0x1
        bool hash_7cc354dd83013a47;
        // offset: 0x129e, bitSize: 0x1
        bool onlyheadshots;
        // offset: 0x129f, bitSize: 0x1
        bool competitivesettings;
        // offset: 0x12a0, bitSize: 0x1
        bool flagcapturecondition;
        // offset: 0x12a1, bitSize: 0x1
        bool hash_1ca94a3bd057f19f;
        // offset: 0x12a2, bitSize: 0x1
        bool hash_1346ebfec214d724;
        // offset: 0x12a3, bitSize: 0x1
        bool hash_4be46e952d54e9a2;
        // offset: 0x12a4, bitSize: 0x1
        bool hash_1ebf97988141c498;
        // offset: 0x12a5, bitSize: 0x1
        bool hash_25fa292c7fc561b8;
        // offset: 0x12a6, bitSize: 0x1
        bool flagcanbeneutralized;
        // offset: 0x12a7, bitSize: 0x1
        bool hash_241e17e13da23de2;
        // offset: 0x12a8, bitSize: 0x1
        bool hash_4057701fc646435d;
        // offset: 0x12a9, bitSize: 0x1
        bool hash_6881c7cab0dcef39;
        // offset: 0x12aa, bitSize: 0x1
        bool vehiclestimed;
        // offset: 0x12ab, bitSize: 0x1
        bool pregamedraftenabled;
        // offset: 0x12ac, bitSize: 0x1
        bool hash_6f03247bbcf52311;
        // offset: 0x12ad, bitSize: 0x1
        bool hash_6143c4e1e18f08fd;
        // offset: 0x12ae, bitSize: 0x1
        bool teamkillpointloss;
        // offset: 0x12af, bitSize: 0x1
        bool hash_322026c0342869d1;
        // offset: 0x12b0, bitSize: 0x1
        bool hash_1e346fbfe02f1294;
        // offset: 0x12b1, bitSize: 0x1
        bool hash_3724e6bfee03ce6e;
        // offset: 0x12b2, bitSize: 0x1
        bool hash_497a2cbff8af4988;
        // offset: 0x12b3, bitSize: 0x1
        bool hash_50776bbffc2b6c6d;
        // offset: 0x12b4, bitSize: 0x1
        bool hash_55fc1cb09246fe30;
        // offset: 0x12b5, bitSize: 0x1
        bool hash_1d5943e61e65eeae;
        // offset: 0x12b6, bitSize: 0x1
        bool hash_656fd3c508d1d33e;
        // offset: 0x12b7, bitSize: 0x1
        bool hash_29f3630e8e542a0a;
        // offset: 0x12b8, bitSize: 0x1
        bool hash_c6a2e6c3e86125a;
        // offset: 0x12b9, bitSize: 0x1
        bool hash_2ebcaa6630ba8fd5;
        // offset: 0x12ba, bitSize: 0x1
        bool perksenabled;
        // offset: 0x12bb, bitSize: 0x1
        bool hash_33bc6781006ae83d;
        // offset: 0x12bc, bitSize: 0x1
        bool hash_655d904d5995891f;
        // offset: 0x12bd, bitSize: 0x1
        bool hash_6c21d8e8de53e9c3;
        // offset: 0x12be, bitSize: 0x1
        bool hash_2966662989c3484c;
        // offset: 0x12bf, bitSize: 0x1
        bool allowmapscripting;
        // offset: 0x12c0, bitSize: 0x1
        bool robotshield;
        // offset: 0x12c1, bitSize: 0x1
        bool hash_62e3e33ec68db92f;
        // offset: 0x12c2, bitSize: 0x1
        bool hash_2a76bf462f4c2f50;
        // offset: 0x12c3, bitSize: 0x1
        bool disableattachments;
        // offset: 0x12c4, bitSize: 0x1
        bool disablecompass;
        // offset: 0x12c5, bitSize: 0x1
        bool disableweapondrop;
        // offset: 0x12c6, bitSize: 0x1
        bool escalationenabled;
        // offset: 0x12c7, bitSize: 0x1
        bool hash_a564dde6ee3c657;
        // offset: 0x12c8, bitSize: 0x1
        bool hash_7b8284382bffc197;
        // offset: 0x12c9, bitSize: 0x1
        bool hash_25368755636c91a4;
        // offset: 0x12ca, bitSize: 0x1
        bool disableclassselection;
        // offset: 0x12cb, bitSize: 0x1
        bool hash_290721f8deb6ef5e;
        // offset: 0x12cc, bitSize: 0x1
        bool hash_48670d9509071424;
        // offset: 0x12cd, bitSize: 0x1
        bool autoteambalance;
        // offset: 0x12ce, bitSize: 0x1
        bool hash_4bdd1bd86b610871;
        // offset: 0x12cf, bitSize: 0x1
        bool hash_69df7093cd32f107;
        // offset: 0x12d0, bitSize: 0x1
        bool hash_7c0acf14fb1f4080;
        // offset: 0x12d1, bitSize: 0x1
        bool allowplayofthematch;
        // offset: 0x12d2, bitSize: 0x1
        bool allowprone;
        // offset: 0x12d3, bitSize: 0x1
        bool scoreresetondeath;
        // offset: 0x12d4, bitSize: 0x1
        bool hash_452a45e599d3a575;
        // offset: 0x12d5, bitSize: 0x1
        bool playerforcerespawn;
        // offset: 0x12d6, bitSize: 0x1
        bool hash_7098f146a35b8468;
        // offset: 0x12d7, bitSize: 0x1
        bool multibomb;
        // offset: 0x12d8, bitSize: 0x1
        bool hash_4dd37bf6da89131;
        // offset: 0x12d9, bitSize: 0x1
        bool hash_29fd164e7ff1abb0;
        // offset: 0x12da, bitSize: 0x1
        bool hash_104f124f56f0f20a;
        // offset: 0x12db, bitSize: 0x1
        bool hash_2560dae45cc112e3;
        // offset: 0x12dc, bitSize: 0x1
        bool hash_50a46f60312cf53c;
        // offset: 0x12dd, bitSize: 0x1
        bool hash_23b110691971b537;
        // offset: 0x12de, bitSize: 0x1
        bool deathcircle;
        // offset: 0x12df, bitSize: 0x1
        bool hash_4669425278875e14;
        // offset: 0x12e0, bitSize: 0x1
        bool boastenabled;
        // offset: 0x12e1, bitSize: 0x1
        bool hash_5002b8a3b8882084;
        // offset: 0x12e2, bitSize: 0x1
        bool hash_3513cf8b4287cdd7;
        // offset: 0x12e3, bitSize: 0x1
        bool hash_72a2919d2ac65850;
        // offset: 0x12e4, bitSize: 0x1
        bool hash_59272f59f19c342a;
        // offset: 0x12e5, bitSize: 0x1
        bool hash_429521a79f75a327;
        // offset: 0x12e6, bitSize: 0x1
        bool hash_69f74281cacb8a0f;
        // offset: 0x12e7, bitSize: 0x1
        bool hash_5d65f5abcdad24fe;
        // offset: 0x12e8, bitSize: 0x1
        bool deathpointloss;
        // offset: 0x12e9, bitSize: 0x1
        bool disablecustomcac;
        // offset: 0x12ea, bitSize: 0x1
        bool hash_1260b639348098e3;
        // offset: 0x12eb, bitSize: 0x1
        bool rebootplayers;
        // offset: 0x12ec, bitSize: 0x1
        bool oldschoolmode;
        // offset: 0x12ed, bitSize: 0x1
        bool hash_4238acad9fa0f317;
        // offset: 0x12ee, bitSize: 0x1
        bool allowfinalkillcam;
        // offset: 0x12ef, bitSize: 0x1
        bool allowspectating;
        // offset: 0x12f0, bitSize: 0x1
        bool usabledynents;
        // offset: 0x12f1, bitSize: 0x1
        bool playintrocinematics;
        // offset: 0x12f2, bitSize: 0x1
        bool hash_564289af24e283db;
        // offset: 0x12f3, bitSize: 0x1
        bool hash_11e1a0adebdab01a;
        // offset: 0x12f4, bitSize: 0x1
        bool hash_7379657f823bfef9;
        // offset: 0x12f5, bitSize: 0x1
        bool hash_47df56af71e4df3;
        // offset: 0x12f6, bitSize: 0x1
        bool hash_282689f7ec6d7d32;
        // offset: 0x12f7, bitSize: 0x1
        bool hash_4ce6b119f5979182;
        // offset: 0x12f8, bitSize: 0x1
        bool spawnselectenabled;
        // offset: 0x12f9, bitSize: 0x1
        bool loadoutkillstreaksenabled;
        // offset: 0x12fa, bitSize: 0x1
        bool pregameitemvoteenabled;
        // offset: 0x12fb, bitSize: 0x1
        bool hash_38d6e4d91bbc82ee;
        // offset: 0x12fc, bitSize: 0x1
        bool hash_2ffb09b25b95a125;
        // offset: 0x12fd, bitSize: 0x1
        bool hash_5684ea266d45be15;
        // offset: 0x12fe, bitSize: 0x1
        bool hash_7f273e367f26254;
        // offset: 0x12ff, bitSize: 0x1
        bool hash_65c535aa5198d01d;
        // offset: 0x1300, bitSize: 0x1
        bool disallowprone;
        // offset: 0x1301, bitSize: 0x1
        bool hash_3cc3acd830a8eef;
        // offset: 0x1302, bitSize: 0x1
        bool moveplayers;
        // offset: 0x1303, bitSize: 0x1
        bool hash_6945105793e31c56;
        // offset: 0x1304, bitSize: 0x1
        bool disabletacinsert;
        // offset: 0x1305, bitSize: 0x1
        bool voipdeadhearallliving;
        // offset: 0x1306, bitSize: 0x1
        bool hash_4ca06c610b5d53bd;
        // offset: 0x1307, bitSize: 0x1
        bool killstreaksgivegamescore;
        // offset: 0x1308, bitSize: 0x1
        bool hash_1cc3f98086d6f5dd;
        // offset: 0x1309, bitSize: 0x1
        bool flagcapturerateincrease;
        // offset: 0x130a, bitSize: 0x1
        bool use_doors;
        // offset: 0x130b, bitSize: 0x1
        bool pvponly;
        // offset: 0x130c, bitSize: 0x1
        bool forwardspawnteamspecificspawns;
        // offset: 0x130d, bitSize: 0x1
        bool hash_50b56d2635cbb74b;
        // offset: 0x130e, bitSize: 0x1
        bool hash_68fd4f67ea4b4ff8;
        // offset: 0x130f, bitSize: 0x1
        bool forwardspawntakesdamage;
        // offset: 0x1310, bitSize: 0x1
        bool allowingameteamchange;
        // offset: 0x1311, bitSize: 0x1
        bool hash_297b69789a6283b4;
        // offset: 0x1312, bitSize: 0x1
        bool deathzones;
        // offset: 0x1313, bitSize: 0x1
        bool classicmode;
        // offset: 0x1314, bitSize: 0x1
        bool hash_12c8b36832284f70;
        // offset: 0x1315, bitSize: 0x1
        bool voipdeadhearteamliving;
        // offset: 0x1316, bitSize: 0x1
        bool hash_51f7292117d41790;
        // offset: 0x1317, bitSize: 0x1
        bool capdecay;
        // offset: 0x1318, bitSize: 0x1
        bool hash_7bcb76b8a52c35e;
        // offset: 0x1319, bitSize: 0x1
        bool hash_5c90286f1514c76;
        // offset: 0x131a, bitSize: 0x1
        bool hash_b87383d5497a826;
        // offset: 0x131b, bitSize: 0x1
        bool voipeveryonehearseveryone;
        // offset: 0x131c, bitSize: 0x1
        bool hash_460af55ecefb11f;
        // offset: 0x131d, bitSize: 0x1
        bool hash_4f4a73f236278ba8;
        // offset: 0x131e, bitSize: 0x1
        bool hash_5f76e2d55ad861ed;
        // offset: 0x131f, bitSize: 0x1
        bool hash_52a73dca4cbce600;
        // offset: 0x1320, bitSize: 0x1
        bool laststandfinishing;
        // offset: 0x1321, bitSize: 0x1
        bool hash_201c1769d32b30d3;
    };

    // root: bitSize: 0x1328, members: 1

    // offset: 0x0, bitSize: 0x1328(0x265 Byte(s))
    gametypesettings gametypesettings;
};

version hash_f61370a596d1616f {
    // enums ..... 0 (0x0)
    // structs ... 2 (0x2)
    // header bit size .. 5104 (0x13f0)
    // header byte size . 638 (0x27e)

    // bitSize: 0x1340, members: 578
    struct gametypesettings {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> timelimit;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_25740f686a5cfc7e;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        uint:4 playerkillsmax;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_129fca5e3a00477f;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_444634d99df7a661;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperdeath;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:2 forceradar;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkill;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playersprinttime;
        // offset: 0x58, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> capturetime;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleroundswon;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_9fe0e2b1a7f556;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayerdefensive;
        // offset: 0x88, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_35e9fc8eee6881e0;
        // offset: 0x90, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_613785a993624133;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandrevivehealth;
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierdestroytime;
        // offset: 0xc0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostattackhelicopter;
        // offset: 0xc8, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_6024ee628431415;
        // offset: 0xd8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostbow;
        // offset: 0xe0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostuav;
        // offset: 0xe8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperweaponkill;
        // offset: 0xf0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_722d8dafb62ce7fe;
        // offset: 0x108, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_4a10303376ed2d10;
        // offset: 0x110, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_68b825c95acb9218;
        // offset: 0x120, bitSize: 0x8(0x1 Byte(s))
        uint:6 maxteamplayers;
        // offset: 0x128, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandhealth;
        // offset: 0x130, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6b2754246df1bc7c;
        // offset: 0x140, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_46f0ae82f5c2f7d4;
        // offset: 0x150, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> maxusers;
        // offset: 0x160, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_1ca4d65346568642;
        // offset: 0x170, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_312848239629f5b9;
        // offset: 0x180, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1d77a77db928f695;
        // offset: 0x190, bitSize: 0x8(0x1 Byte(s))
        uint:4 draftrequiredclients;
        // offset: 0x198, bitSize: 0x8(0x1 Byte(s))
        uint:3 friendlyfiretype;
        // offset: 0x1a0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7fee0559953eec6;
        // offset: 0x1b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_28005bb885acabc3;
        // offset: 0x1c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4725de6afe873b87;
        // offset: 0x1d8, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_16184f2fd4014b39;
        // offset: 0x1e0, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspermeleekill;
        // offset: 0x1e8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_51f121252f1d8c7f;
        // offset: 0x1f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_32da91b78e54e7b5;
        // offset: 0x200, bitSize: 0x8(0x1 Byte(s))
        uint:6 preroundperiod;
        // offset: 0x208, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_56f6d77da3124af2;
        // offset: 0x218, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowertimefactor;
        // offset: 0x220, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_62a4fd40810cb61;
        // offset: 0x228, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_56a31bddd92a64dc;
        // offset: 0x230, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> laststandrevivetime;
        // offset: 0x238, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_429d353f0be087a5;
        // offset: 0x250, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpunishcount;
        // offset: 0x258, bitSize: 0x8(0x1 Byte(s))
        uint:7 maxplayers;
        // offset: 0x260, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53fd9a3e9a0e78e1;
        // offset: 0x270, bitSize: 0x20(0x4 Byte(s))
        int forwardspawnhealth;
        // offset: 0x290, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5598d36d6b224c9a;
        // offset: 0x2a0, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnteamkilledpenalty;
        // offset: 0x2a8, bitSize: 0x8(0x1 Byte(s))
        uint:3 ballcount;
        // offset: 0x2b0, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_6ae29c8144cb7659;
        // offset: 0x2b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c82ffb472a21cac;
        // offset: 0x2c8, bitSize: 0x8(0x1 Byte(s))
        uint:3 gunselection;
        // offset: 0x2d0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_53c1e74b2d385c17;
        // offset: 0x2e8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_17cc26f74ef911e0;
        // offset: 0x2f0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_67d54bbc52811921;
        // offset: 0x2f8, bitSize: 0x8(0x1 Byte(s))
        fixed<5,2> hash_1614b9cbe0df6f75;
        // offset: 0x300, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_35104d2d5fd22ce7;
        // offset: 0x318, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1441f7ad44e1cfd4;
        // offset: 0x320, bitSize: 0x8(0x1 Byte(s))
        uint:7 killstreakdeathpenaltyindividualearn;
        // offset: 0x328, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_c0beb1e5a80c25c;
        // offset: 0x330, bitSize: 0x8(0x1 Byte(s))
        uint:5 prematchrequirement;
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:3 spectatetype;
        // offset: 0x340, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> hash_57fe6337297bcce9;
        // offset: 0x348, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_1df445b9d1af641f;
        // offset: 0x350, bitSize: 0x8(0x1 Byte(s))
        uint:3 randomobjectivelocations;
        // offset: 0x358, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_55db4a8546a13c79;
        // offset: 0x370, bitSize: 0x8(0x1 Byte(s))
        uint:5 roundwinlimit;
        // offset: 0x378, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_ecf2124e9108fc4;
        // offset: 0x380, bitSize: 0x10(0x2 Byte(s))
        uint:10 antiboostdistance;
        // offset: 0x390, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_115a3410d9dbf98d;
        // offset: 0x3a0, bitSize: 0x10(0x2 Byte(s))
        uint:15 roundscorelimit;
        // offset: 0x3b0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_320a5028d10f305a;
        // offset: 0x3c8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> hash_154db5a1b2e9d757;
        // offset: 0x3d8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> bulletdamagescalar;
        // offset: 0x3e0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1df1e1139a1a4eb8;
        // offset: 0x3f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_79c708d50a12e336;
        // offset: 0x408, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_49d61407873849a2;
        // offset: 0x410, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostontimeamount;
        // offset: 0x418, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> defusetime;
        // offset: 0x420, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> teamkillreducedpenalty;
        // offset: 0x428, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxallocation;
        // offset: 0x430, bitSize: 0x8(0x1 Byte(s))
        uint:4 carryscore;
        // offset: 0x438, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c8636144ad47ac9;
        // offset: 0x448, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53cd45b387951ca1;
        // offset: 0x458, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_6e49ce7bbe6d3f1f;
        // offset: 0x460, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> killeventscoremultiplier;
        // offset: 0x468, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_2efff808b2701aa5;
        // offset: 0x478, bitSize: 0x8(0x1 Byte(s))
        uint:6 ticketslostontimeinterval;
        // offset: 0x480, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartexplosivedelay;
        // offset: 0x488, bitSize: 0x8(0x1 Byte(s))
        uint:2 cleandepositrotation;
        // offset: 0x490, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_21754b274494502e;
        // offset: 0x4a0, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_1311b008d2f6dbc1;
        // offset: 0x4b0, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_5f7c18fecb2a1a44;
        // offset: 0x4c0, bitSize: 0x8(0x1 Byte(s))
        uint:7 idleflagresettime;
        // offset: 0x4c8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowergainfactor;
        // offset: 0x4d0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1f65f0a6f0eb3110;
        // offset: 0x4e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2a02614601829003;
        // offset: 0x4f8, bitSize: 0x8(0x1 Byte(s))
        uint:4 setbacks;
        // offset: 0x500, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1db05f3e34ccaaaf;
        // offset: 0x510, bitSize: 0x20(0x4 Byte(s))
        int hash_6b808ab4016cb1e1;
        // offset: 0x530, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1efac5fcdfa4f;
        // offset: 0x540, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1eeac5fcdf89c;
        // offset: 0x550, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f1ac5fcdfdb5;
        // offset: 0x560, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f0ac5fcdfc02;
        // offset: 0x570, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1ebac5fcdf383;
        // offset: 0x580, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_20a83071685f7bd9;
        // offset: 0x598, bitSize: 0x10(0x2 Byte(s))
        fixed<12,4> trm_maxheight;
        // offset: 0x5a8, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_2b88c6ac064e9c59;
        // offset: 0x5b0, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayofthematchevents;
        // offset: 0x5b8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostwarmachine;
        // offset: 0x5c0, bitSize: 0x10(0x2 Byte(s))
        uint:15 scorelimit;
        // offset: 0x5d0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> cratecapturetime;
        // offset: 0x5d8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4a6ef8940f4cbb83;
        // offset: 0x5e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eeb8cb5c84b1939;
        // offset: 0x5f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eba3289161fd45f;
        // offset: 0x600, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_22c53ddb2cb67f13;
        // offset: 0x610, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_9c266bdf9cad7fa;
        // offset: 0x620, bitSize: 0x8(0x1 Byte(s))
        uint:3 killpointsinenemyprotectedzone;
        // offset: 0x628, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6e2b8452b08a545c;
        // offset: 0x630, bitSize: 0x10(0x2 Byte(s))
        uint:10 playermaxhealth;
        // offset: 0x640, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1833c853bfe78ffc;
        // offset: 0x648, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_5e8818f69d557ad2;
        // offset: 0x660, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_3e13b420d6773b4c;
        // offset: 0x668, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_718b497c5205e74b;
        // offset: 0x678, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostgunship;
        // offset: 0x680, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_42b840c668fd2c85;
        // offset: 0x690, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_44f0b1c6b2d3b6f8;
        // offset: 0x6a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5dc620c6c0919d82;
        // offset: 0x6b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2aea36c6a4135574;
        // offset: 0x6c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_32c16dc6a8490e81;
        // offset: 0x6d0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_66a7d866327081eb;
        // offset: 0x6d8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5f116b8cfbdbc3fe;
        // offset: 0x6e8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsforsurvivalbonus;
        // offset: 0x6f0, bitSize: 0x190(0x32 Byte(s)), array:0x32(hti:0xffff)
        uint:5 maxuniquerolesperteam[50];
        // offset: 0x880, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_7adb62a64c6d963;
        // offset: 0x888, bitSize: 0x8(0x1 Byte(s))
        uint:3 objectivepingtime;
        // offset: 0x890, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_271177b8b4cfcf15;
        // offset: 0x8a8, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamkillspawndelay;
        // offset: 0x8b0, bitSize: 0x8(0x1 Byte(s))
        uint:8 carrierarmor;
        // offset: 0x8b8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_51a2ab391c340e03;
        // offset: 0x8d0, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostondeath;
        // offset: 0x8d8, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_47d4aa0161d78e15;
        // offset: 0x8e0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostremotemissile;
        // offset: 0x8e8, bitSize: 0x10(0x2 Byte(s))
        uint:9 carriermovespeed;
        // offset: 0x8f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 boottime;
        // offset: 0x900, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_652bc8c2577ec788;
        // offset: 0x910, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_72852fc1d977c3a0;
        // offset: 0x920, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_314c2f7312bde4af;
        // offset: 0x928, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_5d5f4ee35c9977c7;
        // offset: 0x930, bitSize: 0x8(0x1 Byte(s))
        uint:3 roundstartfriendlyfiretype;
        // offset: 0x938, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagdecaytime;
        // offset: 0x940, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_76f686986e1a58b;
        // offset: 0x950, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_vs_bots;
        // offset: 0x958, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_26b08269156ca0e5;
        // offset: 0x960, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamnumlives;
        // offset: 0x968, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> planttime;
        // offset: 0x970, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6141cddd96ac214e;
        // offset: 0x978, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnprotectiontime;
        // offset: 0x980, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7353bbc24d72ec59;
        // offset: 0x990, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_573034b3252cb4e3;
        // offset: 0x9a8, bitSize: 0x10(0x2 Byte(s))
        uint:10 inactivitykick;
        // offset: 0x9b8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspersecondarykill;
        // offset: 0x9c0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team3;
        // offset: 0x9c8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team4;
        // offset: 0x9d0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team5;
        // offset: 0x9d8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team6;
        // offset: 0x9e0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team7;
        // offset: 0x9e8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team8;
        // offset: 0x9f0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team9;
        // offset: 0x9f8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerhealthregentime;
        // offset: 0xa00, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5d40d1f9fb7f;
        // offset: 0xa10, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5c40d1f9f9cc;
        // offset: 0xa20, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5f40d1f9fee5;
        // offset: 0xa30, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5e40d1f9fd32;
        // offset: 0xa40, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5940d1f9f4b3;
        // offset: 0xa50, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4f00f3f568c284af;
        // offset: 0xa60, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7f190c8839d3f05c;
        // offset: 0xa70, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_3a4691a853585241;
        // offset: 0xa78, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> destroytime;
        // offset: 0xa88, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagrespawntime;
        // offset: 0xa90, bitSize: 0x8(0x1 Byte(s))
        uint:2 shutdowndamage;
        // offset: 0xa98, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> gameadvertisementruletimeleft;
        // offset: 0xaa0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_6a48bbfb703d5c9c;
        // offset: 0xaa8, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_239b391c77ebf8c1;
        // offset: 0xab0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7c33e5bebaf05afb;
        // offset: 0xac0, bitSize: 0x10(0x2 Byte(s))
        uint:11 objectivehealth;
        // offset: 0xad0, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnsuicidepenalty;
        // offset: 0xad8, bitSize: 0x8(0x1 Byte(s))
        uint:2 robotspeed;
        // offset: 0xae0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_467be34402dad274;
        // offset: 0xae8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_68e3f54e05f57d85;
        // offset: 0xaf0, bitSize: 0x8(0x1 Byte(s))
        uint:7 servermsec;
        // offset: 0xaf8, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_410c5c7c1e60b534;
        // offset: 0xb00, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_212cc2b5b360189c;
        // offset: 0xb08, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostminigun;
        // offset: 0xb10, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_55a92a1d652b5edc;
        // offset: 0xb18, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_552338718ec6d2df;
        // offset: 0xb20, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1c0040943c216593;
        // offset: 0xb28, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxplayereventsperminute;
        // offset: 0xb38, bitSize: 0x10(0x2 Byte(s))
        uint:10 leaderbonus;
        // offset: 0xb48, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_5c918cbf75e16116;
        // offset: 0xb50, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_51e989796c38cd87;
        // offset: 0xb58, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostnapalm;
        // offset: 0xb60, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_119bd2704c238e5;
        // offset: 0xb78, bitSize: 0x8(0x1 Byte(s))
        uint:2 enemycarriervisible;
        // offset: 0xb80, bitSize: 0x10(0x2 Byte(s))
        uint:9 autodestroytime;
        // offset: 0xb90, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkillconfirmed;
        // offset: 0xb98, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4e4352bd1aaeedfe;
        // offset: 0xba0, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_507e1eb7f297d872;
        // offset: 0xbb0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_342835495fca42bb;
        // offset: 0xbc0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7cada6c0936f259b;
        // offset: 0xbd0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> waverespawndelay;
        // offset: 0xbd8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1974892bc7266bab;
        // offset: 0xbe8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_567db38226658dbf;
        // offset: 0xbf0, bitSize: 0x8(0x1 Byte(s))
        uint:6 prematchperiod;
        // offset: 0xbf8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostsentry;
        // offset: 0xc00, bitSize: 0x8(0x1 Byte(s))
        uint:6 teamkillscore;
        // offset: 0xc08, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_102aeddad113f70c;
        // offset: 0xc10, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_4635a26c94b56725;
        // offset: 0xc18, bitSize: 0x8(0x1 Byte(s))
        uint:3 platooncount;
        // offset: 0xc20, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierhealth;
        // offset: 0xc40, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_71da377e373bc755;
        // offset: 0xc58, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_38a8f601ab8388d0;
        // offset: 0xc68, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarykill;
        // offset: 0xc70, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperheadshot;
        // offset: 0xc78, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_75ff4383212c5111;
        // offset: 0xc88, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1908ad844e6c3e37;
        // offset: 0xc90, bitSize: 0x8(0x1 Byte(s))
        uint:4 pregameitemmaxvotes;
        // offset: 0xc98, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_50029ecff5e7d383;
        // offset: 0xca8, bitSize: 0x8(0x1 Byte(s))
        uint:7 playernumlives;
        // offset: 0xcb0, bitSize: 0x8(0x1 Byte(s))
        uint:2 infectionmode;
        // offset: 0xcb8, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleround;
        // offset: 0xcc0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7d53c8bab3db8122;
        // offset: 0xcd0, bitSize: 0x8(0x1 Byte(s))
        fixed<7,1> incrementalspawndelay;
        // offset: 0xcd8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_allies;
        // offset: 0xce0, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxsuicidesbeforekick;
        // offset: 0xce8, bitSize: 0x8(0x1 Byte(s))
        uint:7 gameadvertisementrulescorepercent;
        // offset: 0xcf0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_3e76ce42036815cc;
        // offset: 0xd00, bitSize: 0x10(0x2 Byte(s))
        int:10 hash_3ccd8e1bf3864fa1;
        // offset: 0xd10, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_130d127406ab976e;
        // offset: 0xd20, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostairpatrol;
        // offset: 0xd28, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcoststraferun;
        // offset: 0xd30, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostcuav;
        // offset: 0xd38, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostrcxd;
        // offset: 0xd40, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostvtol;
        // offset: 0xd48, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_40c4b447a58a7da4;
        // offset: 0xd58, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> hash_47e9736d437be7c8;
        // offset: 0xd60, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3e1bb1840c4ab667;
        // offset: 0xd70, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1ea82b1edff2a13b;
        // offset: 0xd80, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c31c3f19402e1f;
        // offset: 0xd90, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandtimer;
        // offset: 0xd98, bitSize: 0x8(0x1 Byte(s))
        uint:6 reboottime;
        // offset: 0xda0, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscorepercleandeposit;
        // offset: 0xda8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extrasegmenttime;
        // offset: 0xdb8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_2081d79c44b2cefb;
        // offset: 0xdd0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6773166f56896564;
        // offset: 0xde0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1725e90b73841702;
        // offset: 0xdf0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_273d049136c76afa;
        // offset: 0xe00, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_2849b6cf7317ab1b;
        // offset: 0xe08, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5a4fde688cbf1a01;
        // offset: 0xe18, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c72ac3d026ca4eb;
        // offset: 0xe28, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_83f11b8abac148f;
        // offset: 0xe30, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_22fa97d05461a3e8;
        // offset: 0xe48, bitSize: 0x8(0x1 Byte(s))
        uint:4 pickuptime;
        // offset: 0xe50, bitSize: 0x10(0x2 Byte(s))
        fixed<14,7> hash_451245a24412d90f;
        // offset: 0xe60, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3d5a87878a3bef28;
        // offset: 0xe70, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_552467c143123c1c;
        // offset: 0xe78, bitSize: 0x20(0x4 Byte(s))
        int hash_64727525f5957d06;
        // offset: 0xe98, bitSize: 0x20(0x4 Byte(s))
        int hash_1f3285ddee84620c;
        // offset: 0xeb8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_2596f9e3d6e26ac9;
        // offset: 0xec0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostchoppergunner;
        // offset: 0xec8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_3767386c050fa0eb;
        // offset: 0xed0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerrespawndelay;
        // offset: 0xed8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_34ee1a1a574eaa4c;
        // offset: 0xee8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> spawntraptriggertime;
        // offset: 0xef0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_26ff1d48be83e46c;
        // offset: 0xf08, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayeroffensive;
        // offset: 0xf10, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_527f80b77f20b8c8;
        // offset: 0xf20, bitSize: 0x8(0x1 Byte(s))
        uint:2 allowhitmarkers;
        // offset: 0xf28, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_d8215d30d36fa59;
        // offset: 0xf40, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_67ee1d8d7938baa1;
        // offset: 0xf50, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2c02a63d2c336b30;
        // offset: 0xf60, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxobjectiveeventsperminute;
        // offset: 0xf70, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_47dd11084763c671;
        // offset: 0xf80, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4201d2890785fb14;
        // offset: 0xf90, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarygrenadekill;
        // offset: 0xf98, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team10;
        // offset: 0xfa0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostcarepackage;
        // offset: 0xfa8, bitSize: 0x8(0x1 Byte(s))
        uint:7 bonuslivesforcapturingzone;
        // offset: 0xfb0, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_39d008c4c2044bc7;
        // offset: 0xfc0, bitSize: 0x8(0x1 Byte(s))
        uint:7 startplayers;
        // offset: 0xfc8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_7d590533364efa87;
        // offset: 0xfd0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_252e760b41f3d94a;
        // offset: 0xfd8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartkillstreakdelay;
        // offset: 0xfe0, bitSize: 0x8(0x1 Byte(s))
        uint:5 totalkillsmax;
        // offset: 0xfe8, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundswitch;
        // offset: 0xff0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerobjectiveheldrespawndelay;
        // offset: 0xff8, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpenalty;
        // offset: 0x1000, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_18bdaa4b00863e9d;
        // offset: 0x1008, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_12ef93fbb06b1e2c;
        // offset: 0x1020, bitSize: 0x8(0x1 Byte(s))
        uint:5 weaponcount;
        // offset: 0x1028, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1706d4b546538286;
        // offset: 0x1040, bitSize: 0x8(0x1 Byte(s))
        uint:7 weapontimer;
        // offset: 0x1048, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> overtimetimelimit;
        // offset: 0x1058, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_96215e6d55c4b2b;
        // offset: 0x1068, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_6cd27d9716989cf5;
        // offset: 0x1078, bitSize: 0x8(0x1 Byte(s))
        uint:7 cleandepositonlinetime;
        // offset: 0x1080, bitSize: 0x8(0x1 Byte(s))
        fixed<7,3> hash_4c7c8c4bd1b2a58b;
        // offset: 0x1088, bitSize: 0x8(0x1 Byte(s))
        uint:7 drafttime;
        // offset: 0x1090, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_ed89addfaaafe48;
        // offset: 0x1098, bitSize: 0x8(0x1 Byte(s))
        uint:7 objectivespawntime;
        // offset: 0x10a0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostreconplane;
        // offset: 0x10a8, bitSize: 0x8(0x1 Byte(s))
        uint:2 killcammode;
        // offset: 0x10b0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> killcamtime;
        // offset: 0x10c0, bitSize: 0x8(0x1 Byte(s))
        uint:4 throwscore;
        // offset: 0x10c8, bitSize: 0x8(0x1 Byte(s))
        uint:4 deposittime;
        // offset: 0x10d0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extratime;
        // offset: 0x10e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_54d908d6273c8893;
        // offset: 0x10f0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6269eb986d22cd37;
        // offset: 0x10f8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreequipmentpowertimefactor;
        // offset: 0x1100, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostarmor;
        // offset: 0x1108, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_36ea712d503b054c;
        // offset: 0x1120, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamcount;
        // offset: 0x1128, bitSize: 0x20(0x4 Byte(s))
        int hash_7f38d88521da4c79;
        // offset: 0x1148, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_24c718cc0c526c38;
        // offset: 0x1150, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundlimit;
        // offset: 0x1158, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_531cc9c63ae86a93;
        // offset: 0x1168, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostartillery;
        // offset: 0x1170, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_b30022a9302a5a6;
        // offset: 0x1180, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_25d72112144c5ea0;
        // offset: 0x1190, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_39cfd81268504039;
        // offset: 0x11a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_208071125a2b0b0b;
        // offset: 0x11b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_52ef5b12764c8139;
        // offset: 0x11c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4bf2241272d06bec;
        // offset: 0x11d0, bitSize: 0x8(0x1 Byte(s))
        uint:2 charactercustomization;
        // offset: 0x11d8, bitSize: 0x20(0x4 Byte(s))
        int hash_af4ad3316f0ded6;
        // offset: 0x11f8, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_437a986f8d24d7eb;
        // offset: 0x1200, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_16182516e10d0250;
        // offset: 0x1218, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_axis;
        // offset: 0x1220, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7344dfa399020a06;
        // offset: 0x1238, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6e2abf2cc40e03f1;
        // offset: 0x1240, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkilldenied;
        // offset: 0x1248, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> bombtimer;
        // offset: 0x1258, bitSize: 0x1
        bool delayplayer;
        // offset: 0x1259, bitSize: 0x1
        bool hash_196e997a082443a9;
        // offset: 0x125a, bitSize: 0x1
        bool voipdeadchatwithdead;
        // offset: 0x125b, bitSize: 0x1
        bool voipdeadchatwithteam;
        // offset: 0x125c, bitSize: 0x1
        bool hash_729930c3c52653c3;
        // offset: 0x125d, bitSize: 0x1
        bool useembleminsteadoffactionicon;
        // offset: 0x125e, bitSize: 0x1
        bool draftenabled;
        // offset: 0x125f, bitSize: 0x1
        bool hash_3a15393c2e90e121;
        // offset: 0x1260, bitSize: 0x1
        bool hash_1d708093c2664515;
        // offset: 0x1261, bitSize: 0x1
        bool overtimebestteam;
        // offset: 0x1262, bitSize: 0x1
        bool droppedtagrespawn;
        // offset: 0x1263, bitSize: 0x1
        bool hash_1e71b5ce1cd845b3;
        // offset: 0x1264, bitSize: 0x1
        bool hash_25aaa9a29a90534c;
        // offset: 0x1265, bitSize: 0x1
        bool voipkillershearvictim;
        // offset: 0x1266, bitSize: 0x1
        bool hash_7c0dcff6ffb1e348;
        // offset: 0x1267, bitSize: 0x1
        bool hash_4091f2d0019b1f4a;
        // offset: 0x1268, bitSize: 0x1
        bool deathcirclerespawn;
        // offset: 0x1269, bitSize: 0x1
        bool hash_2683a105198a7407;
        // offset: 0x126a, bitSize: 0x1
        bool presetclassesperteam;
        // offset: 0x126b, bitSize: 0x1
        bool hash_361f7fe066281093;
        // offset: 0x126c, bitSize: 0x1
        bool hash_232892d3b0a6240c;
        // offset: 0x126d, bitSize: 0x1
        bool bot_autofill_allies;
        // offset: 0x126e, bitSize: 0x1
        bool hash_2c55a3723cd9fdf9;
        // offset: 0x126f, bitSize: 0x1
        bool forcegibbing;
        // offset: 0x1270, bitSize: 0x1
        bool hash_5c57222bb95a06cb;
        // offset: 0x1271, bitSize: 0x1
        bool hardcoremode;
        // offset: 0x1272, bitSize: 0x1
        bool hash_135829cbab367329;
        // offset: 0x1273, bitSize: 0x1
        bool hash_495b64bd935bf7b;
        // offset: 0x1274, bitSize: 0x1
        bool useitemspawns;
        // offset: 0x1275, bitSize: 0x1
        bool hash_77b7734750cd75e9;
        // offset: 0x1276, bitSize: 0x1
        bool silentplant;
        // offset: 0x1277, bitSize: 0x1
        bool hash_5711f3e42924a635;
        // offset: 0x1278, bitSize: 0x1
        bool drafteveryround;
        // offset: 0x1279, bitSize: 0x1
        bool timepauseswheninzone;
        // offset: 0x127a, bitSize: 0x1
        bool hash_4b55d75b8d779e4;
        // offset: 0x127b, bitSize: 0x1
        bool hash_549abfbb3665d526;
        // offset: 0x127c, bitSize: 0x1
        bool scoreperplayer;
        // offset: 0x127d, bitSize: 0x1
        bool ekiaresetondeath;
        // offset: 0x127e, bitSize: 0x1
        bool kothmode;
        // offset: 0x127f, bitSize: 0x1
        bool hash_70c6890214831a58;
        // offset: 0x1280, bitSize: 0x1
        bool hash_62665aebde32c8ae;
        // offset: 0x1281, bitSize: 0x1
        bool hash_18c053cae82c1167;
        // offset: 0x1282, bitSize: 0x1
        bool hash_6cf5f53d1fbb1066;
        // offset: 0x1283, bitSize: 0x1
        bool hash_3d23923f9c9757cd;
        // offset: 0x1284, bitSize: 0x1
        bool decayprogress;
        // offset: 0x1285, bitSize: 0x1
        bool playerqueuedrespawn;
        // offset: 0x1286, bitSize: 0x1
        bool scorestreaksbarebones;
        // offset: 0x1287, bitSize: 0x1
        bool cumulativeroundscores;
        // offset: 0x1288, bitSize: 0x1
        bool hash_3ad2212223b76a72;
        // offset: 0x1289, bitSize: 0x1
        bool voipdeadhearkiller;
        // offset: 0x128a, bitSize: 0x1
        bool bot_autofill_team10;
        // offset: 0x128b, bitSize: 0x1
        bool hash_6e6991561babdd7e;
        // offset: 0x128c, bitSize: 0x1
        bool bot_autofill_axis;
        // offset: 0x128d, bitSize: 0x1
        bool skiplaststand;
        // offset: 0x128e, bitSize: 0x1
        bool hash_1f3825ba2a669400;
        // offset: 0x128f, bitSize: 0x1
        bool usespawngroups;
        // offset: 0x1290, bitSize: 0x1
        bool hash_b76e50c1202aa23;
        // offset: 0x1291, bitSize: 0x1
        bool disablethirdpersonspectating;
        // offset: 0x1292, bitSize: 0x1
        bool platoonassignment;
        // offset: 0x1293, bitSize: 0x1
        bool hash_7daf08db0c451ad1;
        // offset: 0x1294, bitSize: 0x1
        bool allowlaststandforactiveclients;
        // offset: 0x1295, bitSize: 0x1
        bool hash_5cc3c32813d17039;
        // offset: 0x1296, bitSize: 0x1
        bool allowbattlechatter;
        // offset: 0x1297, bitSize: 0x1
        bool fowrevealenabled;
        // offset: 0x1298, bitSize: 0x1
        bool hash_4e8cafe9a4470898;
        // offset: 0x1299, bitSize: 0x1
        bool hash_7647d0e9a45eeca6;
        // offset: 0x129a, bitSize: 0x1
        bool hash_3cd7f961322b6b7;
        // offset: 0x129b, bitSize: 0x1
        bool hash_3293bf384d3c1e2f;
        // offset: 0x129c, bitSize: 0x1
        bool hash_5fcc23190f135afe;
        // offset: 0x129d, bitSize: 0x1
        bool hash_35376812247cdc3;
        // offset: 0x129e, bitSize: 0x1
        bool disablecontracts;
        // offset: 0x129f, bitSize: 0x1
        bool hash_2b1f40bc711c41f3;
        // offset: 0x12a0, bitSize: 0x1
        bool hash_75d44b1542e3edf9;
        // offset: 0x12a1, bitSize: 0x1
        bool hash_5462586bdce0346e;
        // offset: 0x12a2, bitSize: 0x1
        bool gameobjectscontestedmajoritywins;
        // offset: 0x12a3, bitSize: 0x1
        bool hash_2f0beae14bf17810;
        // offset: 0x12a4, bitSize: 0x1
        bool autoheal;
        // offset: 0x12a5, bitSize: 0x1
        bool allowannouncer;
        // offset: 0x12a6, bitSize: 0x1
        bool disallowaimslowdown;
        // offset: 0x12a7, bitSize: 0x1
        bool hash_435c853b64e3175e;
        // offset: 0x12a8, bitSize: 0x1
        bool hash_5538f8f7758641b4;
        // offset: 0x12a9, bitSize: 0x1
        bool bot_autofill_team3;
        // offset: 0x12aa, bitSize: 0x1
        bool bot_autofill_team4;
        // offset: 0x12ab, bitSize: 0x1
        bool bot_autofill_team5;
        // offset: 0x12ac, bitSize: 0x1
        bool bot_autofill_team6;
        // offset: 0x12ad, bitSize: 0x1
        bool bot_autofill_team7;
        // offset: 0x12ae, bitSize: 0x1
        bool bot_autofill_team8;
        // offset: 0x12af, bitSize: 0x1
        bool bot_autofill_team9;
        // offset: 0x12b0, bitSize: 0x1
        bool hash_35e6177743dac957;
        // offset: 0x12b1, bitSize: 0x1
        bool hash_14fd184091ff1af;
        // offset: 0x12b2, bitSize: 0x1
        bool vehiclesenabled;
        // offset: 0x12b3, bitSize: 0x1
        bool decaycapturedzones;
        // offset: 0x12b4, bitSize: 0x1
        bool neutralzone;
        // offset: 0x12b5, bitSize: 0x1
        bool boastallowcam;
        // offset: 0x12b6, bitSize: 0x1
        bool hash_7cc354dd83013a47;
        // offset: 0x12b7, bitSize: 0x1
        bool onlyheadshots;
        // offset: 0x12b8, bitSize: 0x1
        bool competitivesettings;
        // offset: 0x12b9, bitSize: 0x1
        bool flagcapturecondition;
        // offset: 0x12ba, bitSize: 0x1
        bool hash_1ca94a3bd057f19f;
        // offset: 0x12bb, bitSize: 0x1
        bool hash_1346ebfec214d724;
        // offset: 0x12bc, bitSize: 0x1
        bool hash_7b822d42a5d1643d;
        // offset: 0x12bd, bitSize: 0x1
        bool hash_4be46e952d54e9a2;
        // offset: 0x12be, bitSize: 0x1
        bool hash_1ebf97988141c498;
        // offset: 0x12bf, bitSize: 0x1
        bool hash_25fa292c7fc561b8;
        // offset: 0x12c0, bitSize: 0x1
        bool flagcanbeneutralized;
        // offset: 0x12c1, bitSize: 0x1
        bool hash_241e17e13da23de2;
        // offset: 0x12c2, bitSize: 0x1
        bool hash_4057701fc646435d;
        // offset: 0x12c3, bitSize: 0x1
        bool hash_6881c7cab0dcef39;
        // offset: 0x12c4, bitSize: 0x1
        bool vehiclestimed;
        // offset: 0x12c5, bitSize: 0x1
        bool pregamedraftenabled;
        // offset: 0x12c6, bitSize: 0x1
        bool hash_6f03247bbcf52311;
        // offset: 0x12c7, bitSize: 0x1
        bool hash_6143c4e1e18f08fd;
        // offset: 0x12c8, bitSize: 0x1
        bool teamkillpointloss;
        // offset: 0x12c9, bitSize: 0x1
        bool hash_322026c0342869d1;
        // offset: 0x12ca, bitSize: 0x1
        bool hash_1e346fbfe02f1294;
        // offset: 0x12cb, bitSize: 0x1
        bool hash_3724e6bfee03ce6e;
        // offset: 0x12cc, bitSize: 0x1
        bool hash_497a2cbff8af4988;
        // offset: 0x12cd, bitSize: 0x1
        bool hash_50776bbffc2b6c6d;
        // offset: 0x12ce, bitSize: 0x1
        bool hash_55fc1cb09246fe30;
        // offset: 0x12cf, bitSize: 0x1
        bool hash_1d5943e61e65eeae;
        // offset: 0x12d0, bitSize: 0x1
        bool hash_656fd3c508d1d33e;
        // offset: 0x12d1, bitSize: 0x1
        bool hash_29f3630e8e542a0a;
        // offset: 0x12d2, bitSize: 0x1
        bool hash_c6a2e6c3e86125a;
        // offset: 0x12d3, bitSize: 0x1
        bool hash_2ebcaa6630ba8fd5;
        // offset: 0x12d4, bitSize: 0x1
        bool perksenabled;
        // offset: 0x12d5, bitSize: 0x1
        bool hash_33bc6781006ae83d;
        // offset: 0x12d6, bitSize: 0x1
        bool hash_655d904d5995891f;
        // offset: 0x12d7, bitSize: 0x1
        bool hash_6c21d8e8de53e9c3;
        // offset: 0x12d8, bitSize: 0x1
        bool hash_2966662989c3484c;
        // offset: 0x12d9, bitSize: 0x1
        bool allowmapscripting;
        // offset: 0x12da, bitSize: 0x1
        bool robotshield;
        // offset: 0x12db, bitSize: 0x1
        bool hash_62e3e33ec68db92f;
        // offset: 0x12dc, bitSize: 0x1
        bool hash_2a76bf462f4c2f50;
        // offset: 0x12dd, bitSize: 0x1
        bool disableattachments;
        // offset: 0x12de, bitSize: 0x1
        bool disablecompass;
        // offset: 0x12df, bitSize: 0x1
        bool disableweapondrop;
        // offset: 0x12e0, bitSize: 0x1
        bool escalationenabled;
        // offset: 0x12e1, bitSize: 0x1
        bool hash_a564dde6ee3c657;
        // offset: 0x12e2, bitSize: 0x1
        bool hash_7b8284382bffc197;
        // offset: 0x12e3, bitSize: 0x1
        bool hash_25368755636c91a4;
        // offset: 0x12e4, bitSize: 0x1
        bool disableclassselection;
        // offset: 0x12e5, bitSize: 0x1
        bool hash_290721f8deb6ef5e;
        // offset: 0x12e6, bitSize: 0x1
        bool hash_48670d9509071424;
        // offset: 0x12e7, bitSize: 0x1
        bool autoteambalance;
        // offset: 0x12e8, bitSize: 0x1
        bool hash_4bdd1bd86b610871;
        // offset: 0x12e9, bitSize: 0x1
        bool hash_69df7093cd32f107;
        // offset: 0x12ea, bitSize: 0x1
        bool hash_7c0acf14fb1f4080;
        // offset: 0x12eb, bitSize: 0x1
        bool allowplayofthematch;
        // offset: 0x12ec, bitSize: 0x1
        bool allowprone;
        // offset: 0x12ed, bitSize: 0x1
        bool scoreresetondeath;
        // offset: 0x12ee, bitSize: 0x1
        bool hash_452a45e599d3a575;
        // offset: 0x12ef, bitSize: 0x1
        bool playerforcerespawn;
        // offset: 0x12f0, bitSize: 0x1
        bool hash_7098f146a35b8468;
        // offset: 0x12f1, bitSize: 0x1
        bool multibomb;
        // offset: 0x12f2, bitSize: 0x1
        bool hash_4dd37bf6da89131;
        // offset: 0x12f3, bitSize: 0x1
        bool hash_29fd164e7ff1abb0;
        // offset: 0x12f4, bitSize: 0x1
        bool hash_104f124f56f0f20a;
        // offset: 0x12f5, bitSize: 0x1
        bool hash_2560dae45cc112e3;
        // offset: 0x12f6, bitSize: 0x1
        bool hash_50a46f60312cf53c;
        // offset: 0x12f7, bitSize: 0x1
        bool hash_23b110691971b537;
        // offset: 0x12f8, bitSize: 0x1
        bool deathcircle;
        // offset: 0x12f9, bitSize: 0x1
        bool hash_4669425278875e14;
        // offset: 0x12fa, bitSize: 0x1
        bool boastenabled;
        // offset: 0x12fb, bitSize: 0x1
        bool hash_5002b8a3b8882084;
        // offset: 0x12fc, bitSize: 0x1
        bool hash_3513cf8b4287cdd7;
        // offset: 0x12fd, bitSize: 0x1
        bool hash_72a2919d2ac65850;
        // offset: 0x12fe, bitSize: 0x1
        bool hash_59272f59f19c342a;
        // offset: 0x12ff, bitSize: 0x1
        bool hash_429521a79f75a327;
        // offset: 0x1300, bitSize: 0x1
        bool hash_69f74281cacb8a0f;
        // offset: 0x1301, bitSize: 0x1
        bool hash_5d65f5abcdad24fe;
        // offset: 0x1302, bitSize: 0x1
        bool deathpointloss;
        // offset: 0x1303, bitSize: 0x1
        bool disablecustomcac;
        // offset: 0x1304, bitSize: 0x1
        bool hash_1260b639348098e3;
        // offset: 0x1305, bitSize: 0x1
        bool rebootplayers;
        // offset: 0x1306, bitSize: 0x1
        bool oldschoolmode;
        // offset: 0x1307, bitSize: 0x1
        bool hash_4238acad9fa0f317;
        // offset: 0x1308, bitSize: 0x1
        bool allowfinalkillcam;
        // offset: 0x1309, bitSize: 0x1
        bool allowspectating;
        // offset: 0x130a, bitSize: 0x1
        bool usabledynents;
        // offset: 0x130b, bitSize: 0x1
        bool playintrocinematics;
        // offset: 0x130c, bitSize: 0x1
        bool hash_564289af24e283db;
        // offset: 0x130d, bitSize: 0x1
        bool hash_11e1a0adebdab01a;
        // offset: 0x130e, bitSize: 0x1
        bool hash_7379657f823bfef9;
        // offset: 0x130f, bitSize: 0x1
        bool hash_47df56af71e4df3;
        // offset: 0x1310, bitSize: 0x1
        bool hash_282689f7ec6d7d32;
        // offset: 0x1311, bitSize: 0x1
        bool hash_4ce6b119f5979182;
        // offset: 0x1312, bitSize: 0x1
        bool spawnselectenabled;
        // offset: 0x1313, bitSize: 0x1
        bool loadoutkillstreaksenabled;
        // offset: 0x1314, bitSize: 0x1
        bool pregameitemvoteenabled;
        // offset: 0x1315, bitSize: 0x1
        bool hash_38d6e4d91bbc82ee;
        // offset: 0x1316, bitSize: 0x1
        bool hash_2ffb09b25b95a125;
        // offset: 0x1317, bitSize: 0x1
        bool hash_5684ea266d45be15;
        // offset: 0x1318, bitSize: 0x1
        bool hash_7f273e367f26254;
        // offset: 0x1319, bitSize: 0x1
        bool hash_65c535aa5198d01d;
        // offset: 0x131a, bitSize: 0x1
        bool disallowprone;
        // offset: 0x131b, bitSize: 0x1
        bool hash_3cc3acd830a8eef;
        // offset: 0x131c, bitSize: 0x1
        bool moveplayers;
        // offset: 0x131d, bitSize: 0x1
        bool hash_6945105793e31c56;
        // offset: 0x131e, bitSize: 0x1
        bool disabletacinsert;
        // offset: 0x131f, bitSize: 0x1
        bool voipdeadhearallliving;
        // offset: 0x1320, bitSize: 0x1
        bool hash_4ca06c610b5d53bd;
        // offset: 0x1321, bitSize: 0x1
        bool killstreaksgivegamescore;
        // offset: 0x1322, bitSize: 0x1
        bool hash_1cc3f98086d6f5dd;
        // offset: 0x1323, bitSize: 0x1
        bool flagcapturerateincrease;
        // offset: 0x1324, bitSize: 0x1
        bool use_doors;
        // offset: 0x1325, bitSize: 0x1
        bool pvponly;
        // offset: 0x1326, bitSize: 0x1
        bool forwardspawnteamspecificspawns;
        // offset: 0x1327, bitSize: 0x1
        bool hash_50b56d2635cbb74b;
        // offset: 0x1328, bitSize: 0x1
        bool hash_68fd4f67ea4b4ff8;
        // offset: 0x1329, bitSize: 0x1
        bool forwardspawntakesdamage;
        // offset: 0x132a, bitSize: 0x1
        bool allowingameteamchange;
        // offset: 0x132b, bitSize: 0x1
        bool hash_297b69789a6283b4;
        // offset: 0x132c, bitSize: 0x1
        bool deathzones;
        // offset: 0x132d, bitSize: 0x1
        bool classicmode;
        // offset: 0x132e, bitSize: 0x1
        bool hash_12c8b36832284f70;
        // offset: 0x132f, bitSize: 0x1
        bool voipdeadhearteamliving;
        // offset: 0x1330, bitSize: 0x1
        bool hash_51f7292117d41790;
        // offset: 0x1331, bitSize: 0x1
        bool capdecay;
        // offset: 0x1332, bitSize: 0x1
        bool hash_7bcb76b8a52c35e;
        // offset: 0x1333, bitSize: 0x1
        bool hash_5c90286f1514c76;
        // offset: 0x1334, bitSize: 0x1
        bool hash_b87383d5497a826;
        // offset: 0x1335, bitSize: 0x1
        bool voipeveryonehearseveryone;
        // offset: 0x1336, bitSize: 0x1
        bool hash_460af55ecefb11f;
        // offset: 0x1337, bitSize: 0x1
        bool hash_4f4a73f236278ba8;
        // offset: 0x1338, bitSize: 0x1
        bool hash_5f76e2d55ad861ed;
        // offset: 0x1339, bitSize: 0x1
        bool hash_52a73dca4cbce600;
        // offset: 0x133a, bitSize: 0x1
        bool laststandfinishing;
        // offset: 0x133b, bitSize: 0x1
        bool hash_201c1769d32b30d3;
    };

    // root: bitSize: 0x1340, members: 1

    // offset: 0x0, bitSize: 0x1340(0x268 Byte(s))
    gametypesettings gametypesettings;
};

version hash_bc6febc51d56b77 {
    // enums ..... 0 (0x0)
    // structs ... 2 (0x2)
    // header bit size .. 5120 (0x1400)
    // header byte size . 640 (0x280)

    // bitSize: 0x1350, members: 579
    struct gametypesettings {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> timelimit;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_25740f686a5cfc7e;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        uint:4 playerkillsmax;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_129fca5e3a00477f;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_444634d99df7a661;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperdeath;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:2 forceradar;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkill;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playersprinttime;
        // offset: 0x58, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> capturetime;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleroundswon;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_9fe0e2b1a7f556;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayerdefensive;
        // offset: 0x88, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_35e9fc8eee6881e0;
        // offset: 0x90, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_613785a993624133;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandrevivehealth;
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierdestroytime;
        // offset: 0xc0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostattackhelicopter;
        // offset: 0xc8, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_6024ee628431415;
        // offset: 0xd8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostbow;
        // offset: 0xe0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostuav;
        // offset: 0xe8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperweaponkill;
        // offset: 0xf0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_722d8dafb62ce7fe;
        // offset: 0x108, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_4a10303376ed2d10;
        // offset: 0x110, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_68b825c95acb9218;
        // offset: 0x120, bitSize: 0x8(0x1 Byte(s))
        uint:6 maxteamplayers;
        // offset: 0x128, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandhealth;
        // offset: 0x130, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6b2754246df1bc7c;
        // offset: 0x140, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_46f0ae82f5c2f7d4;
        // offset: 0x150, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> maxusers;
        // offset: 0x160, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_1ca4d65346568642;
        // offset: 0x170, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_312848239629f5b9;
        // offset: 0x180, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1d77a77db928f695;
        // offset: 0x190, bitSize: 0x8(0x1 Byte(s))
        uint:4 draftrequiredclients;
        // offset: 0x198, bitSize: 0x8(0x1 Byte(s))
        uint:3 friendlyfiretype;
        // offset: 0x1a0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7fee0559953eec6;
        // offset: 0x1b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_28005bb885acabc3;
        // offset: 0x1c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4725de6afe873b87;
        // offset: 0x1d8, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_16184f2fd4014b39;
        // offset: 0x1e0, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspermeleekill;
        // offset: 0x1e8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_51f121252f1d8c7f;
        // offset: 0x1f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_32da91b78e54e7b5;
        // offset: 0x200, bitSize: 0x8(0x1 Byte(s))
        uint:6 preroundperiod;
        // offset: 0x208, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_56f6d77da3124af2;
        // offset: 0x218, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowertimefactor;
        // offset: 0x220, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_62a4fd40810cb61;
        // offset: 0x228, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_56a31bddd92a64dc;
        // offset: 0x230, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> laststandrevivetime;
        // offset: 0x238, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_429d353f0be087a5;
        // offset: 0x250, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpunishcount;
        // offset: 0x258, bitSize: 0x8(0x1 Byte(s))
        uint:7 maxplayers;
        // offset: 0x260, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53fd9a3e9a0e78e1;
        // offset: 0x270, bitSize: 0x20(0x4 Byte(s))
        int forwardspawnhealth;
        // offset: 0x290, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5598d36d6b224c9a;
        // offset: 0x2a0, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnteamkilledpenalty;
        // offset: 0x2a8, bitSize: 0x8(0x1 Byte(s))
        uint:3 ballcount;
        // offset: 0x2b0, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_6ae29c8144cb7659;
        // offset: 0x2b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c82ffb472a21cac;
        // offset: 0x2c8, bitSize: 0x8(0x1 Byte(s))
        uint:3 gunselection;
        // offset: 0x2d0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_53c1e74b2d385c17;
        // offset: 0x2e8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_17cc26f74ef911e0;
        // offset: 0x2f0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_67d54bbc52811921;
        // offset: 0x2f8, bitSize: 0x8(0x1 Byte(s))
        fixed<5,2> hash_1614b9cbe0df6f75;
        // offset: 0x300, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_35104d2d5fd22ce7;
        // offset: 0x318, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1441f7ad44e1cfd4;
        // offset: 0x320, bitSize: 0x8(0x1 Byte(s))
        uint:7 killstreakdeathpenaltyindividualearn;
        // offset: 0x328, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_c0beb1e5a80c25c;
        // offset: 0x330, bitSize: 0x8(0x1 Byte(s))
        uint:5 prematchrequirement;
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:3 spectatetype;
        // offset: 0x340, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> hash_57fe6337297bcce9;
        // offset: 0x348, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_1df445b9d1af641f;
        // offset: 0x350, bitSize: 0x8(0x1 Byte(s))
        uint:3 randomobjectivelocations;
        // offset: 0x358, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_55db4a8546a13c79;
        // offset: 0x370, bitSize: 0x8(0x1 Byte(s))
        uint:5 roundwinlimit;
        // offset: 0x378, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_ecf2124e9108fc4;
        // offset: 0x380, bitSize: 0x10(0x2 Byte(s))
        uint:10 antiboostdistance;
        // offset: 0x390, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_115a3410d9dbf98d;
        // offset: 0x3a0, bitSize: 0x10(0x2 Byte(s))
        uint:15 roundscorelimit;
        // offset: 0x3b0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_320a5028d10f305a;
        // offset: 0x3c8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> hash_154db5a1b2e9d757;
        // offset: 0x3d8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> bulletdamagescalar;
        // offset: 0x3e0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1df1e1139a1a4eb8;
        // offset: 0x3f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_79c708d50a12e336;
        // offset: 0x408, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_49d61407873849a2;
        // offset: 0x410, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostontimeamount;
        // offset: 0x418, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> defusetime;
        // offset: 0x420, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> teamkillreducedpenalty;
        // offset: 0x428, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxallocation;
        // offset: 0x430, bitSize: 0x8(0x1 Byte(s))
        uint:4 carryscore;
        // offset: 0x438, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c8636144ad47ac9;
        // offset: 0x448, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53cd45b387951ca1;
        // offset: 0x458, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_6e49ce7bbe6d3f1f;
        // offset: 0x460, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> killeventscoremultiplier;
        // offset: 0x468, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_2efff808b2701aa5;
        // offset: 0x478, bitSize: 0x8(0x1 Byte(s))
        uint:6 ticketslostontimeinterval;
        // offset: 0x480, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartexplosivedelay;
        // offset: 0x488, bitSize: 0x8(0x1 Byte(s))
        uint:2 cleandepositrotation;
        // offset: 0x490, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_21754b274494502e;
        // offset: 0x4a0, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_1311b008d2f6dbc1;
        // offset: 0x4b0, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_5f7c18fecb2a1a44;
        // offset: 0x4c0, bitSize: 0x8(0x1 Byte(s))
        uint:7 idleflagresettime;
        // offset: 0x4c8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowergainfactor;
        // offset: 0x4d0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1f65f0a6f0eb3110;
        // offset: 0x4e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2a02614601829003;
        // offset: 0x4f8, bitSize: 0x8(0x1 Byte(s))
        uint:4 setbacks;
        // offset: 0x500, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1db05f3e34ccaaaf;
        // offset: 0x510, bitSize: 0x20(0x4 Byte(s))
        int hash_6b808ab4016cb1e1;
        // offset: 0x530, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1efac5fcdfa4f;
        // offset: 0x540, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1eeac5fcdf89c;
        // offset: 0x550, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f1ac5fcdfdb5;
        // offset: 0x560, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f0ac5fcdfc02;
        // offset: 0x570, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1ebac5fcdf383;
        // offset: 0x580, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_20a83071685f7bd9;
        // offset: 0x598, bitSize: 0x10(0x2 Byte(s))
        fixed<12,4> trm_maxheight;
        // offset: 0x5a8, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_2b88c6ac064e9c59;
        // offset: 0x5b0, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayofthematchevents;
        // offset: 0x5b8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostwarmachine;
        // offset: 0x5c0, bitSize: 0x10(0x2 Byte(s))
        uint:15 scorelimit;
        // offset: 0x5d0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> cratecapturetime;
        // offset: 0x5d8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4a6ef8940f4cbb83;
        // offset: 0x5e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eeb8cb5c84b1939;
        // offset: 0x5f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eba3289161fd45f;
        // offset: 0x600, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_22c53ddb2cb67f13;
        // offset: 0x610, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_9c266bdf9cad7fa;
        // offset: 0x620, bitSize: 0x8(0x1 Byte(s))
        uint:3 killpointsinenemyprotectedzone;
        // offset: 0x628, bitSize: 0x10(0x2 Byte(s))
        int:15 playersprintrecoverydelayoverridems;
        // offset: 0x638, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6e2b8452b08a545c;
        // offset: 0x640, bitSize: 0x10(0x2 Byte(s))
        uint:10 playermaxhealth;
        // offset: 0x650, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1833c853bfe78ffc;
        // offset: 0x658, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_5e8818f69d557ad2;
        // offset: 0x670, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_3e13b420d6773b4c;
        // offset: 0x678, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_718b497c5205e74b;
        // offset: 0x688, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostgunship;
        // offset: 0x690, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_42b840c668fd2c85;
        // offset: 0x6a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_44f0b1c6b2d3b6f8;
        // offset: 0x6b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5dc620c6c0919d82;
        // offset: 0x6c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2aea36c6a4135574;
        // offset: 0x6d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_32c16dc6a8490e81;
        // offset: 0x6e0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_66a7d866327081eb;
        // offset: 0x6e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5f116b8cfbdbc3fe;
        // offset: 0x6f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsforsurvivalbonus;
        // offset: 0x700, bitSize: 0x190(0x32 Byte(s)), array:0x32(hti:0xffff)
        uint:5 maxuniquerolesperteam[50];
        // offset: 0x890, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_7adb62a64c6d963;
        // offset: 0x898, bitSize: 0x8(0x1 Byte(s))
        uint:3 objectivepingtime;
        // offset: 0x8a0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_271177b8b4cfcf15;
        // offset: 0x8b8, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamkillspawndelay;
        // offset: 0x8c0, bitSize: 0x8(0x1 Byte(s))
        uint:8 carrierarmor;
        // offset: 0x8c8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_51a2ab391c340e03;
        // offset: 0x8e0, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostondeath;
        // offset: 0x8e8, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_47d4aa0161d78e15;
        // offset: 0x8f0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostremotemissile;
        // offset: 0x8f8, bitSize: 0x10(0x2 Byte(s))
        uint:9 carriermovespeed;
        // offset: 0x908, bitSize: 0x8(0x1 Byte(s))
        uint:5 boottime;
        // offset: 0x910, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_652bc8c2577ec788;
        // offset: 0x920, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_72852fc1d977c3a0;
        // offset: 0x930, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_314c2f7312bde4af;
        // offset: 0x938, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_5d5f4ee35c9977c7;
        // offset: 0x940, bitSize: 0x8(0x1 Byte(s))
        uint:3 roundstartfriendlyfiretype;
        // offset: 0x948, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagdecaytime;
        // offset: 0x950, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_76f686986e1a58b;
        // offset: 0x960, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_vs_bots;
        // offset: 0x968, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_26b08269156ca0e5;
        // offset: 0x970, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamnumlives;
        // offset: 0x978, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> planttime;
        // offset: 0x980, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6141cddd96ac214e;
        // offset: 0x988, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnprotectiontime;
        // offset: 0x990, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7353bbc24d72ec59;
        // offset: 0x9a0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_573034b3252cb4e3;
        // offset: 0x9b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 inactivitykick;
        // offset: 0x9c8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspersecondarykill;
        // offset: 0x9d0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team3;
        // offset: 0x9d8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team4;
        // offset: 0x9e0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team5;
        // offset: 0x9e8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team6;
        // offset: 0x9f0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team7;
        // offset: 0x9f8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team8;
        // offset: 0xa00, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team9;
        // offset: 0xa08, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerhealthregentime;
        // offset: 0xa10, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5d40d1f9fb7f;
        // offset: 0xa20, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5c40d1f9f9cc;
        // offset: 0xa30, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5f40d1f9fee5;
        // offset: 0xa40, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5e40d1f9fd32;
        // offset: 0xa50, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5940d1f9f4b3;
        // offset: 0xa60, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4f00f3f568c284af;
        // offset: 0xa70, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7f190c8839d3f05c;
        // offset: 0xa80, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_3a4691a853585241;
        // offset: 0xa88, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> destroytime;
        // offset: 0xa98, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagrespawntime;
        // offset: 0xaa0, bitSize: 0x8(0x1 Byte(s))
        uint:2 shutdowndamage;
        // offset: 0xaa8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> gameadvertisementruletimeleft;
        // offset: 0xab0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_6a48bbfb703d5c9c;
        // offset: 0xab8, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_239b391c77ebf8c1;
        // offset: 0xac0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7c33e5bebaf05afb;
        // offset: 0xad0, bitSize: 0x10(0x2 Byte(s))
        uint:11 objectivehealth;
        // offset: 0xae0, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnsuicidepenalty;
        // offset: 0xae8, bitSize: 0x8(0x1 Byte(s))
        uint:2 robotspeed;
        // offset: 0xaf0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_467be34402dad274;
        // offset: 0xaf8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_68e3f54e05f57d85;
        // offset: 0xb00, bitSize: 0x8(0x1 Byte(s))
        uint:7 servermsec;
        // offset: 0xb08, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_410c5c7c1e60b534;
        // offset: 0xb10, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_212cc2b5b360189c;
        // offset: 0xb18, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostminigun;
        // offset: 0xb20, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_55a92a1d652b5edc;
        // offset: 0xb28, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_552338718ec6d2df;
        // offset: 0xb30, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1c0040943c216593;
        // offset: 0xb38, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxplayereventsperminute;
        // offset: 0xb48, bitSize: 0x10(0x2 Byte(s))
        uint:10 leaderbonus;
        // offset: 0xb58, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_5c918cbf75e16116;
        // offset: 0xb60, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_51e989796c38cd87;
        // offset: 0xb68, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostnapalm;
        // offset: 0xb70, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_119bd2704c238e5;
        // offset: 0xb88, bitSize: 0x8(0x1 Byte(s))
        uint:2 enemycarriervisible;
        // offset: 0xb90, bitSize: 0x10(0x2 Byte(s))
        uint:9 autodestroytime;
        // offset: 0xba0, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkillconfirmed;
        // offset: 0xba8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4e4352bd1aaeedfe;
        // offset: 0xbb0, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_507e1eb7f297d872;
        // offset: 0xbc0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_342835495fca42bb;
        // offset: 0xbd0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7cada6c0936f259b;
        // offset: 0xbe0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> waverespawndelay;
        // offset: 0xbe8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1974892bc7266bab;
        // offset: 0xbf8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_567db38226658dbf;
        // offset: 0xc00, bitSize: 0x8(0x1 Byte(s))
        uint:6 prematchperiod;
        // offset: 0xc08, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostsentry;
        // offset: 0xc10, bitSize: 0x8(0x1 Byte(s))
        uint:6 teamkillscore;
        // offset: 0xc18, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_102aeddad113f70c;
        // offset: 0xc20, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_4635a26c94b56725;
        // offset: 0xc28, bitSize: 0x8(0x1 Byte(s))
        uint:3 platooncount;
        // offset: 0xc30, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierhealth;
        // offset: 0xc50, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_71da377e373bc755;
        // offset: 0xc68, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_38a8f601ab8388d0;
        // offset: 0xc78, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarykill;
        // offset: 0xc80, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperheadshot;
        // offset: 0xc88, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_75ff4383212c5111;
        // offset: 0xc98, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1908ad844e6c3e37;
        // offset: 0xca0, bitSize: 0x8(0x1 Byte(s))
        uint:4 pregameitemmaxvotes;
        // offset: 0xca8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_50029ecff5e7d383;
        // offset: 0xcb8, bitSize: 0x8(0x1 Byte(s))
        uint:7 playernumlives;
        // offset: 0xcc0, bitSize: 0x8(0x1 Byte(s))
        uint:2 infectionmode;
        // offset: 0xcc8, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleround;
        // offset: 0xcd0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7d53c8bab3db8122;
        // offset: 0xce0, bitSize: 0x8(0x1 Byte(s))
        fixed<7,1> incrementalspawndelay;
        // offset: 0xce8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_allies;
        // offset: 0xcf0, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxsuicidesbeforekick;
        // offset: 0xcf8, bitSize: 0x8(0x1 Byte(s))
        uint:7 gameadvertisementrulescorepercent;
        // offset: 0xd00, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_3e76ce42036815cc;
        // offset: 0xd10, bitSize: 0x10(0x2 Byte(s))
        int:10 hash_3ccd8e1bf3864fa1;
        // offset: 0xd20, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_130d127406ab976e;
        // offset: 0xd30, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostairpatrol;
        // offset: 0xd38, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcoststraferun;
        // offset: 0xd40, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostcuav;
        // offset: 0xd48, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostrcxd;
        // offset: 0xd50, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostvtol;
        // offset: 0xd58, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_40c4b447a58a7da4;
        // offset: 0xd68, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> hash_47e9736d437be7c8;
        // offset: 0xd70, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3e1bb1840c4ab667;
        // offset: 0xd80, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1ea82b1edff2a13b;
        // offset: 0xd90, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c31c3f19402e1f;
        // offset: 0xda0, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandtimer;
        // offset: 0xda8, bitSize: 0x8(0x1 Byte(s))
        uint:6 reboottime;
        // offset: 0xdb0, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscorepercleandeposit;
        // offset: 0xdb8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extrasegmenttime;
        // offset: 0xdc8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_2081d79c44b2cefb;
        // offset: 0xde0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6773166f56896564;
        // offset: 0xdf0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1725e90b73841702;
        // offset: 0xe00, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_273d049136c76afa;
        // offset: 0xe10, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_2849b6cf7317ab1b;
        // offset: 0xe18, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5a4fde688cbf1a01;
        // offset: 0xe28, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c72ac3d026ca4eb;
        // offset: 0xe38, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_83f11b8abac148f;
        // offset: 0xe40, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_22fa97d05461a3e8;
        // offset: 0xe58, bitSize: 0x8(0x1 Byte(s))
        uint:4 pickuptime;
        // offset: 0xe60, bitSize: 0x10(0x2 Byte(s))
        fixed<14,7> hash_451245a24412d90f;
        // offset: 0xe70, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3d5a87878a3bef28;
        // offset: 0xe80, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_552467c143123c1c;
        // offset: 0xe88, bitSize: 0x20(0x4 Byte(s))
        int hash_64727525f5957d06;
        // offset: 0xea8, bitSize: 0x20(0x4 Byte(s))
        int hash_1f3285ddee84620c;
        // offset: 0xec8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_2596f9e3d6e26ac9;
        // offset: 0xed0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostchoppergunner;
        // offset: 0xed8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_3767386c050fa0eb;
        // offset: 0xee0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerrespawndelay;
        // offset: 0xee8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_34ee1a1a574eaa4c;
        // offset: 0xef8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> spawntraptriggertime;
        // offset: 0xf00, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_26ff1d48be83e46c;
        // offset: 0xf18, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayeroffensive;
        // offset: 0xf20, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_527f80b77f20b8c8;
        // offset: 0xf30, bitSize: 0x8(0x1 Byte(s))
        uint:2 allowhitmarkers;
        // offset: 0xf38, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_d8215d30d36fa59;
        // offset: 0xf50, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_67ee1d8d7938baa1;
        // offset: 0xf60, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2c02a63d2c336b30;
        // offset: 0xf70, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxobjectiveeventsperminute;
        // offset: 0xf80, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_47dd11084763c671;
        // offset: 0xf90, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4201d2890785fb14;
        // offset: 0xfa0, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarygrenadekill;
        // offset: 0xfa8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team10;
        // offset: 0xfb0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostcarepackage;
        // offset: 0xfb8, bitSize: 0x8(0x1 Byte(s))
        uint:7 bonuslivesforcapturingzone;
        // offset: 0xfc0, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_39d008c4c2044bc7;
        // offset: 0xfd0, bitSize: 0x8(0x1 Byte(s))
        uint:7 startplayers;
        // offset: 0xfd8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_7d590533364efa87;
        // offset: 0xfe0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_252e760b41f3d94a;
        // offset: 0xfe8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartkillstreakdelay;
        // offset: 0xff0, bitSize: 0x8(0x1 Byte(s))
        uint:5 totalkillsmax;
        // offset: 0xff8, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundswitch;
        // offset: 0x1000, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerobjectiveheldrespawndelay;
        // offset: 0x1008, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpenalty;
        // offset: 0x1010, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_18bdaa4b00863e9d;
        // offset: 0x1018, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_12ef93fbb06b1e2c;
        // offset: 0x1030, bitSize: 0x8(0x1 Byte(s))
        uint:5 weaponcount;
        // offset: 0x1038, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1706d4b546538286;
        // offset: 0x1050, bitSize: 0x8(0x1 Byte(s))
        uint:7 weapontimer;
        // offset: 0x1058, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> overtimetimelimit;
        // offset: 0x1068, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_96215e6d55c4b2b;
        // offset: 0x1078, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_6cd27d9716989cf5;
        // offset: 0x1088, bitSize: 0x8(0x1 Byte(s))
        uint:7 cleandepositonlinetime;
        // offset: 0x1090, bitSize: 0x8(0x1 Byte(s))
        fixed<7,3> hash_4c7c8c4bd1b2a58b;
        // offset: 0x1098, bitSize: 0x8(0x1 Byte(s))
        uint:7 drafttime;
        // offset: 0x10a0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_ed89addfaaafe48;
        // offset: 0x10a8, bitSize: 0x8(0x1 Byte(s))
        uint:7 objectivespawntime;
        // offset: 0x10b0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostreconplane;
        // offset: 0x10b8, bitSize: 0x8(0x1 Byte(s))
        uint:2 killcammode;
        // offset: 0x10c0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> killcamtime;
        // offset: 0x10d0, bitSize: 0x8(0x1 Byte(s))
        uint:4 throwscore;
        // offset: 0x10d8, bitSize: 0x8(0x1 Byte(s))
        uint:4 deposittime;
        // offset: 0x10e0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extratime;
        // offset: 0x10f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_54d908d6273c8893;
        // offset: 0x1100, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6269eb986d22cd37;
        // offset: 0x1108, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreequipmentpowertimefactor;
        // offset: 0x1110, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostarmor;
        // offset: 0x1118, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_36ea712d503b054c;
        // offset: 0x1130, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamcount;
        // offset: 0x1138, bitSize: 0x20(0x4 Byte(s))
        int hash_7f38d88521da4c79;
        // offset: 0x1158, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_24c718cc0c526c38;
        // offset: 0x1160, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundlimit;
        // offset: 0x1168, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_531cc9c63ae86a93;
        // offset: 0x1178, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostartillery;
        // offset: 0x1180, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_b30022a9302a5a6;
        // offset: 0x1190, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_25d72112144c5ea0;
        // offset: 0x11a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_39cfd81268504039;
        // offset: 0x11b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_208071125a2b0b0b;
        // offset: 0x11c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_52ef5b12764c8139;
        // offset: 0x11d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4bf2241272d06bec;
        // offset: 0x11e0, bitSize: 0x8(0x1 Byte(s))
        uint:2 charactercustomization;
        // offset: 0x11e8, bitSize: 0x20(0x4 Byte(s))
        int hash_af4ad3316f0ded6;
        // offset: 0x1208, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_437a986f8d24d7eb;
        // offset: 0x1210, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_16182516e10d0250;
        // offset: 0x1228, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_axis;
        // offset: 0x1230, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7344dfa399020a06;
        // offset: 0x1248, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6e2abf2cc40e03f1;
        // offset: 0x1250, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkilldenied;
        // offset: 0x1258, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> bombtimer;
        // offset: 0x1268, bitSize: 0x1
        bool delayplayer;
        // offset: 0x1269, bitSize: 0x1
        bool hash_196e997a082443a9;
        // offset: 0x126a, bitSize: 0x1
        bool voipdeadchatwithdead;
        // offset: 0x126b, bitSize: 0x1
        bool voipdeadchatwithteam;
        // offset: 0x126c, bitSize: 0x1
        bool hash_729930c3c52653c3;
        // offset: 0x126d, bitSize: 0x1
        bool useembleminsteadoffactionicon;
        // offset: 0x126e, bitSize: 0x1
        bool draftenabled;
        // offset: 0x126f, bitSize: 0x1
        bool hash_3a15393c2e90e121;
        // offset: 0x1270, bitSize: 0x1
        bool hash_1d708093c2664515;
        // offset: 0x1271, bitSize: 0x1
        bool overtimebestteam;
        // offset: 0x1272, bitSize: 0x1
        bool droppedtagrespawn;
        // offset: 0x1273, bitSize: 0x1
        bool hash_1e71b5ce1cd845b3;
        // offset: 0x1274, bitSize: 0x1
        bool hash_25aaa9a29a90534c;
        // offset: 0x1275, bitSize: 0x1
        bool voipkillershearvictim;
        // offset: 0x1276, bitSize: 0x1
        bool hash_7c0dcff6ffb1e348;
        // offset: 0x1277, bitSize: 0x1
        bool hash_4091f2d0019b1f4a;
        // offset: 0x1278, bitSize: 0x1
        bool deathcirclerespawn;
        // offset: 0x1279, bitSize: 0x1
        bool hash_2683a105198a7407;
        // offset: 0x127a, bitSize: 0x1
        bool presetclassesperteam;
        // offset: 0x127b, bitSize: 0x1
        bool hash_361f7fe066281093;
        // offset: 0x127c, bitSize: 0x1
        bool hash_232892d3b0a6240c;
        // offset: 0x127d, bitSize: 0x1
        bool bot_autofill_allies;
        // offset: 0x127e, bitSize: 0x1
        bool hash_2c55a3723cd9fdf9;
        // offset: 0x127f, bitSize: 0x1
        bool forcegibbing;
        // offset: 0x1280, bitSize: 0x1
        bool hash_5c57222bb95a06cb;
        // offset: 0x1281, bitSize: 0x1
        bool hardcoremode;
        // offset: 0x1282, bitSize: 0x1
        bool hash_135829cbab367329;
        // offset: 0x1283, bitSize: 0x1
        bool hash_495b64bd935bf7b;
        // offset: 0x1284, bitSize: 0x1
        bool useitemspawns;
        // offset: 0x1285, bitSize: 0x1
        bool hash_77b7734750cd75e9;
        // offset: 0x1286, bitSize: 0x1
        bool silentplant;
        // offset: 0x1287, bitSize: 0x1
        bool hash_5711f3e42924a635;
        // offset: 0x1288, bitSize: 0x1
        bool drafteveryround;
        // offset: 0x1289, bitSize: 0x1
        bool timepauseswheninzone;
        // offset: 0x128a, bitSize: 0x1
        bool hash_4b55d75b8d779e4;
        // offset: 0x128b, bitSize: 0x1
        bool hash_549abfbb3665d526;
        // offset: 0x128c, bitSize: 0x1
        bool scoreperplayer;
        // offset: 0x128d, bitSize: 0x1
        bool ekiaresetondeath;
        // offset: 0x128e, bitSize: 0x1
        bool kothmode;
        // offset: 0x128f, bitSize: 0x1
        bool hash_70c6890214831a58;
        // offset: 0x1290, bitSize: 0x1
        bool hash_62665aebde32c8ae;
        // offset: 0x1291, bitSize: 0x1
        bool hash_18c053cae82c1167;
        // offset: 0x1292, bitSize: 0x1
        bool hash_6cf5f53d1fbb1066;
        // offset: 0x1293, bitSize: 0x1
        bool hash_3d23923f9c9757cd;
        // offset: 0x1294, bitSize: 0x1
        bool decayprogress;
        // offset: 0x1295, bitSize: 0x1
        bool playerqueuedrespawn;
        // offset: 0x1296, bitSize: 0x1
        bool scorestreaksbarebones;
        // offset: 0x1297, bitSize: 0x1
        bool cumulativeroundscores;
        // offset: 0x1298, bitSize: 0x1
        bool hash_3ad2212223b76a72;
        // offset: 0x1299, bitSize: 0x1
        bool voipdeadhearkiller;
        // offset: 0x129a, bitSize: 0x1
        bool bot_autofill_team10;
        // offset: 0x129b, bitSize: 0x1
        bool hash_6e6991561babdd7e;
        // offset: 0x129c, bitSize: 0x1
        bool bot_autofill_axis;
        // offset: 0x129d, bitSize: 0x1
        bool skiplaststand;
        // offset: 0x129e, bitSize: 0x1
        bool hash_1f3825ba2a669400;
        // offset: 0x129f, bitSize: 0x1
        bool usespawngroups;
        // offset: 0x12a0, bitSize: 0x1
        bool hash_b76e50c1202aa23;
        // offset: 0x12a1, bitSize: 0x1
        bool disablethirdpersonspectating;
        // offset: 0x12a2, bitSize: 0x1
        bool platoonassignment;
        // offset: 0x12a3, bitSize: 0x1
        bool hash_7daf08db0c451ad1;
        // offset: 0x12a4, bitSize: 0x1
        bool allowlaststandforactiveclients;
        // offset: 0x12a5, bitSize: 0x1
        bool hash_5cc3c32813d17039;
        // offset: 0x12a6, bitSize: 0x1
        bool allowbattlechatter;
        // offset: 0x12a7, bitSize: 0x1
        bool fowrevealenabled;
        // offset: 0x12a8, bitSize: 0x1
        bool hash_4e8cafe9a4470898;
        // offset: 0x12a9, bitSize: 0x1
        bool hash_7647d0e9a45eeca6;
        // offset: 0x12aa, bitSize: 0x1
        bool hash_3cd7f961322b6b7;
        // offset: 0x12ab, bitSize: 0x1
        bool hash_3293bf384d3c1e2f;
        // offset: 0x12ac, bitSize: 0x1
        bool hash_5fcc23190f135afe;
        // offset: 0x12ad, bitSize: 0x1
        bool hash_35376812247cdc3;
        // offset: 0x12ae, bitSize: 0x1
        bool disablecontracts;
        // offset: 0x12af, bitSize: 0x1
        bool hash_2b1f40bc711c41f3;
        // offset: 0x12b0, bitSize: 0x1
        bool hash_75d44b1542e3edf9;
        // offset: 0x12b1, bitSize: 0x1
        bool hash_5462586bdce0346e;
        // offset: 0x12b2, bitSize: 0x1
        bool gameobjectscontestedmajoritywins;
        // offset: 0x12b3, bitSize: 0x1
        bool hash_2f0beae14bf17810;
        // offset: 0x12b4, bitSize: 0x1
        bool autoheal;
        // offset: 0x12b5, bitSize: 0x1
        bool allowannouncer;
        // offset: 0x12b6, bitSize: 0x1
        bool disallowaimslowdown;
        // offset: 0x12b7, bitSize: 0x1
        bool hash_435c853b64e3175e;
        // offset: 0x12b8, bitSize: 0x1
        bool hash_5538f8f7758641b4;
        // offset: 0x12b9, bitSize: 0x1
        bool bot_autofill_team3;
        // offset: 0x12ba, bitSize: 0x1
        bool bot_autofill_team4;
        // offset: 0x12bb, bitSize: 0x1
        bool bot_autofill_team5;
        // offset: 0x12bc, bitSize: 0x1
        bool bot_autofill_team6;
        // offset: 0x12bd, bitSize: 0x1
        bool bot_autofill_team7;
        // offset: 0x12be, bitSize: 0x1
        bool bot_autofill_team8;
        // offset: 0x12bf, bitSize: 0x1
        bool bot_autofill_team9;
        // offset: 0x12c0, bitSize: 0x1
        bool hash_35e6177743dac957;
        // offset: 0x12c1, bitSize: 0x1
        bool hash_14fd184091ff1af;
        // offset: 0x12c2, bitSize: 0x1
        bool vehiclesenabled;
        // offset: 0x12c3, bitSize: 0x1
        bool decaycapturedzones;
        // offset: 0x12c4, bitSize: 0x1
        bool neutralzone;
        // offset: 0x12c5, bitSize: 0x1
        bool boastallowcam;
        // offset: 0x12c6, bitSize: 0x1
        bool hash_7cc354dd83013a47;
        // offset: 0x12c7, bitSize: 0x1
        bool onlyheadshots;
        // offset: 0x12c8, bitSize: 0x1
        bool competitivesettings;
        // offset: 0x12c9, bitSize: 0x1
        bool flagcapturecondition;
        // offset: 0x12ca, bitSize: 0x1
        bool hash_1ca94a3bd057f19f;
        // offset: 0x12cb, bitSize: 0x1
        bool hash_1346ebfec214d724;
        // offset: 0x12cc, bitSize: 0x1
        bool hash_7b822d42a5d1643d;
        // offset: 0x12cd, bitSize: 0x1
        bool hash_4be46e952d54e9a2;
        // offset: 0x12ce, bitSize: 0x1
        bool hash_1ebf97988141c498;
        // offset: 0x12cf, bitSize: 0x1
        bool hash_25fa292c7fc561b8;
        // offset: 0x12d0, bitSize: 0x1
        bool flagcanbeneutralized;
        // offset: 0x12d1, bitSize: 0x1
        bool hash_241e17e13da23de2;
        // offset: 0x12d2, bitSize: 0x1
        bool hash_4057701fc646435d;
        // offset: 0x12d3, bitSize: 0x1
        bool hash_6881c7cab0dcef39;
        // offset: 0x12d4, bitSize: 0x1
        bool vehiclestimed;
        // offset: 0x12d5, bitSize: 0x1
        bool pregamedraftenabled;
        // offset: 0x12d6, bitSize: 0x1
        bool hash_6f03247bbcf52311;
        // offset: 0x12d7, bitSize: 0x1
        bool hash_6143c4e1e18f08fd;
        // offset: 0x12d8, bitSize: 0x1
        bool teamkillpointloss;
        // offset: 0x12d9, bitSize: 0x1
        bool hash_322026c0342869d1;
        // offset: 0x12da, bitSize: 0x1
        bool hash_1e346fbfe02f1294;
        // offset: 0x12db, bitSize: 0x1
        bool hash_3724e6bfee03ce6e;
        // offset: 0x12dc, bitSize: 0x1
        bool hash_497a2cbff8af4988;
        // offset: 0x12dd, bitSize: 0x1
        bool hash_50776bbffc2b6c6d;
        // offset: 0x12de, bitSize: 0x1
        bool hash_55fc1cb09246fe30;
        // offset: 0x12df, bitSize: 0x1
        bool hash_1d5943e61e65eeae;
        // offset: 0x12e0, bitSize: 0x1
        bool hash_656fd3c508d1d33e;
        // offset: 0x12e1, bitSize: 0x1
        bool hash_29f3630e8e542a0a;
        // offset: 0x12e2, bitSize: 0x1
        bool hash_c6a2e6c3e86125a;
        // offset: 0x12e3, bitSize: 0x1
        bool hash_2ebcaa6630ba8fd5;
        // offset: 0x12e4, bitSize: 0x1
        bool perksenabled;
        // offset: 0x12e5, bitSize: 0x1
        bool hash_33bc6781006ae83d;
        // offset: 0x12e6, bitSize: 0x1
        bool hash_655d904d5995891f;
        // offset: 0x12e7, bitSize: 0x1
        bool hash_6c21d8e8de53e9c3;
        // offset: 0x12e8, bitSize: 0x1
        bool hash_2966662989c3484c;
        // offset: 0x12e9, bitSize: 0x1
        bool allowmapscripting;
        // offset: 0x12ea, bitSize: 0x1
        bool robotshield;
        // offset: 0x12eb, bitSize: 0x1
        bool hash_62e3e33ec68db92f;
        // offset: 0x12ec, bitSize: 0x1
        bool hash_2a76bf462f4c2f50;
        // offset: 0x12ed, bitSize: 0x1
        bool disableattachments;
        // offset: 0x12ee, bitSize: 0x1
        bool disablecompass;
        // offset: 0x12ef, bitSize: 0x1
        bool disableweapondrop;
        // offset: 0x12f0, bitSize: 0x1
        bool escalationenabled;
        // offset: 0x12f1, bitSize: 0x1
        bool hash_a564dde6ee3c657;
        // offset: 0x12f2, bitSize: 0x1
        bool hash_7b8284382bffc197;
        // offset: 0x12f3, bitSize: 0x1
        bool hash_25368755636c91a4;
        // offset: 0x12f4, bitSize: 0x1
        bool disableclassselection;
        // offset: 0x12f5, bitSize: 0x1
        bool hash_290721f8deb6ef5e;
        // offset: 0x12f6, bitSize: 0x1
        bool hash_48670d9509071424;
        // offset: 0x12f7, bitSize: 0x1
        bool autoteambalance;
        // offset: 0x12f8, bitSize: 0x1
        bool hash_4bdd1bd86b610871;
        // offset: 0x12f9, bitSize: 0x1
        bool hash_69df7093cd32f107;
        // offset: 0x12fa, bitSize: 0x1
        bool hash_7c0acf14fb1f4080;
        // offset: 0x12fb, bitSize: 0x1
        bool allowplayofthematch;
        // offset: 0x12fc, bitSize: 0x1
        bool allowprone;
        // offset: 0x12fd, bitSize: 0x1
        bool scoreresetondeath;
        // offset: 0x12fe, bitSize: 0x1
        bool hash_452a45e599d3a575;
        // offset: 0x12ff, bitSize: 0x1
        bool playerforcerespawn;
        // offset: 0x1300, bitSize: 0x1
        bool hash_7098f146a35b8468;
        // offset: 0x1301, bitSize: 0x1
        bool multibomb;
        // offset: 0x1302, bitSize: 0x1
        bool hash_4dd37bf6da89131;
        // offset: 0x1303, bitSize: 0x1
        bool hash_29fd164e7ff1abb0;
        // offset: 0x1304, bitSize: 0x1
        bool hash_104f124f56f0f20a;
        // offset: 0x1305, bitSize: 0x1
        bool hash_2560dae45cc112e3;
        // offset: 0x1306, bitSize: 0x1
        bool hash_50a46f60312cf53c;
        // offset: 0x1307, bitSize: 0x1
        bool hash_23b110691971b537;
        // offset: 0x1308, bitSize: 0x1
        bool deathcircle;
        // offset: 0x1309, bitSize: 0x1
        bool hash_4669425278875e14;
        // offset: 0x130a, bitSize: 0x1
        bool boastenabled;
        // offset: 0x130b, bitSize: 0x1
        bool hash_5002b8a3b8882084;
        // offset: 0x130c, bitSize: 0x1
        bool hash_3513cf8b4287cdd7;
        // offset: 0x130d, bitSize: 0x1
        bool hash_72a2919d2ac65850;
        // offset: 0x130e, bitSize: 0x1
        bool hash_59272f59f19c342a;
        // offset: 0x130f, bitSize: 0x1
        bool hash_429521a79f75a327;
        // offset: 0x1310, bitSize: 0x1
        bool hash_69f74281cacb8a0f;
        // offset: 0x1311, bitSize: 0x1
        bool hash_5d65f5abcdad24fe;
        // offset: 0x1312, bitSize: 0x1
        bool deathpointloss;
        // offset: 0x1313, bitSize: 0x1
        bool disablecustomcac;
        // offset: 0x1314, bitSize: 0x1
        bool hash_1260b639348098e3;
        // offset: 0x1315, bitSize: 0x1
        bool rebootplayers;
        // offset: 0x1316, bitSize: 0x1
        bool oldschoolmode;
        // offset: 0x1317, bitSize: 0x1
        bool hash_4238acad9fa0f317;
        // offset: 0x1318, bitSize: 0x1
        bool allowfinalkillcam;
        // offset: 0x1319, bitSize: 0x1
        bool allowspectating;
        // offset: 0x131a, bitSize: 0x1
        bool usabledynents;
        // offset: 0x131b, bitSize: 0x1
        bool playintrocinematics;
        // offset: 0x131c, bitSize: 0x1
        bool hash_564289af24e283db;
        // offset: 0x131d, bitSize: 0x1
        bool hash_11e1a0adebdab01a;
        // offset: 0x131e, bitSize: 0x1
        bool hash_7379657f823bfef9;
        // offset: 0x131f, bitSize: 0x1
        bool hash_47df56af71e4df3;
        // offset: 0x1320, bitSize: 0x1
        bool hash_282689f7ec6d7d32;
        // offset: 0x1321, bitSize: 0x1
        bool hash_4ce6b119f5979182;
        // offset: 0x1322, bitSize: 0x1
        bool spawnselectenabled;
        // offset: 0x1323, bitSize: 0x1
        bool loadoutkillstreaksenabled;
        // offset: 0x1324, bitSize: 0x1
        bool pregameitemvoteenabled;
        // offset: 0x1325, bitSize: 0x1
        bool hash_38d6e4d91bbc82ee;
        // offset: 0x1326, bitSize: 0x1
        bool hash_2ffb09b25b95a125;
        // offset: 0x1327, bitSize: 0x1
        bool hash_5684ea266d45be15;
        // offset: 0x1328, bitSize: 0x1
        bool hash_7f273e367f26254;
        // offset: 0x1329, bitSize: 0x1
        bool hash_65c535aa5198d01d;
        // offset: 0x132a, bitSize: 0x1
        bool disallowprone;
        // offset: 0x132b, bitSize: 0x1
        bool hash_3cc3acd830a8eef;
        // offset: 0x132c, bitSize: 0x1
        bool moveplayers;
        // offset: 0x132d, bitSize: 0x1
        bool hash_6945105793e31c56;
        // offset: 0x132e, bitSize: 0x1
        bool disabletacinsert;
        // offset: 0x132f, bitSize: 0x1
        bool voipdeadhearallliving;
        // offset: 0x1330, bitSize: 0x1
        bool hash_4ca06c610b5d53bd;
        // offset: 0x1331, bitSize: 0x1
        bool killstreaksgivegamescore;
        // offset: 0x1332, bitSize: 0x1
        bool hash_1cc3f98086d6f5dd;
        // offset: 0x1333, bitSize: 0x1
        bool flagcapturerateincrease;
        // offset: 0x1334, bitSize: 0x1
        bool use_doors;
        // offset: 0x1335, bitSize: 0x1
        bool pvponly;
        // offset: 0x1336, bitSize: 0x1
        bool forwardspawnteamspecificspawns;
        // offset: 0x1337, bitSize: 0x1
        bool hash_50b56d2635cbb74b;
        // offset: 0x1338, bitSize: 0x1
        bool hash_68fd4f67ea4b4ff8;
        // offset: 0x1339, bitSize: 0x1
        bool forwardspawntakesdamage;
        // offset: 0x133a, bitSize: 0x1
        bool allowingameteamchange;
        // offset: 0x133b, bitSize: 0x1
        bool hash_297b69789a6283b4;
        // offset: 0x133c, bitSize: 0x1
        bool deathzones;
        // offset: 0x133d, bitSize: 0x1
        bool classicmode;
        // offset: 0x133e, bitSize: 0x1
        bool hash_12c8b36832284f70;
        // offset: 0x133f, bitSize: 0x1
        bool voipdeadhearteamliving;
        // offset: 0x1340, bitSize: 0x1
        bool hash_51f7292117d41790;
        // offset: 0x1341, bitSize: 0x1
        bool capdecay;
        // offset: 0x1342, bitSize: 0x1
        bool hash_7bcb76b8a52c35e;
        // offset: 0x1343, bitSize: 0x1
        bool hash_5c90286f1514c76;
        // offset: 0x1344, bitSize: 0x1
        bool hash_b87383d5497a826;
        // offset: 0x1345, bitSize: 0x1
        bool voipeveryonehearseveryone;
        // offset: 0x1346, bitSize: 0x1
        bool hash_460af55ecefb11f;
        // offset: 0x1347, bitSize: 0x1
        bool hash_4f4a73f236278ba8;
        // offset: 0x1348, bitSize: 0x1
        bool hash_5f76e2d55ad861ed;
        // offset: 0x1349, bitSize: 0x1
        bool hash_52a73dca4cbce600;
        // offset: 0x134a, bitSize: 0x1
        bool laststandfinishing;
        // offset: 0x134b, bitSize: 0x1
        bool hash_201c1769d32b30d3;
    };

    // root: bitSize: 0x1350, members: 1

    // offset: 0x0, bitSize: 0x1350(0x26a Byte(s))
    gametypesettings gametypesettings;
};

version hash_37b30f8ac0e312e4 {
    // enums ..... 0 (0x0)
    // structs ... 2 (0x2)
    // header bit size .. 5120 (0x1400)
    // header byte size . 640 (0x280)

    // bitSize: 0x1350, members: 579
    struct gametypesettings {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> timelimit;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_25740f686a5cfc7e;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        uint:4 playerkillsmax;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_129fca5e3a00477f;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_444634d99df7a661;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperdeath;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:2 forceradar;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkill;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playersprinttime;
        // offset: 0x58, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> capturetime;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleroundswon;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_9fe0e2b1a7f556;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayerdefensive;
        // offset: 0x88, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_35e9fc8eee6881e0;
        // offset: 0x90, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_613785a993624133;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandrevivehealth;
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierdestroytime;
        // offset: 0xc0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostattackhelicopter;
        // offset: 0xc8, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_6024ee628431415;
        // offset: 0xd8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostbow;
        // offset: 0xe0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostuav;
        // offset: 0xe8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperweaponkill;
        // offset: 0xf0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_722d8dafb62ce7fe;
        // offset: 0x108, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_4a10303376ed2d10;
        // offset: 0x110, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_68b825c95acb9218;
        // offset: 0x120, bitSize: 0x8(0x1 Byte(s))
        uint:6 maxteamplayers;
        // offset: 0x128, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandhealth;
        // offset: 0x130, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6b2754246df1bc7c;
        // offset: 0x140, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_46f0ae82f5c2f7d4;
        // offset: 0x150, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> maxusers;
        // offset: 0x160, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_1ca4d65346568642;
        // offset: 0x170, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_312848239629f5b9;
        // offset: 0x180, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1d77a77db928f695;
        // offset: 0x190, bitSize: 0x8(0x1 Byte(s))
        uint:4 draftrequiredclients;
        // offset: 0x198, bitSize: 0x8(0x1 Byte(s))
        uint:3 friendlyfiretype;
        // offset: 0x1a0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7fee0559953eec6;
        // offset: 0x1b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_28005bb885acabc3;
        // offset: 0x1c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4725de6afe873b87;
        // offset: 0x1d8, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_16184f2fd4014b39;
        // offset: 0x1e0, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspermeleekill;
        // offset: 0x1e8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_51f121252f1d8c7f;
        // offset: 0x1f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_32da91b78e54e7b5;
        // offset: 0x200, bitSize: 0x8(0x1 Byte(s))
        uint:6 preroundperiod;
        // offset: 0x208, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_56f6d77da3124af2;
        // offset: 0x218, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowertimefactor;
        // offset: 0x220, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_62a4fd40810cb61;
        // offset: 0x228, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_56a31bddd92a64dc;
        // offset: 0x230, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> laststandrevivetime;
        // offset: 0x238, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_429d353f0be087a5;
        // offset: 0x250, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpunishcount;
        // offset: 0x258, bitSize: 0x8(0x1 Byte(s))
        uint:7 maxplayers;
        // offset: 0x260, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53fd9a3e9a0e78e1;
        // offset: 0x270, bitSize: 0x20(0x4 Byte(s))
        int forwardspawnhealth;
        // offset: 0x290, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5598d36d6b224c9a;
        // offset: 0x2a0, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnteamkilledpenalty;
        // offset: 0x2a8, bitSize: 0x8(0x1 Byte(s))
        uint:3 ballcount;
        // offset: 0x2b0, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_6ae29c8144cb7659;
        // offset: 0x2b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c82ffb472a21cac;
        // offset: 0x2c8, bitSize: 0x8(0x1 Byte(s))
        uint:3 gunselection;
        // offset: 0x2d0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_53c1e74b2d385c17;
        // offset: 0x2e8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_17cc26f74ef911e0;
        // offset: 0x2f0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_67d54bbc52811921;
        // offset: 0x2f8, bitSize: 0x8(0x1 Byte(s))
        fixed<5,2> hash_1614b9cbe0df6f75;
        // offset: 0x300, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_35104d2d5fd22ce7;
        // offset: 0x318, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1441f7ad44e1cfd4;
        // offset: 0x320, bitSize: 0x8(0x1 Byte(s))
        uint:7 killstreakdeathpenaltyindividualearn;
        // offset: 0x328, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_c0beb1e5a80c25c;
        // offset: 0x330, bitSize: 0x8(0x1 Byte(s))
        uint:5 prematchrequirement;
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:3 spectatetype;
        // offset: 0x340, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> hash_57fe6337297bcce9;
        // offset: 0x348, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_1df445b9d1af641f;
        // offset: 0x350, bitSize: 0x8(0x1 Byte(s))
        uint:3 randomobjectivelocations;
        // offset: 0x358, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_55db4a8546a13c79;
        // offset: 0x370, bitSize: 0x8(0x1 Byte(s))
        uint:5 roundwinlimit;
        // offset: 0x378, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_ecf2124e9108fc4;
        // offset: 0x380, bitSize: 0x10(0x2 Byte(s))
        uint:10 antiboostdistance;
        // offset: 0x390, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_115a3410d9dbf98d;
        // offset: 0x3a0, bitSize: 0x10(0x2 Byte(s))
        uint:15 roundscorelimit;
        // offset: 0x3b0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_320a5028d10f305a;
        // offset: 0x3c8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> hash_154db5a1b2e9d757;
        // offset: 0x3d8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> bulletdamagescalar;
        // offset: 0x3e0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1df1e1139a1a4eb8;
        // offset: 0x3f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_79c708d50a12e336;
        // offset: 0x408, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_49d61407873849a2;
        // offset: 0x410, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostontimeamount;
        // offset: 0x418, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> defusetime;
        // offset: 0x420, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> teamkillreducedpenalty;
        // offset: 0x428, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxallocation;
        // offset: 0x430, bitSize: 0x8(0x1 Byte(s))
        uint:4 carryscore;
        // offset: 0x438, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c8636144ad47ac9;
        // offset: 0x448, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53cd45b387951ca1;
        // offset: 0x458, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_6e49ce7bbe6d3f1f;
        // offset: 0x460, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> killeventscoremultiplier;
        // offset: 0x468, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_2efff808b2701aa5;
        // offset: 0x478, bitSize: 0x8(0x1 Byte(s))
        uint:6 ticketslostontimeinterval;
        // offset: 0x480, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartexplosivedelay;
        // offset: 0x488, bitSize: 0x8(0x1 Byte(s))
        uint:2 cleandepositrotation;
        // offset: 0x490, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_21754b274494502e;
        // offset: 0x4a0, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_1311b008d2f6dbc1;
        // offset: 0x4b0, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_5f7c18fecb2a1a44;
        // offset: 0x4c0, bitSize: 0x8(0x1 Byte(s))
        uint:7 idleflagresettime;
        // offset: 0x4c8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowergainfactor;
        // offset: 0x4d0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1f65f0a6f0eb3110;
        // offset: 0x4e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2a02614601829003;
        // offset: 0x4f8, bitSize: 0x8(0x1 Byte(s))
        uint:4 setbacks;
        // offset: 0x500, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1db05f3e34ccaaaf;
        // offset: 0x510, bitSize: 0x20(0x4 Byte(s))
        int hash_6b808ab4016cb1e1;
        // offset: 0x530, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1efac5fcdfa4f;
        // offset: 0x540, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1eeac5fcdf89c;
        // offset: 0x550, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f1ac5fcdfdb5;
        // offset: 0x560, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f0ac5fcdfc02;
        // offset: 0x570, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1ebac5fcdf383;
        // offset: 0x580, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_20a83071685f7bd9;
        // offset: 0x598, bitSize: 0x10(0x2 Byte(s))
        fixed<12,4> trm_maxheight;
        // offset: 0x5a8, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_2b88c6ac064e9c59;
        // offset: 0x5b0, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayofthematchevents;
        // offset: 0x5b8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostwarmachine;
        // offset: 0x5c0, bitSize: 0x10(0x2 Byte(s))
        uint:15 scorelimit;
        // offset: 0x5d0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> cratecapturetime;
        // offset: 0x5d8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4a6ef8940f4cbb83;
        // offset: 0x5e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eeb8cb5c84b1939;
        // offset: 0x5f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eba3289161fd45f;
        // offset: 0x600, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_22c53ddb2cb67f13;
        // offset: 0x610, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_9c266bdf9cad7fa;
        // offset: 0x620, bitSize: 0x8(0x1 Byte(s))
        uint:3 killpointsinenemyprotectedzone;
        // offset: 0x628, bitSize: 0x10(0x2 Byte(s))
        uint:14 playersprintrecoverydelayoverridems;
        // offset: 0x638, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6e2b8452b08a545c;
        // offset: 0x640, bitSize: 0x10(0x2 Byte(s))
        uint:10 playermaxhealth;
        // offset: 0x650, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1833c853bfe78ffc;
        // offset: 0x658, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_5e8818f69d557ad2;
        // offset: 0x670, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_3e13b420d6773b4c;
        // offset: 0x678, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_718b497c5205e74b;
        // offset: 0x688, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostgunship;
        // offset: 0x690, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_42b840c668fd2c85;
        // offset: 0x6a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_44f0b1c6b2d3b6f8;
        // offset: 0x6b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5dc620c6c0919d82;
        // offset: 0x6c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2aea36c6a4135574;
        // offset: 0x6d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_32c16dc6a8490e81;
        // offset: 0x6e0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_66a7d866327081eb;
        // offset: 0x6e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5f116b8cfbdbc3fe;
        // offset: 0x6f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsforsurvivalbonus;
        // offset: 0x700, bitSize: 0x190(0x32 Byte(s)), array:0x32(hti:0xffff)
        uint:5 maxuniquerolesperteam[50];
        // offset: 0x890, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_7adb62a64c6d963;
        // offset: 0x898, bitSize: 0x8(0x1 Byte(s))
        uint:3 objectivepingtime;
        // offset: 0x8a0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_271177b8b4cfcf15;
        // offset: 0x8b8, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamkillspawndelay;
        // offset: 0x8c0, bitSize: 0x8(0x1 Byte(s))
        uint:8 carrierarmor;
        // offset: 0x8c8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_51a2ab391c340e03;
        // offset: 0x8e0, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostondeath;
        // offset: 0x8e8, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_47d4aa0161d78e15;
        // offset: 0x8f0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostremotemissile;
        // offset: 0x8f8, bitSize: 0x10(0x2 Byte(s))
        uint:9 carriermovespeed;
        // offset: 0x908, bitSize: 0x8(0x1 Byte(s))
        uint:5 boottime;
        // offset: 0x910, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_652bc8c2577ec788;
        // offset: 0x920, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_72852fc1d977c3a0;
        // offset: 0x930, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_314c2f7312bde4af;
        // offset: 0x938, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_5d5f4ee35c9977c7;
        // offset: 0x940, bitSize: 0x8(0x1 Byte(s))
        uint:3 roundstartfriendlyfiretype;
        // offset: 0x948, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagdecaytime;
        // offset: 0x950, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_76f686986e1a58b;
        // offset: 0x960, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_vs_bots;
        // offset: 0x968, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_26b08269156ca0e5;
        // offset: 0x970, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamnumlives;
        // offset: 0x978, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> planttime;
        // offset: 0x980, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6141cddd96ac214e;
        // offset: 0x988, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnprotectiontime;
        // offset: 0x990, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7353bbc24d72ec59;
        // offset: 0x9a0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_573034b3252cb4e3;
        // offset: 0x9b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 inactivitykick;
        // offset: 0x9c8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspersecondarykill;
        // offset: 0x9d0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team3;
        // offset: 0x9d8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team4;
        // offset: 0x9e0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team5;
        // offset: 0x9e8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team6;
        // offset: 0x9f0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team7;
        // offset: 0x9f8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team8;
        // offset: 0xa00, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team9;
        // offset: 0xa08, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerhealthregentime;
        // offset: 0xa10, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5d40d1f9fb7f;
        // offset: 0xa20, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5c40d1f9f9cc;
        // offset: 0xa30, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5f40d1f9fee5;
        // offset: 0xa40, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5e40d1f9fd32;
        // offset: 0xa50, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5940d1f9f4b3;
        // offset: 0xa60, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4f00f3f568c284af;
        // offset: 0xa70, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7f190c8839d3f05c;
        // offset: 0xa80, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_3a4691a853585241;
        // offset: 0xa88, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> destroytime;
        // offset: 0xa98, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagrespawntime;
        // offset: 0xaa0, bitSize: 0x8(0x1 Byte(s))
        uint:2 shutdowndamage;
        // offset: 0xaa8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> gameadvertisementruletimeleft;
        // offset: 0xab0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_6a48bbfb703d5c9c;
        // offset: 0xab8, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_239b391c77ebf8c1;
        // offset: 0xac0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7c33e5bebaf05afb;
        // offset: 0xad0, bitSize: 0x10(0x2 Byte(s))
        uint:11 objectivehealth;
        // offset: 0xae0, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnsuicidepenalty;
        // offset: 0xae8, bitSize: 0x8(0x1 Byte(s))
        uint:2 robotspeed;
        // offset: 0xaf0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_467be34402dad274;
        // offset: 0xaf8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_68e3f54e05f57d85;
        // offset: 0xb00, bitSize: 0x8(0x1 Byte(s))
        uint:7 servermsec;
        // offset: 0xb08, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_410c5c7c1e60b534;
        // offset: 0xb10, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_212cc2b5b360189c;
        // offset: 0xb18, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostminigun;
        // offset: 0xb20, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_55a92a1d652b5edc;
        // offset: 0xb28, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_552338718ec6d2df;
        // offset: 0xb30, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1c0040943c216593;
        // offset: 0xb38, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxplayereventsperminute;
        // offset: 0xb48, bitSize: 0x10(0x2 Byte(s))
        uint:10 leaderbonus;
        // offset: 0xb58, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_5c918cbf75e16116;
        // offset: 0xb60, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_51e989796c38cd87;
        // offset: 0xb68, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostnapalm;
        // offset: 0xb70, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_119bd2704c238e5;
        // offset: 0xb88, bitSize: 0x8(0x1 Byte(s))
        uint:2 enemycarriervisible;
        // offset: 0xb90, bitSize: 0x10(0x2 Byte(s))
        uint:9 autodestroytime;
        // offset: 0xba0, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkillconfirmed;
        // offset: 0xba8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4e4352bd1aaeedfe;
        // offset: 0xbb0, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_507e1eb7f297d872;
        // offset: 0xbc0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_342835495fca42bb;
        // offset: 0xbd0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7cada6c0936f259b;
        // offset: 0xbe0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> waverespawndelay;
        // offset: 0xbe8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1974892bc7266bab;
        // offset: 0xbf8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_567db38226658dbf;
        // offset: 0xc00, bitSize: 0x8(0x1 Byte(s))
        uint:6 prematchperiod;
        // offset: 0xc08, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostsentry;
        // offset: 0xc10, bitSize: 0x8(0x1 Byte(s))
        uint:6 teamkillscore;
        // offset: 0xc18, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_102aeddad113f70c;
        // offset: 0xc20, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_4635a26c94b56725;
        // offset: 0xc28, bitSize: 0x8(0x1 Byte(s))
        uint:3 platooncount;
        // offset: 0xc30, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierhealth;
        // offset: 0xc50, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_71da377e373bc755;
        // offset: 0xc68, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_38a8f601ab8388d0;
        // offset: 0xc78, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarykill;
        // offset: 0xc80, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperheadshot;
        // offset: 0xc88, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_75ff4383212c5111;
        // offset: 0xc98, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1908ad844e6c3e37;
        // offset: 0xca0, bitSize: 0x8(0x1 Byte(s))
        uint:4 pregameitemmaxvotes;
        // offset: 0xca8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_50029ecff5e7d383;
        // offset: 0xcb8, bitSize: 0x8(0x1 Byte(s))
        uint:7 playernumlives;
        // offset: 0xcc0, bitSize: 0x8(0x1 Byte(s))
        uint:2 infectionmode;
        // offset: 0xcc8, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleround;
        // offset: 0xcd0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7d53c8bab3db8122;
        // offset: 0xce0, bitSize: 0x8(0x1 Byte(s))
        fixed<7,1> incrementalspawndelay;
        // offset: 0xce8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_allies;
        // offset: 0xcf0, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxsuicidesbeforekick;
        // offset: 0xcf8, bitSize: 0x8(0x1 Byte(s))
        uint:7 gameadvertisementrulescorepercent;
        // offset: 0xd00, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_3e76ce42036815cc;
        // offset: 0xd10, bitSize: 0x10(0x2 Byte(s))
        int:10 hash_3ccd8e1bf3864fa1;
        // offset: 0xd20, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_130d127406ab976e;
        // offset: 0xd30, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostairpatrol;
        // offset: 0xd38, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcoststraferun;
        // offset: 0xd40, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostcuav;
        // offset: 0xd48, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostrcxd;
        // offset: 0xd50, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostvtol;
        // offset: 0xd58, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_40c4b447a58a7da4;
        // offset: 0xd68, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> hash_47e9736d437be7c8;
        // offset: 0xd70, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3e1bb1840c4ab667;
        // offset: 0xd80, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1ea82b1edff2a13b;
        // offset: 0xd90, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c31c3f19402e1f;
        // offset: 0xda0, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandtimer;
        // offset: 0xda8, bitSize: 0x8(0x1 Byte(s))
        uint:6 reboottime;
        // offset: 0xdb0, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscorepercleandeposit;
        // offset: 0xdb8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extrasegmenttime;
        // offset: 0xdc8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_2081d79c44b2cefb;
        // offset: 0xde0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6773166f56896564;
        // offset: 0xdf0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1725e90b73841702;
        // offset: 0xe00, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_273d049136c76afa;
        // offset: 0xe10, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_2849b6cf7317ab1b;
        // offset: 0xe18, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5a4fde688cbf1a01;
        // offset: 0xe28, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c72ac3d026ca4eb;
        // offset: 0xe38, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_83f11b8abac148f;
        // offset: 0xe40, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_22fa97d05461a3e8;
        // offset: 0xe58, bitSize: 0x8(0x1 Byte(s))
        uint:4 pickuptime;
        // offset: 0xe60, bitSize: 0x10(0x2 Byte(s))
        fixed<14,7> hash_451245a24412d90f;
        // offset: 0xe70, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3d5a87878a3bef28;
        // offset: 0xe80, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_552467c143123c1c;
        // offset: 0xe88, bitSize: 0x20(0x4 Byte(s))
        int hash_64727525f5957d06;
        // offset: 0xea8, bitSize: 0x20(0x4 Byte(s))
        int hash_1f3285ddee84620c;
        // offset: 0xec8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_2596f9e3d6e26ac9;
        // offset: 0xed0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostchoppergunner;
        // offset: 0xed8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_3767386c050fa0eb;
        // offset: 0xee0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerrespawndelay;
        // offset: 0xee8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_34ee1a1a574eaa4c;
        // offset: 0xef8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> spawntraptriggertime;
        // offset: 0xf00, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_26ff1d48be83e46c;
        // offset: 0xf18, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayeroffensive;
        // offset: 0xf20, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_527f80b77f20b8c8;
        // offset: 0xf30, bitSize: 0x8(0x1 Byte(s))
        uint:2 allowhitmarkers;
        // offset: 0xf38, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_d8215d30d36fa59;
        // offset: 0xf50, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_67ee1d8d7938baa1;
        // offset: 0xf60, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2c02a63d2c336b30;
        // offset: 0xf70, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxobjectiveeventsperminute;
        // offset: 0xf80, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_47dd11084763c671;
        // offset: 0xf90, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4201d2890785fb14;
        // offset: 0xfa0, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarygrenadekill;
        // offset: 0xfa8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team10;
        // offset: 0xfb0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostcarepackage;
        // offset: 0xfb8, bitSize: 0x8(0x1 Byte(s))
        uint:7 bonuslivesforcapturingzone;
        // offset: 0xfc0, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_39d008c4c2044bc7;
        // offset: 0xfd0, bitSize: 0x8(0x1 Byte(s))
        uint:7 startplayers;
        // offset: 0xfd8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_7d590533364efa87;
        // offset: 0xfe0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_252e760b41f3d94a;
        // offset: 0xfe8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartkillstreakdelay;
        // offset: 0xff0, bitSize: 0x8(0x1 Byte(s))
        uint:5 totalkillsmax;
        // offset: 0xff8, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundswitch;
        // offset: 0x1000, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerobjectiveheldrespawndelay;
        // offset: 0x1008, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpenalty;
        // offset: 0x1010, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_18bdaa4b00863e9d;
        // offset: 0x1018, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_12ef93fbb06b1e2c;
        // offset: 0x1030, bitSize: 0x8(0x1 Byte(s))
        uint:5 weaponcount;
        // offset: 0x1038, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1706d4b546538286;
        // offset: 0x1050, bitSize: 0x8(0x1 Byte(s))
        uint:7 weapontimer;
        // offset: 0x1058, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> overtimetimelimit;
        // offset: 0x1068, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_96215e6d55c4b2b;
        // offset: 0x1078, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_6cd27d9716989cf5;
        // offset: 0x1088, bitSize: 0x8(0x1 Byte(s))
        uint:7 cleandepositonlinetime;
        // offset: 0x1090, bitSize: 0x8(0x1 Byte(s))
        fixed<7,3> hash_4c7c8c4bd1b2a58b;
        // offset: 0x1098, bitSize: 0x8(0x1 Byte(s))
        uint:7 drafttime;
        // offset: 0x10a0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_ed89addfaaafe48;
        // offset: 0x10a8, bitSize: 0x8(0x1 Byte(s))
        uint:7 objectivespawntime;
        // offset: 0x10b0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostreconplane;
        // offset: 0x10b8, bitSize: 0x8(0x1 Byte(s))
        uint:2 killcammode;
        // offset: 0x10c0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> killcamtime;
        // offset: 0x10d0, bitSize: 0x8(0x1 Byte(s))
        uint:4 throwscore;
        // offset: 0x10d8, bitSize: 0x8(0x1 Byte(s))
        uint:4 deposittime;
        // offset: 0x10e0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extratime;
        // offset: 0x10f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_54d908d6273c8893;
        // offset: 0x1100, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6269eb986d22cd37;
        // offset: 0x1108, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreequipmentpowertimefactor;
        // offset: 0x1110, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostarmor;
        // offset: 0x1118, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_36ea712d503b054c;
        // offset: 0x1130, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamcount;
        // offset: 0x1138, bitSize: 0x20(0x4 Byte(s))
        int hash_7f38d88521da4c79;
        // offset: 0x1158, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_24c718cc0c526c38;
        // offset: 0x1160, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundlimit;
        // offset: 0x1168, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_531cc9c63ae86a93;
        // offset: 0x1178, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostartillery;
        // offset: 0x1180, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_b30022a9302a5a6;
        // offset: 0x1190, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_25d72112144c5ea0;
        // offset: 0x11a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_39cfd81268504039;
        // offset: 0x11b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_208071125a2b0b0b;
        // offset: 0x11c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_52ef5b12764c8139;
        // offset: 0x11d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4bf2241272d06bec;
        // offset: 0x11e0, bitSize: 0x8(0x1 Byte(s))
        uint:2 charactercustomization;
        // offset: 0x11e8, bitSize: 0x20(0x4 Byte(s))
        int hash_af4ad3316f0ded6;
        // offset: 0x1208, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_437a986f8d24d7eb;
        // offset: 0x1210, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_16182516e10d0250;
        // offset: 0x1228, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_axis;
        // offset: 0x1230, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7344dfa399020a06;
        // offset: 0x1248, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6e2abf2cc40e03f1;
        // offset: 0x1250, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkilldenied;
        // offset: 0x1258, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> bombtimer;
        // offset: 0x1268, bitSize: 0x1
        bool delayplayer;
        // offset: 0x1269, bitSize: 0x1
        bool hash_196e997a082443a9;
        // offset: 0x126a, bitSize: 0x1
        bool voipdeadchatwithdead;
        // offset: 0x126b, bitSize: 0x1
        bool voipdeadchatwithteam;
        // offset: 0x126c, bitSize: 0x1
        bool hash_729930c3c52653c3;
        // offset: 0x126d, bitSize: 0x1
        bool useembleminsteadoffactionicon;
        // offset: 0x126e, bitSize: 0x1
        bool draftenabled;
        // offset: 0x126f, bitSize: 0x1
        bool hash_3a15393c2e90e121;
        // offset: 0x1270, bitSize: 0x1
        bool hash_1d708093c2664515;
        // offset: 0x1271, bitSize: 0x1
        bool overtimebestteam;
        // offset: 0x1272, bitSize: 0x1
        bool droppedtagrespawn;
        // offset: 0x1273, bitSize: 0x1
        bool hash_1e71b5ce1cd845b3;
        // offset: 0x1274, bitSize: 0x1
        bool hash_25aaa9a29a90534c;
        // offset: 0x1275, bitSize: 0x1
        bool voipkillershearvictim;
        // offset: 0x1276, bitSize: 0x1
        bool hash_7c0dcff6ffb1e348;
        // offset: 0x1277, bitSize: 0x1
        bool hash_4091f2d0019b1f4a;
        // offset: 0x1278, bitSize: 0x1
        bool deathcirclerespawn;
        // offset: 0x1279, bitSize: 0x1
        bool hash_2683a105198a7407;
        // offset: 0x127a, bitSize: 0x1
        bool presetclassesperteam;
        // offset: 0x127b, bitSize: 0x1
        bool hash_361f7fe066281093;
        // offset: 0x127c, bitSize: 0x1
        bool hash_232892d3b0a6240c;
        // offset: 0x127d, bitSize: 0x1
        bool bot_autofill_allies;
        // offset: 0x127e, bitSize: 0x1
        bool hash_2c55a3723cd9fdf9;
        // offset: 0x127f, bitSize: 0x1
        bool forcegibbing;
        // offset: 0x1280, bitSize: 0x1
        bool hash_5c57222bb95a06cb;
        // offset: 0x1281, bitSize: 0x1
        bool hardcoremode;
        // offset: 0x1282, bitSize: 0x1
        bool hash_135829cbab367329;
        // offset: 0x1283, bitSize: 0x1
        bool hash_495b64bd935bf7b;
        // offset: 0x1284, bitSize: 0x1
        bool useitemspawns;
        // offset: 0x1285, bitSize: 0x1
        bool hash_77b7734750cd75e9;
        // offset: 0x1286, bitSize: 0x1
        bool silentplant;
        // offset: 0x1287, bitSize: 0x1
        bool hash_5711f3e42924a635;
        // offset: 0x1288, bitSize: 0x1
        bool drafteveryround;
        // offset: 0x1289, bitSize: 0x1
        bool timepauseswheninzone;
        // offset: 0x128a, bitSize: 0x1
        bool hash_4b55d75b8d779e4;
        // offset: 0x128b, bitSize: 0x1
        bool hash_549abfbb3665d526;
        // offset: 0x128c, bitSize: 0x1
        bool scoreperplayer;
        // offset: 0x128d, bitSize: 0x1
        bool ekiaresetondeath;
        // offset: 0x128e, bitSize: 0x1
        bool kothmode;
        // offset: 0x128f, bitSize: 0x1
        bool hash_70c6890214831a58;
        // offset: 0x1290, bitSize: 0x1
        bool hash_62665aebde32c8ae;
        // offset: 0x1291, bitSize: 0x1
        bool hash_18c053cae82c1167;
        // offset: 0x1292, bitSize: 0x1
        bool hash_6cf5f53d1fbb1066;
        // offset: 0x1293, bitSize: 0x1
        bool hash_3d23923f9c9757cd;
        // offset: 0x1294, bitSize: 0x1
        bool decayprogress;
        // offset: 0x1295, bitSize: 0x1
        bool playerqueuedrespawn;
        // offset: 0x1296, bitSize: 0x1
        bool scorestreaksbarebones;
        // offset: 0x1297, bitSize: 0x1
        bool cumulativeroundscores;
        // offset: 0x1298, bitSize: 0x1
        bool hash_3ad2212223b76a72;
        // offset: 0x1299, bitSize: 0x1
        bool voipdeadhearkiller;
        // offset: 0x129a, bitSize: 0x1
        bool bot_autofill_team10;
        // offset: 0x129b, bitSize: 0x1
        bool hash_6e6991561babdd7e;
        // offset: 0x129c, bitSize: 0x1
        bool bot_autofill_axis;
        // offset: 0x129d, bitSize: 0x1
        bool skiplaststand;
        // offset: 0x129e, bitSize: 0x1
        bool hash_1f3825ba2a669400;
        // offset: 0x129f, bitSize: 0x1
        bool usespawngroups;
        // offset: 0x12a0, bitSize: 0x1
        bool hash_b76e50c1202aa23;
        // offset: 0x12a1, bitSize: 0x1
        bool disablethirdpersonspectating;
        // offset: 0x12a2, bitSize: 0x1
        bool platoonassignment;
        // offset: 0x12a3, bitSize: 0x1
        bool hash_7daf08db0c451ad1;
        // offset: 0x12a4, bitSize: 0x1
        bool allowlaststandforactiveclients;
        // offset: 0x12a5, bitSize: 0x1
        bool hash_5cc3c32813d17039;
        // offset: 0x12a6, bitSize: 0x1
        bool allowbattlechatter;
        // offset: 0x12a7, bitSize: 0x1
        bool fowrevealenabled;
        // offset: 0x12a8, bitSize: 0x1
        bool hash_4e8cafe9a4470898;
        // offset: 0x12a9, bitSize: 0x1
        bool hash_7647d0e9a45eeca6;
        // offset: 0x12aa, bitSize: 0x1
        bool hash_3cd7f961322b6b7;
        // offset: 0x12ab, bitSize: 0x1
        bool hash_3293bf384d3c1e2f;
        // offset: 0x12ac, bitSize: 0x1
        bool hash_5fcc23190f135afe;
        // offset: 0x12ad, bitSize: 0x1
        bool hash_35376812247cdc3;
        // offset: 0x12ae, bitSize: 0x1
        bool disablecontracts;
        // offset: 0x12af, bitSize: 0x1
        bool hash_2b1f40bc711c41f3;
        // offset: 0x12b0, bitSize: 0x1
        bool hash_75d44b1542e3edf9;
        // offset: 0x12b1, bitSize: 0x1
        bool hash_5462586bdce0346e;
        // offset: 0x12b2, bitSize: 0x1
        bool gameobjectscontestedmajoritywins;
        // offset: 0x12b3, bitSize: 0x1
        bool hash_2f0beae14bf17810;
        // offset: 0x12b4, bitSize: 0x1
        bool autoheal;
        // offset: 0x12b5, bitSize: 0x1
        bool allowannouncer;
        // offset: 0x12b6, bitSize: 0x1
        bool disallowaimslowdown;
        // offset: 0x12b7, bitSize: 0x1
        bool hash_435c853b64e3175e;
        // offset: 0x12b8, bitSize: 0x1
        bool hash_5538f8f7758641b4;
        // offset: 0x12b9, bitSize: 0x1
        bool bot_autofill_team3;
        // offset: 0x12ba, bitSize: 0x1
        bool bot_autofill_team4;
        // offset: 0x12bb, bitSize: 0x1
        bool bot_autofill_team5;
        // offset: 0x12bc, bitSize: 0x1
        bool bot_autofill_team6;
        // offset: 0x12bd, bitSize: 0x1
        bool bot_autofill_team7;
        // offset: 0x12be, bitSize: 0x1
        bool bot_autofill_team8;
        // offset: 0x12bf, bitSize: 0x1
        bool bot_autofill_team9;
        // offset: 0x12c0, bitSize: 0x1
        bool hash_35e6177743dac957;
        // offset: 0x12c1, bitSize: 0x1
        bool hash_14fd184091ff1af;
        // offset: 0x12c2, bitSize: 0x1
        bool vehiclesenabled;
        // offset: 0x12c3, bitSize: 0x1
        bool decaycapturedzones;
        // offset: 0x12c4, bitSize: 0x1
        bool neutralzone;
        // offset: 0x12c5, bitSize: 0x1
        bool boastallowcam;
        // offset: 0x12c6, bitSize: 0x1
        bool hash_7cc354dd83013a47;
        // offset: 0x12c7, bitSize: 0x1
        bool onlyheadshots;
        // offset: 0x12c8, bitSize: 0x1
        bool competitivesettings;
        // offset: 0x12c9, bitSize: 0x1
        bool flagcapturecondition;
        // offset: 0x12ca, bitSize: 0x1
        bool hash_1ca94a3bd057f19f;
        // offset: 0x12cb, bitSize: 0x1
        bool hash_1346ebfec214d724;
        // offset: 0x12cc, bitSize: 0x1
        bool hash_7b822d42a5d1643d;
        // offset: 0x12cd, bitSize: 0x1
        bool hash_4be46e952d54e9a2;
        // offset: 0x12ce, bitSize: 0x1
        bool hash_1ebf97988141c498;
        // offset: 0x12cf, bitSize: 0x1
        bool hash_25fa292c7fc561b8;
        // offset: 0x12d0, bitSize: 0x1
        bool flagcanbeneutralized;
        // offset: 0x12d1, bitSize: 0x1
        bool hash_241e17e13da23de2;
        // offset: 0x12d2, bitSize: 0x1
        bool hash_4057701fc646435d;
        // offset: 0x12d3, bitSize: 0x1
        bool hash_6881c7cab0dcef39;
        // offset: 0x12d4, bitSize: 0x1
        bool vehiclestimed;
        // offset: 0x12d5, bitSize: 0x1
        bool pregamedraftenabled;
        // offset: 0x12d6, bitSize: 0x1
        bool hash_6f03247bbcf52311;
        // offset: 0x12d7, bitSize: 0x1
        bool hash_6143c4e1e18f08fd;
        // offset: 0x12d8, bitSize: 0x1
        bool teamkillpointloss;
        // offset: 0x12d9, bitSize: 0x1
        bool hash_322026c0342869d1;
        // offset: 0x12da, bitSize: 0x1
        bool hash_1e346fbfe02f1294;
        // offset: 0x12db, bitSize: 0x1
        bool hash_3724e6bfee03ce6e;
        // offset: 0x12dc, bitSize: 0x1
        bool hash_497a2cbff8af4988;
        // offset: 0x12dd, bitSize: 0x1
        bool hash_50776bbffc2b6c6d;
        // offset: 0x12de, bitSize: 0x1
        bool hash_55fc1cb09246fe30;
        // offset: 0x12df, bitSize: 0x1
        bool hash_1d5943e61e65eeae;
        // offset: 0x12e0, bitSize: 0x1
        bool hash_656fd3c508d1d33e;
        // offset: 0x12e1, bitSize: 0x1
        bool hash_29f3630e8e542a0a;
        // offset: 0x12e2, bitSize: 0x1
        bool hash_c6a2e6c3e86125a;
        // offset: 0x12e3, bitSize: 0x1
        bool hash_2ebcaa6630ba8fd5;
        // offset: 0x12e4, bitSize: 0x1
        bool perksenabled;
        // offset: 0x12e5, bitSize: 0x1
        bool hash_33bc6781006ae83d;
        // offset: 0x12e6, bitSize: 0x1
        bool hash_655d904d5995891f;
        // offset: 0x12e7, bitSize: 0x1
        bool hash_6c21d8e8de53e9c3;
        // offset: 0x12e8, bitSize: 0x1
        bool hash_2966662989c3484c;
        // offset: 0x12e9, bitSize: 0x1
        bool allowmapscripting;
        // offset: 0x12ea, bitSize: 0x1
        bool robotshield;
        // offset: 0x12eb, bitSize: 0x1
        bool hash_62e3e33ec68db92f;
        // offset: 0x12ec, bitSize: 0x1
        bool hash_2a76bf462f4c2f50;
        // offset: 0x12ed, bitSize: 0x1
        bool disableattachments;
        // offset: 0x12ee, bitSize: 0x1
        bool disablecompass;
        // offset: 0x12ef, bitSize: 0x1
        bool disableweapondrop;
        // offset: 0x12f0, bitSize: 0x1
        bool escalationenabled;
        // offset: 0x12f1, bitSize: 0x1
        bool hash_a564dde6ee3c657;
        // offset: 0x12f2, bitSize: 0x1
        bool hash_7b8284382bffc197;
        // offset: 0x12f3, bitSize: 0x1
        bool hash_25368755636c91a4;
        // offset: 0x12f4, bitSize: 0x1
        bool disableclassselection;
        // offset: 0x12f5, bitSize: 0x1
        bool hash_290721f8deb6ef5e;
        // offset: 0x12f6, bitSize: 0x1
        bool hash_48670d9509071424;
        // offset: 0x12f7, bitSize: 0x1
        bool autoteambalance;
        // offset: 0x12f8, bitSize: 0x1
        bool hash_4bdd1bd86b610871;
        // offset: 0x12f9, bitSize: 0x1
        bool hash_69df7093cd32f107;
        // offset: 0x12fa, bitSize: 0x1
        bool hash_7c0acf14fb1f4080;
        // offset: 0x12fb, bitSize: 0x1
        bool allowplayofthematch;
        // offset: 0x12fc, bitSize: 0x1
        bool allowprone;
        // offset: 0x12fd, bitSize: 0x1
        bool scoreresetondeath;
        // offset: 0x12fe, bitSize: 0x1
        bool hash_452a45e599d3a575;
        // offset: 0x12ff, bitSize: 0x1
        bool playerforcerespawn;
        // offset: 0x1300, bitSize: 0x1
        bool hash_7098f146a35b8468;
        // offset: 0x1301, bitSize: 0x1
        bool multibomb;
        // offset: 0x1302, bitSize: 0x1
        bool hash_4dd37bf6da89131;
        // offset: 0x1303, bitSize: 0x1
        bool hash_29fd164e7ff1abb0;
        // offset: 0x1304, bitSize: 0x1
        bool hash_104f124f56f0f20a;
        // offset: 0x1305, bitSize: 0x1
        bool hash_2560dae45cc112e3;
        // offset: 0x1306, bitSize: 0x1
        bool hash_50a46f60312cf53c;
        // offset: 0x1307, bitSize: 0x1
        bool hash_23b110691971b537;
        // offset: 0x1308, bitSize: 0x1
        bool deathcircle;
        // offset: 0x1309, bitSize: 0x1
        bool hash_4669425278875e14;
        // offset: 0x130a, bitSize: 0x1
        bool boastenabled;
        // offset: 0x130b, bitSize: 0x1
        bool hash_5002b8a3b8882084;
        // offset: 0x130c, bitSize: 0x1
        bool hash_3513cf8b4287cdd7;
        // offset: 0x130d, bitSize: 0x1
        bool hash_72a2919d2ac65850;
        // offset: 0x130e, bitSize: 0x1
        bool hash_59272f59f19c342a;
        // offset: 0x130f, bitSize: 0x1
        bool hash_429521a79f75a327;
        // offset: 0x1310, bitSize: 0x1
        bool hash_69f74281cacb8a0f;
        // offset: 0x1311, bitSize: 0x1
        bool hash_5d65f5abcdad24fe;
        // offset: 0x1312, bitSize: 0x1
        bool deathpointloss;
        // offset: 0x1313, bitSize: 0x1
        bool disablecustomcac;
        // offset: 0x1314, bitSize: 0x1
        bool hash_1260b639348098e3;
        // offset: 0x1315, bitSize: 0x1
        bool rebootplayers;
        // offset: 0x1316, bitSize: 0x1
        bool oldschoolmode;
        // offset: 0x1317, bitSize: 0x1
        bool hash_4238acad9fa0f317;
        // offset: 0x1318, bitSize: 0x1
        bool allowfinalkillcam;
        // offset: 0x1319, bitSize: 0x1
        bool allowspectating;
        // offset: 0x131a, bitSize: 0x1
        bool usabledynents;
        // offset: 0x131b, bitSize: 0x1
        bool playintrocinematics;
        // offset: 0x131c, bitSize: 0x1
        bool hash_564289af24e283db;
        // offset: 0x131d, bitSize: 0x1
        bool hash_11e1a0adebdab01a;
        // offset: 0x131e, bitSize: 0x1
        bool hash_7379657f823bfef9;
        // offset: 0x131f, bitSize: 0x1
        bool hash_47df56af71e4df3;
        // offset: 0x1320, bitSize: 0x1
        bool hash_282689f7ec6d7d32;
        // offset: 0x1321, bitSize: 0x1
        bool hash_4ce6b119f5979182;
        // offset: 0x1322, bitSize: 0x1
        bool spawnselectenabled;
        // offset: 0x1323, bitSize: 0x1
        bool loadoutkillstreaksenabled;
        // offset: 0x1324, bitSize: 0x1
        bool pregameitemvoteenabled;
        // offset: 0x1325, bitSize: 0x1
        bool hash_38d6e4d91bbc82ee;
        // offset: 0x1326, bitSize: 0x1
        bool hash_2ffb09b25b95a125;
        // offset: 0x1327, bitSize: 0x1
        bool hash_5684ea266d45be15;
        // offset: 0x1328, bitSize: 0x1
        bool hash_7f273e367f26254;
        // offset: 0x1329, bitSize: 0x1
        bool hash_65c535aa5198d01d;
        // offset: 0x132a, bitSize: 0x1
        bool disallowprone;
        // offset: 0x132b, bitSize: 0x1
        bool hash_3cc3acd830a8eef;
        // offset: 0x132c, bitSize: 0x1
        bool moveplayers;
        // offset: 0x132d, bitSize: 0x1
        bool hash_6945105793e31c56;
        // offset: 0x132e, bitSize: 0x1
        bool disabletacinsert;
        // offset: 0x132f, bitSize: 0x1
        bool voipdeadhearallliving;
        // offset: 0x1330, bitSize: 0x1
        bool hash_4ca06c610b5d53bd;
        // offset: 0x1331, bitSize: 0x1
        bool killstreaksgivegamescore;
        // offset: 0x1332, bitSize: 0x1
        bool hash_1cc3f98086d6f5dd;
        // offset: 0x1333, bitSize: 0x1
        bool flagcapturerateincrease;
        // offset: 0x1334, bitSize: 0x1
        bool use_doors;
        // offset: 0x1335, bitSize: 0x1
        bool pvponly;
        // offset: 0x1336, bitSize: 0x1
        bool forwardspawnteamspecificspawns;
        // offset: 0x1337, bitSize: 0x1
        bool hash_50b56d2635cbb74b;
        // offset: 0x1338, bitSize: 0x1
        bool hash_68fd4f67ea4b4ff8;
        // offset: 0x1339, bitSize: 0x1
        bool forwardspawntakesdamage;
        // offset: 0x133a, bitSize: 0x1
        bool allowingameteamchange;
        // offset: 0x133b, bitSize: 0x1
        bool hash_297b69789a6283b4;
        // offset: 0x133c, bitSize: 0x1
        bool deathzones;
        // offset: 0x133d, bitSize: 0x1
        bool classicmode;
        // offset: 0x133e, bitSize: 0x1
        bool hash_12c8b36832284f70;
        // offset: 0x133f, bitSize: 0x1
        bool voipdeadhearteamliving;
        // offset: 0x1340, bitSize: 0x1
        bool hash_51f7292117d41790;
        // offset: 0x1341, bitSize: 0x1
        bool capdecay;
        // offset: 0x1342, bitSize: 0x1
        bool hash_7bcb76b8a52c35e;
        // offset: 0x1343, bitSize: 0x1
        bool hash_5c90286f1514c76;
        // offset: 0x1344, bitSize: 0x1
        bool hash_b87383d5497a826;
        // offset: 0x1345, bitSize: 0x1
        bool voipeveryonehearseveryone;
        // offset: 0x1346, bitSize: 0x1
        bool hash_460af55ecefb11f;
        // offset: 0x1347, bitSize: 0x1
        bool hash_4f4a73f236278ba8;
        // offset: 0x1348, bitSize: 0x1
        bool hash_5f76e2d55ad861ed;
        // offset: 0x1349, bitSize: 0x1
        bool hash_52a73dca4cbce600;
        // offset: 0x134a, bitSize: 0x1
        bool laststandfinishing;
        // offset: 0x134b, bitSize: 0x1
        bool hash_201c1769d32b30d3;
    };

    // root: bitSize: 0x1350, members: 1

    // offset: 0x0, bitSize: 0x1350(0x26a Byte(s))
    gametypesettings gametypesettings;
};

version hash_34ddec1dcdc27e4b {
    // enums ..... 0 (0x0)
    // structs ... 2 (0x2)
    // header bit size .. 5120 (0x1400)
    // header byte size . 640 (0x280)

    // bitSize: 0x1350, members: 580
    struct gametypesettings {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> timelimit;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_25740f686a5cfc7e;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        uint:4 playerkillsmax;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_129fca5e3a00477f;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_444634d99df7a661;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperdeath;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:2 forceradar;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkill;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playersprinttime;
        // offset: 0x58, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> capturetime;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleroundswon;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_9fe0e2b1a7f556;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayerdefensive;
        // offset: 0x88, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_35e9fc8eee6881e0;
        // offset: 0x90, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_613785a993624133;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandrevivehealth;
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierdestroytime;
        // offset: 0xc0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostattackhelicopter;
        // offset: 0xc8, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_6024ee628431415;
        // offset: 0xd8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostbow;
        // offset: 0xe0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostuav;
        // offset: 0xe8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperweaponkill;
        // offset: 0xf0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_722d8dafb62ce7fe;
        // offset: 0x108, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_4a10303376ed2d10;
        // offset: 0x110, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_68b825c95acb9218;
        // offset: 0x120, bitSize: 0x8(0x1 Byte(s))
        uint:6 maxteamplayers;
        // offset: 0x128, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandhealth;
        // offset: 0x130, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6b2754246df1bc7c;
        // offset: 0x140, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_46f0ae82f5c2f7d4;
        // offset: 0x150, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> maxusers;
        // offset: 0x160, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_1ca4d65346568642;
        // offset: 0x170, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_312848239629f5b9;
        // offset: 0x180, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1d77a77db928f695;
        // offset: 0x190, bitSize: 0x8(0x1 Byte(s))
        uint:4 draftrequiredclients;
        // offset: 0x198, bitSize: 0x8(0x1 Byte(s))
        uint:3 friendlyfiretype;
        // offset: 0x1a0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7fee0559953eec6;
        // offset: 0x1b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_28005bb885acabc3;
        // offset: 0x1c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4725de6afe873b87;
        // offset: 0x1d8, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_16184f2fd4014b39;
        // offset: 0x1e0, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspermeleekill;
        // offset: 0x1e8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_51f121252f1d8c7f;
        // offset: 0x1f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_32da91b78e54e7b5;
        // offset: 0x200, bitSize: 0x8(0x1 Byte(s))
        uint:6 preroundperiod;
        // offset: 0x208, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_56f6d77da3124af2;
        // offset: 0x218, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowertimefactor;
        // offset: 0x220, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_62a4fd40810cb61;
        // offset: 0x228, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_56a31bddd92a64dc;
        // offset: 0x230, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> laststandrevivetime;
        // offset: 0x238, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_429d353f0be087a5;
        // offset: 0x250, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpunishcount;
        // offset: 0x258, bitSize: 0x8(0x1 Byte(s))
        uint:7 maxplayers;
        // offset: 0x260, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53fd9a3e9a0e78e1;
        // offset: 0x270, bitSize: 0x20(0x4 Byte(s))
        int forwardspawnhealth;
        // offset: 0x290, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5598d36d6b224c9a;
        // offset: 0x2a0, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnteamkilledpenalty;
        // offset: 0x2a8, bitSize: 0x8(0x1 Byte(s))
        uint:3 ballcount;
        // offset: 0x2b0, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_6ae29c8144cb7659;
        // offset: 0x2b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c82ffb472a21cac;
        // offset: 0x2c8, bitSize: 0x8(0x1 Byte(s))
        uint:3 gunselection;
        // offset: 0x2d0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_53c1e74b2d385c17;
        // offset: 0x2e8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_17cc26f74ef911e0;
        // offset: 0x2f0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_67d54bbc52811921;
        // offset: 0x2f8, bitSize: 0x8(0x1 Byte(s))
        fixed<5,2> hash_1614b9cbe0df6f75;
        // offset: 0x300, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_35104d2d5fd22ce7;
        // offset: 0x318, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1441f7ad44e1cfd4;
        // offset: 0x320, bitSize: 0x8(0x1 Byte(s))
        uint:7 killstreakdeathpenaltyindividualearn;
        // offset: 0x328, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_c0beb1e5a80c25c;
        // offset: 0x330, bitSize: 0x8(0x1 Byte(s))
        uint:5 prematchrequirement;
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:3 spectatetype;
        // offset: 0x340, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> hash_57fe6337297bcce9;
        // offset: 0x348, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_1df445b9d1af641f;
        // offset: 0x350, bitSize: 0x8(0x1 Byte(s))
        uint:3 randomobjectivelocations;
        // offset: 0x358, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_55db4a8546a13c79;
        // offset: 0x370, bitSize: 0x8(0x1 Byte(s))
        uint:5 roundwinlimit;
        // offset: 0x378, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_ecf2124e9108fc4;
        // offset: 0x380, bitSize: 0x10(0x2 Byte(s))
        uint:10 antiboostdistance;
        // offset: 0x390, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_115a3410d9dbf98d;
        // offset: 0x3a0, bitSize: 0x10(0x2 Byte(s))
        uint:15 roundscorelimit;
        // offset: 0x3b0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_320a5028d10f305a;
        // offset: 0x3c8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> hash_154db5a1b2e9d757;
        // offset: 0x3d8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> bulletdamagescalar;
        // offset: 0x3e0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1df1e1139a1a4eb8;
        // offset: 0x3f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_79c708d50a12e336;
        // offset: 0x408, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_49d61407873849a2;
        // offset: 0x410, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostontimeamount;
        // offset: 0x418, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> defusetime;
        // offset: 0x420, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> teamkillreducedpenalty;
        // offset: 0x428, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxallocation;
        // offset: 0x430, bitSize: 0x8(0x1 Byte(s))
        uint:4 carryscore;
        // offset: 0x438, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c8636144ad47ac9;
        // offset: 0x448, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53cd45b387951ca1;
        // offset: 0x458, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_6e49ce7bbe6d3f1f;
        // offset: 0x460, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> killeventscoremultiplier;
        // offset: 0x468, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_2efff808b2701aa5;
        // offset: 0x478, bitSize: 0x8(0x1 Byte(s))
        uint:6 ticketslostontimeinterval;
        // offset: 0x480, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartexplosivedelay;
        // offset: 0x488, bitSize: 0x8(0x1 Byte(s))
        uint:2 cleandepositrotation;
        // offset: 0x490, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_21754b274494502e;
        // offset: 0x4a0, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_1311b008d2f6dbc1;
        // offset: 0x4b0, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_5f7c18fecb2a1a44;
        // offset: 0x4c0, bitSize: 0x8(0x1 Byte(s))
        uint:7 idleflagresettime;
        // offset: 0x4c8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowergainfactor;
        // offset: 0x4d0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1f65f0a6f0eb3110;
        // offset: 0x4e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2a02614601829003;
        // offset: 0x4f8, bitSize: 0x8(0x1 Byte(s))
        uint:4 setbacks;
        // offset: 0x500, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1db05f3e34ccaaaf;
        // offset: 0x510, bitSize: 0x20(0x4 Byte(s))
        int hash_6b808ab4016cb1e1;
        // offset: 0x530, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1efac5fcdfa4f;
        // offset: 0x540, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1eeac5fcdf89c;
        // offset: 0x550, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f1ac5fcdfdb5;
        // offset: 0x560, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f0ac5fcdfc02;
        // offset: 0x570, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1ebac5fcdf383;
        // offset: 0x580, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_20a83071685f7bd9;
        // offset: 0x598, bitSize: 0x10(0x2 Byte(s))
        fixed<12,4> trm_maxheight;
        // offset: 0x5a8, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_2b88c6ac064e9c59;
        // offset: 0x5b0, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayofthematchevents;
        // offset: 0x5b8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostwarmachine;
        // offset: 0x5c0, bitSize: 0x10(0x2 Byte(s))
        uint:15 scorelimit;
        // offset: 0x5d0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> cratecapturetime;
        // offset: 0x5d8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4a6ef8940f4cbb83;
        // offset: 0x5e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eeb8cb5c84b1939;
        // offset: 0x5f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eba3289161fd45f;
        // offset: 0x600, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_22c53ddb2cb67f13;
        // offset: 0x610, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_9c266bdf9cad7fa;
        // offset: 0x620, bitSize: 0x8(0x1 Byte(s))
        uint:3 killpointsinenemyprotectedzone;
        // offset: 0x628, bitSize: 0x10(0x2 Byte(s))
        uint:14 playersprintrecoverydelayoverridems;
        // offset: 0x638, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6e2b8452b08a545c;
        // offset: 0x640, bitSize: 0x10(0x2 Byte(s))
        uint:10 playermaxhealth;
        // offset: 0x650, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1833c853bfe78ffc;
        // offset: 0x658, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_5e8818f69d557ad2;
        // offset: 0x670, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_3e13b420d6773b4c;
        // offset: 0x678, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_718b497c5205e74b;
        // offset: 0x688, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostgunship;
        // offset: 0x690, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_42b840c668fd2c85;
        // offset: 0x6a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_44f0b1c6b2d3b6f8;
        // offset: 0x6b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5dc620c6c0919d82;
        // offset: 0x6c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2aea36c6a4135574;
        // offset: 0x6d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_32c16dc6a8490e81;
        // offset: 0x6e0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_66a7d866327081eb;
        // offset: 0x6e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5f116b8cfbdbc3fe;
        // offset: 0x6f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsforsurvivalbonus;
        // offset: 0x700, bitSize: 0x190(0x32 Byte(s)), array:0x32(hti:0xffff)
        uint:5 maxuniquerolesperteam[50];
        // offset: 0x890, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_7adb62a64c6d963;
        // offset: 0x898, bitSize: 0x8(0x1 Byte(s))
        uint:3 objectivepingtime;
        // offset: 0x8a0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_271177b8b4cfcf15;
        // offset: 0x8b8, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamkillspawndelay;
        // offset: 0x8c0, bitSize: 0x8(0x1 Byte(s))
        uint:8 carrierarmor;
        // offset: 0x8c8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_51a2ab391c340e03;
        // offset: 0x8e0, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostondeath;
        // offset: 0x8e8, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_47d4aa0161d78e15;
        // offset: 0x8f0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostremotemissile;
        // offset: 0x8f8, bitSize: 0x10(0x2 Byte(s))
        uint:9 carriermovespeed;
        // offset: 0x908, bitSize: 0x8(0x1 Byte(s))
        uint:5 boottime;
        // offset: 0x910, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_652bc8c2577ec788;
        // offset: 0x920, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_72852fc1d977c3a0;
        // offset: 0x930, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_314c2f7312bde4af;
        // offset: 0x938, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_5d5f4ee35c9977c7;
        // offset: 0x940, bitSize: 0x8(0x1 Byte(s))
        uint:3 roundstartfriendlyfiretype;
        // offset: 0x948, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagdecaytime;
        // offset: 0x950, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_76f686986e1a58b;
        // offset: 0x960, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_vs_bots;
        // offset: 0x968, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_26b08269156ca0e5;
        // offset: 0x970, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamnumlives;
        // offset: 0x978, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> planttime;
        // offset: 0x980, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6141cddd96ac214e;
        // offset: 0x988, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnprotectiontime;
        // offset: 0x990, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7353bbc24d72ec59;
        // offset: 0x9a0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_573034b3252cb4e3;
        // offset: 0x9b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 inactivitykick;
        // offset: 0x9c8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspersecondarykill;
        // offset: 0x9d0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team3;
        // offset: 0x9d8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team4;
        // offset: 0x9e0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team5;
        // offset: 0x9e8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team6;
        // offset: 0x9f0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team7;
        // offset: 0x9f8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team8;
        // offset: 0xa00, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team9;
        // offset: 0xa08, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerhealthregentime;
        // offset: 0xa10, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5d40d1f9fb7f;
        // offset: 0xa20, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5c40d1f9f9cc;
        // offset: 0xa30, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5f40d1f9fee5;
        // offset: 0xa40, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5e40d1f9fd32;
        // offset: 0xa50, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5940d1f9f4b3;
        // offset: 0xa60, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4f00f3f568c284af;
        // offset: 0xa70, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7f190c8839d3f05c;
        // offset: 0xa80, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_3a4691a853585241;
        // offset: 0xa88, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> destroytime;
        // offset: 0xa98, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagrespawntime;
        // offset: 0xaa0, bitSize: 0x8(0x1 Byte(s))
        uint:2 shutdowndamage;
        // offset: 0xaa8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> gameadvertisementruletimeleft;
        // offset: 0xab0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_6a48bbfb703d5c9c;
        // offset: 0xab8, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_239b391c77ebf8c1;
        // offset: 0xac0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7c33e5bebaf05afb;
        // offset: 0xad0, bitSize: 0x10(0x2 Byte(s))
        uint:11 objectivehealth;
        // offset: 0xae0, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnsuicidepenalty;
        // offset: 0xae8, bitSize: 0x8(0x1 Byte(s))
        uint:2 robotspeed;
        // offset: 0xaf0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_467be34402dad274;
        // offset: 0xaf8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_68e3f54e05f57d85;
        // offset: 0xb00, bitSize: 0x8(0x1 Byte(s))
        uint:7 servermsec;
        // offset: 0xb08, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_410c5c7c1e60b534;
        // offset: 0xb10, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_212cc2b5b360189c;
        // offset: 0xb18, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostminigun;
        // offset: 0xb20, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_55a92a1d652b5edc;
        // offset: 0xb28, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_552338718ec6d2df;
        // offset: 0xb30, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1c0040943c216593;
        // offset: 0xb38, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxplayereventsperminute;
        // offset: 0xb48, bitSize: 0x10(0x2 Byte(s))
        uint:10 leaderbonus;
        // offset: 0xb58, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_5c918cbf75e16116;
        // offset: 0xb60, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_51e989796c38cd87;
        // offset: 0xb68, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostnapalm;
        // offset: 0xb70, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_119bd2704c238e5;
        // offset: 0xb88, bitSize: 0x8(0x1 Byte(s))
        uint:2 enemycarriervisible;
        // offset: 0xb90, bitSize: 0x10(0x2 Byte(s))
        uint:9 autodestroytime;
        // offset: 0xba0, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkillconfirmed;
        // offset: 0xba8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4e4352bd1aaeedfe;
        // offset: 0xbb0, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_507e1eb7f297d872;
        // offset: 0xbc0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_342835495fca42bb;
        // offset: 0xbd0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7cada6c0936f259b;
        // offset: 0xbe0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> waverespawndelay;
        // offset: 0xbe8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1974892bc7266bab;
        // offset: 0xbf8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_567db38226658dbf;
        // offset: 0xc00, bitSize: 0x8(0x1 Byte(s))
        uint:6 prematchperiod;
        // offset: 0xc08, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostsentry;
        // offset: 0xc10, bitSize: 0x8(0x1 Byte(s))
        uint:6 teamkillscore;
        // offset: 0xc18, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_102aeddad113f70c;
        // offset: 0xc20, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_4635a26c94b56725;
        // offset: 0xc28, bitSize: 0x8(0x1 Byte(s))
        uint:3 platooncount;
        // offset: 0xc30, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierhealth;
        // offset: 0xc50, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_71da377e373bc755;
        // offset: 0xc68, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_38a8f601ab8388d0;
        // offset: 0xc78, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarykill;
        // offset: 0xc80, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperheadshot;
        // offset: 0xc88, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_75ff4383212c5111;
        // offset: 0xc98, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1908ad844e6c3e37;
        // offset: 0xca0, bitSize: 0x8(0x1 Byte(s))
        uint:4 pregameitemmaxvotes;
        // offset: 0xca8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_50029ecff5e7d383;
        // offset: 0xcb8, bitSize: 0x8(0x1 Byte(s))
        uint:7 playernumlives;
        // offset: 0xcc0, bitSize: 0x8(0x1 Byte(s))
        uint:2 infectionmode;
        // offset: 0xcc8, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleround;
        // offset: 0xcd0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7d53c8bab3db8122;
        // offset: 0xce0, bitSize: 0x8(0x1 Byte(s))
        fixed<7,1> incrementalspawndelay;
        // offset: 0xce8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_allies;
        // offset: 0xcf0, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxsuicidesbeforekick;
        // offset: 0xcf8, bitSize: 0x8(0x1 Byte(s))
        uint:7 gameadvertisementrulescorepercent;
        // offset: 0xd00, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_3e76ce42036815cc;
        // offset: 0xd10, bitSize: 0x10(0x2 Byte(s))
        int:10 hash_3ccd8e1bf3864fa1;
        // offset: 0xd20, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_130d127406ab976e;
        // offset: 0xd30, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostairpatrol;
        // offset: 0xd38, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcoststraferun;
        // offset: 0xd40, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostcuav;
        // offset: 0xd48, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostrcxd;
        // offset: 0xd50, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostvtol;
        // offset: 0xd58, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_40c4b447a58a7da4;
        // offset: 0xd68, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> hash_47e9736d437be7c8;
        // offset: 0xd70, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3e1bb1840c4ab667;
        // offset: 0xd80, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1ea82b1edff2a13b;
        // offset: 0xd90, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c31c3f19402e1f;
        // offset: 0xda0, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandtimer;
        // offset: 0xda8, bitSize: 0x8(0x1 Byte(s))
        uint:6 reboottime;
        // offset: 0xdb0, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscorepercleandeposit;
        // offset: 0xdb8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extrasegmenttime;
        // offset: 0xdc8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_2081d79c44b2cefb;
        // offset: 0xde0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6773166f56896564;
        // offset: 0xdf0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1725e90b73841702;
        // offset: 0xe00, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_273d049136c76afa;
        // offset: 0xe10, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_2849b6cf7317ab1b;
        // offset: 0xe18, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5a4fde688cbf1a01;
        // offset: 0xe28, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c72ac3d026ca4eb;
        // offset: 0xe38, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_83f11b8abac148f;
        // offset: 0xe40, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_22fa97d05461a3e8;
        // offset: 0xe58, bitSize: 0x8(0x1 Byte(s))
        uint:4 pickuptime;
        // offset: 0xe60, bitSize: 0x10(0x2 Byte(s))
        fixed<14,7> hash_451245a24412d90f;
        // offset: 0xe70, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3d5a87878a3bef28;
        // offset: 0xe80, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_552467c143123c1c;
        // offset: 0xe88, bitSize: 0x20(0x4 Byte(s))
        int hash_64727525f5957d06;
        // offset: 0xea8, bitSize: 0x20(0x4 Byte(s))
        int hash_1f3285ddee84620c;
        // offset: 0xec8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_2596f9e3d6e26ac9;
        // offset: 0xed0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostchoppergunner;
        // offset: 0xed8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_3767386c050fa0eb;
        // offset: 0xee0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerrespawndelay;
        // offset: 0xee8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_34ee1a1a574eaa4c;
        // offset: 0xef8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> spawntraptriggertime;
        // offset: 0xf00, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_26ff1d48be83e46c;
        // offset: 0xf18, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayeroffensive;
        // offset: 0xf20, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_527f80b77f20b8c8;
        // offset: 0xf30, bitSize: 0x8(0x1 Byte(s))
        uint:2 allowhitmarkers;
        // offset: 0xf38, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_d8215d30d36fa59;
        // offset: 0xf50, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_67ee1d8d7938baa1;
        // offset: 0xf60, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2c02a63d2c336b30;
        // offset: 0xf70, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxobjectiveeventsperminute;
        // offset: 0xf80, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_47dd11084763c671;
        // offset: 0xf90, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4201d2890785fb14;
        // offset: 0xfa0, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarygrenadekill;
        // offset: 0xfa8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team10;
        // offset: 0xfb0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostcarepackage;
        // offset: 0xfb8, bitSize: 0x8(0x1 Byte(s))
        uint:7 bonuslivesforcapturingzone;
        // offset: 0xfc0, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_39d008c4c2044bc7;
        // offset: 0xfd0, bitSize: 0x8(0x1 Byte(s))
        uint:7 startplayers;
        // offset: 0xfd8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_7d590533364efa87;
        // offset: 0xfe0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_252e760b41f3d94a;
        // offset: 0xfe8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartkillstreakdelay;
        // offset: 0xff0, bitSize: 0x8(0x1 Byte(s))
        uint:5 totalkillsmax;
        // offset: 0xff8, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundswitch;
        // offset: 0x1000, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerobjectiveheldrespawndelay;
        // offset: 0x1008, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpenalty;
        // offset: 0x1010, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_18bdaa4b00863e9d;
        // offset: 0x1018, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_12ef93fbb06b1e2c;
        // offset: 0x1030, bitSize: 0x8(0x1 Byte(s))
        uint:5 weaponcount;
        // offset: 0x1038, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1706d4b546538286;
        // offset: 0x1050, bitSize: 0x8(0x1 Byte(s))
        uint:7 weapontimer;
        // offset: 0x1058, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> overtimetimelimit;
        // offset: 0x1068, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_96215e6d55c4b2b;
        // offset: 0x1078, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_6cd27d9716989cf5;
        // offset: 0x1088, bitSize: 0x8(0x1 Byte(s))
        uint:7 cleandepositonlinetime;
        // offset: 0x1090, bitSize: 0x8(0x1 Byte(s))
        fixed<7,3> hash_4c7c8c4bd1b2a58b;
        // offset: 0x1098, bitSize: 0x8(0x1 Byte(s))
        uint:7 drafttime;
        // offset: 0x10a0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_ed89addfaaafe48;
        // offset: 0x10a8, bitSize: 0x8(0x1 Byte(s))
        uint:7 objectivespawntime;
        // offset: 0x10b0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostreconplane;
        // offset: 0x10b8, bitSize: 0x8(0x1 Byte(s))
        uint:2 killcammode;
        // offset: 0x10c0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> killcamtime;
        // offset: 0x10d0, bitSize: 0x8(0x1 Byte(s))
        uint:4 throwscore;
        // offset: 0x10d8, bitSize: 0x8(0x1 Byte(s))
        uint:4 deposittime;
        // offset: 0x10e0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extratime;
        // offset: 0x10f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_54d908d6273c8893;
        // offset: 0x1100, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6269eb986d22cd37;
        // offset: 0x1108, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreequipmentpowertimefactor;
        // offset: 0x1110, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostarmor;
        // offset: 0x1118, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_36ea712d503b054c;
        // offset: 0x1130, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamcount;
        // offset: 0x1138, bitSize: 0x20(0x4 Byte(s))
        int hash_7f38d88521da4c79;
        // offset: 0x1158, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_24c718cc0c526c38;
        // offset: 0x1160, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundlimit;
        // offset: 0x1168, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_531cc9c63ae86a93;
        // offset: 0x1178, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostartillery;
        // offset: 0x1180, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_b30022a9302a5a6;
        // offset: 0x1190, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_25d72112144c5ea0;
        // offset: 0x11a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_39cfd81268504039;
        // offset: 0x11b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_208071125a2b0b0b;
        // offset: 0x11c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_52ef5b12764c8139;
        // offset: 0x11d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4bf2241272d06bec;
        // offset: 0x11e0, bitSize: 0x8(0x1 Byte(s))
        uint:2 charactercustomization;
        // offset: 0x11e8, bitSize: 0x20(0x4 Byte(s))
        int hash_af4ad3316f0ded6;
        // offset: 0x1208, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_437a986f8d24d7eb;
        // offset: 0x1210, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_16182516e10d0250;
        // offset: 0x1228, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_axis;
        // offset: 0x1230, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7344dfa399020a06;
        // offset: 0x1248, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6e2abf2cc40e03f1;
        // offset: 0x1250, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkilldenied;
        // offset: 0x1258, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> bombtimer;
        // offset: 0x1268, bitSize: 0x1
        bool delayplayer;
        // offset: 0x1269, bitSize: 0x1
        bool hash_196e997a082443a9;
        // offset: 0x126a, bitSize: 0x1
        bool voipdeadchatwithdead;
        // offset: 0x126b, bitSize: 0x1
        bool voipdeadchatwithteam;
        // offset: 0x126c, bitSize: 0x1
        bool hash_729930c3c52653c3;
        // offset: 0x126d, bitSize: 0x1
        bool useembleminsteadoffactionicon;
        // offset: 0x126e, bitSize: 0x1
        bool draftenabled;
        // offset: 0x126f, bitSize: 0x1
        bool hash_85fbdce1f1a0290;
        // offset: 0x1270, bitSize: 0x1
        bool hash_3a15393c2e90e121;
        // offset: 0x1271, bitSize: 0x1
        bool hash_1d708093c2664515;
        // offset: 0x1272, bitSize: 0x1
        bool overtimebestteam;
        // offset: 0x1273, bitSize: 0x1
        bool droppedtagrespawn;
        // offset: 0x1274, bitSize: 0x1
        bool hash_1e71b5ce1cd845b3;
        // offset: 0x1275, bitSize: 0x1
        bool hash_25aaa9a29a90534c;
        // offset: 0x1276, bitSize: 0x1
        bool voipkillershearvictim;
        // offset: 0x1277, bitSize: 0x1
        bool hash_7c0dcff6ffb1e348;
        // offset: 0x1278, bitSize: 0x1
        bool hash_4091f2d0019b1f4a;
        // offset: 0x1279, bitSize: 0x1
        bool deathcirclerespawn;
        // offset: 0x127a, bitSize: 0x1
        bool hash_2683a105198a7407;
        // offset: 0x127b, bitSize: 0x1
        bool presetclassesperteam;
        // offset: 0x127c, bitSize: 0x1
        bool hash_361f7fe066281093;
        // offset: 0x127d, bitSize: 0x1
        bool hash_232892d3b0a6240c;
        // offset: 0x127e, bitSize: 0x1
        bool bot_autofill_allies;
        // offset: 0x127f, bitSize: 0x1
        bool hash_2c55a3723cd9fdf9;
        // offset: 0x1280, bitSize: 0x1
        bool forcegibbing;
        // offset: 0x1281, bitSize: 0x1
        bool hash_5c57222bb95a06cb;
        // offset: 0x1282, bitSize: 0x1
        bool hardcoremode;
        // offset: 0x1283, bitSize: 0x1
        bool hash_135829cbab367329;
        // offset: 0x1284, bitSize: 0x1
        bool hash_495b64bd935bf7b;
        // offset: 0x1285, bitSize: 0x1
        bool useitemspawns;
        // offset: 0x1286, bitSize: 0x1
        bool hash_77b7734750cd75e9;
        // offset: 0x1287, bitSize: 0x1
        bool silentplant;
        // offset: 0x1288, bitSize: 0x1
        bool hash_5711f3e42924a635;
        // offset: 0x1289, bitSize: 0x1
        bool drafteveryround;
        // offset: 0x128a, bitSize: 0x1
        bool timepauseswheninzone;
        // offset: 0x128b, bitSize: 0x1
        bool hash_4b55d75b8d779e4;
        // offset: 0x128c, bitSize: 0x1
        bool hash_549abfbb3665d526;
        // offset: 0x128d, bitSize: 0x1
        bool scoreperplayer;
        // offset: 0x128e, bitSize: 0x1
        bool ekiaresetondeath;
        // offset: 0x128f, bitSize: 0x1
        bool kothmode;
        // offset: 0x1290, bitSize: 0x1
        bool hash_70c6890214831a58;
        // offset: 0x1291, bitSize: 0x1
        bool hash_62665aebde32c8ae;
        // offset: 0x1292, bitSize: 0x1
        bool hash_18c053cae82c1167;
        // offset: 0x1293, bitSize: 0x1
        bool hash_6cf5f53d1fbb1066;
        // offset: 0x1294, bitSize: 0x1
        bool hash_3d23923f9c9757cd;
        // offset: 0x1295, bitSize: 0x1
        bool decayprogress;
        // offset: 0x1296, bitSize: 0x1
        bool playerqueuedrespawn;
        // offset: 0x1297, bitSize: 0x1
        bool scorestreaksbarebones;
        // offset: 0x1298, bitSize: 0x1
        bool cumulativeroundscores;
        // offset: 0x1299, bitSize: 0x1
        bool hash_3ad2212223b76a72;
        // offset: 0x129a, bitSize: 0x1
        bool voipdeadhearkiller;
        // offset: 0x129b, bitSize: 0x1
        bool bot_autofill_team10;
        // offset: 0x129c, bitSize: 0x1
        bool hash_6e6991561babdd7e;
        // offset: 0x129d, bitSize: 0x1
        bool bot_autofill_axis;
        // offset: 0x129e, bitSize: 0x1
        bool skiplaststand;
        // offset: 0x129f, bitSize: 0x1
        bool hash_1f3825ba2a669400;
        // offset: 0x12a0, bitSize: 0x1
        bool usespawngroups;
        // offset: 0x12a1, bitSize: 0x1
        bool hash_b76e50c1202aa23;
        // offset: 0x12a2, bitSize: 0x1
        bool disablethirdpersonspectating;
        // offset: 0x12a3, bitSize: 0x1
        bool platoonassignment;
        // offset: 0x12a4, bitSize: 0x1
        bool hash_7daf08db0c451ad1;
        // offset: 0x12a5, bitSize: 0x1
        bool allowlaststandforactiveclients;
        // offset: 0x12a6, bitSize: 0x1
        bool hash_5cc3c32813d17039;
        // offset: 0x12a7, bitSize: 0x1
        bool allowbattlechatter;
        // offset: 0x12a8, bitSize: 0x1
        bool fowrevealenabled;
        // offset: 0x12a9, bitSize: 0x1
        bool hash_4e8cafe9a4470898;
        // offset: 0x12aa, bitSize: 0x1
        bool hash_7647d0e9a45eeca6;
        // offset: 0x12ab, bitSize: 0x1
        bool hash_3cd7f961322b6b7;
        // offset: 0x12ac, bitSize: 0x1
        bool hash_3293bf384d3c1e2f;
        // offset: 0x12ad, bitSize: 0x1
        bool hash_5fcc23190f135afe;
        // offset: 0x12ae, bitSize: 0x1
        bool hash_35376812247cdc3;
        // offset: 0x12af, bitSize: 0x1
        bool disablecontracts;
        // offset: 0x12b0, bitSize: 0x1
        bool hash_2b1f40bc711c41f3;
        // offset: 0x12b1, bitSize: 0x1
        bool hash_75d44b1542e3edf9;
        // offset: 0x12b2, bitSize: 0x1
        bool hash_5462586bdce0346e;
        // offset: 0x12b3, bitSize: 0x1
        bool gameobjectscontestedmajoritywins;
        // offset: 0x12b4, bitSize: 0x1
        bool hash_2f0beae14bf17810;
        // offset: 0x12b5, bitSize: 0x1
        bool autoheal;
        // offset: 0x12b6, bitSize: 0x1
        bool allowannouncer;
        // offset: 0x12b7, bitSize: 0x1
        bool disallowaimslowdown;
        // offset: 0x12b8, bitSize: 0x1
        bool hash_435c853b64e3175e;
        // offset: 0x12b9, bitSize: 0x1
        bool hash_5538f8f7758641b4;
        // offset: 0x12ba, bitSize: 0x1
        bool bot_autofill_team3;
        // offset: 0x12bb, bitSize: 0x1
        bool bot_autofill_team4;
        // offset: 0x12bc, bitSize: 0x1
        bool bot_autofill_team5;
        // offset: 0x12bd, bitSize: 0x1
        bool bot_autofill_team6;
        // offset: 0x12be, bitSize: 0x1
        bool bot_autofill_team7;
        // offset: 0x12bf, bitSize: 0x1
        bool bot_autofill_team8;
        // offset: 0x12c0, bitSize: 0x1
        bool bot_autofill_team9;
        // offset: 0x12c1, bitSize: 0x1
        bool hash_35e6177743dac957;
        // offset: 0x12c2, bitSize: 0x1
        bool hash_14fd184091ff1af;
        // offset: 0x12c3, bitSize: 0x1
        bool vehiclesenabled;
        // offset: 0x12c4, bitSize: 0x1
        bool decaycapturedzones;
        // offset: 0x12c5, bitSize: 0x1
        bool neutralzone;
        // offset: 0x12c6, bitSize: 0x1
        bool boastallowcam;
        // offset: 0x12c7, bitSize: 0x1
        bool hash_7cc354dd83013a47;
        // offset: 0x12c8, bitSize: 0x1
        bool onlyheadshots;
        // offset: 0x12c9, bitSize: 0x1
        bool competitivesettings;
        // offset: 0x12ca, bitSize: 0x1
        bool flagcapturecondition;
        // offset: 0x12cb, bitSize: 0x1
        bool hash_1ca94a3bd057f19f;
        // offset: 0x12cc, bitSize: 0x1
        bool hash_1346ebfec214d724;
        // offset: 0x12cd, bitSize: 0x1
        bool hash_7b822d42a5d1643d;
        // offset: 0x12ce, bitSize: 0x1
        bool hash_4be46e952d54e9a2;
        // offset: 0x12cf, bitSize: 0x1
        bool hash_1ebf97988141c498;
        // offset: 0x12d0, bitSize: 0x1
        bool hash_25fa292c7fc561b8;
        // offset: 0x12d1, bitSize: 0x1
        bool flagcanbeneutralized;
        // offset: 0x12d2, bitSize: 0x1
        bool hash_241e17e13da23de2;
        // offset: 0x12d3, bitSize: 0x1
        bool hash_4057701fc646435d;
        // offset: 0x12d4, bitSize: 0x1
        bool hash_6881c7cab0dcef39;
        // offset: 0x12d5, bitSize: 0x1
        bool vehiclestimed;
        // offset: 0x12d6, bitSize: 0x1
        bool pregamedraftenabled;
        // offset: 0x12d7, bitSize: 0x1
        bool hash_6f03247bbcf52311;
        // offset: 0x12d8, bitSize: 0x1
        bool hash_6143c4e1e18f08fd;
        // offset: 0x12d9, bitSize: 0x1
        bool teamkillpointloss;
        // offset: 0x12da, bitSize: 0x1
        bool hash_322026c0342869d1;
        // offset: 0x12db, bitSize: 0x1
        bool hash_1e346fbfe02f1294;
        // offset: 0x12dc, bitSize: 0x1
        bool hash_3724e6bfee03ce6e;
        // offset: 0x12dd, bitSize: 0x1
        bool hash_497a2cbff8af4988;
        // offset: 0x12de, bitSize: 0x1
        bool hash_50776bbffc2b6c6d;
        // offset: 0x12df, bitSize: 0x1
        bool hash_55fc1cb09246fe30;
        // offset: 0x12e0, bitSize: 0x1
        bool hash_1d5943e61e65eeae;
        // offset: 0x12e1, bitSize: 0x1
        bool hash_656fd3c508d1d33e;
        // offset: 0x12e2, bitSize: 0x1
        bool hash_29f3630e8e542a0a;
        // offset: 0x12e3, bitSize: 0x1
        bool hash_c6a2e6c3e86125a;
        // offset: 0x12e4, bitSize: 0x1
        bool hash_2ebcaa6630ba8fd5;
        // offset: 0x12e5, bitSize: 0x1
        bool perksenabled;
        // offset: 0x12e6, bitSize: 0x1
        bool hash_33bc6781006ae83d;
        // offset: 0x12e7, bitSize: 0x1
        bool hash_655d904d5995891f;
        // offset: 0x12e8, bitSize: 0x1
        bool hash_6c21d8e8de53e9c3;
        // offset: 0x12e9, bitSize: 0x1
        bool hash_2966662989c3484c;
        // offset: 0x12ea, bitSize: 0x1
        bool allowmapscripting;
        // offset: 0x12eb, bitSize: 0x1
        bool robotshield;
        // offset: 0x12ec, bitSize: 0x1
        bool hash_62e3e33ec68db92f;
        // offset: 0x12ed, bitSize: 0x1
        bool hash_2a76bf462f4c2f50;
        // offset: 0x12ee, bitSize: 0x1
        bool disableattachments;
        // offset: 0x12ef, bitSize: 0x1
        bool disablecompass;
        // offset: 0x12f0, bitSize: 0x1
        bool disableweapondrop;
        // offset: 0x12f1, bitSize: 0x1
        bool escalationenabled;
        // offset: 0x12f2, bitSize: 0x1
        bool hash_a564dde6ee3c657;
        // offset: 0x12f3, bitSize: 0x1
        bool hash_7b8284382bffc197;
        // offset: 0x12f4, bitSize: 0x1
        bool hash_25368755636c91a4;
        // offset: 0x12f5, bitSize: 0x1
        bool disableclassselection;
        // offset: 0x12f6, bitSize: 0x1
        bool hash_290721f8deb6ef5e;
        // offset: 0x12f7, bitSize: 0x1
        bool hash_48670d9509071424;
        // offset: 0x12f8, bitSize: 0x1
        bool autoteambalance;
        // offset: 0x12f9, bitSize: 0x1
        bool hash_4bdd1bd86b610871;
        // offset: 0x12fa, bitSize: 0x1
        bool hash_69df7093cd32f107;
        // offset: 0x12fb, bitSize: 0x1
        bool hash_7c0acf14fb1f4080;
        // offset: 0x12fc, bitSize: 0x1
        bool allowplayofthematch;
        // offset: 0x12fd, bitSize: 0x1
        bool allowprone;
        // offset: 0x12fe, bitSize: 0x1
        bool scoreresetondeath;
        // offset: 0x12ff, bitSize: 0x1
        bool hash_452a45e599d3a575;
        // offset: 0x1300, bitSize: 0x1
        bool playerforcerespawn;
        // offset: 0x1301, bitSize: 0x1
        bool hash_7098f146a35b8468;
        // offset: 0x1302, bitSize: 0x1
        bool multibomb;
        // offset: 0x1303, bitSize: 0x1
        bool hash_4dd37bf6da89131;
        // offset: 0x1304, bitSize: 0x1
        bool hash_29fd164e7ff1abb0;
        // offset: 0x1305, bitSize: 0x1
        bool hash_104f124f56f0f20a;
        // offset: 0x1306, bitSize: 0x1
        bool hash_2560dae45cc112e3;
        // offset: 0x1307, bitSize: 0x1
        bool hash_50a46f60312cf53c;
        // offset: 0x1308, bitSize: 0x1
        bool hash_23b110691971b537;
        // offset: 0x1309, bitSize: 0x1
        bool deathcircle;
        // offset: 0x130a, bitSize: 0x1
        bool hash_4669425278875e14;
        // offset: 0x130b, bitSize: 0x1
        bool boastenabled;
        // offset: 0x130c, bitSize: 0x1
        bool hash_5002b8a3b8882084;
        // offset: 0x130d, bitSize: 0x1
        bool hash_3513cf8b4287cdd7;
        // offset: 0x130e, bitSize: 0x1
        bool hash_72a2919d2ac65850;
        // offset: 0x130f, bitSize: 0x1
        bool hash_59272f59f19c342a;
        // offset: 0x1310, bitSize: 0x1
        bool hash_429521a79f75a327;
        // offset: 0x1311, bitSize: 0x1
        bool hash_69f74281cacb8a0f;
        // offset: 0x1312, bitSize: 0x1
        bool hash_5d65f5abcdad24fe;
        // offset: 0x1313, bitSize: 0x1
        bool deathpointloss;
        // offset: 0x1314, bitSize: 0x1
        bool disablecustomcac;
        // offset: 0x1315, bitSize: 0x1
        bool hash_1260b639348098e3;
        // offset: 0x1316, bitSize: 0x1
        bool rebootplayers;
        // offset: 0x1317, bitSize: 0x1
        bool oldschoolmode;
        // offset: 0x1318, bitSize: 0x1
        bool hash_4238acad9fa0f317;
        // offset: 0x1319, bitSize: 0x1
        bool allowfinalkillcam;
        // offset: 0x131a, bitSize: 0x1
        bool allowspectating;
        // offset: 0x131b, bitSize: 0x1
        bool usabledynents;
        // offset: 0x131c, bitSize: 0x1
        bool playintrocinematics;
        // offset: 0x131d, bitSize: 0x1
        bool hash_564289af24e283db;
        // offset: 0x131e, bitSize: 0x1
        bool hash_11e1a0adebdab01a;
        // offset: 0x131f, bitSize: 0x1
        bool hash_7379657f823bfef9;
        // offset: 0x1320, bitSize: 0x1
        bool hash_47df56af71e4df3;
        // offset: 0x1321, bitSize: 0x1
        bool hash_282689f7ec6d7d32;
        // offset: 0x1322, bitSize: 0x1
        bool hash_4ce6b119f5979182;
        // offset: 0x1323, bitSize: 0x1
        bool spawnselectenabled;
        // offset: 0x1324, bitSize: 0x1
        bool loadoutkillstreaksenabled;
        // offset: 0x1325, bitSize: 0x1
        bool pregameitemvoteenabled;
        // offset: 0x1326, bitSize: 0x1
        bool hash_38d6e4d91bbc82ee;
        // offset: 0x1327, bitSize: 0x1
        bool hash_2ffb09b25b95a125;
        // offset: 0x1328, bitSize: 0x1
        bool hash_5684ea266d45be15;
        // offset: 0x1329, bitSize: 0x1
        bool hash_7f273e367f26254;
        // offset: 0x132a, bitSize: 0x1
        bool hash_65c535aa5198d01d;
        // offset: 0x132b, bitSize: 0x1
        bool disallowprone;
        // offset: 0x132c, bitSize: 0x1
        bool hash_3cc3acd830a8eef;
        // offset: 0x132d, bitSize: 0x1
        bool moveplayers;
        // offset: 0x132e, bitSize: 0x1
        bool hash_6945105793e31c56;
        // offset: 0x132f, bitSize: 0x1
        bool disabletacinsert;
        // offset: 0x1330, bitSize: 0x1
        bool voipdeadhearallliving;
        // offset: 0x1331, bitSize: 0x1
        bool hash_4ca06c610b5d53bd;
        // offset: 0x1332, bitSize: 0x1
        bool killstreaksgivegamescore;
        // offset: 0x1333, bitSize: 0x1
        bool hash_1cc3f98086d6f5dd;
        // offset: 0x1334, bitSize: 0x1
        bool flagcapturerateincrease;
        // offset: 0x1335, bitSize: 0x1
        bool use_doors;
        // offset: 0x1336, bitSize: 0x1
        bool pvponly;
        // offset: 0x1337, bitSize: 0x1
        bool forwardspawnteamspecificspawns;
        // offset: 0x1338, bitSize: 0x1
        bool hash_50b56d2635cbb74b;
        // offset: 0x1339, bitSize: 0x1
        bool hash_68fd4f67ea4b4ff8;
        // offset: 0x133a, bitSize: 0x1
        bool forwardspawntakesdamage;
        // offset: 0x133b, bitSize: 0x1
        bool allowingameteamchange;
        // offset: 0x133c, bitSize: 0x1
        bool hash_297b69789a6283b4;
        // offset: 0x133d, bitSize: 0x1
        bool deathzones;
        // offset: 0x133e, bitSize: 0x1
        bool classicmode;
        // offset: 0x133f, bitSize: 0x1
        bool hash_12c8b36832284f70;
        // offset: 0x1340, bitSize: 0x1
        bool voipdeadhearteamliving;
        // offset: 0x1341, bitSize: 0x1
        bool hash_51f7292117d41790;
        // offset: 0x1342, bitSize: 0x1
        bool capdecay;
        // offset: 0x1343, bitSize: 0x1
        bool hash_7bcb76b8a52c35e;
        // offset: 0x1344, bitSize: 0x1
        bool hash_5c90286f1514c76;
        // offset: 0x1345, bitSize: 0x1
        bool hash_b87383d5497a826;
        // offset: 0x1346, bitSize: 0x1
        bool voipeveryonehearseveryone;
        // offset: 0x1347, bitSize: 0x1
        bool hash_460af55ecefb11f;
        // offset: 0x1348, bitSize: 0x1
        bool hash_4f4a73f236278ba8;
        // offset: 0x1349, bitSize: 0x1
        bool hash_5f76e2d55ad861ed;
        // offset: 0x134a, bitSize: 0x1
        bool hash_52a73dca4cbce600;
        // offset: 0x134b, bitSize: 0x1
        bool laststandfinishing;
        // offset: 0x134c, bitSize: 0x1
        bool hash_201c1769d32b30d3;
    };

    // root: bitSize: 0x1350, members: 1

    // offset: 0x0, bitSize: 0x1350(0x26a Byte(s))
    gametypesettings gametypesettings;
};

version hash_9987529f9c78247a {
    // enums ..... 0 (0x0)
    // structs ... 2 (0x2)
    // header bit size .. 5120 (0x1400)
    // header byte size . 640 (0x280)

    // bitSize: 0x1350, members: 581
    struct gametypesettings {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> timelimit;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_25740f686a5cfc7e;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        uint:4 playerkillsmax;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_129fca5e3a00477f;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_444634d99df7a661;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperdeath;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:2 forceradar;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkill;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playersprinttime;
        // offset: 0x58, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> capturetime;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleroundswon;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_9fe0e2b1a7f556;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayerdefensive;
        // offset: 0x88, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_35e9fc8eee6881e0;
        // offset: 0x90, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_613785a993624133;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandrevivehealth;
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierdestroytime;
        // offset: 0xc0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostattackhelicopter;
        // offset: 0xc8, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_6024ee628431415;
        // offset: 0xd8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostbow;
        // offset: 0xe0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostuav;
        // offset: 0xe8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperweaponkill;
        // offset: 0xf0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_722d8dafb62ce7fe;
        // offset: 0x108, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_4a10303376ed2d10;
        // offset: 0x110, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_68b825c95acb9218;
        // offset: 0x120, bitSize: 0x8(0x1 Byte(s))
        uint:6 maxteamplayers;
        // offset: 0x128, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandhealth;
        // offset: 0x130, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6b2754246df1bc7c;
        // offset: 0x140, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_46f0ae82f5c2f7d4;
        // offset: 0x150, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> maxusers;
        // offset: 0x160, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_1ca4d65346568642;
        // offset: 0x170, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_312848239629f5b9;
        // offset: 0x180, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1d77a77db928f695;
        // offset: 0x190, bitSize: 0x8(0x1 Byte(s))
        uint:4 draftrequiredclients;
        // offset: 0x198, bitSize: 0x8(0x1 Byte(s))
        uint:3 friendlyfiretype;
        // offset: 0x1a0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7fee0559953eec6;
        // offset: 0x1b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_28005bb885acabc3;
        // offset: 0x1c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4725de6afe873b87;
        // offset: 0x1d8, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_16184f2fd4014b39;
        // offset: 0x1e0, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspermeleekill;
        // offset: 0x1e8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_51f121252f1d8c7f;
        // offset: 0x1f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_32da91b78e54e7b5;
        // offset: 0x200, bitSize: 0x8(0x1 Byte(s))
        uint:6 preroundperiod;
        // offset: 0x208, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_56f6d77da3124af2;
        // offset: 0x218, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowertimefactor;
        // offset: 0x220, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_62a4fd40810cb61;
        // offset: 0x228, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_56a31bddd92a64dc;
        // offset: 0x230, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> laststandrevivetime;
        // offset: 0x238, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_429d353f0be087a5;
        // offset: 0x250, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpunishcount;
        // offset: 0x258, bitSize: 0x8(0x1 Byte(s))
        uint:7 maxplayers;
        // offset: 0x260, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53fd9a3e9a0e78e1;
        // offset: 0x270, bitSize: 0x20(0x4 Byte(s))
        int forwardspawnhealth;
        // offset: 0x290, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5598d36d6b224c9a;
        // offset: 0x2a0, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnteamkilledpenalty;
        // offset: 0x2a8, bitSize: 0x8(0x1 Byte(s))
        uint:3 ballcount;
        // offset: 0x2b0, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_6ae29c8144cb7659;
        // offset: 0x2b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c82ffb472a21cac;
        // offset: 0x2c8, bitSize: 0x8(0x1 Byte(s))
        uint:3 gunselection;
        // offset: 0x2d0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_53c1e74b2d385c17;
        // offset: 0x2e8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_17cc26f74ef911e0;
        // offset: 0x2f0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_67d54bbc52811921;
        // offset: 0x2f8, bitSize: 0x8(0x1 Byte(s))
        fixed<5,2> hash_1614b9cbe0df6f75;
        // offset: 0x300, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_35104d2d5fd22ce7;
        // offset: 0x318, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1441f7ad44e1cfd4;
        // offset: 0x320, bitSize: 0x8(0x1 Byte(s))
        uint:7 killstreakdeathpenaltyindividualearn;
        // offset: 0x328, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_c0beb1e5a80c25c;
        // offset: 0x330, bitSize: 0x8(0x1 Byte(s))
        uint:5 prematchrequirement;
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:3 spectatetype;
        // offset: 0x340, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> hash_57fe6337297bcce9;
        // offset: 0x348, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_1df445b9d1af641f;
        // offset: 0x350, bitSize: 0x8(0x1 Byte(s))
        uint:3 randomobjectivelocations;
        // offset: 0x358, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_55db4a8546a13c79;
        // offset: 0x370, bitSize: 0x8(0x1 Byte(s))
        uint:5 roundwinlimit;
        // offset: 0x378, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_ecf2124e9108fc4;
        // offset: 0x380, bitSize: 0x10(0x2 Byte(s))
        uint:10 antiboostdistance;
        // offset: 0x390, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_115a3410d9dbf98d;
        // offset: 0x3a0, bitSize: 0x10(0x2 Byte(s))
        uint:15 roundscorelimit;
        // offset: 0x3b0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_320a5028d10f305a;
        // offset: 0x3c8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> hash_154db5a1b2e9d757;
        // offset: 0x3d8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> bulletdamagescalar;
        // offset: 0x3e0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1df1e1139a1a4eb8;
        // offset: 0x3f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_79c708d50a12e336;
        // offset: 0x408, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_49d61407873849a2;
        // offset: 0x410, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostontimeamount;
        // offset: 0x418, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> defusetime;
        // offset: 0x420, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> teamkillreducedpenalty;
        // offset: 0x428, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxallocation;
        // offset: 0x430, bitSize: 0x8(0x1 Byte(s))
        uint:4 carryscore;
        // offset: 0x438, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c8636144ad47ac9;
        // offset: 0x448, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53cd45b387951ca1;
        // offset: 0x458, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_6e49ce7bbe6d3f1f;
        // offset: 0x460, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> killeventscoremultiplier;
        // offset: 0x468, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_2efff808b2701aa5;
        // offset: 0x478, bitSize: 0x8(0x1 Byte(s))
        uint:6 ticketslostontimeinterval;
        // offset: 0x480, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartexplosivedelay;
        // offset: 0x488, bitSize: 0x8(0x1 Byte(s))
        uint:2 cleandepositrotation;
        // offset: 0x490, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_21754b274494502e;
        // offset: 0x4a0, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_1311b008d2f6dbc1;
        // offset: 0x4b0, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_5f7c18fecb2a1a44;
        // offset: 0x4c0, bitSize: 0x8(0x1 Byte(s))
        uint:7 idleflagresettime;
        // offset: 0x4c8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowergainfactor;
        // offset: 0x4d0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1f65f0a6f0eb3110;
        // offset: 0x4e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2a02614601829003;
        // offset: 0x4f8, bitSize: 0x8(0x1 Byte(s))
        uint:4 setbacks;
        // offset: 0x500, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1db05f3e34ccaaaf;
        // offset: 0x510, bitSize: 0x20(0x4 Byte(s))
        int hash_6b808ab4016cb1e1;
        // offset: 0x530, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1efac5fcdfa4f;
        // offset: 0x540, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1eeac5fcdf89c;
        // offset: 0x550, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f1ac5fcdfdb5;
        // offset: 0x560, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f0ac5fcdfc02;
        // offset: 0x570, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1ebac5fcdf383;
        // offset: 0x580, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_20a83071685f7bd9;
        // offset: 0x598, bitSize: 0x10(0x2 Byte(s))
        fixed<12,4> trm_maxheight;
        // offset: 0x5a8, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_2b88c6ac064e9c59;
        // offset: 0x5b0, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayofthematchevents;
        // offset: 0x5b8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostwarmachine;
        // offset: 0x5c0, bitSize: 0x10(0x2 Byte(s))
        uint:15 scorelimit;
        // offset: 0x5d0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> cratecapturetime;
        // offset: 0x5d8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4a6ef8940f4cbb83;
        // offset: 0x5e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eeb8cb5c84b1939;
        // offset: 0x5f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eba3289161fd45f;
        // offset: 0x600, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_22c53ddb2cb67f13;
        // offset: 0x610, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_9c266bdf9cad7fa;
        // offset: 0x620, bitSize: 0x8(0x1 Byte(s))
        uint:3 killpointsinenemyprotectedzone;
        // offset: 0x628, bitSize: 0x10(0x2 Byte(s))
        uint:14 playersprintrecoverydelayoverridems;
        // offset: 0x638, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6e2b8452b08a545c;
        // offset: 0x640, bitSize: 0x10(0x2 Byte(s))
        uint:10 playermaxhealth;
        // offset: 0x650, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1833c853bfe78ffc;
        // offset: 0x658, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_5e8818f69d557ad2;
        // offset: 0x670, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_3e13b420d6773b4c;
        // offset: 0x678, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_718b497c5205e74b;
        // offset: 0x688, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostgunship;
        // offset: 0x690, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_42b840c668fd2c85;
        // offset: 0x6a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_44f0b1c6b2d3b6f8;
        // offset: 0x6b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5dc620c6c0919d82;
        // offset: 0x6c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2aea36c6a4135574;
        // offset: 0x6d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_32c16dc6a8490e81;
        // offset: 0x6e0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_66a7d866327081eb;
        // offset: 0x6e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5f116b8cfbdbc3fe;
        // offset: 0x6f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsforsurvivalbonus;
        // offset: 0x700, bitSize: 0x190(0x32 Byte(s)), array:0x32(hti:0xffff)
        uint:5 maxuniquerolesperteam[50];
        // offset: 0x890, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_7adb62a64c6d963;
        // offset: 0x898, bitSize: 0x8(0x1 Byte(s))
        uint:3 objectivepingtime;
        // offset: 0x8a0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_271177b8b4cfcf15;
        // offset: 0x8b8, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamkillspawndelay;
        // offset: 0x8c0, bitSize: 0x8(0x1 Byte(s))
        uint:8 carrierarmor;
        // offset: 0x8c8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_51a2ab391c340e03;
        // offset: 0x8e0, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostondeath;
        // offset: 0x8e8, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_47d4aa0161d78e15;
        // offset: 0x8f0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostremotemissile;
        // offset: 0x8f8, bitSize: 0x10(0x2 Byte(s))
        uint:9 carriermovespeed;
        // offset: 0x908, bitSize: 0x8(0x1 Byte(s))
        uint:5 boottime;
        // offset: 0x910, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_652bc8c2577ec788;
        // offset: 0x920, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_72852fc1d977c3a0;
        // offset: 0x930, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_314c2f7312bde4af;
        // offset: 0x938, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_5d5f4ee35c9977c7;
        // offset: 0x940, bitSize: 0x8(0x1 Byte(s))
        uint:3 roundstartfriendlyfiretype;
        // offset: 0x948, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagdecaytime;
        // offset: 0x950, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_76f686986e1a58b;
        // offset: 0x960, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_vs_bots;
        // offset: 0x968, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_26b08269156ca0e5;
        // offset: 0x970, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamnumlives;
        // offset: 0x978, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> planttime;
        // offset: 0x980, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6141cddd96ac214e;
        // offset: 0x988, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnprotectiontime;
        // offset: 0x990, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7353bbc24d72ec59;
        // offset: 0x9a0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_573034b3252cb4e3;
        // offset: 0x9b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 inactivitykick;
        // offset: 0x9c8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspersecondarykill;
        // offset: 0x9d0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team3;
        // offset: 0x9d8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team4;
        // offset: 0x9e0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team5;
        // offset: 0x9e8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team6;
        // offset: 0x9f0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team7;
        // offset: 0x9f8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team8;
        // offset: 0xa00, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team9;
        // offset: 0xa08, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerhealthregentime;
        // offset: 0xa10, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5d40d1f9fb7f;
        // offset: 0xa20, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5c40d1f9f9cc;
        // offset: 0xa30, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5f40d1f9fee5;
        // offset: 0xa40, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5e40d1f9fd32;
        // offset: 0xa50, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5940d1f9f4b3;
        // offset: 0xa60, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4f00f3f568c284af;
        // offset: 0xa70, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7f190c8839d3f05c;
        // offset: 0xa80, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_3a4691a853585241;
        // offset: 0xa88, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> destroytime;
        // offset: 0xa98, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagrespawntime;
        // offset: 0xaa0, bitSize: 0x8(0x1 Byte(s))
        uint:2 shutdowndamage;
        // offset: 0xaa8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> gameadvertisementruletimeleft;
        // offset: 0xab0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_6a48bbfb703d5c9c;
        // offset: 0xab8, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_239b391c77ebf8c1;
        // offset: 0xac0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7c33e5bebaf05afb;
        // offset: 0xad0, bitSize: 0x10(0x2 Byte(s))
        uint:11 objectivehealth;
        // offset: 0xae0, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnsuicidepenalty;
        // offset: 0xae8, bitSize: 0x8(0x1 Byte(s))
        uint:2 robotspeed;
        // offset: 0xaf0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_467be34402dad274;
        // offset: 0xaf8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_68e3f54e05f57d85;
        // offset: 0xb00, bitSize: 0x8(0x1 Byte(s))
        uint:7 servermsec;
        // offset: 0xb08, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_410c5c7c1e60b534;
        // offset: 0xb10, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_212cc2b5b360189c;
        // offset: 0xb18, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostminigun;
        // offset: 0xb20, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_55a92a1d652b5edc;
        // offset: 0xb28, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_552338718ec6d2df;
        // offset: 0xb30, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1c0040943c216593;
        // offset: 0xb38, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxplayereventsperminute;
        // offset: 0xb48, bitSize: 0x10(0x2 Byte(s))
        uint:10 leaderbonus;
        // offset: 0xb58, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_5c918cbf75e16116;
        // offset: 0xb60, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_51e989796c38cd87;
        // offset: 0xb68, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostnapalm;
        // offset: 0xb70, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_119bd2704c238e5;
        // offset: 0xb88, bitSize: 0x8(0x1 Byte(s))
        uint:2 enemycarriervisible;
        // offset: 0xb90, bitSize: 0x10(0x2 Byte(s))
        uint:9 autodestroytime;
        // offset: 0xba0, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkillconfirmed;
        // offset: 0xba8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4e4352bd1aaeedfe;
        // offset: 0xbb0, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_507e1eb7f297d872;
        // offset: 0xbc0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_342835495fca42bb;
        // offset: 0xbd0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7cada6c0936f259b;
        // offset: 0xbe0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> waverespawndelay;
        // offset: 0xbe8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1974892bc7266bab;
        // offset: 0xbf8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_567db38226658dbf;
        // offset: 0xc00, bitSize: 0x8(0x1 Byte(s))
        uint:6 prematchperiod;
        // offset: 0xc08, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostsentry;
        // offset: 0xc10, bitSize: 0x8(0x1 Byte(s))
        uint:6 teamkillscore;
        // offset: 0xc18, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_102aeddad113f70c;
        // offset: 0xc20, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_4635a26c94b56725;
        // offset: 0xc28, bitSize: 0x8(0x1 Byte(s))
        uint:3 platooncount;
        // offset: 0xc30, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierhealth;
        // offset: 0xc50, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_71da377e373bc755;
        // offset: 0xc68, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_38a8f601ab8388d0;
        // offset: 0xc78, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarykill;
        // offset: 0xc80, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperheadshot;
        // offset: 0xc88, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_75ff4383212c5111;
        // offset: 0xc98, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1908ad844e6c3e37;
        // offset: 0xca0, bitSize: 0x8(0x1 Byte(s))
        uint:4 pregameitemmaxvotes;
        // offset: 0xca8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_50029ecff5e7d383;
        // offset: 0xcb8, bitSize: 0x8(0x1 Byte(s))
        uint:7 playernumlives;
        // offset: 0xcc0, bitSize: 0x8(0x1 Byte(s))
        uint:2 infectionmode;
        // offset: 0xcc8, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleround;
        // offset: 0xcd0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7d53c8bab3db8122;
        // offset: 0xce0, bitSize: 0x8(0x1 Byte(s))
        fixed<7,1> incrementalspawndelay;
        // offset: 0xce8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_allies;
        // offset: 0xcf0, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxsuicidesbeforekick;
        // offset: 0xcf8, bitSize: 0x8(0x1 Byte(s))
        uint:7 gameadvertisementrulescorepercent;
        // offset: 0xd00, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_3e76ce42036815cc;
        // offset: 0xd10, bitSize: 0x10(0x2 Byte(s))
        int:10 hash_3ccd8e1bf3864fa1;
        // offset: 0xd20, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_130d127406ab976e;
        // offset: 0xd30, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostairpatrol;
        // offset: 0xd38, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcoststraferun;
        // offset: 0xd40, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostcuav;
        // offset: 0xd48, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostrcxd;
        // offset: 0xd50, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostvtol;
        // offset: 0xd58, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_40c4b447a58a7da4;
        // offset: 0xd68, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> hash_47e9736d437be7c8;
        // offset: 0xd70, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3e1bb1840c4ab667;
        // offset: 0xd80, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1ea82b1edff2a13b;
        // offset: 0xd90, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c31c3f19402e1f;
        // offset: 0xda0, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandtimer;
        // offset: 0xda8, bitSize: 0x8(0x1 Byte(s))
        uint:6 reboottime;
        // offset: 0xdb0, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscorepercleandeposit;
        // offset: 0xdb8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extrasegmenttime;
        // offset: 0xdc8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_2081d79c44b2cefb;
        // offset: 0xde0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6773166f56896564;
        // offset: 0xdf0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1725e90b73841702;
        // offset: 0xe00, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_273d049136c76afa;
        // offset: 0xe10, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_2849b6cf7317ab1b;
        // offset: 0xe18, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5a4fde688cbf1a01;
        // offset: 0xe28, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c72ac3d026ca4eb;
        // offset: 0xe38, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_83f11b8abac148f;
        // offset: 0xe40, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_22fa97d05461a3e8;
        // offset: 0xe58, bitSize: 0x8(0x1 Byte(s))
        uint:4 pickuptime;
        // offset: 0xe60, bitSize: 0x10(0x2 Byte(s))
        fixed<14,7> hash_451245a24412d90f;
        // offset: 0xe70, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3d5a87878a3bef28;
        // offset: 0xe80, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_552467c143123c1c;
        // offset: 0xe88, bitSize: 0x20(0x4 Byte(s))
        int hash_64727525f5957d06;
        // offset: 0xea8, bitSize: 0x20(0x4 Byte(s))
        int hash_1f3285ddee84620c;
        // offset: 0xec8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_2596f9e3d6e26ac9;
        // offset: 0xed0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostchoppergunner;
        // offset: 0xed8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_3767386c050fa0eb;
        // offset: 0xee0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerrespawndelay;
        // offset: 0xee8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_34ee1a1a574eaa4c;
        // offset: 0xef8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> spawntraptriggertime;
        // offset: 0xf00, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_26ff1d48be83e46c;
        // offset: 0xf18, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayeroffensive;
        // offset: 0xf20, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_527f80b77f20b8c8;
        // offset: 0xf30, bitSize: 0x8(0x1 Byte(s))
        uint:2 allowhitmarkers;
        // offset: 0xf38, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_d8215d30d36fa59;
        // offset: 0xf50, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_67ee1d8d7938baa1;
        // offset: 0xf60, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2c02a63d2c336b30;
        // offset: 0xf70, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxobjectiveeventsperminute;
        // offset: 0xf80, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_47dd11084763c671;
        // offset: 0xf90, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4201d2890785fb14;
        // offset: 0xfa0, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarygrenadekill;
        // offset: 0xfa8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team10;
        // offset: 0xfb0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostcarepackage;
        // offset: 0xfb8, bitSize: 0x8(0x1 Byte(s))
        uint:7 bonuslivesforcapturingzone;
        // offset: 0xfc0, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_39d008c4c2044bc7;
        // offset: 0xfd0, bitSize: 0x8(0x1 Byte(s))
        uint:7 startplayers;
        // offset: 0xfd8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_7d590533364efa87;
        // offset: 0xfe0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_252e760b41f3d94a;
        // offset: 0xfe8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartkillstreakdelay;
        // offset: 0xff0, bitSize: 0x8(0x1 Byte(s))
        uint:5 totalkillsmax;
        // offset: 0xff8, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundswitch;
        // offset: 0x1000, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerobjectiveheldrespawndelay;
        // offset: 0x1008, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpenalty;
        // offset: 0x1010, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_18bdaa4b00863e9d;
        // offset: 0x1018, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_12ef93fbb06b1e2c;
        // offset: 0x1030, bitSize: 0x8(0x1 Byte(s))
        uint:5 weaponcount;
        // offset: 0x1038, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1706d4b546538286;
        // offset: 0x1050, bitSize: 0x8(0x1 Byte(s))
        uint:7 weapontimer;
        // offset: 0x1058, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> overtimetimelimit;
        // offset: 0x1068, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_96215e6d55c4b2b;
        // offset: 0x1078, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_6cd27d9716989cf5;
        // offset: 0x1088, bitSize: 0x8(0x1 Byte(s))
        uint:7 cleandepositonlinetime;
        // offset: 0x1090, bitSize: 0x8(0x1 Byte(s))
        fixed<7,3> hash_4c7c8c4bd1b2a58b;
        // offset: 0x1098, bitSize: 0x8(0x1 Byte(s))
        uint:7 drafttime;
        // offset: 0x10a0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_ed89addfaaafe48;
        // offset: 0x10a8, bitSize: 0x8(0x1 Byte(s))
        uint:7 objectivespawntime;
        // offset: 0x10b0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostreconplane;
        // offset: 0x10b8, bitSize: 0x8(0x1 Byte(s))
        uint:2 killcammode;
        // offset: 0x10c0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> killcamtime;
        // offset: 0x10d0, bitSize: 0x8(0x1 Byte(s))
        uint:4 throwscore;
        // offset: 0x10d8, bitSize: 0x8(0x1 Byte(s))
        uint:4 deposittime;
        // offset: 0x10e0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extratime;
        // offset: 0x10f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_54d908d6273c8893;
        // offset: 0x1100, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6269eb986d22cd37;
        // offset: 0x1108, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreequipmentpowertimefactor;
        // offset: 0x1110, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostarmor;
        // offset: 0x1118, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_36ea712d503b054c;
        // offset: 0x1130, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamcount;
        // offset: 0x1138, bitSize: 0x20(0x4 Byte(s))
        int hash_7f38d88521da4c79;
        // offset: 0x1158, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_24c718cc0c526c38;
        // offset: 0x1160, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundlimit;
        // offset: 0x1168, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_531cc9c63ae86a93;
        // offset: 0x1178, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostartillery;
        // offset: 0x1180, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_b30022a9302a5a6;
        // offset: 0x1190, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_25d72112144c5ea0;
        // offset: 0x11a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_39cfd81268504039;
        // offset: 0x11b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_208071125a2b0b0b;
        // offset: 0x11c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_52ef5b12764c8139;
        // offset: 0x11d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4bf2241272d06bec;
        // offset: 0x11e0, bitSize: 0x8(0x1 Byte(s))
        uint:2 charactercustomization;
        // offset: 0x11e8, bitSize: 0x20(0x4 Byte(s))
        int hash_af4ad3316f0ded6;
        // offset: 0x1208, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_437a986f8d24d7eb;
        // offset: 0x1210, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_16182516e10d0250;
        // offset: 0x1228, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_axis;
        // offset: 0x1230, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7344dfa399020a06;
        // offset: 0x1248, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6e2abf2cc40e03f1;
        // offset: 0x1250, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkilldenied;
        // offset: 0x1258, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> bombtimer;
        // offset: 0x1268, bitSize: 0x1
        bool delayplayer;
        // offset: 0x1269, bitSize: 0x1
        bool hash_196e997a082443a9;
        // offset: 0x126a, bitSize: 0x1
        bool voipdeadchatwithdead;
        // offset: 0x126b, bitSize: 0x1
        bool voipdeadchatwithteam;
        // offset: 0x126c, bitSize: 0x1
        bool hash_729930c3c52653c3;
        // offset: 0x126d, bitSize: 0x1
        bool useembleminsteadoffactionicon;
        // offset: 0x126e, bitSize: 0x1
        bool draftenabled;
        // offset: 0x126f, bitSize: 0x1
        bool hash_85fbdce1f1a0290;
        // offset: 0x1270, bitSize: 0x1
        bool hash_3a15393c2e90e121;
        // offset: 0x1271, bitSize: 0x1
        bool hash_1d708093c2664515;
        // offset: 0x1272, bitSize: 0x1
        bool overtimebestteam;
        // offset: 0x1273, bitSize: 0x1
        bool droppedtagrespawn;
        // offset: 0x1274, bitSize: 0x1
        bool hash_1e71b5ce1cd845b3;
        // offset: 0x1275, bitSize: 0x1
        bool hash_25aaa9a29a90534c;
        // offset: 0x1276, bitSize: 0x1
        bool voipkillershearvictim;
        // offset: 0x1277, bitSize: 0x1
        bool hash_7c0dcff6ffb1e348;
        // offset: 0x1278, bitSize: 0x1
        bool hash_4091f2d0019b1f4a;
        // offset: 0x1279, bitSize: 0x1
        bool deathcirclerespawn;
        // offset: 0x127a, bitSize: 0x1
        bool hash_2683a105198a7407;
        // offset: 0x127b, bitSize: 0x1
        bool presetclassesperteam;
        // offset: 0x127c, bitSize: 0x1
        bool hash_361f7fe066281093;
        // offset: 0x127d, bitSize: 0x1
        bool hash_232892d3b0a6240c;
        // offset: 0x127e, bitSize: 0x1
        bool bot_autofill_allies;
        // offset: 0x127f, bitSize: 0x1
        bool hash_2c55a3723cd9fdf9;
        // offset: 0x1280, bitSize: 0x1
        bool forcegibbing;
        // offset: 0x1281, bitSize: 0x1
        bool hash_5c57222bb95a06cb;
        // offset: 0x1282, bitSize: 0x1
        bool hardcoremode;
        // offset: 0x1283, bitSize: 0x1
        bool hash_135829cbab367329;
        // offset: 0x1284, bitSize: 0x1
        bool hash_495b64bd935bf7b;
        // offset: 0x1285, bitSize: 0x1
        bool useitemspawns;
        // offset: 0x1286, bitSize: 0x1
        bool hash_77b7734750cd75e9;
        // offset: 0x1287, bitSize: 0x1
        bool silentplant;
        // offset: 0x1288, bitSize: 0x1
        bool hash_5711f3e42924a635;
        // offset: 0x1289, bitSize: 0x1
        bool drafteveryround;
        // offset: 0x128a, bitSize: 0x1
        bool timepauseswheninzone;
        // offset: 0x128b, bitSize: 0x1
        bool hash_4b55d75b8d779e4;
        // offset: 0x128c, bitSize: 0x1
        bool hash_549abfbb3665d526;
        // offset: 0x128d, bitSize: 0x1
        bool scoreperplayer;
        // offset: 0x128e, bitSize: 0x1
        bool ekiaresetondeath;
        // offset: 0x128f, bitSize: 0x1
        bool kothmode;
        // offset: 0x1290, bitSize: 0x1
        bool hash_70c6890214831a58;
        // offset: 0x1291, bitSize: 0x1
        bool hash_62665aebde32c8ae;
        // offset: 0x1292, bitSize: 0x1
        bool hash_18c053cae82c1167;
        // offset: 0x1293, bitSize: 0x1
        bool hash_6cf5f53d1fbb1066;
        // offset: 0x1294, bitSize: 0x1
        bool hash_3d23923f9c9757cd;
        // offset: 0x1295, bitSize: 0x1
        bool decayprogress;
        // offset: 0x1296, bitSize: 0x1
        bool playerqueuedrespawn;
        // offset: 0x1297, bitSize: 0x1
        bool onlyexecution;
        // offset: 0x1298, bitSize: 0x1
        bool scorestreaksbarebones;
        // offset: 0x1299, bitSize: 0x1
        bool cumulativeroundscores;
        // offset: 0x129a, bitSize: 0x1
        bool hash_3ad2212223b76a72;
        // offset: 0x129b, bitSize: 0x1
        bool voipdeadhearkiller;
        // offset: 0x129c, bitSize: 0x1
        bool bot_autofill_team10;
        // offset: 0x129d, bitSize: 0x1
        bool hash_6e6991561babdd7e;
        // offset: 0x129e, bitSize: 0x1
        bool bot_autofill_axis;
        // offset: 0x129f, bitSize: 0x1
        bool skiplaststand;
        // offset: 0x12a0, bitSize: 0x1
        bool hash_1f3825ba2a669400;
        // offset: 0x12a1, bitSize: 0x1
        bool usespawngroups;
        // offset: 0x12a2, bitSize: 0x1
        bool hash_b76e50c1202aa23;
        // offset: 0x12a3, bitSize: 0x1
        bool disablethirdpersonspectating;
        // offset: 0x12a4, bitSize: 0x1
        bool platoonassignment;
        // offset: 0x12a5, bitSize: 0x1
        bool hash_7daf08db0c451ad1;
        // offset: 0x12a6, bitSize: 0x1
        bool allowlaststandforactiveclients;
        // offset: 0x12a7, bitSize: 0x1
        bool hash_5cc3c32813d17039;
        // offset: 0x12a8, bitSize: 0x1
        bool allowbattlechatter;
        // offset: 0x12a9, bitSize: 0x1
        bool fowrevealenabled;
        // offset: 0x12aa, bitSize: 0x1
        bool hash_4e8cafe9a4470898;
        // offset: 0x12ab, bitSize: 0x1
        bool hash_7647d0e9a45eeca6;
        // offset: 0x12ac, bitSize: 0x1
        bool hash_3cd7f961322b6b7;
        // offset: 0x12ad, bitSize: 0x1
        bool hash_3293bf384d3c1e2f;
        // offset: 0x12ae, bitSize: 0x1
        bool hash_5fcc23190f135afe;
        // offset: 0x12af, bitSize: 0x1
        bool hash_35376812247cdc3;
        // offset: 0x12b0, bitSize: 0x1
        bool disablecontracts;
        // offset: 0x12b1, bitSize: 0x1
        bool hash_2b1f40bc711c41f3;
        // offset: 0x12b2, bitSize: 0x1
        bool hash_75d44b1542e3edf9;
        // offset: 0x12b3, bitSize: 0x1
        bool hash_5462586bdce0346e;
        // offset: 0x12b4, bitSize: 0x1
        bool gameobjectscontestedmajoritywins;
        // offset: 0x12b5, bitSize: 0x1
        bool hash_2f0beae14bf17810;
        // offset: 0x12b6, bitSize: 0x1
        bool autoheal;
        // offset: 0x12b7, bitSize: 0x1
        bool allowannouncer;
        // offset: 0x12b8, bitSize: 0x1
        bool disallowaimslowdown;
        // offset: 0x12b9, bitSize: 0x1
        bool hash_435c853b64e3175e;
        // offset: 0x12ba, bitSize: 0x1
        bool hash_5538f8f7758641b4;
        // offset: 0x12bb, bitSize: 0x1
        bool bot_autofill_team3;
        // offset: 0x12bc, bitSize: 0x1
        bool bot_autofill_team4;
        // offset: 0x12bd, bitSize: 0x1
        bool bot_autofill_team5;
        // offset: 0x12be, bitSize: 0x1
        bool bot_autofill_team6;
        // offset: 0x12bf, bitSize: 0x1
        bool bot_autofill_team7;
        // offset: 0x12c0, bitSize: 0x1
        bool bot_autofill_team8;
        // offset: 0x12c1, bitSize: 0x1
        bool bot_autofill_team9;
        // offset: 0x12c2, bitSize: 0x1
        bool hash_35e6177743dac957;
        // offset: 0x12c3, bitSize: 0x1
        bool hash_14fd184091ff1af;
        // offset: 0x12c4, bitSize: 0x1
        bool vehiclesenabled;
        // offset: 0x12c5, bitSize: 0x1
        bool decaycapturedzones;
        // offset: 0x12c6, bitSize: 0x1
        bool neutralzone;
        // offset: 0x12c7, bitSize: 0x1
        bool boastallowcam;
        // offset: 0x12c8, bitSize: 0x1
        bool hash_7cc354dd83013a47;
        // offset: 0x12c9, bitSize: 0x1
        bool onlyheadshots;
        // offset: 0x12ca, bitSize: 0x1
        bool competitivesettings;
        // offset: 0x12cb, bitSize: 0x1
        bool flagcapturecondition;
        // offset: 0x12cc, bitSize: 0x1
        bool hash_1ca94a3bd057f19f;
        // offset: 0x12cd, bitSize: 0x1
        bool hash_1346ebfec214d724;
        // offset: 0x12ce, bitSize: 0x1
        bool hash_7b822d42a5d1643d;
        // offset: 0x12cf, bitSize: 0x1
        bool hash_4be46e952d54e9a2;
        // offset: 0x12d0, bitSize: 0x1
        bool hash_1ebf97988141c498;
        // offset: 0x12d1, bitSize: 0x1
        bool hash_25fa292c7fc561b8;
        // offset: 0x12d2, bitSize: 0x1
        bool flagcanbeneutralized;
        // offset: 0x12d3, bitSize: 0x1
        bool hash_241e17e13da23de2;
        // offset: 0x12d4, bitSize: 0x1
        bool hash_4057701fc646435d;
        // offset: 0x12d5, bitSize: 0x1
        bool hash_6881c7cab0dcef39;
        // offset: 0x12d6, bitSize: 0x1
        bool vehiclestimed;
        // offset: 0x12d7, bitSize: 0x1
        bool pregamedraftenabled;
        // offset: 0x12d8, bitSize: 0x1
        bool hash_6f03247bbcf52311;
        // offset: 0x12d9, bitSize: 0x1
        bool hash_6143c4e1e18f08fd;
        // offset: 0x12da, bitSize: 0x1
        bool teamkillpointloss;
        // offset: 0x12db, bitSize: 0x1
        bool hash_322026c0342869d1;
        // offset: 0x12dc, bitSize: 0x1
        bool hash_1e346fbfe02f1294;
        // offset: 0x12dd, bitSize: 0x1
        bool hash_3724e6bfee03ce6e;
        // offset: 0x12de, bitSize: 0x1
        bool hash_497a2cbff8af4988;
        // offset: 0x12df, bitSize: 0x1
        bool hash_50776bbffc2b6c6d;
        // offset: 0x12e0, bitSize: 0x1
        bool hash_55fc1cb09246fe30;
        // offset: 0x12e1, bitSize: 0x1
        bool hash_1d5943e61e65eeae;
        // offset: 0x12e2, bitSize: 0x1
        bool hash_656fd3c508d1d33e;
        // offset: 0x12e3, bitSize: 0x1
        bool hash_29f3630e8e542a0a;
        // offset: 0x12e4, bitSize: 0x1
        bool hash_c6a2e6c3e86125a;
        // offset: 0x12e5, bitSize: 0x1
        bool hash_2ebcaa6630ba8fd5;
        // offset: 0x12e6, bitSize: 0x1
        bool perksenabled;
        // offset: 0x12e7, bitSize: 0x1
        bool hash_33bc6781006ae83d;
        // offset: 0x12e8, bitSize: 0x1
        bool hash_655d904d5995891f;
        // offset: 0x12e9, bitSize: 0x1
        bool hash_6c21d8e8de53e9c3;
        // offset: 0x12ea, bitSize: 0x1
        bool hash_2966662989c3484c;
        // offset: 0x12eb, bitSize: 0x1
        bool allowmapscripting;
        // offset: 0x12ec, bitSize: 0x1
        bool robotshield;
        // offset: 0x12ed, bitSize: 0x1
        bool hash_62e3e33ec68db92f;
        // offset: 0x12ee, bitSize: 0x1
        bool hash_2a76bf462f4c2f50;
        // offset: 0x12ef, bitSize: 0x1
        bool disableattachments;
        // offset: 0x12f0, bitSize: 0x1
        bool disablecompass;
        // offset: 0x12f1, bitSize: 0x1
        bool disableweapondrop;
        // offset: 0x12f2, bitSize: 0x1
        bool escalationenabled;
        // offset: 0x12f3, bitSize: 0x1
        bool hash_a564dde6ee3c657;
        // offset: 0x12f4, bitSize: 0x1
        bool hash_7b8284382bffc197;
        // offset: 0x12f5, bitSize: 0x1
        bool hash_25368755636c91a4;
        // offset: 0x12f6, bitSize: 0x1
        bool disableclassselection;
        // offset: 0x12f7, bitSize: 0x1
        bool hash_290721f8deb6ef5e;
        // offset: 0x12f8, bitSize: 0x1
        bool hash_48670d9509071424;
        // offset: 0x12f9, bitSize: 0x1
        bool autoteambalance;
        // offset: 0x12fa, bitSize: 0x1
        bool hash_4bdd1bd86b610871;
        // offset: 0x12fb, bitSize: 0x1
        bool hash_69df7093cd32f107;
        // offset: 0x12fc, bitSize: 0x1
        bool hash_7c0acf14fb1f4080;
        // offset: 0x12fd, bitSize: 0x1
        bool allowplayofthematch;
        // offset: 0x12fe, bitSize: 0x1
        bool allowprone;
        // offset: 0x12ff, bitSize: 0x1
        bool scoreresetondeath;
        // offset: 0x1300, bitSize: 0x1
        bool hash_452a45e599d3a575;
        // offset: 0x1301, bitSize: 0x1
        bool playerforcerespawn;
        // offset: 0x1302, bitSize: 0x1
        bool hash_7098f146a35b8468;
        // offset: 0x1303, bitSize: 0x1
        bool multibomb;
        // offset: 0x1304, bitSize: 0x1
        bool hash_4dd37bf6da89131;
        // offset: 0x1305, bitSize: 0x1
        bool hash_29fd164e7ff1abb0;
        // offset: 0x1306, bitSize: 0x1
        bool hash_104f124f56f0f20a;
        // offset: 0x1307, bitSize: 0x1
        bool hash_2560dae45cc112e3;
        // offset: 0x1308, bitSize: 0x1
        bool hash_50a46f60312cf53c;
        // offset: 0x1309, bitSize: 0x1
        bool hash_23b110691971b537;
        // offset: 0x130a, bitSize: 0x1
        bool deathcircle;
        // offset: 0x130b, bitSize: 0x1
        bool hash_4669425278875e14;
        // offset: 0x130c, bitSize: 0x1
        bool boastenabled;
        // offset: 0x130d, bitSize: 0x1
        bool hash_5002b8a3b8882084;
        // offset: 0x130e, bitSize: 0x1
        bool hash_3513cf8b4287cdd7;
        // offset: 0x130f, bitSize: 0x1
        bool hash_72a2919d2ac65850;
        // offset: 0x1310, bitSize: 0x1
        bool hash_59272f59f19c342a;
        // offset: 0x1311, bitSize: 0x1
        bool hash_429521a79f75a327;
        // offset: 0x1312, bitSize: 0x1
        bool hash_69f74281cacb8a0f;
        // offset: 0x1313, bitSize: 0x1
        bool hash_5d65f5abcdad24fe;
        // offset: 0x1314, bitSize: 0x1
        bool deathpointloss;
        // offset: 0x1315, bitSize: 0x1
        bool disablecustomcac;
        // offset: 0x1316, bitSize: 0x1
        bool hash_1260b639348098e3;
        // offset: 0x1317, bitSize: 0x1
        bool rebootplayers;
        // offset: 0x1318, bitSize: 0x1
        bool oldschoolmode;
        // offset: 0x1319, bitSize: 0x1
        bool hash_4238acad9fa0f317;
        // offset: 0x131a, bitSize: 0x1
        bool allowfinalkillcam;
        // offset: 0x131b, bitSize: 0x1
        bool allowspectating;
        // offset: 0x131c, bitSize: 0x1
        bool usabledynents;
        // offset: 0x131d, bitSize: 0x1
        bool playintrocinematics;
        // offset: 0x131e, bitSize: 0x1
        bool hash_564289af24e283db;
        // offset: 0x131f, bitSize: 0x1
        bool hash_11e1a0adebdab01a;
        // offset: 0x1320, bitSize: 0x1
        bool hash_7379657f823bfef9;
        // offset: 0x1321, bitSize: 0x1
        bool hash_47df56af71e4df3;
        // offset: 0x1322, bitSize: 0x1
        bool hash_282689f7ec6d7d32;
        // offset: 0x1323, bitSize: 0x1
        bool hash_4ce6b119f5979182;
        // offset: 0x1324, bitSize: 0x1
        bool spawnselectenabled;
        // offset: 0x1325, bitSize: 0x1
        bool loadoutkillstreaksenabled;
        // offset: 0x1326, bitSize: 0x1
        bool pregameitemvoteenabled;
        // offset: 0x1327, bitSize: 0x1
        bool hash_38d6e4d91bbc82ee;
        // offset: 0x1328, bitSize: 0x1
        bool hash_2ffb09b25b95a125;
        // offset: 0x1329, bitSize: 0x1
        bool hash_5684ea266d45be15;
        // offset: 0x132a, bitSize: 0x1
        bool hash_7f273e367f26254;
        // offset: 0x132b, bitSize: 0x1
        bool hash_65c535aa5198d01d;
        // offset: 0x132c, bitSize: 0x1
        bool disallowprone;
        // offset: 0x132d, bitSize: 0x1
        bool hash_3cc3acd830a8eef;
        // offset: 0x132e, bitSize: 0x1
        bool moveplayers;
        // offset: 0x132f, bitSize: 0x1
        bool hash_6945105793e31c56;
        // offset: 0x1330, bitSize: 0x1
        bool disabletacinsert;
        // offset: 0x1331, bitSize: 0x1
        bool voipdeadhearallliving;
        // offset: 0x1332, bitSize: 0x1
        bool hash_4ca06c610b5d53bd;
        // offset: 0x1333, bitSize: 0x1
        bool killstreaksgivegamescore;
        // offset: 0x1334, bitSize: 0x1
        bool hash_1cc3f98086d6f5dd;
        // offset: 0x1335, bitSize: 0x1
        bool flagcapturerateincrease;
        // offset: 0x1336, bitSize: 0x1
        bool use_doors;
        // offset: 0x1337, bitSize: 0x1
        bool pvponly;
        // offset: 0x1338, bitSize: 0x1
        bool forwardspawnteamspecificspawns;
        // offset: 0x1339, bitSize: 0x1
        bool hash_50b56d2635cbb74b;
        // offset: 0x133a, bitSize: 0x1
        bool hash_68fd4f67ea4b4ff8;
        // offset: 0x133b, bitSize: 0x1
        bool forwardspawntakesdamage;
        // offset: 0x133c, bitSize: 0x1
        bool allowingameteamchange;
        // offset: 0x133d, bitSize: 0x1
        bool hash_297b69789a6283b4;
        // offset: 0x133e, bitSize: 0x1
        bool deathzones;
        // offset: 0x133f, bitSize: 0x1
        bool classicmode;
        // offset: 0x1340, bitSize: 0x1
        bool hash_12c8b36832284f70;
        // offset: 0x1341, bitSize: 0x1
        bool voipdeadhearteamliving;
        // offset: 0x1342, bitSize: 0x1
        bool hash_51f7292117d41790;
        // offset: 0x1343, bitSize: 0x1
        bool capdecay;
        // offset: 0x1344, bitSize: 0x1
        bool hash_7bcb76b8a52c35e;
        // offset: 0x1345, bitSize: 0x1
        bool hash_5c90286f1514c76;
        // offset: 0x1346, bitSize: 0x1
        bool hash_b87383d5497a826;
        // offset: 0x1347, bitSize: 0x1
        bool voipeveryonehearseveryone;
        // offset: 0x1348, bitSize: 0x1
        bool hash_460af55ecefb11f;
        // offset: 0x1349, bitSize: 0x1
        bool hash_4f4a73f236278ba8;
        // offset: 0x134a, bitSize: 0x1
        bool hash_5f76e2d55ad861ed;
        // offset: 0x134b, bitSize: 0x1
        bool hash_52a73dca4cbce600;
        // offset: 0x134c, bitSize: 0x1
        bool laststandfinishing;
        // offset: 0x134d, bitSize: 0x1
        bool hash_201c1769d32b30d3;
    };

    // root: bitSize: 0x1350, members: 1

    // offset: 0x0, bitSize: 0x1350(0x26a Byte(s))
    gametypesettings gametypesettings;
};

version hash_32d679f360350c2b {
    // enums ..... 0 (0x0)
    // structs ... 2 (0x2)
    // header bit size .. 5120 (0x1400)
    // header byte size . 640 (0x280)

    // bitSize: 0x1350, members: 582
    struct gametypesettings {
        // offset: 0x0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> timelimit;
        // offset: 0x8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_25740f686a5cfc7e;
        // offset: 0x18, bitSize: 0x8(0x1 Byte(s))
        uint:4 playerkillsmax;
        // offset: 0x20, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_129fca5e3a00477f;
        // offset: 0x30, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_444634d99df7a661;
        // offset: 0x38, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperdeath;
        // offset: 0x40, bitSize: 0x8(0x1 Byte(s))
        uint:2 forceradar;
        // offset: 0x48, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkill;
        // offset: 0x50, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playersprinttime;
        // offset: 0x58, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> capturetime;
        // offset: 0x68, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleroundswon;
        // offset: 0x70, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_9fe0e2b1a7f556;
        // offset: 0x80, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayerdefensive;
        // offset: 0x88, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_35e9fc8eee6881e0;
        // offset: 0x90, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_613785a993624133;
        // offset: 0x98, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandrevivehealth;
        // offset: 0xa0, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierdestroytime;
        // offset: 0xc0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostattackhelicopter;
        // offset: 0xc8, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_6024ee628431415;
        // offset: 0xd8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostbow;
        // offset: 0xe0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostuav;
        // offset: 0xe8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperweaponkill;
        // offset: 0xf0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_722d8dafb62ce7fe;
        // offset: 0x108, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_4a10303376ed2d10;
        // offset: 0x110, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_68b825c95acb9218;
        // offset: 0x120, bitSize: 0x8(0x1 Byte(s))
        uint:6 maxteamplayers;
        // offset: 0x128, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandhealth;
        // offset: 0x130, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6b2754246df1bc7c;
        // offset: 0x140, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_46f0ae82f5c2f7d4;
        // offset: 0x150, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> maxusers;
        // offset: 0x160, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_1ca4d65346568642;
        // offset: 0x170, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_312848239629f5b9;
        // offset: 0x180, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1d77a77db928f695;
        // offset: 0x190, bitSize: 0x8(0x1 Byte(s))
        uint:4 draftrequiredclients;
        // offset: 0x198, bitSize: 0x8(0x1 Byte(s))
        uint:3 friendlyfiretype;
        // offset: 0x1a0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7fee0559953eec6;
        // offset: 0x1b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_28005bb885acabc3;
        // offset: 0x1c8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4725de6afe873b87;
        // offset: 0x1d8, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_16184f2fd4014b39;
        // offset: 0x1e0, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspermeleekill;
        // offset: 0x1e8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_51f121252f1d8c7f;
        // offset: 0x1f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_32da91b78e54e7b5;
        // offset: 0x200, bitSize: 0x8(0x1 Byte(s))
        uint:6 preroundperiod;
        // offset: 0x208, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_56f6d77da3124af2;
        // offset: 0x218, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowertimefactor;
        // offset: 0x220, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_62a4fd40810cb61;
        // offset: 0x228, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_56a31bddd92a64dc;
        // offset: 0x230, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> laststandrevivetime;
        // offset: 0x238, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_429d353f0be087a5;
        // offset: 0x250, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpunishcount;
        // offset: 0x258, bitSize: 0x8(0x1 Byte(s))
        uint:7 maxplayers;
        // offset: 0x260, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53fd9a3e9a0e78e1;
        // offset: 0x270, bitSize: 0x20(0x4 Byte(s))
        int forwardspawnhealth;
        // offset: 0x290, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5598d36d6b224c9a;
        // offset: 0x2a0, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnteamkilledpenalty;
        // offset: 0x2a8, bitSize: 0x8(0x1 Byte(s))
        uint:3 ballcount;
        // offset: 0x2b0, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_6ae29c8144cb7659;
        // offset: 0x2b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c82ffb472a21cac;
        // offset: 0x2c8, bitSize: 0x8(0x1 Byte(s))
        uint:3 gunselection;
        // offset: 0x2d0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_53c1e74b2d385c17;
        // offset: 0x2e8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_17cc26f74ef911e0;
        // offset: 0x2f0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_67d54bbc52811921;
        // offset: 0x2f8, bitSize: 0x8(0x1 Byte(s))
        fixed<5,2> hash_1614b9cbe0df6f75;
        // offset: 0x300, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_35104d2d5fd22ce7;
        // offset: 0x318, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1441f7ad44e1cfd4;
        // offset: 0x320, bitSize: 0x8(0x1 Byte(s))
        uint:7 killstreakdeathpenaltyindividualearn;
        // offset: 0x328, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_c0beb1e5a80c25c;
        // offset: 0x330, bitSize: 0x8(0x1 Byte(s))
        uint:5 prematchrequirement;
        // offset: 0x338, bitSize: 0x8(0x1 Byte(s))
        uint:3 spectatetype;
        // offset: 0x340, bitSize: 0x8(0x1 Byte(s))
        fixed<6,2> hash_57fe6337297bcce9;
        // offset: 0x348, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_1df445b9d1af641f;
        // offset: 0x350, bitSize: 0x8(0x1 Byte(s))
        uint:3 randomobjectivelocations;
        // offset: 0x358, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_55db4a8546a13c79;
        // offset: 0x370, bitSize: 0x8(0x1 Byte(s))
        uint:5 roundwinlimit;
        // offset: 0x378, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_ecf2124e9108fc4;
        // offset: 0x380, bitSize: 0x10(0x2 Byte(s))
        uint:10 antiboostdistance;
        // offset: 0x390, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_115a3410d9dbf98d;
        // offset: 0x3a0, bitSize: 0x10(0x2 Byte(s))
        uint:15 roundscorelimit;
        // offset: 0x3b0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_320a5028d10f305a;
        // offset: 0x3c8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> hash_154db5a1b2e9d757;
        // offset: 0x3d8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> bulletdamagescalar;
        // offset: 0x3e0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1df1e1139a1a4eb8;
        // offset: 0x3f8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_79c708d50a12e336;
        // offset: 0x408, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_49d61407873849a2;
        // offset: 0x410, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostontimeamount;
        // offset: 0x418, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> defusetime;
        // offset: 0x420, bitSize: 0x8(0x1 Byte(s))
        fixed<8,4> teamkillreducedpenalty;
        // offset: 0x428, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxallocation;
        // offset: 0x430, bitSize: 0x8(0x1 Byte(s))
        uint:4 carryscore;
        // offset: 0x438, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c8636144ad47ac9;
        // offset: 0x448, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_53cd45b387951ca1;
        // offset: 0x458, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_6e49ce7bbe6d3f1f;
        // offset: 0x460, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> killeventscoremultiplier;
        // offset: 0x468, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_2efff808b2701aa5;
        // offset: 0x478, bitSize: 0x8(0x1 Byte(s))
        uint:6 ticketslostontimeinterval;
        // offset: 0x480, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartexplosivedelay;
        // offset: 0x488, bitSize: 0x8(0x1 Byte(s))
        uint:2 cleandepositrotation;
        // offset: 0x490, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_21754b274494502e;
        // offset: 0x4a0, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_1311b008d2f6dbc1;
        // offset: 0x4b0, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_5f7c18fecb2a1a44;
        // offset: 0x4c0, bitSize: 0x8(0x1 Byte(s))
        uint:7 idleflagresettime;
        // offset: 0x4c8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreheropowergainfactor;
        // offset: 0x4d0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1f65f0a6f0eb3110;
        // offset: 0x4e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2a02614601829003;
        // offset: 0x4f8, bitSize: 0x8(0x1 Byte(s))
        uint:4 setbacks;
        // offset: 0x500, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1db05f3e34ccaaaf;
        // offset: 0x510, bitSize: 0x20(0x4 Byte(s))
        int hash_6b808ab4016cb1e1;
        // offset: 0x530, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1efac5fcdfa4f;
        // offset: 0x540, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1eeac5fcdf89c;
        // offset: 0x550, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f1ac5fcdfdb5;
        // offset: 0x560, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1f0ac5fcdfc02;
        // offset: 0x570, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_70e1ebac5fcdf383;
        // offset: 0x580, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_20a83071685f7bd9;
        // offset: 0x598, bitSize: 0x10(0x2 Byte(s))
        fixed<12,4> trm_maxheight;
        // offset: 0x5a8, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_2b88c6ac064e9c59;
        // offset: 0x5b0, bitSize: 0x8(0x1 Byte(s))
        uint:4 maxplayofthematchevents;
        // offset: 0x5b8, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostwarmachine;
        // offset: 0x5c0, bitSize: 0x10(0x2 Byte(s))
        uint:15 scorelimit;
        // offset: 0x5d0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> cratecapturetime;
        // offset: 0x5d8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4a6ef8940f4cbb83;
        // offset: 0x5e0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eeb8cb5c84b1939;
        // offset: 0x5f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3eba3289161fd45f;
        // offset: 0x600, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_22c53ddb2cb67f13;
        // offset: 0x610, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_9c266bdf9cad7fa;
        // offset: 0x620, bitSize: 0x8(0x1 Byte(s))
        uint:3 killpointsinenemyprotectedzone;
        // offset: 0x628, bitSize: 0x10(0x2 Byte(s))
        uint:14 playersprintrecoverydelayoverridems;
        // offset: 0x638, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6e2b8452b08a545c;
        // offset: 0x640, bitSize: 0x10(0x2 Byte(s))
        uint:10 playermaxhealth;
        // offset: 0x650, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1833c853bfe78ffc;
        // offset: 0x658, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_5e8818f69d557ad2;
        // offset: 0x670, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_3e13b420d6773b4c;
        // offset: 0x678, bitSize: 0x10(0x2 Byte(s))
        uint:16 hash_718b497c5205e74b;
        // offset: 0x688, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostgunship;
        // offset: 0x690, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_42b840c668fd2c85;
        // offset: 0x6a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_44f0b1c6b2d3b6f8;
        // offset: 0x6b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5dc620c6c0919d82;
        // offset: 0x6c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2aea36c6a4135574;
        // offset: 0x6d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_32c16dc6a8490e81;
        // offset: 0x6e0, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_66a7d866327081eb;
        // offset: 0x6e8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5f116b8cfbdbc3fe;
        // offset: 0x6f8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsforsurvivalbonus;
        // offset: 0x700, bitSize: 0x190(0x32 Byte(s)), array:0x32(hti:0xffff)
        uint:5 maxuniquerolesperteam[50];
        // offset: 0x890, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_7adb62a64c6d963;
        // offset: 0x898, bitSize: 0x8(0x1 Byte(s))
        uint:3 objectivepingtime;
        // offset: 0x8a0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_271177b8b4cfcf15;
        // offset: 0x8b8, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamkillspawndelay;
        // offset: 0x8c0, bitSize: 0x8(0x1 Byte(s))
        uint:8 carrierarmor;
        // offset: 0x8c8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_51a2ab391c340e03;
        // offset: 0x8e0, bitSize: 0x8(0x1 Byte(s))
        uint:7 ticketslostondeath;
        // offset: 0x8e8, bitSize: 0x8(0x1 Byte(s))
        uint:2 hash_47d4aa0161d78e15;
        // offset: 0x8f0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostremotemissile;
        // offset: 0x8f8, bitSize: 0x10(0x2 Byte(s))
        uint:9 carriermovespeed;
        // offset: 0x908, bitSize: 0x8(0x1 Byte(s))
        uint:5 boottime;
        // offset: 0x910, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_652bc8c2577ec788;
        // offset: 0x920, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_72852fc1d977c3a0;
        // offset: 0x930, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_314c2f7312bde4af;
        // offset: 0x938, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_5d5f4ee35c9977c7;
        // offset: 0x940, bitSize: 0x8(0x1 Byte(s))
        uint:3 roundstartfriendlyfiretype;
        // offset: 0x948, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagdecaytime;
        // offset: 0x950, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_76f686986e1a58b;
        // offset: 0x960, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_vs_bots;
        // offset: 0x968, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_26b08269156ca0e5;
        // offset: 0x970, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamnumlives;
        // offset: 0x978, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> planttime;
        // offset: 0x980, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_6141cddd96ac214e;
        // offset: 0x988, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnprotectiontime;
        // offset: 0x990, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7353bbc24d72ec59;
        // offset: 0x9a0, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_573034b3252cb4e3;
        // offset: 0x9b8, bitSize: 0x10(0x2 Byte(s))
        uint:10 inactivitykick;
        // offset: 0x9c8, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointspersecondarykill;
        // offset: 0x9d0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team3;
        // offset: 0x9d8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team4;
        // offset: 0x9e0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team5;
        // offset: 0x9e8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team6;
        // offset: 0x9f0, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team7;
        // offset: 0x9f8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team8;
        // offset: 0xa00, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team9;
        // offset: 0xa08, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerhealthregentime;
        // offset: 0xa10, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5d40d1f9fb7f;
        // offset: 0xa20, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5c40d1f9f9cc;
        // offset: 0xa30, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5f40d1f9fee5;
        // offset: 0xa40, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5e40d1f9fd32;
        // offset: 0xa50, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_12ce5940d1f9f4b3;
        // offset: 0xa60, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4f00f3f568c284af;
        // offset: 0xa70, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7f190c8839d3f05c;
        // offset: 0xa80, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_3a4691a853585241;
        // offset: 0xa88, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> destroytime;
        // offset: 0xa98, bitSize: 0x8(0x1 Byte(s))
        uint:7 flagrespawntime;
        // offset: 0xaa0, bitSize: 0x8(0x1 Byte(s))
        uint:2 shutdowndamage;
        // offset: 0xaa8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> gameadvertisementruletimeleft;
        // offset: 0xab0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_6a48bbfb703d5c9c;
        // offset: 0xab8, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_239b391c77ebf8c1;
        // offset: 0xac0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7c33e5bebaf05afb;
        // offset: 0xad0, bitSize: 0x10(0x2 Byte(s))
        uint:11 objectivehealth;
        // offset: 0xae0, bitSize: 0x8(0x1 Byte(s))
        uint:6 spawnsuicidepenalty;
        // offset: 0xae8, bitSize: 0x8(0x1 Byte(s))
        uint:2 robotspeed;
        // offset: 0xaf0, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_467be34402dad274;
        // offset: 0xaf8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_68e3f54e05f57d85;
        // offset: 0xb00, bitSize: 0x8(0x1 Byte(s))
        uint:7 servermsec;
        // offset: 0xb08, bitSize: 0x8(0x1 Byte(s))
        uint:6 hash_410c5c7c1e60b534;
        // offset: 0xb10, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_212cc2b5b360189c;
        // offset: 0xb18, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostminigun;
        // offset: 0xb20, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_55a92a1d652b5edc;
        // offset: 0xb28, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_552338718ec6d2df;
        // offset: 0xb30, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_1c0040943c216593;
        // offset: 0xb38, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxplayereventsperminute;
        // offset: 0xb48, bitSize: 0x10(0x2 Byte(s))
        uint:10 leaderbonus;
        // offset: 0xb58, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_5c918cbf75e16116;
        // offset: 0xb60, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_51e989796c38cd87;
        // offset: 0xb68, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostnapalm;
        // offset: 0xb70, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_119bd2704c238e5;
        // offset: 0xb88, bitSize: 0x8(0x1 Byte(s))
        uint:2 enemycarriervisible;
        // offset: 0xb90, bitSize: 0x10(0x2 Byte(s))
        uint:9 autodestroytime;
        // offset: 0xba0, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkillconfirmed;
        // offset: 0xba8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_4e4352bd1aaeedfe;
        // offset: 0xbb0, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_507e1eb7f297d872;
        // offset: 0xbc0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_342835495fca42bb;
        // offset: 0xbd0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7cada6c0936f259b;
        // offset: 0xbe0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> waverespawndelay;
        // offset: 0xbe8, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1974892bc7266bab;
        // offset: 0xbf8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_567db38226658dbf;
        // offset: 0xc00, bitSize: 0x8(0x1 Byte(s))
        uint:6 prematchperiod;
        // offset: 0xc08, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostsentry;
        // offset: 0xc10, bitSize: 0x8(0x1 Byte(s))
        uint:6 teamkillscore;
        // offset: 0xc18, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_102aeddad113f70c;
        // offset: 0xc20, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_4635a26c94b56725;
        // offset: 0xc28, bitSize: 0x8(0x1 Byte(s))
        uint:3 platooncount;
        // offset: 0xc30, bitSize: 0x20(0x4 Byte(s))
        int deployablebarrierhealth;
        // offset: 0xc50, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_71da377e373bc755;
        // offset: 0xc68, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_38a8f601ab8388d0;
        // offset: 0xc78, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarykill;
        // offset: 0xc80, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperheadshot;
        // offset: 0xc88, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_75ff4383212c5111;
        // offset: 0xc98, bitSize: 0x8(0x1 Byte(s))
        uint:7 hash_1908ad844e6c3e37;
        // offset: 0xca0, bitSize: 0x8(0x1 Byte(s))
        uint:4 pregameitemmaxvotes;
        // offset: 0xca8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_50029ecff5e7d383;
        // offset: 0xcb8, bitSize: 0x8(0x1 Byte(s))
        uint:7 playernumlives;
        // offset: 0xcc0, bitSize: 0x8(0x1 Byte(s))
        uint:2 infectionmode;
        // offset: 0xcc8, bitSize: 0x8(0x1 Byte(s))
        uint:5 gameadvertisementruleround;
        // offset: 0xcd0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_7d53c8bab3db8122;
        // offset: 0xce0, bitSize: 0x8(0x1 Byte(s))
        fixed<7,1> incrementalspawndelay;
        // offset: 0xce8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_allies;
        // offset: 0xcf0, bitSize: 0x8(0x1 Byte(s))
        uint:5 maxsuicidesbeforekick;
        // offset: 0xcf8, bitSize: 0x8(0x1 Byte(s))
        uint:7 gameadvertisementrulescorepercent;
        // offset: 0xd00, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_3e76ce42036815cc;
        // offset: 0xd10, bitSize: 0x10(0x2 Byte(s))
        int:10 hash_3ccd8e1bf3864fa1;
        // offset: 0xd20, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_130d127406ab976e;
        // offset: 0xd30, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostairpatrol;
        // offset: 0xd38, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcoststraferun;
        // offset: 0xd40, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostcuav;
        // offset: 0xd48, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostrcxd;
        // offset: 0xd50, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostvtol;
        // offset: 0xd58, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_40c4b447a58a7da4;
        // offset: 0xd68, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> hash_47e9736d437be7c8;
        // offset: 0xd70, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3e1bb1840c4ab667;
        // offset: 0xd80, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_1ea82b1edff2a13b;
        // offset: 0xd90, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3c31c3f19402e1f;
        // offset: 0xda0, bitSize: 0x8(0x1 Byte(s))
        uint:8 laststandtimer;
        // offset: 0xda8, bitSize: 0x8(0x1 Byte(s))
        uint:6 reboottime;
        // offset: 0xdb0, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscorepercleandeposit;
        // offset: 0xdb8, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extrasegmenttime;
        // offset: 0xdc8, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_2081d79c44b2cefb;
        // offset: 0xde0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_6773166f56896564;
        // offset: 0xdf0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_1725e90b73841702;
        // offset: 0xe00, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_273d049136c76afa;
        // offset: 0xe10, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_2849b6cf7317ab1b;
        // offset: 0xe18, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_5a4fde688cbf1a01;
        // offset: 0xe28, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_c72ac3d026ca4eb;
        // offset: 0xe38, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_83f11b8abac148f;
        // offset: 0xe40, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_22fa97d05461a3e8;
        // offset: 0xe58, bitSize: 0x8(0x1 Byte(s))
        uint:4 pickuptime;
        // offset: 0xe60, bitSize: 0x10(0x2 Byte(s))
        fixed<14,7> hash_451245a24412d90f;
        // offset: 0xe70, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_3d5a87878a3bef28;
        // offset: 0xe80, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_552467c143123c1c;
        // offset: 0xe88, bitSize: 0x20(0x4 Byte(s))
        int hash_64727525f5957d06;
        // offset: 0xea8, bitSize: 0x20(0x4 Byte(s))
        int hash_1f3285ddee84620c;
        // offset: 0xec8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_2596f9e3d6e26ac9;
        // offset: 0xed0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostchoppergunner;
        // offset: 0xed8, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_3767386c050fa0eb;
        // offset: 0xee0, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerrespawndelay;
        // offset: 0xee8, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_34ee1a1a574eaa4c;
        // offset: 0xef8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> spawntraptriggertime;
        // offset: 0xf00, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_26ff1d48be83e46c;
        // offset: 0xf18, bitSize: 0x8(0x1 Byte(s))
        uint:8 maxplayeroffensive;
        // offset: 0xf20, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> hash_527f80b77f20b8c8;
        // offset: 0xf30, bitSize: 0x8(0x1 Byte(s))
        uint:2 allowhitmarkers;
        // offset: 0xf38, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_d8215d30d36fa59;
        // offset: 0xf50, bitSize: 0x10(0x2 Byte(s))
        uint:15 hash_67ee1d8d7938baa1;
        // offset: 0xf60, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_2c02a63d2c336b30;
        // offset: 0xf70, bitSize: 0x10(0x2 Byte(s))
        fixed<9,3> maxobjectiveeventsperminute;
        // offset: 0xf80, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_47dd11084763c671;
        // offset: 0xf90, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4201d2890785fb14;
        // offset: 0xfa0, bitSize: 0x8(0x1 Byte(s))
        uint:5 pointsperprimarygrenadekill;
        // offset: 0xfa8, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_team10;
        // offset: 0xfb0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostcarepackage;
        // offset: 0xfb8, bitSize: 0x8(0x1 Byte(s))
        uint:7 bonuslivesforcapturingzone;
        // offset: 0xfc0, bitSize: 0x10(0x2 Byte(s))
        uint:14 hash_39d008c4c2044bc7;
        // offset: 0xfd0, bitSize: 0x8(0x1 Byte(s))
        uint:7 startplayers;
        // offset: 0xfd8, bitSize: 0x8(0x1 Byte(s))
        uint:3 hash_7d590533364efa87;
        // offset: 0xfe0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_252e760b41f3d94a;
        // offset: 0xfe8, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> roundstartkillstreakdelay;
        // offset: 0xff0, bitSize: 0x8(0x1 Byte(s))
        uint:5 totalkillsmax;
        // offset: 0xff8, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundswitch;
        // offset: 0x1000, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> playerobjectiveheldrespawndelay;
        // offset: 0x1008, bitSize: 0x8(0x1 Byte(s))
        uint:4 teamkillpenalty;
        // offset: 0x1010, bitSize: 0x8(0x1 Byte(s))
        fixed<8,2> hash_18bdaa4b00863e9d;
        // offset: 0x1018, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_12ef93fbb06b1e2c;
        // offset: 0x1030, bitSize: 0x8(0x1 Byte(s))
        uint:5 weaponcount;
        // offset: 0x1038, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_1706d4b546538286;
        // offset: 0x1050, bitSize: 0x8(0x1 Byte(s))
        uint:7 weapontimer;
        // offset: 0x1058, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> overtimetimelimit;
        // offset: 0x1068, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_96215e6d55c4b2b;
        // offset: 0x1078, bitSize: 0x10(0x2 Byte(s))
        uint:9 hash_6cd27d9716989cf5;
        // offset: 0x1088, bitSize: 0x8(0x1 Byte(s))
        uint:7 cleandepositonlinetime;
        // offset: 0x1090, bitSize: 0x8(0x1 Byte(s))
        fixed<7,3> hash_4c7c8c4bd1b2a58b;
        // offset: 0x1098, bitSize: 0x8(0x1 Byte(s))
        uint:7 drafttime;
        // offset: 0x10a0, bitSize: 0x8(0x1 Byte(s))
        uint:8 hash_ed89addfaaafe48;
        // offset: 0x10a8, bitSize: 0x8(0x1 Byte(s))
        uint:7 objectivespawntime;
        // offset: 0x10b0, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostreconplane;
        // offset: 0x10b8, bitSize: 0x8(0x1 Byte(s))
        uint:2 killcammode;
        // offset: 0x10c0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,4> killcamtime;
        // offset: 0x10d0, bitSize: 0x8(0x1 Byte(s))
        uint:4 throwscore;
        // offset: 0x10d8, bitSize: 0x8(0x1 Byte(s))
        uint:4 deposittime;
        // offset: 0x10e0, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> extratime;
        // offset: 0x10f0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_54d908d6273c8893;
        // offset: 0x1100, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6269eb986d22cd37;
        // offset: 0x1108, bitSize: 0x8(0x1 Byte(s))
        fixed<8,6> scoreequipmentpowertimefactor;
        // offset: 0x1110, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostarmor;
        // offset: 0x1118, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_36ea712d503b054c;
        // offset: 0x1130, bitSize: 0x8(0x1 Byte(s))
        uint:7 teamcount;
        // offset: 0x1138, bitSize: 0x20(0x4 Byte(s))
        int hash_7f38d88521da4c79;
        // offset: 0x1158, bitSize: 0x8(0x1 Byte(s))
        uint:5 hash_24c718cc0c526c38;
        // offset: 0x1160, bitSize: 0x8(0x1 Byte(s))
        uint:4 roundlimit;
        // offset: 0x1168, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_531cc9c63ae86a93;
        // offset: 0x1178, bitSize: 0x8(0x1 Byte(s))
        uint:8 momentumcostartillery;
        // offset: 0x1180, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_b30022a9302a5a6;
        // offset: 0x1190, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_25d72112144c5ea0;
        // offset: 0x11a0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_39cfd81268504039;
        // offset: 0x11b0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_208071125a2b0b0b;
        // offset: 0x11c0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_52ef5b12764c8139;
        // offset: 0x11d0, bitSize: 0x10(0x2 Byte(s))
        uint:10 hash_4bf2241272d06bec;
        // offset: 0x11e0, bitSize: 0x8(0x1 Byte(s))
        uint:2 charactercustomization;
        // offset: 0x11e8, bitSize: 0x20(0x4 Byte(s))
        int hash_af4ad3316f0ded6;
        // offset: 0x1208, bitSize: 0x8(0x1 Byte(s))
        uint:4 hash_437a986f8d24d7eb;
        // offset: 0x1210, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_16182516e10d0250;
        // offset: 0x1228, bitSize: 0x8(0x1 Byte(s))
        uint:2 bot_difficulty_axis;
        // offset: 0x1230, bitSize: 0x18(0x3 Byte(s))
        uint:17 hash_7344dfa399020a06;
        // offset: 0x1248, bitSize: 0x8(0x1 Byte(s))
        fixed<8,7> hash_6e2abf2cc40e03f1;
        // offset: 0x1250, bitSize: 0x8(0x1 Byte(s))
        uint:5 teamscoreperkilldenied;
        // offset: 0x1258, bitSize: 0x10(0x2 Byte(s))
        fixed<10,2> bombtimer;
        // offset: 0x1268, bitSize: 0x1
        bool delayplayer;
        // offset: 0x1269, bitSize: 0x1
        bool hash_196e997a082443a9;
        // offset: 0x126a, bitSize: 0x1
        bool voipdeadchatwithdead;
        // offset: 0x126b, bitSize: 0x1
        bool voipdeadchatwithteam;
        // offset: 0x126c, bitSize: 0x1
        bool hash_729930c3c52653c3;
        // offset: 0x126d, bitSize: 0x1
        bool useembleminsteadoffactionicon;
        // offset: 0x126e, bitSize: 0x1
        bool draftenabled;
        // offset: 0x126f, bitSize: 0x1
        bool hash_85fbdce1f1a0290;
        // offset: 0x1270, bitSize: 0x1
        bool hash_3a15393c2e90e121;
        // offset: 0x1271, bitSize: 0x1
        bool hash_1d708093c2664515;
        // offset: 0x1272, bitSize: 0x1
        bool overtimebestteam;
        // offset: 0x1273, bitSize: 0x1
        bool droppedtagrespawn;
        // offset: 0x1274, bitSize: 0x1
        bool hash_1e71b5ce1cd845b3;
        // offset: 0x1275, bitSize: 0x1
        bool hash_25aaa9a29a90534c;
        // offset: 0x1276, bitSize: 0x1
        bool voipkillershearvictim;
        // offset: 0x1277, bitSize: 0x1
        bool hash_7c0dcff6ffb1e348;
        // offset: 0x1278, bitSize: 0x1
        bool hash_4091f2d0019b1f4a;
        // offset: 0x1279, bitSize: 0x1
        bool hash_5183877c20675325;
        // offset: 0x127a, bitSize: 0x1
        bool deathcirclerespawn;
        // offset: 0x127b, bitSize: 0x1
        bool hash_2683a105198a7407;
        // offset: 0x127c, bitSize: 0x1
        bool presetclassesperteam;
        // offset: 0x127d, bitSize: 0x1
        bool hash_361f7fe066281093;
        // offset: 0x127e, bitSize: 0x1
        bool hash_232892d3b0a6240c;
        // offset: 0x127f, bitSize: 0x1
        bool bot_autofill_allies;
        // offset: 0x1280, bitSize: 0x1
        bool hash_2c55a3723cd9fdf9;
        // offset: 0x1281, bitSize: 0x1
        bool forcegibbing;
        // offset: 0x1282, bitSize: 0x1
        bool hash_5c57222bb95a06cb;
        // offset: 0x1283, bitSize: 0x1
        bool hardcoremode;
        // offset: 0x1284, bitSize: 0x1
        bool hash_135829cbab367329;
        // offset: 0x1285, bitSize: 0x1
        bool hash_495b64bd935bf7b;
        // offset: 0x1286, bitSize: 0x1
        bool useitemspawns;
        // offset: 0x1287, bitSize: 0x1
        bool hash_77b7734750cd75e9;
        // offset: 0x1288, bitSize: 0x1
        bool silentplant;
        // offset: 0x1289, bitSize: 0x1
        bool hash_5711f3e42924a635;
        // offset: 0x128a, bitSize: 0x1
        bool drafteveryround;
        // offset: 0x128b, bitSize: 0x1
        bool timepauseswheninzone;
        // offset: 0x128c, bitSize: 0x1
        bool hash_4b55d75b8d779e4;
        // offset: 0x128d, bitSize: 0x1
        bool hash_549abfbb3665d526;
        // offset: 0x128e, bitSize: 0x1
        bool scoreperplayer;
        // offset: 0x128f, bitSize: 0x1
        bool ekiaresetondeath;
        // offset: 0x1290, bitSize: 0x1
        bool kothmode;
        // offset: 0x1291, bitSize: 0x1
        bool hash_70c6890214831a58;
        // offset: 0x1292, bitSize: 0x1
        bool hash_62665aebde32c8ae;
        // offset: 0x1293, bitSize: 0x1
        bool hash_18c053cae82c1167;
        // offset: 0x1294, bitSize: 0x1
        bool hash_6cf5f53d1fbb1066;
        // offset: 0x1295, bitSize: 0x1
        bool hash_3d23923f9c9757cd;
        // offset: 0x1296, bitSize: 0x1
        bool decayprogress;
        // offset: 0x1297, bitSize: 0x1
        bool playerqueuedrespawn;
        // offset: 0x1298, bitSize: 0x1
        bool onlyexecution;
        // offset: 0x1299, bitSize: 0x1
        bool scorestreaksbarebones;
        // offset: 0x129a, bitSize: 0x1
        bool cumulativeroundscores;
        // offset: 0x129b, bitSize: 0x1
        bool hash_3ad2212223b76a72;
        // offset: 0x129c, bitSize: 0x1
        bool voipdeadhearkiller;
        // offset: 0x129d, bitSize: 0x1
        bool bot_autofill_team10;
        // offset: 0x129e, bitSize: 0x1
        bool hash_6e6991561babdd7e;
        // offset: 0x129f, bitSize: 0x1
        bool bot_autofill_axis;
        // offset: 0x12a0, bitSize: 0x1
        bool skiplaststand;
        // offset: 0x12a1, bitSize: 0x1
        bool hash_1f3825ba2a669400;
        // offset: 0x12a2, bitSize: 0x1
        bool usespawngroups;
        // offset: 0x12a3, bitSize: 0x1
        bool hash_b76e50c1202aa23;
        // offset: 0x12a4, bitSize: 0x1
        bool disablethirdpersonspectating;
        // offset: 0x12a5, bitSize: 0x1
        bool platoonassignment;
        // offset: 0x12a6, bitSize: 0x1
        bool hash_7daf08db0c451ad1;
        // offset: 0x12a7, bitSize: 0x1
        bool allowlaststandforactiveclients;
        // offset: 0x12a8, bitSize: 0x1
        bool hash_5cc3c32813d17039;
        // offset: 0x12a9, bitSize: 0x1
        bool allowbattlechatter;
        // offset: 0x12aa, bitSize: 0x1
        bool fowrevealenabled;
        // offset: 0x12ab, bitSize: 0x1
        bool hash_4e8cafe9a4470898;
        // offset: 0x12ac, bitSize: 0x1
        bool hash_7647d0e9a45eeca6;
        // offset: 0x12ad, bitSize: 0x1
        bool hash_3cd7f961322b6b7;
        // offset: 0x12ae, bitSize: 0x1
        bool hash_3293bf384d3c1e2f;
        // offset: 0x12af, bitSize: 0x1
        bool hash_5fcc23190f135afe;
        // offset: 0x12b0, bitSize: 0x1
        bool hash_35376812247cdc3;
        // offset: 0x12b1, bitSize: 0x1
        bool disablecontracts;
        // offset: 0x12b2, bitSize: 0x1
        bool hash_2b1f40bc711c41f3;
        // offset: 0x12b3, bitSize: 0x1
        bool hash_75d44b1542e3edf9;
        // offset: 0x12b4, bitSize: 0x1
        bool hash_5462586bdce0346e;
        // offset: 0x12b5, bitSize: 0x1
        bool gameobjectscontestedmajoritywins;
        // offset: 0x12b6, bitSize: 0x1
        bool hash_2f0beae14bf17810;
        // offset: 0x12b7, bitSize: 0x1
        bool autoheal;
        // offset: 0x12b8, bitSize: 0x1
        bool allowannouncer;
        // offset: 0x12b9, bitSize: 0x1
        bool disallowaimslowdown;
        // offset: 0x12ba, bitSize: 0x1
        bool hash_435c853b64e3175e;
        // offset: 0x12bb, bitSize: 0x1
        bool hash_5538f8f7758641b4;
        // offset: 0x12bc, bitSize: 0x1
        bool bot_autofill_team3;
        // offset: 0x12bd, bitSize: 0x1
        bool bot_autofill_team4;
        // offset: 0x12be, bitSize: 0x1
        bool bot_autofill_team5;
        // offset: 0x12bf, bitSize: 0x1
        bool bot_autofill_team6;
        // offset: 0x12c0, bitSize: 0x1
        bool bot_autofill_team7;
        // offset: 0x12c1, bitSize: 0x1
        bool bot_autofill_team8;
        // offset: 0x12c2, bitSize: 0x1
        bool bot_autofill_team9;
        // offset: 0x12c3, bitSize: 0x1
        bool hash_35e6177743dac957;
        // offset: 0x12c4, bitSize: 0x1
        bool hash_14fd184091ff1af;
        // offset: 0x12c5, bitSize: 0x1
        bool vehiclesenabled;
        // offset: 0x12c6, bitSize: 0x1
        bool decaycapturedzones;
        // offset: 0x12c7, bitSize: 0x1
        bool neutralzone;
        // offset: 0x12c8, bitSize: 0x1
        bool boastallowcam;
        // offset: 0x12c9, bitSize: 0x1
        bool hash_7cc354dd83013a47;
        // offset: 0x12ca, bitSize: 0x1
        bool onlyheadshots;
        // offset: 0x12cb, bitSize: 0x1
        bool competitivesettings;
        // offset: 0x12cc, bitSize: 0x1
        bool flagcapturecondition;
        // offset: 0x12cd, bitSize: 0x1
        bool hash_1ca94a3bd057f19f;
        // offset: 0x12ce, bitSize: 0x1
        bool hash_1346ebfec214d724;
        // offset: 0x12cf, bitSize: 0x1
        bool hash_7b822d42a5d1643d;
        // offset: 0x12d0, bitSize: 0x1
        bool hash_4be46e952d54e9a2;
        // offset: 0x12d1, bitSize: 0x1
        bool hash_1ebf97988141c498;
        // offset: 0x12d2, bitSize: 0x1
        bool hash_25fa292c7fc561b8;
        // offset: 0x12d3, bitSize: 0x1
        bool flagcanbeneutralized;
        // offset: 0x12d4, bitSize: 0x1
        bool hash_241e17e13da23de2;
        // offset: 0x12d5, bitSize: 0x1
        bool hash_4057701fc646435d;
        // offset: 0x12d6, bitSize: 0x1
        bool hash_6881c7cab0dcef39;
        // offset: 0x12d7, bitSize: 0x1
        bool vehiclestimed;
        // offset: 0x12d8, bitSize: 0x1
        bool pregamedraftenabled;
        // offset: 0x12d9, bitSize: 0x1
        bool hash_6f03247bbcf52311;
        // offset: 0x12da, bitSize: 0x1
        bool hash_6143c4e1e18f08fd;
        // offset: 0x12db, bitSize: 0x1
        bool teamkillpointloss;
        // offset: 0x12dc, bitSize: 0x1
        bool hash_322026c0342869d1;
        // offset: 0x12dd, bitSize: 0x1
        bool hash_1e346fbfe02f1294;
        // offset: 0x12de, bitSize: 0x1
        bool hash_3724e6bfee03ce6e;
        // offset: 0x12df, bitSize: 0x1
        bool hash_497a2cbff8af4988;
        // offset: 0x12e0, bitSize: 0x1
        bool hash_50776bbffc2b6c6d;
        // offset: 0x12e1, bitSize: 0x1
        bool hash_55fc1cb09246fe30;
        // offset: 0x12e2, bitSize: 0x1
        bool hash_1d5943e61e65eeae;
        // offset: 0x12e3, bitSize: 0x1
        bool hash_656fd3c508d1d33e;
        // offset: 0x12e4, bitSize: 0x1
        bool hash_29f3630e8e542a0a;
        // offset: 0x12e5, bitSize: 0x1
        bool hash_c6a2e6c3e86125a;
        // offset: 0x12e6, bitSize: 0x1
        bool hash_2ebcaa6630ba8fd5;
        // offset: 0x12e7, bitSize: 0x1
        bool perksenabled;
        // offset: 0x12e8, bitSize: 0x1
        bool hash_33bc6781006ae83d;
        // offset: 0x12e9, bitSize: 0x1
        bool hash_655d904d5995891f;
        // offset: 0x12ea, bitSize: 0x1
        bool hash_6c21d8e8de53e9c3;
        // offset: 0x12eb, bitSize: 0x1
        bool hash_2966662989c3484c;
        // offset: 0x12ec, bitSize: 0x1
        bool allowmapscripting;
        // offset: 0x12ed, bitSize: 0x1
        bool robotshield;
        // offset: 0x12ee, bitSize: 0x1
        bool hash_62e3e33ec68db92f;
        // offset: 0x12ef, bitSize: 0x1
        bool hash_2a76bf462f4c2f50;
        // offset: 0x12f0, bitSize: 0x1
        bool disableattachments;
        // offset: 0x12f1, bitSize: 0x1
        bool disablecompass;
        // offset: 0x12f2, bitSize: 0x1
        bool disableweapondrop;
        // offset: 0x12f3, bitSize: 0x1
        bool hash_1eaa149676ef52d9;
        // offset: 0x12f4, bitSize: 0x1
        bool escalationenabled;
        // offset: 0x12f5, bitSize: 0x1
        bool hash_a564dde6ee3c657;
        // offset: 0x12f6, bitSize: 0x1
        bool hash_7b8284382bffc197;
        // offset: 0x12f7, bitSize: 0x1
        bool hash_25368755636c91a4;
        // offset: 0x12f8, bitSize: 0x1
        bool disableclassselection;
        // offset: 0x12f9, bitSize: 0x1
        bool hash_290721f8deb6ef5e;
        // offset: 0x12fa, bitSize: 0x1
        bool hash_48670d9509071424;
        // offset: 0x12fb, bitSize: 0x1
        bool autoteambalance;
        // offset: 0x12fc, bitSize: 0x1
        bool hash_4bdd1bd86b610871;
        // offset: 0x12fd, bitSize: 0x1
        bool hash_69df7093cd32f107;
        // offset: 0x12fe, bitSize: 0x1
        bool hash_7c0acf14fb1f4080;
        // offset: 0x12ff, bitSize: 0x1
        bool allowplayofthematch;
        // offset: 0x1300, bitSize: 0x1
        bool allowprone;
        // offset: 0x1301, bitSize: 0x1
        bool scoreresetondeath;
        // offset: 0x1302, bitSize: 0x1
        bool hash_452a45e599d3a575;
        // offset: 0x1303, bitSize: 0x1
        bool playerforcerespawn;
        // offset: 0x1304, bitSize: 0x1
        bool hash_7098f146a35b8468;
        // offset: 0x1305, bitSize: 0x1
        bool multibomb;
        // offset: 0x1306, bitSize: 0x1
        bool hash_4dd37bf6da89131;
        // offset: 0x1307, bitSize: 0x1
        bool hash_29fd164e7ff1abb0;
        // offset: 0x1308, bitSize: 0x1
        bool hash_104f124f56f0f20a;
        // offset: 0x1309, bitSize: 0x1
        bool hash_2560dae45cc112e3;
        // offset: 0x130a, bitSize: 0x1
        bool hash_50a46f60312cf53c;
        // offset: 0x130b, bitSize: 0x1
        bool hash_23b110691971b537;
        // offset: 0x130c, bitSize: 0x1
        bool deathcircle;
        // offset: 0x130d, bitSize: 0x1
        bool hash_4669425278875e14;
        // offset: 0x130e, bitSize: 0x1
        bool boastenabled;
        // offset: 0x130f, bitSize: 0x1
        bool hash_5002b8a3b8882084;
        // offset: 0x1310, bitSize: 0x1
        bool hash_3513cf8b4287cdd7;
        // offset: 0x1311, bitSize: 0x1
        bool hash_72a2919d2ac65850;
        // offset: 0x1312, bitSize: 0x1
        bool hash_59272f59f19c342a;
        // offset: 0x1313, bitSize: 0x1
        bool hash_429521a79f75a327;
        // offset: 0x1314, bitSize: 0x1
        bool hash_69f74281cacb8a0f;
        // offset: 0x1315, bitSize: 0x1
        bool hash_5d65f5abcdad24fe;
        // offset: 0x1316, bitSize: 0x1
        bool deathpointloss;
        // offset: 0x1317, bitSize: 0x1
        bool disablecustomcac;
        // offset: 0x1318, bitSize: 0x1
        bool hash_1260b639348098e3;
        // offset: 0x1319, bitSize: 0x1
        bool rebootplayers;
        // offset: 0x131a, bitSize: 0x1
        bool oldschoolmode;
        // offset: 0x131b, bitSize: 0x1
        bool hash_4238acad9fa0f317;
        // offset: 0x131c, bitSize: 0x1
        bool allowfinalkillcam;
        // offset: 0x131d, bitSize: 0x1
        bool allowspectating;
        // offset: 0x131e, bitSize: 0x1
        bool usabledynents;
        // offset: 0x131f, bitSize: 0x1
        bool playintrocinematics;
        // offset: 0x1320, bitSize: 0x1
        bool hash_564289af24e283db;
        // offset: 0x1321, bitSize: 0x1
        bool hash_11e1a0adebdab01a;
        // offset: 0x1322, bitSize: 0x1
        bool hash_7379657f823bfef9;
        // offset: 0x1323, bitSize: 0x1
        bool hash_47df56af71e4df3;
        // offset: 0x1324, bitSize: 0x1
        bool hash_282689f7ec6d7d32;
        // offset: 0x1325, bitSize: 0x1
        bool hash_4ce6b119f5979182;
        // offset: 0x1326, bitSize: 0x1
        bool spawnselectenabled;
        // offset: 0x1327, bitSize: 0x1
        bool loadoutkillstreaksenabled;
        // offset: 0x1328, bitSize: 0x1
        bool pregameitemvoteenabled;
        // offset: 0x1329, bitSize: 0x1
        bool hash_38d6e4d91bbc82ee;
        // offset: 0x132a, bitSize: 0x1
        bool hash_2ffb09b25b95a125;
        // offset: 0x132b, bitSize: 0x1
        bool hash_5684ea266d45be15;
        // offset: 0x132c, bitSize: 0x1
        bool hash_7f273e367f26254;
        // offset: 0x132d, bitSize: 0x1
        bool hash_65c535aa5198d01d;
        // offset: 0x132e, bitSize: 0x1
        bool disallowprone;
        // offset: 0x132f, bitSize: 0x1
        bool hash_3cc3acd830a8eef;
        // offset: 0x1330, bitSize: 0x1
        bool moveplayers;
        // offset: 0x1331, bitSize: 0x1
        bool hash_6945105793e31c56;
        // offset: 0x1332, bitSize: 0x1
        bool disabletacinsert;
        // offset: 0x1333, bitSize: 0x1
        bool voipdeadhearallliving;
        // offset: 0x1334, bitSize: 0x1
        bool hash_4ca06c610b5d53bd;
        // offset: 0x1335, bitSize: 0x1
        bool killstreaksgivegamescore;
        // offset: 0x1336, bitSize: 0x1
        bool hash_1cc3f98086d6f5dd;
        // offset: 0x1337, bitSize: 0x1
        bool flagcapturerateincrease;
        // offset: 0x1338, bitSize: 0x1
        bool use_doors;
        // offset: 0x1339, bitSize: 0x1
        bool pvponly;
        // offset: 0x133a, bitSize: 0x1
        bool forwardspawnteamspecificspawns;
        // offset: 0x133b, bitSize: 0x1
        bool hash_50b56d2635cbb74b;
        // offset: 0x133c, bitSize: 0x1
        bool hash_68fd4f67ea4b4ff8;
        // offset: 0x133d, bitSize: 0x1
        bool forwardspawntakesdamage;
        // offset: 0x133e, bitSize: 0x1
        bool allowingameteamchange;
        // offset: 0x133f, bitSize: 0x1
        bool hash_297b69789a6283b4;
        // offset: 0x1340, bitSize: 0x1
        bool deathzones;
        // offset: 0x1341, bitSize: 0x1
        bool classicmode;
        // offset: 0x1342, bitSize: 0x1
        bool hash_12c8b36832284f70;
        // offset: 0x1343, bitSize: 0x1
        bool voipdeadhearteamliving;
        // offset: 0x1344, bitSize: 0x1
        bool hash_51f7292117d41790;
        // offset: 0x1345, bitSize: 0x1
        bool capdecay;
        // offset: 0x1346, bitSize: 0x1
        bool hash_7bcb76b8a52c35e;
        // offset: 0x1347, bitSize: 0x1
        bool hash_5c90286f1514c76;
        // offset: 0x1348, bitSize: 0x1
        bool hash_b87383d5497a826;
        // offset: 0x1349, bitSize: 0x1
        bool voipeveryonehearseveryone;
        // offset: 0x134a, bitSize: 0x1
        bool hash_460af55ecefb11f;
        // offset: 0x134b, bitSize: 0x1
        bool hash_4f4a73f236278ba8;
        // offset: 0x134c, bitSize: 0x1
        bool hash_5f76e2d55ad861ed;
        // offset: 0x134d, bitSize: 0x1
        bool hash_52a73dca4cbce600;
        // offset: 0x134e, bitSize: 0x1
        bool laststandfinishing;
        // offset: 0x134f, bitSize: 0x1
        bool hash_201c1769d32b30d3;
    };

    // root: bitSize: 0x1350, members: 1

    // offset: 0x0, bitSize: 0x1350(0x26a Byte(s))
    gametypesettings gametypesettings;
};

