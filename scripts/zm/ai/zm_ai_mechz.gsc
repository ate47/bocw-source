// Atian COD Tools GSC CW decompiler test
#using script_1940fc077a028a81;
#using scripts\zm_common\zm_round_spawning.gsc;
#using scripts\zm_common\zm.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_audio.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_spawner.gsc;
#using scripts\zm_common\zm_net.gsc;
#using scripts\zm_common\zm_devgui.gsc;
#using scripts\zm_common\zm_zonemgr.gsc;
#using scripts\zm_common\zm_cleanup_mgr.gsc;
#using scripts\zm_common\zm_behavior.gsc;
#using script_ed50e9299d3e143;
#using scripts\zm_common\ai\zm_ai_utility.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\ai\zombie.gsc;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\ai\systems\destructible_character.gsc;
#using scripts\core_common\ai\systems\behavior_tree_utility.gsc;
#using scripts\core_common\ai\systems\animation_state_machine_notetracks.gsc;
#using scripts\core_common\ai\archetype_utility.gsc;
#using script_3819e7a1427df6d2;
#using scripts\core_common\visionset_mgr_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\ai_shared.gsc;

#namespace namespace_6f90aa12;

// Namespace namespace_6f90aa12/namespace_6f90aa12
// Params 0, eflags: 0x5
// Checksum 0xd9835aa0, Offset: 0x1d8
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"hash_4d539cc8af850be5", &preinit, &postinit, undefined, undefined);
}

