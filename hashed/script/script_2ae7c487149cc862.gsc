// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\animation_shared.csc;

#namespace namespace_4db53432;

// Namespace namespace_4db53432/level_init
// Params 1, eflags: 0x20
// Checksum 0xa8d30b7d, Offset: 0x3a0
// Size: 0x49c
function event_handler[level_init] main(*eventstruct) {
    clientfield::register("allplayers", "" + #"hash_63af42145e260fb5", 1, 2, "int", &function_4fd00e1f, 0, 0);
    clientfield::register("allplayers", "" + #"hash_5323a6afe3b7e366", 1, 1, "counter", &function_53ab1c7, 0, 0);
    clientfield::register("allplayers", "" + #"hash_1f6229f37994ba8f", 1, 1, "counter", &function_ebf5d79, 0, 0);
    clientfield::register("toplayer", "" + #"hash_bd79b6ca5ca6bc0", 1, 2, "int", &function_f002c513, 0, 0);
    clientfield::register("toplayer", "" + #"dark_aether", 1, 1, "int", &function_98c5cac0, 0, 0);
    clientfield::register("toplayer", "" + #"hash_69409daf95eb8ffe", 1, 1, "int", &function_bd4ba224, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_37895eb34ae6a3b0", 1, 1, "counter", &function_9609c8b9, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_2a3141c1214d6eaa", 1, 1, "counter", &function_6a4e64d1, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_6e591596c3da1af6", 1, 1, "int", &function_94fa6eb5, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_bd6060c10031f98", 1, 1, "int", &function_7999ed44, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_32fff3d828ff2e0b", 1, 1, "int", &function_bd2b40f5, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_442f708f2ae92ef6", 1, 1, "counter", &function_20a79dc5, 0, 0);
    clientfield::register("world", "" + #"hash_77ba2c603a746873", 1, 1, "int", &function_eac49163, 0, 0);
    util::waitforclient(0);
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 7, eflags: 0x2 linked
// Checksum 0x9ae50f3b, Offset: 0x848
// Size: 0x33c
function function_94fa6eb5(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self.var_40433812 = playfx(fieldname, "sr/fx9_obj_orda_spawn_portal", self.origin + (0, 0, 7500), anglestoforward(self.angles), anglestoup(self.angles));
        self.var_3e3964d7 = playfx(fieldname, "sr/fx9_orda_aether_portal_beam", self.origin, anglestoforward(self.angles), anglestoup(self.angles));
        if (!isdefined(self.var_d416b1e7)) {
            playsound(fieldname, #"hash_70ed741814a290fd", self.origin + (0, 0, 3000));
            self.var_d416b1e7 = self playloopsound(#"hash_53739f99da95c943", undefined, (0, 0, 3000));
        }
        if (!isdefined(self.var_1f2ef20a)) {
            self.var_1f2ef20a = self playloopsound(#"hash_48fab12b9bb60979", undefined, (0, 0, 500));
        }
        return;
    }
    if (isdefined(self.var_40433812)) {
        stopfx(fieldname, self.var_40433812);
        self.var_40433812 = undefined;
    }
    if (isdefined(self.var_3e3964d7)) {
        stopfx(fieldname, self.var_3e3964d7);
        self.var_3e3964d7 = undefined;
    }
    if (isdefined(self.var_d416b1e7)) {
        playsound(fieldname, #"hash_1442f26e3f7ba2c4", self.origin + (0, 0, 3000));
        self stoploopsound(self.var_d416b1e7);
        self.var_d416b1e7 = undefined;
    }
    if (isdefined(self.var_1f2ef20a)) {
        self stoploopsound(self.var_1f2ef20a);
        self.var_1f2ef20a = undefined;
    }
    self playrumbleonentity(fieldname, "sr_payload_portal_final_rumble");
    earthquake(fieldname, 0.25, 1, self.origin, 4000);
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 7, eflags: 0x2 linked
// Checksum 0x5db8c254, Offset: 0xb90
// Size: 0x1c6
function function_7999ed44(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self.var_a5ded638 = playfx(fieldname, "zombie/fx9_aether_crystal_lg_obj_holdout", self.origin + (0, 0, 32), anglestoforward(self.angles), anglestoup(self.angles));
        self.var_1181af89 = playfx(fieldname, "sr/fx9_obj_holdout_env_signifier", self.origin + (0, 0, 32), anglestoforward(self.angles), anglestoup(self.angles));
        return;
    }
    if (isdefined(self.var_a5ded638)) {
        killfx(fieldname, self.var_a5ded638);
        self.var_a5ded638 = undefined;
    }
    if (isdefined(self.var_1181af89)) {
        killfx(fieldname, self.var_1181af89);
        self.var_1181af89 = undefined;
    }
    if (isdefined(self.var_fec2778b)) {
        killfx(fieldname, self.var_fec2778b);
        self.var_fec2778b = undefined;
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 7, eflags: 0x2 linked
// Checksum 0x8f8e0041, Offset: 0xd60
// Size: 0x18c
function function_98c5cac0(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    if (wasdemojump == 1) {
        if (!function_65b9eb0f(fieldname)) {
            self postfx::playpostfxbundle(#"hash_7f1cd473dc07762");
        }
        if (!isdefined(self.var_5bd4db29)) {
            self.var_5bd4db29 = self playloopsound(#"hash_7244e9d74d7ada8a");
        }
        self setenemyglobalscrambler(1);
        return;
    }
    if (function_65b9eb0f(fieldname)) {
        return;
    }
    self postfx::stoppostfxbundle(#"hash_7f1cd473dc07762");
    if (isdefined(self.var_5bd4db29)) {
        self stoploopsound(self.var_5bd4db29);
        self.var_5bd4db29 = undefined;
    }
    if (!is_true(getgametypesetting(#"hash_1e8998fd7f271bb7"))) {
        self setenemyglobalscrambler(0);
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 7, eflags: 0x2 linked
// Checksum 0xeaade881, Offset: 0xef8
// Size: 0x3d4
function function_f002c513(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    self endon(#"death");
    if (wasdemojump == 1) {
        if (function_65b9eb0f(fieldname)) {
            return;
        }
        if (!isdefined(self.var_706728bf)) {
            self.var_706728bf = playfxoncamera(fieldname, "sr/fx9_obj_holdout_camera_signifier", (0, 0, 0), (1, 0, 0), (0, 0, 1));
        }
        self playrumbleonentity(fieldname, "sr_transmitter_clear");
        earthquake(fieldname, 0.25, 0.5, self.origin, 80);
        self postfx::playpostfxbundle(#"pstfx_speedblur");
        self function_116b95e5(#"pstfx_speedblur", #"inner mask", 0.2);
        self function_116b95e5(#"pstfx_speedblur", #"outer mask", 0.4);
        if (!isdefined(self.var_3e1f31af)) {
            self playsound(fieldname, #"hash_423712ee67e9a7df");
            self.var_3e1f31af = self playloopsound(#"hash_3abb737de31477c1");
        }
        self thread function_d233fb1f(fieldname);
        return;
    }
    if (wasdemojump == 2) {
        if (!isdefined(self.var_87368464)) {
            self.var_87368464 = playfxoncamera(fieldname, "sr/fx9_obj_holdout_camera_signifier_start", (0, 0, 0), (1, 0, 0), (0, 0, 1));
        }
        return;
    }
    self notify(#"hash_639f680ae2bb2ff");
    if (isdefined(self.var_706728bf)) {
        stopfx(fieldname, self.var_706728bf);
        self.var_706728bf = undefined;
        self playrumbleonentity(fieldname, "sr_transmitter_clear");
        earthquake(fieldname, 0.25, 0.5, self.origin, 80);
    }
    if (isdefined(self.var_3e1f31af)) {
        self playsound(fieldname, #"hash_14b384e8b10abaca");
        self stoploopsound(self.var_3e1f31af);
        self.var_3e1f31af = undefined;
    }
    waitframe(1);
    if (function_65b9eb0f(fieldname)) {
        return;
    }
    self function_116b95e5(#"pstfx_speedblur", #"blur", 0);
    self postfx::exitpostfxbundle(#"pstfx_speedblur");
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 1, eflags: 0x2 linked
// Checksum 0xbeb84500, Offset: 0x12d8
// Size: 0x1a0
function function_d233fb1f(localclientnum) {
    self endon(#"death", #"disconnect", #"hash_639f680ae2bb2ff");
    var_9b8a1091 = 0.01;
    self playsound(localclientnum, #"hash_20493da3bbf6cbbe");
    while (true) {
        self function_116b95e5(#"pstfx_speedblur", #"blur", var_9b8a1091);
        wait(0.08);
        var_9b8a1091 += 0.01;
        if (var_9b8a1091 == 0.1) {
            self playrumbleonentity(localclientnum, "damage_light");
        }
        if (var_9b8a1091 > 0.1) {
            while (var_9b8a1091 > 0) {
                var_9b8a1091 -= 0.01;
                self function_116b95e5(#"pstfx_speedblur", #"blur", var_9b8a1091);
                wait(0.08);
            }
            self playsound(localclientnum, #"hash_20493da3bbf6cbbe");
        }
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 7, eflags: 0x2 linked
// Checksum 0x9722715d, Offset: 0x1480
// Size: 0x368
function function_eac49163(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *wasdemojump) {
    if (wasdemojump == 1) {
        function_be93487f(fieldname, 2, 1, 1, 0, 0);
        setexposureactivebank(fieldname, 2);
        var_90a50598 = struct::get_array("jellyfish_large", "targetname");
        foreach (var_b6e76b65 in var_90a50598) {
            var_b6e76b65.var_b965b5e5 = util::spawn_model(fieldname, var_b6e76b65.model, var_b6e76b65.origin);
        }
        waitframe(1);
        foreach (var_b6e76b65 in var_90a50598) {
            if (isdefined(var_b6e76b65.var_b965b5e5)) {
                var_b6e76b65.var_b965b5e5 thread animation::play_siege("p9_fxanim_zm_silver_jellyfish_large_sanim", undefined, 1, 1);
                util::playfxontag(fieldname, "sr/fx9_aether_jellyfish_self_large", var_b6e76b65.var_b965b5e5, "tag_origin");
            }
        }
        return;
    }
    function_be93487f(fieldname, 1, 1, 0, 0, 0);
    setexposureactivebank(fieldname, 1);
    forcestreamxmodel(#"p9_fxanim_sv_holdout_crystal_mod");
    var_90a50598 = struct::get_array("jellyfish_large", "targetname");
    foreach (var_b6e76b65 in var_90a50598) {
        if (isdefined(var_b6e76b65.var_b965b5e5)) {
            var_b6e76b65.var_b965b5e5 delete();
            var_b6e76b65 struct::delete();
        }
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 7, eflags: 0x2 linked
// Checksum 0x6ef18de2, Offset: 0x17f0
// Size: 0x30c
function function_4fd00e1f(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    self util::waittill_dobj(fieldname);
    if (!isdefined(level.var_3630f9c0)) {
        level.var_3630f9c0 = [];
    }
    var_47c85523 = self getentitynumber();
    var_e534cbe9 = 0;
    if (isdefined(level.var_3630f9c0[var_47c85523][fieldname])) {
        killfx(fieldname, level.var_3630f9c0[var_47c85523][fieldname]);
        level.var_3630f9c0[var_47c85523][fieldname] = undefined;
        var_e534cbe9 = 1;
    }
    if (bwastimejump > 0) {
        if (!var_e534cbe9) {
            self playsound(fieldname, #"hash_79a78504d4dbaf3f");
        }
        if (self zm_utility::function_f8796df3(fieldname)) {
            if (bwastimejump == 2) {
                str_fx = #"hash_679d39e5fd4eae19";
            } else if (bwastimejump == 1) {
                str_fx = #"hash_462352157053fa4a";
            }
            if (viewmodelhastag(fieldname, "tag_flashlight")) {
                level.var_3630f9c0[var_47c85523][fieldname] = playviewmodelfx(fieldname, str_fx, "tag_flashlight");
            }
        } else {
            if (bwastimejump == 2) {
                str_fx = #"hash_153f56ac9d13a399";
            } else if (bwastimejump == 1) {
                str_fx = #"hash_64e79a7456f58dec";
            }
            level.var_3630f9c0[var_47c85523][fieldname] = util::playfxontag(fieldname, str_fx, self, "tag_flashlight");
        }
        if (self == function_5c10bd79(fieldname)) {
            util::function_8eb5d4b0(3500, 0);
        }
        return;
    }
    if (var_e534cbe9) {
        self playsound(fieldname, #"hash_13715035b161a0c3");
    }
    if (self == function_5c10bd79(fieldname)) {
        util::function_8eb5d4b0(3500, 2.5);
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 7, eflags: 0x2 linked
// Checksum 0x1283a906, Offset: 0x1b08
// Size: 0xb6
function function_53ab1c7(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!isdefined(self)) {
        return;
    }
    var_47c85523 = self getentitynumber();
    if (isdefined(level.var_3630f9c0[var_47c85523][bwastimejump])) {
        killfx(bwastimejump, level.var_3630f9c0[var_47c85523][bwastimejump]);
        level.var_3630f9c0[var_47c85523][bwastimejump] = undefined;
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 7, eflags: 0x2 linked
// Checksum 0x544dbb9a, Offset: 0x1bc8
// Size: 0x16e
function function_bd2b40f5(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self.n_fx_id = playfx(fieldname, "sr/fx9_obj_holdout_barrier_window", self.origin + vectornormalize(anglestoright(self.angles)) * 6, anglestoright(self.angles), anglestoup(self.angles));
        self.var_b3673abf = self playloopsound(#"hash_3cf13a0072fc0aae");
        return;
    }
    if (isdefined(self.n_fx_id)) {
        stopfx(fieldname, self.n_fx_id);
        self.n_fx_id = undefined;
    }
    if (isdefined(self.var_b3673abf)) {
        self stoploopsound(self.var_b3673abf);
        self.var_b3673abf = undefined;
    }
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 7, eflags: 0x2 linked
// Checksum 0x927c99f1, Offset: 0x1d40
// Size: 0x1c4
function function_9609c8b9(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    playfx(bwastimejump, "sr/fx9_obj_holdout_crystal_bomb", self.origin + (0, 0, 128), anglestoforward(self.angles), anglestoup(self.angles));
    playsound(bwastimejump, #"hash_219637e3c93b9531", self.origin);
    wait(2.5);
    playfx(bwastimejump, "sr/fx9_obj_holdout_crystal_shockwave_blast", self.origin + (0, 0, 128), anglestoforward(self.angles), anglestoup(self.angles));
    playsound(bwastimejump, #"hash_716354440fd93185", self.origin + (0, 0, 128));
    self playrumbleonentity(bwastimejump, "sr_payload_portal_final_rumble");
    earthquake(bwastimejump, 0.25, 1.5, self.origin + (0, 0, 128), 4000);
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 7, eflags: 0x2 linked
// Checksum 0x1bac738c, Offset: 0x1f10
// Size: 0xcc
function function_6a4e64d1(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self.var_fec2778b = playfx(bwastimejump, "sr/fx9_obj_holdout_crystal_pulse", self.origin + (0, 0, 32), anglestoforward(self.angles), anglestoup(self.angles));
    self playsound(bwastimejump, #"hash_39e7c67ba77ef8cc");
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 7, eflags: 0x2 linked
// Checksum 0x5e7c1f99, Offset: 0x1fe8
// Size: 0x8c
function function_20a79dc5(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    util::playfxontag(bwastimejump, "sr/fx9_aether_jellyfish_trail", self, "tag_origin");
    util::playfxontag(bwastimejump, "sr/fx9_aether_jellyfish_d_light", self, "tag_origin");
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 7, eflags: 0x2 linked
// Checksum 0xc5c66a5b, Offset: 0x2080
// Size: 0xa4
function function_bd4ba224(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    if (bwastimejump == 1) {
        self postfx::playpostfxbundle(#"hash_7fbc9bc489aea188");
        return;
    }
    self postfx::exitpostfxbundle(#"hash_7fbc9bc489aea188");
}

// Namespace namespace_4db53432/namespace_4db53432
// Params 7, eflags: 0x2 linked
// Checksum 0x1dcd7dd, Offset: 0x2130
// Size: 0xb4
function function_ebf5d79(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    player = function_5c10bd79(bwastimejump);
    if (isdefined(player)) {
        if (!is_true(getgametypesetting(#"hash_1e8998fd7f271bb7"))) {
            player setenemyglobalscrambler(0);
        }
    }
}

