// Atian COD Tools GSC CW decompiler test
#using script_7b1cd3908a825fdd;
#using scripts\zm_common\zm_vo.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using script_4421226bbc54b398;
#using scripts\zm_common\zm.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_spawner.gsc;
#using scripts\zm_common\zm_round_logic.gsc;
#using scripts\zm_common\zm_zonemgr.gsc;
#using scripts\zm_common\zm_cleanup_mgr.gsc;
#using scripts\zm_common\zm_behavior.gsc;
#using scripts\zm_common\zm_destination_manager.gsc;
#using script_5e96d104c70be5ac;
#using script_3411bb48d41bd3b;
#using scripts\zm_common\callbacks.gsc;
#using scripts\zm_common\ai\zm_ai_utility.gsc;
#using script_34ab99a4ca1a43d;
#using scripts\zm_common\gametypes\zm_gametype.gsc;
#using script_113dd7f0ea2a1d4f;
#using script_7a8059ca02b7b09e;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\struct.gsc;
#using script_67ce8e728d8f37ba;
#using scripts\core_common\gamestate.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\challenges_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using script_75d4e6ecb8f05163;
#using script_165beea08a63a243;

#namespace zclassic;

// Namespace zclassic/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x7e5d37d9, Offset: 0x298
// Size: 0x264
function event_handler[gametype_init] main(*eventstruct) {
    level.var_2f5a329e = 1;
    level.var_75c2c45f = 50;
    level.var_8179368e = &function_452e5ad6;
    if (!isdefined(level.var_31028c5d)) {
        level.var_31028c5d = prototype_hud::register();
    }
    zm_gametype::main();
    level.onprecachegametype = &onprecachegametype;
    level.onstartgametype = &onstartgametype;
    level._game_module_custom_spawn_init_func = &zm_gametype::custom_spawn_init_func;
    level._game_module_stat_update_func = &zm_stats::survival_classic_custom_stat_update;
    level._round_start_func = &zm_round_logic::round_start;
    level.var_4d30a9f0 = 1;
    level.var_cdc822b = &function_38499d79;
    level.var_9f01688e = 1;
    spawner::add_ai_spawn_function(&function_a143f9d1);
    level thread function_a24232f4();
    namespace_58949729::function_5a12541e();
    level thread intro_cinematic();
    callback::on_round_end(&on_round_end);
    callback::add_callback(#"hash_594217387367ebb4", &function_d81240c3);
    callback::add_callback(#"hash_3b7d3ed9e484ef72", &function_809241a9);
    callback::on_spawned(&on_player_spawn);
    callback::on_ai_killed(&on_ai_killed);
    level thread function_1c2ce6a();
}

// Namespace zclassic/zclassic
// Params 1, eflags: 0x0
// Checksum 0x39692167, Offset: 0x508
// Size: 0x2c
function function_a143f9d1(*params) {
    self.var_1b2af7dc = 1;
    self thread function_acafdd66();
}

// Namespace zclassic/zclassic
// Params 0, eflags: 0x0
// Checksum 0xd34b1dfe, Offset: 0x540
// Size: 0x188
function function_acafdd66() {
    self endon(#"death");
    while (true) {
        self waittill(#"bad_path");
        self.var_4fe4e626 = 1;
        enemy = zm_ai_utility::function_825317c(self);
        if (!isdefined(self.v_zombie_custom_goal_pos) && !is_true(self.var_674fb2e2)) {
            spawn_point = self.spawn_point;
            if (!isdefined(spawn_point)) {
                all_spawn_locations = struct::get_array("spawn_location", "script_noteworthy");
                if (isdefined(all_spawn_locations)) {
                    spawn_point = arraygetclosest(self.origin, all_spawn_locations);
                }
            }
            if (isdefined(spawn_point)) {
                self thread zm_spawner::function_e28b5830(spawn_point);
            }
        }
        if (isdefined(enemy)) {
            if (isdefined(self.var_29ab3df0)) {
                if (![[ self.var_29ab3df0 ]](enemy)) {
                    zm_ai_utility::function_68ab868a(self);
                    if (isplayer(self.enemy)) {
                        self.enemy.var_dbb28b34 = -1;
                    }
                }
            }
        }
        wait(0.5);
    }
}

// Namespace zclassic/zclassic
// Params 0, eflags: 0x0
// Checksum 0x9fca6119, Offset: 0x6d0
// Size: 0x98
function function_38499d79() {
    if (is_true(self.cached_zone_volume.var_8e4005b6)) {
        result = function_9cc082d2(self.origin, 16);
        if (isdefined(result) && isdefined(result[#"region"])) {
            return 1;
        }
        if (isdefined(level.var_6ceacf64)) {
            return [[ level.var_6ceacf64 ]]();
        }
        return 0;
    }
    return 1;
}

// Namespace zclassic/zclassic
// Params 1, eflags: 0x0
// Checksum 0x38981f4c, Offset: 0x770
// Size: 0x5c
function function_d81240c3(*params) {
    spawner::add_archetype_spawn_function(#"zombie", &function_7a3ebb8a);
    level flag::set("rbz_exfil_started");
}

// Namespace zclassic/zclassic
// Params 0, eflags: 0x0
// Checksum 0x27c76753, Offset: 0x7d8
// Size: 0x96
function function_7a3ebb8a() {
    self endon(#"death");
    if (self.targetname !== #"exfil_ai") {
        return;
    }
    self.var_90d0c0ff = "anim_spawn_from_ground";
    self namespace_85745671::function_2089690e();
    if (isdefined(self)) {
        self pathmode("move allowed");
        self.completed_emerging_into_playable_area = 1;
        self.zombie_think_done = 1;
    }
}

// Namespace zclassic/zclassic
// Params 0, eflags: 0x0
// Checksum 0x66330eed, Offset: 0x878
// Size: 0x1c
function onprecachegametype() {
    level.canplayersuicide = &zm_gametype::canplayersuicide;
}

// Namespace zclassic/zclassic
// Params 0, eflags: 0x0
// Checksum 0x7fc2895a, Offset: 0x8a0
// Size: 0x1a4
function onstartgametype() {
    zm_behavior::preinit();
    zm_cleanup::preinit();
    zm_spawner::init();
    zm_behavior::postinit();
    zm_cleanup::postinit();
    level.spawnmins = (0, 0, 0);
    level.spawnmaxs = (0, 0, 0);
    structs = struct::get_array("player_respawn_point", "targetname");
    foreach (struct in structs) {
        level.spawnmins = math::expand_mins(level.spawnmins, struct.origin);
        level.spawnmaxs = math::expand_maxs(level.spawnmaxs, struct.origin);
    }
    level.mapcenter = math::find_box_center(level.spawnmins, level.spawnmaxs);
    setmapcenter(level.mapcenter);
}

// Namespace zclassic/zclassic
// Params 0, eflags: 0x0
// Checksum 0x87dce846, Offset: 0xa50
// Size: 0x1dc
function on_player_spawn() {
    self.specialty = self getloadoutperks(0);
    self zm::register_perks();
    if (!level.var_31028c5d prototype_hud::is_open(self)) {
        level.var_31028c5d prototype_hud::open(self, 1);
    }
    if (is_true(self.is_hotjoin)) {
        var_c6b6dcea = level.round_number * 1000;
        self.pers[#"score"] = var_c6b6dcea;
        self.score = self.pers[#"score"];
        self.score_total = self.score;
        self.objscore = self.score_total;
        /#
            if (getdvarint(#"zombie_cheat", 0) >= 1) {
                self.score = 100000;
            }
        #/
        self.is_hotjoin = undefined;
        return;
    }
    if (isdefined(level.var_dfee7fc2) && !level flag::get("initial_blackscreen_passed") && !getdvarint(#"hash_39af51993585a73e", 0)) {
        self thread scene::init_streamer(level.var_dfee7fc2, array(self), 0, 0);
    }
}

// Namespace zclassic/zclassic
// Params 0, eflags: 0x4
// Checksum 0x9714d6e4, Offset: 0xc38
// Size: 0x29c
function private intro_cinematic() {
    level flag::wait_till("initial_blackscreen_passed");
    if (isdefined(level.var_dfee7fc2) && !getdvarint(#"hash_39af51993585a73e", 0)) {
        foreach (player in getplayers()) {
            player.var_f4e33249 = 1;
        }
        namespace_66d6aa44::function_bb17da18();
        level.var_3dfa8db4 = 1;
        util::wait_network_frame(2);
        level scene::play(level.var_dfee7fc2);
        callback::callback(#"hash_41e282f5ec98e877");
        namespace_66d6aa44::function_db62d086();
        level.var_dfee7fc2 = undefined;
        foreach (player in getplayers()) {
            player dontinterpolate();
            player setorigin(player.spectator_respawn.origin);
            player setplayerangles(player.spectator_respawn.angles);
            player.var_f4e33249 = undefined;
        }
    }
    level flag::set(#"intro_scene_done");
    gamestate::set_state(#"playing");
}

// Namespace zclassic/zclassic
// Params 0, eflags: 0x0
// Checksum 0x3343262c, Offset: 0xee0
// Size: 0xe0
function function_a24232f4() {
    level flag::wait_till_all(array(#"gameplay_started"));
    level thread namespace_591b4396::function_5a22584f();
    foreach (destination in level.contentmanager.var_d60029a6) {
        level thread namespace_591b4396::function_7c05a985(destination);
    }
}

// Namespace zclassic/zclassic
// Params 0, eflags: 0x0
// Checksum 0x70e24b51, Offset: 0xfc8
// Size: 0x534
function on_round_end() {
    level endon(#"hash_3e765c26047c9f54", #"end_game");
    var_370ac26d = zm::function_d3113f01().var_bd588afd;
    foreach (player in getplayers()) {
        if (!isdefined(player.var_8d41c907)) {
            player.var_8d41c907 = 0;
        }
        if (!zm_utility::function_1a01f2f7(player)) {
            player luinotifyevent(#"hash_3e6dd0ad7b864154", 1, var_370ac26d);
            player addrankxpvalue("round_end_xp", var_370ac26d, 4);
            player.var_8d41c907 -= var_370ac26d;
        }
        if (!isdefined(player.var_a160c21d) || player.var_a160c21d === 0) {
            println("<unknown string>" + player getentitynumber() + "<unknown string>");
            player.var_a160c21d = 0;
        }
        player.var_8d41c907 += player zm_round_logic::function_f4c57bbe();
        player.var_a160c21d = 0;
    }
    if (level.round_number % 5 == 0 && level.round_number > 5) {
        foreach (player in getplayers()) {
            player namespace_d4ecbbf0::function_73cddc69();
        }
        if (!level flag::get("rbz_exfil_allowed")) {
            level flag::wait_till("rbz_exfil_allowed");
            wait(12);
        }
        if (getgametypesetting("zmExfilRound") <= 0) {
            level flag::set("rbz_exfil_beacon_active");
        }
        if (!is_true(level.var_22bf7a06)) {
            if (getgametypesetting("zmExfilRound") !== 20) {
                level thread zm_vo::function_7622cb70(#"hash_5575881191efb302", undefined, 1, #"hash_23d445a634bedeae");
            }
            if (!level flag::get(#"hash_23d445a634bedeae")) {
                level.var_22bf7a06 = 1;
            }
        } else if (getgametypesetting("zmExfilRound") !== 20) {
            level thread zm_vo::function_7622cb70(#"hash_2788496d7ed6f0ef", undefined, 1, #"hash_23d445a634bedeae");
        }
        wait(120);
        level flag::clear("rbz_exfil_beacon_active");
        if (!is_true(level.var_9fcead52)) {
            if (getgametypesetting("zmExfilRound") !== 20) {
                level thread zm_vo::function_7622cb70(#"hash_2a4c39d0533e577d", undefined, 1, #"hash_23d445a634bedeae");
            }
            if (!level flag::get(#"hash_23d445a634bedeae")) {
                level.var_9fcead52 = 1;
            }
            return;
        }
        if (getgametypesetting("zmExfilRound") !== 20) {
            level thread zm_vo::function_7622cb70(#"hash_684b542bf103e4fe", undefined, 1, #"hash_23d445a634bedeae");
        }
    }
}

// Namespace zclassic/zclassic
// Params 0, eflags: 0x0
// Checksum 0xb0531bb7, Offset: 0x1508
// Size: 0x250
function function_809241a9() {
    players = getplayers();
    foreach (player in players) {
        var_22ba849f = getdvarint(#"hash_3f0689f4ecc2fbab", 0);
        var_900d44db = zm::function_d3113f01();
        if (!isdefined(player.var_8d41c907)) {
            player.var_8d41c907 = 0;
        }
        var_370ac26d = player.var_8d41c907;
        var_370ac26d += player zm_round_logic::function_f4c57bbe();
        var_370ac26d = int(max(var_370ac26d, 0));
        if (zm_utility::get_round_number() > 3) {
            var_370ac26d = int(max(var_370ac26d, randomintrangeinclusive(1000, 1250)));
        }
        player zm::function_78e7b549(var_370ac26d);
        /#
            println("<unknown string>" + player getentnum() + "<unknown string>" + player.name + "<unknown string>" + var_370ac26d);
            println("<unknown string>" + var_22ba849f);
            println("<unknown string>");
        #/
    }
}

// Namespace zclassic/zclassic
// Params 0, eflags: 0x0
// Checksum 0xdc3c121b, Offset: 0x1760
// Size: 0x1a2
function function_452e5ad6() {
    spawn_points = zm_gametype::get_player_spawns_for_gametype();
    var_d117c934 = [];
    foreach (point in spawn_points) {
        if (zm_zonemgr::zone_is_enabled(point.script_noteworthy)) {
            if (!isdefined(var_d117c934)) {
                var_d117c934 = [];
            } else if (!isarray(var_d117c934)) {
                var_d117c934 = array(var_d117c934);
            }
            var_d117c934[var_d117c934.size] = point;
        }
    }
    var_7fc5b7c3 = arraysortclosest(var_d117c934, self.origin, 20, 0, 2000);
    var_5d59bb63 = arraysortclosest(var_d117c934, self.origin, 20, 1000, 2000);
    var_1a672bba = var_5d59bb63.size ? var_5d59bb63 : var_7fc5b7c3;
    s_player_spawn = array::random(var_1a672bba);
    return s_player_spawn;
}

// Namespace zclassic/zclassic
// Params 1, eflags: 0x0
// Checksum 0xceb481da, Offset: 0x1910
// Size: 0x64
function on_ai_killed(params) {
    if (level flag::get(#"hash_61e567fec60cf9b9")) {
        level callback::remove_on_ai_killed(&on_ai_killed);
    }
    self namespace_13fefac0::function_35cb919f(params);
}

// Namespace zclassic/zclassic
// Params 0, eflags: 0x0
// Checksum 0x4fb450c1, Offset: 0x1980
// Size: 0x660
function function_1c2ce6a() {
    level endon(#"end_game");
    if (!isdefined(level.var_9678e62d)) {
        level.var_9678e62d = [];
    }
    if (getdvarint(#"hash_439453035e256aef", 1) <= 0) {
        return;
    }
    /#
        if (getdvarint(#"zombie_cheat") > 0) {
            return;
        }
    #/
    if (!is_true(level.player_out_of_playable_area_monitor)) {
        return;
    }
    while (true) {
        players = getplayers();
        if (players.size == 0) {
            waitframe(1);
            continue;
        }
        zombies = getaiarchetypearray(#"zombie");
        for (player_index = 0; player_index < players.size; player_index++) {
            player = players[player_index];
            if (player.sessionstate !== "playing" || !isalive(player) || is_true(player.var_16735873) || player scene::is_igc_active()) {
                continue;
            }
            /#
                if (player util::function_88c74107()) {
                    continue;
                }
            #/
            if (!isdefined(player.var_fdf8af77)) {
                player.var_fdf8af77 = player.origin;
            }
            if (!isdefined(player.var_d386fe5)) {
                player.var_d386fe5 = gettime();
            }
            if (!isdefined(player.var_eb31aed8)) {
                player.var_eb31aed8 = 0;
            }
            var_b1812947 = !zm_utility::check_point_in_playable_area(player.origin);
            if (player.origin === player.var_fdf8af77 || var_b1812947) {
                player.var_eb31aed8 += gettime() - player.var_d386fe5;
            } else {
                player.var_eb31aed8 = 0;
            }
            player.var_fdf8af77 = player.origin;
            player.var_d386fe5 = gettime();
            var_5a5450d4 = arraygetclosest(player.origin, level.var_9678e62d);
            var_aed141de = length2dsquared(player getvelocity()) <= 0 && !ispointonnavmesh(player.origin);
            var_f02558eb = var_b1812947 || var_aed141de ? 300 : 50;
            var_f2587e64 = isdefined(var_5a5450d4) && distancesquared(player.origin, var_5a5450d4) < sqr(var_f02558eb);
            var_10f6803c = getdvarfloat(#"hash_1b38b564a55805d7", 60);
            if (level.var_9678e62d.size > 0) {
                var_10f6803c *= 0.5;
            }
            if (player.var_eb31aed8 >= int(var_10f6803c * 1000) || var_f2587e64) {
                if (var_b1812947 || !ispointonnavmesh(player.origin)) {
                    if (!is_true(var_f2587e64)) {
                        level.var_9678e62d[level.var_9678e62d.size] = player.origin;
                    }
                    telemetry::function_18135b72(#"hash_42d03088c9b0534b", {#player:player, #spot:player.origin});
                    closest_point = getclosestpointonnavmesh(player.origin, 100);
                    if (isdefined(closest_point) && zm_utility::check_point_in_playable_area(closest_point)) {
                        player dontinterpolate();
                        player setorigin(closest_point);
                        if (isdefined(level.zmb_laugh_alias)) {
                            player playlocalsound(level.zmb_laugh_alias);
                        }
                        continue;
                    }
                    spawn_point = player function_452e5ad6();
                    if (isdefined(spawn_point.origin)) {
                        player dontinterpolate();
                        player setorigin(spawn_point.origin);
                        if (isdefined(level.zmb_laugh_alias)) {
                            player playlocalsound(level.zmb_laugh_alias);
                        }
                    }
                }
            }
        }
        var_25dd974b = getdvarfloat(#"hash_5d78f18c5f8ab07d", 10);
        wait(var_25dd974b);
    }
}

