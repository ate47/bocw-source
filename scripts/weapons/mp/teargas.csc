// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\teargas.csc;
#using scripts\core_common\system_shared.csc;

#namespace namespace_8a3384f2;

// Namespace namespace_8a3384f2/namespace_8a3384f2
// Params 0, eflags: 0x5
// Checksum 0x6867d33c, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_2d15b1979434a7ae", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_8a3384f2/namespace_8a3384f2
// Params 0, eflags: 0x6 linked
// Checksum 0x98b8c2b9, Offset: 0xd8
// Size: 0x14
function private preinit() {
    init_shared();
}

