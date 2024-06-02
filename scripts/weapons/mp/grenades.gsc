// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\grenades.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace grenades;

// Namespace grenades/grenades
// Params 0, eflags: 0x5
// Checksum 0xd2053946, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"grenades", &preinit, undefined, undefined, undefined);
}

// Namespace grenades/grenades
// Params 0, eflags: 0x4
// Checksum 0x98b8c2b9, Offset: 0xd8
// Size: 0x14
function private preinit() {
    init_shared();
}

