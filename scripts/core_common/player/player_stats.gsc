// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\weapons.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\player\player_loadout.gsc;

#namespace stats;

/#

    // Namespace stats/player_stats
    // Params 2, eflags: 0x0
    // Checksum 0x8fc63e32, Offset: 0xf0
    // Size: 0x104
    function function_d92cb558(result, vararg) {
        if (!isdefined(result)) {
            pathstr = ishash(vararg[0]) ? function_9e72a96(vararg[0]) : vararg[0];
            if (!isdefined(pathstr)) {
                return;
            }
            for (i = 1; i < vararg.size; i++) {
                pathstr = pathstr + "<unknown string>" + (ishash(vararg[i]) ? function_9e72a96(vararg[i]) : vararg[i]);
            }
            println("<unknown string>" + pathstr);
        }
    }

#/

// Namespace stats/player_stats
// Params 0, eflags: 0x2 linked
// Checksum 0xe8d8728d, Offset: 0x200
// Size: 0xc0
function function_f94325d3() {
    assert(isplayer(self), "<unknown string>");
    if (sessionmodeiscampaigngame()) {
        return true;
    }
    if (sessionmodeiszombiesgame()) {
        if (level.gametype === #"doa") {
            return true;
        }
    }
    if (isbot(self) || is_true(level.disablestattracking)) {
        return false;
    }
    return true;
}

// Namespace stats/player_stats
// Params 0, eflags: 0x2 linked
// Checksum 0x3c4d70d5, Offset: 0x2c8
// Size: 0x6c
function function_ca76d4a() {
    var_c282197b = gettime() + int(30 * 1000);
    while (gettime() < var_c282197b) {
        if (function_2b9d6412()) {
            break;
        }
        waitframe(1);
    }
    level.var_87d7c3ab = 1;
}

// Namespace stats/player_stats
// Params 0, eflags: 0x2 linked
// Checksum 0x58cc5d3d, Offset: 0x340
// Size: 0xe
function function_8921af36() {
    return level.var_12323003;
}

// Namespace stats/player_stats
// Params 1, eflags: 0x42 linked
// Checksum 0xc8a466ea, Offset: 0x358
// Size: 0xce
function get_stat(...) {
    assert(vararg.size > 0);
    if (vararg.size == 0) {
        return 0;
    }
    result = 0;
    if (isdefined(self)) {
        assert(isplayer(self), "<unknown string>");
        result = self readstat(0, vararg);
        /#
            function_d92cb558(result, vararg);
        #/
    }
    if (!isdefined(result)) {
        result = 0;
    }
    return result;
}

// Namespace stats/player_stats
// Params 1, eflags: 0x42 linked
// Checksum 0x211a12ff, Offset: 0x430
// Size: 0xce
function function_e3eb9a8b(...) {
    assert(vararg.size > 0);
    if (vararg.size == 0) {
        return 0;
    }
    result = 0;
    if (isdefined(self)) {
        assert(isplayer(self), "<unknown string>");
        result = self readstat(1, vararg);
        /#
            function_d92cb558(result, vararg);
        #/
    }
    if (!isdefined(result)) {
        result = 0;
    }
    return result;
}

// Namespace stats/player_stats
// Params 1, eflags: 0x42 linked
// Checksum 0xdbb8b10, Offset: 0x508
// Size: 0xce
function function_1bb1c57c(...) {
    assert(vararg.size > 0);
    if (vararg.size == 0) {
        return 0;
    }
    result = 0;
    if (isdefined(self)) {
        assert(isplayer(self), "<unknown string>");
        result = self readstat(2, vararg);
        /#
            function_d92cb558(result, vararg);
        #/
    }
    if (!isdefined(result)) {
        result = 0;
    }
    return result;
}

