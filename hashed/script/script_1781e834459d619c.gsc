// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\battlechatter.gsc;
#using script_1cc417743d7c262d;
#using script_5312dbb58ee628a8;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace missile_turret;

// Namespace missile_turret/missile_turret
// Params 0, eflags: 0x5
// Checksum 0x61c37470, Offset: 0xc8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"missile_turret", &preinit, undefined, undefined, undefined);
}

// Namespace missile_turret/missile_turret
// Params 0, eflags: 0x6 linked
// Checksum 0xd817326a, Offset: 0x110
// Size: 0x44
function private preinit() {
    level.var_1c5940ad = &function_4b645b3f;
    level.var_2958ac6c = &turret_destroyed;
    init_shared();
}

// Namespace missile_turret/missile_turret
// Params 1, eflags: 0x2 linked
// Checksum 0x20b05a35, Offset: 0x160
// Size: 0x2c
function function_4b645b3f(killstreaktype) {
    self globallogic_audio::play_taacom_dialog("timeout", killstreaktype);
}

// Namespace missile_turret/missile_turret
// Params 2, eflags: 0x2 linked
// Checksum 0x69de5f88, Offset: 0x198
// Size: 0x66
function turret_destroyed(attacker, weapon) {
    profilestart();
    if (isdefined(attacker)) {
        attacker battlechatter::function_eebf94f6("missile_turret", weapon);
        attacker stats::function_e24eec31(weapon, #"hash_3f3d8a93c372c67d", 1);
    }
    profilestop();
}

