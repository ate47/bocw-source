// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace namespace_a9076ee3;

// Namespace namespace_a9076ee3
// Method(s) 23 Total 23
class class_d5e68311 {

    var var_21ab02f3;
    var var_2d9de19e;
    var var_2df3d617;
    var var_3d18872;
    var var_450307dc;
    var var_4fc15b0b;
    var var_76c10824;
    var var_884ed4f;
    var var_89c30c57;
    var var_b228f30;
    var var_e1c25a48;
    var var_e7fdf736;
    var var_e93e3086;
    var var_ec13f56d;
    var var_f141235b;
    var var_fef76413;

    // Namespace class_d5e68311/namespace_a9076ee3
    // Params 0, eflags: 0xa linked
    // Checksum 0x5f44e761, Offset: 0x100
    // Size: 0xd6
    constructor() {
        var_f141235b = 0;
        var_884ed4f = undefined;
        var_e93e3086 = (15, -3, 0);
        var_3d18872 = (0, 0, 0);
        var_2df3d617 = (0, 0, 0);
        var_21ab02f3 = (0, 0, 0);
        var_4fc15b0b = (15, -3, 0);
        var_2d9de19e = (0, 0, 0);
        var_450307dc = "";
        var_fef76413 = 0;
        var_76c10824 = 1;
        var_b228f30 = 0;
        var_89c30c57 = 0;
        var_ec13f56d = 1;
        var_e7fdf736 = 5;
        var_e1c25a48 = 0;
    }

    // Namespace namespace_d5e68311/namespace_a9076ee3
    // Params 0, eflags: 0x2 linked
    // Checksum 0x2253e3e1, Offset: 0xa08
    // Size: 0xa
    function function_7c6cd9d() {
        return var_f141235b;
    }

