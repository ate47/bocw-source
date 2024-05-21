// Atian COD Tools GSC CW decompiler test
#using script_7d5c9b91cf8d272b;
#using scripts\zm_common\ai\zm_ai_utility.gsc;
#using scripts\zm_common\zm_devgui.gsc;
#using scripts\zm_common\zm_round_spawning.gsc;
#using scripts\zm_common\zm_audio.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_spawner.gsc;
#using scripts\zm_common\zm_destination_manager.gsc;
#using scripts\zm_common\zm_cleanup_mgr.gsc;
#using scripts\zm_common\zm.gsc;
#using script_2c5daa95f8fec03c;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace zm_ai_abom;

// Namespace zm_ai_abom/zm_ai_abom
// Params 0, eflags: 0x5
// Checksum 0x6c6fc83b, Offset: 0x170
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"zm_ai_abom", &preinit, undefined, undefined, "zm_destination_manager");
}

// Namespace zm_ai_abom/zm_ai_abom
// Params 0, eflags: 0x2 linked
// Checksum 0xc90e6c11, Offset: 0x1c0
// Size: 0x10c
function preinit() {
    zm_round_spawning::register_archetype(#"abom", &function_48924a80, &round_spawn, undefined, 100);
    zm_round_spawning::function_306ce518(#"abom", &function_9282dcac);
    spawner::add_archetype_spawn_function(#"abom", &function_b82e0a5d);
    spawner::function_89a2cd87(#"abom", &function_545f669b);
    zm_cleanup::function_cdf5a512(#"abom", &function_1d787beb);
}

// Namespace zm_ai_abom/zm_ai_abom
// Params 0, eflags: 0x2 linked
// Checksum 0x64697c42, Offset: 0x2d8
// Size: 0xc4
function function_b82e0a5d() {
    self.b_ignore_cleanup = 0;
    self.closest_player_override = &zm_utility::function_3d70ba7a;
    self.var_ad033811 = &function_2e394e63;
    self.var_81e5ae7 = &function_953059a3;
    self.var_29ab3df0 = &function_65ef2078;
    level thread zm_spawner::zombie_death_event(self);
    if (zm_utility::function_c200446c()) {
        self thread function_2995325f();
    }
    self thread function_3ec01d7a();
}

// Namespace zm_ai_abom/zm_ai_abom
// Params 0, eflags: 0x2 linked
// Checksum 0x24fcf45e, Offset: 0x3a8
// Size: 0x94
function function_545f669b() {
    self.completed_emerging_into_playable_area = 1;
    self.canbetargetedbyturnedzombies = 1;
    self.should_zigzag = 0;
    self setblackboardattribute("_locomotion_speed", "locomotion_speed_sprint");
    namespace_81245006::initweakpoints(self);
    self thread zm_audio::zmbaivox_notifyconvert();
    self thread zm_audio::play_ambient_zombie_vocals();
}

// Namespace zm_ai_abom/zm_ai_abom
// Params 0, eflags: 0x2 linked
// Checksum 0x6c968126, Offset: 0x448
// Size: 0x108
function function_1d787beb() {
    if (isdefined(level.var_eb59a95c)) {
        var_d7eff26a = [[ level.var_eb59a95c ]]();
    } else {
        var_91562d8c = level.zm_loc_types[#"hash_b7c88561b5e9b2c"];
        if (isdefined(var_91562d8c) && isdefined(var_91562d8c.size)) {
            var_d7eff26a = zm_spawner::function_20e7d186(var_91562d8c);
        }
    }
    if (!isdefined(var_d7eff26a)) {
        /#
            if (zm_devgui::any_player_in_noclip()) {
            }
        #/
        return false;
    }
    if (isentity(self)) {
        self thread namespace_361e505d::function_8a959784(self);
        self zm_ai_utility::function_a8dc3363(var_d7eff26a);
        self thread namespace_361e505d::function_940cd1d8();
    }
    return true;
}

// Namespace zm_ai_abom/zm_ai_abom
// Params 0, eflags: 0x2 linked
// Checksum 0x401f82e4, Offset: 0x558
// Size: 0x294
function function_2995325f() {
    self endon(#"death");
    var_cfad5b23 = 0;
    var_982efbc4 = undefined;
    while (true) {
        var_f1d04f0a = 2147483647;
        players = getplayers();
        foreach (player in players) {
            var_f1d04f0a = min(player.origin[2], var_f1d04f0a);
        }
        if (var_f1d04f0a - self.origin[2] > 300) {
            if (!ispointonnavmesh(self.origin, self)) {
                var_cfad5b23++;
                if (var_cfad5b23 >= 2) {
                    var_9f0bcfaa = var_982efbc4;
                    if (!isdefined(var_9f0bcfaa) && isdefined(level.var_df7b46d1)) {
                        var_9f0bcfaa = getclosestpointonnavmesh(level.var_df7b46d1.origin, 64, 32);
                    }
                    var_9f0bcfaa = isdefined(var_9f0bcfaa) ? var_9f0bcfaa : level.var_75d496b5;
                    if (isvec(var_9f0bcfaa)) {
                        var_cfad5b23 = 0;
                        self clientfield::set("abomDissolveCF", 2);
                        wait(1);
                        self zm_ai_utility::function_a8dc3363({#origin:var_9f0bcfaa});
                        self.completed_emerging_into_playable_area = 1;
                        self thread namespace_361e505d::function_940cd1d8();
                    }
                }
            } else {
                var_cfad5b23 = 0;
            }
        } else if (ispointonnavmesh(self.origin, self)) {
            var_982efbc4 = self.origin;
        }
        wait(1);
    }
}

// Namespace zm_ai_abom/zm_ai_abom
// Params 2, eflags: 0x6 linked
// Checksum 0x17d80de1, Offset: 0x7f8
// Size: 0x16
function private function_2e394e63(*potential_target, *var_ab0d150d) {
    return false;
}

// Namespace zm_ai_abom/zm_ai_abom
// Params 1, eflags: 0x2 linked
// Checksum 0x410efb8b, Offset: 0x818
// Size: 0x68
function function_953059a3(enemy) {
    if (!isdefined(enemy)) {
        return false;
    }
    var_1eff24e4 = enemy getentitynumber();
    if (isdefined(self.var_de98707[var_1eff24e4]) && gettime() < self.var_de98707[var_1eff24e4]) {
        return true;
    }
    return false;
}

// Namespace zm_ai_abom/zm_ai_abom
// Params 1, eflags: 0x2 linked
// Checksum 0x2925454c, Offset: 0x888
// Size: 0xb6
function function_65ef2078(enemy) {
    if (!isdefined(self.var_de98707)) {
        self.var_de98707 = [];
    }
    var_1eff24e4 = enemy getentitynumber();
    if (!isdefined(self.var_de98707[var_1eff24e4])) {
        self.var_de98707[var_1eff24e4] = 0;
    }
    if (gettime() > self.var_de98707[var_1eff24e4]) {
        self.var_de98707[var_1eff24e4] = gettime() + int(3 * 1000);
    }
    return false;
}

// Namespace zm_ai_abom/zm_ai_abom
// Params 1, eflags: 0x2 linked
// Checksum 0xdcafecc3, Offset: 0x948
// Size: 0x1ca
function function_48924a80(*var_dbce0c44) {
    if (isdefined(level.var_9135c56e) && level.round_number < level.var_9135c56e) {
        return 0;
    }
    n_player_count = zm_utility::function_a2541519(getplayers().size);
    if (n_player_count == 1) {
        switch (level.var_59adf71) {
        case 0:
        case 1:
        case 2:
            var_2506688 = 1;
            var_1797c23a = 1;
            break;
        default:
            var_2506688 = 1;
            var_1797c23a = 2;
            break;
        }
    } else {
        switch (level.var_59adf71) {
        case 0:
        case 1:
            var_2506688 = 1;
            var_1797c23a = 1;
            break;
        case 2:
        case 3:
            var_2506688 = 2;
            var_1797c23a = 2;
            break;
        default:
            var_2506688 = 3;
            var_1797c23a = 3;
            break;
        }
    }
    return randomintrangeinclusive(var_2506688, var_1797c23a);
}

// Namespace zm_ai_abom/zm_ai_abom
// Params 0, eflags: 0x2 linked
// Checksum 0x52d25beb, Offset: 0xb20
// Size: 0x2e
function round_spawn() {
    ai = spawn_single();
    if (isdefined(ai)) {
        return true;
    }
    return false;
}

// Namespace zm_ai_abom/zm_ai_abom
// Params 3, eflags: 0x2 linked
// Checksum 0xdd92edb5, Offset: 0xb58
// Size: 0x1e2
function spawn_single(b_force_spawn, var_eb3a8721 = 0, *var_bc66d64b) {
    if (!var_eb3a8721 && !function_bbd518e8()) {
        return undefined;
    }
    if (isdefined(var_bc66d64b)) {
        s_spawn_loc = var_bc66d64b;
    } else if (isdefined(level.var_eb59a95c)) {
        s_spawn_loc = [[ level.var_eb59a95c ]]();
    } else if (level.zm_loc_types[#"zombie_location"].size > 0) {
        s_spawn_loc = array::random(level.zm_loc_types[#"zombie_location"]);
    }
    if (!isdefined(s_spawn_loc)) {
        /#
            if (getdvarint(#"hash_1f8efa579fee787c", 0)) {
                iprintlnbold("<unknown string>");
            }
        #/
        return undefined;
    }
    ai = spawnactor(#"spawner_bo5_abom", s_spawn_loc.origin, s_spawn_loc.angles);
    if (isdefined(ai)) {
        ai.script_string = s_spawn_loc.script_string;
        ai.find_flesh_struct_string = s_spawn_loc.find_flesh_struct_string;
        ai.check_point_in_enabled_zone = &zm_utility::check_point_in_playable_area;
        ai.ignore_enemy_count = 1;
        ai forceteleport(s_spawn_loc.origin, s_spawn_loc.angles);
        ai.var_5e54763a = s_spawn_loc.zone_name;
    }
    return ai;
}

// Namespace zm_ai_abom/zm_ai_abom
// Params 0, eflags: 0x2 linked
// Checksum 0xfd7954f9, Offset: 0xd48
// Size: 0x72
function function_bbd518e8() {
    var_7212f4c6 = function_dafc9693();
    var_e262a7a4 = function_b68d818c();
    if (var_7212f4c6 >= var_e262a7a4 || !level flag::get("spawn_zombies")) {
        return false;
    }
    return true;
}

// Namespace zm_ai_abom/zm_ai_abom
// Params 0, eflags: 0x2 linked
// Checksum 0xac4771b3, Offset: 0xdc8
// Size: 0xca
function function_dafc9693() {
    var_5e8f3ee7 = getaiarchetypearray(#"abom");
    var_7212f4c6 = var_5e8f3ee7.size;
    foreach (abom in var_5e8f3ee7) {
        if (!isalive(abom)) {
            var_7212f4c6--;
        }
    }
    return var_7212f4c6;
}

// Namespace zm_ai_abom/zm_ai_abom
// Params 0, eflags: 0x2 linked
// Checksum 0x31b27702, Offset: 0xea0
// Size: 0xb6
function function_b68d818c() {
    n_player_count = zm_utility::function_a2541519(getplayers().size);
    switch (n_player_count) {
    case 1:
        return 1;
    case 2:
        return 2;
    case 3:
        return 3;
    case 4:
        return 4;
    }
    return 1;
}

// Namespace zm_ai_abom/zm_ai_abom
// Params 1, eflags: 0x2 linked
// Checksum 0xf1ad8ec0, Offset: 0xf60
// Size: 0x134
function function_9282dcac(*n_round_number) {
    level endon(#"end_game");
    if (!isdefined(level.var_59adf71)) {
        level.var_59adf71 = 0;
    }
    while (true) {
        level waittill(#"hash_5d3012139f083ccb");
        if (zm_round_spawning::function_d0db51fc(#"abom")) {
            level.var_59adf71++;
            n_player_count = zm_utility::function_a2541519(getplayers().size);
            if (n_player_count == 1) {
                level.var_9135c56e = level.round_number + randomintrangeinclusive(3, 5);
                continue;
            }
            level.var_9135c56e = level.round_number + randomintrangeinclusive(3, 4);
        }
    }
}

// Namespace zm_ai_abom/zm_ai_abom
// Params 0, eflags: 0x6 linked
// Checksum 0x8cd82c77, Offset: 0x10a0
// Size: 0x318
function private function_3ec01d7a() {
    level endon(#"end_game");
    self endon(#"death");
    var_201abbfd = 0;
    var_37c90cfe = 0;
    var_686cf729 = undefined;
    last_pos = undefined;
    while (true) {
        waitresult = self waittilltimeout(2, #"bad_path");
        if (self isplayinganimscripted()) {
            continue;
        }
        if (self flag::get(#"hash_67c62575285677e4")) {
            continue;
        }
        var_c84ba99b = 0;
        if (waitresult._notify == #"bad_path") {
            if (!self function_dd070839()) {
                goalinfo = self function_4794d6a3();
                if (!isdefined(var_686cf729) || goalinfo.goalpos !== var_686cf729) {
                    var_686cf729 = goalinfo.goalpos;
                    var_201abbfd = 1;
                } else {
                    var_201abbfd++;
                }
                if (var_201abbfd >= 15) {
                    var_c84ba99b = 1;
                }
            }
        } else {
            if (ispointonnavmesh(self.origin, self)) {
                continue;
            }
            if (!isdefined(last_pos) || distancesquared(self.origin, last_pos) > sqr(self getpathfindingradius())) {
                last_pos = self.origin;
                var_37c90cfe = 0;
            } else if (distancesquared(self.origin, last_pos) < sqr(self getpathfindingradius())) {
                var_37c90cfe++;
                if (var_37c90cfe >= 15) {
                    var_c84ba99b = 1;
                }
            }
        }
        if (is_true(var_c84ba99b)) {
            /#
                if (is_true(level.var_bb61089c)) {
                    println("<unknown string>" + "<unknown string>" + self.origin + "<unknown string>");
                }
            #/
            var_201abbfd = 0;
            var_37c90cfe = 0;
            self function_1d787beb();
        }
    }
}

