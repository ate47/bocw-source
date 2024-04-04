// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;
#using script_7475f917e6d3bed9;
#using scripts\killstreaks\killstreaks_shared.gsc;

#namespace napalm_strike;

// Namespace napalm_strike/napalm_strike
// Params 0, eflags: 0x5
// Checksum 0x567e5dfe, Offset: 0xb8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"napalm_strike", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace napalm_strike/napalm_strike
// Params 0, eflags: 0x6 linked
// Checksum 0x34cea211, Offset: 0x108
// Size: 0x1c
function private preinit() {
    init_shared("killstreak_napalm_strike");
}

