#using script_37f9ff47f340fbe8;
#using scripts\core_common\array_shared;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\math_shared;
#using scripts\core_common\serverfield_shared;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;
#using scripts\core_common\values_shared;
#using scripts\cp_common\util;

#namespace parabolic_mic;

// Namespace parabolic_mic/parabolic_mic
// Params 0, eflags: 0x5
// Checksum 0x74598984, Offset: 0x1c0
// Size: 0x34
function private autoexec __init__system__() {
    system::register("parabolic_mic", &preinit, undefined, undefined, undefined);
}

// Namespace parabolic_mic/parabolic_mic
// Params 0, eflags: 0x4
// Checksum 0x9c27dbf0, Offset: 0x200
// Size: 0x16c
function private preinit() {
    callback::on_weapon_change(&on_weapon_change);
    var_1e935eba = array("scriptmover");
    foreach (str_type in var_1e935eba) {
        clientfield::register(str_type, "parabolic_mic_volume_scale", 1, 5, "float");
    }
    clientfield::register_clientuimodel("hudItems.ParabolicMic.active", 1, 1, "int");
    level.parabolic_mic = spawnstruct();
    level.parabolic_mic.weapon = getweapon("eq_parabolic_mic");
    /#
        function_5ac4dc99("<dev string:x38>", 0);
    #/
}

// Namespace parabolic_mic/parabolic_mic
// Params 1, eflags: 0x0
// Checksum 0xaf01a7e4, Offset: 0x378
// Size: 0x33a
function init(var_e00524ce) {
    level.parabolic_mic.trace = undefined;
    thread function_9907e99f();
    level.parabolic_mic.var_65cb3756 = var_e00524ce;
    level.parabolic_mic.sounds = [];
    level.parabolic_mic.var_e831cc6f = [];
    level.parabolic_mic.volumes = getentarray("listening_device_volume", "targetname");
    foreach (volume in level.parabolic_mic.volumes) {
        volume.is_volume = 1;
        volume.var_62a70840 = 0;
    }
    a_structs = struct::get_array("listening_device_targets", "targetname");
    a_ents = getentarray("listening_device_targets", "targetname");
    level.parabolic_mic.points = arraycombine(a_structs, a_ents);
    foreach (point in level.parabolic_mic.points) {
        point.var_62a70840 = 0;
    }
    level.parabolic_mic.ai = [];
    a_ai = getaiarray();
    foreach (ai in a_ai) {
        if (isalive(ai) && isdefined(ai.var_5b67d687)) {
            level.parabolic_mic.ai[level.parabolic_mic.ai.size] = ai;
            ai.var_62a70840 = 0;
        }
    }
    level.parabolic_mic.funcs = [];
}

// Namespace parabolic_mic/parabolic_mic
// Params 0, eflags: 0x0
// Checksum 0xfb5a0773, Offset: 0x6c0
// Size: 0x2c
function function_765c50e5() {
    self giveweapon(level.parabolic_mic.weapon);
}

// Namespace parabolic_mic/parabolic_mic
// Params 0, eflags: 0x0
// Checksum 0xfc01e19d, Offset: 0x6f8
// Size: 0x3c
function function_f0404f70() {
    self takeweapon(level.parabolic_mic.weapon);
    cleanup();
}

