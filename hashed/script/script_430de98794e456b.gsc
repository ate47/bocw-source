// Atian COD Tools GSC CW decompiler test
#using script_41123605e9d4d6ac;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\beam_shared.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_e5d0906e;

// Namespace namespace_e5d0906e/namespace_b7a7e548
// Params 0, eflags: 0x0
// Checksum 0x9faade40, Offset: 0x168
// Size: 0x2d4
function init() {
    clientfield::register("world", "" + #"hash_1c7fca29ab341f83", 16000, 3, "int", &function_9f1f304b, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_2800af14ecd6c20c", 16000, 1, "int", &function_ea74c7dc, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_7a2578157328cf2b", 16000, getminbitcountfornum(3), "int", &function_773a9730, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_112d67305f861fe", 16000, 1, "int", &function_3bab499f, 0, 0);
    clientfield::register("world", "" + #"hash_d36f73b86a1e0b4", 16000, 3, "int", &function_b4140818, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_3ce728c2f6b351eb", 16000, 1, "int", &function_f68e78d1, 0, 0);
    clientfield::register("actor", "" + #"hash_ebf3c511bdc3a01", 16000, 1, "counter", &function_81fad569, 0, 0);
    clientfield::register("toplayer", "" + #"hash_441fa29cf6f39e0a", 16000, 1, "counter", &function_5dab9c6d, 0, 0);
}

// Namespace namespace_e5d0906e/namespace_b7a7e548
// Params 7, eflags: 0x0
// Checksum 0x93279a, Offset: 0x448
// Size: 0x19c
function function_9f1f304b(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    switch (bwastimejump) {
    case 0:
        if (isdefined(level.var_e2a95e85)) {
            stopfx(fieldname, level.var_e2a95e85);
            level.var_e2a95e85 = undefined;
        }
        return;
    case 1:
    default:
        str_loc = #"hash_4036f38ad60f61f";
        break;
    case 2:
        str_loc = #"hash_4037038ad60f7d2";
        break;
    case 3:
        str_loc = #"hash_4037138ad60f985";
        break;
    }
    s_loc = struct::get(str_loc);
    level.var_e2a95e85 = playfx(fieldname, #"hash_530080cfd8b5d707", s_loc.origin, anglestoup(s_loc.angles + (90, 0, 0)));
}

// Namespace namespace_e5d0906e/namespace_b7a7e548
// Params 7, eflags: 0x4
// Checksum 0x81469c9e, Offset: 0x5f0
// Size: 0x1b4
function private function_ea74c7dc(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self playsound(fieldname, #"hash_44071fbabf0a1211");
        level.var_66477fdf = playfx(fieldname, #"zm_ai/fx9_orda_spawn_portal_c", self.origin + (0, 0, 7000), anglestoforward(self.angles), anglestoup(self.angles + (90, 0, 0)));
        level.var_636214dd = playfx(fieldname, #"sr/fx9_orda_aether_portal_beam", self.origin, anglestoforward(self.angles), anglestoup(self.angles));
        return;
    }
    if (isdefined(level.var_66477fdf)) {
        stopfx(fieldname, level.var_66477fdf);
    }
    if (isdefined(level.var_636214dd)) {
        stopfx(fieldname, level.var_636214dd);
    }
}

// Namespace namespace_e5d0906e/namespace_b7a7e548
// Params 7, eflags: 0x0
// Checksum 0x7dcaa894, Offset: 0x7b0
// Size: 0x1e4
function function_773a9730(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump <= 0) {
        if (isdefined(level.var_c05f7f6)) {
            beam::kill(level.var_c05f7f6, "tag_origin", self, "j_head_mouth_scale", "beam9_zm_control_point_orda_attack");
            level.var_c05f7f6 delete();
            level.var_c05f7f6 = undefined;
        }
        return;
    }
    var_edb60b5f = struct::get_array(#"control_point_pos");
    foreach (s_origin in var_edb60b5f) {
        if (s_origin.script_int == bwastimejump) {
            break;
        }
    }
    if (!isdefined(s_origin)) {
        return;
    }
    level.var_c05f7f6 = util::spawn_model(fieldname, #"tag_origin", s_origin.origin + (0, 0, 96));
    beam::launch(level.var_c05f7f6, "tag_origin", self, "j_head_mouth_scale", "beam9_zm_control_point_orda_attack", 1);
}

// Namespace namespace_e5d0906e/namespace_b7a7e548
// Params 7, eflags: 0x0
// Checksum 0x2352b34f, Offset: 0x9a0
// Size: 0x196
function function_3bab499f(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        if (!isdefined(self.var_fa63b371)) {
            self playsound(fieldname, #"hash_4b620f72a399de7e");
            self.var_fa63b371 = playfx(fieldname, #"hash_57ae7e6f9140093f", self.origin, anglestoforward(self.angles), anglestoup(self.angles));
        }
        return;
    }
    if (isdefined(self.var_fa63b371)) {
        self playsound(fieldname, #"hash_7ab1d427d19ae56a");
        playfx(fieldname, #"hash_2786498a222adb04", self.origin, anglestoforward(self.angles), anglestoup(self.angles));
        killfx(fieldname, self.var_fa63b371);
        self.var_fa63b371 = undefined;
    }
}

// Namespace namespace_e5d0906e/namespace_b7a7e548
// Params 7, eflags: 0x0
// Checksum 0xbd2c1e5b, Offset: 0xb40
// Size: 0x104
function function_81fad569(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    v_origin = self.origin;
    v_forward = anglestoforward(self.angles);
    v_up = anglestoup(self.angles);
    n_fx = playfx(bwasdemojump, #"sr/fx9_obj_payload_aether_rift", v_origin, v_forward, v_up);
    wait(1);
    playfx(bwasdemojump, #"sr/fx9_obj_payload_aether_rift_close", v_origin, v_forward, v_up);
    killfx(bwasdemojump, n_fx);
}

// Namespace namespace_e5d0906e/namespace_b7a7e548
// Params 7, eflags: 0x0
// Checksum 0xc79eef31, Offset: 0xc50
// Size: 0x400
function function_b4140818(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    var_792c2b75 = array((-1303, -12365, 7365));
    var_f901ab1e = array((1147, -15229, 7409));
    var_b684feb = array((-2603, -15245, 7502));
    if (bwasdemojump === 1) {
        foreach (loc in var_792c2b75) {
            soundloopemitter("evt_gold_alarm_oneshot", loc);
        }
        return;
    }
    if (bwasdemojump === 2) {
        foreach (loc in var_f901ab1e) {
            soundloopemitter("evt_gold_alarm_oneshot", loc);
        }
        return;
    }
    if (bwasdemojump === 3) {
        foreach (loc in var_b684feb) {
            soundloopemitter("evt_gold_alarm_oneshot", loc);
        }
        return;
    }
    if (isdefined(var_792c2b75)) {
        foreach (loc in var_792c2b75) {
            soundstoploopemitter("evt_gold_alarm_oneshot", loc);
        }
    }
    if (isdefined(var_f901ab1e)) {
        foreach (loc in var_f901ab1e) {
            soundstoploopemitter("evt_gold_alarm_oneshot", loc);
        }
    }
    if (isdefined(var_b684feb)) {
        foreach (loc in var_b684feb) {
            soundstoploopemitter("evt_gold_alarm_oneshot", loc);
        }
    }
}

// Namespace namespace_e5d0906e/namespace_b7a7e548
// Params 7, eflags: 0x0
// Checksum 0x83b1242e, Offset: 0x1058
// Size: 0xb4
function function_f68e78d1(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    level.orda = self;
    if (bwasdemojump == 1) {
        self playrenderoverridebundle("rob_orda_dissolve");
    } else {
        self stoprenderoverridebundle("rob_orda_dissolve");
    }
    self thread namespace_cc727a3b::function_5565725d(fieldname, bwasdemojump, "rob_orda_dissolve");
}

// Namespace namespace_e5d0906e/namespace_b7a7e548
// Params 7, eflags: 0x0
// Checksum 0x386ae48e, Offset: 0x1118
// Size: 0x6c
function function_5dab9c6d(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        self playrumbleonentity(fieldname, #"hash_3346eab49e855d23");
    }
}

