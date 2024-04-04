// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.csc;

#namespace teamset;

// Namespace teamset/teamset
// Params 0, eflags: 0x5
// Checksum 0x82b29723, Offset: 0x88
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"teamset_seals", &preinit, undefined, undefined, undefined);
}

// Namespace teamset/teamset
// Params 0, eflags: 0x6 linked
// Checksum 0x9027952, Offset: 0xd0
// Size: 0x34
function private preinit() {
    level.allies_team = #"allies";
    level.axis_team = #"axis";
}

