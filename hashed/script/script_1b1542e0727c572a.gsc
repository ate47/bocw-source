#using script_2ef0cf51653aaada;
#using script_498cf7685befe7bf;
#using script_77f51076c7c89596;
#using script_e3ec3024527fc15;
#using scripts\core_common\ai_shared;
#using scripts\core_common\array_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\spawner_shared;
#using scripts\core_common\vehicle_shared;
#using scripts\cp_common\skipto;

#namespace namespace_ac51ea79;

// Namespace namespace_ac51ea79/namespace_ac51ea79
// Params 1, eflags: 0x0
// Checksum 0x341017c1, Offset: 0x250
// Size: 0xec
function starting(*str_objective) {
    namespace_534279a::spawn_allies();
    level.var_77be18d2 = vehicle::simple_spawn_single("player_fav");
    level.var_7b278a4f = vehicle::simple_spawn_single("ally_fav_left");
    level.var_5d798cf2 = vehicle::simple_spawn_single("ally_fav_right");
    fav::init();
    vehicle::simple_spawn("veh_guard_station");
    vehicle::simple_spawn("veh_wall");
    level thread namespace_ce17746::function_ee43d0f7();
    scene::function_27f5972e("p9_fxanim_cp_siege_guard_tower_01_bundle");
}

// Namespace namespace_ac51ea79/namespace_ac51ea79
// Params 2, eflags: 0x0
// Checksum 0x125a2bcf, Offset: 0x348
// Size: 0x7c
function main(*str_objective, *var_50cc0d4f) {
    level thread function_ba67eb3b();
    level thread function_a2982a04();
    level flag::wait_till("flag_siege_activate_approach");
    skipto::function_4e3ab877("rail_ride");
}

// Namespace namespace_ac51ea79/namespace_ac51ea79
// Params 4, eflags: 0x0
// Checksum 0xaa26308f, Offset: 0x3d0
// Size: 0x24
function cleanup(*str_objective, *var_50cc0d4f, *var_aa1a6455, *player) {
    
}

// Namespace namespace_ac51ea79/namespace_ac51ea79
// Params 0, eflags: 0x0
// Checksum 0xc36d093, Offset: 0x400
// Size: 0x104
function function_ba67eb3b() {
    level flag::wait_till("flg_wall_rpg");
    var_b50c6c7 = spawner::get_ai_group_ai("tower_group");
    array::thread_all(var_b50c6c7, &ai::shoot_at_target, "normal", level.var_82e50b77, undefined, 10, undefined, 1);
    level flag::wait_till("flg_wall_crash");
    var_b986bc82 = getentarray("veh_wall_vignette", "script_noteworthy");
    array::run_all(var_b986bc82, &kill);
    level.var_82e50b77 kill();
}

// Namespace namespace_ac51ea79/namespace_ac51ea79
// Params 0, eflags: 0x0
// Checksum 0x736fda4b, Offset: 0x510
// Size: 0x104
function function_a2982a04() {
    level flag::wait_till("flg_siege_guard_station_cleanup");
    a_ai = spawner::get_ai_group_ai("guard_station_group");
    array::run_all(a_ai, &deletedelay);
    var_f2623ee2 = getentarray("veh_guard_station", "targetname");
    array::run_all(var_f2623ee2, &deletedelay);
    level flag::wait_till("flg_siege_tower_cleanup");
    a_ai = spawner::get_ai_group_ai("tower_group");
    array::run_all(a_ai, &deletedelay);
}

