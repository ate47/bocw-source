// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\util.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_spawner.gsc;
#using scripts\zm_common\zm_round_logic.gsc;
#using scripts\zm_common\zm_player.gsc;
#using scripts\zm_common\zm_cleanup_mgr.gsc;
#using scripts\zm_common\zm_behavior.gsc;
#using scripts\zm_common\gametypes\globallogic_utils.gsc;
#using scripts\zm_common\gametypes\globallogic.gsc;
#using scripts\zm_common\gametypes\zm_gametype.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace zgrief;

// Namespace zgrief/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x30fcca7e, Offset: 0x138
// Size: 0x13c
function event_handler[gametype_init] main(*eventstruct) {
    zm_gametype::main();
    util::registertimelimit(0, 1440);
    util::registerscorelimit(0, 50000);
    level.forceallallies = 0;
    level.onprecachegametype = &onprecachegametype;
    level.onstartgametype = &onstartgametype;
    level.ontimelimit = &ontimelimit;
    level.onscorelimit = &onscorelimit;
    level._game_module_custom_spawn_init_func = &zm_gametype::custom_spawn_init_func;
    level._game_module_stat_update_func = &zm_stats::survival_classic_custom_stat_update;
    level._round_start_func = &zm_round_logic::round_start;
    zm_player::register_player_damage_callback(&playerdamagecallback);
    callback::on_spawned(&onplayerspawned);
}

// Namespace zgrief/zgrief
// Params 0, eflags: 0x0
// Checksum 0x130b5ae3, Offset: 0x280
// Size: 0x1c
function onprecachegametype() {
    level.canplayersuicide = &zm_gametype::canplayersuicide;
}

// Namespace zgrief/zgrief
// Params 0, eflags: 0x0
// Checksum 0x7ac3674e, Offset: 0x2a8
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

// Namespace zgrief/zgrief
// Params 0, eflags: 0x0
// Checksum 0xd520bb9b, Offset: 0x458
// Size: 0xac
function ontimelimit() {
    winner = globallogic::determineteamwinnerbygamestat("teamScores");
    globallogic_utils::logteamwinstring("time limit", winner);
    setdvar(#"ui_text_endreason", game.strings[#"time_limit_reached"]);
    thread globallogic::endgame(winner, game.strings[#"time_limit_reached"]);
}

// Namespace zgrief/zgrief
// Params 0, eflags: 0x0
// Checksum 0xdf14b130, Offset: 0x510
// Size: 0xac
function onscorelimit() {
    winner = globallogic::determineteamwinnerbygamestat("teamScores");
    globallogic_utils::logteamwinstring("scorelimit", winner);
    setdvar(#"ui_text_endreason", game.strings[#"score_limit_reached"]);
    thread globallogic::endgame(winner, game.strings[#"score_limit_reached"]);
}

// Namespace zgrief/zgrief
// Params 10, eflags: 0x0
// Checksum 0x22697615, Offset: 0x5c8
// Size: 0x80
function playerdamagecallback(*einflictor, eattacker, idamage, *idflags, *smeansofdeath, *weapon, *vpoint, *vdir, *shitloc, *psoffsettime) {
    if (isdefined(shitloc) && isplayer(shitloc)) {
        return 0;
    }
    return psoffsettime;
}

// Namespace zgrief/zgrief
// Params 0, eflags: 0x0
// Checksum 0xe1048076, Offset: 0x650
// Size: 0xd8
function onplayerspawned() {
    self function_dee3f41b(1);
    foreach (player in getplayers()) {
        if (player != self) {
            self setignoreent(player, 1);
            player setignoreent(self, 1);
        }
    }
}

