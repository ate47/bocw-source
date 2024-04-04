// Atian COD Tools GSC CW decompiler test
#using script_4eecbd20dc9a462c;
#using scripts\core_common\system_shared.csc;

#namespace chopper_gunner;

// Namespace chopper_gunner/chopper_gunner
// Params 0, eflags: 0x5
// Checksum 0x2484391, Offset: 0x90
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"chopper_gunner", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace chopper_gunner/chopper_gunner
// Params 0, eflags: 0x6 linked
// Checksum 0x61672225, Offset: 0xe0
// Size: 0x14
function private preinit() {
    namespace_e8c18978::preinit();
}

