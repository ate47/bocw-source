// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_60bf0cf2;

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 0, eflags: 0x2 linked
// Checksum 0x3fa880b9, Offset: 0xd8
// Size: 0x14
function init() {
    init_clientfields();
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 0, eflags: 0x2 linked
// Checksum 0xdd1d54a9, Offset: 0xf8
// Size: 0x10c
function init_clientfields() {
    clientfield::register("scriptmover", "" + #"hash_5808d23568bc787", 1, 1, "int", &function_f1c7d9e3, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_50dd9d9bf6b71a00", 1, 1, "counter", &function_2518f379, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_464c0289eeaff2a8", 1, 1, "int", &function_35a58b7, 0, 0);
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 7, eflags: 0x2 linked
// Checksum 0x2cf4710b, Offset: 0x210
// Size: 0xae
function function_f1c7d9e3(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self.var_ddd3b139 = util::playfxontag(fieldname, #"hash_67ab48748fb2d398", self, "j_eyeball_le");
        return;
    }
    if (isdefined(self.var_ddd3b139)) {
        stopfx(fieldname, self.var_ddd3b139);
        self.var_ddd3b139 = undefined;
    }
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 7, eflags: 0x2 linked
// Checksum 0x9efb4461, Offset: 0x2c8
// Size: 0x6c
function function_2518f379(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        util::playfxontag(fieldname, #"hash_1a0fe6e34e30e968", self, "j_mainroot");
    }
}

// Namespace namespace_60bf0cf2/namespace_60bf0cf2
// Params 7, eflags: 0x2 linked
// Checksum 0x2ef1076f, Offset: 0x340
// Size: 0x6c
function function_35a58b7(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        util::playfxontag(fieldname, #"hash_1eade7553747299a", self, "j_mainroot");
    }
}

