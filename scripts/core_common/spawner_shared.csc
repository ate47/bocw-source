// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;

#namespace spawner;

// Namespace spawner/spawner_shared
// Params 0, eflags: 0x5
// Checksum 0xe32639be, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"spawner", &preinit, undefined, undefined, undefined);
}

// Namespace spawner/spawner_shared
// Params 0, eflags: 0x4
// Checksum 0x80f724d1, Offset: 0xd8
// Size: 0x4
function private preinit() {
    
}

