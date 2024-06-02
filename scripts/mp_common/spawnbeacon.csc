// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\spawnbeacon_shared.csc;
#using scripts\core_common\system_shared.csc;

#namespace spawn_beacon;

// Namespace spawn_beacon/spawnbeacon
// Params 0, eflags: 0x5
// Checksum 0xfd2643f8, Offset: 0x90
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"spawnbeacon", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace spawn_beacon/spawnbeacon
// Params 0, eflags: 0x4
// Checksum 0x98b8c2b9, Offset: 0xe0
// Size: 0x14
function private preinit() {
    init_shared();
}

