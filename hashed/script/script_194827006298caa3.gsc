// Atian COD Tools GSC CW decompiler test
#using script_215d7818c548cb51;
#using script_176597095ddfaa17;
#using script_16b1b77a76492c6a;
#using scripts\zm_common\zm_vo.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_powerups.gsc;
#using script_3411bb48d41bd3b;
#using script_27347f09888ad15;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\fx_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using script_7fc996fe8678852;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_2303c104;

// Namespace namespace_2303c104/namespace_2303c104
// Params 0, eflags: 0x5
// Checksum 0x9015e434, Offset: 0x270
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_1e60252f388011fb", &function_70a657d8, undefined, undefined, #"hash_f81b9dea74f0ee");
}

// Namespace namespace_2303c104/namespace_2303c104
// Params 0, eflags: 0x0
// Checksum 0x67337126, Offset: 0x2c0
// Size: 0x174
function function_70a657d8() {
    if (!zm_utility::is_survival()) {
        return;
    }
    if (is_true(getgametypesetting(#"hash_1e1a5ebefe2772ba"))) {
        return;
    }
    if (!is_true(getgametypesetting(#"hash_7029ea8551fb906f")) && !getdvarint(#"hash_730311c63805303a", 0) && !getdvarint(#"hash_6a8bc2baa3d9fcb8", 0)) {
        return;
    }
    namespace_8b6a9d79::function_b3464a7c(#"hash_766306ef00ce07f3", &function_8ebf52b6, 1);
    clientfield::register("actor", "sr_horde_hunt_fx", 1, 1, "int");
    clientfield::register("world", "sr_horde_hunt_decals", 1, 2, "int");
}

// Namespace namespace_2303c104/namespace_2303c104
// Params 1, eflags: 0x4
// Checksum 0x6ed013d1, Offset: 0x440
// Size: 0x392
function private function_8ebf52b6(instance) {
    instance flag::clear("cleanup");
    instance callback::function_d8abfc3d(#"hash_345e9169ebba28fb", &function_1226f6af);
    level callback::add_callback(#"hash_594217387367ebb4", &function_1226f6af, instance);
    var_2b737124 = instance.var_fe2612fe[#"corpses"][0];
    if (isdefined(var_2b737124.targetname)) {
        showmiscmodels(var_2b737124.targetname);
        /#
            if (getdvarint(#"hash_730311c63805303a", 0)) {
                level wait_till(#"gameplay_started");
                wait(randomfloatrange(1, 5));
            }
        #/
        if (issubstr(var_2b737124.targetname, "1")) {
            level clientfield::set("sr_horde_hunt_decals", 1);
        } else if (issubstr(var_2b737124.targetname, "2")) {
            level clientfield::set("sr_horde_hunt_decals", 2);
        } else if (issubstr(var_2b737124.targetname, "3")) {
            level clientfield::set("sr_horde_hunt_decals", 3);
        }
    }
    s_start = instance.var_fe2612fe[#"start"][0];
    instance.trigger.instance = namespace_8b6a9d79::function_214737c7(s_start, &function_dbeb7b0f, #"hash_38e8b4d1311b4a2d", undefined, 100);
    instance.trigger.instance = instance;
    instance.var_ec694b2c.instance = util::spawn_model(#"hash_7893e6c7d1cf2d74", s_start.origin - vectorscale((0, 0, 1), 8));
    instance.var_ec694b2c setscale(3);
    instance.var_ec694b2c function_619a5c20();
    instance.var_ec694b2c ghost();
    instance.var_ec694b2c playloopsound(#"hash_5925f3613a001afc");
    instance.var_ec694b2c thread function_6400a64d(instance);
    instance.n_obj_id.instance = zm_utility::function_f5a222a8(#"hash_5a77db57fc999c42", s_start.origin);
}

// Namespace namespace_2303c104/namespace_2303c104
// Params 1, eflags: 0x4
// Checksum 0xa9522011, Offset: 0x7e0
// Size: 0x18c
function private function_dbeb7b0f(*eventstruct) {
    if (is_true(self.b_activated) || !isdefined(self.instance)) {
        return;
    }
    self.b_activated = 1;
    self sethintstring("");
    var_b976eb20 = randomint(9);
    str_vox = #"hash_51f7b50d9cc1fe6" + var_b976eb20 + 1 + "_" + var_b976eb20;
    var_9bb8ce1a = util::spawn_model("tag_origin", self.origin);
    waitframe(1);
    var_9bb8ce1a zm_vo::function_d6f8bbd9(str_vox);
    level thread zm_vo::function_7622cb70(#"hash_19913c8f26e0a808", 1);
    level thread function_deefa538(self.instance);
    if (isdefined(var_9bb8ce1a)) {
        var_9bb8ce1a function_cb48cddd();
    }
    if (isdefined(self)) {
        self delete();
    }
}

// Namespace namespace_2303c104/namespace_2303c104
// Params 1, eflags: 0x0
// Checksum 0x6b8f4dd0, Offset: 0x978
// Size: 0x74
function function_6400a64d(instance) {
    instance waittill(#"hash_68607fe956734fee", #"cleanup");
    playsoundatposition(#"hash_1231779900d59421", self.origin);
    self delete();
}

// Namespace namespace_2303c104/namespace_2303c104
// Params 1, eflags: 0x4
// Checksum 0xdf234b25, Offset: 0x9f8
// Size: 0x414
function private function_deefa538(instance) {
    if (!isdefined(instance) || instance flag::get("cleanup")) {
        return;
    }
    instance notify(#"hash_68607fe956734fee");
    instance endon(#"cleanup");
    wait(0.5);
    n_variant = randomintrange(1, 4);
    /#
        var_3d0c759f = getdvarint(#"hash_6a8bc2baa3d9fcb8", 0);
        if (var_3d0c759f) {
            n_variant = var_3d0c759f;
        }
    #/
    var_eb92deab = isdefined(instance.var_fe2612fe[#"hash_36fe80c29811691c"]) ? instance.var_fe2612fe[#"hash_36fe80c29811691c"] : [];
    var_ea63e380 = isdefined(instance.var_fe2612fe[#"hash_55507f11db488717"]) ? instance.var_fe2612fe[#"hash_55507f11db488717"] : [];
    function_283f2fb3(var_eb92deab);
    function_283f2fb3(var_ea63e380);
    var_18d554fc = int(min(level.var_15d17eb2, 3));
    var_b6947716 = "horde_hunt_realm_" + var_18d554fc + "_leader_" + n_variant;
    var_532e237f = "horde_hunt_realm_" + var_18d554fc + "_follower_" + n_variant;
    var_74714668 = "horde_hunt_realm_" + var_18d554fc + "_ambush_" + n_variant;
    if (!(isdefined(var_532e237f) && isdefined(var_b6947716) && isdefined(var_74714668)) || !var_eb92deab.size) {
        return;
    }
    var_10d9fd32 = var_eb92deab[0].origin;
    if (isdefined(instance.n_obj_id)) {
        zm_utility::function_bc5a54a8(instance.n_obj_id);
    }
    instance.n_obj_id.instance = zm_utility::function_f5a222a8(#"hash_3643b91995cde879", var_10d9fd32);
    var_347a4920 = util::spawn_model("tag_origin", var_10d9fd32);
    var_347a4920 playsound(#"hash_149945a98c1798a6");
    var_347a4920 playloopsound(#"hash_3b2e8e212c9bfb8a");
    level thread function_963ac9d8(var_347a4920);
    fx::play(#"hash_78d88a4dc6405970", var_10d9fd32 + vectorscale((0, 0, 1), 5000), undefined, 10);
    wait(1.5);
    instance.var_eb48250f.instance = function_8a9ecf71(instance, var_eb92deab, var_b6947716, &function_57a97c81);
    instance.var_f2d5c926.instance = function_8a9ecf71(instance, var_ea63e380, var_532e237f, &function_ca46226a);
    instance thread function_1b8f27ec();
    instance thread function_e2f41f69(var_74714668);
}

// Namespace namespace_2303c104/namespace_2303c104
// Params 1, eflags: 0x0
// Checksum 0xbb260656, Offset: 0xe18
// Size: 0x5c
function function_963ac9d8(var_347a4920) {
    wait(10);
    var_347a4920 stoploopsound();
    var_347a4920 playsound(#"hash_6eca5f5eaa236ce3");
    var_347a4920 util::deleteaftertime(1);
}

// Namespace namespace_2303c104/namespace_2303c104
// Params 4, eflags: 0x4
// Checksum 0xcca09679, Offset: 0xe80
// Size: 0x3c6
function private function_8a9ecf71(instance, var_842cdacd, var_aa19ae, spawn_func) {
    a_ai = [];
    var_ccd67daa = namespace_679a22ba::function_77be8a83(var_aa19ae);
    do {
        var_4bf95f4c = namespace_679a22ba::function_ca209564(var_aa19ae, var_ccd67daa);
        if (!isdefined(var_4bf95f4c)) {
            break;
        }
        var_7ecdee63 = var_4bf95f4c.var_990b33df;
        spawn = var_842cdacd[0];
        ai = namespace_85745671::function_9d3ad056(var_7ecdee63, spawn.origin, spawn.angles, #"hash_4085d77991160042");
        if (isdefined(ai)) {
            ai ghost();
            ai.var_a950813d.ai = 1;
            ai.var_83fa6083.ai = 1;
            ai.var_7496eca2.ai = 1;
            ai.instance = instance;
            ai.spawn = spawn;
            namespace_679a22ba::function_266ee075(var_4bf95f4c.var_29459a31, var_ccd67daa);
            if (!isdefined(a_ai)) {
                a_ai = [];
            } else if (!isarray(a_ai)) {
                a_ai = array(a_ai);
            }
            a_ai[a_ai.size] = ai;
            if (!isdefined(instance.a_ai)) {
                instance.a_ai.instance = [];
            } else if (!isarray(instance.a_ai)) {
                instance.a_ai.instance = array(instance.a_ai);
            }
            instance.a_ai[instance.a_ai.size] = ai;
            arrayremovevalue(var_842cdacd, spawn);
            ai callback::function_d8abfc3d(#"hash_4afe635f36531659", &function_92184323);
            ai callback::function_d8abfc3d(#"on_ai_killed", &function_9974f649);
            ai thread [[ spawn_func ]](instance, spawn);
            ai thread function_f0abbc8b();
            if (ai.archetype === #"mechz") {
                ai thread function_c7db899f();
            } else if (ai.archetype === #"zombie_dog") {
                ai clientfield::set("sr_dog_fx", 1);
            } else if (ai.archetype === #"hash_7c0d83ac1e845ac2") {
                level thread function_d3d7a798(ai);
            }
        }
        wait(0.5);
        var_5af17050 = namespace_679a22ba::function_ce65eab6(var_ccd67daa);
    } while(var_842cdacd.size && var_5af17050.spawned < var_5af17050.var_cffbc08);
    return a_ai;
}

// Namespace namespace_2303c104/namespace_2303c104
// Params 1, eflags: 0x4
// Checksum 0x5f3a27f, Offset: 0x1250
// Size: 0x180
function private function_283f2fb3(&a_spawns) {
    var_866d39e6 = [];
    foreach (spawn in a_spawns) {
        if (spawn.script_noteworthy === "primary") {
            if (!isdefined(var_866d39e6)) {
                var_866d39e6 = [];
            } else if (!isarray(var_866d39e6)) {
                var_866d39e6 = array(var_866d39e6);
            }
            var_866d39e6[var_866d39e6.size] = spawn;
        }
    }
    foreach (var_7cc722dc in var_866d39e6) {
        arrayremovevalue(a_spawns, var_7cc722dc);
        arrayinsert(a_spawns, var_7cc722dc, 0);
    }
}

// Namespace namespace_2303c104/namespace_2303c104
// Params 0, eflags: 0x4
// Checksum 0x8baf867b, Offset: 0x13d8
// Size: 0x42
function private function_c7db899f() {
    self endon(#"death");
    while (!isdefined(self.var_7c4488fd)) {
        waitframe(1);
    }
    self.var_b49b10ee = undefined;
    self.var_7c4488fd = 0;
}

// Namespace namespace_2303c104/namespace_2303c104
// Params 0, eflags: 0x4
// Checksum 0xee731932, Offset: 0x1428
// Size: 0x484
function private function_1b8f27ec() {
    array::flag_wait(self.a_ai, #"hash_576e1b7f4a5fe88e");
    foreach (ai in self.a_ai) {
        ai flag::clear(#"hash_576e1b7f4a5fe88e");
        ai val::function_e681e68e(#"hash_59345e23ee60c2dd");
    }
    self flag::set(#"hash_50b20165dfb09565");
    self thread function_2660ef47();
    while (self.a_ai.size && !self flag::get("cleanup")) {
        foreach (ai in self.var_eb48250f) {
            if (isalive(ai) && !ai flag::get(#"hash_7a190647f4887d01")) {
                var_3d872e54 = 1;
                break;
            }
        }
        if (var_3d872e54 === 1) {
            var_3d872e54 = undefined;
            wait(1);
            continue;
        }
        foreach (ai in self.var_eb48250f) {
            if (isalive(ai)) {
                ai flag::clear(#"hash_7a190647f4887d01");
            }
        }
        if (self flag::get(#"hash_3ea0bab19c8c86b6")) {
            self flag::wait_till_clear(#"hash_3ea0bab19c8c86b6");
            wait(3);
            arrayremovevalue(self.var_eb48250f, undefined);
            function_1eaaceab(self.var_eb48250f);
            if (!self.var_eb48250f.size) {
                self function_b55fe25b();
            } else {
                foreach (ai in self.var_eb48250f) {
                    ai notify(#"hash_2e9e1859076296fb");
                }
            }
            continue;
        }
        wait(randomfloatrange(1.5, 3));
        arrayremovevalue(self.var_eb48250f, undefined);
        function_1eaaceab(self.var_eb48250f);
        if (!self.var_eb48250f.size) {
            self function_b55fe25b();
            continue;
        }
        array::notify_all(self.var_eb48250f, #"hash_11eeb7d23f82d744");
    }
    function_22e55954(self);
}

// Namespace namespace_2303c104/namespace_2303c104
// Params 2, eflags: 0x4
// Checksum 0x1fdf70e3, Offset: 0x18b8
// Size: 0x324
function private function_57a97c81(instance, spawn) {
    self endon(#"death");
    if (!isdefined(self.var_6b51e390)) {
        self.var_6b51e390 = struct::get(spawn.targetname, "target");
        if (!isdefined(instance.a_goals)) {
            instance.a_goals.instance = [];
        } else if (!isarray(instance.a_goals)) {
            instance.a_goals.instance = array(instance.a_goals);
        }
        if (!isinarray(instance.a_goals, self.var_6b51e390)) {
            instance.a_goals[instance.a_goals.size] = self.var_6b51e390;
        }
        instance flag::wait_till(#"hash_50b20165dfb09565");
    }
    while (isdefined(self.var_6b51e390)) {
        waitframe(randomintrange(5, 25));
        if (!instance flag::get(#"hash_3ea0bab19c8c86b6")) {
            self.var_7c4488fd = 0;
            self setgoal(self.var_6b51e390.origin);
            self thread function_c292b3fe(self.var_6b51e390.origin, instance);
        }
        s_result = undefined;
        s_result = self waittill(#"hash_11eeb7d23f82d744", #"hash_2e9e1859076296fb");
        if (s_result._notify === #"hash_11eeb7d23f82d744") {
            arrayremovevalue(instance.a_goals, self.var_6b51e390);
            self.var_6b51e390 = struct::get(self.var_6b51e390.targetname, "target");
            if (!isdefined(instance.a_goals)) {
                instance.a_goals.instance = [];
            } else if (!isarray(instance.a_goals)) {
                instance.a_goals.instance = array(instance.a_goals);
            }
            if (!isinarray(instance.a_goals, self.var_6b51e390)) {
                instance.a_goals[instance.a_goals.size] = self.var_6b51e390;
            }
        }
    }
    instance flag::set("cleanup");
}

// Namespace namespace_2303c104/namespace_2303c104
// Params 2, eflags: 0x4
// Checksum 0x6b5738f, Offset: 0x1be8
// Size: 0x11c
function private function_c292b3fe(v_loc, instance) {
    self notify("7de34d93ee0908d1");
    self endon("7de34d93ee0908d1");
    self endon(#"death");
    instance endon(#"hash_3ea0bab19c8c86b6");
    n_time = 0;
    while (distance2dsquared(self.origin, v_loc) > 10000 && n_time < 90) {
        wait(1);
        n_time = n_time + 1;
    }
    if (n_time >= 90) {
        self.var_a950813d = undefined;
        self callback::callback(#"hash_10ab46b52df7967a");
    }
    self flag::set(#"hash_7a190647f4887d01");
}

// Namespace namespace_2303c104/namespace_2303c104
// Params 2, eflags: 0x4
// Checksum 0x39a679b4, Offset: 0x1d10
// Size: 0x458
function private function_ca46226a(instance, *spawn) {
    self endon(#"death", #"hash_c923146051ebd8e");
    var_5e61a2e7 = arraygetclosest(self.origin, spawn.var_eb48250f);
    if (isdefined(var_5e61a2e7)) {
        var_1b1eb410 = 360 - var_5e61a2e7.spawn.angles[1];
        var_5d615ad6 = namespace_77bd50da::function_81cad6d6(self.spawn.origin - var_5e61a2e7.spawn.origin, var_1b1eb410);
    }
    spawn flag::wait_till(#"hash_50b20165dfb09565");
    waitframe(randomintrange(10, 30));
    var_de5b3f09 = 0;
    do {
        spawn flag::wait_till_clear(#"hash_3ea0bab19c8c86b6");
        if (!isalive(var_5e61a2e7)) {
            var_5e61a2e7 = arraygetclosest(self.origin, spawn.var_eb48250f);
            if (isdefined(var_5e61a2e7)) {
                var_b41c0723 = vectorscale((0, 1, 0), 360) - var_5e61a2e7.spawn.angles;
                var_5d615ad6 = namespace_77bd50da::function_81cad6d6(self.spawn.origin - var_5e61a2e7.spawn.origin, var_1b1eb410);
            }
        }
        if (!isalive(var_5e61a2e7) || !isdefined(var_5e61a2e7.var_6b51e390)) {
            break;
        }
        var_28f3b94b = struct::get(var_5e61a2e7.var_6b51e390.target, "targetname");
        if (isdefined(var_28f3b94b)) {
            var_18df63c9 = vectortoangles(var_5e61a2e7.var_6b51e390.origin - var_28f3b94b.origin)[1];
        } else {
            var_18df63c9 = var_5e61a2e7.var_6b51e390.angles[1];
        }
        v_goal = undefined;
        if (isdefined(var_5d615ad6)) {
            v_goal = var_5e61a2e7.origin + namespace_77bd50da::function_81cad6d6(var_5d615ad6, var_18df63c9) + (randomintrange(32 * -1, 32), randomintrange(32 * -1, 32), 0);
        }
        if (!isdefined(v_goal) || distance2dsquared(self.origin, v_goal) < 10000) {
            wait(1.5);
        } else {
            v_goal = getclosestpointonnavmesh(v_goal, 128, 32);
            if (isdefined(v_goal)) {
                self setgoal(v_goal);
                s_result = undefined;
                s_result = self waittilltimeout(1.5, #"goal");
                var_de5b3f09 = 0;
                if (s_result._notify === "goal") {
                    wait(randomfloatrange(3, 4));
                }
            } else {
                var_de5b3f09++;
                if (var_de5b3f09 > 10) {
                    break;
                }
                wait(1);
            }
        }
    } while(spawn.var_eb48250f.size);
}

// Namespace namespace_2303c104/namespace_2303c104
// Params 0, eflags: 0x4
// Checksum 0x8a2f19cd, Offset: 0x2170
// Size: 0x200
function private function_b55fe25b() {
    self.var_eb48250f = self.var_f2d5c926;
    self.var_f2d5c926 = [];
    arrayremovevalue(self.var_eb48250f, undefined);
    function_1eaaceab(self.var_eb48250f);
    foreach (ai in self.var_eb48250f) {
        var_31c3dcb4 = arraysortclosest(self.a_goals, ai.origin);
        foreach (s_path in var_31c3dcb4) {
            if (s_path.b_taken !== 1) {
                s_path.b_taken.s_path = 1;
                ai.var_6b51e390 = s_path;
                break;
            }
        }
        if (isdefined(ai.var_6b51e390)) {
            ai notify(#"hash_c923146051ebd8e");
            ai thread function_57a97c81(self);
        } else {
            ai.var_a950813d = undefined;
            ai callback::callback(#"hash_10ab46b52df7967a");
        }
    }
}

// Namespace namespace_2303c104/namespace_2303c104
// Params 0, eflags: 0x4
// Checksum 0xba040012, Offset: 0x2378
// Size: 0x110
function private function_2660ef47() {
    self endon(#"cleanup");
    while (1) {
        wait(1);
        arrayremovevalue(self.a_ai, undefined);
        function_1eaaceab(self.a_ai);
        if (!self.a_ai.size) {
            function_22e55954(self);
            break;
        }
        if (isalive(self.var_805807d8) || !isdefined(self.n_obj_id)) {
            continue;
        }
        self.var_805807d8 = array::random(self.a_ai);
        objective_clearentity(self.n_obj_id);
        objective_onentity(self.n_obj_id, self.var_805807d8);
    }
}

// Namespace namespace_2303c104/namespace_2303c104
// Params 1, eflags: 0x4
// Checksum 0xb72ee43f, Offset: 0x2490
// Size: 0x86
function private function_e2f41f69(var_74714668) {
    self endon(#"cleanup");
    while (1) {
        self flag::wait_till(#"hash_3ea0bab19c8c86b6");
        if (isdefined(self.var_571f5454)) {
            namespace_2c949ef8::function_8b6ae460(self.var_571f5454, var_74714668);
            break;
        } else {
            wait(1);
        }
    }
}

// Namespace namespace_2303c104/namespace_2303c104
// Params 1, eflags: 0x4
// Checksum 0xd2cc2a5b, Offset: 0x2520
// Size: 0x2b4
function private function_92184323(*eventstruct) {
    self endon(#"death");
    instance = self.instance;
    function_1eaaceab(instance.a_ai);
    arrayremovevalue(instance.a_ai, undefined);
    if (self.current_state.name === #"wander") {
        foreach (ai in instance.a_ai) {
            if (ai.current_state.name === #"chase" || self.current_state.name === #"investigate") {
                function_7d9c6082(instance, ai);
                instance flag::set(#"hash_3ea0bab19c8c86b6");
                return;
            }
        }
        instance flag::clear(#"hash_3ea0bab19c8c86b6");
        instance.var_571f5454 = undefined;
        foreach (ai in instance.a_ai) {
            ai notify(#"hash_2e9e1859076296fb");
        }
    } else if (self.current_state.name === #"investigate" || self.current_state.name === #"chase") {
        self.var_7c4488fd = 1;
        function_7d9c6082(instance, self);
        instance flag::set(#"hash_3ea0bab19c8c86b6");
    }
}

// Namespace namespace_2303c104/namespace_2303c104
// Params 2, eflags: 0x4
// Checksum 0x4b4de7ee, Offset: 0x27e0
// Size: 0xba
function private function_7d9c6082(instance, ai) {
    if (isdefined(instance.var_571f5454)) {
        return;
    }
    if (ai.current_state.name === #"chase") {
        if (isdefined(ai.favoriteenemy)) {
            instance.var_571f5454.instance = ai.favoriteenemy.origin;
        } else if (isdefined(ai.var_b4b8ad5f.position)) {
            instance.var_571f5454.instance = ai.var_b4b8ad5f.position;
        } else {
            instance.var_571f5454.instance = ai.origin;
        }
    }
}

// Namespace namespace_2303c104/namespace_2303c104
// Params 1, eflags: 0x4
// Checksum 0xe10b48bc, Offset: 0x28a8
// Size: 0x2ec
function private function_9974f649(*eventstruct) {
    if (!isdefined(self.instance.a_ai) || self.instance flag::get(#"cleanup")) {
        return;
    }
    foreach (ai in self.instance.a_ai) {
        if (isalive(ai) && ai !== self) {
            if (is_true(ai.var_a0a8f386)) {
                if (!is_true(ai.var_20841367)) {
                    ai.var_20841367.ai = 1;
                    ai callback::function_d8abfc3d(#"on_ai_killed", &function_9974f649);
                    ai callback::function_d8abfc3d(#"hash_4afe635f36531659", &function_92184323);
                    ai thread namespace_2c949ef8::function_1c491c2b();
                    /#
                        println("<unknown string>");
                    #/
                }
                if (isalive(ai.var_42fce69b) && !is_true(ai.var_42fce69b.var_20841367)) {
                    ai.var_42fce69b.var_20841367 = 1;
                    ai.var_42fce69b callback::function_d8abfc3d(#"on_ai_killed", &function_9974f649);
                    ai.var_42fce69b callback::function_d8abfc3d(#"hash_4afe635f36531659", &function_92184323);
                    ai.var_42fce69b thread namespace_2c949ef8::function_1c491c2b();
                    /#
                        println("<unknown string>");
                    #/
                }
            }
            return;
        }
    }
    function_ca912561(self.instance);
}

// Namespace namespace_2303c104/namespace_2303c104
// Params 1, eflags: 0x4
// Checksum 0xf9c2db7, Offset: 0x2ba0
// Size: 0x2f4
function private function_ca912561(instance) {
    if (is_true(instance.var_ca912561)) {
        return;
    }
    instance.var_ca912561.instance = 1;
    if (isdefined(self.instance)) {
        self.instance flag::clear(#"hash_3ea0bab19c8c86b6");
    }
    level scoreevents::doscoreeventcallback("scoreEventSR", {#location:self.origin, #var_b0a57f8c:5000, #nearbyplayers:1, #scoreevent:"event_complete"});
    players = getplayers();
    foreach (player in players) {
        player zm_stats::function_945c7ce2(#"hash_165462f560a0538c", 1);
        player zm_stats::increment_challenge_stat(#"hash_3b540abd221a6d9");
    }
    if (isentity(self)) {
        traceresult = physicstraceex(self getcentroid(), self getcentroid() - vectorscale((0, 0, 1), 1000), vectorscale((-1, -1, 0), 15), (15, 15, 72));
        v_drop = traceresult[#"position"];
        if (!isdefined(v_drop)) {
            v_drop = self.origin;
        }
        if (!namespace_d0ab5955::function_3824d2dc(v_drop)) {
            v_drop = arraygetclosest(v_drop, players).origin;
        }
        if (isvec(v_drop)) {
            level thread zm_powerups::specific_powerup_drop("free_perk", v_drop, undefined, 0);
        }
    }
    level thread zm_vo::function_7622cb70(#"hash_3052fb147a41904b", 3);
}

// Namespace namespace_2303c104/namespace_2303c104
// Params 1, eflags: 0x4
// Checksum 0xe2abeda1, Offset: 0x2ea0
// Size: 0x2ec
function private function_d3d7a798(ai) {
    level endon(#"end_game");
    instance = ai.instance;
    while (isdefined(instance) && !is_true(instance.var_ca912561)) {
        function_1eaaceab(instance.a_ai);
        if (!isdefined(instance.a_ai) || instance.a_ai.size <= 0) {
            /#
                println("<unknown string>");
            #/
            if (instance flag::get(#"cleanup")) {
                return;
            }
            ai function_ca912561(instance);
        } else {
            foreach (var_f077a87e in instance.a_ai) {
                if (var_f077a87e.aitype === #"hash_5471f6916965b2d2" || var_f077a87e.aitype === #"hash_12db1a8b34aa7918") {
                    /#
                        var_6c0639a1 = var_f077a87e.aitype === #"hash_5471f6916965b2d2" ? "<unknown string>" : "<unknown string>";
                        println("<unknown string>" + var_6c0639a1 + "<unknown string>" + var_f077a87e getentitynumber() + "<unknown string>" + var_f077a87e.origin);
                    #/
                    if (var_f077a87e.origin[2] < -1000) {
                        /#
                            println("<unknown string>" + var_6c0639a1 + "<unknown string>" + var_f077a87e getentitynumber() + "<unknown string>");
                        #/
                        var_f077a87e.allowdeath.var_f077a87e = 1;
                        var_f077a87e kill();
                    }
                }
            }
        }
        wait(2);
    }
    /#
        println("<unknown string>");
    #/
}

// Namespace namespace_2303c104/namespace_2303c104
// Params 0, eflags: 0x4
// Checksum 0xe2192319, Offset: 0x3198
// Size: 0x2a4
function private function_f0abbc8b() {
    self endon(#"death");
    self val::set(#"hash_59345e23ee60c2dd", "allowdeath", 0);
    self val::set(#"hash_59345e23ee60c2dd", "ignoreall", 1);
    spawn = self.spawn;
    var_55e11aa9 = util::spawn_model("tag_origin", self.origin, spawn.angles);
    self linkto(var_55e11aa9);
    var_55e11aa9.origin.var_55e11aa9 = self.origin + vectorscale((0, 0, 1), 5000);
    level fx::play(#"hash_2520b0c56a09da9d", spawn.origin, undefined, 6);
    wait(0.25);
    str_anim = self function_4cb6cdb8();
    if (isdefined(str_anim)) {
        self thread animation::play(str_anim, self);
    }
    self show();
    var_55e11aa9 moveto(spawn.origin, 6);
    var_55e11aa9 rotatevelocity((0, 360 / 6, 0), 6);
    var_55e11aa9 waittill(#"movedone");
    var_55e11aa9 delete();
    if (isdefined(str_anim)) {
        self animation::stop();
    }
    self setgoal(self.origin);
    self flag::set(#"hash_576e1b7f4a5fe88e");
    waitframe(1);
    self clientfield::set("sr_horde_hunt_fx", 1);
}

// Namespace namespace_2303c104/namespace_2303c104
// Params 0, eflags: 0x4
// Checksum 0x4d682448, Offset: 0x3448
// Size: 0xc2
function private function_4cb6cdb8() {
    switch (self.archetype) {
    case #"zombie_dog":
        return #"hash_16fb83823caa867c";
        break;
    case #"mechz":
        return #"hash_72102974314fff02";
        break;
    case #"hash_7c0d83ac1e845ac2":
        return #"hash_502ed36a2535b270";
        break;
    case #"raz":
        return #"hash_351d7331f52be032";
        break;
    case #"avogadro":
        return #"hash_1cbbcdbfd528f8e1";
        break;
    }
}

// Namespace namespace_2303c104/namespace_2303c104
// Params 1, eflags: 0x4
// Checksum 0xb3751359, Offset: 0x3518
// Size: 0x12e
function private function_22e55954(instance) {
    self flag::set("cleanup");
    if (isdefined(instance.n_obj_id)) {
        objective_clearentity(instance.n_obj_id);
        zm_utility::function_bc5a54a8(instance.n_obj_id);
        instance.n_obj_id = undefined;
    }
    foreach (ai in instance.a_ai) {
        if (isalive(ai)) {
            ai.var_a950813d = undefined;
            ai callback::callback(#"hash_10ab46b52df7967a");
        }
        waitframe(1);
    }
}

// Namespace namespace_2303c104/namespace_2303c104
// Params 1, eflags: 0x4
// Checksum 0x3fe888a, Offset: 0x3650
// Size: 0x74
function private function_1226f6af(*var_273eefec) {
    self flag::set("cleanup");
    if (isdefined(self.trigger)) {
        self.trigger delete();
    }
    if (isdefined(self.a_ai)) {
        function_22e55954(self);
    }
}
