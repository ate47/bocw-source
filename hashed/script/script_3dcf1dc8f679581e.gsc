// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\struct.csc;
#using scripts\core_common\array_shared.csc;
#using scripts\core_common\beam_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_bce659ef;

// Namespace namespace_bce659ef/namespace_bce659ef
// Params 0, eflags: 0x2 linked
// Checksum 0x27ddd9fa, Offset: 0x148
// Size: 0x1fc
function init() {
    clientfield::register("scriptmover", "" + #"hash_73d20572196ff3ab", 1, getminbitcountfornum(3), "int", &function_c3996268, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_44cce9f2e2fd1c96", 1, getminbitcountfornum(2), "int", &function_cc365474, 0, 0);
    clientfield::register("world", "" + #"hash_2e8ad83a0edc8ab4", 1, 1, "int", &function_fb584243, 0, 0);
    clientfield::register("world", "" + #"pap_quest_beam_start", 1, getminbitcountfornum(10), "int", &pap_quest_beam_start, 0, 0);
    clientfield::register("world", "" + #"hash_3fb8ca8c017ba7ac", 1, getminbitcountfornum(10), "int", &function_c6f8ff7b, 0, 0);
}

// Namespace namespace_bce659ef/namespace_bce659ef
// Params 7, eflags: 0x2 linked
// Checksum 0xda218c1e, Offset: 0x350
// Size: 0x374
function function_c3996268(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(fieldname);
    if (bwastimejump == 1) {
        self.var_aa4114ee = function_239993de(fieldname, #"hash_328cb5a90073aa39", self, "tag_origin");
        self.var_4b0f392d = self playloopsound(#"hash_144c0f8c91a1dbbe");
        return;
    }
    if (bwastimejump == 2) {
        if (isdefined(self.var_4b0f392d)) {
            self stoploopsound(self.var_4b0f392d);
            self.var_4b0f392d = undefined;
        }
        self playsound(fieldname, #"hash_3a989a32ea5a4c2f");
        self.var_3dec4e8f = self playloopsound(#"hash_54edcd34dafdb14c");
        playfx(fieldname, #"hash_3cce6d727537b2d6", self gettagorigin("tag_origin") + (0, 0, 28), anglestoforward(self.angles), anglestoup(self.angles));
        wait(1);
        self.var_f7aa5696 = playfx(fieldname, #"hash_29bb1f45e23e48ac", self gettagorigin("tag_origin") + (0, 0, 28), anglestoforward(self.angles), anglestoup(self.angles));
        return;
    }
    if (bwastimejump == 3) {
        if (isdefined(self.var_aa4114ee)) {
            stopfx(fieldname, self.var_aa4114ee);
        }
        if (isdefined(self.var_f7aa5696)) {
            stopfx(fieldname, self.var_f7aa5696);
        }
        if (isdefined(self.var_4b0f392d)) {
            self stoploopsound(self.var_4b0f392d);
            self.var_4b0f392d = undefined;
        }
        if (isdefined(self.var_3dec4e8f)) {
            self stoploopsound(self.var_3dec4e8f);
            self.var_3dec4e8f = undefined;
        }
        function_239993de(fieldname, #"hash_41319f596f0bea07", self, "tag_origin");
        self playsound(fieldname, #"hash_10f5dcd17a0099d6");
    }
}

// Namespace namespace_bce659ef/namespace_bce659ef
// Params 7, eflags: 0x2 linked
// Checksum 0x87271a34, Offset: 0x6d0
// Size: 0x222
function function_cc365474(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        if (!isdefined(self.var_4e35f286)) {
            self.var_4e35f286 = util::playfxontag(fieldname, #"hash_c863459090fe55f", self, "j_spine4");
        }
        if (!isdefined(self.var_a863bc25)) {
            self.var_a863bc25 = self playloopsound(#"hash_612580e60d0a183f");
        }
        return;
    }
    if (isdefined(self.var_4e35f286)) {
        deletefx(fieldname, self.var_4e35f286);
        self.var_4e35f286 = undefined;
    }
    if (isdefined(self.var_a863bc25)) {
        self stoploopsound(self.var_a863bc25);
    }
    if (isdefined(self.var_d1c055ab)) {
        self playsound(fieldname, #"hash_10989803ee973a6e");
        self stoploopsound(self.var_d1c055ab);
    }
    if (bwastimejump == 2) {
        self.var_4e35f286 = util::playfxontag(fieldname, #"hash_1ece705913b0c51f", self, "j_spine4");
        if (!isdefined(self.var_d1c055ab)) {
            self playsound(fieldname, #"hash_77657e597a6c430c");
            self.var_d1c055ab = self playloopsound(#"hash_15002353c0e436f5");
        }
    }
}

// Namespace namespace_bce659ef/namespace_bce659ef
// Params 7, eflags: 0x2 linked
// Checksum 0xacdda51f, Offset: 0x900
// Size: 0x1bc
function function_fb584243(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    s_portal = struct::get("s_pap_portal_fx");
    if (bwastimejump) {
        if (!isdefined(s_portal.var_8eb4e749)) {
            s_portal.var_8eb4e749 = playfx(fieldname, #"hash_7e0e122e235d355e", s_portal.origin, anglestoforward(s_portal.angles), anglestoup(s_portal.angles));
        }
        playsound(fieldname, #"hash_3a58ade572eb339e", s_portal.origin);
        soundloopemitter(#"hash_1b27cd2897a39322", s_portal.origin);
        return;
    }
    if (isdefined(s_portal.var_8eb4e749)) {
        stopfx(fieldname, s_portal.var_8eb4e749);
        s_portal.var_8eb4e749 = undefined;
    }
    playsound(fieldname, #"hash_147060f9d5a3cb8b", s_portal.origin);
    soundstoploopemitter(#"hash_1b27cd2897a39322", s_portal.origin);
}

// Namespace namespace_bce659ef/namespace_bce659ef
// Params 7, eflags: 0x2 linked
// Checksum 0x3ebf2605, Offset: 0xac8
// Size: 0x244
function pap_quest_beam_start(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    a_s_start = struct::get_array("pap_quest_beam_start");
    a_s_start = array::sort_by_script_int(a_s_start, 1);
    var_c2f24bc = struct::get_array("pap_quest_beam_end");
    var_c2f24bc = array::sort_by_script_int(var_c2f24bc, 1);
    n_index = bwastimejump - 1;
    s_start = a_s_start[n_index];
    s_end = var_c2f24bc[n_index];
    if (isdefined(s_start) && isdefined(s_end) && !(isdefined(s_start.mdl_start) && isdefined(s_end.var_b5d35012))) {
        v_start_origin = s_start.origin;
        var_e64db026 = s_end.origin;
        v_start_angles = vectortoangles(v_start_origin - var_e64db026);
        v_end_angles = vectortoangles(var_e64db026 - v_start_origin);
        s_start.mdl_start = util::spawn_model(fieldname, #"tag_origin", v_start_origin, v_start_angles);
        s_end.var_b5d35012 = util::spawn_model(fieldname, #"tag_origin", var_e64db026, v_end_angles);
        level beam::launch(s_start.mdl_start, "tag_origin", s_end.var_b5d35012, "tag_origin", "beam9_zm_platinum_pap_beam", 1);
    }
}

// Namespace namespace_bce659ef/namespace_bce659ef
// Params 7, eflags: 0x2 linked
// Checksum 0xf238171c, Offset: 0xd18
// Size: 0x194
function function_c6f8ff7b(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    a_s_start = struct::get_array("pap_quest_beam_start");
    a_s_start = array::sort_by_script_int(a_s_start, 1);
    var_c2f24bc = struct::get_array("pap_quest_beam_end");
    var_c2f24bc = array::sort_by_script_int(var_c2f24bc, 1);
    n_index = bwastimejump - 1;
    s_start = a_s_start[n_index];
    s_end = var_c2f24bc[n_index];
    if (isdefined(s_start.mdl_start) && isdefined(s_end) && isdefined(s_start) && isdefined(s_end.var_b5d35012)) {
        level beam::kill(s_start.mdl_start, "tag_origin", s_end.var_b5d35012, "tag_origin", "beam9_zm_platinum_pap_beam");
        s_start.mdl_start delete();
        s_end.var_b5d35012 delete();
    }
}