// Namespace parabolic_mic/parabolic_mic
// Params 0, eflags: 0x0
// Checksum 0xdff1cfc, Offset: 0x740
// Size: 0x96
function cleanup() {
    level notify(#"hash_20a07e7129a41bb6");
    if (isdefined(level.parabolic_mic.static)) {
        level.parabolic_mic.static delete();
    }
    if (isdefined(level.parabolic_mic.volumes)) {
        array::delete_all(level.parabolic_mic.volumes);
    }
    level.parabolic_mic = undefined;
}

// Namespace parabolic_mic/parabolic_mic
// Params 1, eflags: 0x4
// Checksum 0xb9a7176a, Offset: 0x7e0
// Size: 0x64
function private on_weapon_change(params) {
    if (params.weapon === level.parabolic_mic.weapon) {
        self thread function_8ca53cc6(params.weapon);
        return;
    }
    self thread function_af74deb4();
}

// Namespace parabolic_mic/parabolic_mic
// Params 0, eflags: 0x4
// Checksum 0x12abcab, Offset: 0x850
// Size: 0x74
function private function_af74deb4() {
    self notify(#"hash_68632710a76257a1");
    self clientfield::set_player_uimodel("hudItems.ParabolicMic.active", 0);
    self function_27eb20be();
    if (isdefined(level.parabolic_mic)) {
        level.parabolic_mic function_5cc7f362();
    }
}

// Namespace parabolic_mic/parabolic_mic
// Params 1, eflags: 0x4
// Checksum 0xe2e7e0f3, Offset: 0x8d0
// Size: 0x1a6
function private function_8ca53cc6(*weapon) {
    self endon(#"death", #"hash_68632710a76257a1");
    level endon(#"hash_20a07e7129a41bb6");
    /#
        function_5ac4dc99("<dev string:x4f>", 0);
    #/
    var_a30db60b = 0;
    self function_e5c57f49();
    while (true) {
        waitframe(1);
        if (self playerads() > 0.75) {
            self clientfield::set_player_uimodel("hudItems.ParabolicMic.active", 1);
            self trace();
            self function_c5979d91();
            if (!var_a30db60b) {
                self val::set("parabolic_mic", "show_hud", 0);
            }
            var_a30db60b = 1;
            continue;
        }
        if (var_a30db60b) {
            self clientfield::set_player_uimodel("hudItems.ParabolicMic.active", 0);
            self function_5cc7f362();
            self val::reset("parabolic_mic", "show_hud");
            var_a30db60b = 0;
        }
    }
}

// Namespace parabolic_mic/parabolic_mic
// Params 0, eflags: 0x4
// Checksum 0x345d2898, Offset: 0xa80
// Size: 0xe4
function private function_9907e99f() {
    if (isdefined(level.parabolic_mic.static)) {
        level.parabolic_mic.static delete();
    }
    ent = util::spawn_model("tag_origin", (0, 0, 0));
    ent.var_e8a029b7 = 0.1;
    level.parabolic_mic.static = ent;
    util::wait_network_frame(1);
    level.parabolic_mic.static clientfield::set("parabolic_mic_volume_scale", level.parabolic_mic.static.var_e8a029b7);
}

// Namespace parabolic_mic/parabolic_mic
// Params 0, eflags: 0x4
// Checksum 0xc47a5563, Offset: 0xb70
// Size: 0x114
function private function_e5c57f49() {
    if (!level.parabolic_mic.static islinkedto(self)) {
        level.parabolic_mic.static dontinterpolate();
        level.parabolic_mic.static.origin = self geteye();
        level.parabolic_mic.static linkto(self);
    }
    level.parabolic_mic.static playloopsound(level.parabolic_mic.var_65cb3756);
    level.parabolic_mic.static clientfield::set("parabolic_mic_volume_scale", level.parabolic_mic.static.var_e8a029b7);
}

// Namespace parabolic_mic/parabolic_mic
// Params 0, eflags: 0x4
// Checksum 0x2433e146, Offset: 0xc90
// Size: 0x3c
function private function_27eb20be() {
    if (isdefined(level.parabolic_mic.static)) {
        level.parabolic_mic.static stoploopsound();
    }
}

// Namespace parabolic_mic/parabolic_mic
// Params 2, eflags: 0x0
// Checksum 0x6360d42d, Offset: 0xcd8
// Size: 0x54
function function_ce0dfadd(name, func) {
    if (!isdefined(level.parabolic_mic.funcs)) {
        level.parabolic_mic.funcs = [];
    }
    level.parabolic_mic.funcs[name] = func;
}

// Namespace parabolic_mic/parabolic_mic
// Params 1, eflags: 0x0
// Checksum 0xe86d5db2, Offset: 0xd38
// Size: 0x5c
function function_afd5613e(name) {
    if (isdefined(level.parabolic_mic.funcs) && isdefined(level.parabolic_mic.funcs[name])) {
        level.parabolic_mic.funcs[name] = undefined;
    }
}

// Namespace parabolic_mic/parabolic_mic
// Params 0, eflags: 0x4
// Checksum 0xd2631a1e, Offset: 0xda0
// Size: 0xb50
function private trace() {
    level endon(#"hash_20a07e7129a41bb6");
    min_dist = 300;
    min_dist_squared = min_dist * min_dist;
    max_dist = 4096;
    var_11ecc9fe = max_dist * max_dist;
    eye = self geteye();
    fwd = anglestoforward(self getplayerangles());
    var_ed46931c = 0.9986;
    level.parabolic_mic.var_e831cc6f = [];
    level.parabolic_mic.trace = beamtrace(eye + fwd * min_dist, eye + fwd * max_dist, 1, self, 1, 1);
    /#
        if (getdvarint(#"hash_1a81e6400daa0c60")) {
            print3d(level.parabolic_mic.trace[#"position"], "<dev string:x66>" + level.parabolic_mic.trace[#"position"][0] + "<dev string:x6a>" + level.parabolic_mic.trace[#"position"][1] + "<dev string:x6a>" + level.parabolic_mic.trace[#"position"][2], (1, 1, 1), 1, 0.35);
            sphere(level.parabolic_mic.trace[#"position"]);
        }
    #/
    arrayremovevalue(level.parabolic_mic.volumes, undefined);
    foreach (volume in level.parabolic_mic.volumes) {
        if (!isdefined(volume)) {
            break;
        }
        if (is_true(volume.hasplayed)) {
            continue;
        }
        if (istouching(level.parabolic_mic.trace[#"position"], volume)) {
            /#
                if (getdvarint(#"hash_1a81e6400daa0c60")) {
                    print3d(level.parabolic_mic.trace[#"position"] + (0, 0, 6), "<dev string:x70>" + volume.script_noteworthy + "<dev string:x78>", (1, 1, 1), 1, 0.35, 2);
                }
            #/
            level.parabolic_mic.var_55e793a5 = level.parabolic_mic.trace[#"position"];
            level.parabolic_mic.var_e831cc6f[level.parabolic_mic.var_e831cc6f.size] = volume;
            self function_4383ffd(volume);
            break;
        }
        volume.var_62a70840 -= 5;
        volume.var_62a70840 = int(max(0, volume.var_62a70840));
        /#
            if (getdvarint(#"hash_1a81e6400daa0c60")) {
                print3d(volume.origin, volume.var_62a70840, (1, 0, 1), 1, 1, 2);
            }
        #/
    }
    foreach (item in level.parabolic_mic.points) {
        if (is_true(item.hasplayed)) {
            continue;
        }
        delta = item.origin - eye;
        dir = vectornormalize(delta);
        vector_dot = vectordot(dir, fwd);
        dist = distance2dsquared(item.origin, eye);
        if (vector_dot > var_ed46931c && dist < var_11ecc9fe) {
            if (sighttracepassed(eye + fwd * min_dist, item.origin, 1, self, item)) {
                /#
                    if (getdvarint(#"hash_1a81e6400daa0c60")) {
                        print3d(item.origin + (0, 0, 4), "<dev string:x70>" + item.script_noteworthy + "<dev string:x83>", (1, 1, 1), 1, 0.35, 2);
                    }
                #/
                level.parabolic_mic.var_e831cc6f[level.parabolic_mic.var_e831cc6f.size] = item;
                self function_4383ffd(item);
            } else {
                item.var_62a70840 -= 5;
                item.var_62a70840 = int(max(0, item.var_62a70840));
            }
            continue;
        }
        item.var_62a70840 -= 5;
        item.var_62a70840 = int(max(0, item.var_62a70840));
    }
    function_1eaaceab(level.parabolic_mic.ai);
    arrayremovevalue(level.parabolic_mic.ai, undefined);
    foreach (item in level.parabolic_mic.ai) {
        offset = item.origin + (0, 0, 64);
        delta = offset - eye;
        dir = vectornormalize(delta);
        vector_dot = vectordot(dir, fwd);
        dist = distance2dsquared(offset, eye);
        if (vector_dot > var_ed46931c && dist < var_11ecc9fe) {
            if (sighttracepassed(eye + fwd * min_dist, item.origin, 1, self, item)) {
                /#
                    if (getdvarint(#"hash_1a81e6400daa0c60")) {
                        print3d(offset + (0, 0, 26), "<dev string:x70>" + item.script_noteworthy + "<dev string:x8d>", (1, 1, 1), 1, 0.35, 2);
                    }
                #/
                level.parabolic_mic.var_e831cc6f[level.parabolic_mic.var_e831cc6f.size] = item;
                self function_4383ffd(item);
            } else {
                item.var_62a70840 -= 5;
                item.var_62a70840 = int(max(0, item.var_62a70840));
                /#
                    if (getdvarint(#"hash_1a81e6400daa0c60")) {
                        print3d(item.origin, item.var_62a70840, (1, 0, 1), 1, 1, 2);
                    }
                #/
            }
            continue;
        }
        item.var_62a70840 -= 5;
        item.var_62a70840 = int(max(0, item.var_62a70840));
        /#
            if (getdvarint(#"hash_1a81e6400daa0c60")) {
                print3d(item.origin, item.var_62a70840, (1, 0, 1), 1, 1, 2);
            }
        #/
    }
}

// Namespace parabolic_mic/parabolic_mic
// Params 0, eflags: 0x4
// Checksum 0xf61d5bef, Offset: 0x18f8
// Size: 0x6b0
function private function_c5979d91() {
    level endon(#"hash_20a07e7129a41bb6");
    if (level.parabolic_mic.var_e831cc6f.size > 0) {
        level.parabolic_mic.static.var_e8a029b7 -= 0.1;
    } else {
        level.parabolic_mic.static.var_e8a029b7 += 0.1;
    }
    level.parabolic_mic.static.var_e8a029b7 = math::clamp(level.parabolic_mic.static.var_e8a029b7, 0, 1);
    level.parabolic_mic.static clientfield::set("parabolic_mic_volume_scale", level.parabolic_mic.static.var_e8a029b7);
    eye = self geteye();
    fwd = anglestoforward(self getplayerangles());
    /#
        if (getdvarint(#"hash_1a81e6400daa0c60")) {
            iprintln("<dev string:x94>" + level.parabolic_mic.static.var_e8a029b7);
        }
    #/
    arrayremovevalue(level.parabolic_mic.sounds, undefined);
    foreach (ent in level.parabolic_mic.sounds) {
        var_21397691 = 0;
        foreach (var_1d5586e8 in level.parabolic_mic.var_e831cc6f) {
            if (ent.traceent == var_1d5586e8) {
                var_21397691 = 1;
                break;
            }
        }
        delta = ent.traceent.origin - eye;
        if (isai(ent.traceent)) {
            delta = ent.traceent.origin + (0, 0, 64) - eye;
        }
        if (is_true(ent.traceent.is_volume)) {
            delta = level.parabolic_mic.var_55e793a5 - eye;
        }
        dir = vectornormalize(delta);
        vector_dot = vectordot(dir, fwd);
        if (is_true(ent.traceent.is_volume) && isdefined(level.parabolic_mic.trace)) {
            range = 0.00139999;
            ent.var_e8a029b7 = 1 - (1 - vector_dot) / range;
            ent.var_e8a029b7 = math::clamp(ent.var_e8a029b7, 0, 1);
            ent clientfield::set("parabolic_mic_volume_scale", ent.var_e8a029b7);
            /#
                if (getdvarint(#"hash_1a81e6400daa0c60")) {
                    if (isdefined(level.parabolic_mic.var_55e793a5)) {
                        print3d(level.parabolic_mic.var_55e793a5 + (0, 0, 18), ent.traceent.script_noteworthy + "<dev string:xa9>" + ent.var_e8a029b7, (1, 1, 0), 1, 0.35, 2);
                    }
                }
            #/
            continue;
        }
        range = 0.00139999;
        ent.var_e8a029b7 = 1 - (1 - vector_dot) / range;
        ent.var_e8a029b7 = math::clamp(ent.var_e8a029b7, 0, 1);
        ent clientfield::set("parabolic_mic_volume_scale", ent.var_e8a029b7);
        /#
            if (getdvarint(#"hash_1a81e6400daa0c60")) {
                print3d(ent.traceent.origin + (0, 0, 18), ent.traceent.script_noteworthy + "<dev string:xa9>" + ent.var_e8a029b7, (1, 1, 0), 1, 0.35, 2);
            }
        #/
    }
}

// Namespace parabolic_mic/parabolic_mic
// Params 0, eflags: 0x4
// Checksum 0xc1455144, Offset: 0x1fb0
// Size: 0x268
function private function_5cc7f362() {
    level endon(#"hash_20a07e7129a41bb6");
    if (isdefined(level.parabolic_mic.static)) {
        level.parabolic_mic.static.var_e8a029b7 = 0.1;
        level.parabolic_mic.static.var_e8a029b7 = math::clamp(level.parabolic_mic.static.var_e8a029b7, 0, 1);
        level.parabolic_mic.static clientfield::set("parabolic_mic_volume_scale", level.parabolic_mic.static.var_e8a029b7);
    }
    if (isarray(level.parabolic_mic.sounds)) {
        arrayremovevalue(level.parabolic_mic.sounds, undefined);
        foreach (ent in level.parabolic_mic.sounds) {
            ent.var_e8a029b7 = 0;
            ent clientfield::set("parabolic_mic_volume_scale", ent.var_e8a029b7);
            /#
                if (getdvarint(#"hash_1a81e6400daa0c60")) {
                    print3d(ent.traceent.origin + (0, 0, 18), ent.traceent.script_noteworthy + "<dev string:xa9>" + ent.var_e8a029b7, (1, 1, 0), 1, 1, 2);
                }
            #/
        }
    }
}

// Namespace parabolic_mic/parabolic_mic
// Params 0, eflags: 0x0
// Checksum 0xd64fadcd, Offset: 0x2220
// Size: 0x288
function function_9a3bbf32() {
    level endon(#"hash_20a07e7129a41bb6");
    var_a30db60b = 0;
    foreach (item in level.parabolic_mic.points) {
        item.isplaying = undefined;
        item.hasplayed = undefined;
    }
    max_dist = function_8a7dffe8(level.parabolic_mic.max_dist, 4096);
    while (true) {
        wait 0.1;
        level.parabolic_mic.var_e831cc6f = [];
        foreach (item in level.parabolic_mic.points) {
            eye = level.players[0] geteye();
            distance = distance(item.origin, eye);
            if (distance < max_dist) {
                level.parabolic_mic.var_e831cc6f[level.parabolic_mic.var_e831cc6f.size] = item;
                self function_4383ffd(item);
                continue;
            }
            item.var_62a70840 -= 5;
            item.var_62a70840 = int(max(0, item.var_62a70840));
        }
        self function_3ed9a402();
    }
}

// Namespace parabolic_mic/parabolic_mic
// Params 0, eflags: 0x0
// Checksum 0xe26b97b1, Offset: 0x24b0
// Size: 0x4c
function function_f4d9b06e() {
    level notify(#"hash_20a07e7129a41bb6");
    wait 0.25;
    self function_5cc7f362();
    waitframe(1);
    cleanup();
}

// Namespace parabolic_mic/parabolic_mic
// Params 0, eflags: 0x4
// Checksum 0x59a2796c, Offset: 0x2508
// Size: 0x538
function private function_3ed9a402() {
    level endon(#"hash_20a07e7129a41bb6");
    var_ed46931c = function_8a7dffe8(level.parabolic_mic.var_ed46931c, 0.9986);
    eye = self geteye();
    fwd = anglestoforward(self getplayerangles());
    /#
        if (getdvarint(#"hash_1a81e6400daa0c60")) {
            iprintln("<dev string:x94>" + level.parabolic_mic.static.var_e8a029b7);
        }
    #/
    arrayremovevalue(level.parabolic_mic.sounds, undefined);
    foreach (ent in level.parabolic_mic.sounds) {
        var_21397691 = 0;
        foreach (var_1d5586e8 in level.parabolic_mic.var_e831cc6f) {
            if (ent.traceent == var_1d5586e8) {
                var_21397691 = 1;
                break;
            }
        }
        delta = ent.traceent.origin - eye;
        if (isai(ent.traceent)) {
            delta = ent.traceent.origin + (0, 0, 64) - eye;
        }
        if (is_true(ent.traceent.is_volume)) {
            delta = level.parabolic_mic.var_55e793a5 - eye;
        }
        dir = vectornormalize(delta);
        vectordot = vectordot(dir, fwd);
        if (is_true(ent.traceent.is_volume) && isdefined(level.parabolic_mic.trace)) {
            ent.var_e8a029b7 = ent function_57f5f925(var_ed46931c, vectordot);
            ent function_51ee7f9b(ent.var_e8a029b7, "parabolic_mic_volume_scale");
            /#
                if (getdvarint(#"hash_1a81e6400daa0c60")) {
                    if (isdefined(level.parabolic_mic.var_55e793a5)) {
                        print3d(level.parabolic_mic.var_55e793a5 + (0, 0, 18), ent.traceent.script_noteworthy + "<dev string:xa9>" + ent.var_e8a029b7, (1, 1, 0), 1, 0.35, 2);
                    }
                }
            #/
            continue;
        }
        ent.var_e8a029b7 = ent function_57f5f925(var_ed46931c, vectordot);
        ent function_51ee7f9b(ent.var_e8a029b7, "parabolic_mic_volume_scale");
        /#
            if (getdvarint(#"hash_1a81e6400daa0c60")) {
                print3d(ent.traceent.origin + (0, 0, 18), ent.traceent.script_noteworthy + "<dev string:xa9>" + ent.var_e8a029b7, (1, 1, 0), 1, 0.35, 2);
            }
        #/
    }
}

// Namespace parabolic_mic/parabolic_mic
// Params 1, eflags: 0x4
// Checksum 0xbd374ea0, Offset: 0x2a48
// Size: 0xe4
function private function_66b4e486(vectordot) {
    if (isdefined(level.parabolic_mic.var_7b9d607e)) {
        var_ed46931c = level.parabolic_mic.var_7b9d607e;
    } else {
        var_ed46931c = function_8a7dffe8(level.parabolic_mic.var_ed46931c, 0.9986);
    }
    level.parabolic_mic.static.var_e8a029b7 = self function_57f5f925(var_ed46931c, vectordot, 1);
    level.parabolic_mic.static function_51ee7f9b(level.parabolic_mic.static.var_e8a029b7, "parabolic_mic_volume_scale");
}

// Namespace parabolic_mic/parabolic_mic
// Params 3, eflags: 0x4
// Checksum 0xe912d75, Offset: 0x2b38
// Size: 0x2fe
function private function_57f5f925(var_ed46931c, vectordot, var_a47e58b2) {
    range = 1 - var_ed46931c;
    min_dist = function_8a7dffe8(level.parabolic_mic.min_dist, 300);
    max_dist = function_8a7dffe8(level.parabolic_mic.max_dist, 4096);
    eye = level.players[0] geteye();
    distance = distance(self.traceent.origin, eye);
    if (isdefined(var_a47e58b2)) {
        var_e8a029b7 = (1 - vectordot) / range;
        var_e8a029b7 = math::clamp(var_e8a029b7, 0, 1);
        if (var_e8a029b7 < 1) {
            ratio = 1 - (distance - min_dist) / (max_dist - min_dist);
            var_e8a029b7 = ratio * var_e8a029b7;
        } else if (var_e8a029b7 == 0) {
            ratio = 1 - (distance - min_dist) / (max_dist - min_dist);
            var_e8a029b7 = ratio;
        }
    } else {
        if (distance >= max_dist) {
            return 0;
        }
        var_3eb55f86 = 0.75;
        if (level.players[0] playerads() > 0.75) {
            var_3eb55f86 = 1;
        }
        var_9e29ef18 = 1;
        if (isdefined(level.var_731c10af.var_42659717)) {
            if (level.var_731c10af.var_42659717 == 1) {
                var_9e29ef18 = 0.5;
            } else if (level.var_731c10af.var_42659717 == 2) {
                var_9e29ef18 = 0.75;
            }
        }
        var_e8a029b7 = 1 - (1 - vectordot) / range;
        var_e8a029b7 = math::clamp(var_e8a029b7, 0, 1);
        ratio = (1 + distance - min_dist) / (max_dist - min_dist);
        var_4d090353 = 1 - ratio;
        var_e8a029b7 = var_4d090353 * var_e8a029b7 * var_3eb55f86 * var_9e29ef18;
    }
    return var_e8a029b7;
}

// Namespace parabolic_mic/parabolic_mic
// Params 2, eflags: 0x4
// Checksum 0x4c56ec1d, Offset: 0x2e40
// Size: 0x54
function private function_51ee7f9b(var_f6287736, var_b62cd9d4) {
    var_f6287736 = math::clamp(var_f6287736, 0, 1);
    self clientfield::set(var_b62cd9d4, var_f6287736);
}

// Namespace parabolic_mic/parabolic_mic
// Params 5, eflags: 0x0
// Checksum 0x1fefe35f, Offset: 0x2ea0
// Size: 0x11c
function function_18b589f0(alias, var_21290857 = 0, var_7b80750a, endnotify, var_43a9c16) {
    /#
        if (soundislooping(alias) === 1 && !isdefined(endnotify)) {
            assertmsg("<dev string:xb8>" + alias + "<dev string:xe9>");
        }
    #/
    self.queue[self.queue.size] = [alias, float(soundgetplaybacktime(alias)) / 1000, var_21290857, var_7b80750a, endnotify, var_43a9c16];
}

// Namespace parabolic_mic/parabolic_mic
// Params 1, eflags: 0x4
// Checksum 0x61c9612d, Offset: 0x2fc8
// Size: 0x10c
function private function_4383ffd(ent) {
    if (isdefined(ent.hasplayed)) {
        return;
    }
    ent.var_62a70840 += 5;
    ent.var_62a70840 = int(min(100, ent.var_62a70840));
    /#
        if (getdvarint(#"hash_1a81e6400daa0c60")) {
            print3d(ent.origin, ent.var_62a70840, (1, 0, 1), 1, 1, 2);
        }
    #/
    if (isdefined(ent.isplaying)) {
        return;
    }
    if (ent.script_parameters === "off") {
        /#
        #/
        return;
    }
    self thread function_bcd711ec(ent);
}

// Namespace parabolic_mic/parabolic_mic
// Params 1, eflags: 0x4
// Checksum 0x9d57ec79, Offset: 0x30e0
// Size: 0x13a
function private function_bcd711ec(ent) {
    ent endon(#"entitydeleted");
    ent endon(#"death");
    soundent = util::spawn_model("tag_origin", self geteye());
    soundent linkto(self);
    soundent.var_e8a029b7 = 0;
    soundent.traceent = ent;
    soundent clientfield::set("parabolic_mic_volume_scale", soundent.var_e8a029b7);
    level.parabolic_mic.sounds[level.parabolic_mic.sounds.size] = soundent;
    ent.isplaying = 1;
    soundent play_sound();
    if (isdefined(ent)) {
        ent.isplaying = 0;
        ent.hasplayed = 1;
    }
}

// Namespace parabolic_mic/parabolic_mic
// Params 0, eflags: 0x4
// Checksum 0x7c3c5630, Offset: 0x3228
// Size: 0x134
function private play_sound() {
    var_ebe9a2df = undefined;
    if (isdefined(self.traceent.var_5b67d687)) {
        var_ebe9a2df = self.traceent.var_5b67d687;
    } else if (isdefined(self.traceent.script_noteworthy)) {
        var_ebe9a2df = self.traceent.script_noteworthy;
    }
    level endon(#"hash_5b32caefb30f1d4f");
    self thread function_85eb609f();
    if (isdefined(var_ebe9a2df)) {
        if (isdefined(level.parabolic_mic.funcs[var_ebe9a2df])) {
            data = [[ level.parabolic_mic.funcs[var_ebe9a2df] ]]();
            if (isdefined(data) && isdefined(data.queue) && data.queue.size > 0) {
                self function_4384e133(data);
            }
        }
    }
    self delete();
}

// Namespace parabolic_mic/parabolic_mic
// Params 1, eflags: 0x4
// Checksum 0xde7255b7, Offset: 0x3368
// Size: 0x2c
function private function_4384e133(data) {
    self util::function_stack(&function_622d474a, data);
}

// Namespace parabolic_mic/parabolic_mic
// Params 1, eflags: 0x4
// Checksum 0xecb2467b, Offset: 0x33a0
// Size: 0x24a
function private function_622d474a(data) {
    function_9716db11(data);
    level endon(#"hash_5b32caefb30f1d4f");
    data endon(#"hash_7893b918a25583b7");
    foreach (item in data.queue) {
        alias = item[0];
        var_d6819a9f = item[1];
        delaytime = item[2];
        var_7b80750a = item[3];
        endnotify = item[4];
        var_43a9c16 = item[5];
        if (isdefined(var_43a9c16)) {
            level waittill(var_43a9c16);
        }
        if (delaytime !== 0) {
            wait delaytime;
        }
        if (isdefined(var_7b80750a)) {
            level notify(var_7b80750a);
        }
        if (!soundexists(alias)) {
            /#
                iprintlnbold("<dev string:x11c>" + function_9e72a96(alias) + "<dev string:x135>");
            #/
            wait 3;
            if (isdefined(endnotify)) {
                level notify(endnotify);
            }
            continue;
        }
        if (soundislooping(alias) === 1) {
            self function_32c867ae(alias, endnotify);
            continue;
        }
        self playsound(alias);
        if (var_d6819a9f > 0) {
            wait var_d6819a9f;
        }
        if (isdefined(endnotify)) {
            level notify(endnotify);
        }
    }
}

// Namespace parabolic_mic/parabolic_mic
// Params 2, eflags: 0x4
// Checksum 0x25c0269c, Offset: 0x35f8
// Size: 0x5a
function private function_32c867ae(alias, endnotify) {
    if (isdefined(alias)) {
        self playloopsound(alias);
        level waittill(endnotify);
        self stoploopsound();
        waitframe(1);
    }
}

// Namespace parabolic_mic/parabolic_mic
// Params 1, eflags: 0x4
// Checksum 0x50176a07, Offset: 0x3660
// Size: 0xb8
function private function_9716db11(data) {
    if (isdefined(data.interruptable)) {
        level notify(#"hash_5b32caefb30f1d4f");
        foreach (item in data.queue) {
            self stopsounds();
        }
    }
}

// Namespace parabolic_mic/parabolic_mic
// Params 0, eflags: 0x4
// Checksum 0x2f53c5a3, Offset: 0x3720
// Size: 0x44
function private function_85eb609f() {
    self endon(#"death");
    level waittill(#"hash_5b32caefb30f1d4f");
    self delete();
}

// Namespace parabolic_mic/parabolic_mic
// Params 2, eflags: 0x4
// Checksum 0xe370b8f9, Offset: 0x3770
// Size: 0x3c
function private function_8a7dffe8(var_a8cdbaa5, var_53bfdf6b) {
    if (isdefined(var_a8cdbaa5)) {
        value = var_a8cdbaa5;
    } else {
        value = var_53bfdf6b;
    }
    return value;
}

