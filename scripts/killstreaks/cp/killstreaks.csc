// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;
#using scripts\killstreaks\killstreaks_shared.csc;

#namespace killstreaks;

// Namespace killstreaks/killstreaks
// Params 0, eflags: 0x5
// Checksum 0x396783ca, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"killstreaks", &preinit, undefined, undefined, undefined);
}

// Namespace killstreaks/killstreaks
// Params 0, eflags: 0x6 linked
// Checksum 0x98b8c2b9, Offset: 0xd8
// Size: 0x14
function private preinit() {
    init_shared();
}

