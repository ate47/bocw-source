// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\skipto.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\cp_common\util.gsc;
#using scripts\core_common\struct.gsc;

#namespace achievements;

// Namespace achievements/achievements
// Params 0, eflags: 0x5
// Checksum 0x356dc59d, Offset: 0x168
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"achievements", &preinit, undefined, undefined, undefined);
}

// Namespace achievements/achievements
// Params 0, eflags: 0x6 linked
// Checksum 0xa193d1af, Offset: 0x1b0
// Size: 0xb4
function private preinit() {
    callback::on_connect(&on_player_connect);
    callback::on_ai_spawned(&on_ai_spawned);
    callback::on_ai_damage(&on_ai_damage);
    callback::on_ai_killed(&on_ai_killed);
    callback::on_player_killed(&on_player_death);
    function_df1192a7();
}

// Namespace achievements/achievements
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x270
// Size: 0x4
function function_df1192a7() {
    
}

// Namespace achievements/achievements
// Params 2, eflags: 0x2 linked
// Checksum 0xb2e1caef, Offset: 0x280
// Size: 0x104
function function_659819fa(achievement, *var_a299f0b3) {
    assert(ishash(var_a299f0b3), "<unknown string>");
    /#
        printtoprightln("<unknown string>" + function_9e72a96(var_a299f0b3), (1, 1, 1));
        println("<unknown string>" + function_9e72a96(var_a299f0b3));
    #/
    if (!isdefined(self.var_b34a7212)) {
        self.var_b34a7212 = [];
    }
    if (isdefined(self.var_b34a7212[var_a299f0b3])) {
        return;
    }
    self.var_b34a7212[var_a299f0b3] = 1;
    self giveachievement(var_a299f0b3);
}

