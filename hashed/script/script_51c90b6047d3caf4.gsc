// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_b062407c;

// Namespace namespace_b062407c/namespace_b062407c
// Params 0, eflags: 0x5
// Checksum 0xeddcad2, Offset: 0xc8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_17c0cbaa27663c8a", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_b062407c/namespace_b062407c
// Params 0, eflags: 0x6 linked
// Checksum 0x60fb2fe2, Offset: 0x110
// Size: 0x5c
function private preinit() {
    clientfield::register("scriptmover", "" + #"hash_5f124a31eeb3904a", 24000, 1, "int", &function_6142e681, 0, 0);
}

// Namespace namespace_b062407c/namespace_b062407c
// Params 7, eflags: 0x2 linked
// Checksum 0xc260008d, Offset: 0x178
// Size: 0x174
function function_6142e681(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self.var_30598532 = util::playfxontag(fieldname, #"hash_2acd20deb7d56350", self, "tag_animate");
        playsound(fieldname, #"hash_5fe175ffa66e0218", self.origin + (0, 0, 8));
        self.var_bc20b97b = self playloopsound(#"hash_4aa06f01cb7030a8");
        return;
    }
    if (isdefined(self.var_30598532)) {
        stopfx(fieldname, self.var_30598532);
        self.var_30598532 = undefined;
    }
    if (isdefined(self.var_bc20b97b)) {
        self stoploopsound(self.var_bc20b97b);
        playsound(fieldname, #"hash_13d630c8c8135e9", self.origin + (0, 0, 8));
    }
}