// Namespace stats/player_stats
// Params 1, eflags: 0x40
// Checksum 0x4739b23a, Offset: 0x5e0
// Size: 0xc0
function function_6d50f14b(...) {
    assert(vararg.size > 0);
    if (vararg.size == 0) {
        return 0;
    }
    result = 0;
    if (isdefined(self)) {
        assert(isplayer(self), "<unknown string>");
        result = self readstat(3, vararg);
        /#
            function_d92cb558(result, vararg);
        #/
    }
    return result;
}

// Namespace stats/player_stats
// Params 1, eflags: 0x42 linked
// Checksum 0xc552f0cd, Offset: 0x6a8
// Size: 0xc0
function function_ff8f4f17(...) {
    assert(vararg.size > 0);
    if (vararg.size == 0) {
        return 0;
    }
    result = 0;
    if (isdefined(self)) {
        assert(isplayer(self), "<unknown string>");
        result = self readstat(4, vararg);
        /#
            function_d92cb558(result, vararg);
        #/
    }
    return result;
}

// Namespace stats/player_stats
// Params 1, eflags: 0x42 linked
// Checksum 0x4e638b49, Offset: 0x770
// Size: 0x16a
function set_stat(...) {
    assert(!is_true(level.var_87d7c3ab));
    assert(vararg.size > 1);
    if (vararg.size <= 1) {
        return 0;
    }
    if (!function_f94325d3()) {
        return 0;
    }
    result = 0;
    if (isdefined(self)) {
        assert(isplayer(self), "<unknown string>");
        value = vararg[vararg.size - 1];
        arrayremoveindex(vararg, vararg.size - 1);
        result = self writestat(0, vararg, value);
        /#
            function_d92cb558(result, vararg);
        #/
    }
    return is_true(result);
}

// Namespace stats/player_stats
// Params 1, eflags: 0x42 linked
// Checksum 0xe0bec7f3, Offset: 0x8e8
// Size: 0x16a
function function_505387a6(...) {
    assert(!is_true(level.var_87d7c3ab));
    assert(vararg.size > 1);
    if (vararg.size <= 1) {
        return 0;
    }
    if (!function_f94325d3()) {
        return 0;
    }
    result = 0;
    if (isdefined(self)) {
        assert(isplayer(self), "<unknown string>");
        value = vararg[vararg.size - 1];
        arrayremoveindex(vararg, vararg.size - 1);
        result = self writestat(1, vararg, value);
        /#
            function_d92cb558(result, vararg);
        #/
    }
    return is_true(result);
}

// Namespace stats/player_stats
// Params 1, eflags: 0x42 linked
// Checksum 0xe65f30c0, Offset: 0xa60
// Size: 0x172
function inc_stat(...) {
    assert(!is_true(level.var_87d7c3ab));
    assert(vararg.size > 1);
    if (vararg.size <= 1) {
        return;
    }
    if (!function_f94325d3()) {
        return;
    }
    assert(isplayer(self), "<unknown string>");
    if (!isplayer(self)) {
        return;
    }
    value = vararg[vararg.size - 1];
    arrayremoveindex(vararg, vararg.size - 1);
    result = self incrementstat(0, vararg, value);
    /#
        function_d92cb558(result, vararg);
    #/
    return is_true(result);
}

// Namespace stats/player_stats
// Params 1, eflags: 0x42 linked
// Checksum 0xbbe877c2, Offset: 0xbe0
// Size: 0x18a
function function_f5859f81(...) {
    assert(!is_true(level.var_87d7c3ab));
    assert(vararg.size > 1);
    if (vararg.size <= 1) {
        return;
    }
    if (!function_f94325d3()) {
        return;
    }
    player = self;
    assert(isplayer(player), "<unknown string>");
    if (!isdefined(player) || !isplayer(player)) {
        return;
    }
    value = vararg[vararg.size - 1];
    arrayremoveindex(vararg, vararg.size - 1);
    result = player incrementstat(1, vararg, value);
    /#
        function_d92cb558(result, vararg);
    #/
    return is_true(result);
}

