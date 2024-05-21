// Atian COD Tools GSC CW decompiler test
#using script_19367cd29a4485db;
#using script_3411bb48d41bd3b;
#using script_3357acf79ce92f4b;
#using script_27347f09888ad15;
#using scripts\core_common\math_shared.gsc;
#using script_1cc417743d7c262d;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_2c949ef8;

// Namespace namespace_2c949ef8/namespace_2c949ef8
// Params 0, eflags: 0x2 linked
// Checksum 0xfe7861d, Offset: 0x248
// Size: 0x1c
function init() {
    level thread main();
}

// Namespace namespace_2c949ef8/namespace_2c949ef8
// Params 0, eflags: 0x2 linked
// Checksum 0xcbe8548e, Offset: 0x270
// Size: 0x1c
function main() {
    /#
        init_devgui();
    #/
}

// Namespace namespace_2c949ef8/namespace_2c949ef8
// Params 0, eflags: 0x0
// Checksum 0x69eea5db, Offset: 0x298
// Size: 0x4b8
function function_5e62ed5c() {
    level endon(#"game_ended", #"hash_745d15f8fa0daab0");
    while (true) {
        if (!isdefined(level.var_cf15d540)) {
            level.var_cf15d540 = 300;
        }
        if (!isdefined(level.var_f535b5f0)) {
            level.var_f535b5f0 = 480;
        }
        level.var_49f4fe8e = undefined;
        wait_result = level waittilltimeout(randomfloatrange(level.var_cf15d540, level.var_f535b5f0), #"start_ambush", #"objective_locked");
        if (level flag::get("objective_locked")) {
            level flag::wait_till_clear("objective_locked");
            continue;
        }
        a_players = namespace_85745671::function_347f7d34();
        a_ai_zombies = getaiarray();
        var_571f5454 = undefined;
        e_target = undefined;
        if (wait_result._notify === "start_ambush") {
            if (!isdefined(level.var_49f4fe8e)) {
                level.var_49f4fe8e = 1;
            }
            if (isdefined(wait_result.player)) {
                e_target = wait_result.player;
                var_571f5454 = e_target.origin;
            } else if (isdefined(wait_result.location)) {
                var_571f5454 = wait_result.location;
                if (a_players.size > 0) {
                    e_target = arraygetclosest(var_571f5454, a_players);
                }
            }
            var_30ff34e3 = wait_result.var_30ff34e3;
        } else if (getdvarint(#"hash_21e1866f0c677ab8", 1)) {
            return;
        }
        if (isdefined(e_target)) {
            var_120d0570 = array::get_all_closest(e_target.origin, a_ai_zombies, undefined, undefined, 1200);
        } else if (a_players.size > 0) {
            var_5502295b = function_8af8f660();
            var_df053feb = array::get_all_farthest(var_5502295b, a_players);
            foreach (player in var_df053feb) {
                var_120d0570 = array::get_all_closest(player.origin, a_ai_zombies, undefined, undefined, 1200);
                if (var_120d0570.size <= 10) {
                    var_571f5454 = player.origin;
                    break;
                }
            }
        }
        if (isdefined(var_571f5454)) {
            foreach (safehouse in struct::get_array("safehouse", "content_script_name")) {
                if (isdefined(safehouse.origin) && distance2dsquared(var_571f5454, safehouse.origin) <= sqr(2000)) {
                    var_571f5454 = undefined;
                    break;
                }
            }
        }
        if (isdefined(var_571f5454)) {
            function_8b6ae460(var_571f5454, undefined, undefined, undefined, level.var_49f4fe8e);
            level thread function_39925c0d();
        }
    }
}

// Namespace namespace_2c949ef8/namespace_2c949ef8
// Params 0, eflags: 0x2 linked
// Checksum 0xca3ce125, Offset: 0x758
// Size: 0x58
function function_39925c0d() {
    level endon(#"game_ended", #"hash_51e64b5183e4c028", #"hash_745d15f8fa0daab0");
    wait(240);
    level notify(#"hash_51e64b5183e4c028");
}

// Namespace namespace_2c949ef8/namespace_2c949ef8
// Params 0, eflags: 0x2 linked
// Checksum 0x9ec1b9bb, Offset: 0x7b8
// Size: 0x44
function function_f4413120() {
    if (isalive(self)) {
        self playsoundtoplayer(#"hash_177c25d969608d58", self);
    }
}

// Namespace namespace_2c949ef8/namespace_2c949ef8
// Params 2, eflags: 0x0
// Checksum 0x4728554f, Offset: 0x808
// Size: 0x108
function function_be6ec6c(var_2b43a4c4, var_30ff34e3 = 1) {
    if (!isdefined(var_2b43a4c4)) {
        level notify(#"start_ambush", {#var_30ff34e3:var_30ff34e3});
        return;
    }
    if (isplayer(var_2b43a4c4)) {
        level notify(#"start_ambush", {#player:var_2b43a4c4, #var_30ff34e3:var_30ff34e3});
        return;
    }
    if (isvec(var_2b43a4c4)) {
        level notify(#"start_ambush", {#location:var_2b43a4c4, #var_30ff34e3:var_30ff34e3});
    }
}

// Namespace namespace_2c949ef8/namespace_2c949ef8
// Params 1, eflags: 0x2 linked
// Checksum 0xfb750c6f, Offset: 0x918
// Size: 0xc8
function function_47838885(var_120d0570) {
    if (isarray(var_120d0570)) {
        foreach (ai_zombie in var_120d0570) {
            if (ai_zombie.team === #"axis") {
                ai_zombie thread namespace_85745671::function_9456addc(120);
            }
        }
    }
}

// Namespace namespace_2c949ef8/namespace_2c949ef8
// Params 1, eflags: 0x6 linked
// Checksum 0xdb40100c, Offset: 0x9e8
// Size: 0x92
function private function_8d3a76bb(var_cf21a49f) {
    switch (getplayers("allies", var_cf21a49f, 4096).size) {
    case 1:
        return 5;
    case 2:
        return 7;
    case 3:
        return 10;
    default:
        return 12;
    }
}

// Namespace namespace_2c949ef8/namespace_2c949ef8
// Params 10, eflags: 0x2 linked
// Checksum 0x15cf50e1, Offset: 0xa88
// Size: 0x144
function function_8b6ae460(v_loc, var_aa19ae, var_437c9d8d, var_f24d0052, var_6a7b6ec4, var_6cd49f50, var_c8c520ef = 1, str_targetname, n_height, var_dc0c4612 = 0) {
    var_120d0570 = array::get_all_closest(v_loc, getaiarray(), undefined, undefined, var_f24d0052);
    function_47838885(var_120d0570);
    var_76913854 = getplayers("allies", v_loc, 4096);
    if (is_true(var_c8c520ef)) {
        array::thread_all(var_76913854, &function_f4413120);
    }
    function_156560eb(v_loc, var_aa19ae, var_437c9d8d, var_f24d0052, var_6a7b6ec4, var_6cd49f50, str_targetname, n_height, var_dc0c4612);
}

// Namespace namespace_2c949ef8/namespace_2c949ef8
// Params 9, eflags: 0x2 linked
// Checksum 0xfa720c17, Offset: 0xbd8
// Size: 0x61a
function function_156560eb(var_cf21a49f, var_aa19ae, var_437c9d8d = 1500, var_f24d0052 = 3000, var_6a7b6ec4 = 1, var_6cd49f50, str_targetname = "ambush_zombie", n_height, var_dc0c4612 = 0) {
    level endon(#"game_ended", #"hash_51e64b5183e4c028", #"hash_745d15f8fa0daab0");
    var_5b660261 = undefined;
    var_42c6e7d2 = [];
    if (!isdefined(var_aa19ae)) {
        var_aa19ae = "default_ambush_list_realm_" + level.realm;
    }
    var_6443acc = namespace_679a22ba::function_77be8a83(var_aa19ae);
    var_11a3ade0 = var_cf21a49f;
    while (isdefined(var_cf21a49f)) {
        var_663d8b4e = function_8d3a76bb(var_cf21a49f);
        var_bb956a6c = function_48defc2d(var_cf21a49f, var_663d8b4e, var_437c9d8d, var_f24d0052, var_6a7b6ec4, n_height);
        for (i = 0; i < var_bb956a6c.size; i++) {
            a_players = namespace_85745671::function_347f7d34(var_dc0c4612);
            if (!a_players.size) {
                wait(1);
                continue;
            }
            v_spawn = var_bb956a6c[i].origin;
            v_target = arraygetclosest(v_spawn, a_players).origin;
            if (!(isdefined(v_target) && isdefined(v_spawn))) {
                wait(1);
                continue;
            }
            v_angles = vectortoangles(v_target - v_spawn);
            v_angles = (0, v_angles[1], 0);
            var_4bf95f4c = namespace_679a22ba::function_ca209564(var_aa19ae, var_6443acc);
            if (!isdefined(var_4bf95f4c)) {
                function_1eaaceab(var_42c6e7d2);
                var_61262c99 = arraycopy(var_42c6e7d2);
                foreach (ai in var_61262c99) {
                    if (ai.current_state.name === #"wander" && isdefined(ai.birthtime) && gettime() - ai.birthtime > int(5 * 1000) && !isdefined(ai.favoriteenemy)) {
                        arrayremovevalue(var_61262c99, ai);
                    }
                }
                if (!var_61262c99.size) {
                    return;
                } else {
                    wait(0.5);
                    continue;
                }
            }
            ai_spawned = namespace_85745671::function_9d3ad056(var_4bf95f4c.var_990b33df, v_spawn, v_angles, str_targetname);
            if (isdefined(ai_spawned)) {
                if (!isdefined(var_42c6e7d2)) {
                    var_42c6e7d2 = [];
                } else if (!isarray(var_42c6e7d2)) {
                    var_42c6e7d2 = array(var_42c6e7d2);
                }
                var_42c6e7d2[var_42c6e7d2.size] = ai_spawned;
                ai_spawned.var_42c6e7d2 = var_42c6e7d2;
                ai_spawned.var_9602c8b2 = &function_12db74f8;
                ai_spawned thread function_1c491c2b(var_6cd49f50, var_4bf95f4c.list_name, var_6443acc);
                namespace_679a22ba::function_266ee075(var_4bf95f4c.list_name, var_6443acc);
                if (str_targetname === "demented_echo_zombie") {
                    playfxontag(#"hash_7f6d176eb7cc63dc", ai_spawned, "tag_origin");
                } else if (str_targetname === "black_chest_zombie") {
                    playfx(#"hash_7eba9aeb0c1d0afe", ai_spawned.origin, anglestoforward(ai_spawned.angles), anglestoup(ai_spawned.angles));
                }
                waitframe(randomintrangeinclusive(1, 3));
                continue;
            }
            wait(0.25);
        }
        wait(randomfloatrange(4, 5));
        a_players = namespace_85745671::function_347f7d34(var_dc0c4612);
        if (a_players.size) {
            var_cf21a49f = arraygetclosest(var_11a3ade0, a_players).origin;
        }
    }
}

// Namespace namespace_2c949ef8/namespace_2c949ef8
// Params 6, eflags: 0x6 linked
// Checksum 0x75d88ad3, Offset: 0x1200
// Size: 0x132
function private function_48defc2d(var_cf21a49f, var_6c57e71b, var_437c9d8d, var_f24d0052, var_6a7b6ec4, n_height = 80) {
    if (!var_6a7b6ec4) {
        var_bb956a6c = namespace_85745671::function_e4791424(var_cf21a49f, 1, n_height, var_f24d0052, max(var_437c9d8d, int(var_f24d0052 * 0.75)));
        if (isdefined(var_bb956a6c[0])) {
            var_bb956a6c = array::randomize(namespace_85745671::function_e4791424(var_bb956a6c[0].origin, var_6c57e71b, n_height, 1024, 8));
        }
    }
    if (!isdefined(var_bb956a6c) || !var_bb956a6c.size) {
        var_bb956a6c = array::randomize(namespace_85745671::function_e4791424(var_cf21a49f, var_6c57e71b, n_height, var_f24d0052, var_437c9d8d));
    }
    return var_bb956a6c;
}

// Namespace namespace_2c949ef8/namespace_2c949ef8
// Params 3, eflags: 0x2 linked
// Checksum 0x3cb9629, Offset: 0x1340
// Size: 0x108
function function_1c491c2b(var_6cd49f50 = 120, var_f6dca9f2, var_6443acc) {
    self endon(#"death");
    self thread namespace_85745671::function_9456addc(var_6cd49f50);
    while (true) {
        wait(5);
        a_players = getplayers("all", self.origin, 4096);
        if (a_players.size == 0 || isdefined(self.var_eb221ba) && self.var_eb221ba >= 10) {
            if (isdefined(var_f6dca9f2) && isdefined(var_6443acc)) {
                namespace_679a22ba::function_898aced0(var_f6dca9f2, var_6443acc);
            }
            self callback::callback(#"hash_10ab46b52df7967a");
        }
    }
}

// Namespace namespace_2c949ef8/namespace_2c949ef8
// Params 0, eflags: 0x2 linked
// Checksum 0xda10ded1, Offset: 0x1450
// Size: 0x5c
function function_12db74f8() {
    if (self.zombie_move_speed !== #"super_sprint" && self.zombie_move_speed !== #"sprint") {
        self namespace_85745671::function_9758722(#"sprint");
    }
}

// Namespace namespace_2c949ef8/namespace_2c949ef8
// Params 0, eflags: 0x6 linked
// Checksum 0xe190f0aa, Offset: 0x14b8
// Size: 0xf2
function private function_8af8f660() {
    var_657dc854 = (0, 0, 0);
    a_players = getplayers();
    foreach (player in a_players) {
        if (player.sessionstate === "spectator") {
            continue;
        }
        var_657dc854 += function_b5c91b37(player);
    }
    if (a_players.size > 1) {
        var_657dc854 /= a_players.size;
    }
    return var_657dc854;
}

// Namespace namespace_2c949ef8/namespace_2c949ef8
// Params 1, eflags: 0x6 linked
// Checksum 0x19c835a4, Offset: 0x15b8
// Size: 0x82
function private function_b5c91b37(player) {
    if (player isinvehicle()) {
        velocity = player getvehicleoccupied() getvelocity();
    } else {
        velocity = player getvelocity();
    }
    return player.origin + velocity * 5;
}

// Namespace namespace_2c949ef8/namespace_2c949ef8
// Params 1, eflags: 0x2 linked
// Checksum 0xc1b57766, Offset: 0x1648
// Size: 0x2a8
function function_c0966bb1(destination) {
    a_triggers = array::randomize(getentarray("ambush_trigger", "targetname"));
    var_d0300267 = [];
    foreach (trigger in a_triggers) {
        if (trigger.destination === destination.targetname) {
            if (!isdefined(var_d0300267)) {
                var_d0300267 = [];
            } else if (!isarray(var_d0300267)) {
                var_d0300267 = array(var_d0300267);
            }
            var_d0300267[var_d0300267.size] = trigger;
        }
    }
    if (!var_d0300267.size) {
        return;
    }
    level flag::set(#"hash_44074059e3987765");
    n_max = var_d0300267.size * 0.666;
    n_count = 0;
    /#
        if (getdvarint(#"hash_11ff4ccbba6b40f6", 0)) {
            n_max = var_d0300267.size;
        }
    #/
    foreach (trigger in var_d0300267) {
        trigger.var_83523415 = undefined;
        if (n_count < n_max) {
            a_spawns = array::randomize(struct::get_array(trigger.target));
            trigger callback::on_trigger(&function_39ee3b21, undefined, a_spawns);
            n_count++;
            waitframe(1);
            continue;
        }
        trigger delete();
    }
}

// Namespace namespace_2c949ef8/namespace_2c949ef8
// Params 2, eflags: 0x2 linked
// Checksum 0xbee9c977, Offset: 0x18f8
// Size: 0x3d8
function function_39ee3b21(eventstruct, a_spawns) {
    if (!is_true(self.var_83523415) && isplayer(eventstruct.activator) && level flag::get(#"hash_44074059e3987765")) {
        self.var_83523415 = 1;
        self callback::remove_on_trigger(&function_39ee3b21);
        str_bundle = "default_zombies_realm_" + level.realm;
        if ((!isdefined(a_spawns) || !a_spawns.size) && isdefined(self.spawn_struct)) {
            if (isalive(self.vehicle) && self.vehicle_position === self.vehicle.origin) {
                a_spawns = array(self.spawn_struct);
            } else {
                self delete();
                return;
            }
        }
        foreach (spawn in a_spawns) {
            if (getaicount() < getailimit()) {
                if (isdefined(spawn.var_90d0c0ff) && spawn.var_90d0c0ff == "anim_spawn_from_fireplace") {
                    ai = spawnactor(#"hash_32f6e8de727ac61b", spawn.origin, spawn.angles, undefined, 1, 1);
                } else {
                    var_4bf95f4c = namespace_679a22ba::function_ca209564(str_bundle);
                    if (!isdefined(var_4bf95f4c)) {
                        break;
                    }
                    var_abb82760 = namespace_85745671::function_3b941e5c(spawn.origin, var_4bf95f4c.var_990b33df);
                    var_4bf95f4c.var_990b33df = isdefined(var_abb82760) ? var_abb82760 : var_4bf95f4c.var_990b33df;
                    ai = spawnactor(var_4bf95f4c.var_990b33df, spawn.origin, spawn.angles, undefined, 1, 1);
                }
                if (isdefined(ai)) {
                    if (isdefined(spawn.var_90d0c0ff) && spawn.var_90d0c0ff != " " && spawn.var_90d0c0ff != "") {
                        ai.var_c9b11cb3 = spawn.var_90d0c0ff;
                    } else {
                        ai.var_c9b11cb3 = "anim_spawn_from_ground";
                    }
                    ai thread awareness::function_c241ef9a(ai, eventstruct.activator, 20);
                    ai callback::function_d8abfc3d(#"hash_4afe635f36531659", &function_5c3d1f);
                }
            }
            waitframe(randomintrange(2, 5));
        }
    }
}

// Namespace namespace_2c949ef8/namespace_2c949ef8
// Params 0, eflags: 0x2 linked
// Checksum 0x519877c6, Offset: 0x1cd8
// Size: 0x13c
function function_5c3d1f() {
    self notify("6f3adf669d32a3cc");
    self endon("6f3adf669d32a3cc");
    self endon(#"death");
    if (self.current_state.name !== #"wander" && self.current_state.name !== #"idle") {
        return;
    }
    while (self.birthtime + int(30 * 1000) > gettime() || getplayers(undefined, self.origin, 2048).size > 0) {
        wait(1);
    }
    if (self.current_state.name === #"wander" || self.current_state.name === #"idle") {
        self callback::callback(#"hash_10ab46b52df7967a");
    }
}

/#

    // Namespace namespace_2c949ef8/namespace_2c949ef8
    // Params 0, eflags: 0x0
    // Checksum 0xb83e3d6e, Offset: 0x1e20
    // Size: 0x1d4
    function init_devgui() {
        mapname = util::get_map_name();
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
        level thread function_2ebea850();
        level thread function_cfc99c9e();
        level thread function_986ead58();
    }

    // Namespace namespace_2c949ef8/namespace_2c949ef8
    // Params 0, eflags: 0x0
    // Checksum 0x170f3db2, Offset: 0x2000
    // Size: 0x268
    function function_2ebea850() {
        while (true) {
            if (getdvarint(#"hash_21e1866f0c677ab8", 0)) {
                level notify(#"hash_745d15f8fa0daab0");
                setdvar(#"hash_21e1866f0c677ab8", 0);
            } else if (getdvarint(#"hash_606c763dd8de6def", 0)) {
                level notify(#"hash_745d15f8fa0daab0");
                level thread function_5e62ed5c();
                setdvar(#"hash_606c763dd8de6def", 0);
            } else if (getdvarint(#"hash_56ab9987e62df113", 0)) {
                level notify(#"hash_51e64b5183e4c028");
                array::run_all(getaiarray("<unknown string>", "<unknown string>"), &kill);
                setdvar(#"hash_56ab9987e62df113", 0);
            } else if (getdvarint(#"hash_94d12ce1eee7e5a", 0)) {
                level.var_49f4fe8e = 1;
                level thread function_be6ec6c();
                setdvar(#"hash_94d12ce1eee7e5a", 0);
            } else if (getdvarint(#"hash_3139027e2331e6b6", 0)) {
                level.var_49f4fe8e = 0;
                level thread function_be6ec6c();
                setdvar(#"hash_3139027e2331e6b6", 0);
            }
            wait(0.1);
        }
    }

    // Namespace namespace_2c949ef8/namespace_2c949ef8
    // Params 0, eflags: 0x0
    // Checksum 0x7a80d7ef, Offset: 0x2270
    // Size: 0x138
    function function_cfc99c9e() {
        while (true) {
            if (getdvarint(#"hash_6c7a7cb80d06cc72", 0)) {
                level notify(#"hash_745d15f8fa0daab0");
                level.var_cf15d540 = 30;
                level.var_f535b5f0 = 40;
                level thread function_5e62ed5c();
                setdvar(#"hash_6c7a7cb80d06cc72", 0);
            } else if (getdvarint(#"hash_4ca0f239aa5ff2d7", 0)) {
                level notify(#"hash_745d15f8fa0daab0");
                level.var_cf15d540 = 300;
                level.var_f535b5f0 = 480;
                level thread function_5e62ed5c();
                setdvar(#"hash_4ca0f239aa5ff2d7", 0);
            }
            wait(0.1);
        }
    }

    // Namespace namespace_2c949ef8/namespace_2c949ef8
    // Params 0, eflags: 0x0
    // Checksum 0x46cda122, Offset: 0x23b0
    // Size: 0x120
    function function_986ead58() {
        while (true) {
            if (getdvarint(#"hash_35d97c59a1cbade9", 0)) {
                spawns = function_10c88d2e();
                level thread namespace_420b39d3::function_46997bdf(&spawns, "<unknown string>");
                setdvar(#"hash_35d97c59a1cbade9", 0);
            } else if (getdvarint(#"hash_2fcac2478bfe37f7", 0)) {
                spawns = function_10c88d2e();
                namespace_420b39d3::function_70e877d7(&spawns);
                setdvar(#"hash_2fcac2478bfe37f7", 0);
            }
            wait(0.1);
        }
    }

    // Namespace namespace_2c949ef8/namespace_2c949ef8
    // Params 0, eflags: 0x0
    // Checksum 0xe41f5ae4, Offset: 0x24d8
    // Size: 0x138
    function function_10c88d2e() {
        spawns = [];
        if (isdefined(level.contentmanager.currentdestination)) {
            destination = level.contentmanager.currentdestination;
            a_triggers = getentarray("<unknown string>", "<unknown string>");
            foreach (trigger in a_triggers) {
                if (trigger.destination === destination.targetname) {
                    a_spawns = struct::get_array(trigger.target);
                    spawns = arraycombine(a_spawns, spawns);
                }
            }
        }
        return spawns;
    }

#/
