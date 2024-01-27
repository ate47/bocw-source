// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\math_shared.csc;
#using script_140d5347de8af85c;

#namespace namespace_ca99987f;

// Namespace namespace_ca99987f/namespace_ca99987f
// Params 8, eflags: 0x0
// Checksum 0xa152fb5d, Offset: 0x1e0
// Size: 0xac
function function_a037b7c9(localclientnum, ui_model, value, time, var_4ca73085, ease_in, ease_out, var_33ce6852) {
    self thread function_d4a4a726(localclientnum, getuimodelvalue(ui_model), value, time, &function_3d07aeab, var_4ca73085, "ease_uimodel_" + ui_model, "ease_uimodel_" + ui_model, ease_in, ease_out, var_33ce6852, ui_model);
}

// Namespace namespace_ca99987f/namespace_ca99987f
// Params 7, eflags: 0x0
// Checksum 0x68839d3c, Offset: 0x298
// Size: 0xec
function ease_camera_position(start, target, time, var_4ca73085, ease_in, ease_out, var_33ce6852) {
    /#
        assert(self isplayer());
    #/
    if (!isdefined(start)) {
        start = self getcampos();
    }
    localclientnum = self getlocalclientnumber();
    self thread function_d4a4a726(localclientnum, start, target, time, &function_5b854508, var_4ca73085, "ease_camera_position", "ease_camera_position", ease_in, ease_out, var_33ce6852);
}

// Namespace namespace_ca99987f/namespace_ca99987f
// Params 7, eflags: 0x0
// Checksum 0xab47aab8, Offset: 0x390
// Size: 0x124
function ease_camera_angles(start, target, time, var_4ca73085, ease_in, ease_out, var_33ce6852) {
    /#
        assert(self isplayer());
    #/
    if (!isdefined(start)) {
        start = self getcamangles();
    }
    start = angleclamp180(start);
    target = start + angleclamp180(target - start);
    localclientnum = self getlocalclientnumber();
    self thread function_d4a4a726(localclientnum, start, target, time, &function_d4923609, var_4ca73085, "ease_camera_angles", "ease_camera_angles", ease_in, ease_out, var_33ce6852);
}

