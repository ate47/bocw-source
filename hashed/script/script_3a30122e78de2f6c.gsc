// Atian COD Tools GSC CW decompiler test
#using script_615526011fd0894c;
#using scripts\core_common\struct.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_24fd6413;

// Namespace namespace_24fd6413/level_init
// Params 1, eflags: 0x20
// Checksum 0x127c03ea, Offset: 0x2e0
// Size: 0x29c
function event_handler[level_init] main(*eventstruct) {
    clientfield::register("scriptmover", "" + #"hash_502be00d1af105e9", 1, 1, "int", &function_9c4c4f14, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_771abe419eda7442", 1, 1, "int", &function_10ea3e76, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_76d1986dfad6a190", 1, 1, "counter", &function_55b89b40, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_11838968b17d8418", 1, 1, "int", &function_fd381218, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_1043711497bf7a0b", 1, 1, "counter", &function_c4893dbf, 0, 0);
    clientfield::register("actor", "" + #"hash_5342c00e940ad12b", 1, 1, "int", &function_bb5d646a, 0, 0);
    clientfield::register("world", "" + #"hash_71f053fa597abb52", 1, 1, "int", &function_a2e43552, 0, 0);
    sr_objective_secure_hud::register();
    util::waitforclient(0);
}

// Namespace namespace_24fd6413/namespace_24fd6413
// Params 7, eflags: 0x0
// Checksum 0xa75e861, Offset: 0x588
// Size: 0x64
function function_c4893dbf(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    util::playfxontag(bwastimejump, "sr/fx9_obj_secure_rocket_dmg_os", self, "tag_origin");
}

// Namespace namespace_24fd6413/namespace_24fd6413
// Params 7, eflags: 0x0
// Checksum 0x4a6a6616, Offset: 0x5f8
// Size: 0x1b6
function function_9c4c4f14(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self playsound(fieldname, #"hash_695b0d7f1ef212c");
        self.var_f9e742c3 = util::playfxontag(fieldname, "sr/fx9_obj_secure_rocket_hatch_glow", self, "tag_origin");
        self.var_e8d3ed49 = util::playfxontag(fieldname, "sr/fx9_obj_secure_rocket_hatch_glow_cracks", self, "tag_origin");
        wait(2.5);
        playfx(fieldname, "zombie/fx9_player_shockwave_retrieval", self.origin + vectorscale((0, 0, 1), 40), anglestoforward(self.angles));
        self playsound(fieldname, #"hash_76f535e311924a02");
        wait(0.5);
        if (isdefined(self.var_e8d3ed49)) {
            stopfx(fieldname, self.var_e8d3ed49);
            self.var_e8d3ed49 = undefined;
        }
    } else if (isdefined(self.var_f9e742c3)) {
        stopfx(fieldname, self.var_f9e742c3);
        self.var_f9e742c3 = undefined;
    }
}

// Namespace namespace_24fd6413/namespace_24fd6413
// Params 7, eflags: 0x0
// Checksum 0x54988b3, Offset: 0x7b8
// Size: 0xae
function function_10ea3e76(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self.var_f2e155e9 = util::playfxontag(fieldname, "sr/fx9_obj_secure_rocket_light_top", self, "spinning_light_jnt");
    } else if (isdefined(self.var_f2e155e9)) {
        stopfx(fieldname, self.var_f2e155e9);
        self.var_f2e155e9 = undefined;
    }
}

// Namespace namespace_24fd6413/namespace_24fd6413
// Params 7, eflags: 0x0
// Checksum 0xc7386a8a, Offset: 0x870
// Size: 0x284
function function_bb5d646a(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    self util::waittill_dobj(bwasdemojump);
    if (!isdefined(self) || !isdefined(self.origin)) {
        return;
    }
    e_fx = util::spawn_model(bwasdemojump, "tag_origin", self gettagorigin("J_Spine4"));
    playsound(bwasdemojump, #"hash_56121885ac540542", e_fx.origin);
    capture_points = struct::get_array("capture_point", "targetname");
    capture_point = arraygetclosest(self.origin, capture_points);
    util::playfxontag(bwasdemojump, "sr/fx9_obj_secure_soul_trail", e_fx, "tag_origin");
    e_fx movez(40, 0.8);
    wait(0.75);
    if (isdefined(e_fx) && isdefined(capture_point)) {
        n_time = distance(e_fx.origin, capture_point.origin) / 400;
        e_fx moveto(capture_point.origin, n_time);
        e_fx waittill(#"movedone");
    }
    if (isdefined(e_fx)) {
        util::playfxontag(bwasdemojump, "sr/fx9_obj_secure_rocket_essence_absorb", e_fx, "tag_origin");
        playsound(bwasdemojump, #"hash_39b5234db35e67", e_fx.origin);
    }
    wait(0.3);
    if (isdefined(e_fx)) {
        e_fx delete();
    }
}

// Namespace namespace_24fd6413/namespace_24fd6413
// Params 7, eflags: 0x0
// Checksum 0xb636319d, Offset: 0xb00
// Size: 0xa4
function function_fd381218(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self.var_3439fec0 = util::playfxontag(fieldname, "sr/fx9_obj_secure_soul_trail", self, "tag_origin");
    } else if (isdefined(self.var_3439fec0)) {
        stopfx(fieldname, self.var_3439fec0);
    }
}

// Namespace namespace_24fd6413/namespace_24fd6413
// Params 7, eflags: 0x0
// Checksum 0x95c6b2ef, Offset: 0xbb0
// Size: 0x212
function function_55b89b40(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self endon(#"death");
        forcestreamxmodel(#"hash_91bd6c685ca0c64");
        forcestreamxmodel(#"hash_2eb7d391abf00e32");
        self.var_48650596 = util::playfxontag(fieldname, "sr/fx9_obj_secure_rocket_entry", self, "tag_origin");
        self playsound(fieldname, #"hash_73e7cc85bfce53d0");
        wait(3.6);
        if (isdefined(self)) {
            self.var_67819d90 = util::playfxontag(fieldname, "sr/fx9_obj_secure_rocket_thruster", self, "tag_origin");
            self playsound(fieldname, #"hash_1546dde726827b68");
        }
        wait(5.7);
        if (isdefined(self)) {
            self.var_570ece1f = util::playfxontag(fieldname, "sr/fx9_obj_secure_rocket_thruster_scorch", self, "tag_origin");
        }
        wait(4);
        if (isdefined(self.var_67819d90)) {
            stopfx(fieldname, self.var_67819d90);
            self.var_67819d90 = undefined;
        }
        if (isdefined(self)) {
            self.var_80edf05c = util::playfxontag(fieldname, "sr/fx9_obj_secure_rocket_thruster_cooldown", self, "tag_origin");
        }
    }
}

// Namespace namespace_24fd6413/namespace_24fd6413
// Params 7, eflags: 0x0
// Checksum 0x7a74b26f, Offset: 0xdd0
// Size: 0xd4
function function_a2e43552(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        forcestreamxmodel(#"p9_sur_computer_console_hvt_01_screen_missile_in_act");
        forcestreamxmodel(#"p9_sur_computer_console_hvt_01_screen_missile_act");
    } else {
        stopforcestreamingxmodel(#"p9_sur_computer_console_hvt_01_screen_missile_in_act");
        stopforcestreamingxmodel(#"p9_sur_computer_console_hvt_01_screen_missile_act");
    }
}
