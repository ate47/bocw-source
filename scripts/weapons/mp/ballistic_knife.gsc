// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\ballistic_knife.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace ballistic_knife;

// Namespace ballistic_knife/ballistic_knife
// Params 0, eflags: 0x5
// Checksum 0x8d2dd6d3, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"ballistic_knife", &preinit, undefined, undefined, undefined);
}

// Namespace ballistic_knife/ballistic_knife
// Params 0, eflags: 0x6 linked
// Checksum 0x98b8c2b9, Offset: 0xd8
// Size: 0x14
function private preinit() {
    init_shared();
}

