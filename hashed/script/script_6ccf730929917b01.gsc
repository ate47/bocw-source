// Atian COD Tools GSC CW decompiler test
#using script_35ae72be7b4fec10;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace namespace_93648050;

// Namespace namespace_93648050/namespace_93648050
// Params 0, eflags: 0x5
// Checksum 0x6808cedb, Offset: 0x140
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_7ccb313a097bf40", &preload, undefined, undefined, undefined);
}

// Namespace namespace_93648050/namespace_93648050
// Params 0, eflags: 0x2 linked
// Checksum 0x9ef3db1c, Offset: 0x188
// Size: 0xc4
function preload() {
    level.var_93648050 = {};
    level.var_93648050.ents = [];
    level.var_93648050.triggers = [];
    level.var_93648050.points = [];
    level.var_93648050.objects = [];
    level.var_93648050.trace_dist = 0;
    callback::on_spawned(&on_player_spawned);
    /#
        util::init_dvar("<unknown string>", 0, &function_5120dfdb);
    #/
}

// Namespace namespace_93648050/namespace_93648050
// Params 0, eflags: 0x2 linked
// Checksum 0xb90fbe45, Offset: 0x258
// Size: 0x250
function on_player_spawned() {
    var_7edfa20f = struct::get_array("obj_desc_rect", "variantname");
    circles = struct::get_array("obj_desc_circle", "variantname");
    foreach (index, rect in var_7edfa20f) {
        var_206eca0c = undefined;
        if (isdefined(rect.target)) {
            var_206eca0c = getent(rect.target, "targetname");
        }
        function_23e7a30a("rect" + index, rect.origin, rect.angles, rect.script_width, rect.script_height, hash(rect.script_string), rect.script_maxdist, var_206eca0c);
    }
    foreach (index, circle in circles) {
        var_206eca0c = undefined;
        if (isdefined(circle.target)) {
            var_206eca0c = getent(circle.target, "targetname");
        }
        function_39142278("circle" + index, circle.origin, circle.angles, circle.script_radius, hash(circle.script_string), circle.script_maxdist, var_206eca0c);
    }
}

// Namespace namespace_93648050/namespace_93648050
// Params 4, eflags: 0x0
// Checksum 0x15d5de97, Offset: 0x4b0
// Size: 0xc4
function function_ccdf77da(uid, ent, var_a9e3715c, max_dist = 500) {
    data = {};
    data.ent = ent;
    data.var_a9e3715c = var_a9e3715c;
    data.max_dist = max_dist;
    data.var_c42ac92 = &function_73b1e949;
    data.var_f03d5bb1 = &function_136c1375;
    _register(uid, data);
    ent thread function_50676d1(uid);
}

// Namespace namespace_93648050/namespace_93648050
// Params 6, eflags: 0x2 linked
// Checksum 0x6fe3d726, Offset: 0x580
// Size: 0xe4
function function_eb5d0a02(uid, trigger, var_a9e3715c, max_dist = 500, var_36247bfb, var_774d5d03 = 1) {
    data = {};
    data.trigger = trigger;
    data.var_a9e3715c = var_a9e3715c;
    data.var_36247bfb = var_36247bfb;
    data.max_dist = max_dist;
    data.var_c42ac92 = &function_fc5ed81d;
    data.var_f03d5bb1 = &function_f56da461;
    data.var_774d5d03 = var_774d5d03;
    _register(uid, data);
}

// Namespace namespace_93648050/namespace_93648050
// Params 10, eflags: 0x2 linked
// Checksum 0x1f0bd7fe, Offset: 0x670
// Size: 0x1e4
function function_23e7a30a(uid, center, angles, width, height, var_a9e3715c, max_dist = 500, var_206eca0c, var_36247bfb, var_774d5d03 = 1) {
    data = {};
    data.center = center;
    data.axis = anglestoaxis(angles);
    data.width = width / 2;
    data.height = height / 2;
    data.var_a9e3715c = var_a9e3715c;
    data.max_dist = max_dist;
    data.var_c42ac92 = &function_f08e8278;
    data.var_f03d5bb1 = &function_3c2d7742;
    data.var_36247bfb = var_36247bfb;
    data.var_774d5d03 = var_774d5d03;
    /#
        data.var_ffc04e84 = &function_1ee1bf29;
        data.angles = angles;
    #/
    if (isdefined(var_206eca0c)) {
        data.angles = angles;
        data.var_206eca0c = var_206eca0c;
        data.var_9a145184 = center - var_206eca0c.origin;
        data.var_1321588e = angleclamp180(angles - var_206eca0c.angles);
        data.var_206eca0c thread function_50676d1(uid);
    }
    _register(uid, data);
}

