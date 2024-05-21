// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\ai\zm_ai_utility.gsc;
#using scripts\zm_common\zm_zonemgr.gsc;
#using scripts\zm_common\zm_cleanup_mgr.gsc;
#using scripts\zm_common\zm_spawner.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_powerups.gsc;
#using scripts\zm_common\zm_round_spawning.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using script_3819e7a1427df6d2;
#using script_26cd04df32f6537a;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;

#namespace namespace_abfee9ba;

// Namespace namespace_abfee9ba/namespace_abfee9ba
// Params 0, eflags: 0x5
// Checksum 0xcd07a05d, Offset: 0x150
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"hash_55f568f82a7aea28", &preinit, &postinit, undefined, undefined);
}

// Namespace namespace_abfee9ba/namespace_abfee9ba
// Params 0, eflags: 0x4
// Checksum 0x98aede42, Offset: 0x1a8
// Size: 0xfc
function private preinit() {
    clientfield::register("scriptmover", "" + #"hash_3220b44880f1807c", 24000, 1, "counter");
    zm_round_spawning::register_archetype(#"tormentor", &function_44d45595, &round_spawn, &function_dfa96d1f, 25);
    spawner::add_archetype_spawn_function(#"tormentor", &function_a5cd9e54);
    zm_cleanup::function_cdf5a512(#"tormentor", &function_d8461453);
}

// Namespace namespace_abfee9ba/namespace_abfee9ba
// Params 0, eflags: 0x4
// Checksum 0x80f724d1, Offset: 0x2b0
// Size: 0x4
function private postinit() {
    
}

// Namespace namespace_abfee9ba/namespace_abfee9ba
// Params 0, eflags: 0x0
// Checksum 0x28073038, Offset: 0x2c0
// Size: 0xd4
function function_a5cd9e54() {
    self.no_gib = 1;
    self zombie_utility::set_zombie_run_cycle(#"super_sprint");
    self.allowdeath = 1;
    self.allowpain = 0;
    self.is_zombie = 1;
    self.var_78f17f6b = 1;
    self.var_12af7864 = 1;
    self.canbetargetedbyturnedzombies = 1;
    self.var_e8920729 = 1;
    self thread function_5e09bd0f();
    aiutility::addaioverridedamagecallback(self, &function_354a904e);
    level thread zm_spawner::zombie_death_event(self);
}

// Namespace namespace_abfee9ba/namespace_abfee9ba
// Params 13, eflags: 0x4
// Checksum 0xfd03dcff, Offset: 0x3a0
// Size: 0xaa
function private function_354a904e(*inflictor, attacker, damage, *dflags, *mod, *weapon, *var_fd90b0bb, *point, *dir, *hitloc, *offsettime, *boneindex, *modelindex) {
    if (boneindex.archetype === #"tormentor" && boneindex.team === self.team) {
        return 0;
    }
    return modelindex;
}

// Namespace namespace_abfee9ba/namespace_abfee9ba
// Params 3, eflags: 0x0
// Checksum 0xbe3e0f2f, Offset: 0x458
// Size: 0x198
function spawn_single(b_force_spawn, var_eb3a8721 = 0, *var_bc66d64b) {
    if (!var_eb3a8721 && !function_e0968877()) {
        return undefined;
    }
    s_spawn_loc = var_bc66d64b;
    if (!isdefined(s_spawn_loc)) {
        if (level.zm_loc_types[#"zombie_location"].size > 0) {
            s_spawn_loc = array::random(level.zm_loc_types[#"zombie_location"]);
        } else {
            /#
                if (getdvarint(#"hash_1f8efa579fee787c", 0)) {
                    iprintlnbold("<unknown string>");
                }
            #/
            return undefined;
        }
    }
    ai = spawnactor(#"hash_51edd7595ecda822", s_spawn_loc.origin, s_spawn_loc.angles);
    if (isdefined(ai)) {
        ai.script_string = s_spawn_loc.script_string;
        ai.find_flesh_struct_string = s_spawn_loc.script_string;
        ai.check_point_in_enabled_zone = &zm_utility::check_point_in_playable_area;
        ai.ignore_enemy_count = 0;
        ai thread zm_utility::move_zombie_spawn_location(s_spawn_loc);
    }
    return ai;
}

// Namespace namespace_abfee9ba/namespace_abfee9ba
// Params 0, eflags: 0x0
// Checksum 0xac024cb2, Offset: 0x5f8
// Size: 0x2e
function round_spawn() {
    ai = spawn_single();
    if (isdefined(ai)) {
        return true;
    }
    return false;
}

// Namespace namespace_abfee9ba/namespace_abfee9ba
// Params 0, eflags: 0x0
// Checksum 0x8e3273c0, Offset: 0x630
// Size: 0x72
function function_e0968877() {
    n_alive = function_9f679c3c();
    var_12e5a581 = function_4b283bfa();
    if (n_alive >= var_12e5a581 || !level flag::get("spawn_zombies")) {
        return false;
    }
    return true;
}

// Namespace namespace_abfee9ba/namespace_abfee9ba
// Params 0, eflags: 0x0
// Checksum 0x26023529, Offset: 0x6b0
// Size: 0xb2
function function_4b283bfa() {
    n_player_count = zm_utility::function_a2541519(getplayers().size);
    switch (n_player_count) {
    case 1:
    default:
        return 3;
    case 2:
        return 5;
    case 3:
        return 7;
    case 4:
        return 10;
    }
}

// Namespace namespace_abfee9ba/namespace_abfee9ba
// Params 0, eflags: 0x0
// Checksum 0xbbc2704, Offset: 0x770
// Size: 0xca
function function_9f679c3c() {
    a_ais = getaiarchetypearray(#"tormentor");
    var_d4027fe0 = a_ais.size;
    foreach (ai in a_ais) {
        if (!isalive(ai)) {
            var_d4027fe0--;
        }
    }
    return var_d4027fe0;
}

// Namespace namespace_abfee9ba/namespace_abfee9ba
// Params 0, eflags: 0x0
// Checksum 0x1446e7d5, Offset: 0x848
// Size: 0xc8
function function_5e09bd0f() {
    self endon(#"death", #"entitydeleted", #"endambientvox");
    wait(1.1);
    self playsoundontag(#"hash_65eb1e22e2f9a826", "j_head");
    wait(2);
    while (true) {
        self playsoundontag(#"hash_a3c5d5d69e0fc95", "j_head");
        wait(randomfloatrange(1.9, 2.4));
    }
}

// Namespace namespace_abfee9ba/namespace_abfee9ba
// Params 1, eflags: 0x0
// Checksum 0x787f77fc, Offset: 0x918
// Size: 0x162
function function_44d45595(var_dbce0c44) {
    if (zm_round_spawning::function_fab464c4(level.round_number)) {
        a_e_players = getplayers();
        if (level.var_f4b9daca < 3) {
            n_max = a_e_players.size * 8;
        } else {
            n_max = a_e_players.size * 10;
        }
        return n_max;
    }
    var_8cf00d40 = int(floor(var_dbce0c44 / 25));
    if (level.round_number < 20) {
        var_a5e820a7 = 0.02;
    } else if (level.round_number < 30) {
        var_a5e820a7 = 0.03;
    } else {
        var_a5e820a7 = 0.04;
    }
    n_max = min(var_8cf00d40, int(ceil(level.zombie_total * var_a5e820a7)));
    return n_max;
}

// Namespace namespace_abfee9ba/namespace_abfee9ba
// Params 1, eflags: 0x0
// Checksum 0x6db27441, Offset: 0xa88
// Size: 0xa4
function function_55413772(s_spawn_loc) {
    level endon(#"end_game");
    var_c0ef5a0c = util::spawn_model("tag_origin", s_spawn_loc.origin, s_spawn_loc.angles);
    var_c0ef5a0c clientfield::increment("" + #"hash_3220b44880f1807c");
    wait(5);
    if (isdefined(var_c0ef5a0c)) {
        var_c0ef5a0c delete();
    }
}

// Namespace namespace_abfee9ba/namespace_abfee9ba
// Params 1, eflags: 0x0
// Checksum 0x3cebe8b2, Offset: 0xb38
// Size: 0x62
function function_dfa96d1f(var_199d73cc = undefined) {
    s_spawn_loc = function_a58fe5b7(var_199d73cc);
    if (!isdefined(s_spawn_loc)) {
        return undefined;
    }
    ai = function_71f8127a(s_spawn_loc);
    return ai;
}

// Namespace namespace_abfee9ba/namespace_abfee9ba
// Params 1, eflags: 0x0
// Checksum 0x576bf23e, Offset: 0xba8
// Size: 0xe2
function function_71f8127a(s_spawn_loc) {
    level thread function_55413772(s_spawn_loc);
    wait(1);
    ai = spawnactor(#"hash_51edd7595ecda822", s_spawn_loc.origin, s_spawn_loc.angles);
    if (isdefined(ai)) {
        earthquake(0.5, 0.75, ai.origin, 1000);
        ai.no_powerups = 1;
        if (isdefined(s_spawn_loc.script_string)) {
            ai.script_string = s_spawn_loc.script_string;
            ai.find_flesh_struct_string = s_spawn_loc.script_string;
        }
        return ai;
    }
    return undefined;
}

// Namespace namespace_abfee9ba/namespace_abfee9ba
// Params 1, eflags: 0x0
// Checksum 0xa3d14a1f, Offset: 0xc98
// Size: 0x694
function function_a58fe5b7(var_199d73cc = undefined) {
    s_spawn_loc = undefined;
    if (function_a1ef346b().size != 0) {
        if (isdefined(var_199d73cc)) {
            var_9769213d = var_199d73cc;
        } else if (isdefined(level.var_19441a5a)) {
            var_9769213d = [[ level.var_19441a5a ]](function_a1ef346b());
        } else {
            var_9769213d = array::random(function_a1ef346b());
        }
        var_a2105b2a = 0;
        while (var_a2105b2a <= 20 && isdefined(var_9769213d)) {
            if (isdefined(level.var_caddca10) && ![[ level.var_caddca10 ]](var_9769213d)) {
                return undefined;
            }
            if (var_a2105b2a < 10) {
                var_ef8e1e71 = randomintrange(400, 1000);
                var_9d7713d9 = randomintrange(400, 1000);
            } else if (var_a2105b2a < 15) {
                var_ef8e1e71 = randomintrange(400, 1000) / 2;
                var_9d7713d9 = randomintrange(400, 1000) / 2;
            } else {
                var_ef8e1e71 = randomintrange(400, 1000) / 4;
                var_9d7713d9 = randomintrange(400, 1000) / 4;
            }
            if (isdefined(var_199d73cc) && var_a2105b2a < 15) {
                var_bf1cc8e2 = var_9769213d.origin + var_ef8e1e71 * anglestoforward((0, var_199d73cc.angles[1], 0));
                var_bf1cc8e2 += var_9d7713d9 / 4 * array::random([-1, 1]) * anglestoright((0, var_199d73cc.angles[1], 0));
                traceresult = groundtrace(var_bf1cc8e2, var_bf1cc8e2 + (0, 0, -100), 0, 0);
                if (isdefined(traceresult[#"position"])) {
                    var_bf1cc8e2 = traceresult[#"position"];
                }
            } else {
                if (isvec(var_9769213d.origin)) {
                    var_db8ceb36 = var_9769213d.origin[0] + var_ef8e1e71 * array::random([-1, 1]);
                    var_c93ec69a = var_9769213d.origin[1] + var_9d7713d9 * array::random([-1, 1]);
                    var_772fa27d = var_9769213d.origin[2];
                    var_bf1cc8e2 = (var_db8ceb36, var_c93ec69a, var_772fa27d);
                } else {
                    var_a2105b2a++;
                }
                traceresult = groundtrace(var_bf1cc8e2, var_bf1cc8e2 + (0, 0, -100), 0, 0);
                if (isdefined(traceresult[#"position"])) {
                    var_bf1cc8e2 = traceresult[#"position"];
                }
            }
            spawn_loc = getclosestpointonnavmesh(var_bf1cc8e2, 100, 15);
            if (isdefined(spawn_loc)) {
                zone = zm_zonemgr::get_zone_from_position(spawn_loc);
                if (isarray(level.var_c9350d57)) {
                    if (isdefined(zone) && isinarray(level.var_c9350d57, zone)) {
                        return undefined;
                    }
                }
                /#
                    if (isdefined(zone)) {
                        iprintlnbold(zone);
                    }
                #/
                if (is_true(zm_zonemgr::zone_is_enabled(zone)) && is_true(level.zones[zone].is_active) && zm_utility::check_point_in_playable_area(spawn_loc)) {
                    /#
                        iprintlnbold(spawn_loc[0] + "<unknown string>" + spawn_loc[1] + "<unknown string>" + spawn_loc[2]);
                    #/
                    s_spawn_loc = spawnstruct();
                    s_spawn_loc.origin = spawn_loc;
                    s_spawn_loc.angles = vectortoangles(var_9769213d.origin - spawn_loc);
                    break;
                }
            } else {
                var_a2105b2a++;
            }
            waitframe(1);
        }
    } else {
        /#
            if (getdvarint(#"hash_1f8efa579fee787c", 0)) {
                iprintlnbold("<unknown string>");
            }
        #/
        return undefined;
    }
    return s_spawn_loc;
}

// Namespace namespace_abfee9ba/namespace_abfee9ba
// Params 0, eflags: 0x0
// Checksum 0x98ab04a0, Offset: 0x1338
// Size: 0x106
function function_d8461453() {
    s_spawn_loc = function_a58fe5b7();
    if (!isdefined(s_spawn_loc)) {
        return false;
    }
    if (isdefined(self) && isentity(self)) {
        self endon(#"death");
        level thread function_55413772(s_spawn_loc);
        wait(1);
        self zm_ai_utility::function_a8dc3363(s_spawn_loc);
        earthquake(0.5, 0.75, self.origin, 1000);
        self.no_powerups = 1;
        if (isdefined(s_spawn_loc.script_string)) {
            self.script_string = s_spawn_loc.script_string;
            self.find_flesh_struct_string = s_spawn_loc.script_string;
        }
    }
    return true;
}

