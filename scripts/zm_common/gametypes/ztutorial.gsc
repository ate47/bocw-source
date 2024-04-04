// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_spawner.gsc;
#using scripts\zm_common\zm_round_logic.gsc;
#using scripts\zm_common\zm_cleanup_mgr.gsc;
#using scripts\zm_common\zm_behavior.gsc;
#using scripts\zm_common\gametypes\zm_gametype.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\math_shared.gsc;

#namespace ztutorial;

// Namespace ztutorial/gametype_init
// Params 1, eflags: 0x20
// Checksum 0xf81c96d7, Offset: 0xe8
// Size: 0xbc
function event_handler[gametype_init] main(*eventstruct) {
    zm_gametype::main();
    level.disableclassselection = 1;
    level.onprecachegametype = &onprecachegametype;
    level.onstartgametype = &onstartgametype;
    level.callbackplayerlaststand = &function_1b27b9d0;
    level._game_module_custom_spawn_init_func = &zm_gametype::custom_spawn_init_func;
    level._game_module_stat_update_func = &zm_stats::survival_classic_custom_stat_update;
    level._round_start_func = &zm_round_logic::round_start;
}

// Namespace ztutorial/ztutorial
// Params 0, eflags: 0x0
// Checksum 0x233ea5c, Offset: 0x1b0
// Size: 0x1c
function onprecachegametype() {
    level.canplayersuicide = &zm_gametype::canplayersuicide;
}

// Namespace ztutorial/ztutorial
// Params 0, eflags: 0x0
// Checksum 0x68eb4475, Offset: 0x1d8
// Size: 0x1a4
function onstartgametype() {
    zm_behavior::preinit();
    zm_cleanup::preinit();
    zm_spawner::init();
    zm_behavior::postinit();
    zm_cleanup::postinit();
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

// Namespace ztutorial/ztutorial
// Params 9, eflags: 0x0
// Checksum 0xa4e19ae, Offset: 0x388
// Size: 0x4c
function function_1b27b9d0(*einflictor, *eattacker, *idamage, *smeansofdeath, *weapon, *vdir, *shitloc, *psoffsettime, *delayoverride) {
    
}