// Namespace namespace_6f90aa12/namespace_6f90aa12
// Params 0, eflags: 0x0
// Checksum 0xdb041621, Offset: 0x230
// Size: 0x10c
function preinit() {
    zm_round_spawning::register_archetype(#"mechz", &function_13043824, &round_spawn, undefined, 100);
    zm_round_spawning::function_306ce518(#"mechz", &function_5e8a178a);
    spawner::add_archetype_spawn_function(#"mechz", &function_3b8b6e80);
    spawner::function_89a2cd87(#"mechz", &function_5d873f78);
    zm_cleanup::function_cdf5a512(#"mechz", &function_66247c2);
}

// Namespace namespace_6f90aa12/namespace_6f90aa12
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x348
// Size: 0x4
function postinit() {
    
}

// Namespace namespace_6f90aa12/namespace_6f90aa12
// Params 0, eflags: 0x0
// Checksum 0xe27c71f0, Offset: 0x358
// Size: 0x15c
function function_3b8b6e80() {
    self.closest_player_override = &zm_utility::function_3d70ba7a;
    self.completed_emerging_into_playable_area = 1;
    self.b_ignore_cleanup = 1;
    self.is_zombie = 1;
    self.var_5e55975f = &namespace_e292b080::zombieshouldmelee;
    self.var_e34ba400 = 600;
    self.var_a87eb847 = 900;
    self.var_535fbaa3 = 1200;
    self.var_e9a867e0 = &function_1064536d;
    self.var_64c67df3 = &function_6bf0d9e0;
    self.var_9d92b55a = &function_9d92b55a;
    self callback::function_d8abfc3d(#"hash_49bf4815e9501d2", &namespace_47c5b560::function_99487333);
    self util::delay(0.5, "death", &playsound, #"hash_172bca6e17f4b592");
    self function_c103f91d();
    self thread function_ea7b33b6();
}

// Namespace namespace_6f90aa12/namespace_6f90aa12
// Params 0, eflags: 0x0
// Checksum 0xad88bdb7, Offset: 0x4c0
// Size: 0x32
function function_5d873f78() {
    self.var_72411ccf = &function_7f405e5e;
    self.var_bacf9a1a = &function_80ba943b;
}

// Namespace namespace_6f90aa12/namespace_6f90aa12
// Params 1, eflags: 0x4
// Checksum 0x4a0f1c6b, Offset: 0x500
// Size: 0xa4
function private function_7f405e5e(entity) {
    e_enemy = entity.favoriteenemy;
    if (isplayer(e_enemy) && e_enemy flag::get_any([#"hash_686d5709e1566aa6", #"hash_1b361b950317ecb5"])) {
        return;
    }
    entity zm_behavior::zombiefindflesh(entity);
}

// Namespace namespace_6f90aa12/namespace_6f90aa12
// Params 1, eflags: 0x4
// Checksum 0x23b0ce62, Offset: 0x5b0
// Size: 0x2e
function private function_80ba943b(*e_attacker) {
    self.b_ignore_cleanup = 0;
    self notify(#"hash_28e8830c0f1354d2");
    self.var_73915a58 = undefined;
}

// Namespace namespace_6f90aa12/namespace_6f90aa12
// Params 0, eflags: 0x0
// Checksum 0xcdacfc5c, Offset: 0x5e8
// Size: 0x3fe
function function_66247c2() {
    self endon(#"death");
    while (true) {
        var_31f7011a = arraysortclosest(getplayers(), self.origin);
        foreach (player in var_31f7011a) {
            if (zm_utility::is_player_valid(player)) {
                closest_player = player;
                break;
            }
        }
        if (isdefined(closest_player)) {
            break;
        }
        util::wait_network_frame();
    }
    s_spawn_locs = [];
    if (isdefined(level.var_e333bf92)) {
        spawn_locs = [[ level.var_e333bf92 ]](1);
        if (isarray(spawn_locs)) {
            s_spawn_locs = spawn_locs;
        } else {
            array::add(s_spawn_locs, spawn_locs);
        }
    } else {
        spawn_locs = function_65c98960(1);
        if (isarray(spawn_locs)) {
            s_spawn_locs = spawn_locs;
        }
    }
    var_69681a59 = [];
    if (isdefined(level.active_zone_names) && isarray(s_spawn_locs) && s_spawn_locs.size > 0) {
        foreach (spawn_loc in s_spawn_locs) {
            if (isdefined(spawn_loc.zone_name) && array::contains(level.active_zone_names, spawn_loc.zone_name)) {
                if (!isdefined(var_69681a59)) {
                    var_69681a59 = [];
                } else if (!isarray(var_69681a59)) {
                    var_69681a59 = array(var_69681a59);
                }
                var_69681a59[var_69681a59.size] = spawn_loc;
            }
        }
    }
    if (var_69681a59.size < 1) {
        return true;
    }
    spawn_points = arraysortclosest(var_69681a59, closest_player.origin, undefined, 250);
    if (spawn_points.size > 0) {
        var_b2aa54a9 = spawn_points[0];
    } else {
        var_b2aa54a9 = arraygetfarthest(closest_player.origin, var_69681a59);
    }
    if (!isdefined(var_b2aa54a9)) {
        return true;
    }
    /#
        iprintln("<unknown string>" + self.origin + "<unknown string>" + var_b2aa54a9.origin);
    #/
    self zm_ai_utility::function_a8dc3363(var_b2aa54a9);
    self.completed_emerging_into_playable_area = 1;
    self.var_5e54763a = var_b2aa54a9.zone_name;
    return true;
}

// Namespace namespace_6f90aa12/namespace_6f90aa12
// Params 0, eflags: 0x0
// Checksum 0x5d28c781, Offset: 0x9f0
// Size: 0x2e
function round_spawn() {
    ai = spawn_single();
    if (isdefined(ai)) {
        return true;
    }
    return false;
}

// Namespace namespace_6f90aa12/namespace_6f90aa12
// Params 3, eflags: 0x0
// Checksum 0x4360ddbd, Offset: 0xa28
// Size: 0x1e2
function spawn_single(b_force_spawn, var_eb3a8721 = 0, *var_bc66d64b) {
    if (!var_eb3a8721 && !function_42dcd795()) {
        return undefined;
    }
    if (isdefined(var_bc66d64b)) {
        s_spawn_loc = var_bc66d64b;
    } else if (isdefined(level.var_e333bf92)) {
        s_spawn_loc = [[ level.var_e333bf92 ]]();
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
    ai = spawnactor(#"spawner_bo5_mechz_sr", s_spawn_loc.origin, s_spawn_loc.angles);
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

// Namespace namespace_6f90aa12/namespace_6f90aa12
// Params 0, eflags: 0x0
// Checksum 0xdc6fc6f9, Offset: 0xc18
// Size: 0x72
function function_42dcd795() {
    var_e2ec0129 = function_638411dd();
    var_1548fdf = function_33485c02();
    if (var_e2ec0129 >= var_1548fdf || !level flag::get("spawn_zombies")) {
        return false;
    }
    return true;
}

// Namespace namespace_6f90aa12/namespace_6f90aa12
// Params 0, eflags: 0x0
// Checksum 0x1d0f8b95, Offset: 0xc98
// Size: 0xca
function function_638411dd() {
    var_c500a70f = getaiarchetypearray(#"mechz");
    var_e2ec0129 = var_c500a70f.size;
    foreach (mechz in var_c500a70f) {
        if (!isalive(mechz)) {
            var_e2ec0129--;
        }
    }
    return var_e2ec0129;
}

// Namespace namespace_6f90aa12/namespace_6f90aa12
// Params 0, eflags: 0x0
// Checksum 0xfca7b3f, Offset: 0xd70
// Size: 0xb6
function function_33485c02() {
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

// Namespace namespace_6f90aa12/namespace_6f90aa12
// Params 1, eflags: 0x0
// Checksum 0xc52c1686, Offset: 0xe30
// Size: 0xba
function function_65c98960(get_all = 0) {
    if (isdefined(level.zm_loc_types[#"mechz_location"]) && level.zm_loc_types[#"mechz_location"].size) {
        if (get_all) {
            s_spawn_loc = level.zm_loc_types[#"mechz_location"];
        } else {
            s_spawn_loc = array::random(level.zm_loc_types[#"mechz_location"]);
        }
    }
    return s_spawn_loc;
}

// Namespace namespace_6f90aa12/namespace_6f90aa12
// Params 1, eflags: 0x0
// Checksum 0x578cdf72, Offset: 0xef8
// Size: 0x1ca
function function_13043824(*var_dbce0c44) {
    if (isdefined(level.var_1db9948) && level.round_number < level.var_1db9948) {
        return 0;
    }
    n_player_count = zm_utility::function_a2541519(getplayers().size);
    if (n_player_count == 1) {
        switch (level.var_ea1e9b1e) {
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
        switch (level.var_ea1e9b1e) {
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

// Namespace namespace_6f90aa12/namespace_6f90aa12
// Params 1, eflags: 0x0
// Checksum 0xc652f576, Offset: 0x10d0
// Size: 0x134
function function_5e8a178a(*n_round_number) {
    level endon(#"end_game");
    if (!isdefined(level.var_ea1e9b1e)) {
        level.var_ea1e9b1e = 0;
    }
    while (true) {
        level waittill(#"hash_5d3012139f083ccb");
        if (zm_round_spawning::function_d0db51fc(#"mechz")) {
            level.var_ea1e9b1e++;
            n_player_count = zm_utility::function_a2541519(getplayers().size);
            if (n_player_count == 1) {
                level.var_1db9948 = level.round_number + randomintrangeinclusive(3, 5);
                continue;
            }
            level.var_1db9948 = level.round_number + randomintrangeinclusive(3, 4);
        }
    }
}

// Namespace namespace_6f90aa12/namespace_6f90aa12
// Params 1, eflags: 0x0
// Checksum 0xd38dc42a, Offset: 0x1210
// Size: 0xf2
function function_1064536d(pos) {
    a_vols = getentarray("mechz_cant_path", "script_noteworthy");
    if (a_vols.size) {
        radius = self getpathfindingradius();
        foreach (e_vol in a_vols) {
            if (istouching(pos, e_vol, (radius, radius, radius))) {
                return false;
            }
        }
    }
    return true;
}

// Namespace namespace_6f90aa12/namespace_6f90aa12
// Params 2, eflags: 0x0
// Checksum 0x688a51df, Offset: 0x1310
// Size: 0x312
function function_6bf0d9e0(*zone_path, player) {
    if (!self function_1064536d(player.origin)) {
        if (isdefined(self.var_a61b4e17)) {
            if (distancesquared(self.var_a61b4e17.var_b1fc2f78, player.origin) < 1024) {
                return {#var_ec8356c8:1, #origin:self.var_a61b4e17.point};
            }
        }
        points = getrandomnavpoints(player.origin, 128, 20, self getpathfindingradius());
        foreach (point in points) {
            if (self function_1064536d(point)) {
                self.var_a61b4e17 = {#point:point, #var_b1fc2f78:player.origin};
                return {#var_ec8356c8:1, #origin:point};
            }
        }
    }
    var_2a4e3502 = zm_utility::function_ebd87099(player);
    if (isdefined(var_2a4e3502)) {
        if (isdefined(self.var_a61b4e17)) {
            if (distancesquared(self.var_a61b4e17.var_b1fc2f78, player.origin) < 1024) {
                return {#var_ec8356c8:1, #origin:self.var_a61b4e17.point};
            }
        }
        goal = getclosestpointonnavmesh(var_2a4e3502.goal_origin, var_2a4e3502.var_b9e9cdf3, self getpathfindingradius() * 1.2);
        if (isdefined(goal)) {
            self.var_a61b4e17 = {#point:goal, #var_b1fc2f78:player.origin};
            return {#var_ec8356c8:1, #origin:goal};
        }
    }
    return player;
}

// Namespace namespace_6f90aa12/namespace_6f90aa12
// Params 0, eflags: 0x0
// Checksum 0x2b1298c4, Offset: 0x1630
// Size: 0x10a
function function_c103f91d() {
    if (!self function_1064536d(self.origin)) {
        points = getrandomnavpoints(self.origin, 128, 20, self getpathfindingradius());
        foreach (point in points) {
            if (self function_1064536d(point)) {
                self forceteleport(point, self.angles);
                return;
            }
        }
    }
}

// Namespace namespace_6f90aa12/namespace_6f90aa12
// Params 1, eflags: 0x0
// Checksum 0x96b15ed0, Offset: 0x1748
// Size: 0x16
function function_9d92b55a(entity) {
    entity.var_9e6e6645 = undefined;
}

// Namespace namespace_6f90aa12/namespace_6f90aa12
// Params 0, eflags: 0x4
// Checksum 0x7bc7cefa, Offset: 0x1768
// Size: 0x258
function private function_ea7b33b6() {
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
        var_c84ba99b = 0;
        if (waitresult._notify == #"bad_path") {
            if (!self function_dd070839() && !namespace_47c5b560::aiisleaping(self)) {
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
        } else if (!isdefined(last_pos) || self.origin !== last_pos) {
            last_pos = self.origin;
            var_37c90cfe = 0;
        } else if (self.origin == last_pos) {
            var_37c90cfe++;
            if (var_37c90cfe >= 15) {
                var_c84ba99b = 1;
            }
        }
        if (is_true(var_c84ba99b)) {
            println("<unknown string>" + self.origin + "<unknown string>");
            var_201abbfd = 0;
            var_37c90cfe = 0;
            self function_66247c2();
        }
    }
}

/#

    // Namespace namespace_6f90aa12/namespace_6f90aa12
    // Params 1, eflags: 0x4
    // Checksum 0xe73dcb84, Offset: 0x19c8
    // Size: 0x54
    function private function_73769410(message) {
        if (getdvarint(#"hash_3553283c6676bb54", 0)) {
            println("<unknown string>" + message);
        }
    }

#/
