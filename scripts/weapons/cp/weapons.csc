// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\weapons.csc;
#using scripts\core_common\system_shared.csc;

#namespace weapons;

// Namespace weapons/weapons
// Params 0, eflags: 0x5
// Checksum 0xefd5d898, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"weapons", &preinit, undefined, undefined, undefined);
}

// Namespace weapons/weapons
// Params 0, eflags: 0x6 linked
// Checksum 0x98b8c2b9, Offset: 0xd8
// Size: 0x14
function private preinit() {
    init_shared();
}