// Namespace namespace_ca99987f/namespace_ca99987f
// Params 9, eflags: 0x0
// Checksum 0x743c2eb9, Offset: 0x4c0
// Size: 0x264
function function_f95cb457(start, target, time, var_4ca73085, ease_in, ease_out, var_33ce6852, min, max) {
    /#
        assert(self isplayer());
    #/
    /#
        assert(target > 0);
    #/
    if (!isdefined(start) && var_4ca73085 == #"linear") {
        self function_49cdf043(math::clamp(target, isdefined(min) ? min : 1e-05, isdefined(max) ? max : 2147483647), time);
    } else {
        var_aca17b66 = self function_82f1cbd2();
        if (!isdefined(start)) {
            start = var_aca17b66;
        }
        if (getdvarint(#"hash_32f02866d46e6e7b", 0)) {
            var_18b7d7a4 = self function_838f0a04();
            delta = var_18b7d7a4 - getdvarfloat(#"cg_focallength", var_18b7d7a4);
            if (abs(delta) > 0.001) {
                start = start - delta;
            }
        }
        localclientnum = self getlocalclientnumber();
        self thread function_d4a4a726(localclientnum, start, target, time, &function_c426caa9, var_4ca73085, "ease_camera_lens_focal_length", [1:"deactivate_camera_lens_overrides", 0:"ease_camera_lens_focal_length"], ease_in, ease_out, var_33ce6852, min, max);
    }
}

// Namespace namespace_ca99987f/namespace_ca99987f
// Params 9, eflags: 0x0
// Checksum 0xf67fbaea, Offset: 0x730
// Size: 0x134
function function_b6f1c993(start, target, time, var_4ca73085, ease_in, ease_out, var_33ce6852, min, max) {
    /#
        assert(self isplayer());
    #/
    /#
        assert(target > 0);
    #/
    if (!isdefined(start)) {
        start = self function_78bf7752();
    }
    localclientnum = self getlocalclientnumber();
    self thread function_d4a4a726(localclientnum, start, target, time, &function_dd427b21, var_4ca73085, "ease_camera_lens_focal_distance", [1:"deactivate_camera_lens_overrides", 0:"ease_camera_lens_focal_distance"], ease_in, ease_out, var_33ce6852, min, max);
}

// Namespace namespace_ca99987f/namespace_ca99987f
// Params 9, eflags: 0x0
// Checksum 0x405abe27, Offset: 0x870
// Size: 0x134
function function_136edb11(start, target, time, var_4ca73085, ease_in, ease_out, var_33ce6852, min, max) {
    /#
        assert(self isplayer());
    #/
    /#
        assert(target > 0);
    #/
    if (!isdefined(start)) {
        start = self function_28aef982();
    }
    localclientnum = self getlocalclientnumber();
    self thread function_d4a4a726(localclientnum, start, target, time, &function_9f966a98, var_4ca73085, "ease_camera_lens_fstop", [1:"deactivate_camera_lens_overrides", 0:"ease_camera_lens_fstop"], ease_in, ease_out, var_33ce6852, min, max);
}

// Namespace namespace_ca99987f/namespace_ca99987f
// Params 9, eflags: 0x0
// Checksum 0x4669f651, Offset: 0x9b0
// Size: 0xb4
function function_86ac55c5(localclientnum, dvar, var_c7ec7d60, value, time, var_4ca73085, ease_in, ease_out, var_33ce6852) {
    self thread function_d4a4a726(localclientnum, getdvarfloat(dvar), value, time, &function_8ff186e5, var_4ca73085, "ease_dvar_" + dvar, "ease_dvar_" + dvar, ease_in, ease_out, var_33ce6852, dvar, var_c7ec7d60);
}

// Namespace namespace_ca99987f/namespace_ca99987f
// Params 9, eflags: 0x0
// Checksum 0x268c1db2, Offset: 0xa70
// Size: 0x194
function ease_origin(localclientnum, target, time, var_4ca73085, axis, additive, ease_in, ease_out, var_33ce6852) {
    /#
        assert(self != level);
    #/
    endons = undefined;
    callback = &function_54354e4e;
    var_be4baa48 = self.origin;
    if (is_true(additive)) {
        callback = &function_92b063ff;
    } else {
        endons = [3:"ease_origin_z", 2:"ease_origin_y", 1:"ease_origin_x", 0:"ease_origin"];
    }
    if (isdefined(axis)) {
        /#
            assert(axis >= 0 && axis <= 2);
        #/
        var_be4baa48 = var_be4baa48[axis];
    } else {
        axis = -1;
    }
    self thread function_d4a4a726(localclientnum, var_be4baa48, target, time, callback, var_4ca73085, "ease_origin", endons, ease_in, ease_out, var_33ce6852, axis);
}

// Namespace namespace_ca99987f/namespace_ca99987f
// Params 9, eflags: 0x0
// Checksum 0xb5ec1658, Offset: 0xc10
// Size: 0x194
function ease_angles(localclientnum, target, time, var_4ca73085, axis, additive, ease_in, ease_out, var_33ce6852) {
    /#
        assert(self != level);
    #/
    endons = undefined;
    callback = &function_3b3f9801;
    var_be4baa48 = self.angles;
    if (is_true(additive)) {
        callback = &function_faea843b;
    } else {
        endons = [3:"ease_roll", 2:"ease_yaw", 1:"ease_pitch", 0:"ease_angles"];
    }
    if (isdefined(axis)) {
        /#
            assert(axis >= 0 && axis <= 2);
        #/
        var_be4baa48 = var_be4baa48[axis];
    } else {
        axis = -1;
    }
    self thread function_d4a4a726(localclientnum, var_be4baa48, target, time, callback, var_4ca73085, "ease_angles", endons, ease_in, ease_out, var_33ce6852, axis);
}

// Namespace namespace_ca99987f/namespace_ca99987f
// Params 12, eflags: 0x40
// Checksum 0x9aa330e6, Offset: 0xdb0
// Size: 0x5be
function function_d4a4a726(localclientnum, var_be4baa48, target_value, time, var_f71e2d8f, var_4ca73085 = #"linear", notifies, endons, ease_in, ease_out, var_33ce6852, ...) {
    /#
        assert(isdefined(level.var_b649495c));
    #/
    /#
        assert(isdefined(level.var_b649495c[var_4ca73085]));
    #/
    localplayer = function_5c10bd79(localclientnum);
    if (!isdefined(localplayer)) {
        return;
    }
    localplayer endon(#"death");
    if (!isdefined(notifies)) {
        notifies = [];
    } else if (!isarray(notifies)) {
        notifies = array(notifies);
    }
    foreach (notify_str in notifies) {
        self notify(notify_str);
    }
    if (isdefined(endons)) {
        self endon(endons);
    }
    if (!isdefined(var_33ce6852)) {
        var_33ce6852 = [];
    } else if (!isarray(var_33ce6852)) {
        var_33ce6852 = array(var_33ce6852);
    }
    var_b3160f0 = spawnstruct();
    var_b3160f0.var_be4baa48 = var_be4baa48;
    var_b3160f0.target_value = target_value;
    var_b3160f0.var_872a88cd = var_be4baa48;
    var_b3160f0.var_37e98bce = 0;
    var_88a4b08c = var_b3160f0.var_872a88cd;
    last_time = float(localplayer getclienttime()) / 1000;
    cur_time = 0;
    while (cur_time < time) {
        var_b3160f0.var_600ff81f = min(1, cur_time / time);
        var_88a4b08c = var_b3160f0.var_872a88cd;
        switch (var_33ce6852.size) {
        case 3:
            var_b3160f0.var_872a88cd = [[ level.var_b649495c[var_4ca73085] ]](var_be4baa48, target_value, var_b3160f0.var_600ff81f, ease_in, ease_out, var_33ce6852[0], var_33ce6852[1], var_33ce6852[2]);
            break;
        case 2:
            var_b3160f0.var_872a88cd = [[ level.var_b649495c[var_4ca73085] ]](var_be4baa48, target_value, var_b3160f0.var_600ff81f, ease_in, ease_out, var_33ce6852[0], var_33ce6852[1]);
            break;
        case 1:
            var_b3160f0.var_872a88cd = [[ level.var_b649495c[var_4ca73085] ]](var_be4baa48, target_value, var_b3160f0.var_600ff81f, ease_in, ease_out, var_33ce6852[0]);
            break;
        case #"hash_defdefdefdefdef0":
            var_b3160f0.var_872a88cd = [[ level.var_b649495c[var_4ca73085] ]](var_be4baa48, target_value, var_b3160f0.var_600ff81f, ease_in, ease_out);
            break;
        }
        var_b3160f0.delta = var_b3160f0.var_872a88cd - var_88a4b08c;
        util::function_50f54b6f(self, var_f71e2d8f, var_b3160f0, vararg);
        waitframe(1);
        var_d916543d = float(localplayer getclienttime()) / 1000;
        cur_time = cur_time + var_d916543d - last_time;
        last_time = var_d916543d;
    }
    var_b3160f0.var_872a88cd = target_value;
    var_b3160f0.delta = var_b3160f0.target_value - var_88a4b08c;
    var_b3160f0.var_37e98bce = 1;
    var_b3160f0.localclientnum = localclientnum;
    util::function_50f54b6f(self, var_f71e2d8f, var_b3160f0, vararg);
    if (isdefined(self)) {
        self notify(#"hash_133229f708f5d10", {#localclientnum:localclientnum, #var_4ca73085:var_4ca73085, #var_f71e2d8f:var_f71e2d8f, #time:time, #target_value:target_value, #var_be4baa48:var_be4baa48});
    }
}

// Namespace namespace_ca99987f/namespace_ca99987f
// Params 2, eflags: 0x4
// Checksum 0x58ae4baf, Offset: 0x1378
// Size: 0x34
function private function_3d07aeab(var_b3160f0, ui_model) {
    setuimodelvalue(ui_model, var_b3160f0.var_872a88cd);
}

// Namespace namespace_ca99987f/namespace_ca99987f
// Params 1, eflags: 0x4
// Checksum 0x4532d397, Offset: 0x13b8
// Size: 0x2c
function private function_5b854508(var_b3160f0) {
    self camerasetposition(var_b3160f0.var_872a88cd);
}

// Namespace namespace_ca99987f/namespace_ca99987f
// Params 1, eflags: 0x4
// Checksum 0x484dd8bc, Offset: 0x13f0
// Size: 0x2c
function private function_d4923609(var_b3160f0) {
    self camerasetlookat(var_b3160f0.var_872a88cd);
}

// Namespace namespace_ca99987f/namespace_ca99987f
// Params 3, eflags: 0x4
// Checksum 0xba0546e6, Offset: 0x1428
// Size: 0x7c
function private function_c426caa9(var_b3160f0, var_36119b66 = 0.01, var_57c7aaff = 2147483647) {
    self function_49cdf043(math::clamp(var_b3160f0.var_872a88cd, var_36119b66, var_57c7aaff), 0);
}

// Namespace namespace_ca99987f/namespace_ca99987f
// Params 3, eflags: 0x4
// Checksum 0x35d4b347, Offset: 0x14b0
// Size: 0x7c
function private function_dd427b21(var_b3160f0, var_36119b66 = 0.01, var_57c7aaff = 2147483647) {
    self function_d7be9a9f(math::clamp(var_b3160f0.var_872a88cd, var_36119b66, var_57c7aaff), 0);
}

// Namespace namespace_ca99987f/namespace_ca99987f
// Params 3, eflags: 0x4
// Checksum 0xbd083057, Offset: 0x1538
// Size: 0x7c
function private function_9f966a98(var_b3160f0, var_36119b66 = 0.01, var_57c7aaff = 2147483647) {
    self function_1816c600(math::clamp(var_b3160f0.var_872a88cd, var_36119b66, var_57c7aaff), 0);
}

