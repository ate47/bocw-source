// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\util.gsc;
#using scripts\cp_common\bb.gsc;
#using script_7d0013bbc05623b9;
#using script_52da18c20f45c56a;
#using script_3626f1b2cf51a99c;
#using scripts\cp_common\gametypes\battlechatter.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\ai\systems\blackboard.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\math_shared.gsc;

#namespace namespace_9c83b58d;

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 0, eflags: 0x5
// Checksum 0x5c31b95e, Offset: 0x340
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_7e93e9089f28804f", &function_70a657d8, undefined, undefined, #"actions");
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 0, eflags: 0x6 linked
// Checksum 0x9d19e5cb, Offset: 0x390
// Size: 0x31c
function private function_70a657d8() {
    if (!isdefined(level.var_c8b4a78a)) {
        /#
            function_5ac4dc99("<unknown string>", "<unknown string>");
        #/
        /#
            function_5ac4dc99("<unknown string>", 0);
        #/
        /#
            function_5ac4dc99("<unknown string>", 0);
        #/
        /#
            function_5ac4dc99("<unknown string>", 0);
        #/
        /#
            function_5ac4dc99("<unknown string>", 0);
        #/
        level.var_c8b4a78a = spawnstruct();
        level.var_c8b4a78a.var_c8b4a78a = [];
        level.var_c8b4a78a.var_44025b0b = [];
        function_4cb18218();
        animation::add_global_notetrack_handler("death", &function_64852b21, 0);
        animation::add_global_notetrack_handler("ragdoll", &function_caa295ea, 0);
        animation::add_global_notetrack_handler("start_ragdoll", &function_caa295ea, 0);
        actions::function_9ddfe2d("takedown", &function_69bc40d4);
        function_cd140ee9("player_useRadius", &function_c30fad9a);
        function_cd140ee9("ai_corpseSynch", &function_c30fad9a);
        /#
            function_cd140ee9("<unknown string>", &function_c30fad9a);
        #/
        /#
            function_cd140ee9("<unknown string>", &function_c30fad9a);
        #/
        /#
            function_cd140ee9("<unknown string>", &function_c30fad9a);
        #/
        /#
            function_cd140ee9("<unknown string>", &function_c30fad9a);
        #/
        /#
            function_cd140ee9("<unknown string>", &function_c30fad9a);
        #/
        /#
            function_cd140ee9("<unknown string>", &function_c30fad9a);
        #/
    }
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 0, eflags: 0x6 linked
// Checksum 0x67bd08e4, Offset: 0x6b8
// Size: 0x36e
function private function_c30fad9a() {
    foreach (player in getplayers()) {
        if (!isdefined(player.var_2e402479)) {
            player.var_2e402479.player = spawnstruct();
        }
        if (!isdefined(player.var_2e402479.victim)) {
            player.var_2e402479.victim = [];
        }
        /#
            if (!isdefined(player.var_2e402479.debug)) {
                player.var_2e402479.debug = spawnstruct();
            }
            player.var_2e402479.debug.var_c03e7127 = getdvarint(#"hash_2ea233605fe3be4", 0) ? 1 : undefined;
            player.var_2e402479.debug.var_e2adb106 = getdvarint(#"hash_65ef9879f3b39ad5", 0) ? 1 : undefined;
            player.var_2e402479.debug.var_b47c9f89 = getdvarint(#"hash_38e86dc5164822fe", 0) ? 1 : undefined;
            player.var_2e402479.debug.var_8dbd3c70 = getdvarint(#"hash_576712f5a0d594b3", 0) || getdvarint(#"hash_4bda603314a2d6dc", 0) ? 1 : undefined;
            if (is_true(player.var_2e402479.debug.var_c03e7127)) {
                player thread function_d661f822();
            } else {
                player notify(#"hash_2eaf8be0116c39a9");
            }
            player.var_2e402479.var_70354814 = getdvarstring(#"hash_5ec5a0d2ff65ae51", "<unknown string>");
            player thread function_ac7d52ad(player.var_2e402479.debug.var_8dbd3c70);
        #/
        player.var_2e402479.var_7a95ca29 = getdvarfloat(#"player_useradius");
        player.var_2e402479.var_43c8f284 = getdvarint(#"hash_377a386110b9793d", 0);
    }
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 0, eflags: 0x6 linked
// Checksum 0x815d5a5e, Offset: 0xa30
// Size: 0xa8
function private function_4cb18218() {
    var_223ffdd1 = getscriptbundlenames("takedown");
    foreach (var_fc96f513 in var_223ffdd1) {
        level function_8528a766(var_fc96f513);
    }
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 1, eflags: 0x6 linked
// Checksum 0x76124292, Offset: 0xae0
// Size: 0x6dc
function private function_8528a766(var_fc96f513) {
    var_2e402479 = getscriptbundle(var_fc96f513);
    if (!isdefined(var_2e402479)) {
        return;
    }
    /#
        assert(var_2e402479.type == "<unknown string>");
    #/
    /#
        assert(isdefined(level.var_c8b4a78a));
    #/
    var_1d5a6fd3 = spawnstruct();
    var_1d5a6fd3.scenes.var_1d5a6fd3 = [];
    if (isdefined(var_2e402479.scenes)) {
        foreach (scene in var_2e402479.scenes) {
            if (isdefined(scene.scene) && scene.scene != "") {
                var_1d5a6fd3.scenes[var_1d5a6fd3.scenes.size] = scene.scene;
            }
        }
    }
    if (var_1d5a6fd3.scenes.size > 0) {
        var_1d5a6fd3.name.var_1d5a6fd3 = var_2e402479.name;
        var_1d5a6fd3.prompt.var_1d5a6fd3 = isdefined(var_2e402479.prompt) ? var_2e402479.prompt : undefined;
        var_1d5a6fd3.combat.var_1d5a6fd3 = is_true(var_2e402479.combat) ? 1 : undefined;
        var_1d5a6fd3.var_72a597df.var_1d5a6fd3 = is_true(var_2e402479.var_72a597df) ? 1 : undefined;
        var_1d5a6fd3.sprint.var_1d5a6fd3 = is_true(var_2e402479.sprint) ? 1 : undefined;
        var_1d5a6fd3.var_7b381548.var_1d5a6fd3 = is_true(var_2e402479.var_7b381548) ? 1 : undefined;
        var_1d5a6fd3.slide.var_1d5a6fd3 = is_true(var_2e402479.slide) ? 1 : undefined;
        var_1d5a6fd3.var_10f9a19c.var_1d5a6fd3 = is_true(var_2e402479.var_10f9a19c) ? 1 : undefined;
        if (isdefined(var_2e402479.action)) {
            actions = strtok(var_2e402479.action, " ,");
            foreach (actionname in actions) {
                var_1d5a6fd3.actions[actionname] = 1;
            }
        }
        var_1d5a6fd3.var_ad61bf60.var_1d5a6fd3 = isdefined(var_2e402479.var_4ea70c9e) && var_2e402479.var_4ea70c9e < 180 ? anglestoforward((0, isdefined(var_2e402479.yaw) ? var_2e402479.yaw : 0, 0)) : undefined;
        var_1d5a6fd3.var_8f4fda5a.var_1d5a6fd3 = isdefined(var_2e402479.var_4ea70c9e) && var_2e402479.var_4ea70c9e < 180 ? cos(var_2e402479.var_4ea70c9e) : undefined;
        var_1d5a6fd3.var_4c067ed7.var_1d5a6fd3 = isdefined(var_2e402479.minrange) && var_2e402479.minrange > 0 ? function_a3f6cdac(var_2e402479.minrange) : undefined;
        var_1d5a6fd3.var_6465622a.var_1d5a6fd3 = isdefined(var_2e402479.maxrange) ? function_a3f6cdac(var_2e402479.maxrange) : undefined;
        var_1d5a6fd3.minheight.var_1d5a6fd3 = isdefined(var_2e402479.minheight) ? var_2e402479.minheight : undefined;
        var_1d5a6fd3.maxheight.var_1d5a6fd3 = isdefined(var_2e402479.maxheight) ? var_2e402479.maxheight : undefined;
        var_1d5a6fd3.trace.var_1d5a6fd3 = is_true(var_2e402479.trace) ? 1 : undefined;
        var_1d5a6fd3.var_726afa1f.var_1d5a6fd3 = is_true(var_2e402479.trace) ? var_2e402479.var_726afa1f : undefined;
        var_1d5a6fd3.var_72970ce2.var_1d5a6fd3 = is_true(var_2e402479.var_72970ce2) ? 1 : undefined;
        var_1d5a6fd3.var_38190f69.var_1d5a6fd3 = is_true(var_2e402479.var_38190f69) ? 1 : undefined;
        var_1d5a6fd3.var_a1aba651.var_1d5a6fd3 = is_true(var_2e402479.var_a1aba651) ? 1 : undefined;
        level.var_c8b4a78a.var_c8b4a78a[var_2e402479.name] = var_1d5a6fd3;
        level.var_c8b4a78a.maxrange = max(isdefined(level.var_c8b4a78a.maxrange) ? level.var_c8b4a78a.maxrange : 0, isdefined(var_2e402479.maxrange) ? var_2e402479.maxrange : 0);
    } else {
        /#
            assertmsg("<unknown string>" + var_2e402479.name + "<unknown string>");
        #/
    }
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 0, eflags: 0x6 linked
// Checksum 0xbedf4f47, Offset: 0x11c8
// Size: 0xd4
function private player_init() {
    /#
        assert(isplayer(self));
    #/
    if (!isdefined(self.var_2e402479)) {
        if (!isdefined(self.var_2e402479)) {
            self.var_2e402479 = spawnstruct();
        }
        /#
            if (!isdefined(self.var_2e402479.debug)) {
                self.var_2e402479.debug = spawnstruct();
            }
        #/
        self.var_2e402479.disabled = undefined;
        self.var_2e402479.var_546f8f54 = undefined;
        self.var_2e402479.victim = [];
        function_c30fad9a();
    }
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 1, eflags: 0x6 linked
// Checksum 0x7c76fb0c, Offset: 0x12a8
// Size: 0xbe
function private function_69bc40d4(action) {
    self endon(action.ender);
    self player_init();
    self thread function_e3bc3dc9(action);
    var_3f34aa83 = self actions::function_83bde308(action, "melee");
    if (is_true(var_3f34aa83)) {
        self actions::function_8488e359();
        return self function_3bab44ea(action);
    }
    return 0;
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 3, eflags: 0x2 linked
// Checksum 0xe1cb7063, Offset: 0x1370
// Size: 0x18c
function function_3bab44ea(action, fullbody, *var_a2ca14bc) {
    self endon(fullbody.ender);
    if (is_true(self.var_2e402479.disabled)) {
        return 0;
    }
    if (function_f8af9078(fullbody.name)) {
        return 0;
    }
    if (isalive(self.var_2e402479.victim[fullbody.name])) {
        victim = self.var_2e402479.victim[fullbody.name];
        scene = self.var_2e402479.scene[fullbody.name];
        if (isdefined(victim) && isdefined(scene)) {
            self notify("takedown_monitor_generic_" + fullbody.name);
            if (isdefined(level.var_c8b4a78a.var_44025b0b[fullbody.name])) {
                self thread [[ level.var_c8b4a78a.var_44025b0b[fullbody.name] ]]();
            } else {
                self thread function_7395fe24(fullbody, var_a2ca14bc, victim, scene);
            }
            return 1;
        }
    }
    return 0;
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 4, eflags: 0x2 linked
// Checksum 0x779d7fc3, Offset: 0x1508
// Size: 0x3ec
function function_7395fe24(action, fullbody, victim, scene) {
    self endoncallback(&function_cee18456, action.ender);
    if (!is_true(self.var_2e402479.debug.var_b47c9f89)) {
        self function_7a061b23(0, undefined);
    }
    self.var_2e402479.weapon = self getcurrentweapon();
    self.var_2e402479.var_e62b225a = self namespace_594b67e::function_1a2a3654();
    self.var_2e402479.start_origin = self.origin;
    self.var_fb9a2c03 = 1;
    self flag::set("in_action");
    self val::set(#"action", "takedamage", 0);
    if (!isalive(victim)) {
        self actions::function_942d9213();
        return;
    }
    if (isdefined(victim)) {
        self.var_2e402479.var_f7557940 = victim;
        victim notify(#"hash_39550364a879e1d4");
        victim.var_310c1596.victim = victim spawner::function_461ce3e9();
        victim namespace_594b67e::function_71180c30(1);
        victim namespace_f48ab2e1::remove(#"melee");
        victim util::function_dce0e9b9();
        victim.var_fb9a2c03.victim = 1;
        if (isdefined(level.var_ab828d57)) {
            victim util::delay(0.1, undefined, level.var_ab828d57);
        }
        victim ai::function_ccc923fb(undefined, 0);
        victim util::delay(0.5, "takedown_executed", &namespace_594b67e::function_71180c30, 0);
        if (isdefined(level.var_b19e4f0a)) {
            victim util::delay(1, undefined, level.var_b19e4f0a, "ally_damaged", "ally_hurt_peripheral", self, 50, 500);
        }
        victim.animname.victim = "generic";
    }
    self namespace_594b67e::function_b0190b65(action);
    self namespace_594b67e::function_c0f7b46e(fullbody, 1);
    self namespace_594b67e::function_e2fcacb2(10);
    if (actions::function_1028d928(action.name, "grab")) {
        self.var_2e402479.var_67582ca5 = victim;
        self function_6940d001(action, scene, 0.25, "grab");
    }
    self thread function_7ef965ed(action);
    self function_7a061b23(1, undefined);
    victim thread function_970b3d76(action, scene, self);
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 1, eflags: 0x2 linked
// Checksum 0x634cc780, Offset: 0x1900
// Size: 0x34
function function_cee18456(parms) {
    if (parms == #"hash_20dda4a52ba67955") {
        self thread function_4000a26f();
    }
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 4, eflags: 0x2 linked
// Checksum 0xf918a94d, Offset: 0x1940
// Size: 0x184
function function_6940d001(action, scene, time, var_9386e7ce) {
    victim = self.var_2e402479.victim[action.name];
    /#
        assert(isalive(victim));
    #/
    self namespace_594b67e::function_6cd69890(0);
    var_17813638 = victim function_4c0949f2(self, scene);
    var_86b37828 = self.var_2e402479.var_2e402479[action.name].name;
    if (time > 0) {
        wait(time);
    }
    self util::delay(0.2, undefined, &function_1c85708e);
    if (self actions::function_ae44e21b(action, "melee")) {
        if (isweapon(self.var_2e402479.var_e62b225a)) {
            self namespace_594b67e::function_b56ad054();
            self actions::function_3af7d065(1, var_9386e7ce);
        }
    }
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 0, eflags: 0x2 linked
// Checksum 0xbcbbd0a4, Offset: 0x1ad0
// Size: 0x1c
function function_1c85708e() {
    self.var_6639d45b namespace_594b67e::function_30b535ff(0);
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 1, eflags: 0x2 linked
// Checksum 0x459b4621, Offset: 0x1af8
// Size: 0x32a
function function_41abe76e(*action) {
    /#
        assert(isplayer(self));
    #/
    now = gettime();
    if ((isdefined(self.var_2e402479.var_e38a7cb3) ? self.var_2e402479.var_e38a7cb3 : -1) == now) {
        return self.var_2e402479.var_41abe76e;
    }
    self.var_2e402479.var_41abe76e = 1;
    stance = self getstance();
    if (!isalive(self)) {
        self.var_2e402479.var_41abe76e = 0;
    } else if (isdefined(self getlinkedent())) {
        self.var_2e402479.var_41abe76e = 0;
    } else if (is_true(self.var_2e402479.disabled)) {
        self.var_2e402479.var_41abe76e = 0;
    } else if (stance == "prone") {
        self.var_2e402479.var_41abe76e = 0;
    } else if (self isthrowinggrenade()) {
        self.var_2e402479.var_41abe76e = 0;
    } else if (self getcurrentweapon().name == "none") {
        self.var_2e402479.var_41abe76e = 0;
    } else if (stance !== "stand") {
        if (!self isstanceallowed("stand")) {
            self.var_2e402479.var_41abe76e = 0;
        } else {
            var_25b46261 = 5;
            endz = var_25b46261 + 0.1;
            traceresult = playerphysicstrace(self.origin + (0, 0, var_25b46261), self.origin + (0, 0, endz));
            if (traceresult[2] < self.origin[2] + endz) {
                /#
                    box(self.origin + (0, 0, var_25b46261), vectorscale((-1, -1, 0), 15), (15, 15, 70), 0, (1, 0, 0), 1, 1, 1);
                #/
                self.var_2e402479.var_41abe76e = 0;
            }
        }
    }
    self.var_2e402479.var_e38a7cb3 = now;
    return self.var_2e402479.var_41abe76e;
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 1, eflags: 0x2 linked
// Checksum 0xffe6f942, Offset: 0x1e30
// Size: 0xaa4
function function_e3bc3dc9(action) {
    self notify("takedown_monitor_generic_" + action.name);
    self endoncallback(&function_7d4b1333, action.ender, #"death", #"disconnect", "takedown_monitor_generic_" + action.name);
    self.var_2e402479.var_bf0ca7db[action.name] = 0;
    var_ac859813 = "take_down";
    if (isdefined(level.var_c8b4a78a.var_ac859813) && isdefined(level.var_c8b4a78a.var_ac859813[action.name])) {
        var_ac859813 = level.var_c8b4a78a.var_ac859813[action.name];
    }
    while (1) {
        waitframe(1);
        if (isdefined(self.var_2e402479.victim[action.name]) && self.var_2e402479.allow_melee) {
            self function_db07e398(action.name, undefined);
        }
        if (level flag::get("hold_context_melee")) {
            self function_7a061b23(1, action.name);
            level flag::wait_till_clear("hold_context_melee");
        }
        if (!self function_41abe76e(action)) {
            self function_7a061b23(1, action.name);
            continue;
        }
        var_ebd06be2 = self function_5ca78f5a(action);
        if (isdefined(var_ebd06be2)) {
            self function_db07e398(action.name, var_ebd06be2[0]);
            self.var_2e402479.scene[action.name] = var_ebd06be2[1];
            self.var_2e402479.var_2e402479[action.name] = var_ebd06be2[2];
            if (!self.var_2e402479.var_bf0ca7db[action.name] && self.var_2cb06cc6.name == "root") {
                var_22a9143 = actions::function_1028d928(action.name, "grab");
                var_86b37828 = self.var_2e402479.var_2e402479[action.name].name;
                var_6e051 = self.var_2e402479.var_2e402479[action.name].prompt;
                self.var_2e402479.victim[action.name] namespace_f48ab2e1::create(#"melee", var_6e051);
                self.var_2e402479.victim[action.name] namespace_f48ab2e1::function_a4cf2cde({#tag:"j_spine4"});
                self.var_2e402479.victim[action.name] namespace_f48ab2e1::function_92127496(1);
                self.var_2e402479.victim[action.name] namespace_f48ab2e1::function_44d7831a(#"melee", 0);
                self.var_2e402479.victim[action.name] namespace_f48ab2e1::function_8f5eb0a6(#"melee", 0);
                self.var_2e402479.victim[action.name] namespace_f48ab2e1::function_d03d79d6(#"melee", 0);
                self.var_2e402479.victim[action.name] namespace_f48ab2e1::function_4cb5d3a1(#"melee", 0);
                self.var_2e402479.victim[action.name] namespace_f48ab2e1::function_dcf99fad(#"melee", 1);
                self.var_2e402479.victim[action.name] namespace_f48ab2e1::function_3171730f(#"melee", #"actions");
                self.var_2e402479.victim[action.name] namespace_f48ab2e1::function_68782902(#"melee", 1000);
                self.var_2e402479.victim[action.name] namespace_f48ab2e1::function_b95d71cd(#"melee", 180);
                self.var_2e402479.victim[action.name] namespace_f48ab2e1::create(#"hash_3c5c65155dfb1731", #"hash_4759bc1b8324047c");
                self.var_2e402479.victim[action.name] namespace_f48ab2e1::function_46df0bc7(#"melee", 5);
                self.var_2e402479.victim[action.name] namespace_f48ab2e1::function_44d7831a(#"hash_3c5c65155dfb1731", 0);
                self.var_2e402479.victim[action.name] namespace_f48ab2e1::function_8f5eb0a6(#"hash_3c5c65155dfb1731", 0.1);
                self.var_2e402479.victim[action.name] namespace_f48ab2e1::function_d03d79d6(#"hash_3c5c65155dfb1731", 0.2);
                self.var_2e402479.victim[action.name] namespace_f48ab2e1::function_a4a9acfc(#"hash_3c5c65155dfb1731", &function_3cadc363);
                self.var_2e402479.victim[action.name] namespace_f48ab2e1::function_4cb5d3a1(#"hash_3c5c65155dfb1731", 0);
                self.var_2e402479.victim[action.name] namespace_f48ab2e1::function_dcf99fad(#"hash_3c5c65155dfb1731", 1);
                self.var_2e402479.victim[action.name] namespace_f48ab2e1::function_3171730f(#"hash_3c5c65155dfb1731", #"actions");
                self.var_2e402479.victim[action.name] namespace_f48ab2e1::function_68782902(#"hash_3c5c65155dfb1731", 1000);
                self.var_2e402479.victim[action.name] namespace_f48ab2e1::function_b95d71cd(#"hash_3c5c65155dfb1731", 180);
                self thread function_1aacad98(action, var_86b37828);
                self.var_2e402479.var_bf0ca7db[action.name] = 1;
            }
            self function_7a061b23(0, action.name);
            /#
                if (is_true(self.var_2e402479.debug.var_c03e7127) && isentity(var_ebd06be2[0]) && isdefined(var_ebd06be2[1])) {
                    debugstar(var_ebd06be2[0].origin + vectorscale((0, 0, 1), 30), 1, (1, 0, 0), var_ebd06be2[1], 0.1);
                }
            #/
        } else {
            self function_db07e398(action.name, undefined);
            self function_7a061b23(1, action.name);
        }
        foreach (key, value in self.var_2e402479.victim) {
            if (!isdefined(value)) {
                self function_db07e398(key, undefined);
            }
        }
    }
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 1, eflags: 0x6 linked
// Checksum 0x304c0757, Offset: 0x28e0
// Size: 0x92
function private function_3cadc363(var_248cbbcf) {
    /#
        assert(isplayer(var_248cbbcf.player));
    #/
    if (self.var_f467e5b0.enabled[#"hash_413d7f278223513"] === 0) {
        return 0;
    }
    return isweapon(var_248cbbcf.player namespace_594b67e::function_1a2a3654());
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 1, eflags: 0x6 linked
// Checksum 0x72749ad8, Offset: 0x2980
// Size: 0x54
function private function_7d4b1333(var_201c5b1f) {
    if (var_201c5b1f != #"death" && var_201c5b1f != #"disconnect") {
        self function_7a061b23(1, undefined);
    }
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 3, eflags: 0x2 linked
// Checksum 0xeaba58dc, Offset: 0x29e0
// Size: 0x160
function function_1aacad98(action, var_d426470, var_72612ea0) {
    /#
        assert(isplayer(self));
    #/
    self notify("takedown_prompt_monitor" + (isdefined(var_d426470) ? var_d426470 : "_") + (isdefined(var_72612ea0) ? var_72612ea0 : "_"));
    self endon("takedown_prompt_monitor" + (isdefined(var_d426470) ? var_d426470 : "_") + (isdefined(var_72612ea0) ? var_72612ea0 : "_"));
    self endon(action.ender);
    while (1) {
        if (!isdefined(self.var_2e402479.victim) || self.var_2e402479.victim.size == 0 || is_true(self.var_fb9a2c03)) {
            self function_db07e398(action.name, undefined, self.var_fb9a2c03);
            return;
        }
        waitframe(1);
    }
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 1, eflags: 0x2 linked
// Checksum 0xe2e04c89, Offset: 0x2b48
// Size: 0x6a
function function_146a3d56(enemy) {
    /#
        assert(isplayer(self));
    #/
    return vectornormalize(enemy.var_97e2c0da.check_origin - self getplayercamerapos());
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 1, eflags: 0x2 linked
// Checksum 0xc35f83f1, Offset: 0x2bc0
// Size: 0x63c
function function_5ca78f5a(action) {
    /#
        assert(isplayer(self));
    #/
    now = gettime();
    result = undefined;
    if ((isdefined(self.var_2e402479.var_8630163b) ? self.var_2e402479.var_8630163b : -1) != now) {
        self.var_2e402479.var_b020d18d = function_e45cbe76(self.origin, level.var_c8b4a78a.maxrange, "axis");
        self.var_2e402479.var_8630163b = now;
    }
    if (self.var_2e402479.var_b020d18d.size > 0) {
        fwd = anglestoforward(self getplayerangles());
        var_e3cd155d = vectornormalize((fwd[0], fwd[1], 0));
        playereye = self getplayercamerapos();
        var_a219ed08 = -1;
        foreach (enemy in self.var_2e402479.var_b020d18d) {
            if (!isalive(enemy)) {
                continue;
            }
            if (is_true(enemy.var_c681e4c1)) {
                continue;
            }
            if (enemy.takedamage === 0) {
                continue;
            }
            if (enemy.species !== #"human") {
                continue;
            }
            if (enemy.var_f467e5b0.enabled[#"hash_3349bde4ee0b31e"] === 0) {
                continue;
            }
            var_2dcf841c = function_3c43bd2a(action, enemy, self);
            if (isdefined(enemy.var_7b026ceb)) {
                jumpcmp(distance2dsquared(enemy.origin, self.origin) < function_a3f6cdac(enemy.var_7b026ceb)) LOC_00000320;
            } else if (isdefined(var_2dcf841c.scene)) {
                dir = self function_146a3d56(enemy);
                dot = vectordot(fwd, dir);
                if (dot > var_a219ed08) {
                    var_a219ed08 = dot;
                    if (isdefined(enemy.var_ab101371)) {
                        var_2dcf841c.scene.var_2dcf841c = enemy.var_ab101371;
                    } else if (isdefined(enemy.var_d3f0031c) || isdefined(enemy.var_59212ad0)) {
                        var_ee55055 = -0.707107;
                        var_59f39012 = anglestoforward(enemy.angles);
                        var_78662e77 = vectornormalize(self.origin - enemy.origin);
                        dot = vectordot(var_78662e77, var_59f39012);
                        var_5423715d = #"hash_6a4c1594be34b79f";
                        if (enemy.awarenesslevelcurrent != "combat") {
                            var_5423715d = #"hash_6d8033f0ef3722c9";
                        }
                        if (isdefined(enemy.var_d3f0031c) && dot <= var_ee55055) {
                            var_2dcf841c.scene.var_2dcf841c = enemy.var_d3f0031c;
                            if (isdefined(enemy.var_4f8ed4b2) && isdefined(enemy.var_3e95b88f)) {
                                var_5423715d = enemy.var_4f8ed4b2;
                            }
                        } else if (isdefined(enemy.var_59212ad0) && dot >= var_ee55055) {
                            var_2dcf841c.scene.var_2dcf841c = enemy.var_59212ad0;
                            if (isdefined(enemy.var_f535b314) && isdefined(enemy.var_3e95b88f)) {
                                var_5423715d = enemy.var_f535b314;
                            }
                        }
                        if (isdefined(enemy.var_3e95b88f.var_f48ab2e1) && isstruct(enemy.var_3e95b88f.var_f48ab2e1[#"melee"])) {
                            enemy namespace_f48ab2e1::function_263320e2(#"melee", var_5423715d);
                        }
                    }
                    /#
                        if (isdefined(self.var_2e402479.var_70354814) && self.var_2e402479.var_70354814 != "<unknown string>" && isdefined(getscriptbundle(self.var_2e402479.var_70354814))) {
                            var_2dcf841c.scene.var_2dcf841c = self.var_2e402479.var_70354814;
                        }
                    #/
                    result = [2:var_2dcf841c.var_2e402479, 1:var_2dcf841c.scene, 0:enemy];
                }
            }
        }
    }
    return result;
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 3, eflags: 0x2 linked
// Checksum 0x23a32092, Offset: 0x3208
// Size: 0x1c4
function function_3c43bd2a(action, victim, player) {
    /#
        assert(isplayer(player));
    #/
    /#
        assert(isai(victim));
    #/
    var_879156ee = undefined;
    var_bf2073bc = undefined;
    victim function_8c04a084(player);
    foreach (var_2e402479 in level.var_c8b4a78a.var_c8b4a78a) {
        var_6fcfdd59 = player function_be279d34(action, var_2e402479, victim);
        if (var_6fcfdd59) {
            var_2cd3ac21 = victim function_c943b729(action, var_2e402479, player);
            if (var_2cd3ac21) {
                var_879156ee = self function_945b4efe(var_2e402479);
                var_bf2073bc = var_2e402479;
                break;
            }
        }
    }
    return {#var_2e402479:var_bf2073bc, #scene:var_879156ee};
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 3, eflags: 0x2 linked
// Checksum 0x3dbc7d78, Offset: 0x33d8
// Size: 0x2aa
function function_be279d34(action, var_2e402479, enemy) {
    /#
        assert(isplayer(self));
    #/
    /#
        assert(isdefined(var_2e402479));
    #/
    if (isdefined(var_2e402479.actions) && !is_true(var_2e402479.actions[action.name])) {
        return 0;
    }
    if ((isdefined(self.health) ? self.health : 0) <= 0) {
        return 0;
    }
    if (self isthrowinggrenade()) {
        return 0;
    }
    /#
        if (is_true(self.var_2e402479.debug.var_e2adb106)) {
            return 0;
        }
    #/
    dir = self function_146a3d56(enemy);
    dir_2d = vectornormalize((dir[0], dir[1], 0));
    if (vectordot(dir_2d, anglestoforward((0, self getplayerangles()[1], 0))) < 0.7) {
        return 0;
    }
    if (!is_true(var_2e402479.sprint) && self issprinting()) {
        return 0;
    }
    if (!is_true(var_2e402479.var_7b381548) && !self issprinting()) {
        return 0;
    }
    if (!is_true(var_2e402479.slide) && self issliding()) {
        return 0;
    }
    if (!is_true(var_2e402479.var_10f9a19c) && !self issliding()) {
        return 0;
    }
    return 1;
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 3, eflags: 0x2 linked
// Checksum 0x9f76fe2, Offset: 0x3690
// Size: 0x584
function function_c943b729(*action, var_2e402479, player) {
    /#
        assert(isactor(self));
    #/
    if (!(isdefined(var_2e402479) && isdefined(player))) {
        return 0;
    }
    if (isentity(self.vehicle)) {
        return 0;
    }
    distsqr = distancesquared(player.origin, self.origin);
    combat = self function_2ae12730(player);
    if (!is_true(var_2e402479.combat) && combat) {
        return 0;
    }
    if (!is_true(var_2e402479.var_72a597df) && !combat) {
        return 0;
    }
    if (isdefined(var_2e402479.var_4c067ed7) && distsqr < var_2e402479.var_4c067ed7) {
        return 0;
    }
    if (isdefined(var_2e402479.var_6465622a) && distsqr > var_2e402479.var_6465622a) {
        return 0;
    }
    switch (blackboard::getstructblackboardattribute(self, "_stance")) {
    case #"stand":
        if (!is_true(var_2e402479.var_72970ce2)) {
            return 0;
        }
        break;
    case #"crouch":
        if (!is_true(var_2e402479.var_38190f69)) {
            return 0;
        }
        break;
    case #"prone":
        if (!is_true(var_2e402479.var_a1aba651)) {
            return 0;
        }
        break;
    case #"hash_defdefdefdefdef0":
        return 0;
        break;
    }
    if (isdefined(var_2e402479.var_ad61bf60) && isdefined(var_2e402479.var_8f4fda5a)) {
        var_d96cb66d = anglestoright(self gettagangles("j_head")) * -1;
        var_a15c1f47 = anglestoforward(self.angles);
        var_da1c47f = lerpvector(var_d96cb66d, var_a15c1f47, 0.5);
        var_582b05a9 = rotatepoint(var_2e402479.var_ad61bf60, (0, function_2981bd91(var_da1c47f), 0));
        if (vectordot(var_582b05a9, self.var_97e2c0da.var_fe50a481) < var_2e402479.var_8f4fda5a) {
            return 0;
        }
    }
    var_c15a5a25 = self.origin[2] - player.origin[2];
    if (isdefined(var_2e402479.minheight) && var_c15a5a25 < var_2e402479.minheight) {
        return 0;
    }
    if (isdefined(var_2e402479.maxheight) && var_c15a5a25 > var_2e402479.maxheight) {
        return 0;
    }
    if (is_true(var_2e402479.trace)) {
        zoffset = vectorscale((0, 0, 1), 24);
        if (isdefined(var_2e402479.var_726afa1f)) {
            zoffset = (0, 0, var_2e402479.var_726afa1f);
        }
        start = player.origin + zoffset;
        end = self.var_97e2c0da.check_origin + zoffset;
        radius = 0;
        trace = physicstrace(start, end, (radius * -1, radius * -1, radius * -1), (radius, radius, radius), self.var_a08ba405, 32 & 1, 32768 & 8388608);
        if (trace[#"fraction"] < 1) {
            /#
                if (is_true(player.var_2e402479.debug.var_c03e7127)) {
                    line(start, end, (0.8, 0.25, 0.25), 1, 1, 1);
                }
            #/
            return 0;
        }
    }
    return 1;
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 2, eflags: 0x0
// Checksum 0x95c4ac98, Offset: 0x3c20
// Size: 0x1b2
function function_a4e4cef5(*var_116dfc70, player) {
    /#
        assert(isplayer(player));
    #/
    if (!isdefined(self.var_234d269) || self.var_234d269 != gettime()) {
        self.var_b87cdd12 = 1;
        var_4df98d7a = anglestoforward(player getplayerangles());
        playereye = player getplayercamerapos();
        delta = self geteye() - playereye;
        var_9354ec35 = math::clamp(distance(self geteye(), playereye) - 30, 0, 120);
        var_da2162f9 = 0.5 + 0.44 * (var_9354ec35 / 150 - 30);
        if (vectordot(vectornormalize(delta), var_4df98d7a) < var_da2162f9) {
            self.var_b87cdd12 = 0;
        }
        self.var_234d269 = gettime();
    }
    return self.var_b87cdd12;
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 0, eflags: 0x2 linked
// Checksum 0xd03d4811, Offset: 0x3de0
// Size: 0x92
function function_5169db86() {
    /#
        assert(isplayer(self));
    #/
    if (isdefined(self.var_2e402479.var_17813638)) {
        return self.var_2e402479.var_17813638;
    }
    var_17813638 = spawnstruct();
    var_17813638.origin.var_17813638 = self.origin;
    var_17813638.angles.var_17813638 = self.angles;
    return var_17813638;
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 7, eflags: 0x0
// Checksum 0xd21daa00, Offset: 0x3e80
// Size: 0x38e
function function_dce515a6(guy, modelname, var_cf230c0, var_8afc2ef3, var_5f373dfe, var_a18e300c, aitype) {
    /#
        assert(isplayer(self));
    #/
    /#
        assert(isdefined(var_8afc2ef3) == isdefined(var_cf230c0));
    #/
    if (isdefined(var_8afc2ef3)) {
        /#
            assert(var_8afc2ef3.size == var_cf230c0.size);
        #/
    }
    if (!isdefined(aitype)) {
        aitype = guy.aitype;
    }
    if (!is_true(var_a18e300c)) {
        if (isalive(guy) && guy !== self.var_2e402479.body) {
            if (isdefined(self.var_2e402479.body) && !self.var_2e402479.body namespace_594b67e::function_30b535ff(0)) {
                if (isdefined(self.var_2e402479.body.magic_bullet_shield)) {
                    self.var_2e402479.body util::stop_magic_bullet_shield();
                }
                self.var_2e402479.body delete();
                self.var_2e402479.body = undefined;
            }
            self.var_2e402479.body = guy;
        } else if (isdefined(self.var_2e402479.body) && isdefined(modelname) && self.var_2e402479.body.modelname !== modelname) {
            self.var_2e402479.body setmodel(modelname);
            self.var_2e402479.body.modelname = modelname;
        }
    }
    if (!isdefined(self.var_2e402479.body) || is_true(var_a18e300c)) {
        var_ef713ee3 = spawn("script_model", self.origin);
        var_ef713ee3.angles.var_ef713ee3 = self.angles;
        var_ef713ee3.team.var_ef713ee3 = "axis";
        var_ef713ee3.animname.var_ef713ee3 = "generic";
        var_ef713ee3 setmodel(modelname);
        var_ef713ee3.modelname = modelname;
        var_ef713ee3.ai_type = aitype;
        var_ef713ee3 namespace_594b67e::function_77af90aa(var_cf230c0, var_8afc2ef3);
        var_ef713ee3 useanimtree("generic");
        var_ef713ee3 namespace_594b67e::function_30b535ff(1);
        self.var_2e402479.body = var_ef713ee3;
    }
    if (isdefined(var_5f373dfe)) {
    }
    return self.var_2e402479.body;
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 2, eflags: 0x2 linked
// Checksum 0x3ed98787, Offset: 0x4218
// Size: 0x1d6
function function_4c0949f2(player, scene) {
    /#
        assert(isplayer(player));
    #/
    entid = self getentitynumber();
    if (!isdefined(player.var_2e402479.var_17813638)) {
        player.var_2e402479.var_17813638 = spawnstruct();
    }
    var_17813638 = player.var_2e402479.var_17813638;
    if (isdefined(self.var_1f1bd6ed)) {
        var_17813638.origin.var_17813638 = self.var_1f1bd6ed;
    } else if (isdefined(player.var_2e402479.var_4378b074[entid])) {
        var_17813638.origin.var_17813638 = player.var_2e402479.var_4378b074[entid];
    } else {
        var_17813638.origin.var_17813638 = self.origin;
    }
    if (isdefined(self.var_598a8a9)) {
        var_17813638.angles.var_17813638 = self.var_598a8a9;
    } else if (isdefined(player.var_2e402479.var_b3f41b40[entid])) {
        var_17813638.angles.var_17813638 = player.var_2e402479.var_b3f41b40[entid];
    } else {
        var_17813638.angles.var_17813638 = (0, function_2981bd91(var_17813638.origin - player.origin), 0);
    }
    var_17813638.scriptbundlename = scene;
    var_17813638.script_play_multiple.var_17813638 = 1;
    var_17813638.script_ignore_active_scene_check.var_17813638 = 1;
    return var_17813638;
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 3, eflags: 0x2 linked
// Checksum 0xee1657, Offset: 0x43f8
// Size: 0x4ec
function function_970b3d76(action, scene, player) {
    if (isalive(self)) {
        if (self scene::function_c935c42()) {
            [[ self._scene_object._o_scene ]]->stop();
        }
        self stopanimscripted();
    }
    if (!isalive(self)) {
        player actions::function_942d9213();
        return;
    }
    if (is_true(player.var_2e402479.var_2e402479[action.name].var_72a597df)) {
        player stats::function_dad108fa(#"hash_62a55a4c32087c2d", 1);
    }
    bb::function_cd497743("takedown", player);
    player endon(action.ender);
    self notify(#"hash_15ec42f1846ef9d0");
    player flag::set("takedown_active");
    player notify(#"hash_29a113e66fed5005");
    self namespace_f48ab2e1::remove(#"hash_3c5c65155dfb1731");
    self namespace_f48ab2e1::function_86eedc();
    waittillframeend();
    player thread actions::function_c004e236("carry_body");
    groundpos = util::ground_position(player.origin, 16, 64, player);
    player thread function_4000a26f(action, [1:"takedown_cleanup", 0:action.ender], groundpos, player.var_2e402479.stance[action.name]);
    var_17813638 = self function_4c0949f2(player, scene);
    player.var_edbc8698.player = self;
    self.var_93d415f = self.maxsightdistsqrd;
    self.var_4285accc = self.newenemyreactiondistsq;
    self.var_577bde5e = self.battlechatter;
    self.var_f2c6a60d = self.allowdeath;
    self.var_13b47e4e = 0;
    self.var_d2ef9695 = 1;
    self.maxsightdistsqrd = 1;
    self.fixednode = 0;
    self.ignoreme = 1;
    self.ignoreall = 1;
    self.newenemyreactiondistsq = 0;
    self.allowdeath = 0;
    self.a.var_bb441859 = 1;
    self.allowpain = 0;
    self battlechatter::function_2ab9360b(0);
    self.var_e690137d = scene;
    self.var_39ee0086 = 1;
    if (isdefined(level.var_e3f5eafc)) {
        self clientfield::set("spy_camera_remove_highlight", 1);
    }
    self notify(#"hash_360f7808f74fa016");
    if (isdefined(self) || isalive(self)) {
        self util::delay(5, "takedown_cleanup", &function_9e3a2c7f, self);
        var_17813638 namespace_594b67e::scene_play(scene, player, self);
        player thread namespace_594b67e::function_d76eed10(action);
        function_64852b21(self);
    }
    player notify(#"hash_29a113e66fed5005");
    player notify(#"hash_1c024a9ada1dc600");
    waitframe(1);
    player actions::function_942d9213();
    player namespace_594b67e::function_e2fcacb2(3);
    player flag::clear("in_action");
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 2, eflags: 0x2 linked
// Checksum 0xb872dbe, Offset: 0x48f0
// Size: 0x34e
function function_7a061b23(enabled, var_116dfc70) {
    if (!isdefined(self.var_2e402479.var_9871533)) {
        self.var_2e402479.var_9871533 = [];
        self.var_2e402479.var_d4da26de = 0;
        self.var_2e402479.allow_melee = 1;
    }
    if (isdefined(var_116dfc70) && !isdefined(self.var_2e402479.var_9871533[var_116dfc70])) {
        /#
            assert(self.var_2e402479.var_9871533.size <= 31);
        #/
        self.var_2e402479.var_9871533[var_116dfc70] = self.var_2e402479.var_9871533.size;
    }
    var_48af221d = 0;
    if (isdefined(var_116dfc70)) {
        var_48af221d = 1 << self.var_2e402479.var_9871533[var_116dfc70];
    } else {
        foreach (bitindex in self.var_2e402479.var_9871533) {
            var_48af221d = var_48af221d & 1 << bitindex;
        }
    }
    if (enabled) {
        self.var_2e402479.var_d4da26de = self.var_2e402479.var_d4da26de & ~var_48af221d;
    } else {
        self.var_2e402479.var_d4da26de = self.var_2e402479.var_d4da26de & var_48af221d;
    }
    var_b381ae79 = !self.var_2e402479.var_d4da26de;
    self.var_2e402479.allow_melee = var_b381ae79;
    var_32d84328 = var_b381ae79;
    var_9463444 = self getcurrentweapon();
    if (var_9463444.name == #"knife_loadout" && is_true(self.var_31df4786)) {
        var_32d84328 = 1;
    }
    if (is_true(self.var_2e402479.var_f75c6733) == var_32d84328) {
        return;
    }
    if (!is_true(var_32d84328)) {
        self val::set(#"hash_791e389c6b7a4657", "allow_melee", 0);
    } else {
        self val::reset(#"hash_791e389c6b7a4657", "allow_melee");
    }
    self.var_2e402479.var_f75c6733 = var_32d84328;
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 1, eflags: 0x2 linked
// Checksum 0x55c3ca7a, Offset: 0x4c48
// Size: 0xa6
function function_f8af9078(var_116dfc70) {
    if (isdefined(var_116dfc70)) {
        if (!isdefined(self.var_2e402479.var_9871533) || !isdefined(self.var_2e402479.var_9871533[var_116dfc70])) {
            return 1;
        }
        var_48af221d = 1 << self.var_2e402479.var_9871533[var_116dfc70];
        return ((self.var_2e402479.var_d4da26de & var_48af221d) == 0);
    }
    return self.var_2e402479.var_d4da26de == 0;
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 1, eflags: 0x2 linked
// Checksum 0x102f650, Offset: 0x4cf8
// Size: 0x19a
function function_64852b21(guy) {
    if (!isdefined(guy)) {
        return;
    }
    player = getplayers()[0];
    guy.skipdeathanim.guy = 1;
    guy.noragdoll.guy = 1;
    guy pushplayer(0);
    guy thread namespace_594b67e::function_91639a4c(0);
    if (isdefined(level.var_ab828d57)) {
        guy util::delay(0.1, undefined, level.var_ab828d57);
    }
    guy.allowdeath.guy = 1;
    guy.diequietly.guy = 1;
    guy util::stop_magic_bullet_shield();
    if (isdefined(guy.stealth)) {
        guy.stealth.var_5f31081e = 60;
    }
    if (isalive(guy)) {
        guy kill((0, 0, 0), player, player);
    }
    if (!is_true(guy.var_caa295ea) && isdefined(player.var_2e402479) && isdefined(guy.origin)) {
        player.var_2e402479.kill_origin = guy.origin;
    }
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 1, eflags: 0x2 linked
// Checksum 0x92e76866, Offset: 0x4ea0
// Size: 0x24a
function function_caa295ea(guy) {
    player = getplayers()[0];
    if (!isdefined(guy) && isdefined(player.var_2e402479.kill_origin)) {
        foreach (corpse in getcorpsearray(player.origin, 500)) {
            if (is_true(corpse.var_caa295ea)) {
                continue;
            }
            if (corpse isragdoll()) {
                continue;
            }
            var_2501cbe2 = corpse.origin;
            if (is_true(player.var_2e402479.var_43c8f284)) {
                var_2501cbe2 = corpse function_b9ab269e();
            }
            if (isdefined(var_2501cbe2) && distancesquared(var_2501cbe2, player.var_2e402479.kill_origin) < function_a3f6cdac(60)) {
                corpse startragdoll();
                corpse.var_caa295ea.corpse = 1;
            }
        }
    } else if (isdefined(guy) && !is_true(guy.var_caa295ea)) {
        if (isai(guy)) {
        }
        guy startragdoll();
        guy.var_caa295ea.guy = 1;
    }
    player.var_2e402479.kill_origin = undefined;
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 1, eflags: 0x2 linked
// Checksum 0x3044b952, Offset: 0x50f8
// Size: 0x38e
function function_8c04a084(player) {
    now = gettime();
    if ((isdefined(self.var_9959f16e) ? self.var_9959f16e : -1) != now) {
        if (!isdefined(self.var_97e2c0da)) {
            self.var_97e2c0da = {};
        }
        tag = "tag_origin";
        var_13e23952 = self gettagangles(tag);
        tagpos = self gettagorigin(tag);
        var_da4521b5 = anglestoright(var_13e23952);
        var_a38620f = anglestoforward(var_13e23952);
        var_b6db82af = player.origin - tagpos;
        var_b6db82af = (var_b6db82af[0], var_b6db82af[1], 0);
        var_b6db82af = vectornormalize(var_b6db82af);
        var_cc854834 = abs(vectordot(var_a38620f, (0, 0, 1)));
        if (var_cc854834 > 0.7) {
            var_a38620f = vectornormalize((var_da4521b5[0], var_da4521b5[1], 0));
        } else {
            var_a38620f = vectornormalize((var_a38620f[0], var_a38620f[1], 0));
        }
        var_e3a10f71 = anglestoforward(self.angles);
        if (vectordot(var_b6db82af, var_e3a10f71) > vectordot(var_a38620f, var_e3a10f71)) {
            var_a38620f = var_e3a10f71;
        }
        var_da4521b5 = vectorcross(var_a38620f, (0, 0, 1));
        self.var_97e2c0da.var_fe50a481 = var_b6db82af;
        self.var_97e2c0da.dot_forward = vectordot(var_a38620f, var_b6db82af);
        self.var_97e2c0da.dot_right = vectordot(var_da4521b5, var_b6db82af);
        self.var_97e2c0da.height = self.origin[2] - player.origin[2];
        self.var_97e2c0da.var_bd87dbc5 = abs(self.var_97e2c0da.height);
        self.var_97e2c0da.check_origin = self gettagorigin(tag);
        self.var_97e2c0da.distsq = distancesquared(self.var_97e2c0da.check_origin, player getplayercamerapos());
        self.var_9959f16e = now;
    }
    return self.var_97e2c0da;
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 2, eflags: 0x2 linked
// Checksum 0xaebda895, Offset: 0x5490
// Size: 0x184
function function_945b4efe(var_2e402479, var_a07aacf8) {
    /#
        assert(isplayer(self));
    #/
    if (!isdefined(self.var_2e402479.var_d701e48f)) {
        self.var_2e402479.var_d701e48f = [];
    }
    if (!isdefined(self.var_2e402479.var_d701e48f[var_2e402479.name]) || self.var_2e402479.var_d701e48f[var_2e402479.name].size == 0) {
        if (isdefined(var_2e402479.scenes)) {
            self.var_2e402479.var_d701e48f[var_2e402479.name] = array::randomize(arraycopy(var_2e402479.scenes));
        }
    }
    var_ab3c9923 = self.var_2e402479.var_d701e48f[var_2e402479.name];
    if (!isdefined(var_ab3c9923)) {
        return undefined;
    }
    result = var_ab3c9923[var_ab3c9923.size - 1];
    if (is_true(var_a07aacf8)) {
        var_ab3c9923[var_ab3c9923.size - 1] = undefined;
    }
    return result;
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 4, eflags: 0x2 linked
// Checksum 0xb7d4bdd7, Offset: 0x5620
// Size: 0x26c
function function_4000a26f(action, var_949a9f8b, *originalorigin, var_d8ba335a) {
    self notify(#"hash_7ef80ca5708348b8");
    self endon(#"hash_7ef80ca5708348b8");
    /#
        assert(isplayer(self));
    #/
    if (isdefined(originalorigin)) {
        if (!isarray(originalorigin)) {
            originalorigin = [0:originalorigin];
        }
        self waittill(originalorigin);
    }
    self namespace_594b67e::function_44a46209(var_d8ba335a);
    self val::function_e681e68e(#"action");
    var_8bd3d2f2 = self.var_2e402479.var_f7557940;
    if (isalive(var_8bd3d2f2) && isdefined(var_8bd3d2f2.var_310c1596) && !self flag::get("body_shield_active")) {
        var_8bd3d2f2 thread spawner::go_to_node(var_8bd3d2f2.var_310c1596);
        var_8bd3d2f2.var_310c1596 = undefined;
    }
    if (isalive(self.var_edbc8698) && !is_true(self.var_edbc8698.var_69defa17)) {
        self.var_edbc8698 stopanimscripted();
        self.var_edbc8698 kill(self.origin, self, self);
        self.var_edbc8698 = undefined;
    }
    if (isdefined(var_949a9f8b)) {
        self function_945b4efe(self.var_2e402479.var_2e402479[var_949a9f8b.name], 1);
    }
    self.var_fb9a2c03 = undefined;
    self flag::clear("takedown_active");
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 1, eflags: 0x2 linked
// Checksum 0x7fd51cd, Offset: 0x5898
// Size: 0x74
function function_9e3a2c7f(guy) {
    if (isdefined(guy)) {
        if (isalive(guy)) {
            if (isdefined(guy.magic_bullet_shield)) {
                guy util::stop_magic_bullet_shield();
            }
            /#
                println("<unknown string>");
            #/
        }
    }
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 1, eflags: 0x2 linked
// Checksum 0xbe31b775, Offset: 0x5918
// Size: 0x64
function function_7ef965ed(action) {
    self waittill(action.ender);
    self function_7a061b23(1, action.name);
    self function_db07e398(action.name, undefined);
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 3, eflags: 0x2 linked
// Checksum 0x31f95128, Offset: 0x5988
// Size: 0x110
function function_db07e398(var_116dfc70, var_1d3e20c8, var_c9453f35) {
    if (isdefined(self.var_2e402479.victim[var_116dfc70]) && self.var_2e402479.victim[var_116dfc70] !== var_1d3e20c8) {
        self.var_2e402479.victim[var_116dfc70] namespace_f48ab2e1::remove(#"melee");
        if (!is_true(var_c9453f35)) {
            self.var_2e402479.victim[var_116dfc70] namespace_f48ab2e1::remove(#"hash_3c5c65155dfb1731");
        }
        self.var_2e402479.var_bf0ca7db[var_116dfc70] = 0;
    }
    self.var_2e402479.victim[var_116dfc70] = var_1d3e20c8;
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 1, eflags: 0x0
// Checksum 0xce887cfa, Offset: 0x5aa0
// Size: 0x76
function function_a3b724c6(var_42b3f9a9) {
    /#
        assert(isplayer(self));
    #/
    if (!isdefined(self.var_2e402479)) {
        self.var_2e402479 = {};
    }
    self.var_2e402479.var_42b3f9a9 = is_true(var_42b3f9a9) ? 1 : undefined;
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 1, eflags: 0x2 linked
// Checksum 0xe95e14b3, Offset: 0x5b20
// Size: 0x94
function function_2ae12730(player) {
    /#
        assert(isplayer(player));
    #/
    /#
        assert(isactor(self));
    #/
    if (is_true(player.var_2e402479.var_42b3f9a9)) {
        return 0;
    }
    return self.awarenesslevelcurrent == "combat";
}

// Namespace namespace_9c83b58d/namespace_9c83b58d
// Params 1, eflags: 0x4
// Checksum 0x9704eb1f, Offset: 0x5bc0
// Size: 0x508
function private function_ac7d52ad(show) {
    /#
        self notify("<unknown string>");
        self endon("<unknown string>");
        self endon(#"death", #"disconnect");
        if (!is_true(show)) {
            return;
        }
        color = (1, 1, 0);
        var_36abd3 = vectorscale((1, 0, 0), 0.9);
        while (1) {
            waitframe(1);
            corpses = [];
            if (isdefined(level.var_d3a7bebd)) {
                corpses = [[ level.var_d3a7bebd ]]();
            } else {
                corpses = getentarraybytype(17);
            }
            guys = getactorteamarray("<unknown string>");
            foreach (corpse in corpses) {
                var_2501cbe2 = corpse function_b9ab269e();
                var_1157b993 = corpse function_6c7f19df();
                if (isdefined(level.stealth)) {
                    if (isdefined(level.stealth.var_df8e6ed1) && isdefined(level.stealth.var_df8e6ed1[self getentitynumber()])) {
                        var_2501cbe2 = corpse.origin;
                    }
                }
                line(corpse.origin, var_2501cbe2);
                print3d(var_2501cbe2, "<unknown string>", (1, 1, 1), 1, 0.25, 1, 1);
                line(corpse.origin, var_1157b993);
                print3d(var_1157b993, "<unknown string>", (1, 1, 1), 1, 0.25, 1, 1);
                print3d(corpse.origin + vectorscale((0, 0, 1), 10), "<unknown string>", (1, 1, 1), 1, 0.25, 1, 1);
                if (isdefined(corpse.found)) {
                    print3d(var_2501cbe2 + vectorscale((0, 0, 1), 20), "<unknown string>");
                }
                if (isdefined(level.stealth.corpse.dists)) {
                    foreach (guy in guys) {
                        if (!isdefined(guy.stealth)) {
                            continue;
                        }
                        if (!isdefined(guy.var_1e36e368) || guy [[ guy.var_1e36e368 ]]()) {
                            continue;
                        }
                        dist = distancesquared(var_2501cbe2, guy.origin);
                        if (dist < function_a3f6cdac(level.stealth.corpse.dists[#"hash_17048ea9eae820a7"])) {
                            line(guy.origin, var_2501cbe2, var_36abd3);
                        } else if (dist < function_a3f6cdac(level.stealth.corpse.dists[#"hash_256cce7120ab0043"])) {
                            line(guy.origin, var_2501cbe2, color);
                        }
                    }
                }
            }
        }
    #/
}
