// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\tracker_shared.gsc;

#namespace tracker;

// Namespace tracker/tracker
// Params 0, eflags: 0x5
// Checksum 0x949a6fb2, Offset: 0xb0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"tracker", &preinit, undefined, undefined, undefined);
}

// Namespace tracker/tracker
// Params 0, eflags: 0x6 linked
// Checksum 0x98b8c2b9, Offset: 0xf8
// Size: 0x14
function private preinit() {
    init_shared();
}

