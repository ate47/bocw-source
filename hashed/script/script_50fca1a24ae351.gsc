// Atian COD Tools GSC CW decompiler test
#using script_dc59353021baee1;
#using script_746267f0669c40ae;
#using script_2c9915120c137848;
#using script_2474a362752098d2;
#using script_1a9763988299e68d;
#using script_2a5bf5b4a00cee0d;
#using script_3bbf85ab4cb9f3c2;
#using script_40f967ad5d18ea74;
#using script_3faf478d5b0850fe;
#using script_47851dbeea22fe66;
#using script_1ce46999727f2f2b;
#using script_164a456ce05c3483;
#using script_4d748e58ce25b60c;
#using script_5f20d3b434d24884;
#using script_774302f762d76254;
#using script_6b6510e124bad778;
#using script_1b0b07ff57d1dde3;
#using script_1ee011cd0961afd7;
#using script_5701633066d199f2;
#using script_1b01e95a6b5270fd;
#using script_17dcb1172e441bf6;
#using script_74a56359b7d02ab6;
#using script_f38dc50f0e82277;
#using script_2e9202713de2b353;
#using script_6ad6653eed415ffc;
#using script_41fbdfb1149a433e;
#using script_73ad7687b437e468;
#using script_48e04a393ec6d855;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace namespace_981c1f3c;

// Namespace namespace_981c1f3c/namespace_981c1f3c
// Params 0, eflags: 0x2 linked
// Checksum 0xa319ba00, Offset: 0x4f0
// Size: 0x17c
function init() {
    level.var_8cff5775.var_43cb2d40 = [];
    level.var_8cff5775.var_c2648383 = [];
    level.var_8cff5775.var_a8a563fc = [];
    level.var_8cff5775.var_783e7439 = [];
    level flag::init("dungeon_building", 0);
    clientfield::register("world", "world_dungeon_set", 1, 8, "int");
    clientfield::register("world", "world_dungeon_build", 1, 1, "counter");
    clientfield::register("world", "world_dungeon_destroy", 1, 1, "counter");
    level.var_3dd67d2d = &function_c153f40;
    namespace_c9c45ed8::init();
    namespace_5849a337::init();
    namespace_22574328::init();
    namespace_40bb01c9::init();
    namespace_1dc364c0::init();
    main();
}

// Namespace namespace_981c1f3c/namespace_981c1f3c
// Params 0, eflags: 0x2 linked
// Checksum 0x2a5340f6, Offset: 0x678
// Size: 0x430
function main() {
    if (isdefined(level.var_8cff5775.var_182fb75a)) {
        level thread function_8790b64a();
    }
    foreach (var_6788869b in level.var_8cff5775.var_43cb2d40) {
        var_6788869b delete();
    }
    level.var_8cff5775.var_43cb2d40 = [];
    level.var_8cff5775.var_c93506fb = undefined;
    level.var_8cff5775.var_eeff50c8 = getentarray("dungeon_generator", "targetname");
    level.var_8cff5775.var_dfe4682 = 0;
    foreach (trigger in level.var_8cff5775.var_eeff50c8) {
        idx = function_61e1a1cb(trigger.target);
        level.var_8cff5775.var_4bd98f7c[idx].var_9105f204 = array(level.var_8cff5775.var_65a70dc);
        if (isdefined(trigger.script_parameters)) {
            var_f589486f = strtok(trigger.script_parameters, ";");
            foreach (ai in var_f589486f) {
                if (!isdefined(level.var_8cff5775.var_4bd98f7c[idx].var_9105f204)) {
                    level.var_8cff5775.var_4bd98f7c[idx].var_9105f204 = [];
                } else if (!isarray(level.var_8cff5775.var_4bd98f7c[idx].var_9105f204)) {
                    level.var_8cff5775.var_4bd98f7c[idx].var_9105f204 = array(level.var_8cff5775.var_4bd98f7c[idx].var_9105f204);
                }
                level.var_8cff5775.var_4bd98f7c[idx].var_9105f204[level.var_8cff5775.var_4bd98f7c[idx].var_9105f204.size] = namespace_ff8b8430::function_d7c5adee(ai);
            }
        }
        level.var_8cff5775.var_4bd98f7c[idx].var_40ca2d09 = array(namespace_ff8b8430::function_d7c5adee("meatball_large"));
        trigger thread function_ec0b503f(trigger.target);
    }
}