    // Namespace namespace_d5e68311/namespace_a9076ee3
    // Params 0, eflags: 0x2 linked
    // Checksum 0xfd215644, Offset: 0xb38
    // Size: 0x34
    function function_13f1dc62() {
        return {#enabled:var_ec13f56d, #max:var_e7fdf736};
    }

    // Namespace namespace_d5e68311/namespace_a9076ee3
    // Params 4, eflags: 0x2 linked
    // Checksum 0x327b8db4, Offset: 0x250
    // Size: 0xdc
    function update_settings(var_4ce74bd9 = (15, -3, 0), var_40779d0d = (0, 0, 0), var_447b7d9b = 1, var_4c987939 = 1) {
        var_e93e3086 = var_4ce74bd9;
        var_3d18872 = var_40779d0d;
        var_76c10824 = var_447b7d9b;
        var_ec13f56d = var_4c987939;
        if (isdefined(var_884ed4f)) {
            function_f710ecd0();
            set_position(var_4fc15b0b, var_2d9de19e);
        }
    }

    // Namespace namespace_d5e68311/namespace_a9076ee3
    // Params 2, eflags: 0x2 linked
    // Checksum 0x18d99756, Offset: 0x338
    // Size: 0x3ec
    function function_2e49d5cb(var_53008658 = "", var_56838591 = 0) {
        var_38d97d58 = getscriptbundle(var_53008658);
        if (!isdefined(var_38d97d58)) {
            var_38d97d58 = {};
        }
        model_name = isdefined(var_38d97d58.uimodel) ? var_38d97d58.uimodel : "";
        var_4efbbcfe = isdefined(var_38d97d58.var_4efbbcfe) ? var_38d97d58.var_4efbbcfe : 0;
        var_4138e7ed = isdefined(var_38d97d58.var_4138e7ed) ? var_38d97d58.var_4138e7ed : 0;
        var_53be913a = isdefined(var_38d97d58.var_53be913a) ? var_38d97d58.var_53be913a : 5;
        positionoffset = (isdefined(var_38d97d58.xpositionoffset) ? var_38d97d58.xpositionoffset : 0, isdefined(var_38d97d58.ypositionoffset) ? var_38d97d58.ypositionoffset : 0, isdefined(var_38d97d58.zpositionoffset) ? var_38d97d58.zpositionoffset : 0);
        angleoffset = (isdefined(var_38d97d58.var_83f65202) ? var_38d97d58.var_83f65202 : 0, isdefined(var_38d97d58.var_b1e8fdfd) ? var_38d97d58.var_b1e8fdfd : 0, isdefined(var_38d97d58.var_ce8030c8) ? var_38d97d58.var_ce8030c8 : 0);
        if (var_450307dc == model_name) {
            return;
        }
        var_450307dc = model_name;
        var_b228f30 = var_4efbbcfe;
        var_89c30c57 = var_4138e7ed;
        var_e7fdf736 = var_53be913a;
        var_2df3d617 = positionoffset;
        var_21ab02f3 = angleoffset;
        var_e1c25a48 = var_56838591;
        function_f710ecd0();
        if (model_name != "") {
            if (!isdefined(var_884ed4f)) {
                var_884ed4f = util::spawn_model(var_f141235b, model_name, var_4fc15b0b, var_2d9de19e);
            } else {
                var_884ed4f setmodel(model_name);
            }
            set_position(var_4fc15b0b, var_2d9de19e);
        } else if (isdefined(var_884ed4f) && function_75aa931a()) {
            var_884ed4f function_a052b638();
            var_fef76413 = 0;
            var_884ed4f delete();
        }
        if (isdefined(var_884ed4f)) {
            if (var_56838591) {
                var_884ed4f playrenderoverridebundle(#"hash_1d4878635b5ea5a3");
                return;
            }
            var_884ed4f stoprenderoverridebundle(#"hash_1d4878635b5ea5a3");
        }
    }

    // Namespace namespace_d5e68311/namespace_a9076ee3
    // Params 1, eflags: 0x2 linked
    // Checksum 0x8c514e44, Offset: 0x828
    // Size: 0x2a
    function function_2e66587b(var_4c987939 = 1) {
        var_ec13f56d = var_4c987939;
    }

    // Namespace namespace_d5e68311/namespace_a9076ee3
    // Params 0, eflags: 0x2 linked
    // Checksum 0x8f694fc8, Offset: 0x730
    // Size: 0x44
    function reset() {
        var_f141235b = 0;
        function_2e49d5cb();
        function_56293490();
        function_f710ecd0();
    }

    // Namespace namespace_d5e68311/namespace_a9076ee3
    // Params 0, eflags: 0x2 linked
    // Checksum 0xbdaa29b6, Offset: 0x990
    // Size: 0x26
    function function_56293490() {
        var_e93e3086 = (15, -3, 0);
        var_3d18872 = (0, 0, 0);
    }

    // Namespace namespace_d5e68311/namespace_a9076ee3
    // Params 0, eflags: 0x2 linked
    // Checksum 0x91bbd3bc, Offset: 0xab8
    // Size: 0x1a
    function function_56838591() {
        return is_true(var_e1c25a48);
    }

    // Namespace namespace_d5e68311/namespace_a9076ee3
    // Params 0, eflags: 0x2 linked
    // Checksum 0xc595e245, Offset: 0xa40
    // Size: 0x14
    function function_62571daf() {
        return var_3d18872 + var_21ab02f3;
    }

    // Namespace namespace_d5e68311/namespace_a9076ee3
    // Params 0, eflags: 0x2 linked
    // Checksum 0x80435b05, Offset: 0xa20
    // Size: 0x14
    function function_6e7ad37e() {
        return var_e93e3086 + var_2df3d617;
    }

    // Namespace namespace_d5e68311/namespace_a9076ee3
    // Params 0, eflags: 0x2 linked
    // Checksum 0x8f3bce13, Offset: 0xa90
    // Size: 0x1a
    function function_75aa931a() {
        return is_true(var_fef76413);
    }

    // Namespace namespace_d5e68311/namespace_a9076ee3
    // Params 1, eflags: 0x2 linked
    // Checksum 0x5439d7ee, Offset: 0x860
    // Size: 0x32
    function function_77f3574b(var_4ce74bd9 = (15, -3, 0)) {
        var_e93e3086 = var_4ce74bd9;
    }

    // Namespace namespace_d5e68311/namespace_a9076ee3
    // Params 1, eflags: 0x2 linked
    // Checksum 0x30956a8e, Offset: 0x780
    // Size: 0x62
    function set_client(local_client_num = 0) {
        assert(local_client_num >= 0 && local_client_num < getmaxlocalclients());
        var_f141235b = local_client_num;
    }

    // Namespace namespace_d5e68311/namespace_a9076ee3
    // Params 0, eflags: 0x2 linked
    // Checksum 0x4f9ef239, Offset: 0xa78
    // Size: 0xa
    function get_angle() {
        return var_2d9de19e;
    }

    // Namespace namespace_d5e68311/namespace_a9076ee3
    // Params 5, eflags: 0x2 linked
    // Checksum 0xebd8c4fc, Offset: 0x1e0
    // Size: 0x64
    function function_b4ecf5f4(local_client_num = 0, var_4ce74bd9, var_40779d0d, var_447b7d9b, var_4c987939) {
        var_f141235b = local_client_num;
        update_settings(var_4ce74bd9, var_40779d0d, var_447b7d9b, var_4c987939);
    }

    // Namespace namespace_d5e68311/namespace_a9076ee3
    // Params 2, eflags: 0x2 linked
    // Checksum 0xb9a5574c, Offset: 0x8d8
    // Size: 0xaa
    function set_position(origin, angle) {
        if (isdefined(origin)) {
            var_4fc15b0b = origin;
        }
        if (isdefined(angle)) {
            var_2d9de19e = angle;
        }
        if (isdefined(var_884ed4f)) {
            var_884ed4f function_a052b638();
            var_fef76413 = 0;
            var_884ed4f linktocamera(4, var_4fc15b0b, var_2d9de19e);
            var_fef76413 = 1;
        }
    }

    // Namespace namespace_d5e68311/namespace_a9076ee3
    // Params 1, eflags: 0x2 linked
    // Checksum 0xaf4ef587, Offset: 0x8a0
    // Size: 0x2a
    function function_d5f29651(var_40779d0d = (0, 0, 0)) {
        var_3d18872 = var_40779d0d;
    }

    // Namespace namespace_d5e68311/namespace_a9076ee3
    // Params 1, eflags: 0x2 linked
    // Checksum 0x7f25b66f, Offset: 0x7f0
    // Size: 0x2a
    function function_e3f38520(var_447b7d9b = 1) {
        var_76c10824 = var_447b7d9b;
    }

    // Namespace namespace_d5e68311/namespace_a9076ee3
    // Params 0, eflags: 0x2 linked
    // Checksum 0xc2f603ed, Offset: 0xa60
    // Size: 0xa
    function get_origin() {
        return var_4fc15b0b;
    }

    // Namespace namespace_d5e68311/namespace_a9076ee3
    // Params 0, eflags: 0x2 linked
    // Checksum 0xd4e7f55f, Offset: 0x9c0
    // Size: 0x3a
    function function_f710ecd0() {
        var_4fc15b0b = var_e93e3086 + var_2df3d617;
        var_2d9de19e = var_3d18872 + var_21ab02f3;
    }

    // Namespace namespace_d5e68311/namespace_a9076ee3
    // Params 0, eflags: 0x2 linked
    // Checksum 0x7095c50d, Offset: 0xae0
    // Size: 0x4c
    function function_fbdfd5f9() {
        return {#enabled:var_76c10824, #var_71fe4b43:var_b228f30, #var_8d3781b5:var_89c30c57};
    }

}

// Namespace namespace_a9076ee3/namespace_a9076ee3
// Params 0, eflags: 0x5
// Checksum 0x6fa2a466, Offset: 0xb8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_19a39574bfda1b56", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_a9076ee3/namespace_a9076ee3
// Params 1, eflags: 0x2 linked
// Checksum 0xcdb316a2, Offset: 0x1000
// Size: 0xcc
function function_5128ed40(var_56c2f5d3) {
    components = [];
    components = strtok(var_56c2f5d3, ",");
    if (!isdefined(components[0])) {
        components[0] = 0;
    }
    if (!isdefined(components[1])) {
        components[1] = 0;
    }
    if (!isdefined(components[2])) {
        components[2] = 0;
    }
    return (int(components[0]), int(components[1]), int(components[2]));
}

// Namespace namespace_a9076ee3/namespace_a9076ee3
// Params 0, eflags: 0x6 linked
// Checksum 0xabc7ee7, Offset: 0x10d8
// Size: 0x54
function private preinit() {
    var_5d7dbefc = new class_d5e68311();
    level.var_5d7dbefc = var_5d7dbefc;
    callback::on_localclient_connect(&on_localclient_connect);
}

// Namespace namespace_a9076ee3/namespace_a9076ee3
// Params 1, eflags: 0x2 linked
// Checksum 0x357be4dc, Offset: 0x1138
// Size: 0x24
function on_localclient_connect(localclientnum) {
    level thread function_3adc69b0(localclientnum);
}

// Namespace namespace_a9076ee3/namespace_a9076ee3
// Params 1, eflags: 0x2 linked
// Checksum 0xc7e8640, Offset: 0x1168
// Size: 0x2be
function function_3adc69b0(localclientnum = 0) {
    level endon(#"disconnect");
    while (true) {
        waitresult = level waittill("CollectibleInspect" + localclientnum, #"collectibleinspect");
        switch (waitresult.event_name) {
        case #"start":
            if (isdefined(waitresult.origin) && isstring(waitresult.origin)) {
                waitresult.origin = function_5128ed40(waitresult.origin);
            }
            if (isdefined(waitresult.angle) && isstring(waitresult.angle)) {
                waitresult.angle = function_5128ed40(waitresult.angle);
            }
            function_98095ab5(localclientnum, waitresult.origin, waitresult.angle, waitresult.var_447b7d9b, waitresult.var_4c987939);
            break;
        case #"hash_76650d44ad5ebc06":
            function_159ea549(waitresult.var_53008658, waitresult.var_56838591);
            break;
        case #"update_settings":
            if (isdefined(waitresult.origin) && isstring(waitresult.origin)) {
                waitresult.origin = function_5128ed40(waitresult.origin);
            }
            if (isdefined(waitresult.angle) && isstring(waitresult.angle)) {
                waitresult.angle = function_5128ed40(waitresult.angle);
            }
            function_24de0369(waitresult.origin, waitresult.angle, waitresult.var_447b7d9b, waitresult.var_4c987939);
            break;
        case #"stop":
            function_fdff8886();
            break;
        }
    }
}

// Namespace namespace_a9076ee3/namespace_a9076ee3
// Params 5, eflags: 0x2 linked
// Checksum 0x90f498ec, Offset: 0x1430
// Size: 0x74
function function_98095ab5(local_client_num, origin, angle, var_447b7d9b, var_4c987939) {
    level notify(#"hash_44d89707d01c9949");
    [[ level.var_5d7dbefc ]]->function_b4ecf5f4(local_client_num, origin, angle, var_447b7d9b, var_4c987939);
    level thread function_aab851cf();
}

// Namespace namespace_a9076ee3/namespace_a9076ee3
// Params 2, eflags: 0x2 linked
// Checksum 0xf011f20d, Offset: 0x14b0
// Size: 0x30
function function_159ea549(var_53008658, var_56838591) {
    [[ level.var_5d7dbefc ]]->function_2e49d5cb(var_53008658, var_56838591);
}

// Namespace namespace_a9076ee3/namespace_a9076ee3
// Params 4, eflags: 0x2 linked
// Checksum 0xeec32a8c, Offset: 0x14e8
// Size: 0x44
function function_24de0369(origin, angle, var_447b7d9b, var_4c987939) {
    [[ level.var_5d7dbefc ]]->update_settings(origin, angle, var_447b7d9b, var_4c987939);
}

// Namespace namespace_a9076ee3/namespace_a9076ee3
// Params 0, eflags: 0x2 linked
// Checksum 0xeea5464f, Offset: 0x1538
// Size: 0x2c
function function_fdff8886() {
    level notify(#"hash_553672f4d62ba043");
    [[ level.var_5d7dbefc ]]->reset();
}

// Namespace namespace_a9076ee3/namespace_a9076ee3
// Params 1, eflags: 0x6 linked
// Checksum 0x70ba9070, Offset: 0x1570
// Size: 0xd8
function private function_5fb947f1(localclientnum) {
    input = (0, 0, 0);
    if (gamepadusedlast(localclientnum)) {
        var_89c3fd26 = util::function_11f127f0(localclientnum);
        var_fc5fe2b2 = util::function_b5338ccb(var_89c3fd26.x, 0.2);
        var_a7ae3950 = util::function_b5338ccb(var_89c3fd26.y, 0.2);
        input = (var_fc5fe2b2, var_a7ae3950, 0);
    } else {
        input = function_6593be12(localclientnum) * (1, -1, 0);
    }
    return input;
}

// Namespace namespace_a9076ee3/namespace_a9076ee3
// Params 1, eflags: 0x6 linked
// Checksum 0xe3edf0ae, Offset: 0x1650
// Size: 0xfe
function private function_58df12d3(localclientnum) {
    input = 0;
    if (gamepadusedlast(localclientnum)) {
        var_43bc2604 = util::function_57f1ac46(localclientnum);
        var_b16a628 = util::function_f35576c(localclientnum);
        input = var_43bc2604 - var_b16a628;
    } else {
        player = function_5c10bd79(localclientnum);
        input = getdvarfloat(#"hash_5dd7d8a561f705fe", 1) * (isdefined(player.var_5b9b8e89) ? player.var_5b9b8e89 : 0);
        player.var_5b9b8e89 = 0;
    }
    return input;
}

// Namespace namespace_a9076ee3/namespace_a9076ee3
// Params 0, eflags: 0x6 linked
// Checksum 0x8a2d6a9f, Offset: 0x1758
// Size: 0x96
function private function_78e6ae5d() {
    while (isdefined(self)) {
        result = level waittill(#"collectiblezoom");
        if (isdefined(result.param1)) {
            player = function_5c10bd79([[ self ]]->function_7c6cd9d());
            player.var_5b9b8e89 = int(result.param1);
        }
    }
}

// Namespace namespace_a9076ee3/namespace_a9076ee3
// Params 0, eflags: 0x6 linked
// Checksum 0xcdefd8e3, Offset: 0x17f8
// Size: 0x502
function private function_aab851cf() {
    level endon(#"disconnect", #"hash_44d89707d01c9949", #"hash_553672f4d62ba043");
    level.var_5d7dbefc childthread function_78e6ae5d();
    while (isdefined(level.var_5d7dbefc)) {
        var_4ce74bd9 = [[ level.var_5d7dbefc ]]->function_6e7ad37e();
        var_40779d0d = [[ level.var_5d7dbefc ]]->function_62571daf();
        if (![[ level.var_5d7dbefc ]]->function_75aa931a()) {
            waitframe(1);
            continue;
        }
        local_client_num = [[ level.var_5d7dbefc ]]->function_7c6cd9d();
        player = function_5c10bd79(local_client_num);
        time = player getclienttime();
        waitframe(1);
        player = function_5c10bd79(local_client_num);
        delta_time = (player getclienttime() - time) / 1000;
        var_59ab9a62 = [[ level.var_5d7dbefc ]]->function_fbdfd5f9();
        var_20eb713c = [[ level.var_5d7dbefc ]]->function_13f1dc62();
        v_origin = [[ level.var_5d7dbefc ]]->get_origin();
        v_angle = [[ level.var_5d7dbefc ]]->get_angle();
        var_dbceb0e1 = 0;
        if (is_true(var_59ab9a62.enabled) && ![[ level.var_5d7dbefc ]]->function_56838591()) {
            var_1b56e5cf = function_5fb947f1(local_client_num);
            if (var_1b56e5cf != (0, 0, 0)) {
                var_dbceb0e1 = 1;
                angle_offset = var_1b56e5cf * 60 * delta_time;
                yaw = angle_offset[0];
                pitch = angle_offset[1];
                v_angle += (pitch, yaw, 0);
                var_3faba1b8 = v_angle[1];
                clamped_pitch = v_angle[0];
                if (isdefined(var_59ab9a62.var_71fe4b43) && var_59ab9a62.var_71fe4b43 !== 0) {
                    if (var_3faba1b8 < var_59ab9a62.var_71fe4b43 * -1) {
                        var_3faba1b8 = var_59ab9a62.var_71fe4b43 * -1;
                    } else if (var_3faba1b8 > var_59ab9a62.var_71fe4b43) {
                        var_3faba1b8 = var_59ab9a62.var_71fe4b43;
                    }
                }
                if (isdefined(var_59ab9a62.var_8d3781b5) && var_59ab9a62.var_8d3781b5 !== 0) {
                    if (clamped_pitch < var_59ab9a62.var_8d3781b5 * -1) {
                        clamped_pitch = var_59ab9a62.var_8d3781b5 * -1;
                    } else if (clamped_pitch > var_59ab9a62.var_8d3781b5) {
                        clamped_pitch = var_59ab9a62.var_8d3781b5;
                    }
                }
                v_angle = (clamped_pitch, var_3faba1b8, 0);
            }
        }
        if (is_true(var_20eb713c.enabled) && ![[ level.var_5d7dbefc ]]->function_56838591()) {
            var_a23c6f11 = function_58df12d3(local_client_num);
            if (var_a23c6f11 != 0) {
                var_dbceb0e1 = 1;
                var_cf138deb = 6;
                dist = v_origin[0] + var_a23c6f11 * var_cf138deb * delta_time;
                min_distance = var_4ce74bd9[0] - var_20eb713c.max;
                max_distance = var_4ce74bd9[0];
                if (dist < min_distance) {
                    dist = min_distance;
                } else if (dist > max_distance) {
                    dist = max_distance;
                }
                v_origin = (dist, v_origin[1], v_origin[2]);
            }
        }
        if (var_dbceb0e1 == 1) {
            [[ level.var_5d7dbefc ]]->set_position(v_origin, v_angle);
        }
        time = player getclienttime();
    }
}

