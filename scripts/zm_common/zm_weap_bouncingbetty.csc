// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\bouncingbetty.csc;
#using scripts\core_common\system_shared.csc;

#namespace bouncingbetty;

// Namespace bouncingbetty/zm_weap_bouncingbetty
// Params 0, eflags: 0x5
// Checksum 0xf60bf781, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"bouncingbetty", &preinit, undefined, undefined, undefined);
}

// Namespace bouncingbetty/zm_weap_bouncingbetty
// Params 0, eflags: 0x4
// Checksum 0x98b8c2b9, Offset: 0xd8
// Size: 0x14
function private preinit() {
    init_shared();
}