// Namespace namespace_93648050/namespace_93648050
// Params 9, eflags: 0x2 linked
// Checksum 0x39ee167, Offset: 0x860
// Size: 0x1b4
function function_39142278(uid, center, angles, radius, var_a9e3715c, max_dist = 500, var_206eca0c, var_36247bfb, var_774d5d03 = 1) {
    data = {};
    data.center = center;
    data.axis = anglestoaxis(angles);
    data.radius = radius;
    data.var_a9e3715c = var_a9e3715c;
    data.max_dist = max_dist;
    data.var_c42ac92 = &function_d0acce99;
    data.var_f03d5bb1 = &function_3c2d7742;
    data.var_36247bfb = var_36247bfb;
    data.var_774d5d03 = var_774d5d03;
    /#
        data.var_ffc04e84 = &function_c6b00d99;
    #/
    if (isdefined(var_206eca0c)) {
        data.angles = angles;
        data.var_206eca0c = var_206eca0c;
        data.var_9a145184 = center - var_206eca0c.origin;
        data.var_1321588e = angleclamp180(angles - var_206eca0c.angles);
        data.var_206eca0c thread function_50676d1(uid);
    }
    _register(uid, data);
}

// Namespace namespace_93648050/namespace_93648050
// Params 1, eflags: 0x2 linked
// Checksum 0x827f16ef, Offset: 0xa20
// Size: 0x13c
function remove(uid) {
    level notify("remove_object_description_" + uid);
    arrayremoveindex(level.var_93648050.ents, uid, 1);
    arrayremoveindex(level.var_93648050.triggers, uid, 1);
    arrayremoveindex(level.var_93648050.points, uid, 1);
    level.var_93648050.objects = arraycombine(level.var_93648050.ents, level.var_93648050.triggers, 1, 0);
    level.var_93648050.objects = arraycombine(level.var_93648050.objects, level.var_93648050.points, 1, 0);
    function_e8419844();
}

