// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\weapons.gsc;
#using scripts\core_common\weapons_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace weapons;

// Namespace weapons/weapons
// Params 0, eflags: 0x5
// Checksum 0xefd5d898, Offset: 0x98
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"weapons", &preinit, undefined, undefined, undefined);
}

// Namespace weapons/weapons
// Params 0, eflags: 0x6 linked
// Checksum 0x98b8c2b9, Offset: 0xe0
// Size: 0x14
function private preinit() {
    init_shared();
}

