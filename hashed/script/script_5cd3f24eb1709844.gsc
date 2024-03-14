// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\beam_shared.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_178eb32b;

// Namespace namespace_178eb32b/namespace_178eb32b
// Params 0, eflags: 0x2 linked
// Checksum 0x7ec2af22, Offset: 0x118
// Size: 0x1bc
function init() {
    clientfield::register("scriptmover", "" + #"hash_eb1d61f9d0ab6ab", 1, 2, "int", &function_968feb60, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_4ace5aed82d35b19", 1, 1, "int", &function_63dce83f, 0, 0);
    clientfield::register("toplayer", "" + #"hash_32d35af47559b320", 1, 1, "int", &function_6c47410d, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_575d68a64ff032b2", 1, 1, "counter", &function_1fa52d9a, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_16e5e4d2ea0716b7", 1, 2, "int", &function_2879e60b, 0, 0);
}

// Namespace namespace_178eb32b/namespace_178eb32b
// Params 7, eflags: 0x2 linked
// Checksum 0x6b43bb6b, Offset: 0x2e0
// Size: 0x11a
function function_968feb60(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump == 1) {
        if (isdefined(self.var_9fae3db4)) {
            stopfx(fieldname, self.var_9fae3db4);
            self.var_9fae3db4 = undefined;
        }
        self.var_9fae3db4 = util::playfxontag(fieldname, #"hash_1fb650ed35a01358", self, "tag_origin");
    }
    if (bwasdemojump == 2) {
        if (isdefined(self.var_9fae3db4)) {
            stopfx(fieldname, self.var_9fae3db4);
            self.var_9fae3db4 = undefined;
        }
        self.var_9fae3db4 = util::playfxontag(fieldname, #"hash_60791ecaad8f98e6", self, "tag_origin");
    }
}

// Namespace namespace_178eb32b/namespace_178eb32b
// Params 7, eflags: 0x2 linked
// Checksum 0x9bbb163f, Offset: 0x408
// Size: 0x198
function function_63dce83f(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    level endon(#"end_game");
    self endon(#"death");
    if (bwasdemojump == 1) {
        self.var_dffa7aba = util::spawn_model(fieldname, "tag_origin", self.origin, self.angles);
        self.var_dffa7aba playsound(fieldname, "mpl_ultimate_turret_lockon_enemy");
        self callback::add_entity_callback(#"death", &function_3a7e8f1f);
        while (true) {
            var_abdb3f07 = anglestoforward(self.angles);
            trace_result = bullettrace(self.origin, self.origin + var_abdb3f07 * 1000, 0, self);
            var_1328f706 = trace_result[#"position"];
            self.var_dffa7aba.origin = var_1328f706;
            waitframe(5);
        }
    }
}

// Namespace namespace_178eb32b/namespace_178eb32b
// Params 1, eflags: 0x2 linked
// Checksum 0xc79024d7, Offset: 0x5a8
// Size: 0x34
function function_3a7e8f1f(*params) {
    if (isdefined(self.var_dffa7aba)) {
        self.var_dffa7aba delete();
    }
}

// Namespace namespace_178eb32b/namespace_178eb32b
// Params 7, eflags: 0x2 linked
// Checksum 0x3a7aa988, Offset: 0x5e8
// Size: 0xdc
function function_6c47410d(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump == 1 && !self postfx::function_556665f2(#"hash_6f19f661d99b2da9")) {
        self postfx::playpostfxbundle(#"hash_6f19f661d99b2da9");
        return;
    }
    if (self postfx::function_556665f2(#"hash_6f19f661d99b2da9")) {
        self postfx::exitpostfxbundle(#"hash_6f19f661d99b2da9");
    }
}

// Namespace namespace_178eb32b/namespace_178eb32b
// Params 7, eflags: 0x2 linked
// Checksum 0x74cee03b, Offset: 0x6d0
// Size: 0x18a
function function_2879e60b(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump == 1) {
        if (isdefined(self.var_dd37157)) {
            stopfx(fieldname, self.var_dd37157);
            self.var_dd37157 = undefined;
        }
        self.var_dd37157 = playfx(fieldname, #"hash_5e71af4ea513be2c", self.origin, anglestoforward(self.angles), anglestoup(self.angles));
    }
    if (bwasdemojump == 2) {
        if (isdefined(self.var_dd37157)) {
            stopfx(fieldname, self.var_dd37157);
            self.var_dd37157 = undefined;
        }
        self.var_dd37157 = playfx(fieldname, #"hash_5e71bc4ea513d443", self.origin, anglestoforward(self.angles), anglestoup(self.angles));
    }
}

// Namespace namespace_178eb32b/namespace_178eb32b
// Params 7, eflags: 0x2 linked
// Checksum 0x5b4bc627, Offset: 0x868
// Size: 0xa4
function function_1fa52d9a(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump == 1) {
        playfx(fieldname, #"hash_179a76b8d709e8bb", self.origin, anglestoforward(self.angles), anglestoup(self.angles));
    }
}

