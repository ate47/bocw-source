// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\array_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\ai\zombie_vortex.csc;
#using scripts\core_common\system_shared.csc;

#namespace namespace_71f583f0;

// Namespace namespace_71f583f0/namespace_71f583f0
// Params 0, eflags: 0x5
// Checksum 0x1395f28b, Offset: 0xf8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_4f25b1a89459b1f8", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_71f583f0/namespace_71f583f0
// Params 0, eflags: 0x6 linked
// Checksum 0xc1d14e9c, Offset: 0x140
// Size: 0x5c
function private preinit() {
    clientfield::register("actor", "" + #"hash_399ab6541d717dc7", 1, 1, "int", &function_9c02e124, 0, 0);
}

// Namespace namespace_71f583f0/namespace_71f583f0
// Params 7, eflags: 0x6 linked
// Checksum 0x859f77b2, Offset: 0x1a8
// Size: 0x11a
function private function_9c02e124(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    if (!is_true(bwastimejump) && isdefined(self.var_937df95)) {
        stopfx(fieldname, self.var_937df95);
        return;
    }
    self util::waittill_dobj(fieldname);
    tag = self haspart(fieldname, "j_spine4") ? "j_spine4" : "tag_origin";
    self.var_937df95 = self util::playfxontag(fieldname, "sr/fx9_obj_secure_soul_trail", self, tag);
}

