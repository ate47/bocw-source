// Atian COD Tools GSC CW decompiler test
#using script_113dd7f0ea2a1d4f;
#using scripts\zm_common\objective_manager.gsc;
#using scripts\zm\zm_platinum_vo.gsc;
#using scripts\zm\zm_platinum_main_quest.gsc;
#using script_5eb334a29c814cf2;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\zm_common\zm_ui_inventory.gsc;
#using script_1c92816b36da2771;
#using script_1ea5c1aec36ac889;
#using script_3411bb48d41bd3b;
#using scripts\zm\archetype\archetype_zod_companion.gsc;
#using script_34ab99a4ca1a43d;
#using scripts\zm_common\zm_zonemgr.gsc;
#using scripts\zm_common\zm_sq.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_devgui.gsc;
#using scripts\zm_common\zm_vo.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\zm_common\zm_unitrigger.gsc;
#using scripts\zm_common\callbacks.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\item_drop.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_7a518726;

// Namespace namespace_7a518726/namespace_7a518726
// Params 0, eflags: 0x2 linked
// Checksum 0xa2d88499, Offset: 0x4e0
// Size: 0x234
function init() {
    clientfield::register("scriptmover", "" + #"hash_8b9fe3412e34513", 24000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_2e4913c031d2a97c", 24000, 1, "int");
    clientfield::register("world", "" + #"hash_33f337fe0df045df", 24000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_85303d8249a5451", 24000, 1, "counter");
    clientfield::register("scriptmover", "" + #"hash_47839169ce0224b7", 24000, 1, "counter");
    clientfield::register("actor", "" + #"hash_3d52751d686c4865", 24000, 1, "counter");
    level thread function_d825b521();
    level thread function_32bed98f();
    level thread function_7d8f4a5b();
    level thread function_cefdd0d2();
    level thread function_d68e0c71();
    level.var_3d8c252b = 0;
    level.var_63732251 = 1;
    /#
        level thread function_cd7a3de4();
    #/
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 0, eflags: 0x2 linked
// Checksum 0x43234065, Offset: 0x720
// Size: 0x124
function function_d68e0c71() {
    level flag::wait_till(#"power_on");
    scene::add_scene_func(#"hash_423ce4528e7aaf1f", &function_8707f5e6, "upgrade_outro_1");
    scene::add_scene_func(#"hash_423ce4528e7aaf1f", &function_8707f5e6, "upgrade_outro_2");
    level flag::wait_till("klaus_helm_crafted");
    scene::remove_scene_func(#"hash_423ce4528e7aaf1f", &function_8707f5e6, "upgrade_outro_1");
    scene::remove_scene_func(#"hash_423ce4528e7aaf1f", &function_8707f5e6, "upgrade_outro_2");
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 1, eflags: 0x2 linked
// Checksum 0xb5448945, Offset: 0x850
// Size: 0x44
function function_8707f5e6(a_ents) {
    var_385ce850 = a_ents[#"klaus"];
    var_385ce850 hidepart("J_Helm");
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 0, eflags: 0x2 linked
// Checksum 0x2a207631, Offset: 0x8a0
// Size: 0x184
function function_32bed98f() {
    var_4ea4e1e6 = struct::get("hidden_box_pos", "targetname");
    level.var_44ff9e2 = [];
    level.var_bf125eb5 = [];
    if (!isdefined(var_4ea4e1e6)) {
        return;
    }
    var_44ff9e2 = getentarray(var_4ea4e1e6.target, "targetname");
    if (isdefined(var_44ff9e2) && var_44ff9e2.size != 0) {
        for (i = 0; i < 2; i++) {
            var_fa962a4a = array::random(var_44ff9e2);
            if (!is_true(var_fa962a4a.var_b7bf4ddb)) {
                var_fa962a4a.var_b7bf4ddb = 1;
                var_fa962a4a.index = i;
            }
        }
    }
    array::thread_all(var_44ff9e2, &function_8dc68d9c);
    level flag::wait_till(#"hash_720384d338d58cf4");
    if (isdefined(level.klaus)) {
        level.klaus zodcompanionutility::function_fc67b7ed(&function_954b2553);
    }
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 0, eflags: 0x2 linked
// Checksum 0xf639aaee, Offset: 0xa30
// Size: 0x3bc
function function_8dc68d9c() {
    a_s_pos = struct::get_array(self.target, "targetname");
    foreach (pos in a_s_pos) {
        if (pos.script_noteworthy === "icon_location") {
            self.icon_location = pos;
            if (is_true(self.var_b7bf4ddb)) {
                var_e1b5a40b = util::spawn_model("tag_origin", pos.origin, pos.angles);
                var_e1b5a40b clientfield::set("" + #"hash_2e4913c031d2a97c", 1);
            }
            continue;
        }
        if (pos.script_noteworthy === "hit_location") {
            self.hit_location = pos;
            self val::set("hidden_x", "takedamage", 1);
            slots = [];
            slots[slots.size] = {#origin:pos.origin, #on_navmesh:0};
            self.is_active = 1;
            self.var_b79a8ac7 = {#var_f019ea1a:1200, #slots:slots};
            continue;
        }
        if (pos.script_noteworthy === "disk_location") {
            self.disk_location = pos;
        }
    }
    if (!isdefined(level.var_44ff9e2)) {
        level.var_44ff9e2 = [];
    } else if (!isarray(level.var_44ff9e2)) {
        level.var_44ff9e2 = array(level.var_44ff9e2);
    }
    if (!isinarray(level.var_44ff9e2, self)) {
        level.var_44ff9e2[level.var_44ff9e2.size] = self;
    }
    n_offset = (0, 0, -16);
    var_8c403460 = spawn("trigger_damage", self.origin + n_offset, 0, 32, 32);
    /#
        var_a406cb50 = 16;
        box(self.origin + n_offset, (var_a406cb50 * -1, var_a406cb50 * -1, 0), (var_a406cb50, var_a406cb50, 32), 0, (1, 0, 0), 1, 0, 20000);
    #/
    var_8c403460.var_67fbb89d = self;
    var_8c403460 thread function_52da09c5();
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 0, eflags: 0x2 linked
// Checksum 0x9d8483a6, Offset: 0xdf8
// Size: 0x10c
function function_d825b521() {
    level zm_sq::register(#"hash_603a979f50bcddaa", #"step_1", #"hash_5e3bafbf90c3a595", &function_b546cde6, &function_fd853e02);
    level zm_sq::register(#"hash_603a979f50bcddaa", #"step_2", #"hash_5e3bacbf90c3a07c", &function_a38008d1, &function_54e9a43b);
    level flag::wait_till(#"start_zombie_round_logic");
    level zm_sq::start(#"hash_603a979f50bcddaa", 1);
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 1, eflags: 0x2 linked
// Checksum 0x20c63f08, Offset: 0xf10
// Size: 0x3cc
function function_b546cde6(b_skipped) {
    if (b_skipped) {
        return;
    }
    callback::on_item_pickup(&item_pickup);
    callback::on_ai_killed(&function_c490ff56);
    var_8a29121f = struct::get_array("debris_pile", "targetname");
    var_10972b21 = array::random(var_8a29121f);
    var_10972b21.var_b9c671f = 1;
    var_9039575a = getent("klaus_upgrade_station", "targetname");
    var_9039575a.is_active = 1;
    var_9039575a disconnectpaths();
    var_1baed918 = struct::get_array(var_9039575a.target, "targetname");
    foreach (target_pos in var_1baed918) {
        if (target_pos.script_noteworthy == "klaus_enter_pos") {
            var_9039575a.klaus_enter_pos = target_pos;
        }
        if (target_pos.script_noteworthy == "sub_dis_pos") {
            var_9039575a.sub_dis_pos = target_pos;
        }
        if (target_pos.script_noteworthy == "spawn_loc") {
            var_9039575a.spawn_loc = target_pos;
        }
        if (target_pos.script_noteworthy == "screen_pos") {
            if (!isdefined(var_9039575a.var_2409a5e6)) {
                var_9039575a.var_2409a5e6 = [];
            } else if (!isarray(var_9039575a.var_2409a5e6)) {
                var_9039575a.var_2409a5e6 = array(var_9039575a.var_2409a5e6);
            }
            if (!isinarray(var_9039575a.var_2409a5e6, target_pos)) {
                var_9039575a.var_2409a5e6[var_9039575a.var_2409a5e6.size] = target_pos;
            }
        }
    }
    array::thread_all(var_8a29121f, &function_47a1b8);
    level thread function_f23e8f24();
    level thread function_4675ef4e();
    level flag::wait_till(#"hash_720384d338d58cf4");
    if (isdefined(level.klaus)) {
        level.klaus zodcompanionutility::function_fc67b7ed(&function_f0be2da6);
    }
    level flag::wait_till_all(array(#"hash_73b91a4076d8a5fd", #"hash_2fea433a677a8531"));
    level flag::set(#"hash_129534f9869c8980");
    /#
        iprintlnbold("<unknown string>");
    #/
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 2, eflags: 0x2 linked
// Checksum 0xec4ce49d, Offset: 0x12e8
// Size: 0xa4
function function_fd853e02(b_skipped, var_19e802fa) {
    if (b_skipped || var_19e802fa) {
        level flag::set(#"hash_73b91a4076d8a5fd");
        level flag::set(#"hash_2fea433a677a8531");
        level flag::set(#"hash_129534f9869c8980");
    }
    /#
        iprintlnbold("<unknown string>");
    #/
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 0, eflags: 0x2 linked
// Checksum 0x64e49ed3, Offset: 0x1398
// Size: 0x508
function function_4675ef4e() {
    var_9039575a = getent("klaus_upgrade_station", "targetname");
    level flag::wait_till("power_on");
    if (!isarray(var_9039575a.var_2409a5e6)) {
        return;
    }
    foreach (var_2551a4be in var_9039575a.var_2409a5e6) {
        var_2551a4be.mdl = util::spawn_model(#"hash_7879420ed766f842", var_9039575a gettagorigin("monitor_02_jnt"), var_9039575a gettagangles("monitor_02_jnt"));
        var_2551a4be.mdl linkto(var_9039575a, "monitor_02_jnt");
        var_2551a4be.mdl playsound(#"hash_5e793e8deaf716a6");
        var_2551a4be.mdl playloopsound(#"hash_648ae65d9a233cf9");
        var_2551a4be.var_429cef67 = util::spawn_model(#"hash_78793e0ed766f176", var_9039575a gettagorigin("monitor_01_jnt"), var_9039575a gettagangles("monitor_01_jnt"));
        var_2551a4be.var_429cef67 linkto(var_9039575a, "monitor_01_jnt");
        var_2551a4be.var_429cef67 playloopsound(#"hash_19b4044ad55db503");
    }
    level flag::wait_till(#"hash_2fea433a677a8531");
    foreach (var_2551a4be in var_9039575a.var_2409a5e6) {
        if (isdefined(var_2551a4be.mdl)) {
            var_2551a4be.mdl setmodel(#"hash_7879410ed766f68f");
            var_2551a4be.mdl playsound(#"hash_5e793e8deaf716a6");
            var_2551a4be.mdl playloopsound(#"hash_648ae65d9a233cf9");
        }
    }
    level flag::wait_till(#"hash_73b91a4076d8a5fd");
    foreach (var_2551a4be in var_9039575a.var_2409a5e6) {
        if (isdefined(var_2551a4be.mdl)) {
            var_2551a4be.mdl setmodel(#"hash_7879400ed766f4dc");
            var_2551a4be.mdl playsound(#"hash_18d052827c85e15");
            var_2551a4be.mdl playloopsound(#"hash_19b4044ad55db503");
        }
        if (isdefined(var_2551a4be.var_429cef67)) {
            var_2551a4be.var_429cef67 setmodel(#"hash_78793f0ed766f329");
            var_2551a4be.mdl playsound(#"hash_18d052827c85e15");
            var_2551a4be.mdl playloopsound(#"hash_19b4044ad55db503");
        }
    }
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 0, eflags: 0x2 linked
// Checksum 0x3fcc1001, Offset: 0x18a8
// Size: 0x1ec
function function_47a1b8() {
    self.scriptmodel = util::spawn_model(#"hash_2a623b8543cec8c8", self.origin, self.angles);
    self.scriptmodel setscale(0.6);
    self zm_unitrigger::function_fac87205(#"hash_2813adbf78aefe3f", 64);
    self.scriptmodel clientfield::set("" + #"hash_8b9fe3412e34513", 1);
    self.scriptmodel moveto(self.scriptmodel.origin + (0, 0, -30), 3);
    if (is_true(self.var_b9c671f)) {
        point = function_4ba8fde(#"hash_4ad785fc5428f484");
        var_b89b8f42 = item_drop::drop_item(0, undefined, 1, 0, point.id, self.origin, self.angles, 2);
        var_b89b8f42.var_dd21aec2 = 1 | 16;
    } else {
        namespace_58949729::function_f82f361c(self, #"small_chest_level_1", 2, 1);
    }
    wait(5);
    if (isdefined(self.scriptmodel)) {
        self.scriptmodel delete();
    }
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 1, eflags: 0x2 linked
// Checksum 0x596155ae, Offset: 0x1aa0
// Size: 0x182
function item_pickup(params) {
    item = params.item;
    if (isplayer(self)) {
        if (isdefined(item.itementry)) {
            switch (item.itementry.name) {
            case #"hash_4ad785fc5428f484":
                level zm_ui_inventory::function_7df6bb60(#"hash_4a43375d671f2e30", 1);
                level flag::set(#"hash_685bfabd9ce72d7c");
                break;
            case #"hash_7af2b5eb8d8c6fda":
                level flag::set(#"hash_4c498c40805ec092");
                level.var_3d8c252b++;
                break;
            case #"hash_54d43da245d6857a":
                level flag::set(#"hash_11d54d2ecf05cb2");
                level.var_3d8c252b++;
                break;
            case #"hash_1f8bb9e3c0e5ac10":
                level flag::set(#"hash_2bd741137c515a48");
                level.var_3d8c252b++;
                break;
            }
        }
    }
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 1, eflags: 0x2 linked
// Checksum 0x11c7fc1d, Offset: 0x1c30
// Size: 0x12c
function function_c490ff56(params) {
    attacker = params.eattacker;
    if (attacker.archetype !== #"zod_companion") {
        return;
    }
    if (!isdefined(attacker.var_e941964e)) {
        attacker.var_e941964e = 0;
    }
    attacker.var_e941964e++;
    /#
        iprintlnbold("<unknown string>" + attacker.var_e941964e);
    #/
    if (attacker.var_e941964e >= 50) {
        level flag::set(#"hash_73b91a4076d8a5fd");
        playsoundatposition(#"hash_77b21ab51a834aa5", (0, 0, 0));
        callback::remove_on_ai_killed(&function_c490ff56);
        /#
            iprintlnbold("<unknown string>");
        #/
    }
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 0, eflags: 0x2 linked
// Checksum 0x31b0fcc3, Offset: 0x1d68
// Size: 0x72
function function_f23e8f24() {
    var_9039575a = getent("klaus_upgrade_station", "targetname");
    var_1f969649 = var_9039575a zm_unitrigger::create(&function_5aaec675, 64, &function_dc580b92);
    var_1f969649.script_model = var_9039575a;
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 1, eflags: 0x2 linked
// Checksum 0xa6e5e0b6, Offset: 0x1de8
// Size: 0x74
function function_5aaec675(e_player) {
    if (isplayer(e_player)) {
        if (!level flag::get(#"hash_685bfabd9ce72d7c")) {
            return false;
        } else {
            self sethintstring(#"hash_6dce81d52c41f3e4");
            return true;
        }
    }
    return false;
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 0, eflags: 0x2 linked
// Checksum 0xcefc0984, Offset: 0x1e68
// Size: 0x114
function function_dc580b92() {
    level endon(#"end_game");
    self waittill(#"trigger");
    if (isdefined(self.stub.script_model.sub_dis_pos)) {
        var_55ce5b28 = util::spawn_model(#"hash_5ca33d5114f5bccd", self.stub.script_model.sub_dis_pos.origin, self.stub.script_model.sub_dis_pos.angles);
        var_55ce5b28 playsound(#"hash_5e8619a5e50dcd1d");
    }
    level flag::set(#"hash_2fea433a677a8531");
    zm_unitrigger::unregister_unitrigger(self.stub);
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 0, eflags: 0x2 linked
// Checksum 0xe98bccac, Offset: 0x1f88
// Size: 0x16c
function function_cefdd0d2() {
    level endon(#"end_game");
    level flag::wait_till(#"hash_2fea433a677a8531");
    if (level flag::get(#"hash_5503fb2f49e6a242")) {
        vo_string = zm_platinum_vo::function_c5fed573([#"hash_30f9f5fd3af0134a", #"hash_2baee4267b0056b1", #"hash_73d5094f57c50194"], [#"hash_6f9876f2c7047631", #"hash_21cafd0f13677a7a", #"hash_3cd3a276d7493ccb"], [#"hash_5bd603446f578b68", #"hash_38f141943f84ad97", #"hash_4e0da8bc8fe2f61a"]);
        level zm_vo::function_7622cb70(vo_string);
    }
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 1, eflags: 0x2 linked
// Checksum 0x38c08fc9, Offset: 0x2100
// Size: 0x6c
function function_a38008d1(b_skipped) {
    if (b_skipped) {
        return;
    }
    level flag::wait_till(#"hash_30bd3fb769cba5e7");
    level flag::set(#"hash_75f07aed08b6bb5e");
    level thread function_fe052ae();
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 2, eflags: 0x2 linked
// Checksum 0xc03498e4, Offset: 0x2178
// Size: 0x1cc
function function_54e9a43b(b_skipped, var_19e802fa) {
    if (b_skipped || var_19e802fa) {
        if (level flag::get(#"hash_720384d338d58cf4") && isdefined(level.klaus)) {
            spawn_loc = level.klaus.origin;
            spawn_angles = level.klaus.angles;
            var_55033b92 = spawnactor("spawner_zm_mannequin_ally_upgraded", spawn_loc, spawn_angles);
            if (isdefined(level.klaus.current_scene) && level.klaus.current_scene == #"hash_e667b7bb5057190") {
                scene::remove_scene_func(#"hash_e667b7bb5057190", &namespace_6fb22263::function_3691fd0b, "sit_loop");
                var_55033b92 thread scene::play(#"hash_e667b7bb5057190", "sit_loop", var_55033b92);
            }
        }
        level thread function_fe052ae();
        level flag::set(#"hash_30bd3fb769cba5e7");
    }
    level flag::clear(#"hash_7541a4f6c1968c49");
    level flag::set(#"hash_75f07aed08b6bb5e");
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 0, eflags: 0x2 linked
// Checksum 0x818a078f, Offset: 0x2350
// Size: 0x664
function function_f0be2da6() {
    level endon(#"hash_5eb0053f75fee299", #"hash_2304a1d24bb8597f");
    self notify("14e5d3019feff44f");
    self endon("14e5d3019feff44f");
    var_9039575a = getent("klaus_upgrade_station", "targetname");
    if (!isdefined(level.klaus)) {
        return;
    }
    dis = distancesquared(level.klaus.origin, var_9039575a.origin);
    if (dis <= sqr(200)) {
        if (!level flag::get(#"hash_2fea433a677a8531")) {
            return;
        }
        if (!level flag::get(#"hash_73b91a4076d8a5fd")) {
            level thread zm_platinum_vo::function_e250a72f(#"hash_73d461413df9b3af");
            return;
        }
        if (!level flag::get(#"hash_30bd3fb769cba5e7")) {
            level.klaus thread namespace_33c196c8::function_dec85954("zber_kvo_cmdint", 1);
        }
        level.klaus zodcompanionutility::function_34179e9a();
        wait(0.2);
        if (!isdefined(level.klaus)) {
            return;
        }
        var_5a7117fb = level.klaus zodcompanionutility::function_14f3d97b(var_9039575a.klaus_enter_pos.origin);
        if (is_true(var_5a7117fb)) {
            level.klaus.var_fc6edf64 = 1;
            level.klaus waittill(#"goal");
            if (!level flag::get(#"hash_279a97271de2b7e1")) {
                return;
            }
            level flag::set(#"hash_66eb1b5632f46da8");
            level.var_7c745515 = randomintrange(1, 3);
            level.klaus scene::play(#"hash_423ce4528e7aaf1f", "upgrade_intro_" + level.var_7c745515, level.klaus);
            level.klaus thread scene::play(#"hash_423ce4528e7aaf1f", "upgrade_idle_" + level.var_7c745515, level.klaus);
            level.var_459ddb9c = 1;
            if (!level flag::get(#"hash_30bd3fb769cba5e7")) {
                level thread function_d780da65();
                level notify(#"hash_7c60044f6a90f7f5");
                level thread function_f26e6dd8();
                level.klaus animation::stop();
                level.klaus thread scene::play(#"hash_423ce4528e7aaf1f", "upgrade_loop_" + level.var_7c745515, level.klaus);
                var_9039575a thread scene::play(#"hash_a4fed5bd30bd26b", "play1", var_9039575a);
                if (!is_true(level.var_3944a299)) {
                    level thread zm_platinum_vo::function_e250a72f(#"hash_1a1fbf7523691c89");
                    level.var_3944a299 = 1;
                }
            } else if (!level flag::get(#"hash_6ee0214c0ffd7fd5") && level flag::get(#"hash_30bd3fb769cba5e7")) {
                level thread function_d780da65();
                return;
            } else if (level flag::get(#"hash_6ee0214c0ffd7fd5") && level flag::get(#"hash_30bd3fb769cba5e7")) {
                level thread zm_platinum_vo::function_e250a72f(#"hash_604bbdfbecc2aa6a");
                level thread function_e243a545();
            } else {
                level.klaus animation::stop();
                level.klaus scene::play(#"hash_423ce4528e7aaf1f", "upgrade_outro_" + level.var_7c745515, level.klaus);
                level flag::clear(#"hash_66eb1b5632f46da8");
                level.klaus zodcompanionutility::function_633d6f7b();
                level.var_459ddb9c = 0;
                level.klaus.var_fc6edf64 = 0;
                /#
                    iprintlnbold("<unknown string>");
                #/
            }
            return;
        }
        level.klaus zodcompanionutility::function_633d6f7b();
        /#
            iprintlnbold("<unknown string>");
        #/
    }
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 0, eflags: 0x2 linked
// Checksum 0x29a9f4f5, Offset: 0x29c0
// Size: 0x13c
function function_d780da65() {
    level endon(#"end_game", #"hash_7541a4f6c1968c49", #"hash_41ac4cced327262e");
    self notify("4f2e3404de8ace88");
    self endon("4f2e3404de8ace88");
    wait(30);
    if (is_true(level.var_459ddb9c) && isdefined(level.klaus)) {
        level.klaus zodcompanionutility::function_633d6f7b();
        level.var_459ddb9c = 0;
        level.klaus.var_fc6edf64 = 0;
        level.klaus animation::stop();
        level.klaus scene::play(#"hash_423ce4528e7aaf1f", "upgrade_outro_" + level.var_7c745515, level.klaus);
        level flag::clear(#"hash_66eb1b5632f46da8");
    }
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 0, eflags: 0x2 linked
// Checksum 0xcbaa3f29, Offset: 0x2b08
// Size: 0x2b4
function function_f26e6dd8() {
    var_9039575a = getent("klaus_upgrade_station", "targetname");
    var_9039575a val::set("defend", "takedamage", 1);
    slots = namespace_85745671::function_bdb2b85b(var_9039575a, var_9039575a.origin, var_9039575a.angles, 30, 10, undefined, 1);
    var_9039575a.is_active = 1;
    var_9039575a.var_b79a8ac7 = {#var_f019ea1a:1500, #slots:slots};
    level.attackables[level.attackables.size] = var_9039575a;
    var_9039575a.var_6332d14f = spawn("trigger_damage", var_9039575a.origin + (0, 0, 20), 0, 64, 128);
    /#
        box(var_9039575a.origin + (0, 0, 20), (-32, -32, -64), (32, 32, 64), var_9039575a.angles, (1, 0, 0), 1, 0, 20000);
    #/
    level thread objective_manager::start_timer(60, "defend");
    var_9039575a thread function_4ffd09e4();
    var_9039575a thread function_b20e6cff();
    var_9039575a thread function_12f0e19b();
    zm_sq::function_266d66eb(#"hash_7a3926f32c4410eb", level.klaus, 1, #"hash_3258f0b2a8184c64");
    if (isdefined(level.klaus)) {
        level.klaus clientfield::set("" + #"hash_3e4641a9ea00d061", 1);
    }
    level flag::set(#"hash_7541a4f6c1968c49");
    /#
        iprintlnbold("<unknown string>");
    #/
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 0, eflags: 0x2 linked
// Checksum 0x6acee418, Offset: 0x2dc8
// Size: 0x454
function function_4ffd09e4() {
    level endon(#"end_game", #"hash_30bd3fb769cba5e7");
    self endon(#"defend_succeed");
    wait(0.5);
    var_f15d2e26 = 800;
    zm_sq::sndonoverride_eye_(var_f15d2e26 / 800);
    zm_sq::function_2398ab16("cleanup_objective_bar");
    while (true) {
        result = self.var_6332d14f waittill(#"damage");
        if (!isplayer(result.attacker)) {
            self clientfield::increment("" + #"hash_85303d8249a5451");
            var_f15d2e26 -= result.amount;
            /#
                iprintlnbold(var_f15d2e26);
            #/
            zm_sq::sndonoverride_eye_(var_f15d2e26 / 800);
            if (var_f15d2e26 <= 0) {
                self notify(#"hash_5dec93745dff8acb");
                level notify(#"hash_5eb0053f75fee299");
                level notify(#"cleanup_objective_bar");
                level thread objective_manager::stop_timer();
                namespace_85745671::function_b70e2a37(self);
                level flag::clear(#"hash_279a97271de2b7e1");
                level flag::clear(#"hash_6d16c284cbb301d1");
                level flag::clear(#"hash_7541a4f6c1968c49");
                level flag::clear(#"hash_66eb1b5632f46da8");
                level thread namespace_6fb22263::function_ec916ba1();
                if (isdefined(level.klaus)) {
                    level.klaus.owner = undefined;
                    level.klaus zodcompanionutility::function_34179e9a();
                }
                level.var_459ddb9c = 0;
                /#
                    iprintlnbold("<unknown string>");
                #/
                if (isdefined(level.klaus)) {
                    level.klaus clientfield::set("" + #"hash_703543ca871a0f75", 1);
                }
                self scene::stop(#"hash_a4fed5bd30bd26b");
                if (isdefined(level.klaus)) {
                    zm_sq::objective_complete(#"hash_7a3926f32c4410eb", level.klaus);
                    level.klaus clientfield::set("" + #"hash_3e4641a9ea00d061", 0);
                }
                if (!is_true(level.var_3d8dc38a)) {
                    level thread zm_platinum_vo::function_e250a72f(#"hash_4d2fb45ce767e63b");
                    level.var_3d8dc38a = 1;
                }
                if (isdefined(level.klaus)) {
                    level.klaus scene::play(#"hash_423ce4528e7aaf1f", "upgrade_outro_" + level.var_7c745515, level.klaus);
                }
                namespace_6fb22263::function_c94afb95();
                break;
            }
        }
    }
    self.var_6332d14f deletedelay();
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 0, eflags: 0x2 linked
// Checksum 0xf10cac57, Offset: 0x3228
// Size: 0x4a4
function function_b20e6cff() {
    level endon(#"end_game", #"hash_30bd3fb769cba5e7");
    self endon(#"hash_5dec93745dff8acb");
    level waittill(#"timer_defend");
    level notify(#"cleanup_objective_bar");
    namespace_85745671::function_b70e2a37(self);
    self notify(#"defend_succeed");
    level flag::clear(#"hash_7541a4f6c1968c49");
    if (isdefined(level.klaus)) {
        origin = level.klaus.origin;
        angles = level.klaus.angles;
    } else {
        origin = self.origin;
        angles = self.angles;
    }
    var_55033b92 = function_4a57e36("spawner_zm_mannequin_ally_upgraded", origin, angles, #"hash_423ce4528e7aaf1f", "upgrade_loop_" + level.var_7c745515);
    self clientfield::set("" + #"hash_31c00da72502364a", 1);
    wait(0.5);
    if (isdefined(level.klaus)) {
        level.klaus clientfield::set("" + #"hash_703543ca871a0f75", 0);
    }
    util::wait_network_frame();
    var_55033b92 show();
    var_55033b92 clientfield::set("" + #"hash_703543ca871a0f75", 1);
    if (isdefined(level.klaus)) {
        level.klaus hide();
    }
    wait(0.5);
    level thread namespace_1fc8f2e3::function_e8799ac6(self, 512);
    self scene::stop(#"hash_a4fed5bd30bd26b");
    level util::delay(1, "end_game", &zm_platinum_vo::function_e250a72f, #"hash_2b45e84695664cf0", var_55033b92);
    var_55033b92 clientfield::increment("" + #"hash_3d52751d686c4865", 1);
    var_55033b92 function_a7642f50(#"hash_423ce4528e7aaf1f", "upgrade_outro_" + level.var_7c745515);
    /#
        iprintlnbold("<unknown string>");
    #/
    level.var_459ddb9c = 0;
    if (isdefined(level.klaus.leader)) {
        level thread namespace_6fb22263::function_a8333f44(30);
    } else {
        namespace_6fb22263::function_c94afb95();
        level thread namespace_6fb22263::function_ec916ba1();
        if (isdefined(level.klaus)) {
            level.klaus.owner = undefined;
        }
    }
    if (isdefined(level.klaus)) {
        zm_sq::objective_complete(#"hash_7a3926f32c4410eb", level.klaus);
        level.klaus clientfield::set("" + #"hash_3e4641a9ea00d061", 0);
    }
    level flag::clear(#"hash_66eb1b5632f46da8");
    waitframe(5);
    level flag::set(#"hash_30bd3fb769cba5e7");
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 6, eflags: 0x6 linked
// Checksum 0x63cfa489, Offset: 0x36d8
// Size: 0x1c0
function private function_4a57e36(aitype, origin, angles, scene, shot, hidden = 1) {
    while (true) {
        var_39ab7f8c = getaiarchetypearray(#"zombie", level.zombie_team);
        function_1eaaceab(var_39ab7f8c);
        if (var_39ab7f8c.size != 0) {
            successful = function_d59a3443(var_39ab7f8c);
            if (!is_true(successful)) {
                waitframe(1);
                continue;
            }
        }
        var_55033b92 = spawnactor(aitype, origin, angles);
        if (isdefined(var_55033b92)) {
            var_55033b92 val::set(#"hash_7b1d28fa8c7a3174", "ignoreall", 1);
            var_55033b92 pathmode("dont move");
            break;
        }
        waitframe(1);
    }
    if (isdefined(scene) && isdefined(shot)) {
        var_55033b92 thread scene::play(scene, shot, var_55033b92);
    }
    if (hidden) {
        var_55033b92 hide();
    }
    return var_55033b92;
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 2, eflags: 0x6 linked
// Checksum 0x1b9eb053, Offset: 0x38a0
// Size: 0x164
function private function_a7642f50(scene, shot) {
    switch (level.var_63732251) {
    case 1:
        self function_99f76fa4(level.var_88672174, 0, 0);
        break;
    case 2:
        self function_99f76fa4(level.var_5b8c6c9b, 0, 0);
        break;
    case 3:
        self function_99f76fa4(level.var_f1662fe9, 0, 0);
        break;
    }
    if (isdefined(scene) && isdefined(shot)) {
        self scene::play(scene, shot, self);
    }
    self namespace_6fb22263::function_73367fa9();
    self val::reset(#"hash_7b1d28fa8c7a3174", "ignoreall");
    self pathmode("move allowed");
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 0, eflags: 0x2 linked
// Checksum 0x412cf83d, Offset: 0x3a10
// Size: 0x160
function function_12f0e19b() {
    level endon(#"end_game", #"hash_30bd3fb769cba5e7");
    self endon(#"defend_succeed", #"hash_5dec93745dff8acb");
    start_time = gettime() / 1000;
    self.var_35109571 = 3;
    self.var_2d315b4f = 8;
    self.var_d42830e6 = [];
    self thread function_2a26db52(20);
    self thread function_a07758b0(20);
    self thread function_1bf091a7();
    while (true) {
        current_time = gettime() / 1000 - start_time;
        if (current_time >= 25) {
            self.var_35109571 = 2;
            self.var_2d315b4f = 6.5;
        }
        if (current_time > 40) {
            self.var_35109571 = 1.5;
            self.var_2d315b4f = 5.5;
        }
        wait(1);
    }
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 0, eflags: 0x6 linked
// Checksum 0x306e9f13, Offset: 0x3b78
// Size: 0x112
function private function_1bf091a7() {
    level endon(#"end_game");
    util::waittill_any_ents(level, #"hash_30bd3fb769cba5e7", self, #"defend_succeed", self, #"hash_5dec93745dff8acb");
    if (isdefined(self.var_d42830e6)) {
        function_1eaaceab(self.var_d42830e6);
        foreach (ai in self.var_d42830e6) {
            if (isdefined(ai.var_9664814c)) {
                ai.b_ignore_cleanup = ai.var_9664814c;
            }
        }
    }
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 1, eflags: 0x2 linked
// Checksum 0x64b92061, Offset: 0x3c98
// Size: 0x218
function function_2a26db52(var_c7498e44) {
    level endon(#"end_game", #"hash_30bd3fb769cba5e7");
    self endon(#"defend_succeed", #"hash_5dec93745dff8acb");
    zone_name = zm_zonemgr::get_zone_from_position(self.klaus_enter_pos.origin, 1, 1);
    if (!isdefined(zone_name)) {
        /#
            iprintlnbold("<unknown string>");
        #/
        return;
    }
    while (true) {
        if (isdefined(self.var_d42830e6)) {
            function_1eaaceab(self.var_d42830e6);
        }
        if (self.var_d42830e6.size < var_c7498e44) {
            spawn_ai = zm_utility::function_cce73165("tempest_location", "spawner_bo5_soa", zone_name);
            if (isdefined(spawn_ai)) {
                spawn_ai.ignore_enemy_count = 1;
                spawn_ai.exclude_cleanup_adding_to_total = 1;
                spawn_ai.var_9664814c = is_true(spawn_ai.b_ignore_cleanup);
                spawn_ai.b_ignore_cleanup = 1;
                if (!isdefined(self.var_d42830e6)) {
                    self.var_d42830e6 = [];
                } else if (!isarray(self.var_d42830e6)) {
                    self.var_d42830e6 = array(self.var_d42830e6);
                }
                if (!isinarray(self.var_d42830e6, spawn_ai)) {
                    self.var_d42830e6[self.var_d42830e6.size] = spawn_ai;
                }
                wait(self.var_2d315b4f);
            } else {
                wait(1);
            }
            continue;
        }
        wait(1);
    }
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 1, eflags: 0x2 linked
// Checksum 0x76f97865, Offset: 0x3eb8
// Size: 0x300
function function_a07758b0(var_c7498e44) {
    level endon(#"end_game", #"hash_30bd3fb769cba5e7");
    self endon(#"defend_succeed", #"hash_5dec93745dff8acb");
    while (true) {
        if (isdefined(self.var_d42830e6)) {
            function_1eaaceab(self.var_d42830e6);
        }
        if (self.var_d42830e6.size < var_c7498e44) {
            var_a96b643a = [];
            var_dbc18a74 = struct::get_array("spawn_location", "script_noteworthy");
            foreach (spawner in var_dbc18a74) {
                if ("zone_korber_sewing_room" === spawner.zone_name) {
                    if (!isdefined(var_a96b643a)) {
                        var_a96b643a = [];
                    } else if (!isarray(var_a96b643a)) {
                        var_a96b643a = array(var_a96b643a);
                    }
                    var_a96b643a[var_a96b643a.size] = spawner;
                }
            }
            if (var_a96b643a.size > 0) {
                var_958f8634 = var_a96b643a[randomint(var_a96b643a.size)];
            } else {
                continue;
            }
            spawn_ai = zombie_utility::spawn_zombie(level.zombie_spawners[0], undefined, var_958f8634);
            if (isdefined(spawn_ai)) {
                spawn_ai.ignore_enemy_count = 1;
                spawn_ai.exclude_cleanup_adding_to_total = 1;
                spawn_ai.var_9664814c = is_true(spawn_ai.b_ignore_cleanup);
                spawn_ai.b_ignore_cleanup = 1;
                if (!isdefined(self.var_d42830e6)) {
                    self.var_d42830e6 = [];
                } else if (!isarray(self.var_d42830e6)) {
                    self.var_d42830e6 = array(self.var_d42830e6);
                }
                if (!isinarray(self.var_d42830e6, spawn_ai)) {
                    self.var_d42830e6[self.var_d42830e6.size] = spawn_ai;
                }
                wait(self.var_35109571);
            } else {
                wait(1);
            }
            continue;
        }
        wait(1);
    }
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 0, eflags: 0x2 linked
// Checksum 0x330a90a8, Offset: 0x41c0
// Size: 0x24c
function function_954b2553() {
    level endon(#"hash_2304a1d24bb8597f");
    self notify("684b3e007c5f3df3");
    self endon("684b3e007c5f3df3");
    if (!isarray(level.var_44ff9e2)) {
        return;
    }
    foreach (var_fa962a4a in level.var_44ff9e2) {
        dis = distance(self.origin, var_fa962a4a.origin);
        if (dis <= 64 && is_true(var_fa962a4a.is_active)) {
            if (!level flag::get(#"hash_75f07aed08b6bb5e") && is_true(level.var_fca351b8) && isdefined(level.klaus)) {
                level.klaus thread namespace_33c196c8::function_dec85954("zber_kvo_cmdint", 1);
            }
            if (level flag::get(#"hash_75f07aed08b6bb5e") && is_true(level.var_527966ee) && isdefined(level.klaus)) {
                level.klaus thread namespace_33c196c8::function_dec85954("zber_kvo_cmdint", 1);
            }
            namespace_85745671::function_a31a41e8(self, var_fa962a4a);
            /#
                iprintlnbold("<unknown string>");
            #/
            break;
        }
    }
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 0, eflags: 0x2 linked
// Checksum 0x9387141d, Offset: 0x4418
// Size: 0x260
function function_52da09c5() {
    level endon(#"end_game");
    while (true) {
        waitresult = self waittill(#"damage");
        if (isdefined(waitresult.attacker.archetype) && waitresult.attacker.archetype == #"zod_companion" && waitresult.mod === "MOD_MELEE") {
            if (isdefined(level.klaus.attackable)) {
                /#
                    iprintlnbold("<unknown string>");
                #/
                playsoundatposition(#"hash_3a464371e80d6623", self.origin);
                namespace_85745671::function_2b925fa5(level.klaus);
                self.var_67fbb89d clientfield::increment("" + #"hash_47839169ce0224b7", 1);
                if (!level flag::get(#"hash_75f07aed08b6bb5e")) {
                    /#
                        iprintlnbold("<unknown string>");
                    #/
                    if (!is_true(level.var_fca351b8)) {
                        level thread zm_platinum_vo::function_e250a72f(#"hash_545f39f603f1d9a6", level.klaus, 1);
                        level.var_fca351b8 = 1;
                    }
                    continue;
                }
                if (!is_true(level.var_527966ee)) {
                    level thread zm_platinum_vo::function_e250a72f(#"hash_6905fdcce2110659", level.klaus, 1);
                    level.var_527966ee = 1;
                }
                self.is_active = 0;
                self.var_67fbb89d thread function_ed04cf0f();
            }
        }
    }
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 1, eflags: 0x2 linked
// Checksum 0xe163c198, Offset: 0x4680
// Size: 0x34a
function function_ed04cf0f(b_debug = 0) {
    level endon(#"end_game");
    self moveto(self.origin + (0, 0, 16), 3);
    self playsound(#"hash_374ec9a1c638132d");
    switch (self.index) {
    case 0:
        str_flag = #"hash_4c498c40805ec092";
        var_dc7e53b6 = #"hash_7af2b5eb8d8c6fda";
        break;
    case 1:
        str_flag = #"hash_11d54d2ecf05cb2";
        var_dc7e53b6 = #"hash_54d43da245d6857a";
        break;
    case 2:
        str_flag = #"hash_2bd741137c515a48";
        var_dc7e53b6 = #"hash_1f8bb9e3c0e5ac10";
        break;
    default:
        break;
    }
    if (b_debug) {
        point = function_4ba8fde(#"hash_7af2b5eb8d8c6fda");
        var_22009b28 = item_drop::drop_item(0, undefined, 1, 0, point.id, self.disk_location.origin, self.disk_location.angles, 0);
        var_22009b28.var_dd21aec2 = 1 | 16;
    } else if (!level flag::get(str_flag) && is_true(self.var_b7bf4ddb)) {
        point = function_4ba8fde(var_dc7e53b6);
        var_22009b28 = item_drop::drop_item(0, undefined, 1, 0, point.id, self.disk_location.origin, self.disk_location.angles, 0);
        var_22009b28.var_dd21aec2 = 1 | 16;
    }
    wait(30);
    self playsound(#"hash_6d4b0bc39a6f348f");
    self moveto(self.origin - (0, 0, 16), 3);
    self waittill(#"movedone");
    if (isdefined(var_22009b28)) {
        var_22009b28 delete();
    }
    self.is_active = 1;
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 0, eflags: 0x2 linked
// Checksum 0x8d3c37d2, Offset: 0x49d8
// Size: 0x5c
function function_fe052ae() {
    var_9039575a = getent("klaus_upgrade_station", "targetname");
    var_9039575a zm_unitrigger::create(&function_bbadb4b5, 128, &function_4246a0a4);
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 1, eflags: 0x2 linked
// Checksum 0x48dd3db3, Offset: 0x4a40
// Size: 0x154
function function_bbadb4b5(e_player) {
    if (isplayer(e_player)) {
        if (isdefined(level.var_c5b55a18) && level.var_c5b55a18 > level.round_number || level flag::get(#"hash_3619125fe3a40ead")) {
            self sethintstring(#"hash_36868d63582532f7");
            return true;
        }
        if (!is_true(level.var_459ddb9c)) {
            self sethintstring(#"hash_176d8f196a4cc992");
            return true;
        } else if (isdefined(level.var_3d8c252b) && level.var_3d8c252b != 0) {
            self sethintstring(#"hash_7945985808402ef6");
            return true;
        } else {
            self sethintstring(#"hash_198d050c8b417c2d");
            return true;
        }
    }
    return false;
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 0, eflags: 0x2 linked
// Checksum 0x9aa19de8, Offset: 0x4ba0
// Size: 0x170
function function_4246a0a4() {
    level endon(#"end_game");
    self endon(#"death");
    while (true) {
        self waittill(#"trigger");
        if (!isdefined(level.var_c5b55a18)) {
            level.var_c5b55a18 = level.round_number;
        }
        if (!is_true(level.var_459ddb9c) || level.var_c5b55a18 > level.round_number || level.var_3d8c252b == 0 || level flag::get(#"hash_3619125fe3a40ead")) {
            continue;
        }
        level.var_c5b55a18 = level.round_number + 1;
        if (level.var_3d8c252b != 0) {
            level.var_63732251++;
            level.var_3d8c252b--;
            level thread function_9d903a8e(level.var_63732251);
        }
        if (level.var_63732251 === 3) {
            zm_unitrigger::unregister_unitrigger(self.stub);
        }
    }
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 0, eflags: 0x2 linked
// Checksum 0x1b2e2319, Offset: 0x4d18
// Size: 0x16c
function function_7d8f4a5b() {
    level endon(#"end_game");
    var_9039575a = getent("klaus_upgrade_station", "targetname");
    while (!level flag::get(#"hash_6ee0214c0ffd7fd5")) {
        if (isdefined(level.klaus)) {
            dis = distance(level.klaus.origin, var_9039575a.origin);
            if (isdefined(dis) && dis <= 1500) {
                level clientfield::set("" + #"hash_33f337fe0df045df", 1);
            } else {
                level clientfield::set("" + #"hash_33f337fe0df045df", 0);
            }
        }
        wait(3);
    }
    level clientfield::set("" + #"hash_33f337fe0df045df", 0);
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 1, eflags: 0x2 linked
// Checksum 0x882f97be, Offset: 0x4e90
// Size: 0x6b4
function function_9d903a8e(index) {
    level endon(#"end_game");
    level notify(#"hash_41ac4cced327262e");
    level notify(#"hash_7c60044f6a90f7f5");
    level flag::set(#"hash_3619125fe3a40ead");
    if (isdefined(level.klaus)) {
        level.klaus thread scene::play(#"hash_423ce4528e7aaf1f", "upgrade_loop_" + level.var_7c745515, level.klaus);
    }
    var_9039575a = getent("klaus_upgrade_station", "targetname");
    var_9039575a thread scene::play(#"hash_a4fed5bd30bd26b", "play1", var_9039575a);
    wait(5);
    var_9039575a scene::stop(#"hash_a4fed5bd30bd26b");
    switch (index) {
    case 2:
        if (isdefined(level.klaus)) {
            level.klaus setmodel(#"hash_7735285cc1c952f5");
            level.klaus clientfield::increment("" + #"hash_3d52751d686c4865", 1);
        }
        var_5fca83f = array::random([#"hash_5f245235b254cb19", #"hash_5f245135b254c966", #"hash_5f245035b254c7b3"]);
        level thread zm_platinum_vo::function_e250a72f(var_5fca83f);
        var_6c7ad44a = zm_vo::function_f577c17d(var_5fca83f);
        wait(var_6c7ad44a);
        break;
    case 3:
        if (isdefined(level.klaus)) {
            level.klaus setmodel(#"hash_40911bda0b473087");
            level.klaus clientfield::increment("" + #"hash_3d52751d686c4865", 1);
        }
        var_5fca83f = array::random([#"hash_2f069932ad0794ff", #"hash_2f069832ad07934c", #"hash_2f069b32ad079865"]);
        level thread zm_platinum_vo::function_e250a72f(var_5fca83f);
        var_6c7ad44a = zm_vo::function_f577c17d(var_5fca83f);
        wait(var_6c7ad44a);
        break;
    default:
        break;
    }
    if (isdefined(level.klaus)) {
        level.klaus zodcompanionutility::function_34179e9a();
        origin = level.klaus.origin;
        angles = level.klaus.angles;
    } else {
        origin = var_9039575a.origin;
        angles = var_9039575a.angles;
    }
    level.var_459ddb9c = 0;
    var_55033b92 = function_4a57e36("spawner_zm_mannequin_ally_upgraded_0" + index, origin, angles, #"hash_423ce4528e7aaf1f", "upgrade_loop_" + level.var_7c745515);
    wait(0.5);
    if (isdefined(level.klaus)) {
        level.klaus clientfield::set("" + #"hash_703543ca871a0f75", 0);
    }
    util::wait_network_frame();
    var_55033b92 show();
    var_55033b92 clientfield::set("" + #"hash_703543ca871a0f75", 1);
    if (isdefined(level.klaus)) {
        level.klaus hide();
    }
    wait(0.5);
    var_55033b92 function_a7642f50(#"hash_423ce4528e7aaf1f", "upgrade_outro_" + level.var_7c745515);
    var_55033b92 namespace_ca8676a3::function_94fde0c0();
    /#
        iprintlnbold("<unknown string>");
    #/
    level flag::clear(#"hash_3619125fe3a40ead");
    if (isdefined(level.klaus.leader)) {
        level thread namespace_6fb22263::function_a8333f44(30);
    } else {
        namespace_6fb22263::function_c94afb95();
        level thread namespace_6fb22263::function_ec916ba1();
        if (isdefined(level.klaus)) {
            level.klaus.owner = undefined;
        }
    }
    level flag::clear(#"hash_66eb1b5632f46da8");
    if (index === 3) {
        level flag::set(#"hash_6ee0214c0ffd7fd5");
    }
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 0, eflags: 0x2 linked
// Checksum 0x42d6ab7a, Offset: 0x5550
// Size: 0x414
function function_e243a545() {
    level endon(#"end_game");
    if (isdefined(level.klaus)) {
        level.klaus thread scene::play(#"hash_423ce4528e7aaf1f", "upgrade_loop_" + level.var_7c745515, level.klaus);
    }
    var_9039575a = getent("klaus_upgrade_station", "targetname");
    var_9039575a thread scene::play(#"hash_a4fed5bd30bd26b", "play1", var_9039575a);
    wait(5);
    var_9039575a scene::stop(#"hash_a4fed5bd30bd26b");
    if (isdefined(level.klaus)) {
        level.klaus animation::stop();
        if (!isdefined(level.klaus.var_553d761a)) {
            level.klaus.var_553d761a = 1;
        }
        switch (level.klaus.var_553d761a) {
        case 1:
            level.klaus setmodel(#"hash_47a239d0808fb616");
            level.klaus clientfield::increment("" + #"hash_3d52751d686c4865", 1);
            level.klaus.var_553d761a = 2;
            break;
        case 2:
            level.klaus setmodel(#"hash_504743f1aedb0f41");
            level.klaus clientfield::increment("" + #"hash_3d52751d686c4865", 1);
            level.klaus.var_553d761a = 3;
            break;
        case 3:
            level.klaus setmodel(#"hash_7735285cc1c952f5");
            level.klaus clientfield::increment("" + #"hash_3d52751d686c4865", 1);
            level.klaus.var_553d761a = 4;
            break;
        case 4:
            level.klaus setmodel(#"hash_40911bda0b473087");
            level.klaus clientfield::increment("" + #"hash_3d52751d686c4865", 1);
            level.klaus.var_553d761a = 1;
            break;
        default:
            break;
        }
        level.klaus zodcompanionutility::function_633d6f7b();
        level.klaus scene::play(#"hash_423ce4528e7aaf1f", "upgrade_outro_" + level.var_7c745515, level.klaus);
    }
    level flag::clear(#"hash_66eb1b5632f46da8");
}

/#

    // Namespace namespace_7a518726/namespace_7a518726
    // Params 0, eflags: 0x0
    // Checksum 0xce9e314a, Offset: 0x5970
    // Size: 0xec
    function function_cd7a3de4() {
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        zm_devgui::add_custom_devgui_callback(&cmd);
    }

    // Namespace namespace_7a518726/namespace_7a518726
    // Params 1, eflags: 0x0
    // Checksum 0x2fa340dd, Offset: 0x5a68
    // Size: 0x60a
    function cmd(cmd) {
        switch (cmd) {
        case #"hash_52e9bd6ba5bfab34":
            level flag::set(#"hash_75f07aed08b6bb5e");
            level.var_3d8c252b = 3;
            level flag::set(#"hash_4c498c40805ec092");
            level flag::set(#"hash_11d54d2ecf05cb2");
            level flag::set(#"hash_2bd741137c515a48");
            break;
        case #"hash_4f9ea1b4a8a09817":
            level flag::set(#"hash_2fea433a677a8531");
            break;
        case #"hash_2a439dc6ff821f8c":
            level flag::set(#"hash_73b91a4076d8a5fd");
            playsoundatposition(#"hash_77b21ab51a834aa5", (0, 0, 0));
            break;
        case #"hash_7f4f450f45fab726":
            spawn_loc = level.klaus.origin;
            spawn_angles = level.klaus.angles;
            var_55033b92 = spawnactor("<unknown string>", spawn_loc, spawn_angles);
            var_55033b92 namespace_6fb22263::function_73367fa9();
            var_55033b92 clientfield::set("<unknown string>" + #"hash_703543ca871a0f75", 1);
            wait(1);
            var_55033b92 namespace_ca8676a3::function_94fde0c0();
            var_55033b92 function_99f76fa4(level.var_88672174, 0, 0);
            break;
        case #"hash_7fa0510f463f22b2":
            spawn_loc = level.klaus.origin;
            spawn_angles = level.klaus.angles;
            var_55033b92 = spawnactor("<unknown string>", spawn_loc, spawn_angles);
            var_55033b92 namespace_6fb22263::function_73367fa9();
            var_55033b92 clientfield::set("<unknown string>" + #"hash_703543ca871a0f75", 1);
            wait(1);
            var_55033b92 namespace_ca8676a3::function_94fde0c0();
            var_55033b92 function_99f76fa4(level.var_5b8c6c9b, 0, 0);
            break;
        case #"hash_2a5a3d4fd5a02048":
            spawn_loc = level.klaus.origin;
            spawn_angles = level.klaus.angles;
            var_55033b92 = spawnactor("<unknown string>", spawn_loc, spawn_angles);
            var_55033b92 namespace_6fb22263::function_73367fa9();
            var_55033b92 clientfield::set("<unknown string>" + #"hash_703543ca871a0f75", 1);
            wait(1);
            var_55033b92 namespace_ca8676a3::function_94fde0c0();
            var_55033b92 function_99f76fa4(level.var_f1662fe9, 0, 0);
            break;
        case #"hash_1c3b84bbe061a573":
            spawn_loc = level.klaus.origin;
            spawn_angles = level.klaus.angles;
            var_55033b92 = spawnactor("<unknown string>", spawn_loc, spawn_angles);
            var_55033b92 namespace_6fb22263::function_73367fa9();
            var_55033b92 clientfield::set("<unknown string>" + #"hash_703543ca871a0f75", 1);
            wait(1);
            var_55033b92 namespace_ca8676a3::function_94fde0c0();
            var_55033b92 function_99f76fa4(0, 0, 0);
            break;
        case #"hash_593067b88bb64850":
            var_1b22e364 = struct::get("<unknown string>", "<unknown string>");
            var_44ff9e2 = getentarray(var_1b22e364.target, "<unknown string>");
            foreach (var_67fbb89d in var_44ff9e2) {
                var_67fbb89d thread function_ed04cf0f(1);
            }
            break;
        }
    }

#/
