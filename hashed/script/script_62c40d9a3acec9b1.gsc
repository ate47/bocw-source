// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_58949729;

// Namespace namespace_58949729/namespace_58949729
// Params 0, eflags: 0x5
// Checksum 0x4f4c76da, Offset: 0x130
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_5f19cd68b4607f52", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_58949729/namespace_58949729
// Params 0, eflags: 0x2 linked
// Checksum 0x48bcc164, Offset: 0x178
// Size: 0x4c
function preinit() {
    clientfield::register("scriptmover", "reward_chest_fx", 1, 2, "int", &reward_chest_fx, 0, 0);
}

// Namespace namespace_58949729/namespace_58949729
// Params 7, eflags: 0x2 linked
// Checksum 0xfb058cfa, Offset: 0x1d0
// Size: 0x242
function reward_chest_fx(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    switch (bwastimejump) {
    case 0:
        if (isdefined(self.n_fx_id)) {
            stopfx(fieldname, self.n_fx_id);
        }
        if (isdefined(self.var_b3673abf)) {
            self stoploopsound(self.var_b3673abf);
        }
        break;
    case 1:
        self.n_fx_id = util::playfxontag(fieldname, "sr/fx9_chest_explore_amb_sm", self, "tag_origin");
        self.var_b3673abf = self playloopsound(#"hash_149989d596125e40", undefined, (0, 0, 40));
        break;
    case 2:
        self.n_fx_id = util::playfxontag(fieldname, "sr/fx9_chest_explore_amb_md", self, "tag_origin");
        self.var_b3673abf = self playloopsound(#"hash_3b1f5984e7ae4c48", undefined, (0, 0, 40));
        break;
    case 3:
        if (self.model === #"hash_12e47c6c01f2ff59") {
        } else {
            self.n_fx_id = util::playfxontag(fieldname, "sr/fx9_chest_explore_amb_lg", self, "tag_origin");
        }
        self.var_b3673abf = self playloopsound(#"hash_5dc67061425177d4", undefined, (0, 0, 40));
        break;
    }
}

