// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\trophy_system.csc;
#using scripts\core_common\system_shared.csc;

#namespace trophy_system;

// Namespace trophy_system/trophy_system
// Params 0, eflags: 0x5
// Checksum 0xc37f88fc, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"trophy_system", &preinit, undefined, undefined, undefined);
}

// Namespace trophy_system/trophy_system
// Params 0, eflags: 0x6 linked
// Checksum 0x98b8c2b9, Offset: 0xd8
// Size: 0x14
function private preinit() {
    init_shared();
}

