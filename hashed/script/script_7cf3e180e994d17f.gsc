// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_db2381c4;

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x5
// Checksum 0xfcbb8ee7, Offset: 0x268
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"hash_4ddffaa090d81227", &_preload, &function_fa076c68, undefined, undefined);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x6 linked
// Checksum 0xf14491e8, Offset: 0x2c0
// Size: 0x24
function private _preload() {
    function_bc948200();
    function_7c9b0132();
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x2f0
// Size: 0x4
function private function_fa076c68() {
    
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x6 linked
// Checksum 0xc775b06d, Offset: 0x300
// Size: 0x2d4
function private function_bc948200() {
    clientfield::register("scriptmover", "clf_billiardslight_client_register", 1, 1, "int");
    clientfield::register("scriptmover", "clf_billiardslight_fx", 1, 1, "int");
    clientfield::register("scriptmover", "clf_cargoplane_client_register", 1, 1, "int");
    clientfield::register("scriptmover", "clf_cargoplane_landing_lights", 1, 1, "int");
    clientfield::register("scriptmover", "clf_cargoplane_nav_lights", 1, 1, "int");
    clientfield::register("scriptmover", "clf_cargoplane_door_sparks", 1, 1, "int");
    clientfield::register("vehicle", "clf_rccar_fxstate", 1, 8, "int");
    clientfield::register("vehicle", "clf_bronco_roof_lights", 1, 1, "int");
    clientfield::register("vehicle", "clf_bronco_cab_lights", 1, 1, "int");
    clientfield::register("vehicle", "clf_whizbyfx_bronco", 1, 1, "int");
    clientfield::register("toplayer", "clf_postfx_rccar", 1, 1, "int");
    clientfield::register("toplayer", "clf_postfx_transition", 1, 1, "int");
    clientfield::register("toplayer", "clf_postfx_rooftop_slide", 1, 1, "int");
    clientfield::register("toplayer", "clf_footstep_override", 1, 1, "int");
    clientfield::register("actor", "clf_rob_snipercam_blood", 1, 2, "int");
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x6 linked
// Checksum 0x1d9e9f56, Offset: 0x5e0
// Size: 0x6c
function private function_7c9b0132() {
    /#
        function_5ac4dc99("<unknown string>", 0);
        function_cd140ee9("<unknown string>", &function_7db8d681);
        function_5ac4dc99("<unknown string>", 2);
    #/
}

/#

    // Namespace namespace_db2381c4/namespace_db2381c4
    // Params 1, eflags: 0x4
    // Checksum 0xfc2d6124, Offset: 0x658
    // Size: 0x34
    function private function_7db8d681(parms) {
        level.rc_car thread function_256335fe(parms.value);
    }

    // Namespace namespace_db2381c4/namespace_db2381c4
    // Params 1, eflags: 0x4
    // Checksum 0x59a5bb9a, Offset: 0x698
    // Size: 0x184
    function private function_256335fe(value) {
        self notify("<unknown string>");
        self endon("<unknown string>");
        wait(getdvarfloat(#"hash_6aa37454960fce7a", 2));
        var_9ce32949 = self clientfield::get("<unknown string>");
        var_9ce32949 &= ~112;
        switch (value) {
        case 1:
            iprintlnbold("<unknown string>");
            var_9ce32949 |= 16;
            break;
        case 2:
            iprintlnbold("<unknown string>");
            var_9ce32949 = var_9ce32949 | 16 | 32;
            break;
        case 3:
            iprintlnbold("<unknown string>");
            var_9ce32949 = var_9ce32949 | 16 | 32 | 64;
            break;
        }
        self clientfield::set("<unknown string>", var_9ce32949);
    }

#/

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x2 linked
// Checksum 0x8efdde6d, Offset: 0x828
// Size: 0x4c
function function_c8bc54e4() {
    if (is_true(self.var_fa325a51)) {
        return;
    }
    self.var_fa325a51 = 1;
    self clientfield::set_to_player("clf_footstep_override", 1);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x2 linked
// Checksum 0xc4ae9d82, Offset: 0x880
// Size: 0x4c
function function_ec0a577() {
    if (!is_true(self.var_fa325a51)) {
        return;
    }
    self.var_fa325a51 = undefined;
    self clientfield::set_to_player("clf_footstep_override", 0);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x2 linked
// Checksum 0xbe3b9f0, Offset: 0x8d8
// Size: 0x24
function function_d1dc8e50() {
    self clientfield::set("clf_billiardslight_client_register", 1);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x2 linked
// Checksum 0xa94d78d3, Offset: 0x908
// Size: 0x4c
function function_7eba1826() {
    if (is_true(self.var_47d689f3)) {
        return;
    }
    self.var_47d689f3 = 1;
    self clientfield::set("clf_billiardslight_fx", 1);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x0
// Checksum 0xd278f3b2, Offset: 0x960
// Size: 0x4c
function function_20d8e1fa() {
    if (!is_true(self.var_47d689f3)) {
        return;
    }
    self.var_47d689f3 = undefined;
    self clientfield::set("clf_billiardslight_fx", 0);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x2 linked
// Checksum 0x6719f128, Offset: 0x9b8
// Size: 0x94
function function_f0ecd8() {
    var_9ce32949 = self clientfield::get("clf_rccar_fxstate");
    if (var_9ce32949 & 1 || var_9ce32949 & 128) {
        return;
    }
    println("<unknown string>");
    self clientfield::set("clf_rccar_fxstate", var_9ce32949 | 1);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x0
// Checksum 0x1b01ae7d, Offset: 0xa58
// Size: 0x94
function function_85afc2fb() {
    var_9ce32949 = self clientfield::get("clf_rccar_fxstate");
    if (!(var_9ce32949 & 1)) {
        return;
    }
    var_9ce32949 &= ~14;
    println("<unknown string>");
    self clientfield::set("clf_rccar_fxstate", var_9ce32949 & ~1);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x2 linked
// Checksum 0xfdaeb5c1, Offset: 0xaf8
// Size: 0x94
function function_3419411b() {
    var_9ce32949 = self clientfield::get("clf_rccar_fxstate");
    if (var_9ce32949 & 2 || var_9ce32949 & 128) {
        return;
    }
    println("<unknown string>");
    self clientfield::set("clf_rccar_fxstate", var_9ce32949 | 2);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x0
// Checksum 0xd1ed6ba6, Offset: 0xb98
// Size: 0x94
function function_98db0a95() {
    var_9ce32949 = self clientfield::get("clf_rccar_fxstate");
    if (var_9ce32949 & 2 && !(var_9ce32949 & 128)) {
        println("<unknown string>");
        self clientfield::set("clf_rccar_fxstate", var_9ce32949 & ~2);
    }
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x2 linked
// Checksum 0xbf77a426, Offset: 0xc38
// Size: 0xa4
function function_323b6e10() {
    var_9ce32949 = self clientfield::get("clf_rccar_fxstate");
    if (var_9ce32949 & 4 || var_9ce32949 & 128) {
        return;
    }
    var_9ce32949 &= ~8;
    println("<unknown string>");
    self clientfield::set("clf_rccar_fxstate", var_9ce32949 | 4);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x0
// Checksum 0x663ab200, Offset: 0xce8
// Size: 0x94
function function_a66b2882() {
    var_9ce32949 = self clientfield::get("clf_rccar_fxstate");
    if (var_9ce32949 & 4 && !(var_9ce32949 & 128)) {
        println("<unknown string>");
        self clientfield::set("clf_rccar_fxstate", var_9ce32949 & ~4);
    }
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x2 linked
// Checksum 0x58b7c7be, Offset: 0xd88
// Size: 0xa4
function function_53bd0317() {
    var_9ce32949 = self clientfield::get("clf_rccar_fxstate");
    if (var_9ce32949 & 8 || var_9ce32949 & 128) {
        return;
    }
    var_9ce32949 &= ~4;
    println("<unknown string>");
    self clientfield::set("clf_rccar_fxstate", var_9ce32949 | 8);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x0
// Checksum 0x702e133e, Offset: 0xe38
// Size: 0x94
function function_f2cb4cab() {
    var_9ce32949 = self clientfield::get("clf_rccar_fxstate");
    if (var_9ce32949 & 8 && !(var_9ce32949 & 128)) {
        println("<unknown string>");
        self clientfield::set("clf_rccar_fxstate", var_9ce32949 & ~8);
    }
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 1, eflags: 0x2 linked
// Checksum 0x4baefc8, Offset: 0xed8
// Size: 0x174
function function_6bd3950d(var_7737e6aa) {
    var_9ce32949 = self clientfield::get("clf_rccar_fxstate");
    if (var_9ce32949 & 128) {
        return;
    }
    if (!isdefined(self.var_e32d3cab)) {
        self.var_e32d3cab = 100;
    }
    self.var_e32d3cab -= var_7737e6aa;
    if (self.var_e32d3cab <= 0) {
        self function_fe8be1e0();
        return;
    }
    if (self.var_e32d3cab <= 25 && !(var_9ce32949 & 64)) {
        self clientfield::set("clf_rccar_fxstate", var_9ce32949 | 64);
        return;
    }
    if (self.var_e32d3cab <= 50 && !(var_9ce32949 & 32)) {
        self clientfield::set("clf_rccar_fxstate", var_9ce32949 | 32);
        return;
    }
    if (self.var_e32d3cab <= 75 && !(var_9ce32949 & 16)) {
        self clientfield::set("clf_rccar_fxstate", var_9ce32949 | 16);
    }
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x2 linked
// Checksum 0x576fe29d, Offset: 0x1058
// Size: 0xa4
function function_fe8be1e0() {
    self notify(#"killed");
    var_9ce32949 = self clientfield::get("clf_rccar_fxstate");
    if (var_9ce32949 & 128) {
        return;
    }
    var_9ce32949 &= ~126;
    println("<unknown string>");
    self clientfield::set("clf_rccar_fxstate", var_9ce32949 | 128);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x2 linked
// Checksum 0xd64a85a1, Offset: 0x1108
// Size: 0x24
function function_c5bbfcb8() {
    self clientfield::set("clf_cargoplane_client_register", 1);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x2 linked
// Checksum 0x9d24583, Offset: 0x1138
// Size: 0x4c
function function_b6cccb8() {
    if (is_true(self.var_1b0a7080)) {
        return;
    }
    self.var_1b0a7080 = 1;
    self clientfield::set("clf_cargoplane_nav_lights", 1);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x2 linked
// Checksum 0x71057dee, Offset: 0x1190
// Size: 0x4c
function function_ee23b003() {
    if (!is_true(self.var_1b0a7080)) {
        return;
    }
    self.var_1b0a7080 = undefined;
    self clientfield::set("clf_cargoplane_nav_lights", 0);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x2 linked
// Checksum 0x1b493f3b, Offset: 0x11e8
// Size: 0x4c
function function_8e4c996d() {
    if (is_true(self.var_fd00d4f8)) {
        return;
    }
    self.var_fd00d4f8 = 1;
    self clientfield::set("clf_cargoplane_landing_lights", 1);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x2 linked
// Checksum 0x7d2852a4, Offset: 0x1240
// Size: 0x4c
function function_675a8b8c() {
    if (!is_true(self.var_fd00d4f8)) {
        return;
    }
    self.var_fd00d4f8 = undefined;
    self clientfield::set("clf_cargoplane_landing_lights", 0);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x2 linked
// Checksum 0x56226f01, Offset: 0x1298
// Size: 0x4c
function function_4c265dee() {
    if (is_true(self.var_25333943)) {
        return;
    }
    self.var_25333943 = 1;
    self clientfield::set("clf_bronco_roof_lights", 1);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x2 linked
// Checksum 0x3ec2eeca, Offset: 0x12f0
// Size: 0x4c
function function_2c185955() {
    if (!is_true(self.var_25333943)) {
        return;
    }
    self.var_25333943 = undefined;
    self clientfield::set("clf_bronco_roof_lights", 0);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x2 linked
// Checksum 0x3dc8a1f1, Offset: 0x1348
// Size: 0x4c
function function_4b711786() {
    if (is_true(self.var_c7ccb16c)) {
        return;
    }
    self.var_c7ccb16c = 1;
    self clientfield::set("clf_bronco_cab_lights", 1);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x2 linked
// Checksum 0x58eed24b, Offset: 0x13a0
// Size: 0x4c
function function_b21aeabe() {
    if (!is_true(self.var_c7ccb16c)) {
        return;
    }
    self.var_c7ccb16c = undefined;
    self clientfield::set("clf_bronco_cab_lights", 0);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x0
// Checksum 0x26b7e8f5, Offset: 0x13f8
// Size: 0x4c
function function_59e9c6f4() {
    if (is_true(self.var_3bfbcde4)) {
        return;
    }
    self.var_3bfbcde4 = 1;
    self clientfield::set("clf_whizbyfx_bronco", 1);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x0
// Checksum 0x43a0df4d, Offset: 0x1450
// Size: 0x4c
function function_733ed949() {
    if (!is_true(self.var_3bfbcde4)) {
        return;
    }
    self.var_3bfbcde4 = undefined;
    self clientfield::set_to_player("clf_whizbyfx_bronco", 0);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x2 linked
// Checksum 0x93fc1212, Offset: 0x14a8
// Size: 0x4c
function function_2be1d5b0() {
    if (is_true(self.var_c7ace249)) {
        return;
    }
    self.var_c7ace249 = 1;
    self clientfield::set_to_player("clf_postfx_rccar", 1);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x2 linked
// Checksum 0x106e8165, Offset: 0x1500
// Size: 0x4c
function function_6539055f() {
    if (!is_true(self.var_c7ace249)) {
        return;
    }
    self.var_c7ace249 = undefined;
    self clientfield::set_to_player("clf_postfx_rccar", 0);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x2 linked
// Checksum 0x954fc184, Offset: 0x1558
// Size: 0x4c
function function_701c25a5() {
    if (is_true(self.var_947d8f8b)) {
        return;
    }
    self.var_947d8f8b = 1;
    self clientfield::set_to_player("clf_postfx_transition", 1);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x2 linked
// Checksum 0xc8bda755, Offset: 0x15b0
// Size: 0x4c
function function_a31136d8() {
    if (!is_true(self.var_947d8f8b)) {
        return;
    }
    self.var_947d8f8b = undefined;
    self clientfield::set_to_player("clf_postfx_transition", 0);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x2 linked
// Checksum 0x5beb330b, Offset: 0x1608
// Size: 0x4c
function function_febff01e() {
    if (is_true(self.var_70a967fd)) {
        return;
    }
    self.var_70a967fd = 1;
    self clientfield::set_to_player("clf_postfx_rooftop_slide", 1);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 0, eflags: 0x0
// Checksum 0x93476696, Offset: 0x1660
// Size: 0x4c
function function_d413059b() {
    if (!is_true(self.var_70a967fd)) {
        return;
    }
    self.var_70a967fd = undefined;
    self clientfield::set_to_player("clf_postfx_rooftop_slide", 0);
}

// Namespace namespace_db2381c4/namespace_db2381c4
// Params 3, eflags: 0x0
// Checksum 0xb52b8f7d, Offset: 0x16b8
// Size: 0xf4
function function_f60520a9(waittime = 0, var_b47dc8ef = 0, end = 0) {
    var_37dc93e2 = 0;
    if (is_true(var_b47dc8ef)) {
        var_37dc93e2 = 2;
    }
    if (waittime > 0) {
        wait(waittime);
    }
    if (is_false(end)) {
        self clientfield::set("clf_rob_snipercam_blood", 1 + var_37dc93e2);
        return;
    }
    self clientfield::set("clf_rob_snipercam_blood", 0 + var_37dc93e2);
}

