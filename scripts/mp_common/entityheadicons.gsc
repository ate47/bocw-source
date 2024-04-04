// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\entityheadicons_shared.gsc;

#namespace entityheadicons;

// Namespace entityheadicons/entityheadicons
// Params 0, eflags: 0x5
// Checksum 0x4c5e4256, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"entityheadicons", &preinit, undefined, undefined, undefined);
}

// Namespace entityheadicons/entityheadicons
// Params 0, eflags: 0x4
// Checksum 0x98b8c2b9, Offset: 0xd8
// Size: 0x14
function private preinit() {
    init_shared();
}