// Namespace stats/player_stats
// Params 2, eflags: 0x4
// Checksum 0xb8e46aa7, Offset: 0xd78
// Size: 0x104
function private function_e6106f3b(statname, value) {
    self set_stat(#"playerstatsbygametype", function_8921af36(), statname, #"statvalue", value);
    self set_stat(#"playerstatsbygametype", function_8921af36(), statname, #"challengevalue", value);
    self set_stat(#"playerstatslist", statname, #"statvalue", value);
    self set_stat(#"playerstatslist", statname, #"challengevalue", value);
}

// Namespace stats/player_stats
// Params 2, eflags: 0x4
// Checksum 0xf41910c0, Offset: 0xe88
// Size: 0x70
function private function_1d354b96(statname, value) {
    var_44becfa9 = self inc_stat(#"playerstatslist", statname, #"statvalue", value);
    self addgametypestat(statname, value);
    return var_44becfa9;
}

// Namespace stats/player_stats
// Params 1, eflags: 0x2 linked
// Checksum 0xcde1527, Offset: 0xf00
// Size: 0x52
function function_ed81f25e(statname) {
    return self get_stat(#"playerstatsbygametype", function_8921af36(), statname, #"statvalue");
}

// Namespace stats/player_stats
// Params 2, eflags: 0x2 linked
// Checksum 0x1b5ed2ec, Offset: 0xf60
// Size: 0x78
function function_baa25a23(statname, value) {
    if (!function_f94325d3()) {
        return false;
    }
    self set_stat(#"playerstatsbygametype", function_8921af36(), statname, #"statvalue", value);
    return true;
}

// Namespace stats/player_stats
// Params 2, eflags: 0x2 linked
// Checksum 0xae80737, Offset: 0xfe0
// Size: 0x48
function function_d40764f3(statname, value) {
    if (!function_f94325d3()) {
        return false;
    }
    self addgametypestat(statname, value);
    return true;
}

// Namespace stats/player_stats
// Params 2, eflags: 0x2 linked
// Checksum 0x6c67158a, Offset: 0x1030
// Size: 0x78
function function_cc215323(statname, value) {
    if (!function_f94325d3()) {
        return false;
    }
    self inc_stat(#"playerstatsbygametype", function_8921af36(), statname, #"statvalue", value);
    return true;
}

// Namespace stats/player_stats
// Params 1, eflags: 0x2 linked
// Checksum 0x2c6ecfe6, Offset: 0x10b0
// Size: 0x6e
function function_a2261724(weapon) {
    statweapon = isdefined(weapon.statname) ? getweapon(weapon.statname) : undefined;
    return isdefined(statweapon) && statweapon != level.weaponnone ? statweapon : weapon;
}

// Namespace stats/player_stats
// Params 1, eflags: 0x2 linked
// Checksum 0xe3b36bf3, Offset: 0x1128
// Size: 0x20c
function function_a431be09(weapon) {
    statweapon = function_a2261724(weapon);
    loadout_slot_index = self loadout::function_8435f729(statweapon);
    if (loadout_slot_index === "primarygrenade" || loadout_slot_index === "secondarygrenade" || loadout_slot_index === "specialgrenade") {
        weaponname = function_3f64434(statweapon);
        self function_622feb0d(weaponname, #"destructions", 1);
        self function_6fb0b113(weaponname, #"hash_98b8582b08abfa5");
        return;
    }
    if (isdefined(level.iskillstreakweapon) && [[ level.iskillstreakweapon ]](statweapon) && isdefined(level.get_killstreak_for_weapon_for_stats)) {
        killstreak = [[ level.get_killstreak_for_weapon_for_stats ]](statweapon);
        if (killstreak === "jetfighter") {
            return;
        }
        self function_8fb23f94(killstreak, "destructions", 1);
        self function_b04e7184(killstreak, #"hash_98b8582b08abfa5");
        return;
    }
    self function_561716e6(statweapon.name, #"destroyed", 1);
    self function_80099ca1(statweapon.name, #"hash_36be6b672cd9dda3");
}

// Namespace stats/player_stats
// Params 2, eflags: 0x2 linked
// Checksum 0xa98ede17, Offset: 0x1340
// Size: 0x42
function function_b2c11cc(weapon, statname) {
    return self get_stat(#"hash_3713686a5fc7b39e", weapon, statname, #"statvalue");
}

// Namespace stats/player_stats
// Params 3, eflags: 0x2 linked
// Checksum 0x682097c1, Offset: 0x1390
// Size: 0x68
function function_53e7d4a5(weapon, statname, value) {
    if (!function_f94325d3()) {
        return false;
    }
    self set_stat(#"hash_3713686a5fc7b39e", weapon, statname, #"statvalue", value);
    return true;
}

// Namespace stats/player_stats
// Params 3, eflags: 0x2 linked
// Checksum 0x32dc4c2e, Offset: 0x1400
// Size: 0x68
function function_561716e6(weapon, statname, value) {
    if (!function_f94325d3()) {
        return false;
    }
    self inc_stat(#"hash_3713686a5fc7b39e", weapon, statname, #"statvalue", value);
    return true;
}

// Namespace stats/player_stats
// Params 3, eflags: 0x2 linked
// Checksum 0x53c38f51, Offset: 0x1470
// Size: 0x78
function function_6cdd992f(weapon, bucket, value) {
    if (!function_f94325d3()) {
        return false;
    }
    self inc_stat(#"hash_3713686a5fc7b39e", weapon, #"hash_2a1ce63d60556431", bucket, #"statvalue", value);
    return true;
}

// Namespace stats/player_stats
// Params 3, eflags: 0x2 linked
// Checksum 0xd868d274, Offset: 0x14f0
// Size: 0x78
function function_328bc34a(weapon, location, value) {
    if (!function_f94325d3()) {
        return false;
    }
    self inc_stat(#"hash_3713686a5fc7b39e", weapon, #"hash_5b635080228b9c03", location, #"statvalue", value);
    return true;
}

// Namespace stats/player_stats
// Params 2, eflags: 0x2 linked
// Checksum 0xd03af550, Offset: 0x1570
// Size: 0x184
function function_80099ca1(weapon, statname) {
    if (!function_f94325d3()) {
        return false;
    }
    if (!isdefined(self.pers[#"hash_45ad01f9212e202c"])) {
        self.pers[#"hash_45ad01f9212e202c"] = [];
    }
    if (!isdefined(self.pers[#"hash_45ad01f9212e202c"][weapon])) {
        self.pers[#"hash_45ad01f9212e202c"][weapon] = [];
    }
    if (!isdefined(self.pers[#"hash_45ad01f9212e202c"][weapon][statname])) {
        self.pers[#"hash_45ad01f9212e202c"][weapon][statname] = 0;
    }
    self.pers[#"hash_45ad01f9212e202c"][weapon][statname]++;
    value = self.pers[#"hash_45ad01f9212e202c"][weapon][statname];
    if (value > self function_b2c11cc(weapon, statname)) {
        self function_53e7d4a5(weapon, statname, value);
        return true;
    }
    return false;
}

// Namespace stats/player_stats
// Params 2, eflags: 0x2 linked
// Checksum 0x62a736e5, Offset: 0x1700
// Size: 0x42
function function_97f7728e(equipment, statname) {
    return self get_stat(#"hash_7a634ccef92080c6", equipment, statname, #"statvalue");
}

// Namespace stats/player_stats
// Params 1, eflags: 0x2 linked
// Checksum 0xfc2672ae, Offset: 0x1750
// Size: 0x4a
function function_3f64434(weapon) {
    weaponname = weapon.name;
    if (weaponname === #"molotov_fire") {
        weaponname = #"eq_molotov";
    }
    return weaponname;
}

// Namespace stats/player_stats
// Params 3, eflags: 0x2 linked
// Checksum 0xc4abe28e, Offset: 0x17a8
// Size: 0x68
function function_c8da9a88(equipment, statname, value) {
    if (!function_f94325d3()) {
        return false;
    }
    self set_stat(#"hash_7a634ccef92080c6", equipment, statname, #"statvalue", value);
    return true;
}

// Namespace stats/player_stats
// Params 3, eflags: 0x2 linked
// Checksum 0x5924215c, Offset: 0x1818
// Size: 0x68
function function_622feb0d(equipment, statname, value) {
    if (!function_f94325d3()) {
        return false;
    }
    self inc_stat(#"hash_7a634ccef92080c6", equipment, statname, #"statvalue", value);
    return true;
}

// Namespace stats/player_stats
// Params 2, eflags: 0x2 linked
// Checksum 0x607390ba, Offset: 0x1888
// Size: 0x184
function function_6fb0b113(equipment, statname) {
    if (!function_f94325d3()) {
        return false;
    }
    if (!isdefined(self.pers[#"hash_535ec6a0c26aaa28"])) {
        self.pers[#"hash_535ec6a0c26aaa28"] = [];
    }
    if (!isdefined(self.pers[#"hash_535ec6a0c26aaa28"][equipment])) {
        self.pers[#"hash_535ec6a0c26aaa28"][equipment] = [];
    }
    if (!isdefined(self.pers[#"hash_535ec6a0c26aaa28"][equipment][statname])) {
        self.pers[#"hash_535ec6a0c26aaa28"][equipment][statname] = 0;
    }
    self.pers[#"hash_535ec6a0c26aaa28"][equipment][statname]++;
    value = self.pers[#"hash_535ec6a0c26aaa28"][equipment][statname];
    if (value > self function_97f7728e(equipment, statname)) {
        self function_c8da9a88(equipment, statname, value);
        return true;
    }
    return false;
}

// Namespace stats/player_stats
// Params 2, eflags: 0x2 linked
// Checksum 0xd714cbc3, Offset: 0x1a18
// Size: 0x42
function function_9792680b(scorestreak, statname) {
    return self get_stat(#"hash_5d925e2af850ce9e", scorestreak, statname, #"statvalue");
}

// Namespace stats/player_stats
// Params 3, eflags: 0x2 linked
// Checksum 0xd0908bd1, Offset: 0x1a68
// Size: 0x68
function function_1eb9272f(scorestreak, statname, value) {
    if (!function_f94325d3()) {
        return false;
    }
    self set_stat(#"hash_5d925e2af850ce9e", scorestreak, statname, #"statvalue", value);
    return true;
}

// Namespace stats/player_stats
// Params 3, eflags: 0x2 linked
// Checksum 0x45942697, Offset: 0x1ad8
// Size: 0x68
function function_8fb23f94(scorestreak, statname, value) {
    if (!function_f94325d3()) {
        return false;
    }
    self inc_stat(#"hash_5d925e2af850ce9e", scorestreak, statname, #"statvalue", value);
    return true;
}

// Namespace stats/player_stats
// Params 2, eflags: 0x2 linked
// Checksum 0x1237ebae, Offset: 0x1b48
// Size: 0x184
function function_b04e7184(scorestreak, statname) {
    if (!function_f94325d3()) {
        return false;
    }
    if (!isdefined(self.pers[#"hash_5720f063ea8634a8"])) {
        self.pers[#"hash_5720f063ea8634a8"] = [];
    }
    if (!isdefined(self.pers[#"hash_5720f063ea8634a8"][scorestreak])) {
        self.pers[#"hash_5720f063ea8634a8"][scorestreak] = [];
    }
    if (!isdefined(self.pers[#"hash_5720f063ea8634a8"][scorestreak][statname])) {
        self.pers[#"hash_5720f063ea8634a8"][scorestreak][statname] = 0;
    }
    self.pers[#"hash_5720f063ea8634a8"][scorestreak][statname]++;
    value = self.pers[#"hash_5720f063ea8634a8"][scorestreak][statname];
    if (value > self function_9792680b(scorestreak, statname)) {
        self function_1eb9272f(scorestreak, statname, value);
        return true;
    }
    return false;
}

// Namespace stats/player_stats
// Params 2, eflags: 0x0
// Checksum 0x71d7d7ad, Offset: 0x1cd8
// Size: 0x42
function function_bd731115(vehicle, statname) {
    return self get_stat(#"hash_3d466b9663c34ff2", vehicle, statname, #"statvalue");
}

// Namespace stats/player_stats
// Params 3, eflags: 0x0
// Checksum 0xeb4c7ca5, Offset: 0x1d28
// Size: 0x68
function function_e1c64c80(vehicle, statname, value) {
    if (!function_f94325d3()) {
        return false;
    }
    self set_stat(#"hash_3d466b9663c34ff2", vehicle, statname, #"statvalue", value);
    return true;
}

// Namespace stats/player_stats
// Params 3, eflags: 0x2 linked
// Checksum 0x1a6a09d6, Offset: 0x1d98
// Size: 0x68
function function_7fd36562(vehicle, statname, value) {
    if (!function_f94325d3()) {
        return false;
    }
    self inc_stat(#"hash_3d466b9663c34ff2", vehicle, statname, #"statvalue", value);
    return true;
}

// Namespace stats/player_stats
// Params 2, eflags: 0x2 linked
// Checksum 0xcb54a69, Offset: 0x1e08
// Size: 0x52
function function_7a850245(statname, value) {
    if (!function_f94325d3()) {
        return 0;
    }
    return self set_stat(#"afteractionreportstats", statname, value);
}

// Namespace stats/player_stats
// Params 2, eflags: 0x2 linked
// Checksum 0xea5840ac, Offset: 0x1e68
// Size: 0x1fc
function function_62b271d8(statname, value) {
    if (!sessionmodeiswarzonegame()) {
        return;
    }
    teammates = getplayers(self.team);
    foreach (player in teammates) {
        if (!player function_f94325d3()) {
            continue;
        }
        teammatecount = get_stat(#"afteractionreportstats", #"teammatecount");
        if (!isdefined(teammatecount)) {
            return;
        }
        playerxuid = int(self getxuid(1));
        for (i = 0; i < teammatecount; i++) {
            var_bd8d01a8 = player get_stat(#"afteractionreportstats", #"teammates", i, #"xuid");
            if (var_bd8d01a8 === playerxuid) {
                player set_stat(#"afteractionreportstats", #"teammates", i, statname, value);
                break;
            }
        }
    }
}

// Namespace stats/player_stats
// Params 2, eflags: 0x2 linked
// Checksum 0x24c7b1c8, Offset: 0x2070
// Size: 0x1fc
function function_b7f80d87(statname, value) {
    if (!sessionmodeiswarzonegame()) {
        return;
    }
    teammates = getplayers(self.team);
    foreach (player in teammates) {
        if (!player function_f94325d3()) {
            continue;
        }
        teammatecount = get_stat(#"afteractionreportstats", #"teammatecount");
        if (!isdefined(teammatecount)) {
            return;
        }
        playerxuid = int(self getxuid(1));
        for (i = 0; i < teammatecount; i++) {
            var_bd8d01a8 = player get_stat(#"afteractionreportstats", #"teammates", i, #"xuid");
            if (var_bd8d01a8 === playerxuid) {
                player inc_stat(#"afteractionreportstats", #"teammates", i, statname, value);
                break;
            }
        }
    }
}

// Namespace stats/player_stats
// Params 2, eflags: 0x2 linked
// Checksum 0x7928fa4, Offset: 0x2278
// Size: 0xca
function function_81f5c0fe(statname, value) {
    if (!function_f94325d3()) {
        return 0;
    }
    gametype = level.var_12323003;
    map = util::get_map_name();
    mapstats = gamemodeisarena() ? #"mapstatsarena" : #"mapstats";
    return self inc_stat(mapstats, map, #"permode", gametype, statname, value);
}

// Namespace stats/player_stats
// Params 2, eflags: 0x2 linked
// Checksum 0xfbdf74ca, Offset: 0x2350
// Size: 0xa2
function set_stat_global(statname, value) {
    if (!function_f94325d3()) {
        return 0;
    }
    if (sessionmodeiscampaigngame()) {
        return self function_505387a6(#"playerstatslist", statname, #"statvalue", value);
    }
    return self set_stat(#"playerstatslist", statname, #"statvalue", value);
}

// Namespace stats/player_stats
// Params 1, eflags: 0x2 linked
// Checksum 0xbcec9411, Offset: 0x2400
// Size: 0x7a
function get_stat_global(statname) {
    if (sessionmodeiscampaigngame()) {
        return self function_e3eb9a8b(#"playerstatslist", statname, #"statvalue");
    }
    return self get_stat(#"playerstatslist", statname, #"statvalue");
}

// Namespace stats/player_stats
// Params 2, eflags: 0x0
// Checksum 0xcf6dd958, Offset: 0x2488
// Size: 0x82
function function_c5453ed4(statname, value) {
    if (!function_f94325d3()) {
        return 0;
    }
    assert(!sessionmodeiscampaigngame());
    return self function_505387a6(#"playerstatslist", statname, #"statvalue", value);
}

// Namespace stats/player_stats
// Params 1, eflags: 0x0
// Checksum 0xca0b75d8, Offset: 0x2518
// Size: 0x62
function function_927be59d(statname) {
    assert(!sessionmodeiscampaigngame());
    return self function_e3eb9a8b(#"playerstatslist", statname, #"statvalue");
}

// Namespace stats/player_stats
// Params 2, eflags: 0x2 linked
// Checksum 0x5bd83d69, Offset: 0x2588
// Size: 0x5a
function set_stat_challenge(statname, value) {
    if (!function_f94325d3()) {
        return 0;
    }
    return self set_stat(#"playerstatslist", statname, #"challengevalue", value);
}

// Namespace stats/player_stats
// Params 1, eflags: 0x2 linked
// Checksum 0x7b5084a0, Offset: 0x25f0
// Size: 0x3a
function get_stat_challenge(statname) {
    return self get_stat(#"playerstatslist", statname, #"challengevalue");
}

// Namespace stats/player_stats
// Params 1, eflags: 0x2 linked
// Checksum 0xa32fd6fe, Offset: 0x2638
// Size: 0x3a
function function_af5584ca(statname) {
    return self get_stat(#"playerstatslist", statname, #"challengetier");
}

// Namespace stats/player_stats
// Params 2, eflags: 0x2 linked
// Checksum 0xc5d376d2, Offset: 0x2680
// Size: 0x5a
function function_8e071909(statname, value) {
    if (!function_f94325d3()) {
        return 0;
    }
    return self set_stat(#"playerstatslist", statname, #"challengetier", value);
}

// Namespace stats/player_stats
// Params 1, eflags: 0x0
// Checksum 0x829ae695, Offset: 0x26e8
// Size: 0x52
function function_878e75b7(statname) {
    return self get_stat(#"playerstatsbygametype", function_8921af36(), statname, #"challengevalue");
}

// Namespace stats/player_stats
// Params 2, eflags: 0x2 linked
// Checksum 0xb82fdd02, Offset: 0x2748
// Size: 0xa2
function function_dad108fa(statname, value) {
    if (!function_f94325d3()) {
        return 0;
    }
    if (sessionmodeiscampaigngame()) {
        return self function_f5859f81(#"playerstatslist", statname, #"statvalue", value);
    }
    return self inc_stat(#"playerstatslist", statname, #"statvalue", value);
}

// Namespace stats/player_stats
// Params 2, eflags: 0x2 linked
// Checksum 0xb96957a9, Offset: 0x27f8
// Size: 0x82
function function_42277145(statname, value) {
    if (!function_f94325d3()) {
        return 0;
    }
    assert(!sessionmodeiscampaigngame());
    return self function_f5859f81(#"playerstatslist", statname, #"statvalue", value);
}

// Namespace stats/player_stats
// Params 2, eflags: 0x2 linked
// Checksum 0x55203c6, Offset: 0x2888
// Size: 0x52
function function_bb7eedf0(statname, value) {
    setglobal = self function_dad108fa(statname, value);
    return self addgametypestat(statname, value);
}

// Namespace stats/player_stats
// Params 3, eflags: 0x2 linked
// Checksum 0xf9294f3e, Offset: 0x28e8
// Size: 0x134
function function_d0de7686(statname, value, var_4261ca42) {
    if (getdvarint(var_4261ca42, 0) == 0) {
        return;
    }
    if (!isplayer(self)) {
        return;
    }
    if (level.var_d619bc61 === 1) {
        if (!isdefined(self.pers)) {
            return;
        }
        if (!isdefined(self.pers[#"hash_58ebc906abf2fa00"])) {
            self.pers[#"hash_58ebc906abf2fa00"] = [];
        }
        if (!isdefined(self.pers[#"hash_58ebc906abf2fa00"][statname])) {
            self.pers[#"hash_58ebc906abf2fa00"][statname] = 0;
        }
        self.pers[#"hash_58ebc906abf2fa00"][statname]++;
        return;
    }
    return self function_dad108fa(statname, value);
}

// Namespace stats/player_stats
// Params 4, eflags: 0x2 linked
// Checksum 0xfc85ece3, Offset: 0x2a28
// Size: 0x154
function function_841e4896(statname, value, var_4261ca42, weaponnamehash) {
    if (getdvarint(var_4261ca42, 0) == 0) {
        return;
    }
    if (!isplayer(self)) {
        return;
    }
    if (self function_a3a54104(weaponnamehash)) {
        return;
    }
    if (level.var_d619bc61 === 1) {
        if (!isdefined(self.pers)) {
            return;
        }
        if (!isdefined(self.pers[#"hash_58ebc906abf2fa00"])) {
            self.pers[#"hash_58ebc906abf2fa00"] = [];
        }
        if (!isdefined(self.pers[#"hash_58ebc906abf2fa00"][statname])) {
            self.pers[#"hash_58ebc906abf2fa00"][statname] = 0;
        }
        self.pers[#"hash_58ebc906abf2fa00"][statname]++;
        return;
    }
    return self function_dad108fa(statname, value);
}

// Namespace stats/player_stats
// Params 3, eflags: 0x2 linked
// Checksum 0xc508d6d5, Offset: 0x2b88
// Size: 0x54
function function_a47092b5(statname, value, var_4261ca42) {
    if (getdvarint(var_4261ca42, 0)) {
        return self function_dad108fa(statname, value);
    }
}

// Namespace stats/player_stats
// Params 3, eflags: 0x2 linked
// Checksum 0xf8b273f0, Offset: 0x2be8
// Size: 0x54
function function_bcf9602(statname, value, var_4261ca42) {
    if (getdvarint(var_4261ca42, 0)) {
        return self function_42277145(statname, value);
    }
}

// Namespace stats/player_stats
// Params 6, eflags: 0x2 linked
// Checksum 0x508563a2, Offset: 0x2c48
// Size: 0x13a
function function_eec52333(weapon, statname, value, classnum, pickedup, forceads) {
    if (sessionmodeiszombiesgame() && level.zm_disable_recording_stats === 1) {
        return;
    }
    if (isdefined(level.var_b10e134d)) {
        [[ level.var_b10e134d ]](self, weapon, statname, value);
    }
    self addweaponstat(weapon, statname, value, classnum, pickedup, forceads);
    switch (statname) {
    case #"shots":
    case #"used":
        self function_f95ea9b6(weapon);
        break;
    case #"kills":
        if (weapon.var_ff0b00ba) {
            self function_dad108fa(#"kills_equipment", 1);
        }
        break;
    }
}

// Namespace stats/player_stats
// Params 3, eflags: 0x2 linked
// Checksum 0xf56aff42, Offset: 0x2d90
// Size: 0x3c
function function_e24eec31(weapon, statname, value) {
    self function_eec52333(weapon, statname, value, undefined, undefined, undefined);
}

