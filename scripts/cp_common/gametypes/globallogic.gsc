// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\weapons.gsc;
#using scripts\cp_common\util.gsc;
#using scripts\cp_common\rat.gsc;
#using scripts\cp_common\load.gsc;
#using scripts\cp_common\gametypes\shellshock.gsc;
#using scripts\cp_common\gametypes\serversettings.gsc;
#using script_32399001bdb550da;
#using scripts\cp_common\gametypes\menus.gsc;
#using scripts\cp_common\gametypes\loadout.gsc;
#using scripts\cp_common\gametypes\globallogic_utils.gsc;
#using scripts\cp_common\gametypes\globallogic_ui.gsc;
#using scripts\cp_common\gametypes\globallogic_spawn.gsc;
#using scripts\cp_common\gametypes\globallogic_player.gsc;
#using scripts\cp_common\gametypes\globallogic_defaults.gsc;
#using scripts\cp_common\gametypes\dev.gsc;
#using scripts\cp_common\gametypes\deathicons.gsc;
#using scripts\cp_common\gametypes\battlechatter.gsc;
#using scripts\cp_common\challenges.gsc;
#using scripts\cp_common\callbacks.gsc;
#using scripts\cp_common\bb.gsc;
#using scripts\core_common\weapons_shared.gsc;
#using scripts\core_common\visionset_mgr_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\tweakables_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\spectating.gsc;
#using script_44b0b8420eabacad;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\persistence_shared.gsc;
#using scripts\core_common\music_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\hud_util_shared.gsc;
#using scripts\core_common\hud_shared.gsc;
#using scripts\core_common\hud_message_shared.gsc;
#using scripts\core_common\healthoverlay.gsc;
#using scripts\core_common\globallogic\globallogic_player.gsc;
#using scripts\core_common\gametype_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\gamestate.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\demo_shared.gsc;
#using scripts\core_common\damagefeedback_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\challenges_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\bb_shared.gsc;

#namespace globallogic;

