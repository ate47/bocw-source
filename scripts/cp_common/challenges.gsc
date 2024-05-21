// Atian COD Tools GSC CW decompiler test
#using script_35ae72be7b4fec10;
#using script_32399001bdb550da;
#using scripts\cp_common\achievements.gsc;
#using scripts\cp_common\util.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\challenges_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace challenges;

// Namespace challenges/challenges
// Params 0, eflags: 0x5
// Checksum 0x4fc13ad9, Offset: 0x1b0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"challenges", &preinit, undefined, undefined, undefined);
}

// Namespace challenges/challenges
// Params 0, eflags: 0x6 linked
// Checksum 0xeb89c95c, Offset: 0x1f8
// Size: 0x64
function private preinit() {
    init_shared();
    callback::on_start_gametype(&start_gametype);
    level.challenges_callback_vehicledamaged = &vehicledamaged;
    level.challenges_callback_vehiclekilled = &vehiclekilled;
}

// Namespace challenges/challenges
// Params 0, eflags: 0x2 linked
// Checksum 0xb81b8bae, Offset: 0x268
// Size: 0x114
function start_gametype() {
    if (!isdefined(level.challengescallbacks)) {
        level.challengescallbacks = [];
    }
    waittillframeend();
    if (canprocesschallenges()) {
        registerchallengescallback("actorKilled", &function_6219dcd5);
        registerchallengescallback("actorDamaged", &function_f5b31539);
        registerchallengescallback("VehicleKilled", &function_8e9b2d44);
        registerchallengescallback("VehicleDamaged", &function_b7b0cce0);
    }
    callback::on_connect(&on_player_connect);
    callback::on_connect(&function_706ec529);
}

// Namespace challenges/challenges
// Params 2, eflags: 0x2 linked
// Checksum 0xa0fab79e, Offset: 0x388
// Size: 0x2c
function function_8e9b2d44(data, time) {
    function_6219dcd5(data, time);
}

// Namespace challenges/challenges
// Params 2, eflags: 0x2 linked
// Checksum 0xbfc4bc64, Offset: 0x3c0
// Size: 0x2c
function function_b7b0cce0(data, time) {
    function_f5b31539(data, time);
}

// Namespace challenges/challenges
// Params 2, eflags: 0x2 linked
// Checksum 0x935ed8da, Offset: 0x3f8
// Size: 0x14
function function_f5b31539(*data, *time) {
    
}

