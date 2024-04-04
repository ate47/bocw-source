// Atian COD Tools GSC CW decompiler test
#using script_359683f0ff3b3fbb;
#using script_427cc4c66630a8dc;
#using script_55772e8c48402596;
#using scripts\core_common\system_shared.csc;

#namespace namespace_77bd50da;

// Namespace namespace_77bd50da/namespace_77bd50da
// Params 0, eflags: 0x5
// Checksum 0xa36d6535, Offset: 0xa0
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"hash_7b30b3878fc15536", &preinit, &postinit, undefined, undefined);
}

// Namespace namespace_77bd50da/namespace_77bd50da
// Params 0, eflags: 0x2 linked
// Checksum 0xb5e4be34, Offset: 0xf8
// Size: 0x54
function preinit() {
    sr_message_box::register();
    if (!isdefined(level.var_352498c6)) {
        prototype_hud::register();
        level.var_352498c6 = 1;
    }
    prototype_self_revive::register();
}

// Namespace namespace_77bd50da/namespace_77bd50da
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x158
// Size: 0x4
function postinit() {
    
}