// Namespace globallogic/globallogic
// Params 0, eflags: 0x5
// Checksum 0x65e101da, Offset: 0x698
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"globallogic", &preinit, undefined, undefined, #"visionset_mgr");
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x6 linked
// Checksum 0x70989f56, Offset: 0x6e8
// Size: 0x44
function private preinit() {
    visionset_mgr::register_info("visionset", "crithealth", 1, 4, 25, 1, &visionset_mgr::ramp_in_out_thread_per_player, 0);
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xe69339f5, Offset: 0x738
// Size: 0x9e4
function init() {
    level.splitscreen = issplitscreen();
    level.xenon = getdvarstring(#"xenongame") == "true";
    level.ps3 = getdvarstring(#"ps3game") == "true";
    level.wiiu = getdvarstring(#"wiiugame") == "true";
    level.orbis = getdvarstring(#"orbisgame") == "true";
    level.durango = getdvarstring(#"durangogame") == "true";
    level.console = getdvarstring(#"consolegame") == "true";
    level.onlinegame = sessionmodeisonlinegame();
    level.systemlink = sessionmodeissystemlink();
    level.rankedmatch = gamemodeisusingxp();
    level.leaguematch = 0;
    level.arenamatch = 0;
    level.contractsenabled = !getgametypesetting(#"disablecontracts");
    level.new_health_model = getdvarint(#"new_health_model", 1) > 0;
    level.contractsenabled = 0;
    /#
        if (getdvarint(#"scr_forcerankedmatch", 0) == 1) {
            level.rankedmatch = 1;
        }
    #/
    level.script = util::get_map_name();
    level.gametype = util::get_game_type();
    level.var_837aa533 = hash(level.gametype);
    if (isdefined(level.gametype)) {
        level.var_12323003 = function_16495154(level.var_837aa533);
        level.basegametype = function_be90acca(level.var_837aa533);
    }
    level.teambased = 0;
    level.teamcount = getgametypesetting(#"teamcount");
    level.multiteam = level.teamcount > 2;
    level.var_2216ae6c = level.teamcount + 1;
    if (2 == level.var_2216ae6c) {
        level.var_c20ad7aa = #"axis";
    } else {
        level.var_c20ad7aa = "team" + level.var_2216ae6c;
    }
    gametype::init();
    level.teams = [];
    level.teamindex = [];
    level.playerteams = [];
    teamcount = level.teamcount;
    level.playerteams[#"allies"] = #"allies";
    level.playerteams[#"axis"] = #"axis";
    level.teams[#"allies"] = "allies";
    level.teams[#"axis"] = "axis";
    level.teams[#"team3"] = "team3";
    level.teamindex[#"neutral"] = 0;
    level.teamindex[#"allies"] = 1;
    level.teamindex[#"axis"] = 2;
    for (teamindex = 3; teamindex <= teamcount; teamindex++) {
        level.teams[hash("team" + teamindex)] = "team" + teamindex;
        level.teamindex[hash("team" + teamindex)] = teamindex;
    }
    level.overrideteamscore = 0;
    level.overrideplayerscore = 0;
    level.displayhalftimetext = 0;
    level.displayroundendtext = 1;
    level.endgameonscorelimit = 1;
    level.endgameontimelimit = 1;
    level.cumulativeroundscores = 1;
    level.scoreroundwinbased = 0;
    level.resetplayerscoreeveryround = 0;
    level.gameforfeited = 0;
    level.forceautoassign = 0;
    level.halftimetype = "halftime";
    level.halftimesubcaption = #"hash_54b0f0ec952ddba8";
    level.laststatustime = 0;
    level.waswinning = [];
    level.lastslowprocessframe = 0;
    level.placement = [];
    foreach (team, _ in level.teams) {
        level.placement[team] = [];
    }
    level.placement[#"all"] = [];
    level.postroundtime = 7;
    level.inovertime = 0;
    level.var_6cc58e4b = 1;
    level.defaultoffenseradius = 560;
    level.dropteam = getdvarint(#"sv_maxclients", 0);
    globallogic_ui::init();
    registerdvars();
    level.oldschool = getdvarint(#"scr_oldschool", 0) == 1;
    if (level.oldschool) {
        /#
            print("all_players_spawned");
        #/
        setdvar(#"jump_height", 64);
        setdvar(#"jump_slowdownenable", 0);
        setdvar(#"bg_falldamageminheight", 256);
        setdvar(#"bg_falldamagemaxheight", 512);
        setdvar(#"player_clipsizemultiplier", 2);
    }
    precache_mp_leaderboards();
    if (!isdefined(game.tiebreaker)) {
        game.tiebreaker = 0;
    }
    if (!isdefined(game.stat)) {
        game.stat = [];
    }
    level.disablechallenges = 0;
    if (level.leaguematch || getdvarint(#"scr_disablechallenges", 0) > 0) {
        level.disablechallenges = 1;
    }
    level.disablestattracking = getdvarint(#"scr_disablestattracking", 0) > 0;
    level thread setupcallbacks();
    level.figure_out_attacker = &globallogic_player::figureoutattacker;
    level.figure_out_friendly_fire = &globallogic_player::figureoutfriendlyfire;
    /#
        level.updateteamstatus = &updateteamstatus;
    #/
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0x8dbe8093, Offset: 0x1128
// Size: 0x204
function registerdvars() {
    if (getdvarstring(#"scr_oldschool") == "") {
        setdvar(#"scr_oldschool", 0);
    }
    if (getdvarstring(#"ui_guncycle") == "") {
        setdvar(#"ui_guncycle", 0);
    }
    if (getdvarstring(#"ui_weapon_tiers") == "") {
        setdvar(#"ui_weapon_tiers", 0);
    }
    setdvar(#"ui_text_endreason", "");
    setmatchflag("bomb_timer", 0);
    level.vehicledamagescalar = getdvarfloat(#"scr_vehicle_damage_scalar", 1);
    level.fire_audio_repeat_duration = getdvarint(#"fire_audio_repeat_duration", 0);
    level.fire_audio_random_max_duration = getdvarint(#"fire_audio_random_max_duration", 0);
    setdvar(#"g_customteamname_allies", "");
    setdvar(#"g_customteamname_axis", "");
}

// Namespace globallogic/globallogic
// Params 10, eflags: 0x2 linked
// Checksum 0x19b548b2, Offset: 0x1338
// Size: 0x54
function blank(*arg1, *arg2, *arg3, *arg4, *arg5, *arg6, *arg7, *arg8, *arg9, *arg10) {
    
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xc369debe, Offset: 0x1398
// Size: 0x39c
function setupcallbacks() {
    level.spawnplayer = &globallogic_spawn::spawnplayer;
    level.spawnplayerprediction = &blank;
    level.spawnclient = &globallogic_spawn::spawnclient;
    level.spawnspectator = &globallogic_spawn::spawnspectator;
    level.spawnintermission = &globallogic_spawn::spawnintermission;
    level.wavespawntimer = &wavespawntimer;
    level.spawnmessage = &globallogic_spawn::default_spawnmessage;
    level.onspawnplayer = &blank;
    level.onspawnplayerunified = &blank;
    level.onspawnspectator = &globallogic_defaults::default_onspawnspectator;
    level.onspawnintermission = &globallogic_defaults::default_onspawnintermission;
    level.onrespawndelay = &blank;
    level.onforfeit = &globallogic_defaults::default_onforfeit;
    level.ontimelimit = &globallogic_defaults::default_ontimelimit;
    level.onscorelimit = &globallogic_defaults::default_onscorelimit;
    level.onalivecountchange = &globallogic_defaults::default_onalivecountchange;
    level.ondeadevent = &globallogic_defaults::default_ondeadevent;
    level.ononeleftevent = &globallogic_defaults::default_ononeleftevent;
    level.onlastteamaliveevent = &globallogic_defaults::function_9fd1cc80;
    level.gettimepassed = &globallogic_utils::gettimepassed;
    level.gettimeremaining = &globallogic_utils::gettimeremaining;
    level.gettimelimit = &globallogic_defaults::default_gettimelimit;
    level.getteamkillpenalty = &globallogic_defaults::default_getteamkillpenalty;
    level.getteamkillscore = &globallogic_defaults::default_getteamkillscore;
    level.onprecachegametype = &blank;
    level.onstartgametype = &blank;
    level.onplayerconnect = &blank;
    level.onplayerdisconnect = &blank;
    level.onplayerdamage = &blank;
    level.onplayerkilled = &blank;
    level.onplayerkilledextraunthreadedcbs = [];
    level.onteamoutcomenotify = &blank;
    level.onoutcomenotify = &blank;
    level.onendgame = &blank;
    level.onroundendgame = &globallogic_defaults::default_onroundendgame;
    level.onmedalawarded = &blank;
    level.var_df67ea13 = &blank;
    globallogic_ui::setupcallbacks();
    callback::function_8a0395cd(&function_8a0395cd);
}

// Namespace globallogic/globallogic
// Params 1, eflags: 0x2 linked
// Checksum 0x60d06ff3, Offset: 0x1740
// Size: 0x1e
function function_8a0395cd(params) {
    self notify(#"hash_72a5fe161eb7a0ce", params);
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0x7cecf73b, Offset: 0x1768
// Size: 0x23c
function precache_mp_leaderboards() {
    if (sessionmodeiszombiesgame()) {
        return;
    }
    if (!level.rankedmatch) {
        return;
    }
    if (is_true(level.isdoa)) {
        return;
    }
    mapname = util::get_map_name();
    globalleaderboards = "LB_MP_GB_XPPRESTIGE LB_MP_GB_SCORE LB_MP_GB_KDRATIO LB_MP_GB_KILLS LB_MP_GB_WINS LB_MP_GB_DEATHS LB_MP_GB_XPMAXPERGAME LB_MP_GB_TACTICALINSERTS LB_MP_GB_TACTICALINSERTSKILLS LB_MP_GB_PRESTIGEXP LB_MP_GB_HEADSHOTS LB_MP_GB_WEAPONS_PRIMARY LB_MP_GB_WEAPONS_SECONDARY";
    careerleaderboard = "";
    switch (level.gametype) {
    case #"sas":
    case #"oic":
    case #"shrp":
    case #"gun":
        break;
    default:
        careerleaderboard = " LB_MP_GB_SCOREPERMINUTE";
        break;
    }
    gamemodeleaderboard = " LB_MP_GM_" + level.gametype;
    var_f4eddf23 = " LB_MP_GM_" + level.gametype + "_EXT";
    var_7ac4078e = "";
    var_1c6c690f = "";
    hardcoremode = getgametypesetting(#"hardcoremode");
    if (isdefined(hardcoremode) && hardcoremode) {
        var_7ac4078e = gamemodeleaderboard + "_HC";
        var_1c6c690f = var_f4eddf23 + "_HC";
    }
    mapleaderboard = " LB_MP_MAP_" + getsubstr(mapname, 3, mapname.size);
    precacheleaderboards(globalleaderboards + careerleaderboard + gamemodeleaderboard + var_f4eddf23 + var_7ac4078e + var_1c6c690f + mapleaderboard);
}

// Namespace globallogic/globallogic
// Params 4, eflags: 0x2 linked
// Checksum 0x3ab2b935, Offset: 0x19b0
// Size: 0xee
function compareteambygamestat(gamestat, teama, teamb, previous_winner_score) {
    winner = undefined;
    if (teama == "tie") {
        winner = #"tie";
        if (previous_winner_score < game.stat[gamestat][teamb]) {
            winner = teamb;
        }
    } else if (game.stat[gamestat][teama] == game.stat[gamestat][teamb]) {
        winner = #"tie";
    } else if (game.stat[gamestat][teamb] > game.stat[gamestat][teama]) {
        winner = teamb;
    } else {
        winner = teama;
    }
    return winner;
}

// Namespace globallogic/globallogic
// Params 1, eflags: 0x2 linked
// Checksum 0x2e25ba26, Offset: 0x1aa8
// Size: 0xd2
function determineteamwinnerbygamestat(gamestat) {
    teamkeys = getarraykeys(level.teams);
    winner = teamkeys[0];
    previous_winner_score = game.stat[gamestat][winner];
    for (teamindex = 1; teamindex < teamkeys.size; teamindex++) {
        winner = compareteambygamestat(gamestat, winner, teamkeys[teamindex], previous_winner_score);
        if (winner != #"tie") {
            previous_winner_score = game.stat[gamestat][winner];
        }
    }
    return winner;
}

// Namespace globallogic/globallogic
// Params 3, eflags: 0x2 linked
// Checksum 0xa499ae23, Offset: 0x1b88
// Size: 0xce
function compareteambyteamscore(teama, teamb, previous_winner_score) {
    winner = undefined;
    teambscore = [[ level._getteamscore ]](teamb);
    if (teama == "tie") {
        winner = "tie";
        if (previous_winner_score < teambscore) {
            winner = teamb;
        }
        return winner;
    }
    teamascore = [[ level._getteamscore ]](teama);
    if (teambscore == teamascore) {
        winner = "tie";
    } else if (teambscore > teamascore) {
        winner = teamb;
    } else {
        winner = teama;
    }
    return winner;
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x0
// Checksum 0xbc6386d0, Offset: 0x1c60
// Size: 0xc2
function determineteamwinnerbyteamscore() {
    teamkeys = getarraykeys(level.teams);
    winner = teamkeys[0];
    previous_winner_score = [[ level._getteamscore ]](winner);
    for (teamindex = 1; teamindex < teamkeys.size; teamindex++) {
        winner = compareteambyteamscore(winner, teamkeys[teamindex], previous_winner_score);
        if (winner != "tie") {
            previous_winner_score = [[ level._getteamscore ]](winner);
        }
    }
    return winner;
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xe6a8a5cd, Offset: 0x1d30
// Size: 0x8c
function forceend() {
    level.var_42237904 = undefined;
    level.var_3be4bfc9 = undefined;
    level.var_8a801996 = undefined;
    if (level.hostforcedend || level.forcedend) {
        return;
    }
    level.forcedend = 1;
    level.hostforcedend = 1;
    setmatchflag("disableIngameMenu", 1);
    thread endgame();
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0x3115555b, Offset: 0x1dc8
// Size: 0x7c
function killserverpc() {
    if (level.hostforcedend || level.forcedend) {
        return;
    }
    level.forcedend = 1;
    level.hostforcedend = 1;
    level.killserver = 1;
    println("<unknown string>");
    thread endgame();
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0x196d819b, Offset: 0x1e50
// Size: 0xb0
function atleasttwoteams() {
    valid_count = 0;
    foreach (team, _ in level.teams) {
        if (level.playercount[team] != 0) {
            valid_count++;
        }
    }
    if (valid_count < 2) {
        return false;
    }
    return true;
}

// Namespace globallogic/globallogic
// Params 1, eflags: 0x2 linked
// Checksum 0xccaa2e74, Offset: 0x1f08
// Size: 0x64
function checkifteamforfeits(team) {
    if (!game.everexisted[team]) {
        return false;
    }
    if (level.playercount[team] < 1 && util::totalplayercount() > 0) {
        return true;
    }
    return false;
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xefbccae6, Offset: 0x1f78
// Size: 0x120
function function_a39c3df6() {
    var_f8765cbc = 0;
    var_64d2b1d6 = undefined;
    foreach (team, _ in level.teams) {
        if (checkifteamforfeits(team)) {
            var_f8765cbc++;
            if (!level.multiteam) {
                thread [[ level.onforfeit ]](team);
                return true;
            }
            continue;
        }
        var_64d2b1d6 = team;
    }
    if (level.multiteam && var_f8765cbc == level.teams.size - 1) {
        thread [[ level.onforfeit ]](var_64d2b1d6);
        return true;
    }
    return false;
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0x67f78924, Offset: 0x20a0
// Size: 0x9c
function dospawnqueueupdates() {
    foreach (team, _ in level.teams) {
        if (level.spawnqueuemodified[team]) {
            [[ level.onalivecountchange ]](team);
        }
    }
}

// Namespace globallogic/globallogic
// Params 1, eflags: 0x2 linked
// Checksum 0x48e1064d, Offset: 0x2148
// Size: 0x50
function isteamalldead(team) {
    return level.everexisted[team] && !function_a1ef346b(team).size && !level.playerlives[team];
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0x58552579, Offset: 0x21a0
// Size: 0x92
function areallteamsdead() {
    foreach (team, _ in level.teams) {
        if (!isteamalldead(team)) {
            return false;
        }
    }
    return true;
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xee0b83b0, Offset: 0x2240
// Size: 0x100
function function_f2a0d980() {
    count = 0;
    var_91f4d3aa = 0;
    aliveteam = undefined;
    foreach (team, _ in level.teams) {
        if (level.everexisted[team]) {
            if (!isteamalldead(team)) {
                aliveteam = team;
                count++;
            }
            var_91f4d3aa++;
        }
    }
    if (var_91f4d3aa > 1 && count == 1) {
        return aliveteam;
    }
    return undefined;
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xe3f94ffc, Offset: 0x2348
// Size: 0x1b8
function dodeadeventupdates() {
    if (!isdefined(level.ondeadevent)) {
        return false;
    }
    if (level.teambased) {
        if (areallteamsdead()) {
            [[ level.ondeadevent ]]("all");
            return true;
        }
        if (!isdefined(level.ondeadevent)) {
            var_207e906a = function_f2a0d980();
            if (isdefined(var_207e906a)) {
                [[ level.onlastteamaliveevent ]](var_207e906a);
                return true;
            }
        } else {
            foreach (team, _ in level.teams) {
                if (isteamalldead(team)) {
                    [[ level.ondeadevent ]](team);
                    return true;
                }
            }
        }
    } else if (totalalivecount() == 0 && totalplayerlives() == 0 && level.maxplayercount > 1) {
        [[ level.ondeadevent ]]("all");
        return true;
    }
    return false;
}

// Namespace globallogic/globallogic
// Params 1, eflags: 0x2 linked
// Checksum 0xc36f09fe, Offset: 0x2508
// Size: 0x60
function isonlyoneleftaliveonteam(team) {
    return level.lastalivecount[team] > 1 && function_a1ef346b(team).size == 1 && level.playerlives[team] == 1;
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0x3816e160, Offset: 0x2570
// Size: 0x120
function doonelefteventupdates() {
    if (level.teambased) {
        foreach (team, _ in level.teams) {
            if (isonlyoneleftaliveonteam(team)) {
                [[ level.ononeleftevent ]](team);
                return true;
            }
        }
    } else if (totalalivecount() == 1 && totalplayerlives() == 1 && level.maxplayercount > 1) {
        [[ level.ononeleftevent ]]("all");
        return true;
    }
    return false;
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0x401388c0, Offset: 0x2698
// Size: 0x210
function updategameevents() {
    /#
        if (getdvarint(#"scr_hostmigrationtest", 0) == 1) {
            return;
        }
    #/
    if ((level.rankedmatch || level.leaguematch) && !level.ingraceperiod) {
        if (level.teambased) {
            if (!level.gameforfeited) {
                if (game.state == "playing" && function_a39c3df6()) {
                    return;
                }
            } else if (atleasttwoteams()) {
                level.gameforfeited = 0;
                level notify(#"abort forfeit");
            }
        } else if (!level.gameforfeited) {
            if (util::totalplayercount() == 1 && level.maxplayercount > 1) {
                thread [[ level.onforfeit ]]();
                return;
            }
        } else if (util::totalplayercount() > 1) {
            level.gameforfeited = 0;
            level notify(#"abort forfeit");
        }
    }
    if (!level.playerqueuedrespawn && !level.numlives && !level.inovertime) {
        return;
    }
    if (level.ingraceperiod) {
        return;
    }
    if (level.playerqueuedrespawn) {
        dospawnqueueupdates();
    }
    if (dodeadeventupdates()) {
        return;
    }
    if (doonelefteventupdates()) {
        return;
    }
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xcf4fb8aa, Offset: 0x28b0
// Size: 0x15c
function matchstarttimer() {
    self endon(#"death");
    var_e8598101 = int(level.prematchperiod);
    if (var_e8598101 >= 2) {
        while (var_e8598101 > 0 && !level.gameended) {
            self luinotifyevent(#"create_prematch_timer", 2, gettime() + var_e8598101 * 1000, 1);
            if (var_e8598101 == 2) {
                visionsetnaked("default", 3);
            }
            var_e8598101--;
            self playlocalsound(#"hash_5e14726f77107d1b");
            wait(1);
        }
        self luinotifyevent(#"prematch_timer_ended", 1, 1);
        return;
    }
    visionsetnaked("default", 1);
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0x6a260f77, Offset: 0x2a18
// Size: 0x1c
function matchstarttimerskip() {
    visionsetnaked("default", 0);
}

// Namespace globallogic/globallogic
// Params 2, eflags: 0x2 linked
// Checksum 0x3f0c06d4, Offset: 0x2a40
// Size: 0x70
function notifyteamwavespawn(team, time) {
    if (time - level.lastwave[team] > level.wavedelay[team] * 1000) {
        level notify("wave_respawn_" + team);
        level.lastwave[team] = time;
        level.waveplayerspawnindex[team] = 0;
    }
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0x4fee6528, Offset: 0x2ab8
// Size: 0xd2
function wavespawntimer() {
    level endon(#"game_ended");
    while (game.state == "playing") {
        time = gettime();
        foreach (team, _ in level.teams) {
            notifyteamwavespawn(team, time);
        }
        waitframe(1);
    }
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xb34a9bf1, Offset: 0x2b98
// Size: 0xbc
function hostidledout() {
    hostplayer = util::gethostplayer();
    /#
        if (getdvarint(#"scr_writeconfigstrings", 0) == 1 || getdvarint(#"scr_hostmigrationtest", 0) == 1) {
            return false;
        }
    #/
    if (isdefined(hostplayer) && !is_true(hostplayer.hasspawned) && !isdefined(hostplayer.selectedclass)) {
        return true;
    }
    return false;
}

// Namespace globallogic/globallogic
// Params 3, eflags: 0x2 linked
// Checksum 0x3aadfde, Offset: 0x2c60
// Size: 0x54
function incrementmatchcompletionstat(gamemode, playedorhosted, stat) {
    self stats::inc_stat(#"gamehistory", gamemode, #"modehistory", playedorhosted, stat, 1);
}

// Namespace globallogic/globallogic
// Params 3, eflags: 0x0
// Checksum 0xee6c4b6e, Offset: 0x2cc0
// Size: 0x54
function setmatchcompletionstat(gamemode, playedorhosted, stat) {
    self stats::set_stat(#"gamehistory", gamemode, #"modehistory", playedorhosted, stat, 1);
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0x19dc15c7, Offset: 0x2d20
// Size: 0x15a
function getteamscoreratio() {
    playerteam = self.pers[#"team"];
    score = getteamscore(playerteam);
    otherteamscore = 0;
    foreach (team, _ in level.teams) {
        if (team == playerteam) {
            continue;
        }
        otherteamscore += getteamscore(team);
    }
    if (level.teams.size > 1) {
        otherteamscore /= level.teams.size - 1;
    }
    if (otherteamscore != 0) {
        return (float(score) / float(otherteamscore));
    }
    return score;
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x0
// Checksum 0x65933456, Offset: 0x2e88
// Size: 0x7e
function gethighestscore() {
    highestscore = -999999999;
    for (index = 0; index < level.players.size; index++) {
        player = level.players[index];
        if (player.score > highestscore) {
            highestscore = player.score;
        }
    }
    return highestscore;
}

// Namespace globallogic/globallogic
// Params 1, eflags: 0x0
// Checksum 0xcf37fda8, Offset: 0x2f10
// Size: 0x9e
function getnexthighestscore(score) {
    highestscore = -999999999;
    for (index = 0; index < level.players.size; index++) {
        player = level.players[index];
        if (player.score >= score) {
            continue;
        }
        if (player.score > highestscore) {
            highestscore = player.score;
        }
    }
    return highestscore;
}

// Namespace globallogic/globallogic
// Params 1, eflags: 0x0
// Checksum 0x3593d1b8, Offset: 0x2fb8
// Size: 0x55c
function sendafteractionreport(winner) {
    /#
        if (getdvarint(#"scr_writeconfigstrings", 0) == 1) {
            return;
        }
    #/
    for (index = 0; index < level.players.size; index++) {
        player = level.players[index];
        spread = player.kills - player.deaths;
        if (player.pers[#"cur_kill_streak"] > player.pers[#"best_kill_streak"]) {
            player.pers[#"best_kill_streak"] = player.pers[#"cur_kill_streak"];
        }
        if (level.rankedmatch) {
            player stats::function_7a850245(#"privatematch", 0);
        } else {
            player stats::function_7a850245(#"privatematch", 1);
        }
        player stats::function_7a850245(#"demofileid", getdemofileid());
        player stats::function_7a850245(#"matchid", getmatchid());
        if (isdefined(winner) && winner == player.pers[#"team"]) {
            player stats::function_7a850245(#"matchwon", 1);
        } else {
            player stats::function_7a850245(#"matchwon", 0);
        }
        var_f5f2abb6 = 0;
        var_8d14d7e = 0;
        var_8ea28d75 = 0;
        for (index = 0; index < level.players.size; index++) {
            if (level.players[index].kills > level.players[var_8ea28d75].kills) {
                var_8ea28d75 = index;
            }
            if (level.players[index].assists > level.players[var_8d14d7e].assists) {
                var_8d14d7e = index;
            }
            if (level.players[index].revives > level.players[var_f5f2abb6].revives) {
                var_f5f2abb6 = index;
            }
        }
        teamscoreratio = player getteamscoreratio();
        scoreboardposition = getplacementforplayer(player);
        if (scoreboardposition < 0) {
            scoreboardposition = level.players.size;
        }
        player gamehistoryfinishmatch(4, player.kills, player.deaths, player.score, scoreboardposition, teamscoreratio);
        placement = level.placement[#"all"];
        for (otherplayerindex = 0; otherplayerindex < placement.size; otherplayerindex++) {
            if (level.placement[#"all"][otherplayerindex] == player) {
                recordplayerstats(player, "position", otherplayerindex);
            }
        }
        player stats::function_7a850245(#"valid", 1);
        player stats::function_7a850245(#"viewed", 0);
        if (isdefined(player.pers[#"matchesplayedstatstracked"])) {
            gamemode = util::getcurrentgamemode();
            player incrementmatchcompletionstat(gamemode, "played", "completed");
            if (isdefined(player.pers[#"matcheshostedstatstracked"])) {
                player incrementmatchcompletionstat(gamemode, "hosted", "completed");
                player.pers[#"matcheshostedstatstracked"] = undefined;
            }
            player.pers[#"matchesplayedstatstracked"] = undefined;
        }
    }
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xeb57036e, Offset: 0x3520
// Size: 0x1c2
function gamehistoryplayerkicked() {
    teamscoreratio = self getteamscoreratio();
    scoreboardposition = getplacementforplayer(self);
    if (scoreboardposition < 0) {
        scoreboardposition = level.players.size;
    }
    /#
        assert(isdefined(self.kills));
        assert(isdefined(self.deaths));
        assert(isdefined(self.score));
        assert(isdefined(scoreboardposition));
        assert(isdefined(teamscoreratio));
    #/
    self gamehistoryfinishmatch(2, self.kills, self.deaths, self.score, scoreboardposition, teamscoreratio);
    if (isdefined(self.pers[#"matchesplayedstatstracked"])) {
        gamemode = util::getcurrentgamemode();
        self incrementmatchcompletionstat(gamemode, "played", "kicked");
        self.pers[#"matchesplayedstatstracked"] = undefined;
    }
    uploadstats(self);
    wait(1);
}

// Namespace globallogic/globallogic
// Params 2, eflags: 0x2 linked
// Checksum 0x345ee76, Offset: 0x36f0
// Size: 0x284
function displayroundend(winner, endreasontext) {
    if (level.displayroundendtext) {
        if (level.teambased) {
            if (winner == "tie") {
                demo::function_c6ae5fd6(#"round_result", level.teamindex[#"neutral"], level.teamindex[#"neutral"]);
            } else {
                demo::function_c6ae5fd6(#"round_result", level.teamindex[winner], level.teamindex[#"neutral"]);
            }
        }
        setmatchflag("cg_drawSpectatorMessages", 0);
        players = level.players;
        for (index = 0; index < players.size; index++) {
            player = players[index];
            if (!util::waslastround()) {
                player notify(#"round_ended");
            }
            if (!isdefined(player.pers[#"team"])) {
                player [[ level.spawnintermission ]](1);
                continue;
            }
            if (level.teambased) {
                player thread [[ level.onteamoutcomenotify ]](winner, 1, endreasontext);
            } else {
                player thread [[ level.onoutcomenotify ]](winner, 1, endreasontext);
            }
            self val::set(#"round_end", "show_hud", 0);
            player setclientuivisibilityflag("g_compassShowEnemies", 0);
        }
    }
    if (util::waslastround()) {
        roundendwait(level.roundenddelay, 0);
        return;
    }
    roundendwait(level.roundenddelay, 1);
}

// Namespace globallogic/globallogic
// Params 2, eflags: 0x2 linked
// Checksum 0x3ddc28c6, Offset: 0x3980
// Size: 0x214
function displayroundswitch(*winner, *endreasontext) {
    switchtype = level.halftimetype;
    if (switchtype == "halftime") {
        if (isdefined(level.nextroundisovertime) && level.nextroundisovertime) {
            switchtype = "overtime";
        } else if (level.roundlimit) {
            if (game.roundsplayed * 2 == level.roundlimit) {
                switchtype = "halftime";
            } else {
                switchtype = "intermission";
            }
        } else if (level.scorelimit) {
            if (game.roundsplayed == level.scorelimit - 1) {
                switchtype = "halftime";
            } else {
                switchtype = "intermission";
            }
        } else {
            switchtype = "intermission";
        }
    }
    setmatchtalkflag("EveryoneHearsEveryone", 1);
    players = level.players;
    for (index = 0; index < players.size; index++) {
        player = players[index];
        if (!isdefined(player.pers[#"team"])) {
            player [[ level.spawnintermission ]](1);
            continue;
        }
        player thread [[ level.onteamoutcomenotify ]](switchtype, 0, level.halftimesubcaption);
        player val::set(#"round_switch", "show_hud", 0);
    }
    roundendwait(level.halftimeroundenddelay, 0);
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x0
// Checksum 0xc8e1bc74, Offset: 0x3ba0
// Size: 0x60
function resetoutcomeforallplayers() {
    players = level.players;
    for (index = 0; index < players.size; index++) {
        player = players[index];
        player notify(#"reset_outcome");
    }
}

// Namespace globallogic/globallogic
// Params 2, eflags: 0x0
// Checksum 0xa3b05924, Offset: 0x3c08
// Size: 0x25c
function function_c2cd8bf7(winner, endreasontext) {
    if (!util::isoneround()) {
        displayroundend(winner, endreasontext);
        globallogic_utils::executepostroundevents();
        if (!util::waslastround()) {
            if (checkroundswitch()) {
                displayroundswitch(winner, endreasontext);
            }
            if (isdefined(level.nextroundisovertime) && level.nextroundisovertime) {
                if (!isdefined(game.overtime_round)) {
                    game.overtime_round = 1;
                } else {
                    game.overtime_round++;
                }
            }
            setmatchtalkflag("DeadChatWithDead", level.voip.deadchatwithdead);
            setmatchtalkflag("DeadChatWithTeam", level.voip.deadchatwithteam);
            setmatchtalkflag("DeadHearTeamLiving", level.voip.deadhearteamliving);
            setmatchtalkflag("DeadHearAllLiving", level.voip.deadhearallliving);
            setmatchtalkflag("EveryoneHearsEveryone", level.voip.everyonehearseveryone);
            setmatchtalkflag("DeadHearKiller", level.voip.deadhearkiller);
            setmatchtalkflag("KillersHearVictim", level.voip.killershearvictim);
            game.state = "playing";
            level.allowbattlechatter[#"bc"] = getgametypesetting(#"allowbattlechatter");
            map_restart(1);
            return true;
        }
    }
    return false;
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0x2a3e56d2, Offset: 0x3e70
// Size: 0x37c
function endgame() {
    if (game.state == "postgame" || level.gameended) {
        return;
    }
    if (!isdefined(level.disableoutrovisionset) || level.disableoutrovisionset == 0) {
        visionsetnaked("mpOutro", 2);
    }
    setmatchflag("game_ended", 1);
    game.state = "postgame";
    level.gameendtime = gettime();
    level.gameended = 1;
    setdvar(#"g_gameended", 1);
    level.ingraceperiod = 0;
    level notify(#"game_ended");
    players = level.players;
    for (index = 0; index < players.size; index++) {
        player = players[index];
        player freezecontrols(1);
        player clearallnoncheckpointdata();
        /#
            player globallogic_ui::freegameplayhudelems();
        #/
    }
    music::setmusicstate("silent");
    level lui::screen_fade_out(1);
    wait(0.3);
    if (util::isoneround()) {
        globallogic_utils::executepostroundevents();
    }
    setmatchflag("disableIngameMenu", 1);
    foreach (player in players) {
        player closeingamemenu();
    }
    players = getplayers();
    for (i = 0; i < players.size; i++) {
        players[i] setclientuivisibilityflag("weapon_hud_visible", 0);
    }
    level notify(#"sfade");
    /#
        print("<unknown string>");
    #/
    players = getplayers();
    for (i = 0; i < players.size; i++) {
        players[i] cameraactivate(0);
    }
    function_7b994f00();
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xe675a0aa, Offset: 0x41f8
// Size: 0x34
function function_7b994f00() {
    level.gameended = 1;
    savegame::function_fa31c391();
    function_9ceb0931();
}

// Namespace globallogic/globallogic
// Params 1, eflags: 0x6 linked
// Checksum 0xdde7c98f, Offset: 0x4238
// Size: 0xa4
function private function_9ceb0931(var_a9241d2e = 0) {
    player = getplayers()[0];
    setsaveddvar(#"hash_41519202e554dd2c", 1);
    uploadstats(player);
    waitframe(1);
    stats::function_ca76d4a();
    exitlevel(var_a9241d2e);
}

// Namespace globallogic/globallogic
// Params 2, eflags: 0x2 linked
// Checksum 0x4eaddeab, Offset: 0x42e8
// Size: 0x14
function roundendwait(*defaultdelay, *matchbonus) {
    
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0x76b1a241, Offset: 0x4308
// Size: 0x130
function checktimelimit() {
    if (isdefined(level.timelimitoverride) && level.timelimitoverride) {
        return;
    }
    if (game.state != "playing") {
        setgameendtime(0);
        return;
    }
    if (level.timelimit <= 0) {
        setgameendtime(0);
        return;
    }
    if (level.inprematchperiod) {
        setgameendtime(0);
        return;
    }
    if (level.timerstopped) {
        setgameendtime(0);
        return;
    }
    if (!isdefined(level.starttime)) {
        return;
    }
    timeleft = globallogic_utils::gettimeremaining();
    setgameendtime(gettime() + int(timeleft));
    if (timeleft > 0) {
        return;
    }
    [[ level.ontimelimit ]]();
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xf6d06390, Offset: 0x4440
// Size: 0xa8
function allteamsunderscorelimit() {
    foreach (team, _ in level.teams) {
        if (game.stat[#"teamscores"][team] >= level.scorelimit) {
            return false;
        }
    }
    return true;
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xa0786a74, Offset: 0x44f0
// Size: 0xa4
function checkscorelimit() {
    if (game.state != "playing") {
        return 0;
    }
    if (level.scorelimit <= 0) {
        return 0;
    }
    if (level.teambased) {
        if (allteamsunderscorelimit()) {
            return 0;
        }
    } else {
        if (!isplayer(self)) {
            return 0;
        }
        if (self.pointstowin < level.scorelimit) {
            return 0;
        }
    }
    [[ level.onscorelimit ]]();
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0x8a182856, Offset: 0x45a0
// Size: 0x2ae
function updategametypedvars() {
    level endon(#"game_ended");
    while (game.state == "playing") {
        var_e030e453 = getgametypesetting(#"roundlimit");
        if (!isdefined(var_e030e453)) {
            var_e030e453 = level.roundlimit;
        }
        roundlimit = math::clamp(var_e030e453, level.roundlimitmin, level.roundlimitmax);
        if (roundlimit != level.roundlimit) {
            level.roundlimit = roundlimit;
            level notify(#"update_roundlimit");
        }
        timelimit = [[ level.gettimelimit ]]();
        if (timelimit != level.timelimit) {
            level.timelimit = timelimit;
            setdvar(#"ui_timelimit", level.timelimit);
            level notify(#"update_timelimit");
        }
        checktimelimit();
        var_928c1df0 = getgametypesetting(#"scorelimit");
        if (!isdefined(var_928c1df0)) {
            var_928c1df0 = level.scorelimit;
        }
        scorelimit = math::clamp(var_928c1df0, level.scorelimitmin, level.scorelimitmax);
        if (scorelimit != level.scorelimit) {
            level.scorelimit = scorelimit;
            setdvar(#"ui_scorelimit", level.scorelimit);
            level notify(#"update_scorelimit");
        }
        checkscorelimit();
        if (isdefined(level.starttime)) {
            remaining_time = globallogic_utils::gettimeremaining();
            if (isdefined(remaining_time) && remaining_time < 3000) {
                wait(0.1);
                continue;
            }
        }
        wait(1);
    }
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x0
// Checksum 0xa8db83f2, Offset: 0x4858
// Size: 0x200
function removedisconnectedplayerfromplacement() {
    offset = 0;
    numplayers = level.placement[#"all"].size;
    found = 0;
    for (i = 0; i < numplayers; i++) {
        if (level.placement[#"all"][i] == self) {
            found = 1;
        }
        if (found) {
            level.placement[#"all"][i] = level.placement[#"all"][i + 1];
        }
    }
    if (!found) {
        return;
    }
    level.placement[#"all"][numplayers - 1] = undefined;
    assert(level.placement[#"all"].size == numplayers - 1);
    /#
        globallogic_utils::assertproperplacement();
    #/
    updateteamplacement();
    if (level.teambased) {
        return;
    }
    numplayers = level.placement[#"all"].size;
    for (i = 0; i < numplayers; i++) {
        player = level.placement[#"all"][i];
        if (isdefined(player)) {
            player notify(#"update_outcome");
        }
    }
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xd332abba, Offset: 0x4a60
// Size: 0x314
function updateplacement() {
    if (!level.players.size) {
        return;
    }
    level.placement[#"all"] = [];
    foreach (player in level.players) {
        if (!level.teambased || isdefined(level.teams[player.team])) {
            level.placement[#"all"][level.placement[#"all"].size] = player;
        }
    }
    placementall = level.placement[#"all"];
    if (level.teambased) {
        for (i = 1; i < placementall.size; i++) {
            player = placementall[i];
            playerscore = player.score;
            for (j = i - 1; j >= 0 && (playerscore > placementall[j].score || playerscore == placementall[j].score && player.deaths < placementall[j].deaths); j--) {
                placementall[j + 1] = placementall[j];
            }
            placementall[j + 1] = player;
        }
    } else {
        for (i = 1; i < placementall.size; i++) {
            player = placementall[i];
            playerscore = player.pointstowin;
            for (j = i - 1; j >= 0 && (playerscore > placementall[j].pointstowin || playerscore == placementall[j].pointstowin && player.deaths < placementall[j].deaths); j--) {
                placementall[j + 1] = placementall[j];
            }
            placementall[j + 1] = player;
        }
    }
    level.placement[#"all"] = placementall;
    /#
        globallogic_utils::assertproperplacement();
    #/
    updateteamplacement();
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0x6c480f2c, Offset: 0x4d80
// Size: 0x1ac
function updateteamplacement() {
    foreach (team, _ in level.teams) {
        placement[team] = [];
    }
    placement[#"spectator"] = [];
    if (!level.teambased) {
        return;
    }
    placementall = level.placement[#"all"];
    placementallsize = placementall.size;
    for (i = 0; i < placementallsize; i++) {
        player = placementall[i];
        team = player.pers[#"team"];
        placement[team][placement[team].size] = player;
    }
    foreach (team, _ in level.teams) {
        level.placement[team] = placement[team];
    }
}

// Namespace globallogic/globallogic
// Params 1, eflags: 0x2 linked
// Checksum 0x814f7594, Offset: 0x4f38
// Size: 0xae
function getplacementforplayer(player) {
    updateplacement();
    playerrank = -1;
    placement = level.placement[#"all"];
    for (placementindex = 0; placementindex < placement.size; placementindex++) {
        if (level.placement[#"all"][placementindex] == player) {
            playerrank = placementindex + 1;
            break;
        }
    }
    return playerrank;
}

// Namespace globallogic/globallogic
// Params 1, eflags: 0x0
// Checksum 0x6508d7e3, Offset: 0x4ff0
// Size: 0x27c
function istopscoringplayer(*player) {
    topplayer = 0;
    updateplacement();
    assert(level.placement[#"all"].size > 0);
    if (level.placement[#"all"].size == 0) {
        return 0;
    }
    if (level.teambased) {
        topscore = level.placement[#"all"][0].score;
        for (index = 0; index < level.placement[#"all"].size; index++) {
            if (level.placement[#"all"][index].score == 0) {
                break;
            }
            if (topscore > level.placement[#"all"][index].score) {
                break;
            }
            if (self == level.placement[#"all"][index]) {
                topscoringplayer = 1;
                break;
            }
        }
    } else {
        topscore = level.placement[#"all"][0].pointstowin;
        for (index = 0; index < level.placement[#"all"].size; index++) {
            if (level.placement[#"all"][index].pointstowin == 0) {
                break;
            }
            if (topscore > level.placement[#"all"][index].pointstowin) {
                break;
            }
            if (self == level.placement[#"all"][index]) {
                topplayer = 1;
                break;
            }
        }
    }
    return topplayer;
}

// Namespace globallogic/globallogic
// Params 1, eflags: 0x2 linked
// Checksum 0xf51b066b, Offset: 0x5278
// Size: 0x17a
function sortdeadplayers(team) {
    if (!level.playerqueuedrespawn) {
        return;
    }
    for (i = 1; i < level.deadplayers[team].size; i++) {
        player = level.deadplayers[team][i];
        for (j = i - 1; j >= 0 && player.deathtime < level.deadplayers[team][j].deathtime; j--) {
            level.deadplayers[team][j + 1] = level.deadplayers[team][j];
        }
        level.deadplayers[team][j + 1] = player;
    }
    for (i = 0; i < level.deadplayers[team].size; i++) {
        if (level.deadplayers[team][i].spawnqueueindex != i) {
            level.spawnqueuemodified[team] = 1;
        }
        level.deadplayers[team][i].spawnqueueindex = i;
    }
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0x1e1b0c18, Offset: 0x5400
// Size: 0xa2
function totalalivecount() {
    count = 0;
    foreach (team, _ in level.teams) {
        count += function_a1ef346b(team).size;
    }
    return count;
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xdef035dd, Offset: 0x54b0
// Size: 0x9a
function totalplayerlives() {
    count = 0;
    foreach (team, _ in level.teams) {
        count += level.playerlives[team];
    }
    return count;
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x0
// Checksum 0x8c22ddd0, Offset: 0x5558
// Size: 0x9a
function function_b102e4be() {
    count = 0;
    foreach (team, _ in level.teams) {
        count += level.laststandcount[team];
    }
    return count;
}

// Namespace globallogic/globallogic
// Params 1, eflags: 0x2 linked
// Checksum 0xf1200682, Offset: 0x5600
// Size: 0xe4
function initteamvariables(team) {
    if (!isdefined(level.laststandcount)) {
        level.laststandcount = [];
    }
    level.lastalivecount[team] = 0;
    level.laststandcount[team] = 0;
    if (!isdefined(game.everexisted)) {
        game.everexisted = [];
    }
    if (!isdefined(game.everexisted[team])) {
        game.everexisted[team] = 0;
    }
    level.everexisted[team] = 0;
    level.wavedelay[team] = 0;
    level.lastwave[team] = 0;
    level.waveplayerspawnindex[team] = 0;
    resetteamvariables(team);
}

// Namespace globallogic/globallogic
// Params 1, eflags: 0x2 linked
// Checksum 0xfa6f1e31, Offset: 0x56f0
// Size: 0xb4
function resetteamvariables(team) {
    level.playercount[team] = 0;
    level.botscount[team] = 0;
    level.lastalivecount[team] = function_a1ef346b(team).size;
    level.laststandcount[team] = 0;
    level.playerlives[team] = 0;
    level.spawningplayers[team] = [];
    level.deadplayers[team] = [];
    level.squads[team] = [];
    level.spawnqueuemodified[team] = 0;
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0x33cc3d67, Offset: 0x57b0
// Size: 0x1a4
function updateteamstatus() {
    if (game.state == "postgame") {
        return;
    }
    foreach (team, _ in level.teams) {
        resetteamvariables(team);
    }
    function_2905c18e();
    totalalive = totalalivecount();
    if (totalalive > level.maxplayercount) {
        level.maxplayercount = totalalive;
    }
    foreach (team, _ in level.teams) {
        if (function_a1ef346b(team).size) {
            game.everexisted[team] = 1;
            level.everexisted[team] = 1;
        }
        sortdeadplayers(team);
    }
    level updategameevents();
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0x9984f99a, Offset: 0x5960
// Size: 0x220
function function_2905c18e() {
    foreach (player in getplayers()) {
        team = player.team;
        var_c5c29dab = player.curclass;
        level.playercount[team]++;
        if (isbot(player)) {
            level.botscount[team]++;
        }
        if (team != #"spectator" && isdefined(var_c5c29dab) && var_c5c29dab != "") {
            level.playercount[team]++;
            if (player.sessionstate == "playing") {
                level.playerlives[team]++;
                player.spawnqueueindex = -1;
                if (isalive(player)) {
                    if (isdefined(player.laststand) && player.laststand) {
                        level.laststandcount[team]++;
                    }
                } else {
                    level.deadplayers[team][level.deadplayers[team].size] = player;
                }
                continue;
            }
            level.deadplayers[team][level.deadplayers[team].size] = player;
            if (player globallogic_spawn::mayspawn()) {
                level.playerlives[team]++;
            }
        }
    }
    level notify(#"hash_3a639e0edb9f3db7");
}

// Namespace globallogic/globallogic
// Params 1, eflags: 0x0
// Checksum 0xfd44b950, Offset: 0x5b88
// Size: 0xc0
function checkteamscorelimitsoon(team) {
    assert(isdefined(team));
    if (level.scorelimit <= 0) {
        return;
    }
    if (!level.teambased) {
        return;
    }
    if (globallogic_utils::gettimepassed() < 60000) {
        return;
    }
    timeleft = globallogic_utils::getestimatedtimeuntilscorelimit(team);
    if (timeleft < 1) {
        level notify(#"match_ending_soon", {#event:"score"});
    }
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x0
// Checksum 0x7076ad05, Offset: 0x5c50
// Size: 0xc8
function checkplayerscorelimitsoon() {
    assert(isplayer(self));
    if (level.scorelimit <= 0) {
        return;
    }
    if (level.teambased) {
        return;
    }
    if (globallogic_utils::gettimepassed() < 60000) {
        return;
    }
    timeleft = globallogic_utils::getestimatedtimeuntilscorelimit(undefined);
    if (timeleft < 1) {
        level notify(#"match_ending_soon", {#event:"score"});
    }
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0x789f6c65, Offset: 0x5d20
// Size: 0x2cc
function timelimitclock() {
    level endon(#"game_ended");
    waitframe(1);
    clockobject = spawn("script_origin", (0, 0, 0));
    while (game.state == "playing") {
        if (!level.timerstopped && level.timelimit) {
            timeleft = globallogic_utils::gettimeremaining() / 1000;
            timeleftint = int(timeleft + 0.5);
            if (timeleftint == 601) {
                util::clientnotify("notify_10");
            }
            if (timeleftint == 301) {
                util::clientnotify("notify_5");
            }
            if (timeleftint == 60) {
                util::clientnotify("notify_1");
            }
            if (timeleftint == 12) {
                util::clientnotify("notify_count");
            }
            if (timeleftint >= 40 && timeleftint <= 60) {
                level notify(#"match_ending_soon", "time");
            }
            if (timeleftint >= 30 && timeleftint <= 40) {
                level notify(#"match_ending_pretty_soon", "time");
            }
            if (timeleftint <= 32) {
                level notify(#"match_ending_vox");
            }
            if (timeleftint <= 10 || timeleftint <= 30 && timeleftint % 2 == 0) {
                level notify(#"match_ending_very_soon", "time");
                if (timeleftint == 0) {
                    break;
                }
                clockobject playsound(#"mpl_ui_timer_countdown");
            }
            if (timeleft - floor(timeleft) >= 0.05) {
                wait(timeleft - floor(timeleft));
            }
        }
        wait(1);
    }
}

// Namespace globallogic/globallogic
// Params 1, eflags: 0x0
// Checksum 0x3d8fc1c8, Offset: 0x5ff8
// Size: 0xb0
function timelimitclock_intermission(waittime) {
    setgameendtime(gettime() + int(waittime * 1000));
    clockobject = spawn("script_origin", (0, 0, 0));
    if (waittime >= 10) {
        wait(waittime - 10);
    }
    for (;;) {
        clockobject playsound(#"mpl_ui_timer_countdown");
        wait(1);
    }
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0x44241294, Offset: 0x60b0
// Size: 0x234
function startgame() {
    thread globallogic_utils::gametimer();
    level.timerstopped = 0;
    setmatchtalkflag("DeadChatWithDead", level.voip.deadchatwithdead);
    setmatchtalkflag("DeadChatWithTeam", level.voip.deadchatwithteam);
    setmatchtalkflag("DeadHearTeamLiving", level.voip.deadhearteamliving);
    setmatchtalkflag("DeadHearAllLiving", level.voip.deadhearallliving);
    setmatchtalkflag("EveryoneHearsEveryone", level.voip.everyonehearseveryone);
    setmatchtalkflag("DeadHearKiller", level.voip.deadhearkiller);
    setmatchtalkflag("KillersHearVictim", level.voip.killershearvictim);
    if (isdefined(level.custom_prematch_period)) {
        [[ level.custom_prematch_period ]]();
    } else {
        prematchperiod();
    }
    level notify(#"prematch_over");
    level.prematch_over = 1;
    startplayers(level.players);
    level flag::set("game_start");
    setdvar(#"ui_busyblockingamemenu", 0);
    thread timelimitclock();
    thread graceperiod();
    thread watchmatchendingsoon();
    recordmatchbegin();
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x0
// Checksum 0x897029e4, Offset: 0x62f0
// Size: 0x58
function waitforplayers() {
    starttime = gettime();
    while (getnumconnectedplayers() < 1) {
        waitframe(1);
        if (gettime() - starttime > 120000) {
            function_9ceb0931();
        }
    }
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0x6ad4405c, Offset: 0x6350
// Size: 0xd4
function prematchperiod() {
    setmatchflag("hud_hardcore", level.hardcoremode);
    a_players = function_58385b58();
    foreach (e_player in a_players) {
        e_player thread function_b5d72fb0();
    }
    level waittill(#"hash_62badab89a3536b9");
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0x10631365, Offset: 0x6430
// Size: 0x18a
function function_b5d72fb0() {
    level endon(#"game_ended");
    self endon(#"death");
    if (level.prematchperiod > 0 && !is_true(level.var_9caf4a12)) {
        self thread matchstarttimer();
        self val::set(#"prematch", "ignoreme", 1);
        self val::set(#"prematch", "freezecontrols", 1);
        wait(level.prematchperiod);
    } else {
        matchstarttimerskip();
        waitframe(1);
    }
    level.inprematchperiod = 0;
    self val::reset(#"prematch", "ignoreme");
    self val::reset(#"prematch", "freezecontrols");
    level notify(#"hash_62badab89a3536b9");
    if (game.state != "playing") {
        return;
    }
}

// Namespace globallogic/globallogic
// Params 1, eflags: 0x2 linked
// Checksum 0x373f5dbb, Offset: 0x65c8
// Size: 0x94
function startplayers(players) {
    if (!isdefined(players)) {
        return;
    }
    for (index = 0; index < players.size; index++) {
        players[index] val::reset(#"prematch", "ignoreme");
        players[index] val::reset(#"prematch", "freezecontrols");
    }
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xe2355b9d, Offset: 0x6668
// Size: 0x14c
function graceperiod() {
    level endon(#"game_ended");
    if (isdefined(level.graceperiodfunc)) {
        [[ level.graceperiodfunc ]]();
    } else {
        wait(level.graceperiod);
    }
    level notify(#"grace_period_ending");
    waitframe(1);
    level.ingraceperiod = 0;
    if (game.state != "playing") {
        return;
    }
    if (level.numlives) {
        players = level.players;
        for (i = 0; i < players.size; i++) {
            player = players[i];
            if (!player.hasspawned && player.sessionteam != #"spectator" && !isalive(player)) {
                player.statusicon = "hud_status_dead";
            }
        }
    }
    updateteamstatus();
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0x9c73e0f9, Offset: 0x67c0
// Size: 0x64
function watchmatchendingsoon() {
    setdvar(#"xblive_matchendingsoon", 0);
    level waittill(#"match_ending_soon");
    setdvar(#"xblive_matchendingsoon", 1);
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x0
// Checksum 0xb87f4d2e, Offset: 0x6830
// Size: 0x90
function anyteamhaswavedelay() {
    foreach (team, _ in level.teams) {
        if (level.wavedelay[team]) {
            return true;
        }
    }
    return false;
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xc87f4036, Offset: 0x68c8
// Size: 0x1614
function callback_startgametype() {
    level flag::init("game_start");
    level.prematchperiod = 0;
    level.intermission = 0;
    setmatchflag("cg_drawSpectatorMessages", 1);
    setmatchflag("game_ended", 0);
    if (!isdefined(game.gamestarted)) {
        if (!isdefined(game.allies)) {
            game.allies = #"cia";
        }
        if (!isdefined(game.axis)) {
            game.axis = #"kgb";
        }
        if (!isdefined(game.attackers)) {
            game.attackers = #"allies";
        }
        if (!isdefined(game.defenders)) {
            game.defenders = #"axis";
        }
        assert(game.attackers != game.defenders);
        foreach (team, _ in level.teams) {
            if (!isdefined(game.team)) {
                game.team = #"cia";
            }
        }
        gamestate::set_state(#"playing");
        setdvar(#"cg_thirdpersonangle", 354);
        game.strings[#"press_to_spawn"] = #"hash_203ff65a4ee460e6";
        if (level.teambased) {
            game.strings[#"waiting_for_teams"] = #"hash_150c54160239825";
            game.strings[#"opponent_forfeiting_in"] = #"hash_52d76ed35e0b625a";
        } else {
            game.strings[#"waiting_for_teams"] = #"hash_47c479655d474f31";
            game.strings[#"opponent_forfeiting_in"] = #"hash_52d76ed35e0b625a";
        }
        game.strings[#"match_starting_in"] = #"hash_18e58cc95db34427";
        game.strings[#"spawn_next_round"] = #"hash_5659065fae9d42fb";
        game.strings[#"waiting_to_spawn"] = #"hash_44d60a6e6ed2a53c";
        game.strings[#"waiting_to_spawn_ss"] = #"hash_78bf3a61cf52e257";
        game.strings[#"you_will_spawn"] = #"hash_53c0ba6abce1c0ea";
        game.strings[#"match_starting"] = #"mp/match_starting";
        game.strings[#"item_on_respawn"] = #"hash_220160808c99fe71";
        game.strings[#"hash_b71875e85956ea"] = #"hash_61f8bf2959b7bd5a";
        game.strings[#"last_stand"] = #"hash_5732d212e4511a00";
        game.strings[#"cowards_way"] = #"hash_268e464278a2f8ff";
        game.strings[#"tie"] = #"mp/match_tie";
        game.strings[#"round_draw"] = #"mp/round_draw";
        game.strings[#"enemies_eliminated"] = #"mp_enemies_eliminated";
        game.strings[#"score_limit_reached"] = #"mp/score_limit_reached";
        game.strings[#"round_limit_reached"] = #"mp/round_limit_reached";
        game.strings[#"time_limit_reached"] = #"mp/time_limit_reached";
        game.strings[#"players_forfeited"] = #"mp/players_forfeited";
        game.strings[#"other_teams_forfeited"] = #"mp_other_teams_forfeited";
        if (isdefined(level.onprecachegametype)) {
            [[ level.onprecachegametype ]]();
        }
        game.gamestarted = 1;
        game.totalkills = 0;
        foreach (team, _ in level.teams) {
            game.stat[#"teamscores"][team] = 0;
            game.totalkillsteam[team] = 0;
        }
        level.prematchperiod = getgametypesetting(#"prematchperiod");
    } else if (!level.splitscreen) {
        level.prematchperiod = getgametypesetting(#"preroundperiod");
    }
    if (!isdefined(game.timepassed)) {
        game.timepassed = 0;
    }
    if (!isdefined(game.roundsplayed)) {
        game.roundsplayed = 0;
    }
    setroundsplayed(game.roundsplayed);
    if (isdefined(game.overtime_round)) {
        setmatchflag("overtime", 1);
    } else {
        setmatchflag("overtime", 0);
    }
    if (!isdefined(game.roundwinner)) {
        game.roundwinner = [];
    }
    if (!isdefined(game.lastroundscore)) {
        game.lastroundscore = [];
    }
    if (!isdefined(game.stat[#"roundswon"])) {
        game.stat[#"roundswon"] = [];
    }
    if (!isdefined(game.stat[#"roundswon"][#"tie"])) {
        game.stat[#"roundswon"][#"tie"] = 0;
    }
    foreach (team, _ in level.teams) {
        if (!isdefined(game.stat[#"roundswon"][team])) {
            game.stat[#"roundswon"][team] = 0;
        }
    }
    level.skipvote = 0;
    level.gameended = 0;
    setdvar(#"g_gameended", 0);
    level.objidstart = 0;
    level.forcedend = 0;
    level.hostforcedend = 0;
    level.hardcoremode = getgametypesetting(#"hardcoremode");
    if (level.hardcoremode) {
        /#
            print("<unknown string>");
        #/
        if (!isdefined(level.friendlyfiredelaytime)) {
            level.friendlyfiredelaytime = 0;
        }
    }
    level.rankcap = getdvarint(#"scr_max_rank", 0);
    level.minprestige = getdvarint(#"scr_min_prestige", 0);
    spawning::function_6325a7c5();
    level.cumulativeroundscores = getgametypesetting(#"cumulativeroundscores");
    level.allowhitmarkers = getgametypesetting(#"allowhitmarkers");
    level.playerqueuedrespawn = getgametypesetting(#"playerqueuedrespawn");
    level.playerforcerespawn = getgametypesetting(#"playerforcerespawn");
    level.roundstartexplosivedelay = getgametypesetting(#"roundstartexplosivedelay");
    level.roundstartkillstreakdelay = getgametypesetting(#"roundstartkillstreakdelay");
    level.perksenabled = getgametypesetting(#"perksenabled");
    level.disableattachments = getgametypesetting(#"disableattachments");
    level.disabletacinsert = getgametypesetting(#"disabletacinsert");
    level.var_d0e6b79d = getgametypesetting(#"hash_47df56af71e4df3");
    level.disablecustomcac = getgametypesetting(#"disablecustomcac");
    if (!isdefined(level.disableclassselection)) {
        level.disableclassselection = getgametypesetting(#"disableclassselection");
    }
    level.disableweapondrop = getgametypesetting(#"disableweapondrop");
    level.onlyheadshots = getgametypesetting(#"onlyheadshots");
    level.minimumallowedteamkills = getgametypesetting(#"teamkillpunishcount") - 1;
    level.teamkillreducedpenalty = getgametypesetting(#"teamkillreducedpenalty");
    level.teamkillpointloss = getgametypesetting(#"teamkillpointloss");
    level.teamkillspawndelay = getgametypesetting(#"teamkillspawndelay");
    level.deathpointloss = getgametypesetting(#"deathpointloss");
    level.leaderbonus = getgametypesetting(#"leaderbonus");
    level.forceradar = getgametypesetting(#"forceradar");
    level.playersprinttime = getgametypesetting(#"playersprinttime");
    level.bulletdamagescalar = getgametypesetting(#"bulletdamagescalar");
    level.playermaxhealth = getgametypesetting(#"playermaxhealth");
    level.playerhealthregentime = getgametypesetting(#"playerhealthregentime");
    level.autoheal = getgametypesetting(#"autoheal");
    level.playerrespawndelay = getgametypesetting(#"playerrespawndelay");
    level.playerobjectiveheldrespawndelay = getgametypesetting(#"playerobjectiveheldrespawndelay");
    level.waverespawndelay = getgametypesetting(#"waverespawndelay");
    level.suicidespawndelay = getgametypesetting(#"spawnsuicidepenalty");
    level.teamkilledspawndelay = getgametypesetting(#"spawnteamkilledpenalty");
    level.maxsuicidesbeforekick = getgametypesetting(#"maxsuicidesbeforekick");
    level.spectatetype = getgametypesetting(#"spectatetype");
    level.voip = spawnstruct();
    level.voip.deadchatwithdead = getgametypesetting(#"voipdeadchatwithdead");
    level.voip.deadchatwithteam = getgametypesetting(#"voipdeadchatwithteam");
    level.voip.deadhearallliving = getgametypesetting(#"voipdeadhearallliving");
    level.voip.deadhearteamliving = getgametypesetting(#"voipdeadhearteamliving");
    level.voip.everyonehearseveryone = getgametypesetting(#"voipeveryonehearseveryone");
    level.voip.deadhearkiller = getgametypesetting(#"voipdeadhearkiller");
    level.voip.killershearvictim = getgametypesetting(#"voipkillershearvictim");
    gameobjects::main();
    callback::callback(#"on_start_gametype");
    foreach (team, _ in level.teams) {
        initteamvariables(team);
    }
    level.maxplayercount = 0;
    level.allowannouncer = getgametypesetting(#"allowannouncer");
    if (!isdefined(level.timelimit)) {
        util::registertimelimit(1, 1440);
    }
    if (!isdefined(level.scorelimit)) {
        util::registerscorelimit(1, 500);
    }
    if (!isdefined(level.roundlimit)) {
        util::registerroundlimit(0, 10);
    }
    if (!isdefined(level.roundwinlimit)) {
        util::registerroundwinlimit(0, 10);
    }
    wavedelay = level.waverespawndelay;
    if (wavedelay) {
        foreach (team, _ in level.teams) {
            level.wavedelay[team] = wavedelay;
            level.lastwave[team] = 0;
        }
        level thread [[ level.wavespawntimer ]]();
    }
    level.inprematchperiod = 1;
    if (level.prematchperiod > 2) {
        level.prematchperiod += randomfloat(4) - 2;
    }
    level.graceperiod = 10;
    level.ingraceperiod = 1;
    level.roundenddelay = 5;
    level.halftimeroundenddelay = 3;
    level.killstreaksenabled = 1;
    if (getdvarstring(#"scr_game_rankenabled") == "") {
        setdvar(#"scr_game_rankenabled", 1);
    }
    level.rankenabled = getdvarint(#"scr_game_rankenabled", 0);
    if (getdvarstring(#"scr_game_medalsenabled") == "") {
        setdvar(#"scr_game_medalsenabled", 1);
    }
    level.medalsenabled = getdvarint(#"scr_game_medalsenabled", 0);
    if (level.hardcoremode && level.rankedmatch && getdvarstring(#"scr_game_friendlyfiredelay") == "") {
        setdvar(#"scr_game_friendlyfiredelay", 1);
    }
    level.friendlyfiredelay = getdvarint(#"scr_game_friendlyfiredelay", 0);
    [[ level.onstartgametype ]]();
    if (getdvarint(#"custom_killstreak_mode", 0) == 1) {
        level.killstreaksenabled = 0;
    }
    if (isdefined(level.gameskill)) {
        matchrecordsetleveldifficultyforindex(0, level.gameskill);
    }
    /#
        if (getdvarint(#"scr_writeconfigstrings", 0) == 1) {
            level.skipgameend = 1;
            level.roundlimit = 1;
            wait(1);
            thread forceend();
        }
    #/
    function_403c8a1();
    thread startgame();
    level thread updategametypedvars();
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0x3cf7b8f0, Offset: 0x7ee8
// Size: 0x104
function function_403c8a1() {
    level endon(#"level_intro_complete");
    level flag::wait_till("all_players_spawned");
    var_a1fdb637 = 0;
    foreach (e_player in level.players) {
        if (!isbot(e_player)) {
            var_a1fdb637++;
            e_player thread function_70ff69a7();
        }
    }
    if (var_a1fdb637 > 0) {
        level flag::wait_till("level_intro_complete");
    }
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xd3d21aad, Offset: 0x7ff8
// Size: 0x64
function function_70ff69a7() {
    self endon(#"disconnect");
    level endon(#"level_intro_complete");
    self flag::wait_till("kill_initial_black");
    level flag::set(#"level_intro_complete");
}

// Namespace globallogic/globallogic
// Params 4, eflags: 0x2 linked
// Checksum 0x1bb3de03, Offset: 0x8068
// Size: 0x114
function registerfriendlyfiredelay(dvarstring, defaultvalue, minvalue, maxvalue) {
    dvarstring = "scr_" + dvarstring + "_friendlyFireDelayTime";
    if (getdvarstring(dvarstring) == "") {
        setdvar(dvarstring, defaultvalue);
    }
    if (getdvarint(dvarstring, 0) > maxvalue) {
        setdvar(dvarstring, maxvalue);
    } else if (getdvarint(dvarstring, 0) < minvalue) {
        setdvar(dvarstring, minvalue);
    }
    level.friendlyfiredelaytime = getdvarint(dvarstring, 0);
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0x1e5379c6, Offset: 0x8188
// Size: 0x90
function checkroundswitch() {
    if (!isdefined(level.roundswitch) || !level.roundswitch) {
        return false;
    }
    if (!isdefined(level.onroundswitch)) {
        return false;
    }
    assert(game.roundsplayed > 0);
    if (game.roundsplayed % level.roundswitch == 0) {
        [[ level.onroundswitch ]]();
        return true;
    }
    return false;
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xedfe3ded, Offset: 0x8220
// Size: 0x6c
function listenforgameend() {
    self endon(#"disconnect", #"hash_29be0e7a46c3a236");
    self waittill(#"host_sucks_end_game");
    level.skipvote = 1;
    if (!level.gameended) {
        level thread forceend();
    }
}

// Namespace globallogic/globallogic
// Params 1, eflags: 0x2 linked
// Checksum 0xb0a9b125, Offset: 0x8298
// Size: 0xfa
function getkillstreaks(player) {
    for (killstreaknum = 0; killstreaknum < level.maxkillstreaks; killstreaknum++) {
        killstreak[killstreaknum] = "killstreak_null";
    }
    if (isplayer(player) && !level.oldschool && level.disableclassselection != 1 && isdefined(player.killstreak)) {
        currentkillstreak = 0;
        for (killstreaknum = 0; killstreaknum < level.maxkillstreaks; killstreaknum++) {
            if (isdefined(player.killstreak[killstreaknum])) {
                killstreak[currentkillstreak] = player.killstreak[killstreaknum];
                currentkillstreak++;
            }
        }
    }
    return killstreak;
}

// Namespace globallogic/globallogic
// Params 1, eflags: 0x0
// Checksum 0x62a7770f, Offset: 0x83a0
// Size: 0x5c
function updaterankedmatch(*winner) {
    if (level.rankedmatch) {
        if (hostidledout()) {
            level.hostforcedend = 1;
            /#
                print("<unknown string>");
            #/
        }
    }
}

