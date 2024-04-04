// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_4faef43b;

// Namespace namespace_4faef43b/namespace_dd8b9b1a
// Params 0, eflags: 0x5
// Checksum 0x54f10a6c, Offset: 0x168
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_3793eb4a6c52c66f", &__init__, undefined, undefined, undefined);
}

// Namespace namespace_4faef43b/namespace_dd8b9b1a
// Params 0, eflags: 0x0
// Checksum 0x469b07bc, Offset: 0x1b0
// Size: 0x1b4
function __init__() {
    clientfield::register("scriptmover", "" + #"hash_322ed89801938bb9", 1, 1, "counter", &function_40fcb7b0, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_6d9aa5215e695ca2", 1, 1, "counter", &function_65502dee, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_1f232116f775fa91", 1, 1, "counter", &function_de8dd244, 0, 0);
    clientfield::register("scriptmover", "" + #"hash_4719ef7fda616f3a", 1, 1, "counter", &function_b6000359, 0, 0);
    clientfield::register_clientuimodel("hudItems.reinforcing", #"hash_6f4b11a0bee9b73d", #"hash_4e0958d6dca7cb1d", 1, 1, "int", undefined, 0, 0);
}

// Namespace namespace_4faef43b/namespace_dd8b9b1a
// Params 7, eflags: 0x0
// Checksum 0xe29cbc9a, Offset: 0x370
// Size: 0xa4
function function_de8dd244(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        playfx(fieldname, "destruct/fx9_dmg_window_wood_wz", self.origin, anglestoforward(self.angles) + (0, 90, 0), anglestoup(self.angles));
    }
}

// Namespace namespace_4faef43b/namespace_dd8b9b1a
// Params 7, eflags: 0x0
// Checksum 0x25decbf9, Offset: 0x420
// Size: 0xa4
function function_b6000359(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        playfx(fieldname, "destruct/fx9_dest_window_wood_wz", self.origin, anglestoforward(self.angles) + (0, 90, 0), anglestoup(self.angles));
    }
}

// Namespace namespace_4faef43b/namespace_dd8b9b1a
// Params 7, eflags: 0x0
// Checksum 0xd7fd7e66, Offset: 0x4d0
// Size: 0xa4
function function_40fcb7b0(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        playfx(fieldname, "destruct/fx9_dmg_door_metal_wz", self.origin, anglestoforward(self.angles) + (0, 90, 0), anglestoup(self.angles));
    }
}

// Namespace namespace_4faef43b/namespace_dd8b9b1a
// Params 7, eflags: 0x0
// Checksum 0xf3fe25cb, Offset: 0x580
// Size: 0xa4
function function_65502dee(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        playfx(fieldname, "destruct/fx9_dest_door_metal_wz", self.origin, anglestoforward(self.angles) + (0, 90, 0), anglestoup(self.angles));
    }
}

