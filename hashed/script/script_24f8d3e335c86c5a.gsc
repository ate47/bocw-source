// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.csc;
#using scripts\core_common\array_shared.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\audio_shared.csc;

#namespace namespace_7a518726;

// Namespace namespace_7a518726/namespace_7a518726
// Params 0, eflags: 0x2 linked
// Checksum 0xca003539, Offset: 0x160
// Size: 0x220
function init() {
    clientfield::register("scriptmover", "" + #"hash_8b9fe3412e34513", 24000, 1, "int", &function_6b0f6eb8, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_2e4913c031d2a97c", 24000, 1, "int", &function_955683ea, 0, 0);
    clientfield::register("world", "" + #"hash_33f337fe0df045df", 24000, 1, "int", &function_1d298e01, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_85303d8249a5451", 24000, 1, "counter", &function_19a36115, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_47839169ce0224b7", 24000, 1, "counter", &function_ccffa08c, 0, 0);
    clientfield::register("actor", "" + #"hash_3d52751d686c4865", 24000, 1, "counter", &function_d66a6869, 0, 0);
    level.var_1a3fe1eb = [];
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 7, eflags: 0x2 linked
// Checksum 0x725fd053, Offset: 0x388
// Size: 0xac
function function_6b0f6eb8(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump == 1) {
        playfx(fieldname, #"hash_54b4d40f53a3f69c", self.origin);
        playsound(fieldname, #"hash_3882c488b58f4b4", self.origin + (0, 0, 25));
    }
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 7, eflags: 0x2 linked
// Checksum 0xe77b5898, Offset: 0x440
// Size: 0x138
function function_955683ea(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump == 1) {
        var_2674d143 = util::spawn_model(fieldname, #"hash_a1de313e4f9a99b", self.origin, self.angles);
        var_2674d143.rob = #"hash_30a0a9539339983f";
        if (!isdefined(level.var_1a3fe1eb)) {
            level.var_1a3fe1eb = [];
        } else if (!isarray(level.var_1a3fe1eb)) {
            level.var_1a3fe1eb = array(level.var_1a3fe1eb);
        }
        if (!isinarray(level.var_1a3fe1eb, var_2674d143)) {
            level.var_1a3fe1eb[level.var_1a3fe1eb.size] = var_2674d143;
        }
    }
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 7, eflags: 0x2 linked
// Checksum 0x2faa9233, Offset: 0x580
// Size: 0x15c
function function_1d298e01(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump == 0) {
        util::unlock_model(#"hash_40911bda0b473087");
        util::unlock_model(#"hash_7735285cc1c952f5");
        util::unlock_model(#"hash_504743f1aedb0f41");
        util::unlock_model(#"hash_47a239d0808fb616");
    }
    if (bwasdemojump == 1) {
        util::lock_model(#"hash_40911bda0b473087");
        util::lock_model(#"hash_7735285cc1c952f5");
        util::lock_model(#"hash_504743f1aedb0f41");
        util::lock_model(#"hash_47a239d0808fb616");
    }
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 7, eflags: 0x2 linked
// Checksum 0x9bd555e9, Offset: 0x6e8
// Size: 0x134
function function_19a36115(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    var_42795d7f = array::random(["arm01_05_jnt", "arm01_04_jnt", "arm01_03_jnt", "arm02_04_jnt", "arm02_03_jnt", "arm02_01_jnt"]);
    util::playfxontag(bwastimejump, #"hash_36fe3341c3cc6826", self, var_42795d7f);
    playsound(bwastimejump, #"hash_1ddeb8af5a217a6e", self.origin + (0, 0, 50));
    self thread function_75f0fe2c();
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 0, eflags: 0x2 linked
// Checksum 0x7b6a981d, Offset: 0x828
// Size: 0x9e
function function_75f0fe2c() {
    self notify("79ac0524aeb02124");
    self endon("79ac0524aeb02124");
    if (!isdefined(self.var_6631a14f)) {
        self.var_6631a14f = self playloopsound(#"hash_13e3f89e22beb505", undefined, (0, 0, 50));
    }
    wait(5);
    if (isdefined(self.var_6631a14f)) {
        self stoploopsound(self.var_6631a14f);
        self.var_6631a14f = undefined;
    }
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 7, eflags: 0x2 linked
// Checksum 0x353b069b, Offset: 0x8d0
// Size: 0x94
function function_ccffa08c(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump == 1) {
        playfx(fieldname, #"hash_4752fa601bfee5fb", self.origin, anglestoforward(self.angles), (0, 0, 1));
    }
}

// Namespace namespace_7a518726/namespace_7a518726
// Params 7, eflags: 0x2 linked
// Checksum 0x2dccf2f8, Offset: 0x970
// Size: 0xcc
function function_d66a6869(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump == 1) {
        playfx(fieldname, #"hash_2a291b035fc8a73d", self.origin, anglestoforward(self.angles), (0, 0, 1));
        playsound(fieldname, #"hash_365b0a050b295dc8", self.origin + (0, 0, 25));
    }
}

