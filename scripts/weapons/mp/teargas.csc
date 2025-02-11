#using scripts\core_common\system_shared;
#using scripts\weapons\teargas;

#namespace teargas;

// Namespace teargas/teargas
// Params 0, eflags: 0x5
// Checksum 0x6867d33c, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_2d15b1979434a7ae", &preinit, undefined, undefined, undefined);
}

// Namespace teargas/teargas
// Params 0, eflags: 0x4
// Checksum 0x98b8c2b9, Offset: 0xd8
// Size: 0x14
function private preinit() {
    init_shared();
}

