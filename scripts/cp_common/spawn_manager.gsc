// Atian COD Tools GSC CW decompiler test
#using script_2c9bc8b876b81af8;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\trigger_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace spawn_manager;

// Namespace spawn_manager/spawn_manager
// Params 0, eflags: 0x5
// Checksum 0xee02b929, Offset: 0x1d8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"spawn_manager", &preinit, undefined, undefined, undefined);
}

// Namespace spawn_manager/spawn_manager
// Params 0, eflags: 0x6 linked
// Checksum 0x944b8e1c, Offset: 0x220
// Size: 0xe4
function private preinit() {
    level.var_7c90ec19 = 0;
    level.var_539b11be = 50;
    level.var_e4fdd7dd = 0;
    level.var_ec8c9d99 = 0;
    level.spawn_managers = [];
    level.spawn_managers = getentarray("spawn_manager", "classname");
    array::thread_all(level.spawn_managers, &function_b574e20c);
    function_edad3267();
    /#
        callback::on_connect(&on_player_connect);
        level thread function_50a58f3();
    #/
}

// Namespace spawn_manager/spawn_manager
// Params 0, eflags: 0x2 linked
// Checksum 0x895c398c, Offset: 0x310
// Size: 0x1c2
function function_21b5cb9e() {
    assert(isdefined(self));
    assert(isdefined(self.target));
    assert(self.var_ff71eda6 >= self.var_3ea8113, "<unknown string>" + self.sm_id);
    if (!isdefined(self.var_ae34b6c9) || self.var_ae34b6c9 > self.var_e6c22a54.size) {
        self.var_ae34b6c9 = self.var_e6c22a54.size;
    }
    if (!isdefined(self.var_25a70a68) || self.var_25a70a68 > self.var_e6c22a54.size) {
        self.var_25a70a68 = self.var_e6c22a54.size;
    }
    assert(self.var_25a70a68 >= self.var_ae34b6c9, "<unknown string>" + self.sm_id);
    self.var_82a78b41 = randomintrange(self.var_ae34b6c9, self.var_25a70a68 + 1);
    self.spawners = self function_bf4a387a();
    function_405a4f7c();
    assert(self.var_3ea8113 <= self.var_b02a42f7, "<unknown string>");
    if (!isdefined(self.script_forcespawn)) {
        self.script_forcespawn = 0;
    }
}

// Namespace spawn_manager/spawn_manager
// Params 1, eflags: 0x2 linked
// Checksum 0x7332916, Offset: 0x4e0
// Size: 0x16e
function function_7051aeac(var_21472c04) {
    totalfree = self.count >= 0 ? self.count : level.var_539b11be;
    var_54642189 = self.var_b02a42f7 - self.var_5ee53e3.size;
    var_514ec5ff = var_54642189 >= var_21472c04 && totalfree >= var_21472c04 && var_21472c04 > 0;
    var_7d4f7444 = level.var_539b11be - level.var_e4fdd7dd;
    assert(self.enable == level flag::get("<unknown string>" + self.sm_id + "<unknown string>"), "<unknown string>");
    if (self.script_forcespawn == 0) {
        return (totalfree > 0 && var_54642189 > 0 && var_7d4f7444 > 0 && var_514ec5ff && self.enable);
    }
    return totalfree > 0 && var_54642189 > 0 && self.enable;
}

