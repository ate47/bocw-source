// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\postfx_shared.csc;
#using script_669cea9418ec7fe2;
#using scripts\core_common\struct.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\beam_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_4e8d47b1;

// Namespace namespace_4e8d47b1/namespace_4e8d47b1
// Params 0, eflags: 0x2 linked
// Checksum 0x438d8f3c, Offset: 0x178
// Size: 0x75c
function init() {
    clientfield::register("toplayer", "" + #"hash_529b556128a8587d", 24000, 1, "int", &function_ff7f32ae, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_4a3af1d46621f069", 24000, 1, "int", &function_910d2164, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_45d9cedaf4fb4aa2", 24000, 1, "int", &function_7e8bc554, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_4a7733d2f4b25e81", 24000, 1, "int", &function_b42a918, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_41ba39a474a3503f", 24000, getminbitcountfornum(2), "int", &function_adfd1e5b, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_2951f2625695bd6b", 24000, getminbitcountfornum(2), "int", &function_7c865e3a, 0, 0);
    clientfield::register("world", "" + #"hash_74c14ea3fcc781ea", 24000, getminbitcountfornum(2), "int", &function_fa856271, 0, 0);
    clientfield::register("actor", "" + #"hash_636aa4e3dd50512a", 24000, 1, "counter", &function_d51885ac, 0, 0);
    clientfield::register("actor", "" + #"hash_498f233d25448db3", 24000, 1, "int", &function_f0e25204, 0, 0);
    clientfield::register("actor", "" + #"hash_5f6e0119d9eee00c", 24000, getminbitcountfornum(2), "int", &function_1e07ed6f, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_78efd0fabb77e1ea", 24000, 1, "int", &function_ab446ca9, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_7006a5e1e75527f3", 24000, 1, "int", &function_92c90a4f, 0, 0);
    clientfield::register("toplayer", "" + #"hash_45456ed33ab0037a", 24000, getminbitcountfornum(2), "int", &function_55488fca, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_bae11639a0dd182", 24000, 1, "int", &function_8f860b91, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_57e0dbfd7a91b69d", 24000, 1, "int", &function_90383e67, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_7cd1cb3f455a77cf", 24000, 1, "int", &function_63f6e3bf, 0, 0);
    clientfield::register("world", "" + #"hash_4b15b3ade2772206", 24000, getminbitcountfornum(2), "int", &function_ab0de377, 0, 0);
    clientfield::register("toplayer", "" + #"hash_7857b61586fd957b", 24000, 1, "int", &function_5477ed5b, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_765ec7ef8a874f2a", 24000, 1, "int", &function_7c29d2b9, 0, 0);
    clientfield::register("world", "" + #"hash_3c1773045b663eac", 24000, 1, "counter", &function_ec198408, 0, 0);
    level.var_ecc60e04 = zm_corrupted_health_bar::register();
}

// Namespace namespace_4e8d47b1/namespace_4e8d47b1
// Params 7, eflags: 0x2 linked
// Checksum 0xa7f6844, Offset: 0x8e0
// Size: 0x74
function function_ff7f32ae(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        self setdamagedirectionindicator(1);
        return;
    }
    self setdamagedirectionindicator(0);
}

// Namespace namespace_4e8d47b1/namespace_4e8d47b1
// Params 7, eflags: 0x2 linked
// Checksum 0x3b5a28ee, Offset: 0x960
// Size: 0x286
function function_910d2164(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        if (!isdefined(self.var_23e0d95c)) {
            self.var_23e0d95c = util::playfxontag(fieldname, #"sr/fx9_hvt_aether_portal_spawn", self, "tag_origin");
        }
        if (!isdefined(self.var_2095c8d1)) {
            self playsound(fieldname, #"hash_2acf7e3b4d9caf20");
            self.var_2095c8d1 = self playloopsound(#"hash_a0772e7b77f2cd0");
        }
        wait(1);
        if (isdefined(self.var_23e0d95c)) {
            killfx(fieldname, self.var_23e0d95c);
            self.var_23e0d95c = undefined;
        }
        if (!isdefined(self.var_b55b7d2c)) {
            self.var_b55b7d2c = util::playfxontag(fieldname, #"sr/fx9_hvt_aether_move_trail", self, "tag_origin");
        }
        return;
    }
    if (isdefined(self.var_23e0d95c)) {
        killfx(fieldname, self.var_23e0d95c);
        self.var_23e0d95c = undefined;
    }
    if (isdefined(self.var_2095c8d1)) {
        self playsound(fieldname, #"hash_60da5cd1a4e517a4");
        self stoploopsound(self.var_2095c8d1);
        self.var_2095c8d1 = undefined;
    }
    if (isdefined(self.var_b55b7d2c)) {
        playfx(fieldname, #"sr/fx9_hvt_aether_portal_close", self.origin, anglestoforward(self.angles), anglestoup(self.angles));
        stopfx(fieldname, self.var_b55b7d2c);
        self.var_b55b7d2c = undefined;
    }
}

// Namespace namespace_4e8d47b1/namespace_4e8d47b1
// Params 7, eflags: 0x2 linked
// Checksum 0x698080b9, Offset: 0xbf0
// Size: 0x16e
function function_7e8bc554(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        if (!isdefined(level.var_75a7d6)) {
            level.var_75a7d6 = spawnstruct();
        }
        level.var_75a7d6.var_b39864d6 = self;
        if (!isdefined(self.var_c0a463e1)) {
            self.var_c0a463e1 = util::playfxontag(fieldname, #"hash_5be13a4419fa55fb", self, "j_spine4");
        }
        if (!isdefined(self.var_335c2bf0)) {
            self.var_335c2bf0 = util::playfxontag(fieldname, #"hash_4804636147cd94f2", self, "tag_eye");
        }
        return;
    }
    if (isdefined(self.var_c0a463e1)) {
        stopfx(fieldname, self.var_c0a463e1);
        self.var_c0a463e1 = undefined;
    }
    if (isdefined(self.var_335c2bf0)) {
        stopfx(fieldname, self.var_335c2bf0);
        self.var_335c2bf0 = undefined;
    }
}

// Namespace namespace_4e8d47b1/namespace_4e8d47b1
// Params 7, eflags: 0x2 linked
// Checksum 0xac0c3b6a, Offset: 0xd68
// Size: 0x1c4
function function_b42a918(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        if (!isdefined(self.var_491b980f)) {
            self playsound(fieldname, #"hash_5bde8748cc69381b");
            self.var_491b980f = self playloopsound(#"hash_5bbf9148cc4e988a");
        }
        level thread function_b1dafc36(fieldname, self);
        return;
    }
    self notify(#"shield_down");
    if (isdefined(self.var_7a65e941)) {
        stopfx(fieldname, self.var_7a65e941);
        self.var_7a65e941 = undefined;
        playfx(fieldname, #"hash_1dd0c8b4b0fe470f", self.origin, anglestoforward(self.angles), anglestoup(self.angles));
    }
    if (isdefined(self.var_491b980f)) {
        self stoploopsound(self.var_491b980f);
        self.var_491b980f = undefined;
        self playsound(fieldname, #"hash_72b7532d47bd53ee");
    }
}

// Namespace namespace_4e8d47b1/namespace_4e8d47b1
// Params 2, eflags: 0x2 linked
// Checksum 0x3e624174, Offset: 0xf38
// Size: 0x14a
function function_b1dafc36(localclientnum, mdl_shield) {
    if (!(isdefined(localclientnum) && isdefined(mdl_shield))) {
        return;
    }
    level endon(#"end_game");
    mdl_shield endon(#"death", #"shield_down");
    if (!isdefined(mdl_shield.var_7a65e941)) {
        playfx(localclientnum, #"hash_c315bd992f8066e", mdl_shield.origin, anglestoforward(mdl_shield.angles), anglestoup(mdl_shield.angles));
        wait(0.1);
        if (!isdefined(mdl_shield.var_7a65e941)) {
            mdl_shield.var_7a65e941 = playfx(localclientnum, #"hash_5ebd1476e8d77d48", mdl_shield.origin, anglestoforward(mdl_shield.angles), anglestoup(mdl_shield.angles));
        }
    }
}

// Namespace namespace_4e8d47b1/namespace_4e8d47b1
// Params 7, eflags: 0x2 linked
// Checksum 0xc69f41d3, Offset: 0x1090
// Size: 0x2d6
function function_adfd1e5b(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump == 1) {
        if (!isdefined(self.var_9603e45f)) {
            self.var_9603e45f = playfx(fieldname, #"hash_111ade9d8d5d637a", self.origin, anglestoforward(self.angles), anglestoup(self.angles));
        }
        if (!isdefined(self.var_15039a49)) {
            self playsound(fieldname, #"hash_2acf7e3b4d9caf20");
            self.var_15039a49 = self playloopsound(#"hash_a0772e7b77f2cd0");
        }
        return;
    }
    if (bwasdemojump == 2) {
        if (!isdefined(self.var_9603e45f)) {
            self.var_9603e45f = playfx(fieldname, #"hash_111ade9d8d5d637a", self.origin, anglestoforward(self.angles), anglestoup(self.angles));
        }
        if (!isdefined(self.var_15039a49)) {
            self playsound(fieldname, #"hash_1e3422ea889ea71e");
            self.var_15039a49 = self playloopsound(#"hash_34c2153dde27eda2");
            self.var_ecf22cc9 = 1;
        }
        return;
    }
    if (isdefined(self.var_9603e45f)) {
        stopfx(fieldname, self.var_9603e45f);
        self.var_9603e45f = undefined;
    }
    if (isdefined(self.var_15039a49)) {
        var_6fa5e5b7 = #"hash_60da5cd1a4e517a4";
        if (is_true(self.var_ecf22cc9)) {
            var_6fa5e5b7 = #"hash_4dd42218144c8aa6";
        }
        self playsound(fieldname, var_6fa5e5b7);
        self stoploopsound(self.var_15039a49);
        self.var_15039a49 = undefined;
    }
}

// Namespace namespace_4e8d47b1/namespace_4e8d47b1
// Params 7, eflags: 0x2 linked
// Checksum 0x9e38da37, Offset: 0x1370
// Size: 0x17a
function function_7c865e3a(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (isdefined(self.var_76156b5f)) {
        stopfx(fieldname, self.var_76156b5f);
        self.var_76156b5f = undefined;
    }
    if (bwasdemojump > 0) {
        switch (bwasdemojump) {
        case 1:
            self.var_76156b5f = playfx(fieldname, #"hash_3cccd2d1a3de040", self.origin, anglestoforward(self.angles), anglestoup(self.angles));
            break;
        case 2:
            self.var_76156b5f = playfx(fieldname, #"hash_20e36d2c5d741431", self.origin, anglestoforward(self.angles), anglestoup(self.angles));
            break;
        }
    }
}

// Namespace namespace_4e8d47b1/namespace_4e8d47b1
// Params 7, eflags: 0x2 linked
// Checksum 0xd3bae88b, Offset: 0x14f8
// Size: 0x6e4
function function_fa856271(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    var_5fe5469 = struct::get(#"hash_354e705e79fe06be");
    if (isdefined(var_5fe5469)) {
        if (bwasdemojump == 1) {
            if (isdefined(var_5fe5469.var_19a4610b)) {
                deletefx(fieldname, var_5fe5469.var_19a4610b);
                var_5fe5469.var_19a4610b = undefined;
            }
            if (is_true(var_5fe5469.var_6badbd3e)) {
                var_5fe5469.var_6badbd3e = 0;
                soundstoplineemitter(#"hash_5c41490e65574ff8", (-2732, 15359, -346), (-2739, 16001, -346));
            }
            if (!isdefined(var_5fe5469.var_2e4e34b8)) {
                var_5fe5469.var_2e4e34b8 = playfx(fieldname, #"hash_2dfa091ea0178210", var_5fe5469.origin, anglestoforward(var_5fe5469.angles), anglestoup(var_5fe5469.angles));
            }
            if (!isdefined(var_5fe5469.var_19a4610b)) {
                var_5fe5469.var_19a4610b = playfx(fieldname, #"hash_5fc1d30d5faed916", var_5fe5469.origin, anglestoforward(var_5fe5469.angles), anglestoup(var_5fe5469.angles));
            }
            if (!is_true(var_5fe5469.var_61cce39d)) {
                var_5fe5469.var_61cce39d = 1;
                soundlineemitter(#"hash_2f4159fb0e4926bd", (-2732, 15359, -346), (-2739, 16001, -346));
            }
            if (!is_true(var_5fe5469.var_eff3437b)) {
                var_5fe5469.var_eff3437b = 1;
                soundlineemitter(#"hash_c6b813a63490e1c", (-2732, 15359, -346), (-2739, 16001, -346));
            }
            return;
        }
        if (bwasdemojump == 2) {
            if (isdefined(var_5fe5469.var_19a4610b)) {
                deletefx(fieldname, var_5fe5469.var_19a4610b);
                var_5fe5469.var_19a4610b = undefined;
            }
            if (is_true(var_5fe5469.var_eff3437b)) {
                var_5fe5469.var_eff3437b = 0;
                soundstoplineemitter(#"hash_c6b813a63490e1c", (-2732, 15359, -346), (-2739, 16001, -346));
            }
            if (!isdefined(var_5fe5469.var_2e4e34b8)) {
                var_5fe5469.var_2e4e34b8 = playfx(fieldname, #"hash_2dfa091ea0178210", var_5fe5469.origin, anglestoforward(var_5fe5469.angles), anglestoup(var_5fe5469.angles));
            }
            if (!isdefined(var_5fe5469.var_19a4610b)) {
                var_5fe5469.var_19a4610b = playfx(fieldname, #"hash_73401686a9756f9a", var_5fe5469.origin, anglestoforward(var_5fe5469.angles), anglestoup(var_5fe5469.angles));
            }
            if (!is_true(var_5fe5469.var_61cce39d)) {
                var_5fe5469.var_61cce39d = 1;
                soundlineemitter(#"hash_2f4159fb0e4926bd", (-2732, 15359, -346), (-2739, 16001, -346));
            }
            if (!is_true(var_5fe5469.var_6badbd3e)) {
                var_5fe5469.var_6badbd3e = 1;
                soundlineemitter(#"hash_5c41490e65574ff8", (-2732, 15359, -346), (-2739, 16001, -346));
                playsound(fieldname, #"hash_7f3850912c836968", (-2732, 15359, -346));
            }
            return;
        }
        if (isdefined(var_5fe5469.var_2e4e34b8)) {
            stopfx(fieldname, var_5fe5469.var_2e4e34b8);
            var_5fe5469.var_2e4e34b8 = undefined;
        }
        if (isdefined(var_5fe5469.var_19a4610b)) {
            stopfx(fieldname, var_5fe5469.var_19a4610b);
            var_5fe5469.var_19a4610b = undefined;
        }
        if (is_true(var_5fe5469.var_eff3437b)) {
            var_5fe5469.var_eff3437b = 0;
            soundstoplineemitter(#"hash_c6b813a63490e1c", (-2732, 15359, -346), (-2739, 16001, -346));
        }
        if (is_true(var_5fe5469.var_6badbd3e)) {
            var_5fe5469.var_6badbd3e = 0;
            soundstoplineemitter(#"hash_5c41490e65574ff8", (-2732, 15359, -346), (-2739, 16001, -346));
        }
        if (is_true(var_5fe5469.var_61cce39d)) {
            var_5fe5469.var_eff3437b = 0;
            soundstoplineemitter(#"hash_2f4159fb0e4926bd", (-2732, 15359, -346), (-2739, 16001, -346));
        }
    }
}

// Namespace namespace_4e8d47b1/namespace_4e8d47b1
// Params 7, eflags: 0x2 linked
// Checksum 0x9bfd66d0, Offset: 0x1be8
// Size: 0x104
function function_d51885ac(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    v_origin = self.origin;
    v_forward = anglestoforward(self.angles);
    v_up = anglestoup(self.angles);
    n_fx = playfx(bwasdemojump, #"sr/fx9_obj_payload_aether_rift", v_origin, v_forward, v_up);
    wait(1);
    playfx(bwasdemojump, #"sr/fx9_obj_payload_aether_rift_close", v_origin, v_forward, v_up);
    killfx(bwasdemojump, n_fx);
}

// Namespace namespace_4e8d47b1/namespace_4e8d47b1
// Params 7, eflags: 0x2 linked
// Checksum 0xeedb7124, Offset: 0x1cf8
// Size: 0xb4
function function_f0e25204(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        self.var_99c4ce87 = {#ai_target:self};
        level thread function_526b12c4(fieldname, self.var_99c4ce87);
        return;
    }
    if (isdefined(self.var_99c4ce87)) {
        self.var_99c4ce87 flag::set(#"stop");
    }
}

// Namespace namespace_4e8d47b1/namespace_4e8d47b1
// Params 2, eflags: 0x2 linked
// Checksum 0x39973b0, Offset: 0x1db8
// Size: 0x26c
function function_526b12c4(localclientnum, var_99c4ce87) {
    for (var_b39864d6 = level.var_75a7d6.var_b39864d6; !isdefined(var_b39864d6); var_b39864d6 = level.var_75a7d6.var_b39864d6) {
        waitframe(1);
    }
    ai_target = var_99c4ce87.ai_target;
    if (!var_99c4ce87 flag::get(#"stop") && isalive(ai_target)) {
        mdl_beam = util::spawn_model(localclientnum, #"tag_origin");
        mdl_beam linkto(ai_target, "j_spine4");
        mdl_beam playsound(localclientnum, #"hash_52762fd483a6e3fa");
        mdl_beam.var_c7c0197d = mdl_beam playloopsound(#"hash_48762d210569c49");
        beam::launch(var_b39864d6, "j_spine4", mdl_beam, "tag_origin", "beam9_zm_soo_drain_health", 1);
        while (!var_99c4ce87 flag::get(#"stop") && isalive(ai_target)) {
            waitframe(1);
        }
        mdl_beam playsound(localclientnum, #"hash_4a5adfe85c2cb7da");
        mdl_beam stoploopsound(mdl_beam.var_c7c0197d);
        mdl_beam unlink();
        beam::kill(var_b39864d6, "j_spine4", mdl_beam, "tag_origin", "beam9_zm_soo_drain_health");
        mdl_beam delete();
    }
    var_99c4ce87 struct::delete();
}

// Namespace namespace_4e8d47b1/namespace_4e8d47b1
// Params 7, eflags: 0x2 linked
// Checksum 0x1bf4501f, Offset: 0x2030
// Size: 0x1ea
function function_1e07ed6f(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    switch (bwasdemojump) {
    case 0:
        if (isdefined(self.var_2ff79f4f)) {
            stopfx(fieldname, self.var_2ff79f4f);
            self.var_2ff79f4f = undefined;
        }
        if (isdefined(self.var_407bbdf1)) {
            stopfx(fieldname, self.var_407bbdf1);
            self.var_407bbdf1 = undefined;
        }
        if (isdefined(self.var_3e5319de)) {
            self stoploopsound(self.var_3e5319de);
            self.var_3e5319de = undefined;
        }
        break;
    case 1:
        self playsound(fieldname, #"hash_6a8d5841140aeb5a");
        self.var_3e5319de = self playloopsound(#"zmb_hellhound_loop_fire");
        break;
    case 2:
        if (isdefined(self.var_3e5319de)) {
            self stoploopsound(self.var_3e5319de);
            self.var_3e5319de = undefined;
        }
        self.var_407bbdf1 = util::playfxontag(fieldname, #"hash_1ece705913b0c51f", self, "j_spine4");
        break;
    }
}

// Namespace namespace_4e8d47b1/namespace_4e8d47b1
// Params 7, eflags: 0x2 linked
// Checksum 0xc8c920f8, Offset: 0x2228
// Size: 0xbe
function function_ab446ca9(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        if (!isdefined(self.var_3a930436)) {
            self.var_3a930436 = util::playfxontag(fieldname, #"hash_fbbbc78fd7a92c2", self, "tag_origin");
        }
        return;
    }
    if (isdefined(self.var_3a930436)) {
        stopfx(fieldname, self.var_3a930436);
        self.var_3a930436 = undefined;
    }
}

// Namespace namespace_4e8d47b1/namespace_4e8d47b1
// Params 7, eflags: 0x2 linked
// Checksum 0x7bd383f2, Offset: 0x22f0
// Size: 0xbe
function function_92c90a4f(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        if (!isdefined(self.var_b57c337d)) {
            self.var_b57c337d = util::playfxontag(fieldname, #"hash_5df0a4ec3990860d", self, "tag_origin");
        }
        return;
    }
    if (isdefined(self.var_b57c337d)) {
        stopfx(fieldname, self.var_b57c337d);
        self.var_b57c337d = undefined;
    }
}

// Namespace namespace_4e8d47b1/namespace_4e8d47b1
// Params 7, eflags: 0x2 linked
// Checksum 0x517ced0b, Offset: 0x23b8
// Size: 0x14a
function function_55488fca(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (function_148ccc79(fieldname, #"hash_4a8a66363bf60fc1")) {
        codestoppostfxbundlelocal(fieldname, #"hash_4a8a66363bf60fc1");
    }
    if (function_148ccc79(fieldname, #"hash_6cb7165a57e6c770")) {
        codestoppostfxbundlelocal(fieldname, #"hash_6cb7165a57e6c770");
    }
    if (bwasdemojump > 0) {
        switch (bwasdemojump) {
        case 1:
            function_a837926b(fieldname, #"hash_4a8a66363bf60fc1");
            break;
        case 2:
            function_a837926b(fieldname, #"hash_6cb7165a57e6c770");
            break;
        }
    }
}

// Namespace namespace_4e8d47b1/namespace_4e8d47b1
// Params 7, eflags: 0x2 linked
// Checksum 0x705f1fdf, Offset: 0x2510
// Size: 0x2ec
function function_8f860b91(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        if (!isdefined(self.var_e1b47bf)) {
            self.var_e1b47bf = util::playfxontag(fieldname, #"hash_504ddcf9ded4217c", self, "j_spine4");
        }
        if (!isdefined(self.var_ede94553)) {
            self.var_ede94553 = util::playfxontag(fieldname, #"hash_76a978e60d0e9ec1", self, "j_wrist_ri");
        }
        if (!isdefined(self.var_966bbf56)) {
            self.var_966bbf56 = util::playfxontag(fieldname, #"hash_4e5beb6703d25d5a", self, "j_wrist_ri");
        }
        if (!isdefined(self.var_60af28a9)) {
            self.var_60af28a9 = util::playfxontag(fieldname, #"hash_76a978e60d0e9ec1", self, "j_wrist_le");
        }
        if (!isdefined(self.var_694fe2b3)) {
            self.var_694fe2b3 = util::playfxontag(fieldname, #"hash_4e5beb6703d25d5a", self, "j_wrist_le");
        }
        level thread function_ab076c2e(fieldname, self);
        return;
    }
    if (isdefined(self.var_e1b47bf)) {
        stopfx(fieldname, self.var_e1b47bf);
        self.var_e1b47bf = undefined;
    }
    if (isdefined(self.var_ede94553)) {
        stopfx(fieldname, self.var_ede94553);
        self.var_ede94553 = undefined;
    }
    if (isdefined(self.var_966bbf56)) {
        stopfx(fieldname, self.var_966bbf56);
        self.var_966bbf56 = undefined;
    }
    if (isdefined(self.var_60af28a9)) {
        stopfx(fieldname, self.var_60af28a9);
        self.var_60af28a9 = undefined;
    }
    if (isdefined(self.var_694fe2b3)) {
        stopfx(fieldname, self.var_694fe2b3);
        self.var_694fe2b3 = undefined;
    }
    self notify(#"hash_1b3f15a04bc4d158");
    self stoprumble(fieldname, #"hash_23123e376b6cba91");
}

// Namespace namespace_4e8d47b1/namespace_4e8d47b1
// Params 2, eflags: 0x2 linked
// Checksum 0x1613f491, Offset: 0x2808
// Size: 0x96
function function_ab076c2e(localclientnum, var_b39864d6) {
    if (!isdefined(var_b39864d6)) {
        return;
    }
    var_b39864d6 endon(#"death", #"hash_1b3f15a04bc4d158");
    var_b39864d6 playrumblelooponentity(localclientnum, #"hash_23123e376b6cba91");
    while (true) {
        var_b39864d6 playsound(localclientnum, #"hash_5de409a4b5a08239");
        wait(1);
    }
}

// Namespace namespace_4e8d47b1/namespace_4e8d47b1
// Params 7, eflags: 0x2 linked
// Checksum 0x43ea95ff, Offset: 0x28a8
// Size: 0x17e
function function_90383e67(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        if (!isdefined(self.var_f252bba1)) {
            self.var_f252bba1 = util::playfxontag(fieldname, #"sr/fx9_hvt_aether_move_trail", self, "tag_origin");
        }
        if (!isdefined(self.var_fd2eefef)) {
            self playsound(fieldname, #"hash_5be3120a37873d9e");
            self.var_fd2eefef = self playloopsound(#"hash_734cc0f685efb122");
        }
        return;
    }
    if (isdefined(self.var_f252bba1)) {
        stopfx(fieldname, self.var_f252bba1);
        self.var_f252bba1 = undefined;
    }
    if (isdefined(self.var_fd2eefef)) {
        self playsound(fieldname, #"hash_2758a7e5c0fac58b");
        self stoploopsound(self.var_fd2eefef);
        self.var_fd2eefef = undefined;
    }
}

// Namespace namespace_4e8d47b1/namespace_4e8d47b1
// Params 7, eflags: 0x2 linked
// Checksum 0x49920b50, Offset: 0x2a30
// Size: 0xee
function function_63f6e3bf(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        if (!isdefined(self.var_7b99b6db)) {
            self.var_7b99b6db = playfx(fieldname, #"hash_5899b16f93de1dfd", self.origin, anglestoforward(self.angles), anglestoup(self.angles));
        }
        return;
    }
    if (isdefined(self.var_7b99b6db)) {
        stopfx(fieldname, self.var_7b99b6db);
        self.var_7b99b6db = undefined;
    }
}

// Namespace namespace_4e8d47b1/namespace_4e8d47b1
// Params 7, eflags: 0x2 linked
// Checksum 0x27e5a7de, Offset: 0x2b28
// Size: 0x36a
function function_ab0de377(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        switch (bwasdemojump) {
        case 1:
            var_3de77b5f = #"hash_6c62fd85414863a8";
            break;
        case 2:
            var_3de77b5f = #"hash_61d6690f3e92388a";
            break;
        }
        if (isdefined(var_3de77b5f)) {
            var_4263f449 = struct::get_array(var_3de77b5f);
            foreach (s_wall in var_4263f449) {
                if (isdefined(s_wall.fx) && !isdefined(s_wall.var_3483ac7b)) {
                    var_2fd02f35 = undefined;
                    switch (s_wall.fx) {
                    case #"a":
                        var_2fd02f35 = #"hash_303939bfec2470d3";
                        break;
                    case #"b":
                        var_2fd02f35 = #"hash_30393abfec247286";
                        break;
                    case #"c":
                        var_2fd02f35 = #"hash_30393bbfec247439";
                        break;
                    case #"d":
                        var_2fd02f35 = #"hash_30393cbfec2475ec";
                        break;
                    }
                    if (isdefined(var_2fd02f35)) {
                        s_wall.var_3483ac7b = playfx(fieldname, var_2fd02f35, s_wall.origin, anglestoforward(s_wall.angles), anglestoup(s_wall.angles));
                    }
                }
            }
        }
        return;
    }
    var_4263f449 = arraycombine(struct::get_array(#"hash_6c62fd85414863a8"), struct::get_array(#"hash_61d6690f3e92388a"));
    foreach (s_wall in var_4263f449) {
        if (isdefined(s_wall.var_3483ac7b)) {
            stopfx(fieldname, s_wall.var_3483ac7b);
            s_wall.var_3483ac7b = undefined;
        }
    }
}

// Namespace namespace_4e8d47b1/namespace_4e8d47b1
// Params 7, eflags: 0x2 linked
// Checksum 0x3437de0a, Offset: 0x2ea0
// Size: 0xcc
function function_5477ed5b(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        if (!self postfx::function_556665f2(#"hash_7fbc9bc489aea188")) {
            self postfx::playpostfxbundle(#"hash_7fbc9bc489aea188");
        }
        return;
    }
    if (self postfx::function_556665f2(#"hash_7fbc9bc489aea188")) {
        self postfx::exitpostfxbundle(#"hash_7fbc9bc489aea188");
    }
}

// Namespace namespace_4e8d47b1/namespace_4e8d47b1
// Params 7, eflags: 0x2 linked
// Checksum 0x36a522cb, Offset: 0x2f78
// Size: 0x9c
function function_7c29d2b9(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        self playrenderoverridebundle(#"hash_6f9116d2e7ae0b59", "tag_rob_wire_electric_arcs");
        return;
    }
    self stoprenderoverridebundle(#"hash_6f9116d2e7ae0b59", "tag_rob_wire_electric_arcs");
}

// Namespace namespace_4e8d47b1/namespace_4e8d47b1
// Params 7, eflags: 0x2 linked
// Checksum 0xa39011bb, Offset: 0x3020
// Size: 0x1c2
function function_ec198408(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    var_e8a5ef56 = struct::get(#"nuke_warhead");
    if (isdefined(var_e8a5ef56.mdl)) {
        var_e8a5ef56.mdl hide();
    }
    var_324a4a44 = struct::get(#"nuke_warhead_riser");
    if (isdefined(var_324a4a44.mdl)) {
        var_324a4a44.mdl hide();
    }
    foreach (s_canister in struct::get_array(#"harvester_canister")) {
        if (isdefined(s_canister.mdl)) {
            s_canister.mdl hide();
        }
        if (isdefined(s_canister.var_358ffe83)) {
            stopfx(bwasdemojump, s_canister.var_358ffe83);
            s_canister.var_358ffe83 = undefined;
        }
    }
}