// Namespace challenges/challenges
// Params 2, eflags: 0x2 linked
// Checksum 0xb4004373, Offset: 0x418
// Size: 0x7c
function function_6219dcd5(data, *time) {
    player = getplayers()[0];
    if (is_true(time.var_2a0adc57)) {
        player thread function_fc664fc6(#"hash_36bacb4a6c637824", 2);
    }
}

// Namespace challenges/challenges
// Params 4, eflags: 0x2 linked
// Checksum 0x14682f91, Offset: 0x4a0
// Size: 0x196
function function_fc664fc6(challengestat, var_2c59fe94, var_21bccb49 = 1, var_cab0fdf5 = 1) {
    self notify("1989758cddd563a9");
    self endon("1989758cddd563a9");
    assert(isplayer(self));
    self endon(#"death");
    if (!isdefined(self.var_75b0a52c)) {
        self.var_75b0a52c = [];
    }
    if (!isdefined(self.var_75b0a52c[challengestat])) {
        self.var_75b0a52c[challengestat] = 0;
    }
    self.var_75b0a52c[challengestat] = self.var_75b0a52c[challengestat] + var_21bccb49;
    for (i = 0; i < var_2c59fe94; i++) {
        waitframe(2);
    }
    if ((isdefined(self.var_75b0a52c[challengestat]) ? self.var_75b0a52c[challengestat] : 0) >= var_2c59fe94) {
        self stats::function_dad108fa(challengestat, var_cab0fdf5);
    }
    self.var_75b0a52c[challengestat] = undefined;
    if (self.var_75b0a52c.size == 0) {
        self.var_75b0a52c = undefined;
    }
}

// Namespace challenges/challenges
// Params 6, eflags: 0x2 linked
// Checksum 0x1b9e534f, Offset: 0x640
// Size: 0x144
function actorkilled(einflictor, attacker, idamage, smeansofdeath, weapon = level.weaponnone, shitloc) {
    attacker endon(#"disconnect");
    data = spawnstruct();
    data.victim = self;
    data.einflictor = einflictor;
    data.attacker = attacker;
    data.idamage = idamage;
    data.smeansofdeath = smeansofdeath;
    data.weapon = weapon;
    data.shitloc = shitloc;
    data.time = gettime();
    data.victimweapon = data.victim.currentweapon;
    if (einflictor === attacker.body_shield_grenade) {
        data.var_2a0adc57 = 1;
    }
    function_ff5f9a00(data);
    data.attacker notify(#"hash_63bd9f951d975b7");
}

// Namespace challenges/challenges
// Params 1, eflags: 0x2 linked
// Checksum 0xefafec76, Offset: 0x790
// Size: 0x6c
function function_ff5f9a00(data) {
    if (isdefined(data.attacker)) {
        data.attacker endon(#"disconnect");
    }
    waitframe(1);
    util::waittillslowprocessallowed();
    level thread dochallengecallback("actorKilled", data);
}

// Namespace challenges/challenges
// Params 5, eflags: 0x2 linked
// Checksum 0x3fc7231a, Offset: 0x808
// Size: 0x10c
function actordamaged(einflictor, attacker, idamage, weapon = level.weaponnone, shitloc) {
    attacker endon(#"disconnect");
    data = spawnstruct();
    data.victim = self;
    data.einflictor = einflictor;
    data.attacker = attacker;
    data.idamage = idamage;
    data.weapon = weapon;
    data.shitloc = shitloc;
    data.time = gettime();
    data.victimweapon = data.victim.currentweapon;
    function_5e9d4ad3(data);
    data.attacker notify(#"hash_1c23cf76970db631");
}

// Namespace challenges/challenges
// Params 1, eflags: 0x2 linked
// Checksum 0xe8eb7296, Offset: 0x920
// Size: 0x6c
function function_5e9d4ad3(data) {
    if (isdefined(data.attacker)) {
        data.attacker endon(#"disconnect");
    }
    waitframe(1);
    util::waittillslowprocessallowed();
    level thread dochallengecallback("actorDamaged", data);
}

// Namespace challenges/challenges
// Params 6, eflags: 0x2 linked
// Checksum 0xd498479f, Offset: 0x998
// Size: 0x134
function vehiclekilled(einflictor, attacker, idamage, smeansofdeath, weapon, shitloc) {
    if (isdefined(level.var_e855c811)) {
        return;
    }
    if (!isdefined(weapon)) {
        weapon = level.weaponnone;
    }
    attacker endon(#"disconnect");
    data = spawnstruct();
    data.victim = self;
    data.einflictor = einflictor;
    data.attacker = attacker;
    data.idamage = idamage;
    data.smeansofdeath = smeansofdeath;
    data.weapon = weapon;
    data.shitloc = shitloc;
    data.time = gettime();
    data.victimweapon = data.victim.currentweapon;
    function_94d6aade(data);
    data.attacker notify(#"hash_56b121e50d70ac18");
}

// Namespace challenges/challenges
// Params 1, eflags: 0x2 linked
// Checksum 0xfbb61988, Offset: 0xad8
// Size: 0x6c
function function_94d6aade(data) {
    if (isdefined(data.attacker)) {
        data.attacker endon(#"disconnect");
    }
    waitframe(1);
    util::waittillslowprocessallowed();
    level thread dochallengecallback("VehicleKilled", data);
}

// Namespace challenges/challenges
// Params 5, eflags: 0x2 linked
// Checksum 0x675d284f, Offset: 0xb50
// Size: 0x10c
function vehicledamaged(einflictor, attacker, idamage, weapon = level.weaponnone, shitloc) {
    attacker endon(#"disconnect");
    data = spawnstruct();
    data.victim = self;
    data.einflictor = einflictor;
    data.attacker = attacker;
    data.idamage = idamage;
    data.weapon = weapon;
    data.shitloc = shitloc;
    data.time = gettime();
    data.victimweapon = data.victim.currentweapon;
    function_2de75dbd(data);
    data.attacker notify(#"hash_324a232de36f6e68");
}

// Namespace challenges/challenges
// Params 1, eflags: 0x2 linked
// Checksum 0x2dc0c3, Offset: 0xc68
// Size: 0x5c
function function_2de75dbd(data) {
    if (isdefined(data.attacker)) {
        data.attacker endon(#"disconnect");
    }
    waitframe(1);
    level thread dochallengecallback("VehicleDamaged", data);
}

// Namespace challenges/challenges
// Params 0, eflags: 0x2 linked
// Checksum 0x5d8862f1, Offset: 0xcd0
// Size: 0x24
function function_f901cb3c() {
    self thread function_8332bc5e("career_decorations");
}

// Namespace challenges/challenges
// Params 2, eflags: 0x2 linked
// Checksum 0x173ac382, Offset: 0xd00
// Size: 0x6c
function function_8332bc5e(statname, n_amount = 1) {
    self endon(#"disconnect");
    if (!isplayer(self)) {
        return;
    }
    self stats::function_dad108fa(statname, n_amount);
}

// Namespace challenges/challenges
// Params 0, eflags: 0x2 linked
// Checksum 0xd13a6aa1, Offset: 0xd78
// Size: 0x4c
function function_706ec529() {
    self.challenge_callback_cp = &function_81d1dce8;
    /#
        self thread function_ba92458e();
        self thread function_160aeb02();
    #/
}

/#

    // Namespace challenges/challenges
    // Params 0, eflags: 0x4
    // Checksum 0xe056980b, Offset: 0xdd0
    // Size: 0x10c
    function private function_160aeb02() {
        util::init_dvar("<unknown string>", -1, &function_5fc09844);
        var_c83485 = 36;
        for (challengeindex = 1; challengeindex <= var_c83485; challengeindex++) {
            var_6cbd4315 = tablelookup(#"gamedata/stats/cp/statsmilestones1.csv", 0, challengeindex, 4);
            if (isdefined(var_6cbd4315)) {
                var_6cbd4315 = function_9e72a96(var_6cbd4315);
                adddebugcommand("<unknown string>" + var_6cbd4315 + "<unknown string>" + challengeindex - 1 + "<unknown string>" + challengeindex + "<unknown string>");
            }
        }
    }

    // Namespace challenges/challenges
    // Params 1, eflags: 0x4
    // Checksum 0x1ff9dd48, Offset: 0xee8
    // Size: 0x7c
    function private function_5fc09844(param) {
        challengeindex = int(param.value);
        if (challengeindex >= 0) {
            setdvar(#"hash_2295f8bff1842026", -1);
            level thread function_9635f1e6(challengeindex);
        }
    }

#/

// Namespace challenges/challenges
// Params 1, eflags: 0x2 linked
// Checksum 0xe62daa64, Offset: 0xf70
// Size: 0x32
function function_f752d6a9(challenge_index) {
    return tablelookup(#"gamedata/stats/cp/statsmilestones1.csv", 0, challenge_index, 5);
}

// Namespace challenges/challenges
// Params 7, eflags: 0x2 linked
// Checksum 0xef504b0e, Offset: 0xfb0
// Size: 0x64
function function_81d1dce8(*rewardxp, *maxval, *row, *tablenumber, challengetype, *itemindex, challengeindex) {
    if (itemindex != 7) {
        return;
    }
    function_9635f1e6(challengeindex);
}

// Namespace challenges/challenges
// Params 1, eflags: 0x6 linked
// Checksum 0xd8617194, Offset: 0x1020
// Size: 0xbc
function private function_9635f1e6(challengeindex) {
    if (!isdefined(level.var_464843f)) {
        level.var_464843f = [];
    } else if (!isarray(level.var_464843f)) {
        level.var_464843f = array(level.var_464843f);
    }
    if (!isinarray(level.var_464843f, challengeindex)) {
        level.var_464843f[level.var_464843f.size] = challengeindex;
    }
    level thread function_65b0a754();
}

// Namespace challenges/challenges
// Params 0, eflags: 0x6 linked
// Checksum 0xe3a4ab91, Offset: 0x10e8
// Size: 0x384
function private function_65b0a754() {
    assert(isdefined(level.var_464843f));
    if (level flag::get(#"hash_4c113937297760d8")) {
        return;
    }
    level flag::set(#"hash_4c113937297760d8");
    while (level.var_464843f.size > 0) {
        challengeindex = level.var_464843f[0];
        arrayremoveindex(level.var_464843f, 0);
        waitframe(1);
        var_21e736f9 = tablelookup(#"gamedata/stats/cp/statsmilestones1.csv", 0, challengeindex, 5);
        challengexp = int(tablelookup(#"gamedata/stats/cp/statsmilestones1.csv", 0, challengeindex, 6));
        challengedesc = tablelookup(#"gamedata/stats/cp/statsmilestones1.csv", 0, challengeindex, 12);
        if (namespace_61e6d095::exists(#"hash_166066a38ca1f36d")) {
            namespace_61e6d095::remove(#"hash_166066a38ca1f36d");
        }
        namespace_61e6d095::create(#"hash_166066a38ca1f36d", #"hash_367f58e18cde1c9e");
        namespace_61e6d095::function_d3c3e5c3(#"hash_166066a38ca1f36d", [#"dialog_tree", #"interactive_map", #"computer"]);
        namespace_61e6d095::function_9ade1d9b(#"hash_166066a38ca1f36d", "text", hash(var_21e736f9));
        namespace_61e6d095::function_9ade1d9b(#"hash_166066a38ca1f36d", "desc", hash(challengedesc));
        namespace_61e6d095::function_9ade1d9b(#"hash_166066a38ca1f36d", "count", challengexp);
        player = getplayers()[0];
        player playsound(#"hash_9422601830d30a9");
        wait(6);
        namespace_61e6d095::remove(#"hash_166066a38ca1f36d");
    }
    level flag::clear(#"hash_4c113937297760d8");
}

// Namespace challenges/challenges
// Params 7, eflags: 0x0
// Checksum 0x7f12b112, Offset: 0x1478
// Size: 0x634
function function_7b4387e1(*rewardxp, maxval, row, tablenumber, challengetype, itemindex, challengeindex) {
    self function_18b65152();
    if (challengeindex == 565) {
        self givedecoration("cp_medal_all_accolades");
    }
    tier = int(tablelookup(#"gamedata/stats/cp/statsmilestones1.csv", 0, challengeindex, 1));
    switch (challengetype) {
    case 0:
        challengename = function_f752d6a9(challengeindex);
        switch (challengename) {
        case #"hash_20faf480b8f9146a":
            break;
        case #"hash_381ccf00b363923d":
            self givedecoration("cp_medal_all_calling_cards");
            break;
        }
        break;
    case 1:
        if (itemindex != 0) {
            self stats::set_stat(#"itemstats", itemindex, #"hash_798921f18e351b13", tier, 1);
            self achievements::function_c3541c14(tier);
        }
        break;
    case 4:
        var_9327960d = tablelookup(#"gamedata/stats/cp/statsmilestones1.csv", 0, challengeindex, 13);
        self stats::set_stat(#"attachments", var_9327960d, #"hash_798921f18e351b13", tier, 1);
        break;
    }
    /#
        if (getdvarint(#"debugchallenges", 0) != 0) {
            var_c4e9517b = tablenumber + 1;
            tablename = #"gamedata/stats/cp/statsmilestones" + var_c4e9517b + "<unknown string>";
            var_eb67c133 = tablelookupcolumnforrow(tablename, row, 5);
            if (var_eb67c133 === #"hash_4a80d584aac2e7d0") {
                return;
            }
            challengestring = makelocalizedstring(var_eb67c133);
            challengetier = int(tablelookupcolumnforrow(tablename, row, 1));
            matchrecordlogchallengecomplete(self, var_c4e9517b, challengetier, itemindex, var_eb67c133);
            challengetiernext = int(tablelookupcolumnforrow(tablename, row + 1, 1));
            tiertext = challengetier + 1;
            var_33b913f5 = "<unknown string>";
            if (challengetype == 0) {
                var_33b913f5 = "<unknown string>";
            } else if (challengetype == 1) {
                iteminfo = getunlockableiteminfofromindex(itemindex, 1);
                if (isdefined(iteminfo)) {
                    var_33b913f5 = makelocalizedstring(iteminfo.displayname);
                }
            }
            if (issubstr(challengestring, "<unknown string>")) {
                if (challengetype == 3) {
                    challengestring = strreplace(challengestring, "<unknown string>", "<unknown string>" + function_60394171(#"challenge", 3, itemindex));
                }
            }
            if (issubstr(challengestring, "<unknown string>")) {
                challengestring = strreplace(challengestring, "<unknown string>", "<unknown string>" + tiertext);
            }
            msg = var_33b913f5 + "<unknown string>" + challengestring + "<unknown string>" + maxval;
            if (getdvarint(#"debugchallenges", 0) == 1) {
                iprintlnbold(msg);
            } else if (getdvarint(#"debugchallenges", 0) == 2) {
                self iprintlnbold(msg);
            } else if (getdvarint(#"debugchallenges", 0) == 3) {
                iprintln(msg);
            }
            println(msg);
        }
    #/
}

// Namespace challenges/challenges
// Params 0, eflags: 0x2 linked
// Checksum 0xa75407be, Offset: 0x1ab8
// Size: 0x2e4
function function_18b65152() {
    if (sessionmodeisonlinegame()) {
        return;
    }
    var_80b995df = self stats::get_stat(#"playerstatslist", #"hash_1154ba4defc33345", #"statvalue");
    if (var_80b995df > 0) {
        var_e1617d73 = tablelookuprowcount(#"gamedata/stats/cp/statsmilestones1.csv");
        var_c603a6cc = [];
        for (i = 0; i < var_e1617d73 - 1; i++) {
            var_c603a6cc = tablelookuprow(#"gamedata/stats/cp/statsmilestones1.csv", i);
            var_2a9d0df5 = var_c603a6cc[3];
            if (var_2a9d0df5 == "global") {
                challenge_stat_name = var_c603a6cc[4];
                if (isdefined(challenge_stat_name) && challenge_stat_name != "") {
                    var_85321896 = self stats::get_stat(#"playerstatslist", challenge_stat_name, #"statvalue");
                    if (var_c603a6cc[10] != "") {
                        var_a15c6663 = int(var_c603a6cc[2]);
                        if (var_85321896 >= var_a15c6663) {
                            var_f220a4fb = "";
                            var_f220a4fb = var_c603a6cc[16];
                            switch (var_f220a4fb) {
                            case #"missions":
                                self stats::function_dad108fa(#"hash_13eb46cb3c4c5613", 1);
                                break;
                            case #"tott":
                                self stats::function_dad108fa(#"hash_34e0fb49ecfca3e4", 1);
                                break;
                            case #"career":
                                self stats::function_dad108fa(#"hash_2a83a140198f2c69", 1);
                                break;
                            }
                        }
                    }
                }
            }
        }
        self stats::set_stat(#"playerstatslist", #"hash_1154ba4defc33345", #"statvalue", 0);
    }
}

/#

    // Namespace challenges/challenges
    // Params 1, eflags: 0x0
    // Checksum 0xdebe9b9f, Offset: 0x1da8
    // Size: 0x3c
    function function_6d4abfcd(n_time) {
        self endon(#"disconnect");
        wait(n_time);
        self thread util::function_2e0c1f7d();
    }

    // Namespace challenges/challenges
    // Params 0, eflags: 0x0
    // Checksum 0xfd35e04, Offset: 0x1df0
    // Size: 0x80
    function function_ba92458e() {
        while (true) {
            if (getdvarint(#"hash_557c55de257d4066", 0) == 1) {
                self function_1b7d307e();
                setdvar(#"hash_557c55de257d4066", 0);
            }
            wait(0.1);
        }
    }

    // Namespace challenges/challenges
    // Params 0, eflags: 0x0
    // Checksum 0x5f3fd636, Offset: 0x1e78
    // Size: 0x348
    function function_1b7d307e() {
        var_2418c386 = [];
        array::add(var_2418c386, "<unknown string>");
        array::add(var_2418c386, "<unknown string>");
        array::add(var_2418c386, "<unknown string>");
        array::add(var_2418c386, "<unknown string>");
        array::add(var_2418c386, "<unknown string>");
        array::add(var_2418c386, "<unknown string>");
        array::add(var_2418c386, "<unknown string>");
        array::add(var_2418c386, "<unknown string>");
        array::add(var_2418c386, "<unknown string>");
        array::add(var_2418c386, "<unknown string>");
        array::add(var_2418c386, "<unknown string>");
        array::add(var_2418c386, "<unknown string>");
        array::add(var_2418c386, "<unknown string>");
        array::add(var_2418c386, "<unknown string>");
        array::add(var_2418c386, "<unknown string>");
        array::add(var_2418c386, "<unknown string>");
        array::add(var_2418c386, "<unknown string>");
        array::add(var_2418c386, "<unknown string>");
        array::add(var_2418c386, "<unknown string>");
        array::add(var_2418c386, "<unknown string>");
        foreach (challenge in var_2418c386) {
            self stats::function_dad108fa(challenge, 1000);
            iprintln("<unknown string>" + challenge);
            wait(1);
        }
    }

#/