// Namespace spawn_manager/spawn_manager
// Params 1, eflags: 0x2 linked
// Checksum 0xb6540a4d, Offset: 0x658
// Size: 0x8c
function spawn_manager_spawn(maxdelay) {
    self endon(#"death");
    start = gettime();
    while (true) {
        ai = self spawner::spawn();
        if (isdefined(ai) || gettime() - start > 1000 * maxdelay) {
            return ai;
        }
        wait(0.5);
    }
}

// Namespace spawn_manager/spawn_manager
// Params 2, eflags: 0x2 linked
// Checksum 0x7103cc2f, Offset: 0x6f0
// Size: 0x104
function function_ae26af62(spawner, var_21472c04) {
    for (i = 0; i < var_21472c04; i++) {
        ai = undefined;
        if (isdefined(spawner) && isdefined(spawner.targetname)) {
            ai = spawner spawn_manager_spawn(2);
            if (isdefined(ai)) {
                ai.sm_id = self.sm_id;
            }
        } else {
            continue;
        }
        if (!spawner::spawn_failed(ai)) {
            if (isdefined(self.script_radius)) {
                ai.script_radius = self.script_radius;
            }
            if (isdefined(spawner.script_radius)) {
                ai.script_radius = spawner.script_radius;
            }
            ai thread function_39f8667d(spawner, self);
        }
    }
}

// Namespace spawn_manager/spawn_manager
// Params 2, eflags: 0x2 linked
// Checksum 0xb30ea334, Offset: 0x800
// Size: 0x130
function function_39f8667d(spawner, manager) {
    targetname = manager.targetname;
    classname = spawner.classname;
    level.var_7c90ec19++;
    manager.spawncount++;
    if (manager.count > 0) {
        manager.count--;
    }
    level.var_e4fdd7dd++;
    origin = spawner.origin;
    manager.var_5ee53e3[manager.var_5ee53e3.size] = self;
    spawner.var_5ee53e3[spawner.var_5ee53e3.size] = self;
    self waittill(#"death");
    if (isdefined(spawner)) {
        arrayremovevalue(spawner.var_5ee53e3, self);
    }
    if (isdefined(manager)) {
        arrayremovevalue(manager.var_5ee53e3, self);
    }
    level.var_e4fdd7dd--;
}

// Namespace spawn_manager/spawn_manager
// Params 0, eflags: 0x2 linked
// Checksum 0xb07f7920, Offset: 0x938
// Size: 0x196
function function_b4ecf5f4() {
    if (isdefined(self.name)) {
        /#
            function_827b4278(self.name);
        #/
        self.sm_id = self.name;
    } else if (isdefined(self.targetname) && !strstartswith(self.targetname, "pf")) {
        /#
            function_827b4278(self.targetname);
        #/
        self.sm_id = self.targetname;
    } else {
        function_2abead89();
    }
    if (!isdefined(self.var_439d74d6)) {
        self.var_439d74d6 = self.count;
    }
    if (!isdefined(self.var_897f477f)) {
        self.var_897f477f = isdefined(self.var_2023678c) ? self.var_2023678c : level.var_539b11be;
    }
    if (!isdefined(self.var_97077fdd)) {
        self.var_97077fdd = isdefined(self.var_b02a42f7) ? self.var_b02a42f7 : level.var_539b11be;
    }
    if (!isdefined(self.var_2fda6f65)) {
        self.var_2fda6f65 = isdefined(self.var_3ea8113) ? self.var_3ea8113 : 1;
    }
    if (!isdefined(self.var_47f22892)) {
        self.var_47f22892 = isdefined(self.var_ff71eda6) ? self.var_ff71eda6 : 1;
    }
}

/#

    // Namespace spawn_manager/spawn_manager
    // Params 1, eflags: 0x0
    // Checksum 0xfdf7def, Offset: 0xad8
    // Size: 0x128
    function function_827b4278(str_name) {
        var_2f99f0ac = getentarray("<unknown string>", "<unknown string>");
        foreach (sm in var_2f99f0ac) {
            if (sm != self) {
                if (sm.targetname === str_name || sm.name === str_name) {
                    assertmsg("<unknown string>" + str_name + "<unknown string>" + self.origin + "<unknown string>" + sm.origin);
                }
            }
        }
    }

#/

// Namespace spawn_manager/spawn_manager
// Params 0, eflags: 0x2 linked
// Checksum 0x32e99737, Offset: 0xc08
// Size: 0x44
function function_2abead89() {
    if (!isdefined(level.var_f64196ab)) {
        level.var_f64196ab = 0;
    }
    self.sm_id = "sm_auto" + level.var_f64196ab;
    level.var_f64196ab++;
}

// Namespace spawn_manager/spawn_manager
// Params 0, eflags: 0x2 linked
// Checksum 0xf374c432, Offset: 0xc58
// Size: 0xde
function function_224fb326() {
    if (level.players.size >= 4 && isdefined(self.var_a2ec7486)) {
        n_count = self.var_a2ec7486;
    } else if (level.players.size >= 3 && isdefined(self.var_65d52474)) {
        n_count = self.var_65d52474;
    } else if (level.players.size >= 2 && isdefined(self.var_a19de51c)) {
        n_count = self.var_a19de51c;
    } else {
        n_count = self.var_439d74d6;
    }
    if (n_count > 0) {
        self.count = n_count;
        return;
    }
    self.count = -1;
}

// Namespace spawn_manager/spawn_manager
// Params 0, eflags: 0x2 linked
// Checksum 0xb33258dc, Offset: 0xd40
// Size: 0xbe
function function_1038fe33() {
    if (level.players.size >= 4 && isdefined(self.var_c8ce7001)) {
        self.var_2023678c = self.var_c8ce7001;
        return;
    }
    if (level.players.size >= 3 && isdefined(self.var_d53e3e5b)) {
        self.var_2023678c = self.var_d53e3e5b;
        return;
    }
    if (level.players.size >= 2 && isdefined(self.var_14e898e6)) {
        self.var_2023678c = self.var_14e898e6;
        return;
    }
    self.var_2023678c = self.var_897f477f;
}

// Namespace spawn_manager/spawn_manager
// Params 0, eflags: 0x2 linked
// Checksum 0x2300dcd0, Offset: 0xe08
// Size: 0xbe
function function_ddc537ad() {
    if (level.players.size >= 4 && isdefined(self.var_76359bd7)) {
        self.var_b02a42f7 = self.var_76359bd7;
        return;
    }
    if (level.players.size >= 3 && isdefined(self.var_ddf6a107)) {
        self.var_b02a42f7 = self.var_ddf6a107;
        return;
    }
    if (level.players.size >= 2 && isdefined(self.var_d9e469f5)) {
        self.var_b02a42f7 = self.var_d9e469f5;
        return;
    }
    self.var_b02a42f7 = self.var_97077fdd;
}

// Namespace spawn_manager/spawn_manager
// Params 0, eflags: 0x2 linked
// Checksum 0x68f717f1, Offset: 0xed0
// Size: 0xbe
function function_570206ab() {
    if (level.players.size >= 4 && isdefined(self.var_6213e93b)) {
        self.var_3ea8113 = self.var_6213e93b;
        return;
    }
    if (level.players.size >= 3 && isdefined(self.var_d8f4c7db)) {
        self.var_3ea8113 = self.var_d8f4c7db;
        return;
    }
    if (level.players.size >= 2 && isdefined(self.var_ccd50a48)) {
        self.var_3ea8113 = self.var_ccd50a48;
        return;
    }
    self.var_3ea8113 = self.var_2fda6f65;
}

// Namespace spawn_manager/spawn_manager
// Params 0, eflags: 0x2 linked
// Checksum 0x2bdcff33, Offset: 0xf98
// Size: 0xbe
function function_162ab3ec() {
    if (level.players.size >= 4 && isdefined(self.var_8bfc65ea)) {
        self.var_ff71eda6 = self.var_8bfc65ea;
        return;
    }
    if (level.players.size >= 3 && isdefined(self.var_107d6c78)) {
        self.var_ff71eda6 = self.var_107d6c78;
        return;
    }
    if (level.players.size >= 2 && isdefined(self.var_4d716e23)) {
        self.var_ff71eda6 = self.var_4d716e23;
        return;
    }
    self.var_ff71eda6 = self.var_47f22892;
}

// Namespace spawn_manager/spawn_manager
// Params 0, eflags: 0x2 linked
// Checksum 0x5a4ebcbe, Offset: 0x1060
// Size: 0x108
function function_405a4f7c() {
    function_224fb326();
    function_1038fe33();
    function_ddc537ad();
    function_570206ab();
    function_162ab3ec();
    foreach (sp in self.spawners) {
        sp function_224fb326();
        sp function_1038fe33();
        sp function_ddc537ad();
    }
}

// Namespace spawn_manager/spawn_manager
// Params 0, eflags: 0x2 linked
// Checksum 0xe44a3780, Offset: 0x1170
// Size: 0x94
function function_18b42a8b() {
    if (!isdefined(self.var_dd59b9fd)) {
        self.var_dd59b9fd = 0;
    }
    if (!isdefined(self.var_ed48d143)) {
        self.var_ed48d143 = 0;
    }
    if (self.var_ed48d143 > 0 && self.var_ed48d143 > self.var_dd59b9fd) {
        wait(randomfloatrange(self.var_dd59b9fd, self.var_ed48d143));
        return;
    }
    if (self.var_dd59b9fd > 0) {
        wait(self.var_dd59b9fd);
    }
}

// Namespace spawn_manager/spawn_manager
// Params 0, eflags: 0x2 linked
// Checksum 0xc68b8ccb, Offset: 0x1210
// Size: 0x704
function function_b574e20c() {
    self endon(#"death");
    self function_b4ecf5f4();
    self function_a239f3bc();
    self thread function_415ef8f();
    self thread function_16231fe();
    self.enable = 0;
    self.var_5ee53e3 = [];
    self.spawncount = 0;
    isfirsttime = 1;
    self.var_e6c22a54 = getentarray(self.target, "targetname");
    assert(self.var_e6c22a54.size, "<unknown string>" + self.sm_id + "<unknown string>");
    level flag::wait_till("sm_" + self.sm_id + "_enabled");
    util::script_delay();
    self function_21b5cb9e();
    var_73138af8 = 1;
    self function_5bc5bce6();
    while (self.count != 0 && self.spawners.size > 0) {
        function_423f86ff();
        n_active = self.var_5ee53e3.size;
        var_3ed9a82e = self.var_b02a42f7 - n_active;
        if (!var_73138af8 && self.var_5ee53e3.size <= self.var_2023678c) {
            var_73138af8 = 1;
            function_18b42a8b();
        } else if (var_73138af8 && var_3ed9a82e < self.var_ed3f1bbb) {
            var_73138af8 = 0;
        }
        if (!var_73138af8) {
            waitframe(1);
            continue;
        }
        self function_5bc5bce6();
        if (self.count > 0) {
            if (self.var_ed3f1bbb > self.count) {
                self.var_ed3f1bbb = self.count;
            }
        }
        spawned = 0;
        while (!spawned) {
            function_423f86ff();
            if (self.spawners.size <= 0) {
                break;
            }
            if (self function_7051aeac(self.var_ed3f1bbb)) {
                assert(self.var_ed3f1bbb > 0);
                var_33440dfa = [];
                var_76d7ba22 = [];
                for (i = 0; i < self.spawners.size; i++) {
                    current_spawner = self.spawners[i];
                    if (isdefined(current_spawner)) {
                        if (current_spawner.var_5ee53e3.size > current_spawner.var_2023678c) {
                            continue;
                        }
                        if (!function_42a4d0d8(current_spawner)) {
                            continue;
                        }
                        var_20c0d5a8 = current_spawner.var_b02a42f7 - current_spawner.var_5ee53e3.size;
                        if (var_20c0d5a8 >= self.var_ed3f1bbb) {
                            if (isdefined(current_spawner.spawnflags) && (current_spawner.spawnflags & 32) == 32) {
                                var_76d7ba22[var_76d7ba22.size] = current_spawner;
                                continue;
                            }
                            var_33440dfa[var_33440dfa.size] = current_spawner;
                        }
                    }
                }
                if (var_33440dfa.size > 0 || var_76d7ba22.size > 0) {
                    if (var_76d7ba22.size > 0) {
                        spawner = array::random(var_76d7ba22);
                    } else {
                        spawner = array::random(var_33440dfa);
                    }
                    if (!(isdefined(spawner.spawnflags) && (spawner.spawnflags & 64) == 64) && spawner.count < self.var_ed3f1bbb) {
                        self.var_ed3f1bbb = spawner.count;
                    }
                    if (!isfirsttime) {
                        function_26374d3f();
                    } else {
                        isfirsttime = 0;
                    }
                    if (!self.enable) {
                        continue;
                    }
                    self function_ae26af62(spawner, self.var_ed3f1bbb);
                    spawned = 1;
                } else {
                    var_7fdb9de8 = 0;
                    for (i = 0; i < self.spawners.size; i++) {
                        current_spawner = self.spawners[i];
                        if (isdefined(current_spawner)) {
                            if (current_spawner.var_b02a42f7 > var_7fdb9de8) {
                                var_7fdb9de8 = current_spawner.var_b02a42f7;
                            }
                        }
                    }
                    if (var_7fdb9de8 < self.var_ff71eda6) {
                        self.var_ff71eda6 = var_7fdb9de8;
                        self function_5bc5bce6();
                    }
                }
            }
            waitframe(1);
        }
        waitframe(1);
        assert(!level flag::get("<unknown string>" + self.sm_id + "<unknown string>"), "<unknown string>");
        assert(!level flag::get("<unknown string>" + self.sm_id + "<unknown string>"), "<unknown string>");
    }
    self function_f00c27f1();
    if (isdefined(self.var_5ee53e3) && self.var_5ee53e3.size != 0) {
        array::wait_till(self.var_5ee53e3, "death");
    }
    function_257e48e2();
    self delete();
}

// Namespace spawn_manager/spawn_manager
// Params 0, eflags: 0x2 linked
// Checksum 0x84f6a583, Offset: 0x1920
// Size: 0x94
function function_415ef8f() {
    self endon(#"death");
    while (isdefined(self)) {
        self waittill(#"enable");
        self.enable = 1;
        self function_2b1e3e5f();
        self waittill(#"disable");
        self function_e6bfc4ff();
    }
    self function_e6bfc4ff();
}

// Namespace spawn_manager/spawn_manager
// Params 1, eflags: 0x2 linked
// Checksum 0xd9ffdefe, Offset: 0x19c0
// Size: 0x70
function function_9db43c7f(spawn_manager) {
    spawn_manager endon(#"death", #"enable");
    self endon(#"death");
    self waittill(#"trigger");
    spawn_manager notify(#"enable");
}

// Namespace spawn_manager/spawn_manager
// Params 0, eflags: 0x2 linked
// Checksum 0xa14a1e17, Offset: 0x1a38
// Size: 0x16c
function function_16231fe() {
    self waittill(#"death");
    sm_id = self.sm_id;
    a_spawners = self.var_e6c22a54;
    var_61262c99 = self.var_5ee53e3;
    level flag::clear("sm_" + sm_id + "_enabled");
    level flag::set("sm_" + sm_id + "_killed");
    level flag::set("sm_" + sm_id + "_complete");
    function_257e48e2();
    if (var_61262c99.size) {
        array::wait_till(var_61262c99, "death");
    }
    level flag::set("sm_" + sm_id + "_cleared");
    arrayremovevalue(level.spawn_managers, undefined);
}

// Namespace spawn_manager/spawn_manager
// Params 1, eflags: 0x2 linked
// Checksum 0xf1bf48a6, Offset: 0x1bb0
// Size: 0x17c
function function_edad3267(*var_8bfffc1b) {
    triggers = trigger::get_all("trigger_multiple", "trigger_once", "trigger_use", "trigger_radius", "trigger_lookat", "trigger_damage", "trigger_box");
    foreach (trig in triggers) {
        if (isdefined(trig.target)) {
            targets = function_aaa872c1(trig.target);
            foreach (target in targets) {
                trig thread function_9db43c7f(target);
            }
        }
    }
}

// Namespace spawn_manager/spawn_manager
// Params 1, eflags: 0x2 linked
// Checksum 0xc341c731, Offset: 0x1d38
// Size: 0x114
function function_aaa872c1(targetname) {
    if (isdefined(targetname)) {
        var_a900263 = [];
        for (i = 0; i < level.spawn_managers.size; i++) {
            if (isdefined(level.spawn_managers[i])) {
                if (level.spawn_managers[i].targetname === targetname || level.spawn_managers[i].name === targetname) {
                    if (!isdefined(var_a900263)) {
                        var_a900263 = [];
                    } else if (!isarray(var_a900263)) {
                        var_a900263 = array(var_a900263);
                    }
                    var_a900263[var_a900263.size] = level.spawn_managers[i];
                }
            }
        }
        return var_a900263;
    }
    return level.spawn_managers;
}

// Namespace spawn_manager/spawn_manager
// Params 0, eflags: 0x2 linked
// Checksum 0xebc866de, Offset: 0x1e58
// Size: 0x324
function function_bf4a387a() {
    arrayremovevalue(self.var_e6c22a54, undefined);
    exclude = [];
    for (i = 0; i < self.var_e6c22a54.size; i++) {
        if (isdefined(level.var_6a15351c) && self.var_e6c22a54[i].classname == "actor_enemy_dog_sp") {
            if (!isdefined(exclude)) {
                exclude = [];
            } else if (!isarray(exclude)) {
                exclude = array(exclude);
            }
            exclude[exclude.size] = self.var_e6c22a54[i];
        }
    }
    self.var_e6c22a54 = array::exclude(self.var_e6c22a54, exclude);
    var_698d805a = 0;
    foreach (sp in self.var_e6c22a54) {
        if (!isdefined(sp.var_439d74d6)) {
            sp.var_439d74d6 = sp.count;
        }
        if (!isdefined(sp.var_97077fdd)) {
            sp.var_97077fdd = isdefined(sp.var_b02a42f7) ? sp.var_b02a42f7 : level.var_539b11be;
        }
        if (!isdefined(sp.var_897f477f)) {
            sp.var_897f477f = isdefined(sp.var_2023678c) ? sp.var_2023678c : sp.var_97077fdd;
        }
        sp.var_5ee53e3 = [];
    }
    var_7b00ead3 = arraycopy(self.var_e6c22a54);
    var_92174f16 = self.var_82a78b41;
    if (var_92174f16 > self.var_e6c22a54.size) {
        var_92174f16 = self.var_e6c22a54.size;
    }
    spawners = [];
    while (spawners.size < var_92174f16) {
        spawner = array::random(var_7b00ead3);
        if (!isdefined(spawners)) {
            spawners = [];
        } else if (!isarray(spawners)) {
            spawners = array(spawners);
        }
        spawners[spawners.size] = spawner;
        arrayremovevalue(var_7b00ead3, spawner);
    }
    return spawners;
}

// Namespace spawn_manager/spawn_manager
// Params 0, eflags: 0x2 linked
// Checksum 0x4e5873ec, Offset: 0x2188
// Size: 0x5e
function function_5bc5bce6() {
    if (self.var_3ea8113 < self.var_ff71eda6) {
        self.var_ed3f1bbb = randomintrange(self.var_3ea8113, self.var_ff71eda6 + 1);
    } else {
        self.var_ed3f1bbb = self.var_3ea8113;
    }
    return self.var_ed3f1bbb;
}

// Namespace spawn_manager/spawn_manager
// Params 0, eflags: 0x2 linked
// Checksum 0x36aa69de, Offset: 0x21f0
// Size: 0xc2
function function_257e48e2() {
    if (isdefined(self.spawners)) {
        foreach (spawner in self.spawners) {
            if (isdefined(spawner) && !is_false(spawner.script_delete)) {
                spawner delete();
            }
        }
        self.spawners = undefined;
    }
}

// Namespace spawn_manager/spawn_manager
// Params 0, eflags: 0x2 linked
// Checksum 0xf63fad9f, Offset: 0x22c0
// Size: 0xb2
function function_423f86ff() {
    spawners = [];
    for (i = 0; i < self.spawners.size; i++) {
        if (isdefined(self.spawners[i])) {
            if (self.spawners[i].count != 0) {
                spawners[spawners.size] = self.spawners[i];
                continue;
            }
            self.spawners[i] delete();
        }
    }
    self.spawners = spawners;
}

// Namespace spawn_manager/spawn_manager
// Params 0, eflags: 0x2 linked
// Checksum 0xd3826747, Offset: 0x2380
// Size: 0x19a
function function_26374d3f() {
    if (isdefined(self.script_wait)) {
        wait(self.script_wait);
        if (isdefined(self.script_wait_add)) {
            self.script_wait += self.script_wait_add;
        }
        return;
    }
    if (isdefined(self.script_wait_min) && isdefined(self.script_wait_max)) {
        var_8d59d673 = 1;
        players = getplayers();
        if (players.size == 2) {
            var_8d59d673 = 0.7;
        } else if (players.size == 3) {
            var_8d59d673 = 0.5;
        } else if (players.size == 4) {
            var_8d59d673 = 0.3;
        }
        diff = self.script_wait_max - self.script_wait_min;
        if (abs(diff) > 0) {
            wait(randomfloatrange(self.script_wait_min, self.script_wait_min + diff * var_8d59d673));
        } else {
            wait(self.script_wait_min);
        }
        if (isdefined(self.script_wait_add)) {
            self.script_wait_min += self.script_wait_add;
            self.script_wait_max += self.script_wait_add;
        }
    }
}

// Namespace spawn_manager/spawn_manager
// Params 1, eflags: 0x2 linked
// Checksum 0x6604d5b, Offset: 0x2528
// Size: 0x13c
function function_42a4d0d8(spawner) {
    if (!isdefined(spawner.var_3717c478)) {
        return true;
    }
    radius = isdefined(spawner.var_3717c478) ? spawner.var_3717c478 : 0;
    players = getplayers();
    if (!isdefined(players) || players.size == 0) {
        return true;
    }
    foreach (player in players) {
        if (distancesquared(spawner.origin, player.origin) <= sqr(spawner.var_3717c478)) {
            return false;
        }
    }
    return true;
}

// Namespace spawn_manager/spawn_manager
// Params 0, eflags: 0x2 linked
// Checksum 0x50ebbc3c, Offset: 0x2670
// Size: 0xc4
function function_a239f3bc() {
    level flag::init("sm_" + self.sm_id + "_enabled");
    level flag::init("sm_" + self.sm_id + "_complete");
    level flag::init("sm_" + self.sm_id + "_killed");
    level flag::init("sm_" + self.sm_id + "_cleared");
}

// Namespace spawn_manager/spawn_manager
// Params 0, eflags: 0x2 linked
// Checksum 0xd6a006d0, Offset: 0x2740
// Size: 0x84
function function_2b1e3e5f() {
    assert(!level flag::get("<unknown string>" + self.sm_id + "<unknown string>"), "<unknown string>");
    level flag::set("sm_" + self.sm_id + "_enabled");
}

// Namespace spawn_manager/spawn_manager
// Params 0, eflags: 0x2 linked
// Checksum 0x97622589, Offset: 0x27d0
// Size: 0x3c
function function_e6bfc4ff() {
    self.enable = 0;
    level flag::clear("sm_" + self.sm_id + "_enabled");
}

// Namespace spawn_manager/spawn_manager
// Params 0, eflags: 0x0
// Checksum 0x8b3b2e48, Offset: 0x2818
// Size: 0x84
function function_c81f3c84() {
    assert(!level flag::get("<unknown string>" + self.sm_id + "<unknown string>"), "<unknown string>");
    level flag::set("sm_" + self.sm_id + "_killed");
}

// Namespace spawn_manager/spawn_manager
// Params 0, eflags: 0x2 linked
// Checksum 0x2fbae66b, Offset: 0x28a8
// Size: 0x84
function function_f00c27f1() {
    assert(!level flag::get("<unknown string>" + self.sm_id + "<unknown string>"), "<unknown string>");
    level flag::set("sm_" + self.sm_id + "_complete");
}

// Namespace spawn_manager/spawn_manager
// Params 0, eflags: 0x0
// Checksum 0x6be97a2a, Offset: 0x2938
// Size: 0x84
function function_a1dec600() {
    assert(!level flag::get("<unknown string>" + self.sm_id + "<unknown string>"), "<unknown string>");
    level flag::set("sm_" + self.sm_id + "_cleared");
}

// Namespace spawn_manager/spawn_manager
// Params 1, eflags: 0x0
// Checksum 0xc0a27cd, Offset: 0x29c8
// Size: 0x44
function function_3c035c82(var_2594900) {
    assert(var_2594900 <= 32, "<unknown string>");
    level.var_539b11be = var_2594900;
}

// Namespace spawn_manager/spawn_manager
// Params 4, eflags: 0x0
// Checksum 0x333d2d46, Offset: 0x2a18
// Size: 0x14c
function function_883b9499(var_368d405d, trig_name, var_66d7c971, var_f71154e) {
    if (isdefined(var_f71154e) && var_f71154e) {
        trigger = getent(trig_name, var_66d7c971);
        assert(isdefined(trigger), "<unknown string>" + var_66d7c971 + "<unknown string>" + trig_name + "<unknown string>");
        trigger endon(#"trigger");
    }
    if (level flag::exists("sm_" + var_368d405d + "_enabled")) {
        level flag::wait_till("sm_" + var_368d405d + "_complete");
        trigger::use(trig_name, var_66d7c971);
        return;
    }
    assertmsg("<unknown string>" + var_368d405d + "<unknown string>");
}

// Namespace spawn_manager/spawn_manager
// Params 4, eflags: 0x0
// Checksum 0x6ac0c8a1, Offset: 0x2b70
// Size: 0x14c
function function_fc60286c(var_368d405d, trig_name, var_66d7c971, var_f71154e) {
    if (isdefined(var_f71154e) && var_f71154e) {
        trigger = getent(trig_name, var_66d7c971);
        assert(isdefined(trigger), "<unknown string>" + var_66d7c971 + "<unknown string>" + trig_name + "<unknown string>");
        trigger endon(#"trigger");
    }
    if (level flag::exists("sm_" + var_368d405d + "_enabled")) {
        level flag::wait_till("sm_" + var_368d405d + "_cleared");
        trigger::use(trig_name, var_66d7c971);
        return;
    }
    assertmsg("<unknown string>" + var_368d405d + "<unknown string>");
}

// Namespace spawn_manager/spawn_manager
// Params 4, eflags: 0x0
// Checksum 0x1b321eef, Offset: 0x2cc8
// Size: 0x14c
function function_eba7c12(var_368d405d, trig_name, var_66d7c971, var_f71154e) {
    if (isdefined(var_f71154e) && var_f71154e) {
        trigger = getent(trig_name, var_66d7c971);
        assert(isdefined(trigger), "<unknown string>" + var_66d7c971 + "<unknown string>" + trig_name + "<unknown string>");
        trigger endon(#"trigger");
    }
    if (level flag::exists("sm_" + var_368d405d + "_enabled")) {
        level flag::wait_till("sm_" + var_368d405d + "_enabled");
        trigger::use(trig_name, var_66d7c971);
        return;
    }
    assertmsg("<unknown string>" + var_368d405d + "<unknown string>");
}

// Namespace spawn_manager/spawn_manager
// Params 8, eflags: 0x0
// Checksum 0x1a3b4225, Offset: 0x2e20
// Size: 0xf4
function function_cf623c0e(var_368d405d, process, ent, var1, var2, var3, var4, var5) {
    assert(isdefined(process), "<unknown string>");
    assert(level flag::exists("<unknown string>" + var_368d405d + "<unknown string>"), "<unknown string>" + var_368d405d + "<unknown string>");
    wait_till_complete(var_368d405d);
    util::single_func(ent, process, var1, var2, var3, var4, var5);
}

// Namespace spawn_manager/spawn_manager
// Params 8, eflags: 0x0
// Checksum 0xd8f4935, Offset: 0x2f20
// Size: 0xf4
function function_685f0f0b(var_368d405d, process, ent, var1, var2, var3, var4, var5) {
    assert(isdefined(process), "<unknown string>");
    assert(level flag::exists("<unknown string>" + var_368d405d + "<unknown string>"), "<unknown string>" + var_368d405d + "<unknown string>");
    wait_till_cleared(var_368d405d);
    util::single_func(ent, process, var1, var2, var3, var4, var5);
}

// Namespace spawn_manager/spawn_manager
// Params 8, eflags: 0x0
// Checksum 0xc8729dca, Offset: 0x3020
// Size: 0xf4
function function_2886c4a9(var_368d405d, process, ent, var1, var2, var3, var4, var5) {
    assert(isdefined(process), "<unknown string>");
    assert(level flag::exists("<unknown string>" + var_368d405d + "<unknown string>"), "<unknown string>" + var_368d405d + "<unknown string>");
    function_58415221(var_368d405d);
    util::single_func(ent, process, var1, var2, var3, var4, var5);
}

// Namespace spawn_manager/spawn_manager
// Params 2, eflags: 0x2 linked
// Checksum 0x5012ef08, Offset: 0x3120
// Size: 0x12c
function enable(var_368d405d, var_6ea96389) {
    if (level flag::exists("sm_" + var_368d405d + "_enabled")) {
        foreach (sm in level.spawn_managers) {
            if (isdefined(sm) && sm.sm_id == var_368d405d) {
                sm notify(#"enable");
                return;
            }
        }
        return;
    }
    if (!is_true(var_6ea96389)) {
        assertmsg("<unknown string>" + var_368d405d + "<unknown string>");
    }
}

// Namespace spawn_manager/spawn_manager
// Params 2, eflags: 0x0
// Checksum 0x777d0ab8, Offset: 0x3258
// Size: 0x12c
function disable(var_368d405d, var_6ea96389) {
    if (level flag::exists("sm_" + var_368d405d + "_enabled")) {
        foreach (sm in level.spawn_managers) {
            if (isdefined(sm) && sm.sm_id == var_368d405d) {
                sm notify(#"disable");
                return;
            }
        }
        return;
    }
    if (!is_true(var_6ea96389)) {
        assertmsg("<unknown string>" + var_368d405d + "<unknown string>");
    }
}

// Namespace spawn_manager/spawn_manager
// Params 2, eflags: 0x2 linked
// Checksum 0xab1fcdc1, Offset: 0x3390
// Size: 0x154
function kill(var_368d405d, var_6ea96389) {
    if (level flag::exists("sm_" + var_368d405d + "_enabled")) {
        foreach (sm in level.spawn_managers) {
            if (isdefined(sm) && sm.sm_id == var_368d405d) {
                sm delete();
                arrayremovevalue(level.spawn_managers, undefined);
                return;
            }
        }
        return;
    }
    if (!is_true(var_6ea96389)) {
        assertmsg("<unknown string>" + var_368d405d + "<unknown string>");
    }
}

// Namespace spawn_manager/spawn_manager
// Params 1, eflags: 0x0
// Checksum 0xa10406f9, Offset: 0x34f0
// Size: 0xac
function is_enabled(var_368d405d) {
    if (level flag::exists("sm_" + var_368d405d + "_enabled")) {
        if (level flag::get("sm_" + var_368d405d + "_enabled")) {
            return 1;
        }
        return 0;
    }
    assertmsg("<unknown string>" + var_368d405d + "<unknown string>");
}

// Namespace spawn_manager/spawn_manager
// Params 1, eflags: 0x0
// Checksum 0xb91f532f, Offset: 0x35a8
// Size: 0xac
function is_complete(var_368d405d) {
    if (level flag::exists("sm_" + var_368d405d + "_enabled")) {
        if (level flag::get("sm_" + var_368d405d + "_complete")) {
            return 1;
        }
        return 0;
    }
    assertmsg("<unknown string>" + var_368d405d + "<unknown string>");
}

// Namespace spawn_manager/spawn_manager
// Params 1, eflags: 0x0
// Checksum 0xd60eb64e, Offset: 0x3660
// Size: 0xac
function function_abe43927(var_368d405d) {
    if (level flag::exists("sm_" + var_368d405d + "_enabled")) {
        if (level flag::get("sm_" + var_368d405d + "_cleared")) {
            return 1;
        }
        return 0;
    }
    assertmsg("<unknown string>" + var_368d405d + "<unknown string>");
}

// Namespace spawn_manager/spawn_manager
// Params 1, eflags: 0x2 linked
// Checksum 0x81a4ab95, Offset: 0x3718
// Size: 0xac
function is_killed(var_368d405d) {
    if (level flag::exists("sm_" + var_368d405d + "_enabled")) {
        if (level flag::get("sm_" + var_368d405d + "_killed")) {
            return 1;
        }
        return 0;
    }
    assertmsg("<unknown string>" + var_368d405d + "<unknown string>");
}

// Namespace spawn_manager/spawn_manager
// Params 1, eflags: 0x2 linked
// Checksum 0x108fd7a3, Offset: 0x37d0
// Size: 0x9c
function wait_till_cleared(var_368d405d) {
    if (level flag::exists("sm_" + var_368d405d + "_enabled")) {
        level flag::wait_till("sm_" + var_368d405d + "_cleared");
        return;
    }
    assertmsg("<unknown string>" + var_368d405d + "<unknown string>");
}

// Namespace spawn_manager/spawn_manager
// Params 2, eflags: 0x0
// Checksum 0x86ecc1e5, Offset: 0x3878
// Size: 0x140
function function_1e9819fa(var_368d405d, var_e672b95b) {
    assert(isdefined(var_e672b95b), "<unknown string>");
    assert(var_e672b95b, "<unknown string>");
    if (level flag::exists("sm_" + var_368d405d + "_enabled")) {
        level flag::wait_till("sm_" + var_368d405d + "_complete");
    } else {
        assertmsg("<unknown string>" + var_368d405d + "<unknown string>");
    }
    if (level flag::get("sm_" + var_368d405d + "_cleared")) {
        return;
    }
    while (function_ccc0821a(var_368d405d).size > var_e672b95b) {
        wait(0.1);
    }
}

// Namespace spawn_manager/spawn_manager
// Params 1, eflags: 0x2 linked
// Checksum 0x9978792e, Offset: 0x39c0
// Size: 0x9c
function wait_till_complete(var_368d405d) {
    if (level flag::exists("sm_" + var_368d405d + "_enabled")) {
        level flag::wait_till("sm_" + var_368d405d + "_complete");
        return;
    }
    assertmsg("<unknown string>" + var_368d405d + "<unknown string>");
}

// Namespace spawn_manager/spawn_manager
// Params 1, eflags: 0x2 linked
// Checksum 0x5f7e0763, Offset: 0x3a68
// Size: 0x9c
function function_58415221(var_368d405d) {
    if (level flag::exists("sm_" + var_368d405d + "_enabled")) {
        level flag::wait_till("sm_" + var_368d405d + "_enabled");
        return;
    }
    assertmsg("<unknown string>" + var_368d405d + "<unknown string>");
}

// Namespace spawn_manager/spawn_manager
// Params 2, eflags: 0x0
// Checksum 0x1ef4b8fd, Offset: 0x3b10
// Size: 0x178
function function_371d10c1(var_368d405d, count) {
    if (level flag::exists("sm_" + var_368d405d + "_enabled")) {
        level flag::wait_till("sm_" + var_368d405d + "_enabled");
    } else {
        assertmsg("<unknown string>" + var_368d405d + "<unknown string>");
    }
    spawn_manager = function_aaa872c1(var_368d405d);
    assert(spawn_manager.size, "<unknown string>");
    assert(spawn_manager.size == 1, "<unknown string>");
    while (true) {
        if (isdefined(spawn_manager[0].spawncount) && spawn_manager[0].spawncount < count && !is_killed(var_368d405d)) {
            wait(0.5);
            continue;
        }
        break;
    }
}

// Namespace spawn_manager/spawn_manager
// Params 1, eflags: 0x2 linked
// Checksum 0x88cdec22, Offset: 0x3c98
// Size: 0x3a
function function_ccc0821a(var_368d405d) {
    a_ai = getaiarray(var_368d405d, "sm_id");
    return a_ai;
}