// Namespace achievements/achievements
// Params 0, eflags: 0x2 linked
// Checksum 0xfffeb954, Offset: 0x390
// Size: 0xd0
function on_player_connect() {
    self endon(#"disconnect");
    self.var_8e5e0541 = spawnstruct();
    self.var_8e5e0541.var_d3879c8e = 0;
    self.var_8e5e0541.var_ca87baa4 = 0;
    self.var_8e5e0541.kills = [];
    self.var_8e5e0541.var_f79c95f9 = [];
    self thread function_fd51b8a8();
    while (true) {
        waitresult = self waittill(#"hash_55b653455cd7424c");
        function_659819fa(waitresult.id);
    }
}

// Namespace achievements/achievements
// Params 3, eflags: 0x2 linked
// Checksum 0x34616dd1, Offset: 0x468
// Size: 0x4c
function function_20254235(eplayer, levelname, *difficulty) {
    levelname function_659819fa(hash("cp_achievement_" + difficulty));
}

// Namespace achievements/achievements
// Params 1, eflags: 0x2 linked
// Checksum 0x36e73940, Offset: 0x4c0
// Size: 0x204
function function_cc2216e2(eplayer) {
    var_b0abc67b = [];
    for (index = 0; index <= 4; index++) {
        var_b0abc67b[index] = 0;
    }
    var_cf1f3586 = skipto::function_228558fd(0, 0);
    var_d8222c25 = 0;
    foreach (msn in var_cf1f3586) {
        if (!eplayer stats::get_stat(#"mapdata", msn, #"complete")) {
            continue;
        }
        highestdifficulty = eplayer stats::get_stat(#"mapdata", msn, #"highestdifficulty");
        if (!isdefined(var_b0abc67b[highestdifficulty])) {
            var_b0abc67b[highestdifficulty] = 0;
        }
        var_b0abc67b[highestdifficulty]++;
        var_d8222c25++;
    }
    var_7a34e971 = var_cf1f3586.size - 1;
    if (var_d8222c25 == var_7a34e971) {
        eplayer function_659819fa(#"cp_achievement_combat_recruit");
    }
    if (var_b0abc67b[3] + var_b0abc67b[4] == var_7a34e971) {
        eplayer function_659819fa(#"cp_achievement_combat_hardened");
    }
}

// Namespace achievements/achievements
// Params 3, eflags: 0x2 linked
// Checksum 0x23472d41, Offset: 0x6d0
// Size: 0x4c
function function_f854bc50(eplayer, levelname, difficulty) {
    function_20254235(eplayer, levelname, difficulty);
    function_cc2216e2(eplayer);
}

// Namespace achievements/achievements
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x728
// Size: 0x4
function on_ai_spawned() {
    
}

// Namespace achievements/achievements
// Params 1, eflags: 0x2 linked
// Checksum 0x3005cffc, Offset: 0x738
// Size: 0x5a
function on_ai_damage(s_params) {
    self.var_e2f6147a = undefined;
    if (isplayer(s_params.eattacker)) {
        if (s_params.idflags & 8) {
            self.var_e2f6147a = s_params.eattacker;
        }
    }
}

// Namespace achievements/achievements
// Params 1, eflags: 0x2 linked
// Checksum 0x4fb48180, Offset: 0x7a0
// Size: 0x4e
function on_player_death(*s_params) {
    self.var_8e5e0541.var_d3879c8e = 0;
    self.var_8e5e0541.var_ca87baa4 = 0;
    self.var_8e5e0541.kills = [];
    self.var_8e5e0541.var_f79c95f9 = [];
}

// Namespace achievements/achievements
// Params 2, eflags: 0x6 linked
// Checksum 0x7682ab43, Offset: 0x7f8
// Size: 0x124
function private function_467369b2(var_668b29af, evictim) {
    var_a8f62552 = distance(var_668b29af.origin, evictim.origin);
    if (var_a8f62552 >= 3937) {
        var_41db60bc = var_668b29af stats::get_stat(#"achievements", #"hash_5740a8698a4d0345");
        var_41db60bc++;
        /#
            printtoprightln("<unknown string>" + var_a8f62552 + "<unknown string>" + var_41db60bc, (1, 1, 1));
        #/
        if (var_41db60bc >= 5) {
            var_668b29af function_659819fa(#"hash_5740a8698a4d0345");
            return;
        }
        var_668b29af stats::set_stat(#"achievements", #"hash_5740a8698a4d0345", var_41db60bc);
    }
}

// Namespace achievements/achievements
// Params 3, eflags: 0x6 linked
// Checksum 0x66244c7e, Offset: 0x928
// Size: 0x14c
function private function_4239da84(player, *var_6d2d969a, *weapon) {
    weapon.var_8e5e0541.var_ca87baa4++;
    currentindex = weapon.var_8e5e0541.var_d3879c8e;
    weapon.var_8e5e0541.kills[currentindex] = gettime();
    weapon.var_8e5e0541.var_d3879c8e = (currentindex + 1) % 10;
    if (weapon.var_8e5e0541.var_ca87baa4 < 10) {
        return;
    }
    startindex = (currentindex + 1) % 10;
    starttime = weapon.var_8e5e0541.kills[startindex];
    endtime = weapon.var_8e5e0541.kills[currentindex];
    if (weapon.var_8e5e0541.var_ca87baa4 >= 10 && endtime - starttime <= 3000) {
        weapon function_659819fa(#"hash_1e7fe721b8911e57");
    }
}

// Namespace achievements/achievements
// Params 2, eflags: 0x6 linked
// Checksum 0x5071de4e, Offset: 0xa80
// Size: 0x16c
function private function_b25a404e(player, weapon) {
    baseindex = getbaseweaponitemindex(weapon);
    if (!isdefined(baseindex) || baseindex < 1 || baseindex > 60) {
        return;
    }
    player.var_8e5e0541.var_f79c95f9[weapon.rootweapon.name] = gettime();
    var_5f546d20 = 0;
    var_9aecaf58 = gettime() - 30000;
    if (var_9aecaf58 < 0) {
        var_9aecaf58 = 0;
    }
    foreach (lastkilltime in player.var_8e5e0541.var_f79c95f9) {
        if (lastkilltime > var_9aecaf58) {
            var_5f546d20++;
        }
    }
    if (var_5f546d20 >= 5) {
        player function_659819fa(#"hash_1a6ca2f96f903656");
    }
}

// Namespace achievements/achievements
// Params 3, eflags: 0x2 linked
// Checksum 0x53936b65, Offset: 0xbf8
// Size: 0x76
function function_2240fcb8(eattacker, *evictim, *eweapon) {
    if (isdefined(eweapon.var_628ca13e) && isplayer(eweapon.var_628ca13e)) {
        if (isdefined(eweapon.killcount)) {
            eweapon.killcount++;
            return;
        }
        eweapon.killcount = 1;
    }
}

// Namespace achievements/achievements
// Params 2, eflags: 0x2 linked
// Checksum 0x37f303c, Offset: 0xc78
// Size: 0x7c
function function_8b531812(eplayer, evictim) {
    if (isdefined(evictim.var_e2f6147a) && evictim.var_e2f6147a == eplayer && evictim.team !== #"allies") {
        eplayer function_659819fa(#"hash_1f0a3ec94eff5513");
    }
}

// Namespace achievements/achievements
// Params 1, eflags: 0x2 linked
// Checksum 0x98e93194, Offset: 0xd00
// Size: 0x5c
function function_6e3f345f(eplayer) {
    var_71c7cc3a = eplayer getmeleechaincount();
    if (2 <= var_71c7cc3a) {
        eplayer function_659819fa(#"hash_42303e6214910391");
    }
}

// Namespace achievements/achievements
// Params 1, eflags: 0x2 linked
// Checksum 0x5bca1a40, Offset: 0xd68
// Size: 0x144
function on_ai_killed(s_params) {
    if (isplayer(s_params.eattacker)) {
        player = s_params.eattacker;
        function_467369b2(player, self);
        function_6e3f345f(player);
        function_4239da84(player, self, s_params.weapon);
        function_b25a404e(player, s_params.weapon);
        function_8b531812(player, self);
        player function_1d62fbfa(1, s_params.weapon.weapclass, s_params.weapon.firetype);
        return;
    }
    if (isai(s_params.eattacker)) {
        function_2240fcb8(s_params.eattacker, self, s_params.weapon);
    }
}

// Namespace achievements/achievements
// Params 0, eflags: 0x6 linked
// Checksum 0x6111222, Offset: 0xeb8
// Size: 0xa4
function private function_fd51b8a8() {
    self endon(#"disconnect");
    while (true) {
        waitresult = self waittill(#"gun_level_complete");
        if (waitresult.is_last_rank && waitresult.item_index >= 1 && waitresult.item_index <= 60) {
            self function_659819fa(#"hash_30b6860e2869b596");
            break;
        }
    }
}

// Namespace achievements/achievements
// Params 1, eflags: 0x2 linked
// Checksum 0xd2e29df5, Offset: 0xf68
// Size: 0x3c
function function_c3541c14(var_71d636c6) {
    if (var_71d636c6 == 3) {
        self function_659819fa(#"hash_5f39b2b443875e95");
    }
}

// Namespace achievements/achievements
// Params 2, eflags: 0x2 linked
// Checksum 0x3232722b, Offset: 0xfb0
// Size: 0xb4
function function_533e57d6(player, count) {
    player stats::function_dad108fa("cp_body_shield_count", count);
    var_69fa8154 = isdefined(player stats::get_stat_global("cp_body_shield_count")) ? player stats::get_stat_global("cp_body_shield_count") : 0;
    if (var_69fa8154 >= 5) {
        player function_659819fa(#"cp_achievement_body_shield");
    }
}

// Namespace achievements/achievements
// Params 3, eflags: 0x2 linked
// Checksum 0xf551c6e1, Offset: 0x1070
// Size: 0x2e4
function function_1d62fbfa(count, weapclass, firetype) {
    if (weapclass == "rifle" && firetype != "Single Shot") {
        self stats::function_dad108fa("cp_kills_ar", count);
    } else if (weapclass == "spread") {
        self stats::function_dad108fa("cp_kills_sg", count);
    } else if (weapclass == "mg") {
        self stats::function_dad108fa("cp_kills_lmg", count);
    } else if (weapclass == "smg") {
        self stats::function_dad108fa("cp_kills_smg", count);
    } else {
        return;
    }
    var_9f75c0be = isdefined(self stats::get_stat_global(#"cp_kills_lmg")) ? self stats::get_stat_global(#"cp_kills_lmg") : 0;
    var_49ad0f61 = isdefined(self stats::get_stat_global(#"cp_kills_smg")) ? self stats::get_stat_global(#"cp_kills_smg") : 0;
    var_25a65495 = isdefined(self stats::get_stat_global(#"cp_kills_ar")) ? self stats::get_stat_global(#"cp_kills_ar") : 0;
    var_2f070c99 = isdefined(self stats::get_stat_global(#"cp_kills_sg")) ? self stats::get_stat_global(#"cp_kills_sg") : 0;
    if (var_9f75c0be >= 5 && var_49ad0f61 >= 5 && var_25a65495 >= 5 && var_2f070c99 >= 5) {
        self function_659819fa(#"cp_achievement_jack_all_trades");
    }
    if (var_25a65495 >= 200) {
        self function_659819fa(#"cp_achievement_old_faithful");
    }
}

