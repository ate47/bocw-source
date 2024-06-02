// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;

#namespace namespace_ce472ff1;

// Namespace namespace_ce472ff1/namespace_ce472ff1
// Params 0, eflags: 0x5
// Checksum 0x25415e24, Offset: 0x88
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_788b2cd49344cd51", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_ce472ff1/namespace_ce472ff1
// Params 0, eflags: 0x4
// Checksum 0xd779e2a8, Offset: 0xd0
// Size: 0x30
function private preinit() {
    if (level.var_f2814a96 !== 1 && level.var_f2814a96 !== 2) {
        return;
    }
}

