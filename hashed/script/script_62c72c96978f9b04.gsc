// Atian COD Tools GSC CW decompiler test
#using script_2d7a84fdf413563d;
#using script_19f3d8b7a687a3f1;
#using scripts\zm_common\zm_fasttravel.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_dbb31ff3;

// Namespace namespace_dbb31ff3/namespace_dbb31ff3
// Params 0, eflags: 0x5
// Checksum 0x21e75237, Offset: 0xd0
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_7bb41176a4b58056", &preinit, undefined, &finalize, undefined);
}

// Namespace namespace_dbb31ff3/namespace_dbb31ff3
// Params 0, eflags: 0x6 linked
// Checksum 0x9189626f, Offset: 0x120
// Size: 0xd4
function private preinit() {
    sr_beacon_menu::register();
    clientfield::register("toplayer", "" + #"hash_5616eb8cc6b9c498", 1, 1, "counter", &function_595556d0, 0, 0);
    clientfield::register("toplayer", "" + #"hash_5752601fd90562e1", 1, 1, "counter", &function_cc5db8e3, 0, 0);
    namespace_52c8f34d::preinit();
}

// Namespace namespace_dbb31ff3/namespace_dbb31ff3
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x200
// Size: 0x4
function private finalize() {
    
}

// Namespace namespace_dbb31ff3/namespace_dbb31ff3
// Params 7, eflags: 0x2 linked
// Checksum 0x2ea87cc0, Offset: 0x210
// Size: 0x10c
function function_595556d0(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    forcestreamxmodel(#"p9_fxp_zm_teleport_tunnel");
    forcestreamxmodel(#"p9_fxp_zm_teleport_tunnel_edge");
    function_3385d776(#"zombie/fx9_aether_tear_portal_tunnel_1p");
    self.var_915bbac = 1;
    playsound(bwastimejump, #"hash_df74ba2c210beef", (0, 0, 0));
    wait(3);
    self postfx::playpostfxbundle(#"hash_7fbc9bc489aea188");
}

// Namespace namespace_dbb31ff3/namespace_dbb31ff3
// Params 7, eflags: 0x2 linked
// Checksum 0x8a26f792, Offset: 0x328
// Size: 0x9c
function function_cc5db8e3(*localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    stopforcestreamingxmodel(#"p9_fxp_zm_teleport_tunnel");
    stopforcestreamingxmodel(#"p9_fxp_zm_teleport_tunnel_edge");
    function_c22a1ca2(#"zombie/fx9_aether_tear_portal_tunnel_1p");
}