// Namespace namespace_981c1f3c/namespace_981c1f3c
// Params 3, eflags: 0x2 linked
// Checksum 0x447905ed, Offset: 0xab0
// Size: 0x218
function function_470f56e6(origin, ignore, var_fcfb8b8d = 1) {
    foreach (player in namespace_7f5aeb59::function_23e1f90f()) {
        if (player === ignore) {
            continue;
        }
        if (!isalive(player) || is_true(player.var_8cff5775.var_70c50ae0)) {
            player namespace_7f5aeb59::function_513831e1();
        }
        player notify(#"hash_279998c5df86c04d");
        vehicle = player getvehicleoccupied();
        if (isdefined(vehicle)) {
            vehicle.var_3e742dc1.vehicle = 1;
            vehicle usevehicle(player, 0);
        }
        if (var_fcfb8b8d) {
            player notify(#"hash_7893364bd228d63e");
        }
    }
    foreach (player in namespace_7f5aeb59::function_23e1f90f()) {
        if (player === ignore) {
            continue;
        }
        player setorigin(origin);
    }
}

// Namespace namespace_981c1f3c/namespace_981c1f3c
// Params 1, eflags: 0x2 linked
// Checksum 0x3c57686f, Offset: 0xcd0
// Size: 0x6d0
function function_ec0b503f(var_499e2f80) {
    self endon(#"death");
    level endon(#"game_over");
    self notify("17273a2d0c87b864");
    self endon("17273a2d0c87b864");
    idx = function_61e1a1cb(var_499e2f80);
    /#
        assert(isdefined(idx), "<unknown string>");
    #/
    var_6788869b = struct::get(var_499e2f80 + "_topper", "targetname");
    var_8f13e4c5 = getent(var_499e2f80 + "_WaitVolume", "targetname");
    startnode = struct::get(var_499e2f80, "targetname");
    /#
        assert(isdefined(startnode), "<unknown string>");
    #/
    /#
        assert(isdefined(startnode.target), "<unknown string>");
    #/
    var_3a27fe75 = struct::get(startnode.target, "targetname");
    result = undefined;
    result = self waittill(#"trigger");
    if (isdefined(level.var_8cff5775.var_182fb75a)) {
        self thread function_ec0b503f(var_499e2f80);
        return;
    }
    profilestart();
    foreach (player in getplayers()) {
        player notify(#"hash_279998c5df86c04d");
        player thread namespace_7f5aeb59::function_bc1f5034(0);
        if (level.var_8cff5775.var_4bd98f7c[idx].var_aa859c3b == 0) {
            player notify(#"hash_7893364bd228d63e");
        }
    }
    level thread function_470f56e6(self.origin, result.activator, level.var_8cff5775.var_4bd98f7c[idx].var_aa859c3b == 0);
    objective_setstate(12, "invisible");
    level.var_8cff5775.var_70bd361d = level.var_8cff5775.var_4bd98f7c[idx].var_aa859c3b;
    level thread namespace_ec06fe4a::function_de70888a(1, 1);
    level.var_8cff5775.var_e84586f1 = var_3a27fe75;
    level.var_8cff5775.var_783e7439 = struct::get_array(self.target + "_pickup", "targetname");
    level thread function_600ea4f();
    level.var_8cff5775.var_36d8eb11 = undefined;
    level.var_8cff5775.var_d94cfb75 = gettime();
    level.var_8cff5775.var_a7ccb320 = undefined;
    profilestop();
    level function_c88b8726(idx);
    level namespace_a6ddb172::function_7a0e5387(16);
    level thread namespace_9fc66ac::announce(61);
    level.var_8cff5775.var_5b55ba1f = namespace_4dae815d::function_21cd3890(5);
    if (isdefined(var_8f13e4c5)) {
        namespace_7f5aeb59::function_a8b57c52(var_8f13e4c5.origin, var_8f13e4c5.angles, result.activator, var_8f13e4c5);
        goto LOC_000004e6;
    }
LOC_000004e6:
    if (is_true(level.var_8cff5775.var_c93506fb)) {
        self thread function_ec0b503f(var_499e2f80);
    }
    if (!is_true(level.var_8cff5775.var_c93506fb) && isdefined(var_6788869b)) {
        if (isdefined(var_6788869b.script_noteworthy)) {
            var_2436e1b = namespace_ec06fe4a::function_e22ae9b3(var_6788869b.origin, var_6788869b.script_noteworthy);
            if (isdefined(var_2436e1b)) {
                var_2436e1b.angles.var_2436e1b = var_6788869b.angles;
                var_2436e1b solid();
                level.var_8cff5775.var_43cb2d40[level.var_8cff5775.var_43cb2d40.size] = var_2436e1b;
                self.var_6788869b = var_2436e1b;
                var_2436e1b namespace_83eb6304::function_3ecfde67("explode_lg");
            }
        }
    }
    foreach (player in getplayers()) {
        player thread function_fe17d41e();
        if (!isdefined(level.var_8cff5775.var_6f3d327)) {
            player namespace_6e90e490::function_55775bbc(8);
            level.var_8cff5775.var_dfe4682++;
        }
        player clientfield::increment_to_player("hardResetCamera");
    }
}

// Namespace namespace_981c1f3c/namespace_981c1f3c
// Params 0, eflags: 0x2 linked
// Checksum 0x5c569157, Offset: 0x13a8
// Size: 0x1e0
function function_fe17d41e() {
    level endon(#"hash_7646ba6a6f948966", #"hash_60fc87cdd1e267a9");
    self endon(#"disconnect");
    while (1) {
        groundent = self getgroundent();
        if (isdefined(groundent) && groundent ismovingplatform() && groundent function_2ad80b99()) {
            self.var_8cff5775.var_2fb8ffeb = groundent;
            if (is_true(groundent.var_4d30576a)) {
                if (!is_true(self.var_8cff5775.var_af150b2c)) {
                    self.var_8cff5775.var_af150b2c = 1;
                    self clientfield::set_to_player("setCameraDown", groundent.var_95773ba5);
                }
            } else if (is_true(self.var_8cff5775.var_af150b2c)) {
                self.var_8cff5775.var_af150b2c = 0;
                self clientfield::set_to_player("setCameraDown", 0);
            }
            if (groundent.var_ae9c1083 !== 1) {
                if (isdefined(groundent)) {
                    groundent clientfield::set("dungeon_set_explore_state", 1);
                }
                groundent.var_ae9c1083.groundent = 1;
            }
        }
        wait(0.25);
    }
}

// Namespace namespace_981c1f3c/namespace_981c1f3c
// Params 1, eflags: 0x2 linked
// Checksum 0xbafe52ff, Offset: 0x1590
// Size: 0x6a
function function_61e1a1cb(name) {
    for (i = 0; i < level.var_8cff5775.var_4bd98f7c.size; i++) {
        if (level.var_8cff5775.var_4bd98f7c[i].name === name) {
            return i;
        }
    }
}

// Namespace namespace_981c1f3c/namespace_981c1f3c
// Params 1, eflags: 0x2 linked
// Checksum 0x8c925971, Offset: 0x1608
// Size: 0x6a
function function_56bd9d70(idx) {
    /#
        assert(idx > -1 && idx < level.var_8cff5775.var_4bd98f7c.size);
    #/
    return level.var_8cff5775.var_4bd98f7c[idx].name;
}

// Namespace namespace_981c1f3c/namespace_981c1f3c
// Params 0, eflags: 0x2 linked
// Checksum 0x22a939b9, Offset: 0x1680
// Size: 0x366
function function_8790b64a() {
    level.var_8cff5775.var_d31bcf30 = 1;
    level clientfield::increment("world_dungeon_destroy", 1);
    util::wait_network_frame();
    level namespace_c85a46fe::function_edfcfa44(2);
    namespace_ec06fe4a::function_de70888a();
    namespace_ec06fe4a::function_b6b79fd1();
    util::wait_network_frame();
    level thread namespace_95fdc800::function_b1989480();
    level waittill(#"hash_29a1cf6b91759f63");
    namespace_5849a337::function_2d3e0ee4();
    namespace_22574328::function_da7439a2();
    namespace_491fa2b2::function_df55eb9d(2);
    namespace_a6056a45::function_e2f97f03(2);
    waitframe(1);
    namespace_40bb01c9::function_ddb3fb8f();
    waitframe(1);
    foreach (item in level.var_8cff5775.var_783e7439) {
        if (isdefined(item.pickup)) {
            item.pickup delete();
            item.pickup = undefined;
        }
    }
    level.var_8cff5775.var_783e7439 = [];
    level.var_8cff5775.var_d1501142 = [];
    level.var_8cff5775.var_51400a66 = [];
    level.var_8cff5775.var_f5a14209 = [];
    level.var_8cff5775.var_182fb75a = undefined;
    level.var_8cff5775.var_187ed224 = undefined;
    if (isdefined(level.var_8cff5775.var_9f48249a)) {
        level.var_8cff5775.var_9f48249a namespace_83eb6304::turnofffx("teleporter_dungeon_light");
        util::wait_network_frame();
        if (isdefined(level.var_8cff5775.var_9f48249a.trigger)) {
            level.var_8cff5775.var_9f48249a.trigger delete();
        }
        if (isdefined(level.var_8cff5775.var_9f48249a)) {
            level.var_8cff5775.var_9f48249a delete();
        }
        level.var_8cff5775.var_9f48249a = undefined;
    }
    level notify(#"hash_60fc87cdd1e267a9");
    level.var_8cff5775.var_d31bcf30 = undefined;
    level.var_8cff5775.var_98764e02 = gettime();
}

// Namespace namespace_981c1f3c/namespace_981c1f3c
// Params 2, eflags: 0x2 linked
// Checksum 0xa9101507, Offset: 0x19f0
// Size: 0x25e
function function_4be92bcc(idx, seconds) {
    var_80d530a9 = {};
    var_80d530a9.name.var_80d530a9 = function_56bd9d70(idx);
    var_80d530a9.buildtime = seconds;
    var_80d530a9.var_e032d230.var_80d530a9 = level.var_c97eeeb4.size;
    var_80d530a9.var_b411e9f2.var_80d530a9 = level.var_d5561d56;
    var_80d530a9.halls.var_80d530a9 = level.var_5d40e975;
    var_80d530a9.players.var_80d530a9 = namespace_7f5aeb59::function_f08b75c1();
    var_80d530a9.var_a98f4fd2.var_80d530a9 = [];
    foreach (var_a557de6c in level.var_8cff5775.var_830f8412) {
        var_2e0252f2 = {#count:level.var_8cff5775.var_4cdaff39[var_a557de6c], #name:var_a557de6c};
        if (!isdefined(var_80d530a9.var_a98f4fd2)) {
            var_80d530a9.var_a98f4fd2.var_80d530a9 = [];
        } else if (!isarray(var_80d530a9.var_a98f4fd2)) {
            var_80d530a9.var_a98f4fd2.var_80d530a9 = array(var_80d530a9.var_a98f4fd2);
        }
        var_80d530a9.var_a98f4fd2[var_80d530a9.var_a98f4fd2.size] = var_2e0252f2;
    }
    level.var_8cff5775.var_fa21a3aa = level.var_8cff5775.var_fa21a3aa + var_80d530a9.var_e032d230;
    level.var_8cff5775.var_f23e2931 = level.var_8cff5775.var_f23e2931 + var_80d530a9.halls;
    level.var_8cff5775.var_f5f2b4e8 = level.var_8cff5775.var_f5f2b4e8 + var_80d530a9.var_b411e9f2;
}

// Namespace namespace_981c1f3c/namespace_981c1f3c
// Params 1, eflags: 0x2 linked
// Checksum 0xfac969c4, Offset: 0x1c58
// Size: 0x214
function function_c88b8726(index) {
    profilestart();
    /#
        assert(!isdefined(level.var_8cff5775.var_187ed224), "<unknown string>");
    #/
    if (!isdefined(level.var_8cff5775.var_a354a42f)) {
        level.var_8cff5775.var_a354a42f = 1;
    }
    level flag::set("dungeon_building");
    level.var_d5561d56 = 0;
    level.var_5d40e975 = 0;
    level.var_8cff5775.var_5db3d0bc = [];
    level.var_8cff5775.var_f5a14209 = [];
    level.var_8cff5775.var_d1501142 = [];
    level.var_f9c83ade = 0;
    level.var_8cff5775.var_182fb75a = index;
    profilestop();
    namespace_ec06fe4a::function_de70888a();
    namespace_1e25ad94::function_f5f0c0f8("Creating a new Dungeon! Instance# " + level.var_8cff5775.var_a354a42f);
    level.var_8cff5775.var_a354a42f++;
    level clientfield::set("world_dungeon_set", index);
    util::wait_network_frame();
    level clientfield::increment("world_dungeon_build", 1);
    namespace_95fdc800::function_d6e32b1b();
    level.var_8cff5775.var_187ed224 = namespace_95fdc800::function_1bce4bde(level.var_8cff5775.var_4bd98f7c[index].name);
    wait(0.6);
    level util::set_lighting_state(3, 0);
}

// Namespace namespace_981c1f3c/namespace_981c1f3c
// Params 0, eflags: 0x2 linked
// Checksum 0x57556f7a, Offset: 0x1e78
// Size: 0xac
function function_30697e3b() {
    /#
        assert(level.var_8cff5775.var_4bd98f7c[level.var_8cff5775.var_182fb75a].var_9105f204.size);
    #/
    return level.var_8cff5775.var_4bd98f7c[level.var_8cff5775.var_182fb75a].var_9105f204[randomint(level.var_8cff5775.var_4bd98f7c[level.var_8cff5775.var_182fb75a].var_9105f204.size)];
}

// Namespace namespace_981c1f3c/namespace_981c1f3c
// Params 0, eflags: 0x2 linked
// Checksum 0x24c3c441, Offset: 0x1f30
// Size: 0xac
function function_1a775179() {
    /#
        assert(level.var_8cff5775.var_4bd98f7c[level.var_8cff5775.var_182fb75a].var_40ca2d09.size);
    #/
    return level.var_8cff5775.var_4bd98f7c[level.var_8cff5775.var_182fb75a].var_40ca2d09[randomint(level.var_8cff5775.var_4bd98f7c[level.var_8cff5775.var_182fb75a].var_40ca2d09.size)];
}

// Namespace namespace_981c1f3c/namespace_981c1f3c
// Params 0, eflags: 0x2 linked
// Checksum 0x6122b7c9, Offset: 0x1fe8
// Size: 0x82
function function_fd83ca7f() {
    self notify("5fa33b4e47fc689c");
    self endon("5fa33b4e47fc689c");
    level endon(#"hash_7646ba6a6f948966", #"hash_60fc87cdd1e267a9");
    while (1) {
        result = undefined;
        result = self waittill(#"hash_4c72e79bdad8315e");
        result.ai.var_f979e699 = 0;
    }
}

// Namespace namespace_981c1f3c/namespace_981c1f3c
// Params 0, eflags: 0x2 linked
// Checksum 0x49406883, Offset: 0x2078
// Size: 0x14e
function function_3574d58() {
    self notify("4631b6bca4600740");
    self endon("4631b6bca4600740");
    level endon(#"hash_7646ba6a6f948966", #"hash_60fc87cdd1e267a9");
    self endon(#"death");
    while (1) {
        result = undefined;
        result = self waittill(#"hash_4c72e79bdad8315e");
        if (!isdefined(level.var_8cff5775.var_35c4260d)) {
            level.var_8cff5775.var_35c4260d = [];
        } else if (!isarray(level.var_8cff5775.var_35c4260d)) {
            level.var_8cff5775.var_35c4260d = array(level.var_8cff5775.var_35c4260d);
        }
        level.var_8cff5775.var_35c4260d[level.var_8cff5775.var_35c4260d.size] = result.ai;
        result.ai.var_f979e699 = 0;
    }
}

// Namespace namespace_981c1f3c/namespace_981c1f3c
// Params 0, eflags: 0x2 linked
// Checksum 0x1bfdbf2f, Offset: 0x21d0
// Size: 0x370
function function_14637e3b() {
    level endon(#"hash_7646ba6a6f948966", #"hash_60fc87cdd1e267a9");
    self notify("b40686875632ffd");
    self endon("b40686875632ffd");
    wait(15);
    level thread function_fd83ca7f();
    level.var_8cff5775.var_35c4260d = [];
    var_764338c3 = namespace_ec06fe4a::spawnorigin((0, 0, 0));
    if (isdefined(var_764338c3)) {
        var_764338c3.targetname.var_764338c3 = "doaEnemyFillerFodder";
        var_764338c3 thread function_3574d58();
        var_764338c3 thread namespace_ec06fe4a::function_d55f042c(level, "dungeon_cleanup");
        var_764338c3 thread namespace_ec06fe4a::function_d55f042c(level, "dungeon_destroyed");
    }
    while (1) {
        if (namespace_ec06fe4a::function_9788bacc() < 4) {
            players = function_a1ef346b();
            if (players.size > 1) {
                player = players[randomint(players.size)];
            } else {
                player = players[0];
            }
            var_43f8c3d2 = [];
            if (isdefined(player)) {
                var_43f8c3d2 = arraysortclosest(level.var_8cff5775.var_d1501142, player.origin, 4, 1200, 2048);
            }
            if (var_43f8c3d2.size) {
                spawnorigin = var_43f8c3d2[randomint(var_43f8c3d2.size)];
                count = randomint(8);
                namespace_ff8b8430::function_a6b807ea(function_30697e3b(), count, spawnorigin, 36, undefined, player, level);
            }
        }
        if (randomint(100) == 0) {
            arrayremovevalue(level.var_8cff5775.var_35c4260d, undefined);
            if (level.var_8cff5775.var_35c4260d.size < 3) {
                var_43f8c3d2 = [];
                if (isdefined(player)) {
                    var_43f8c3d2 = arraysortclosest(level.var_8cff5775.var_d1501142, player.origin, 4, 1200, 2048);
                }
                if (var_43f8c3d2.size) {
                    spawnorigin = var_43f8c3d2[randomint(var_43f8c3d2.size)];
                    namespace_ff8b8430::function_a6b807ea(function_1a775179(), 1, spawnorigin, 0, undefined, player, var_764338c3);
                }
            }
        }
        wait(randomintrange(2, 4));
    }
}

// Namespace namespace_981c1f3c/namespace_981c1f3c
// Params 0, eflags: 0x2 linked
// Checksum 0xe264672b, Offset: 0x2548
// Size: 0x3d4
function function_600ea4f() {
    retval = undefined;
    retval = level waittilltimeout(30, #"hash_db5742cf48f5e5");
    if (retval._notify == #"timeout") {
        namespace_1e25ad94::function_4e3cfad("	Dungeon creation timeout!", (1, 0, 0), undefined, 1.5, 1000);
        namespace_1e25ad94::function_f5f0c0f8("Dungeon creation timeout!", 1);
    }
    if (level.var_8cff5775.var_c2648383.size > 0) {
        if (isdefined(level.var_8cff5775.var_187ed224)) {
            level.var_8cff5775.var_c2648383 = arraysortclosest(level.var_8cff5775.var_c2648383, level.var_8cff5775.var_187ed224.origin);
        }
        furthest = level.var_8cff5775.var_c2648383[level.var_8cff5775.var_c2648383.size - 1];
        level.var_8cff5775.var_c2648383 = [];
        level.var_8cff5775.var_9f48249a = namespace_dfc652ee::itemspawn(namespace_dfc652ee::function_2c9923d7(39), furthest.origin, undefined, undefined, 1);
        level.var_8cff5775.var_9f48249a namespace_83eb6304::function_3ecfde67("teleporter_dungeon_light");
        level.var_8cff5775.var_9f48249a clientfield::set("set_icon", 9);
        level.var_8cff5775.var_9f48249a notify(#"hash_2a866f50cc161ca8");
        objective_onentity(13, level.var_8cff5775.var_9f48249a);
        objective_setstate(13, "active");
        objective_setstate(12, "invisible");
    }
    foreach (pickup in level.var_8cff5775.var_783e7439) {
        if (!isdefined(pickup.script_noteworthy)) {
            continue;
        }
        item = namespace_dfc652ee::itemspawn(namespace_dfc652ee::function_6265bde4(pickup.script_noteworthy), pickup.origin, undefined, undefined, 1);
        if (isdefined(pickup.modelscale)) {
            item setscale(pickup.modelscale);
            item notify(#"hash_2a866f50cc161ca8");
        }
        pickup.pickup = item;
    }
    level thread function_73730269(level.var_8cff5775.var_9f48249a);
}

// Namespace namespace_981c1f3c/namespace_981c1f3c
// Params 0, eflags: 0x2 linked
// Checksum 0xe3f46c75, Offset: 0x2928
// Size: 0x370
function function_c153f40() {
    level notify(#"hash_db5742cf48f5e5");
    if (isdefined(level.var_8cff5775.var_d94cfb75)) {
        level.var_8cff5775.var_b5f24666 = gettime();
        seconds = (level.var_8cff5775.var_b5f24666 - level.var_8cff5775.var_d94cfb75) / 1000;
        function_4be92bcc(level.var_8cff5775.var_182fb75a, seconds);
        namespace_1e25ad94::function_4e3cfad("	Dungeon built in : " + seconds + " seconds.  Tiles: " + level.var_c97eeeb4.size + " Rooms: " + level.var_d5561d56 + " Halls: " + level.var_5d40e975, undefined, undefined, undefined, 10);
    }
    level thread namespace_5849a337::function_fabbde0d();
    level thread namespace_22574328::function_b9c8a739();
    level thread namespace_40bb01c9::function_f69dda63();
    if (isdefined(level.var_8cff5775.var_a77e6349)) {
        [[ level.var_8cff5775.var_a77e6349 ]]->function_1137c8bb();
        [[ level.var_8cff5775.var_a77e6349 ]]->function_464d882c();
    }
    foreach (generator in level.var_8cff5775.var_8acd67ef) {
        if ([[ generator ]]->function_30a0163e() == 0) {
            [[ generator ]]->getmodel() namespace_c85a46fe::function_47c860ff(0);
        }
    }
    setsaveddvar(#"hkai_navmeshusehierarchialpathfind", 0);
    level thread function_14637e3b();
    level notify(#"hash_4d5f7cfb3c3f1c9e");
    level flag::clear("dungeon_building");
    if (isdefined(level.var_8cff5775.var_a7ccb320)) {
        [[ level.var_8cff5775.var_a7ccb320 ]]();
    }
    foreach (player in getplayers()) {
        player thread function_10d89d49();
    }
}

// Namespace namespace_981c1f3c/namespace_981c1f3c
// Params 0, eflags: 0x2 linked
// Checksum 0xd4fc5c2d, Offset: 0x2ca0
// Size: 0x15e
function function_10d89d49() {
    self notify("19141bf095382546");
    self endon("19141bf095382546");
    self endon(#"disconnect");
    level endon(#"game_over", #"hash_7646ba6a6f948966", #"hash_60fc87cdd1e267a9");
    wait(1);
    while (isdefined(level.var_8cff5775.var_182fb75a)) {
        basez = level.var_8cff5775.var_187ed224.origin[2] - 256;
        if (self.origin[2] <= basez) {
            namespace_1e25ad94::function_f5f0c0f8("Player " + self.name + " FELL out of the active dungeon at location: " + self.origin + "  Failsafe warp to start point: " + level.var_8cff5775.var_187ed224.origin, 1);
            self setorigin(level.var_8cff5775.var_187ed224.origin);
        }
        wait(1);
    }
}

// Namespace namespace_981c1f3c/namespace_981c1f3c
// Params 1, eflags: 0x2 linked
// Checksum 0x318077c7, Offset: 0x2e08
// Size: 0x708
function function_73730269(var_f3c8eb3) {
    self notify("7457a4fbe260415c");
    self endon("7457a4fbe260415c");
    level endon(#"game_over");
    level thread namespace_ec06fe4a::function_87612422(level.var_8cff5775.var_e84586f1.origin, level.var_8cff5775.var_e84586f1.angles, 0.5, 999999999, level.var_564dda4);
    result = undefined;
    result = level waittill(#"hash_256fe407ad94d83f", #"game_over");
    if (result._notify == #"hash_256fe407ad94d83f" && result.pickup === var_f3c8eb3) {
        namespace_7f5aeb59::function_f8645db3(getdvarint(#"hash_2a014ab8179901f4", 500));
        foreach (player in namespace_7f5aeb59::function_23e1f90f()) {
            player giveachievement(#"doa_achievement_dungeondiver");
            player namespace_d2efac9a::function_cb7b5503();
            if (isdefined(player.var_8cff5775.var_fe639705)) {
                player [[ player.var_8cff5775.var_fe639705 ]](level.var_8cff5775.var_4bd98f7c[level.var_8cff5775.var_182fb75a].type);
            }
        }
    }
    level notify(#"hash_7646ba6a6f948966");
    level notify(#"hash_521118da55424987");
    if (isdefined(var_f3c8eb3)) {
        var_f3c8eb3 namespace_83eb6304::turnofffx("teleporter_dungeon_light");
    }
    level thread namespace_ec06fe4a::function_87612422(level.var_8cff5775.var_e84586f1.origin, level.var_8cff5775.var_e84586f1.angles, 1, 8, level.var_564dda4);
    setsaveddvar(#"hkai_navmeshusehierarchialpathfind", 1);
    objective_setstate(13, "invisible");
    level namespace_c85a46fe::function_edfcfa44(2);
    namespace_ec06fe4a::function_de70888a();
    namespace_ec06fe4a::function_b6b79fd1();
    level thread namespace_7f5aeb59::function_67f054d7();
    level waittill(#"hash_1b322de3d2e3e781");
    level notify(#"hash_7893364bd228d63e");
    level function_8790b64a();
    namespace_1e25ad94::function_4e3cfad("	Dungeon destroyed", undefined, undefined, undefined, 10);
    foreach (player in getplayers()) {
    }
    if (result._notify === "game_over") {
        return;
    }
    namespace_7f5aeb59::function_a8b57c52(level.var_8cff5775.var_e84586f1.origin, level.var_8cff5775.var_e84586f1.angles);
    foreach (player in namespace_7f5aeb59::function_23e1f90f()) {
        player clientfield::increment_to_player("resetCamera");
    }
    level.var_8cff5775.var_e84586f1 = undefined;
    level.var_8cff5775.var_70bd361d = undefined;
    namespace_4dae815d::function_21cd3890(level.var_8cff5775.var_5b55ba1f);
    level thread namespace_7f5aeb59::function_836aeb74();
    objective_setstate(12, "active");
    oldstate = level.var_564dda4;
    level util::set_lighting_state(oldstate, 0);
    level clientfield::set("setTOD", oldstate);
    if (isdefined(level.var_8cff5775.var_a77e6349)) {
        [[ level.var_8cff5775.var_a77e6349 ]]->function_90de0b96();
        [[ level.var_8cff5775.var_a77e6349 ]]->function_ce6bb21b();
    }
    foreach (generator in level.var_8cff5775.var_8acd67ef) {
        [[ generator ]]->getmodel() namespace_c85a46fe::function_47c860ff(1);
    }
    level notify(#"hash_df3bb53ea54541f");
}
