// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;
#using scripts\killstreaks\killstreak_hacking.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace killstreak_detect;

// Namespace killstreak_detect/killstreak_detect
// Params 0, eflags: 0x5
// Checksum 0x40bfecfd, Offset: 0xf8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"killstreak_detect", &init_shared, undefined, undefined, undefined);
}

// Namespace killstreak_detect/killstreak_detect
// Params 0, eflags: 0x2 linked
// Checksum 0xde72276e, Offset: 0x140
// Size: 0x114
function init_shared() {
    if (!isdefined(level.var_c3f91417)) {
        level.var_c3f91417 = {};
        clientfield::register("vehicle", "enemyvehicle", 1, 2, "int");
        clientfield::register("scriptmover", "enemyvehicle", 1, 2, "int");
        clientfield::register("missile", "enemyvehicle", 1, 2, "int");
        clientfield::register("actor", "enemyvehicle", 1, 2, "int");
        clientfield::register("vehicle", "vehicletransition", 1, 1, "int");
    }
}

// Namespace killstreak_detect/killstreak_detect
// Params 2, eflags: 0x2 linked
// Checksum 0xd5e0095f, Offset: 0x260
// Size: 0x5c
function killstreaktargetset(killstreakentity, offset = (0, 0, 0)) {
    target_set(killstreakentity, offset);
    /#
        killstreakentity thread killstreak_hacking::killstreak_switch_team(killstreakentity.owner);
    #/
}

// Namespace killstreak_detect/killstreak_detect
// Params 1, eflags: 0x0
// Checksum 0xcf10c95e, Offset: 0x2c8
// Size: 0x3c
function killstreaktargetclear(killstreakentity) {
    target_remove(killstreakentity);
    /#
        killstreakentity thread killstreak_hacking::killstreak_switch_team_end();
    #/
}

