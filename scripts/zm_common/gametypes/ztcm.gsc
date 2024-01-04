// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\flag_shared.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_round_logic.gsc;
#using scripts\zm_common\gametypes\zm_gametype.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace ztcm;

// Namespace ztcm/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x4b4c7afc, Offset: 0xd8
// Size: 0xdc
function event_handler[gametype_init] main(*eventstruct) {
    zm_gametype::main();
    level.onprecachegametype = &onprecachegametype;
    level.onstartgametype = &onstartgametype;
    level._game_module_custom_spawn_init_func = &zm_gametype::custom_spawn_init_func;
    level._game_module_stat_update_func = &zm_stats::survival_classic_custom_stat_update;
    level._round_start_func = &zm_round_logic::round_start;
    if (!level flag::exists(#"ztcm")) {
        level flag::init(#"ztcm", 1);
    }
}

// Namespace ztcm/ztcm
// Params 0, eflags: 0x0
// Checksum 0x36c9deb, Offset: 0x1c0
// Size: 0x1c
function onprecachegametype() {
    level.canplayersuicide = &zm_gametype::canplayersuicide;
}

// Namespace ztcm/ztcm
// Params 0, eflags: 0x0
// Checksum 0xaf14538e, Offset: 0x1e8
// Size: 0x154
function onstartgametype() {
    level.spawnmins = (0, 0, 0);
    level.spawnmaxs = (0, 0, 0);
    structs = struct::get_array("player_respawn_point", "targetname");
    foreach (struct in structs) {
        level.spawnmins = math::expand_mins(level.spawnmins, struct.origin);
        level.spawnmaxs = math::expand_maxs(level.spawnmaxs, struct.origin);
    }
    level.mapcenter = math::find_box_center(level.spawnmins, level.spawnmaxs);
    setmapcenter(level.mapcenter);
}