// Namespace namespace_93648050/namespace_93648050
// Params 0, eflags: 0x0
// Checksum 0xf1ed3898, Offset: 0xb68
// Size: 0x7e
function remove_all() {
    level notify(#"hash_54c689354421dd79");
    level.var_93648050.objects = [];
    level.var_93648050.ents = [];
    level.var_93648050.triggers = [];
    level.var_93648050.points = [];
    level.var_93648050.trace_dist = 0;
}

// Namespace namespace_93648050/namespace_93648050
// Params 2, eflags: 0x6 linked
// Checksum 0xbebd0381, Offset: 0xbf0
// Size: 0x184
function private _register(uid, data) {
    if (!isdefined(data.var_774d5d03)) {
        data.var_774d5d03 = 0;
    }
    if (isdefined(data.ent)) {
        level.var_93648050.ents[uid] = data;
    } else if (isdefined(data.trigger)) {
        level.var_93648050.triggers[uid] = data;
    } else {
        level.var_93648050.points[uid] = data;
    }
    level.var_93648050.objects = arraycombine(level.var_93648050.ents, level.var_93648050.triggers, 1, 0);
    level.var_93648050.objects = arraycombine(level.var_93648050.objects, level.var_93648050.points, 1, 0);
    function_e8419844();
    if (!level flag::get("object_descriptions_active")) {
        getplayers()[0] thread function_7d76b3ac();
    }
}

// Namespace namespace_93648050/namespace_93648050
// Params 0, eflags: 0x6 linked
// Checksum 0xda2d9e22, Offset: 0xd80
// Size: 0xce
function private function_e8419844() {
    level.var_93648050.trace_dist = 0;
    foreach (data in level.var_93648050.objects) {
        level.var_93648050.trace_dist = max(level.var_93648050.trace_dist, data.max_dist);
    }
}

// Namespace namespace_93648050/namespace_93648050
// Params 1, eflags: 0x6 linked
// Checksum 0xe710f4dc, Offset: 0xe58
// Size: 0x54
function private function_50676d1(uid) {
    level endon(#"hash_54c689354421dd79", "remove_object_description_" + uid);
    self waittill(#"death");
    thread remove(uid);
}

// Namespace namespace_93648050/namespace_93648050
// Params 3, eflags: 0x6 linked
// Checksum 0x7c0a0a68, Offset: 0xeb8
// Size: 0x38
function private function_73b1e949(data, trace, *var_a74a4e75) {
    return var_a74a4e75[#"entity"] === trace.ent;
}

// Namespace namespace_93648050/namespace_93648050
// Params 3, eflags: 0x6 linked
// Checksum 0xb0378d8a, Offset: 0xef8
// Size: 0x42
function private function_fc5ed81d(data, trace, *var_a74a4e75) {
    return istouching(var_a74a4e75[#"position"], trace.trigger);
}

// Namespace namespace_93648050/namespace_93648050
// Params 3, eflags: 0x6 linked
// Checksum 0x47d0260, Offset: 0xf48
// Size: 0x166
function private function_f08e8278(data, trace, var_a74a4e75) {
    function_975e779f(data);
    var_2327a6ed = trace[#"position"] - data.center;
    if (abs(vectordot(var_2327a6ed, data.axis.forward)) > 6 || vectordot(var_a74a4e75, data.axis.forward) > -0.17) {
        return false;
    }
    if (abs(vectordot(var_2327a6ed, data.axis.right)) > data.width) {
        return false;
    }
    if (abs(vectordot(var_2327a6ed, data.axis.up)) > data.height) {
        return false;
    }
    return true;
}

// Namespace namespace_93648050/namespace_93648050
// Params 3, eflags: 0x6 linked
// Checksum 0xaa27470f, Offset: 0x10b8
// Size: 0xfe
function private function_d0acce99(data, trace, var_a74a4e75) {
    function_975e779f(data);
    var_2327a6ed = trace[#"position"] - data.center;
    if (abs(vectordot(var_2327a6ed, data.axis.forward)) > 6 || vectordot(var_a74a4e75, data.axis.forward) > -0.17) {
        return false;
    }
    return lengthsquared(var_2327a6ed) < data.radius * data.radius;
}

// Namespace namespace_93648050/namespace_93648050
// Params 1, eflags: 0x6 linked
// Checksum 0xeeef75d0, Offset: 0x11c0
// Size: 0x1e
function private function_136c1375(data) {
    return data.ent.origin;
}

// Namespace namespace_93648050/namespace_93648050
// Params 1, eflags: 0x6 linked
// Checksum 0xe2b66e70, Offset: 0x11e8
// Size: 0x1e
function private function_f56da461(data) {
    return data.trigger.origin;
}

// Namespace namespace_93648050/namespace_93648050
// Params 1, eflags: 0x6 linked
// Checksum 0x7257c788, Offset: 0x1210
// Size: 0x16
function private function_3c2d7742(data) {
    return data.center;
}

// Namespace namespace_93648050/namespace_93648050
// Params 1, eflags: 0x6 linked
// Checksum 0x88a0443e, Offset: 0x1230
// Size: 0x10e
function private function_975e779f(data) {
    if (isdefined(data.var_206eca0c)) {
        angle_delta = angleclamp180(data.var_1321588e - data.angles - data.var_206eca0c.angles);
        if (lengthsquared(angle_delta) > 1) {
            data.var_9a145184 = rotatepoint(data.var_9a145184, angle_delta);
            data.angles = data.var_206eca0c.angles + data.var_1321588e;
            data.axis = anglestoaxis(data.angles);
        }
        data.center = data.var_206eca0c.origin + data.var_9a145184;
    }
}

// Namespace namespace_93648050/namespace_93648050
// Params 0, eflags: 0x6 linked
// Checksum 0xd01a283, Offset: 0x1348
// Size: 0x544
function private function_7d76b3ac() {
    self endon(#"death");
    level endon(#"level_restarting");
    level flag::set("object_descriptions_active");
    namespace_61e6d095::create(#"hash_7ccb313a097bf40", #"hash_1dbb8163d29524c9");
    var_ebb41806 = undefined;
    while (level.var_93648050.trace_dist > 0) {
        eye = self getplayercamerapos();
        var_a74a4e75 = anglestoforward(self getplayerangles());
        text = #"";
        var_36247bfb = #"";
        if (!namespace_61e6d095::exists(#"hint_tutorial") && !self flag::get(#"lockpicking") && function_185fc34e(eye, var_a74a4e75)) {
            end = eye + var_a74a4e75 * level.var_93648050.trace_dist;
            trace = bullettrace(eye, end, 1, self, 1, 0);
            if (trace[#"fraction"] < 1) {
                distance = level.var_93648050.trace_dist * trace[#"fraction"];
                start_index = 0;
                if (!isdefined(trace[#"entity"])) {
                    start_index = level.var_93648050.ents.size;
                }
                for (i = start_index; i < level.var_93648050.objects.size; i++) {
                    data = level.var_93648050.objects[i];
                    /#
                        if (level.var_93648050.debug_draw && isdefined(data.var_ffc04e84)) {
                            [[ data.var_ffc04e84 ]](data);
                        }
                    #/
                    if (data.max_dist > distance && [[ data.var_c42ac92 ]](data, trace, var_a74a4e75)) {
                        text = data.var_a9e3715c;
                        var_36247bfb = data.var_36247bfb;
                        break;
                    }
                }
            }
        }
        if (var_ebb41806 !== text) {
            var_ebb41806 = text;
            if (isdefined(data) && isdefined(var_ebb41806) && var_ebb41806 != #"") {
                if (isdefined(var_36247bfb) && var_36247bfb != #"") {
                    namespace_61e6d095::set_text(#"hash_7ccb313a097bf40", var_36247bfb);
                    namespace_61e6d095::function_bfdab223(#"hash_7ccb313a097bf40", text);
                } else if (data.var_774d5d03 == 3) {
                    namespace_61e6d095::set_text(#"hash_7ccb313a097bf40", text);
                } else {
                    namespace_61e6d095::function_bfdab223(#"hash_7ccb313a097bf40", text);
                }
                namespace_61e6d095::set_state(#"hash_7ccb313a097bf40", data.var_774d5d03);
            } else {
                namespace_61e6d095::set_text(#"hash_7ccb313a097bf40", #"");
                namespace_61e6d095::function_bfdab223(#"hash_7ccb313a097bf40", #"");
                namespace_61e6d095::set_state(#"hash_7ccb313a097bf40", 0);
            }
        }
        waitframe(1);
    }
    namespace_61e6d095::remove(#"hash_7ccb313a097bf40");
    level flag::clear("object_descriptions_active");
}

// Namespace namespace_93648050/namespace_93648050
// Params 2, eflags: 0x6 linked
// Checksum 0x19006e3f, Offset: 0x1898
// Size: 0x10e
function private function_185fc34e(eye, var_a74a4e75) {
    foreach (data in level.var_93648050.objects) {
        origin = [[ data.var_f03d5bb1 ]](data);
        if (distancesquared(eye, origin) < data.max_dist * data.max_dist && vectordot(var_a74a4e75, origin - eye) > 0) {
            return true;
        }
    }
    return false;
}

/#

    // Namespace namespace_93648050/namespace_93648050
    // Params 1, eflags: 0x4
    // Checksum 0x3a7d7f65, Offset: 0x19b0
    // Size: 0x2a
    function private function_5120dfdb(dvar) {
        level.var_93648050.debug_draw = dvar.value;
    }

    // Namespace namespace_93648050/namespace_93648050
    // Params 1, eflags: 0x4
    // Checksum 0x3db3437c, Offset: 0x19e8
    // Size: 0xd4
    function private function_1ee1bf29(data) {
        var_3b161ca3 = data.width / 2;
        half_height = data.height / 2;
        box(data.center, (-3, data.width * -1, data.height * -1), (3, data.width, data.height), data.angles, (1, 0.5, 0), 1, 1, 1);
    }

    // Namespace namespace_93648050/namespace_93648050
    // Params 1, eflags: 0x4
    // Checksum 0x1daeca35, Offset: 0x1ac8
    // Size: 0x54
    function private function_c6b00d99(data) {
        circle(data.center, data.radius, (1, 0.5, 0), 1, 0, 1);
    }

#/
