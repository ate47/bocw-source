// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_45690bb8;

// Namespace namespace_45690bb8/namespace_45690bb8
// Params 0, eflags: 0x2 linked
// Checksum 0xec8a7e07, Offset: 0x100
// Size: 0x14
function init() {
    init_clientfields();
}

// Namespace namespace_45690bb8/namespace_45690bb8
// Params 0, eflags: 0x2 linked
// Checksum 0x4c417591, Offset: 0x120
// Size: 0x374
function init_clientfields() {
    clientfield::register("scriptmover", "" + #"hash_18735ccb22cdefb5", 1, 1, "int", &function_d9576449, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_1df73c94e87e145c", 1, 1, "int", &function_7d5ce4d9, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_615d25f799b80ed7", 1, 1, "int", &function_672b008a, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_7e481cd16f021d79", 1, 1, "int", &function_5402e221, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_acf98ff6d976e10", 1, 1, "int", &function_1a90da2b, 0, 0);
    clientfield::register("world", "" + #"hash_58dd30074d399de5", 1, 1, "int", &function_8772dde6, 0, 0);
    clientfield::register("world", "" + #"hash_195f6fa038980aca", 1, 1, "int", &function_38a832d2, 0, 0);
    clientfield::register("actor", "" + #"hash_3d14472eb7838c71", 1, 1, "int", &function_33d52b21, 0, 0);
    clientfield::register("toplayer", "" + #"hash_734d80bbfc2cb595", 1, 2, "counter", &function_ccd8d6e0, 0, 0);
    clientfield::register("toplayer", "" + #"hash_802934d416ac981", 1, 1, "int", &function_6b8c4c36, 0, 0);
}

// Namespace namespace_45690bb8/namespace_45690bb8
// Params 7, eflags: 0x2 linked
// Checksum 0xe06b0ceb, Offset: 0x4a0
// Size: 0x156
function function_d9576449(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self.var_c0049122 = util::playfxontag(fieldname, #"hash_50611dced846f036", self, "tag_origin");
        if (!isdefined(self.var_8aee9835)) {
            self playsound(fieldname, #"hash_6d99a1e0c2b22c3d");
            self.var_8aee9835 = self playloopsound(#"hash_7f631a3f8ad73dc0");
        }
        return;
    }
    if (isdefined(self.var_8aee9835)) {
        stopfx(fieldname, self.var_c0049122);
        self playsound(fieldname, #"hash_554b4bdae5c4f739");
        self stoploopsound(self.var_8aee9835);
        self.var_8aee9835 = undefined;
    }
}

// Namespace namespace_45690bb8/namespace_45690bb8
// Params 7, eflags: 0x2 linked
// Checksum 0xb837154c, Offset: 0x600
// Size: 0xae
function function_7d5ce4d9(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self.var_805054e7 = util::playfxontag(fieldname, #"hash_58d5e856ce222a5d", self, "tag_origin");
        return;
    }
    if (isdefined(self.var_805054e7)) {
        stopfx(fieldname, self.var_805054e7);
        self.var_805054e7 = undefined;
    }
}

// Namespace namespace_45690bb8/namespace_45690bb8
// Params 7, eflags: 0x2 linked
// Checksum 0x73cd5d40, Offset: 0x6b8
// Size: 0x1f4
function function_8772dde6(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        playsound(fieldname, #"hash_2a8b12ffa840219e", (-245, 1121, 588));
        soundlineemitter(#"hash_141c67065ba502c5", (2009, 553, 659), (-245, 1121, 588));
        soundlineemitter(#"hash_141c67065ba502c5", (-2115, 5914, 1682), (-245, 1121, 588));
        soundlineemitter(#"hash_141c67065ba502c5", (-4142, -1021, 1064), (-245, 1121, 588));
        return;
    }
    soundstoplineemitter(#"hash_141c67065ba502c5", (2009, 553, 659), (-245, 1121, 588));
    soundstoplineemitter(#"hash_141c67065ba502c5", (-2115, 5914, 1682), (-245, 1121, 588));
    soundstoplineemitter(#"hash_141c67065ba502c5", (-4142, -1021, 1064), (-245, 1121, 588));
}

// Namespace namespace_45690bb8/namespace_45690bb8
// Params 7, eflags: 0x2 linked
// Checksum 0xeaf0fcdd, Offset: 0x8b8
// Size: 0xa4
function function_38a832d2(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        soundloopemitter(#"hash_65f5a97a9265ad32", (562, -98, -315));
        return;
    }
    soundstoploopemitter(#"hash_65f5a97a9265ad32", (562, -98, -315));
}

// Namespace namespace_45690bb8/namespace_45690bb8
// Params 7, eflags: 0x2 linked
// Checksum 0x35d31987, Offset: 0x968
// Size: 0xae
function function_672b008a(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self.var_551198af = playfx(fieldname, #"hash_6836aff4dcf79417", self.origin);
        return;
    }
    if (isdefined(self.var_551198af)) {
        stopfx(fieldname, self.var_551198af);
        self.var_551198af = undefined;
    }
}

// Namespace namespace_45690bb8/namespace_45690bb8
// Params 7, eflags: 0x2 linked
// Checksum 0x17ca9b18, Offset: 0xa20
// Size: 0x48
function function_5402e221(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
    }
}

// Namespace namespace_45690bb8/namespace_45690bb8
// Params 7, eflags: 0x2 linked
// Checksum 0xe791f4ee, Offset: 0xa70
// Size: 0xa4
function function_1a90da2b(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self.var_5d366358 = util::playfxontag(fieldname, #"hash_23a6fc6ed48651f9", self, "j_eyeball_le");
        return;
    }
    if (isdefined(self.var_5d366358)) {
        stopfx(fieldname, self.var_5d366358);
    }
}

// Namespace namespace_45690bb8/namespace_45690bb8
// Params 7, eflags: 0x2 linked
// Checksum 0xc8e99b5b, Offset: 0xb20
// Size: 0xb4
function function_6b8c4c36(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self playrumbleonentity(fieldname, #"hash_431e56f34a345079");
        self postfx::playpostfxbundle(#"hash_1c01122f6d0510cf");
        return;
    }
    self postfx::stoppostfxbundle(#"hash_1c01122f6d0510cf");
}

// Namespace namespace_45690bb8/namespace_45690bb8
// Params 7, eflags: 0x2 linked
// Checksum 0x104ed2ce, Offset: 0xbe0
// Size: 0xac
function function_ccd8d6e0(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        self playrumbleonentity(fieldname, #"hash_575c14596fbb0902");
        return;
    }
    if (bwastimejump == 2) {
        self playrumbleonentity(fieldname, #"hash_701661f6699fd075");
    }
}

// Namespace namespace_45690bb8/namespace_45690bb8
// Params 7, eflags: 0x2 linked
// Checksum 0xff1fc21f, Offset: 0xc98
// Size: 0x74
function function_33d52b21(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self function_c2e69953(1);
        return;
    }
    self function_c2e69953(0);
}

