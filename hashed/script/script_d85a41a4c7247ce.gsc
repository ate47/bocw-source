// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace namespace_fa1c4f0a;

// Namespace namespace_fa1c4f0a/level_init
// Params 1, eflags: 0x20
// Checksum 0xa51c9971, Offset: 0x460
// Size: 0x40c
function event_handler[level_init] main(*eventstruct) {
    clientfield::register("scriptmover", "" + #"portal", 1, 1, "int", &portal_fx, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_2a7da9a87ecef87b", 1, 1, "int", &function_36ab0d37, 0, 0);
    clientfield::register("scriptmover", "" + #"payload_teleport", 1, 2, "int", &function_5884461e, 0, 0);
    clientfield::register("toplayer", "" + #"hash_19f93b2cb70ea2c5", 1, 1, "int", &function_fa7a206b, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_75190371f51baf5f", 1, 1, "counter", &function_96636479, 0, 0);
    clientfield::register("vehicle", "" + #"hash_85dd1e407a282d9", 1, 1, "int", &function_691412b4, 0, 0);
    clientfield::register("vehicle", "" + #"hash_738f0a13dc61e2ec", 1, 1, "counter", &function_612a9925, 0, 0);
    clientfield::register("vehicle", "" + #"hash_711d7caaed939f5f", 1, 1, "int", &function_979e0ba7, 0, 0);
    clientfield::register("vehicle", "" + #"hash_34f922424fc18bfb", 1, 1, "counter", &function_c9a7fbd9, 0, 0);
    clientfield::register("vehicle", "" + #"hash_db052f565349c0d", 1, 1, "int", &function_89fa474d, 0, 0);
    clientfield::register("vehicle", "" + #"hash_357ba456a97117b8", 1, 1, "int", &function_41bc60b6, 0, 0);
    callback::on_vehicle_spawned(&on_vehicle_spawned);
    util::waitforclient(0);
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 1, eflags: 0x6 linked
// Checksum 0x2fab930e, Offset: 0x878
// Size: 0xa4
function private on_vehicle_spawned(*localclientnum) {
    if (self.vehicletype === #"hash_d069dee6a0076c8") {
        if (self function_b835102b()) {
            self function_3f24c5a(1);
        }
        self.stunnedcallback = &stunnedcallback;
        self function_1f0c7136(0);
        self setanim("p9_fxanim_sv_payload_atv_static_anim");
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 7, eflags: 0x2 linked
// Checksum 0x7d48fa19, Offset: 0x928
// Size: 0xce
function function_41bc60b6(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        if (isdefined(self gettagorigin("tag_body_animate"))) {
            self.var_ced8ba73 = function_239993de(fieldname, "sr/fx9_obj_payload_aether_portal_veh_interact_lg", self, "tag_body_animate");
        }
        return;
    }
    if (isdefined(self.var_ced8ba73)) {
        stopfx(fieldname, self.var_ced8ba73);
        self.var_ced8ba73 = undefined;
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 7, eflags: 0x2 linked
// Checksum 0x32e64136, Offset: 0xa00
// Size: 0x2c2
function function_89fa474d(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        if (isdefined(self.var_956e61df)) {
            killfx(fieldname, self.var_956e61df);
            self.var_956e61df = undefined;
        }
        if (isdefined(self gettagorigin("tag_body_animate"))) {
            self.var_bd74ce24 = function_239993de(fieldname, "sr/fx9_veh_payload_light_side", self, "tag_body_animate");
        }
        if (isdefined(self.var_cba3a992)) {
            killfx(fieldname, self.var_cba3a992);
            self.var_cba3a992 = undefined;
        }
        if (isdefined(self gettagorigin("tag_fx_headlight_left"))) {
            self.var_d811dda6 = function_239993de(fieldname, "sr/fx9_veh_payload_light_top_green", self, "tag_fx_headlight_left");
        }
        if (isdefined(self.var_e818b36c)) {
            stopfx(fieldname, self.var_e818b36c);
            self.var_e818b36c = undefined;
        }
        wait(0.25);
        if (isdefined(self.var_e818b36c)) {
            stopfx(fieldname, self.var_e818b36c);
            self.var_e818b36c = undefined;
        }
        return;
    }
    if (isdefined(self.var_bd74ce24)) {
        killfx(fieldname, self.var_bd74ce24);
        self.var_bd74ce24 = undefined;
    }
    if (isdefined(self gettagorigin("tag_body_animate"))) {
        self.var_956e61df = function_239993de(fieldname, "sr/fx9_veh_payload_light_brake_side", self, "tag_body_animate");
    }
    if (isdefined(self.var_d811dda6)) {
        killfx(fieldname, self.var_d811dda6);
        self.var_d811dda6 = undefined;
    }
    if (isdefined(self gettagorigin("tag_fx_headlight_left"))) {
        self.var_cba3a992 = function_239993de(fieldname, "sr/fx9_veh_payload_light_top_red", self, "tag_fx_headlight_left");
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 7, eflags: 0x2 linked
// Checksum 0x77e869c1, Offset: 0xcd0
// Size: 0x294
function function_c9a7fbd9(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    if (isalive(self)) {
        self clearanim("p9_fxanim_sv_payload_atv_loop_anim", 0.2);
    }
    wait(0.15);
    if (isalive(self)) {
        self setanim("p9_fxanim_sv_payload_atv_extend_anim");
    }
    wait(getanimlength("p9_fxanim_sv_payload_atv_extend_anim") + 0.5);
    if (isalive(self)) {
        self clearanim("p9_fxanim_sv_payload_atv_extend_anim", 0.2);
    }
    wait(0.15);
    if (isalive(self)) {
        self setanim("p9_fxanim_sv_payload_atv_extend_loop_anim");
    }
    wait(1);
    if (isalive(self)) {
        self clearanim("p9_fxanim_sv_payload_atv_extend_loop_anim", 0.2);
    }
    wait(0.15);
    if (isalive(self)) {
        self setanim("p9_fxanim_sv_payload_atv_retract_anim");
    }
    wait(getanimlength("p9_fxanim_sv_payload_atv_retract_anim") + 0.5);
    if (isalive(self)) {
        self clearanim("p9_fxanim_sv_payload_atv_retract_anim", 0.25);
    }
    wait(0.15);
    if (isalive(self)) {
        self setanim("p9_fxanim_sv_payload_atv_loop_anim");
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 7, eflags: 0x2 linked
// Checksum 0x4c0dcfdb, Offset: 0xf70
// Size: 0x1c4
function function_979e0ba7(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    if (isalive(self)) {
        self clearanim("p9_fxanim_sv_payload_atv_static_anim", 0.2);
    }
    wait(0.15);
    if (isalive(self)) {
        self setanim("p9_fxanim_sv_payload_atv_initiate_anim");
    }
    wait(getanimlength("p9_fxanim_sv_payload_atv_initiate_anim") + 1);
    if (isalive(self)) {
        self clearanim("p9_fxanim_sv_payload_atv_initiate_anim", 0.2);
    }
    wait(0.15);
    if (isalive(self)) {
        self setanim("p9_fxanim_sv_payload_atv_loop_anim");
        v_org = self gettagorigin("tag_camera_d0");
        if (isdefined(v_org)) {
            function_239993de(bwastimejump, "sr/fx9_veh_payload_light_camera", self, "tag_camera_d0");
        }
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 7, eflags: 0x2 linked
// Checksum 0xa6428e11, Offset: 0x1140
// Size: 0x54
function function_612a9925(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self function_1f0c7136(3);
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 2, eflags: 0x2 linked
// Checksum 0x7a9f4140, Offset: 0x11a0
// Size: 0x2c
function stunnedcallback(*localclientnum, val) {
    self setstunned(val);
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 7, eflags: 0x2 linked
// Checksum 0x2fa7d306, Offset: 0x11d8
// Size: 0x10e
function function_5884461e(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(fieldname);
    if (bwastimejump == 1) {
        function_239993de(fieldname, "sr/fx9_obj_payload_teleport_depart", self, "tag_origin");
        return;
    }
    if (bwastimejump == 2) {
        self.var_c25fe395 = util::playfxontag(fieldname, "sr/fx9_obj_payload_aether_portal_pillar", self, "tag_origin");
        return;
    }
    if (isdefined(self.var_c25fe395)) {
        stopfx(fieldname, self.var_c25fe395);
        self.var_c25fe395 = undefined;
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 7, eflags: 0x2 linked
// Checksum 0xc4ba6a1f, Offset: 0x12f0
// Size: 0x64
function function_96636479(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    util::playfxontag(bwastimejump, "sr/fx9_obj_payload_aether_portal_exp_buildup", self, "tag_origin");
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 7, eflags: 0x2 linked
// Checksum 0x91ff812b, Offset: 0x1360
// Size: 0x1bc
function function_fa7a206b(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    if (bwastimejump == 1) {
        if (function_65b9eb0f(fieldname)) {
            return;
        }
        self postfx::playpostfxbundle(#"pstfx_speedblur");
        self function_116b95e5(#"pstfx_speedblur", #"inner mask", 0.3);
        self function_116b95e5(#"pstfx_speedblur", #"outer mask", 0.8);
        self thread function_d233fb1f();
        return;
    }
    if (function_65b9eb0f(fieldname)) {
        return;
    }
    self notify(#"hash_639f680ae2bb2ff");
    wait(0.5);
    self function_116b95e5(#"pstfx_speedblur", #"blur", 0);
    self postfx::exitpostfxbundle(#"pstfx_speedblur");
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 0, eflags: 0x2 linked
// Checksum 0xc0205c2f, Offset: 0x1528
// Size: 0xc0
function function_d233fb1f() {
    self endon(#"death", #"disconnect", #"hash_639f680ae2bb2ff");
    for (var_9b8a1091 = 0.01; true; var_9b8a1091 += 0.01) {
        self function_116b95e5(#"pstfx_speedblur", #"blur", var_9b8a1091);
        wait(0.08);
        if (var_9b8a1091 < 0.3) {
        }
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 7, eflags: 0x2 linked
// Checksum 0x91499c80, Offset: 0x15f0
// Size: 0xa4
function portal_fx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self.var_ae8b25ed = util::playfxontag(fieldname, "sr/fx9_obj_payload_aether_portal", self, "tag_origin");
        return;
    }
    if (isdefined(self.var_ae8b25ed)) {
        stopfx(fieldname, self.var_ae8b25ed);
    }
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 7, eflags: 0x2 linked
// Checksum 0x1c1c677c, Offset: 0x16a0
// Size: 0xcc
function function_36ab0d37(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self.var_2d3c8170 = util::playfxontag(fieldname, "sr/fx9_obj_payload_aether_rift", self, "tag_origin");
        return;
    }
    if (isdefined(self.var_2d3c8170)) {
        stopfx(fieldname, self.var_2d3c8170);
    }
    function_239993de(fieldname, "sr/fx9_obj_payload_aether_rift_close", self, "tag_origin");
}

// Namespace namespace_fa1c4f0a/namespace_fa1c4f0a
// Params 7, eflags: 0x2 linked
// Checksum 0xc8d4a48f, Offset: 0x1778
// Size: 0x12a
function function_691412b4(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    if (bwastimejump == 1) {
        if (isdefined(self gettagorigin("tag_body_animate"))) {
            self.var_942f8233 = util::playfxontag(fieldname, "sr/fx9_obj_payload_aether_portal_veh_trail", self, "tag_origin");
        }
        return;
    }
    if (isdefined(self.var_942f8233)) {
        stopfx(fieldname, self.var_942f8233);
    }
    if (isdefined(self gettagorigin("tag_body_animate"))) {
        self.var_e818b36c = util::playfxontag(fieldname, "sr/fx9_obj_payload_aether_portal_veh_trail_impact", self, "tag_origin");
    }
}

