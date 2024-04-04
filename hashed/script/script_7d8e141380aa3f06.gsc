// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_fa39a5c3;

// Namespace namespace_fa39a5c3/namespace_67dab37c
// Params 0, eflags: 0x5
// Checksum 0x797c6c83, Offset: 0xc0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_5a3be2f74ac4fe03", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_fa39a5c3/namespace_67dab37c
// Params 0, eflags: 0x2 linked
// Checksum 0xf37bb6f8, Offset: 0x108
// Size: 0x5c
function preinit() {
    clientfield::register("toplayer", "" + #"hash_69dc133e22a2769f", 16000, 1, "int", &function_6b66a9a3, 0, 0);
}

// Namespace namespace_fa39a5c3/namespace_67dab37c
// Params 7, eflags: 0x0
// Checksum 0x6040c3ed, Offset: 0x170
// Size: 0x9a
function function_2376fab8(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump == 1) {
        util::playfxontag(fieldname, #"hash_48761360bb67e8a9", self, "tag_origin");
        self.var_a3b04735 = self playloopsound(#"hash_722697efdfb3562f");
    }
}

// Namespace namespace_fa39a5c3/namespace_67dab37c
// Params 7, eflags: 0x2 linked
// Checksum 0x7ab28457, Offset: 0x218
// Size: 0x10c
function function_6b66a9a3(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwasdemojump) {
    if (bwasdemojump) {
        forcestreamxmodel(#"p9_fxp_zm_teleport_tunnel");
        forcestreamxmodel(#"p9_fxp_zm_teleport_tunnel_edge");
        function_3385d776(#"zombie/fx9_aether_tear_portal_tunnel_1p");
        return;
    }
    stopforcestreamingxmodel(#"p9_fxp_zm_teleport_tunnel");
    stopforcestreamingxmodel(#"p9_fxp_zm_teleport_tunnel_edge");
    function_c22a1ca2(#"zombie/fx9_aether_tear_portal_tunnel_1p");
}

