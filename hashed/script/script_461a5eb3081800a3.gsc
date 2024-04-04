// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_bff7ce85;

// Namespace namespace_bff7ce85/level_init
// Params 1, eflags: 0x20
// Checksum 0x62dbee82, Offset: 0x370
// Size: 0x33c
function event_handler[level_init] main(*eventstruct) {
    clientfield::register("scriptmover", "" + #"hash_cd445ad9f4974c7", 1, 1, "int", &function_471ae845, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_3c6d30dcb24fbef8", 1, 1, "int", &function_fb755c48, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_51c88d2d00905c2d", 1, 1, "int", &function_6115628b, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_225aa48dd3b91fe7", 1, 1, "int", &function_9fdbcf3f, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_5244004f911badae", 1, 1, "int", &function_5c922fb8, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_3eeee7f3f5bdb9ff", 1, 1, "counter", &function_7b661739, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_18bcf106c476dfeb", 1, 1, "counter", &function_32398bfc, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_186c35405f4624bc", 1, 2, "int", &function_968ccb74, 0, 0);
    clientfield::register("vehicle", "" + #"vehicle_teleport", 1, 1, "counter", &function_b0e818e8, 0, 0);
    util::waitforclient(0);
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 7, eflags: 0x2 linked
// Checksum 0x6ac277cc, Offset: 0x6b8
// Size: 0xfe
function function_6115628b(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        if (!is_true(self.var_4839a4f1)) {
            self.var_3310aa30 = util::playfxontag(fieldname, "sr/fx9_obj_console_defend_light_top_red", self, "tag_origin");
            self.var_4839a4f1 = 1;
        } else {
            util::playfxontag(fieldname, "sr/fx9_obj_console_defend_light_top_green", self, "tag_origin");
        }
        return;
    }
    if (isdefined(self.var_3310aa30)) {
        stopfx(fieldname, self.var_3310aa30);
        self.var_3310aa30 = undefined;
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 7, eflags: 0x2 linked
// Checksum 0x62743687, Offset: 0x7c0
// Size: 0x132
function function_fb755c48(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        if (isdefined(self.var_52b34507)) {
            stopfx(fieldname, self.var_52b34507);
            self.var_52b34507 = undefined;
        }
        if (!is_true(self.var_71751fa0)) {
            self.var_715359c = util::playfxontag(fieldname, "sr/fx9_obj_console_defend_screen_ri_on", self, "tag_origin");
            self.var_71751fa0 = 1;
        }
        return;
    }
    if (isdefined(self.var_715359c)) {
        stopfx(fieldname, self.var_715359c);
        self.var_715359c = undefined;
    }
    self.var_52b34507 = util::playfxontag(fieldname, "sr/fx9_obj_console_defend_screen_ri_flicker", self, "tag_origin");
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 7, eflags: 0x2 linked
// Checksum 0x1f4d4662, Offset: 0x900
// Size: 0x132
function function_471ae845(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        if (isdefined(self.var_c387008e)) {
            stopfx(fieldname, self.var_c387008e);
            self.var_c387008e = undefined;
        }
        if (!is_true(self.var_5e062dbb)) {
            self.var_188a7737 = util::playfxontag(fieldname, "sr/fx9_obj_console_defend_screen_le_on", self, "tag_origin");
            self.var_5e062dbb = 1;
        }
        return;
    }
    if (isdefined(self.var_188a7737)) {
        stopfx(fieldname, self.var_188a7737);
        self.var_188a7737 = undefined;
    }
    self.var_c387008e = util::playfxontag(fieldname, "sr/fx9_obj_console_defend_screen_le_flicker", self, "tag_origin");
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 7, eflags: 0x2 linked
// Checksum 0x366559ed, Offset: 0xa40
// Size: 0x224
function function_9fdbcf3f(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self.var_2a38de43 = util::playfxontag(fieldname, "sr/fx9_obj_console_defend_vat_amb", self, "tag_origin");
        playsound(fieldname, #"hash_4c3810ceaa5ffc33", self.origin + (0, 0, 50));
        self.var_847c4a7c = self playloopsound(#"hash_17bbbc791e17bbc5", undefined, (0, 0, 50));
        return;
    }
    if (isdefined(self.var_2a38de43)) {
        stopfx(fieldname, self.var_2a38de43);
        self.var_2a38de43 = undefined;
    }
    if (isdefined(self.var_847c4a7c)) {
        self stoploopsound(self.var_847c4a7c);
        self.var_847c4a7c = undefined;
    }
    self.var_dc761849 = self playloopsound(#"hash_6510ab3b31555de5", undefined, (0, 0, 50));
    playsound(fieldname, #"hash_789c0cb38cd0abb0", self.origin + (0, 0, 50));
    playsound(fieldname, #"hash_61887905bfa93f51", self.origin + (0, 0, 50));
    util::playfxontag(fieldname, "sr/fx9_obj_console_defend_head_gib", self, "tag_origin");
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 7, eflags: 0x2 linked
// Checksum 0xd3e8588f, Offset: 0xc70
// Size: 0x1b6
function function_5c922fb8(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self endon(#"death");
        self playrenderoverridebundle(#"hash_5e09fb8e239d3dd3");
        self function_78233d29(#"hash_5e09fb8e239d3dd3", "", "Brightness", 1);
        self function_78233d29(#"hash_5e09fb8e239d3dd3", "", "Tint", 1);
        self.var_7cf04bb1 = util::playfxontag(fieldname, "sr/fx9_obj_console_defend_vat_lights", self, "tag_tank_lights_d0");
        playsound(fieldname, #"hash_7907685913534e0", self.origin + (0, 0, 50));
        return;
    }
    self stoprenderoverridebundle(#"hash_5e09fb8e239d3dd3");
    if (isdefined(self.var_7cf04bb1)) {
        stopfx(fieldname, self.var_7cf04bb1);
        self.var_7cf04bb1 = undefined;
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 7, eflags: 0x2 linked
// Checksum 0x715db570, Offset: 0xe30
// Size: 0x64
function function_b0e818e8(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    util::playfxontag(bwastimejump, "sr/fx9_obj_exploitative_teleporting", self, "tag_origin");
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 7, eflags: 0x2 linked
// Checksum 0xc94d94b0, Offset: 0xea0
// Size: 0x106
function function_7b661739(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    playfx(bwastimejump, "explosions/fx8_exp_elec_killstreak", self.origin + (0, 0, 32), anglestoforward(self.angles), anglestoup(self.angles));
    if (isdefined(self.var_6631a14f)) {
        self stoploopsound(self.var_6631a14f);
        self.var_6631a14f = undefined;
    }
    if (isdefined(self.var_6711e9c2)) {
        self stoploopsound(self.var_6711e9c2);
        self.var_6711e9c2 = undefined;
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 7, eflags: 0x0
// Checksum 0x4f9a88d3, Offset: 0xfb0
// Size: 0x106
function function_e15dd642(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    util::playfxontag(bwastimejump, "explosions/fx9_exp_generic_lg", self, "tag_origin");
    playsound(bwastimejump, #"hash_37863fcbc135faa0", self.origin + (0, 0, 50));
    if (isdefined(self.var_6631a14f)) {
        self stoploopsound(self.var_6631a14f);
        self.var_6631a14f = undefined;
    }
    if (isdefined(self.var_6711e9c2)) {
        self stoploopsound(self.var_6711e9c2);
        self.var_6711e9c2 = undefined;
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 7, eflags: 0x2 linked
// Checksum 0xcf96afef, Offset: 0x10c0
// Size: 0xb4
function function_32398bfc(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    util::playfxontag(bwastimejump, "sr/fx9_obj_console_defend_dmg_os", self, "tag_origin");
    playsound(bwastimejump, #"hash_1ddeb8af5a217a6e", self.origin + (0, 0, 50));
    self thread function_356a7b78();
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 0, eflags: 0x2 linked
// Checksum 0xb2cc6935, Offset: 0x1180
// Size: 0x9e
function function_356a7b78() {
    self notify("1ecded79cbe06af5");
    self endon("1ecded79cbe06af5");
    if (!isdefined(self.var_6631a14f)) {
        self.var_6631a14f = self playloopsound(#"hash_13e3f89e22beb505", undefined, (0, 0, 50));
    }
    wait(5);
    if (isdefined(self.var_6631a14f)) {
        self stoploopsound(self.var_6631a14f);
        self.var_6631a14f = undefined;
    }
}

// Namespace namespace_bff7ce85/namespace_cb308359
// Params 7, eflags: 0x2 linked
// Checksum 0xd6ad731b, Offset: 0x1228
// Size: 0x122
function function_968ccb74(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self.var_bccdae1e = util::playfxontag(fieldname, "sr/fx9_obj_console_defend_dmg_state_1", self, "tag_origin");
        return;
    }
    if (bwastimejump == 2) {
        if (isdefined(self.var_bccdae1e)) {
            stopfx(fieldname, self.var_bccdae1e);
        }
        self.var_f3fe9c83 = util::playfxontag(fieldname, "sr/fx9_obj_console_defend_dmg_state_2", self, "tag_origin");
        if (!isdefined(self.var_6711e9c2)) {
            self.var_6711e9c2 = self playloopsound(#"hash_f32639ea79bff56", undefined, (0, 0, 50));
        }
    }
}

