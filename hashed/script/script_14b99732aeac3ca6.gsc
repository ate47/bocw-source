// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\struct.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_958b287a;

// Namespace namespace_958b287a/namespace_958b287a
// Params 0, eflags: 0x2 linked
// Checksum 0xcbfaab32, Offset: 0x160
// Size: 0x14
function init() {
    init_clientfields();
}

// Namespace namespace_958b287a/namespace_958b287a
// Params 0, eflags: 0x2 linked
// Checksum 0x65f4587e, Offset: 0x180
// Size: 0x2d4
function init_clientfields() {
    clientfield::register("scriptmover", "" + #"hash_7171d4768b724a65", 24000, 1, "int", &function_64e04297, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_5fca7cdab0e93f71", 24000, 1, "int", &function_c2924276, 0, 0);
    clientfield::register("world", "" + #"hash_866e71344110f38", 24000, getminbitcountfornum(2), "int", &function_f3b46741, 0, 0);
    clientfield::register("actor", "" + #"hash_54e2a4e02a26cc62", 24000, 1, "counter", &function_95190421, 0, 0);
    clientfield::register("toplayer", "" + #"hash_721d42a28d7461ea", 24000, 1, "int", &function_eebdf718, 0, 0);
    clientfield::register("world", "" + #"hash_27f831b48c21166f", 24000, 1, "int", &function_ee0c0073, 0, 0);
    clientfield::register("world", "" + #"hash_28f70ef210665b53", 24000, 1, "int", &function_411aa7f8, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_e4552abd8fb5506", 24000, 1, "int", &function_1fff7e03, 0, 0);
}

// Namespace namespace_958b287a/namespace_958b287a
// Params 7, eflags: 0x2 linked
// Checksum 0xf3eae0e1, Offset: 0x460
// Size: 0x18c
function function_64e04297(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self.var_1f3cb09a = util::playfxontag(fieldname, #"hash_6c8d478322adcc6a", self, "j_mainroot");
        playsound(fieldname, #"hash_765e6e49f551f97c", self.origin);
        self.var_eb074a88 = self playloopsound("zmb_bunnyquest_stp2_bunny_lp");
        return;
    }
    if (isdefined(self.var_1f3cb09a)) {
        stopfx(fieldname, self.var_1f3cb09a);
        self stoploopsound(self.var_eb074a88, 0.5);
        self.var_1f3cb09a = undefined;
        self.var_eb074a88 = undefined;
    }
    self.explode_fx = util::playfxontag(fieldname, #"hash_5cde32c15506b440", self, "j_mainroot");
    playsound(fieldname, #"hash_7534e74a4fd1c56d", self.origin);
}

// Namespace namespace_958b287a/namespace_958b287a
// Params 7, eflags: 0x2 linked
// Checksum 0xb4326679, Offset: 0x5f8
// Size: 0xfc
function function_f3b46741(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        function_5ea2c6e3("zmb_sr_dropallaudioby4", 1, 1);
        return;
    }
    if (bwastimejump == 2) {
        soundloopemitter(#"hash_5c8e172b662df768", (3239, 10251, -770));
        return;
    }
    function_ed62c9c2("zmb_sr_dropallaudioby4", 1);
    soundstoploopemitter(#"hash_5c8e172b662df768", (3239, 10251, -770));
}

// Namespace namespace_958b287a/namespace_958b287a
// Params 7, eflags: 0x2 linked
// Checksum 0xca64fc45, Offset: 0x700
// Size: 0xac
function function_c2924276(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        v_pos = self.origin;
        playfx(fieldname, #"hash_5cde32c15506b440", v_pos);
        playsound(fieldname, #"hash_2f340670f6ec30cb", v_pos + (0, 0, 25));
    }
}

// Namespace namespace_958b287a/namespace_958b287a
// Params 7, eflags: 0x2 linked
// Checksum 0x372690bb, Offset: 0x7b8
// Size: 0x9c
function function_95190421(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    playfx(bwastimejump, #"zombie/fx9_onslaught_spawn_sm", self.origin);
    playsound(bwastimejump, #"hash_58611db3b1d6494e", self.origin + (0, 0, 35));
}

// Namespace namespace_958b287a/namespace_958b287a
// Params 7, eflags: 0x2 linked
// Checksum 0xa91a7cdd, Offset: 0x860
// Size: 0x74
function function_eebdf718(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self setenemyglobalscrambler(1);
        return;
    }
    self setenemyglobalscrambler(0);
}

// Namespace namespace_958b287a/namespace_958b287a
// Params 7, eflags: 0x2 linked
// Checksum 0xcffa5099, Offset: 0x8e0
// Size: 0x116
function function_ee0c0073(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    var_fcec724a = struct::get("bny_clb_strobe_fx");
    if (bwastimejump) {
        if (!isdefined(var_fcec724a.var_f01d5034)) {
            var_fcec724a.var_f01d5034 = playfx(fieldname, #"hash_ae69a5490ab1a42", var_fcec724a.origin, anglestoforward(var_fcec724a.angles), anglestoup(var_fcec724a.angles));
        }
        return;
    }
    if (isdefined(var_fcec724a.var_f01d5034)) {
        stopfx(fieldname, var_fcec724a.var_f01d5034);
        var_fcec724a.var_f01d5034 = undefined;
    }
}

// Namespace namespace_958b287a/namespace_958b287a
// Params 7, eflags: 0x2 linked
// Checksum 0xff4e716, Offset: 0xa00
// Size: 0x1e2
function function_411aa7f8(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    a_s_blockers = struct::get_array("bny_blocker");
    if (bwastimejump) {
        foreach (s_blocker in a_s_blockers) {
            if (!isdefined(s_blocker.mdl_fx)) {
                s_blocker.mdl_fx = playfx(fieldname, #"hash_1209e5f15b93f9af", s_blocker.origin, anglestoforward(s_blocker.angles), anglestoup(s_blocker.angles));
            }
        }
        return;
    }
    foreach (s_blocker in a_s_blockers) {
        if (isdefined(s_blocker.mdl_fx)) {
            stopfx(fieldname, s_blocker.mdl_fx);
            s_blocker.mdl_fx = undefined;
        }
    }
}

// Namespace namespace_958b287a/namespace_958b287a
// Params 7, eflags: 0x2 linked
// Checksum 0xad4b36f5, Offset: 0xbf0
// Size: 0x72
function function_1fff7e03(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self.light_fx = util::playfxontag(fieldname, #"hash_d46ff1e1b37c2fb", self, "tag_origin");
    }
}

