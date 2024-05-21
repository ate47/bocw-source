// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\struct.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\beam_shared.csc;

#namespace namespace_b2add33c;

// Namespace namespace_b2add33c/level_init
// Params 1, eflags: 0x20
// Checksum 0xa07191ea, Offset: 0x338
// Size: 0x1dc
function event_handler[level_init] main(*eventstruct) {
    clientfield::register("scriptmover", "" + #"hash_699685336205339b", 1, 1, "int", &function_6020a772, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_1cf7ea5253c0a857", 1, 1, "int", &function_a1fa260e, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_2833af7211f19903", 1, 2, "int", &function_8c61edee, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_7434dc21c6d7b515", 1, 2, "int", &function_3f561fa0, 0, 0);
    clientfield::register("vehicle", "" + #"hash_2c70ab0c21e69749", 1, 1, "int", &function_5bdf2437, 0, 0);
    util::waitforclient(0);
}

// Namespace namespace_b2add33c/namespace_b2add33c
// Params 7, eflags: 0x2 linked
// Checksum 0x9d9eab28, Offset: 0x520
// Size: 0x10e
function function_6020a772(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump === 1) {
        self.var_d6775c7 = util::playfxontag(fieldname, "sr/fx9_harvester_extraction_full_red", self, "tag_origin");
        self.var_eaf10c71 = self playloopsound(#"hash_62a04f01f0efe5c7");
        return;
    }
    if (isdefined(self.var_d6775c7)) {
        stopfx(fieldname, self.var_d6775c7);
        self.var_d6775c7 = undefined;
    }
    if (isdefined(self.var_eaf10c71)) {
        self stoploopsound(self.var_eaf10c71);
        self.var_eaf10c71 = undefined;
    }
}

// Namespace namespace_b2add33c/namespace_b2add33c
// Params 7, eflags: 0x2 linked
// Checksum 0xe7f4711f, Offset: 0x638
// Size: 0x10e
function function_a1fa260e(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump === 1) {
        self.var_ab01a657 = util::playfxontag(fieldname, "sr/fx9_harvester_extraction_full", self, "tag_origin");
        self.var_d7fa595b = self playloopsound(#"hash_1be8fbcbcd0a09e1");
        return;
    }
    if (isdefined(self.var_ab01a657)) {
        stopfx(fieldname, self.var_ab01a657);
        self.var_ab01a657 = undefined;
    }
    if (isdefined(self.var_d7fa595b)) {
        self stoploopsound(self.var_d7fa595b);
        self.var_d7fa595b = undefined;
    }
}

// Namespace namespace_b2add33c/namespace_b2add33c
// Params 7, eflags: 0x2 linked
// Checksum 0xeb5bf3f5, Offset: 0x750
// Size: 0x45e
function function_8c61edee(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self.var_660dd3dd = util::playfxontag(fieldname, "sr/fx9_harvester_extraction_charge", self, "tag_origin");
        playsound(fieldname, #"hash_117e07746b74905a", self.origin + (0, 0, 25));
        var_b2632866 = struct::get_array("vortex", "targetname");
        if (isdefined(var_b2632866)) {
            var_f3133091 = arraygetclosest(self.origin, var_b2632866);
        }
        v_up = vectornormalize(anglestoup(self.angles)) * 40 + self.origin;
        if (isdefined(var_f3133091) && isdefined(v_up)) {
            self.e_vortex = util::spawn_model(fieldname, "tag_origin", var_f3133091.origin + (0, 0, 50));
            self.var_b5bdd2b9 = util::spawn_model(fieldname, "tag_origin", v_up);
        }
        wait(0.1);
        if (isdefined(self) && isdefined(self.e_vortex) && isdefined(self.var_b5bdd2b9)) {
            self.var_b5bdd2b9.angles = (-90, 0, 0);
            if (bwastimejump == 1) {
                self.var_40433812 = util::playfxontag(fieldname, "sr/fx9_harvester_extraction_source_01", self.e_vortex, "tag_origin");
                self.var_221b7b06 = util::playfxontag(fieldname, "sr/fx9_harvester_extraction_target_01", self.var_b5bdd2b9, "tag_origin");
                self.var_b3f4d513 = self playloopsound(#"hash_61133944ebd5c4ea");
            } else {
                wait(0.2);
                if (isdefined(self) && isdefined(self.e_vortex) && isdefined(self.var_b5bdd2b9)) {
                    self.var_40433812 = util::playfxontag(fieldname, "sr/fx9_harvester_extraction_source_02", self.e_vortex, "tag_origin");
                    self.var_221b7b06 = util::playfxontag(fieldname, "sr/fx9_harvester_extraction_target_02", self.var_b5bdd2b9, "tag_origin");
                    self.var_b3f4d513 = self playloopsound(#"hash_61133944ebd5c4ea");
                }
            }
        }
        return;
    }
    if (isdefined(self.var_40433812)) {
        stopfx(fieldname, self.var_40433812);
        self.var_40433812 = undefined;
    }
    if (isdefined(self.var_221b7b06)) {
        stopfx(fieldname, self.var_221b7b06);
        self.var_221b7b06 = undefined;
    }
    if (isdefined(self.var_b3f4d513)) {
        self stoploopsound(self.var_b3f4d513);
        self.var_b3f4d513 = undefined;
    }
    wait(0.1);
    if (isdefined(self) && isdefined(self.var_660dd3dd)) {
        stopfx(fieldname, self.var_660dd3dd);
        self.var_660dd3dd = undefined;
    }
}

// Namespace namespace_b2add33c/namespace_b2add33c
// Params 7, eflags: 0x2 linked
// Checksum 0xeab5384f, Offset: 0xbb8
// Size: 0x16e
function function_5bdf2437(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self.var_e794d6cd = util::playfxontag(fieldname, "sr/fx9_obj_dark_aether_tornado_prompt", self, "tag_origin");
        playsound(fieldname, #"hash_cc9ea7c69058a60", self.origin + (0, 0, 25));
        if (isdefined(self gettagorigin("tag_body"))) {
            self.var_4ff7bf25 = util::playfxontag(fieldname, "vehicle/fx9_vdest_emp_ru_transport_truck", self, "tag_origin");
        }
        return;
    }
    if (isdefined(self.var_e794d6cd)) {
        stopfx(fieldname, self.var_e794d6cd);
        self.var_e794d6cd = undefined;
    }
    if (isdefined(self.var_4ff7bf25)) {
        stopfx(fieldname, self.var_4ff7bf25);
        self.var_4ff7bf25 = undefined;
    }
}

// Namespace namespace_b2add33c/namespace_b2add33c
// Params 7, eflags: 0x2 linked
// Checksum 0x34ca1afd, Offset: 0xd30
// Size: 0x41c
function function_3f561fa0(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump === 1) {
        self.var_3c825826 = util::playfxontag(fieldname, "sr/fx9_obj_dark_aether_tornado_stage_01", self, "tag_origin");
        self.var_f2e155e9 = util::playfxontag(fieldname, "sr/fx9_obj_dark_aether_tornado_range", self, "tag_origin");
        playsound(fieldname, #"hash_1675f638be9b3ef2", self.origin + (0, 0, 25));
        self.var_6ca1bf85 = self playloopsound(#"hash_2bd7c24a8903f88d");
        return;
    }
    if (bwastimejump === 2) {
        if (isdefined(self.var_3c825826)) {
            stopfx(fieldname, self.var_3c825826);
            self.var_3c825826 = undefined;
        }
        if (isdefined(self.var_6ca1bf85)) {
            self stoploopsound(self.var_6ca1bf85);
            self.var_6ca1bf85 = undefined;
        }
        if (isdefined(self)) {
            self.var_3c825826 = util::playfxontag(fieldname, "sr/fx9_obj_dark_aether_tornado_stage_02", self, "tag_origin");
            playsound(fieldname, #"hash_1675f638be9b3ef2", self.origin + (0, 0, 25));
            self.var_6ca1bf85 = self playloopsound(#"hash_2bd7bf4a8903f374");
        }
        wait(10);
        if (isdefined(self.var_3c825826)) {
            stopfx(fieldname, self.var_3c825826);
            self.var_3c825826 = undefined;
        }
        if (isdefined(self.var_6ca1bf85)) {
            self stoploopsound(self.var_6ca1bf85);
            self.var_6ca1bf85 = undefined;
        }
        if (isdefined(self)) {
            self.var_3c825826 = util::playfxontag(fieldname, "sr/fx9_obj_dark_aether_tornado_stage_03", self, "tag_origin");
            playsound(fieldname, #"hash_1675f638be9b3ef2", self.origin + (0, 0, 25));
            self.var_6ca1bf85 = self playloopsound(#"hash_2bd7c04a8903f527");
        }
        return;
    }
    if (isdefined(self.var_3c825826)) {
        stopfx(fieldname, self.var_3c825826);
        self.var_3c825826 = undefined;
    }
    if (isdefined(self.var_f2e155e9)) {
        stopfx(fieldname, self.var_f2e155e9);
        self.var_f2e155e9 = undefined;
    }
    if (isdefined(self.var_6ca1bf85)) {
        self stoploopsound(self.var_6ca1bf85);
        self.var_6ca1bf85 = undefined;
    }
    playsound(fieldname, #"hash_266828a54f3b3f36", self.origin + (0, 0, 25));
    util::playfxontag(fieldname, "sr/fx9_obj_dark_aether_tornado_ending", self, "tag_origin");
}

