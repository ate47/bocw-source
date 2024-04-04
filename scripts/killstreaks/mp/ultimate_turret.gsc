// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\battlechatter.gsc;
#using script_1cc417743d7c262d;
#using scripts\killstreaks\ultimate_turret_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace ultimate_turret;

// Namespace ultimate_turret/ultimate_turret
// Params 0, eflags: 0x5
// Checksum 0x4ad92999, Offset: 0xc8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"ultimate_turret", &preinit, undefined, undefined, #"killstreaks");
}

// Namespace ultimate_turret/ultimate_turret
// Params 0, eflags: 0x6 linked
// Checksum 0x54b07498, Offset: 0x118
// Size: 0x44
function private preinit() {
    level.var_729a0937 = &function_4b645b3f;
    level.var_bbc796bf = &turret_destroyed;
    init_shared();
}

// Namespace ultimate_turret/ultimate_turret
// Params 1, eflags: 0x2 linked
// Checksum 0xb2935649, Offset: 0x168
// Size: 0x2c
function function_4b645b3f(killstreaktype) {
    self globallogic_audio::play_taacom_dialog("timeout", killstreaktype);
}

// Namespace ultimate_turret/ultimate_turret
// Params 2, eflags: 0x2 linked
// Checksum 0x14ddd74d, Offset: 0x1a0
// Size: 0x7e
function turret_destroyed(attacker, weapon) {
    profilestart();
    if (isdefined(attacker)) {
        attacker battlechatter::function_eebf94f6("ultimate_turret");
        attacker stats::function_e24eec31(weapon, #"hash_3f3d8a93c372c67d", 1);
        attacker stats::function_a431be09(weapon);
    }
    profilestop();
}

