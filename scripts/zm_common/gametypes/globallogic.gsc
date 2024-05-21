// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm.gsc;
#using scripts\zm_common\util.gsc;
#using scripts\zm_common\rat.gsc;
#using scripts\weapons\zm\weaponobjects.gsc;
#using scripts\zm_common\gametypes\spawnlogic.gsc;
#using scripts\zm_common\gametypes\hud_message.gsc;
#using scripts\zm_common\gametypes\hostmigration.gsc;
#using scripts\zm_common\gametypes\globallogic_utils.gsc;
#using scripts\zm_common\gametypes\globallogic_ui.gsc;
#using scripts\zm_common\gametypes\globallogic_spawn.gsc;
#using scripts\zm_common\gametypes\globallogic_score.gsc;
#using scripts\zm_common\gametypes\globallogic_player.gsc;
#using scripts\zm_common\gametypes\globallogic_defaults.gsc;
#using scripts\zm_common\gametypes\globallogic_audio.gsc;
#using script_41b18a77720c5395;
#using scripts\zm_common\gametypes\dev.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\globallogic\globallogic_player.gsc;
#using scripts\core_common\visionset_mgr_shared.gsc;
#using scripts\core_common\bb_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using script_44b0b8420eabacad;
#using scripts\core_common\simple_hostmigration.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\tweakables_shared.gsc;
#using scripts\core_common\rank_shared.gsc;
#using scripts\core_common\potm_shared.gsc;
#using scripts\core_common\popups_shared.gsc;
#using scripts\core_common\persistence_shared.gsc;
#using scripts\core_common\music_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\hud_util_shared.gsc;
#using scripts\core_common\hud_message_shared.gsc;
#using scripts\core_common\hud_shared.gsc;
#using scripts\core_common\healthoverlay.gsc;
#using scripts\core_common\gametype_shared.gsc;
#using scripts\core_common\gamestate_util.gsc;
#using scripts\core_common\gamestate.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\challenges_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace globallogic;

// Namespace globallogic/globallogic
// Params 0, eflags: 0x5
// Checksum 0x81c77e14, Offset: 0x500
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"globallogic", &preinit, undefined, undefined, #"visionset_mgr");
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x6 linked
// Checksum 0xfd0f2693, Offset: 0x550
// Size: 0xbc
function private preinit() {
    visionset_mgr::register_info("visionset", "crithealth", 1, 4, 25, 1, &visionset_mgr::ramp_in_out_thread_per_player, 0);
    clientfield::register_clientuimodel("hudItems.armorIsOnCooldown", 1, 1, "int");
    clientfield::function_91cd7763("string", "hudItems.cursorHintZMPurchaseInvalidText", 1, 0);
    clientfield::register_clientuimodel("hudItems.cursorHintZMPurchaseInvalid", 1, 1, "int");
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xe7210430, Offset: 0x618
// Size: 0x8e4
function init() {
    level.language = getdvarstring(#"language");
    level.splitscreen = issplitscreen();
    level.xenon = getdvarstring(#"xenongame") == "true";
    level.ps3 = getdvarstring(#"ps3game") == "true";
    level.wiiu = getdvarstring(#"wiiugame") == "true";
    level.orbis = getdvarstring(#"orbisgame") == "true";
    level.durango = getdvarstring(#"durangogame") == "true";
    level.console = getdvarstring(#"consolegame") == "true";
    level.createfx_disable_fx = getdvarint(#"disable_fx", 0) == 1;
    level.onlinegame = sessionmodeisonlinegame();
    level.systemlink = sessionmodeissystemlink();
    level.rankedmatch = gamemodeisusingxp();
    level.leaguematch = 0;
    level.arenamatch = 0;
    level.contractsenabled = !getgametypesetting(#"disablecontracts");
    level.contractsenabled = 0;
    level.var_49d9aa70 = 1;
    level.new_health_model = 1;
    /#
        if (getdvarint(#"scr_forcerankedmatch", 0) == 1) {
            level.rankedmatch = 1;
        }
    #/
    level.script = util::get_map_name();
    level.gametype = util::get_game_type();
    level.var_837aa533 = hash(level.gametype);
    function_993eba5();
    if (isdefined(level.gametype)) {
        level.var_12323003 = function_16495154(level.var_837aa533);
        level.basegametype = function_be90acca(level.var_837aa533);
    }
    level.teambased = 0;
    level.teamcount = 1;
    level.multiteam = level.teamcount > 2;
    if (sessionmodeiszombiesgame()) {
        level.zombie_team_index = level.teamcount + 1;
        if (2 == level.zombie_team_index) {
            level.zombie_team = #"axis";
        } else {
            level.zombie_team = "team" + level.zombie_team_index;
        }
    }
    gametype::init();
    level.teams = [];
    level.teamindex = [];
    teamcount = level.teamcount;
    level.teams[#"allies"] = "allies";
    level.teams[#"axis"] = "axis";
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
    level.defaultoffenseradius = 560;
    level.dropteam = getdvarint(#"sv_maxclients", 0);
    level.infinalkillcam = 0;
    registerdvars();
    level.oldschool = getdvarint(#"scr_oldschool", 0);
    if (level.oldschool) {
        /#
            print("<unknown string>");
        #/
        setdvar(#"jump_height", 64);
        setdvar(#"jump_slowdownenable", 0);
        setdvar(#"bg_falldamageminheight", 256);
        setdvar(#"bg_falldamagemaxheight", 512);
        setdvar(#"player_clipsizemultiplier", 2);
    }
    display_transition::init_shared();
    if (!isdefined(game.tiebreaker)) {
        game.tiebreaker = 0;
    }
    if (!isdefined(game.stat)) {
        game.stat = [];
    }
    level.figure_out_attacker = &globallogic_player::figureoutattacker;
    level.figure_out_friendly_fire = &globallogic_player::figureoutfriendlyfire;
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xe040a42, Offset: 0xf08
// Size: 0x19c
function registerdvars() {
    if (!isdefined(getdvar(#"scr_oldschool"))) {
        setdvar(#"scr_oldschool", 0);
    }
    if (!isdefined(getdvar(#"ui_guncycle"))) {
        setdvar(#"ui_guncycle", 0);
    }
    if (!isdefined(getdvar(#"ui_weapon_tiers"))) {
        setdvar(#"ui_weapon_tiers", 0);
    }
    setdvar(#"ui_text_endreason", "");
    setmatchflag("bomb_timer", 0);
    level.vehicledamagescalar = getdvarfloat(#"scr_vehicle_damage_scalar", 1);
    level.fire_audio_repeat_duration = getdvarint(#"fire_audio_repeat_duration", 0);
    level.fire_audio_random_max_duration = getdvarint(#"fire_audio_random_max_duration", 0);
}

// Namespace globallogic/globallogic
// Params 10, eflags: 0x2 linked
// Checksum 0x4ebe7c14, Offset: 0x10b0
// Size: 0x54
function blank(*arg1, *arg2, *arg3, *arg4, *arg5, *arg6, *arg7, *arg8, *arg9, *arg10) {
    
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x0
// Checksum 0xdcb39e49, Offset: 0x1110
// Size: 0x434
function setupcallbacks() {
    level.spawnplayer = &globallogic_spawn::spawnplayer;
    level.spawnplayerprediction = &globallogic_spawn::spawnplayerprediction;
    level.spawnclient = &globallogic_spawn::spawnclient;
    level.spawnspectator = &globallogic_spawn::spawnspectator;
    level.spawnintermission = &globallogic_spawn::spawnintermission;
    level.scoreongiveplayerscore = &globallogic_score::giveplayerscore;
    level.onplayerscore = &globallogic_score::default_onplayerscore;
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
    level.giveteamscore = &globallogic_score::giveteamscore;
    level.onlastteamaliveevent = undefined;
    level.gettimepassed = &globallogic_utils::gettimepassed;
    level.gettimeremaining = &globallogic_utils::gettimeremaining;
    level.gettimelimit = &globallogic_defaults::default_gettimelimit;
    level.getteamkillpenalty = &blank;
    level.getteamkillscore = &blank;
    level.iskillboosting = &globallogic_score::default_iskillboosting;
    level._setteamscore = &globallogic_score::_setteamscore;
    level._setplayerscore = &globallogic_score::_setplayerscore;
    level._getteamscore = &globallogic_score::_getteamscore;
    level._getplayerscore = &globallogic_score::_getplayerscore;
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
    level.dogmanagerongetdogs = &blank;
    level.var_fc5ef179 = &blank;
}

// Namespace globallogic/globallogic
// Params 4, eflags: 0x2 linked
// Checksum 0x517655bf, Offset: 0x1550
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
// Checksum 0x4137d700, Offset: 0x1648
// Size: 0xca
function determineteamwinnerbygamestat(gamestat) {
    teamkeys = getarraykeys(level.teams);
    winner = teamkeys[0];
    previous_winner_score = game.stat[gamestat][winner];
    for (teamindex = 1; teamindex < teamkeys.size; teamindex++) {
        winner = compareteambygamestat(gamestat, winner, teamkeys[teamindex], previous_winner_score);
        if (winner != "tie") {
            previous_winner_score = game.stat[gamestat][winner];
        }
    }
    return winner;
}

// Namespace globallogic/globallogic
// Params 3, eflags: 0x2 linked
// Checksum 0xf1e14d27, Offset: 0x1720
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
// Checksum 0x574cb83e, Offset: 0x17f8
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
// Params 1, eflags: 0x2 linked
// Checksum 0x116c487f, Offset: 0x18c8
// Size: 0x1c4
function forceend(hostsucks = 0) {
    if (level.hostforcedend || level.forcedend) {
        return;
    }
    winner = undefined;
    if (level.teambased) {
        winner = determineteamwinnerbygamestat("teamScores");
        globallogic_utils::logteamwinstring("host ended game", winner);
    } else {
        winner = globallogic_score::gethighestscoringplayer();
        /#
            if (isdefined(winner)) {
                print("<unknown string>" + winner.name);
            } else {
                print("<unknown string>");
            }
        #/
    }
    level.forcedend = 1;
    level.hostforcedend = 1;
    if (hostsucks) {
        endstring = #"mp/host_sucks";
    } else if (level.splitscreen) {
        endstring = #"mp/ended_game";
    } else {
        endstring = #"hash_cd63faed592da03";
    }
    setmatchflag("disableIngameMenu", 1);
    setdvar(#"ui_text_endreason", endstring);
    thread endgame(winner, endstring);
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x0
// Checksum 0xd19552fb, Offset: 0x1a98
// Size: 0x15c
function killserverpc() {
    if (level.hostforcedend || level.forcedend) {
        return;
    }
    winner = undefined;
    if (level.teambased) {
        winner = determineteamwinnerbygamestat("teamScores");
        globallogic_utils::logteamwinstring("host ended game", winner);
    } else {
        winner = globallogic_score::gethighestscoringplayer();
        /#
            if (isdefined(winner)) {
                print("<unknown string>" + winner.name);
            } else {
                print("<unknown string>");
            }
        #/
    }
    level.forcedend = 1;
    level.hostforcedend = 1;
    level.killserver = 1;
    endstring = #"hash_cd63faed592da03";
    println("<unknown string>");
    thread endgame(winner, endstring);
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xb8467b63, Offset: 0x1c00
// Size: 0x94
function someoneoneachteam() {
    foreach (team, _ in level.teams) {
        if (level.playercount[team] == 0) {
            return false;
        }
    }
    return true;
}

// Namespace globallogic/globallogic
// Params 1, eflags: 0x2 linked
// Checksum 0x159cec98, Offset: 0x1ca0
// Size: 0x64
function checkifteamforfeits(team) {
    if (!level.everexisted[team]) {
        return false;
    }
    if (level.playercount[team] < 1 && util::totalplayercount() > 0) {
        return true;
    }
    return false;
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xec1c8655, Offset: 0x1d10
// Size: 0xa4
function checkforanyteamforfeit() {
    foreach (team, _ in level.teams) {
        if (checkifteamforfeits(team)) {
            thread [[ level.onforfeit ]](team);
            return true;
        }
    }
    return false;
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xddbf82c3, Offset: 0x1dc0
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
// Checksum 0x810a2a2d, Offset: 0x1e68
// Size: 0x50
function isteamalldead(team) {
    return level.everexisted[team] && !function_a1ef346b(team).size && !level.playerlives[team];
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0x986b9358, Offset: 0x1ec0
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
// Checksum 0x8fce2f54, Offset: 0x1f60
// Size: 0xa2
function alldeadteamcount() {
    count = 0;
    foreach (team, _ in level.teams) {
        if (isteamalldead(team)) {
            count++;
        }
    }
    return count;
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0x153db354, Offset: 0x2010
// Size: 0x208
function dodeadeventupdates() {
    if (level.teambased) {
        if (areallteamsdead()) {
            [[ level.ondeadevent ]]("all");
            return true;
        }
        if (isdefined(level.onlastteamaliveevent)) {
            if (alldeadteamcount() == level.teams.size - 1) {
                foreach (team, _ in level.teams) {
                    if (!isteamalldead(team)) {
                        [[ level.onlastteamaliveevent ]](team);
                        return true;
                    }
                }
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
// Checksum 0xc1deb165, Offset: 0x2220
// Size: 0x60
function isonlyoneleftaliveonteam(team) {
    return level.lastalivecount[team] > 1 && function_a1ef346b(team).size == 1 && level.playerlives[team] == 1;
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xdcd4e842, Offset: 0x2288
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
// Checksum 0x4f2ff98f, Offset: 0x23b0
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
                if (game.state == "playing" && checkforanyteamforfeit()) {
                    return;
                }
            } else if (someoneoneachteam()) {
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
// Checksum 0xf0887e7, Offset: 0x25c8
// Size: 0x14e
function function_8da685e9() {
    level endon(#"hash_27f6b2240317c878");
    while (true) {
        foreach (player in level.players) {
            shouldshow = 1;
            for (playeridx = 0; playeridx < level.var_75433ec1.size; playeridx++) {
                if (player == level.var_75433ec1[playeridx]) {
                    shouldshow = 0;
                }
            }
            if (shouldshow) {
                player luinotifyevent(#"create_prematch_timer", 2, level.var_fd167bf6, level.var_5654073f);
                level.var_75433ec1[level.var_75433ec1.size] = player;
            }
        }
        waitframe(1);
    }
}

// Namespace globallogic/globallogic
// Params 1, eflags: 0x2 linked
// Checksum 0x6864b2fb, Offset: 0x2720
// Size: 0x344
function matchstarttimer(counttime) {
    level endon(#"end_game");
    self notify("2c5583b1d0ecd4a9");
    self endon("2c5583b1d0ecd4a9");
    var_5654073f = counttime >= 2;
    level.var_5654073f = var_5654073f;
    level.var_fd167bf6 = gettime() + int(counttime * 1000);
    level.var_75433ec1 = [];
    foreach (player in level.players) {
        player luinotifyevent(#"create_prematch_timer", 2, gettime() + int(counttime * 1000), var_5654073f);
        level.var_75433ec1[level.var_75433ec1.size] = player;
    }
    if (var_5654073f) {
        thread function_8da685e9();
        while (counttime > 0 && !level.gameended) {
            if (counttime == 2) {
                visionsetnaked("default", 3);
            }
            counttime--;
            var_b9ef7eae = [];
            foreach (player in level.players) {
                shouldplaysound = 1;
                for (playeridx = 0; playeridx < var_b9ef7eae.size; playeridx++) {
                    if (player isplayeronsamemachine(var_b9ef7eae[playeridx])) {
                        shouldplaysound = 0;
                    }
                }
                if (shouldplaysound) {
                    player playlocalsound(#"hash_5e14726f77107d1b");
                    var_b9ef7eae[var_b9ef7eae.size] = player;
                }
            }
            wait(1);
        }
        level notify(#"hash_27f6b2240317c878");
    } else {
        visionsetnaked("default", 1);
    }
    luinotifyevent(#"prematch_timer_ended", 1, var_5654073f);
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0x8c85eee5, Offset: 0x2a70
// Size: 0x1c
function matchstarttimerskip() {
    visionsetnaked("default", 0);
}

// Namespace globallogic/globallogic
// Params 2, eflags: 0x2 linked
// Checksum 0x62f12a04, Offset: 0x2a98
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
// Checksum 0x6bdaa42, Offset: 0x2b10
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
// Checksum 0xd4d2783, Offset: 0x2bf0
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
// Checksum 0xa36ccec8, Offset: 0x2cb8
// Size: 0x54
function incrementmatchcompletionstat(gamemode, playedorhosted, stat) {
    self stats::inc_stat(#"gamehistory", gamemode, #"modehistory", playedorhosted, stat, 1);
}

// Namespace globallogic/globallogic
// Params 3, eflags: 0x0
// Checksum 0xd5029895, Offset: 0x2d18
// Size: 0x54
function setmatchcompletionstat(gamemode, playedorhosted, stat) {
    self stats::set_stat(#"gamehistory", gamemode, #"modehistory", playedorhosted, stat, 1);
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x0
// Checksum 0x3e635c66, Offset: 0x2d78
// Size: 0xc4
function getendreasontext() {
    if (util::hitroundlimit() || util::hitroundwinlimit()) {
        return game.strings[#"round_limit_reached"];
    } else if (util::hitscorelimit()) {
        return game.strings[#"score_limit_reached"];
    }
    if (level.forcedend) {
        if (level.hostforcedend) {
            return #"hash_cd63faed592da03";
        } else {
            return #"mp/ended_game";
        }
    }
    return game.strings[#"time_limit_reached"];
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x0
// Checksum 0xe276300d, Offset: 0x2e48
// Size: 0xa4
function resetoutcomeforallplayers() {
    players = level.players;
    foreach (player in players) {
        if (!isdefined(player)) {
            continue;
        }
        player notify(#"reset_outcome");
    }
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xb7b33acb, Offset: 0x2ef8
// Size: 0x78
function getgamelength() {
    if (!level.timelimit || level.forcedend) {
        gamelength = globallogic_utils::gettimepassed() / 1000;
        gamelength = min(gamelength, 1200);
    } else {
        gamelength = level.timelimit * 60;
    }
    return gamelength;
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0x2af29065, Offset: 0x2f78
// Size: 0x14a
function gamehistoryplayerquit() {
    if (!gamemodeismode(0)) {
        return;
    }
    teamscoreratio = 0;
    self gamehistoryfinishmatch(3, 0, 0, 0, 0, teamscoreratio);
    if (isdefined(self.pers[#"matchesplayedstatstracked"])) {
        gamemode = util::getcurrentgamemode();
        self incrementmatchcompletionstat(gamemode, "played", "quit");
        if (isdefined(self.pers[#"matcheshostedstatstracked"])) {
            self incrementmatchcompletionstat(gamemode, "hosted", "quit");
            self.pers[#"matcheshostedstatstracked"] = undefined;
        }
        self.pers[#"matchesplayedstatstracked"] = undefined;
    }
    uploadstats(self);
    wait(1);
}

// Namespace globallogic/globallogic
// Params 1, eflags: 0x2 linked
// Checksum 0xeb109286, Offset: 0x30d0
// Size: 0x5c
function function_6c8d7c31(winner) {
    players = level.players;
    for (index = 0; index < players.size; index++) {
        globallogic_player::function_7314957c(players[index], winner);
    }
}

// Namespace globallogic/globallogic
// Params 2, eflags: 0x2 linked
// Checksum 0xe6c4df19, Offset: 0x3138
// Size: 0x180
function endgame(winner, *endreasontext) {
    if (game.state == #"postgame" || level.gameended) {
        return;
    }
    level.winningteam = endreasontext;
    outcome = endreasontext === level.zombie_team ? #"loss" : #"win";
    players = getplayers();
    foreach (player in players) {
        player.pers[#"outcome"] = outcome;
    }
    thread challenges::roundend(endreasontext);
    skillupdate(endreasontext, level.teambased);
    level notify(#"end_game");
}

// Namespace globallogic/globallogic
// Params 3, eflags: 0x2 linked
// Checksum 0x1be2579e, Offset: 0x32c0
// Size: 0xbe
function bbplayermatchend(gamelength, *endreasonstring, *gameover) {
    playerrank = getplacementforplayer(self);
    totaltimeplayed = 0;
    if (isdefined(self.timeplayed) && isdefined(self.timeplayed[#"total"])) {
        totaltimeplayed = self.timeplayed[#"total"];
        if (totaltimeplayed > gameover) {
            totaltimeplayed = gameover;
        }
    }
    xuid = self getxuid();
}

// Namespace globallogic/globallogic
// Params 2, eflags: 0x0
// Checksum 0x9a9642c2, Offset: 0x3388
// Size: 0x78
function roundendwait(defaultdelay, matchbonus) {
    if (!matchbonus) {
        wait(defaultdelay);
        level notify(#"round_end_done");
        return;
    }
    wait(defaultdelay / 2);
    level notify(#"give_match_bonus");
    wait(defaultdelay / 2);
    level notify(#"round_end_done");
}

// Namespace globallogic/globallogic
// Params 1, eflags: 0x2 linked
// Checksum 0xc21a3e05, Offset: 0x3408
// Size: 0x2c
function roundenddof(*time) {
    self clientfield::set_to_player("player_dof_settings", 2);
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xb4bcb70f, Offset: 0x3440
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
// Checksum 0xf1c35da0, Offset: 0x3578
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
// Checksum 0x53d6d401, Offset: 0x3628
// Size: 0x9c
function checkscorelimit() {
    if (game.state != "playing") {
        return;
    }
    if (level.scorelimit <= 0) {
        return;
    }
    if (level.teambased) {
        if (allteamsunderscorelimit()) {
            return;
        }
    } else {
        if (!isplayer(self)) {
            return;
        }
        if (self.score < level.scorelimit) {
            return;
        }
    }
    [[ level.onscorelimit ]]();
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0x457d31a8, Offset: 0x36d0
// Size: 0x2d2
function updategametypedvars() {
    level endon(#"end_game");
    while (game.state == "playing") {
        roundlimit = getgametypesetting(#"roundlimit");
        roundlimit = math::clamp(isdefined(roundlimit) ? roundlimit : 1, isdefined(level.roundlimitmin) ? level.roundlimitmin : 0, isdefined(level.roundlimitmax) ? level.roundlimitmax : 10);
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
        scorelimit = getgametypesetting(#"scorelimit");
        scorelimit = math::clamp(isdefined(scorelimit) ? scorelimit : 7500, isdefined(level.scorelimitmin) ? level.scorelimitmin : 1, isdefined(level.scorelimitmax) ? level.scorelimitmax : 500);
        if (scorelimit != level.scorelimit) {
            level.scorelimit = scorelimit;
            setdvar(#"ui_scorelimit", level.scorelimit);
            level notify(#"update_scorelimit");
        }
        checkscorelimit();
        if (isdefined(level.starttime)) {
            if (globallogic_utils::gettimeremaining() < 3000) {
                wait(0.1);
                continue;
            }
        }
        wait(1);
    }
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xf0e32c73, Offset: 0x39b0
// Size: 0x210
function removedisconnectedplayerfromplacement() {
    if (gamestate::is_shutting_down()) {
        return;
    }
    offset = 0;
    numplayers = level.placement[#"all"].size;
    found = 0;
    for (i = 0; i < numplayers; i++) {
        if (level.placement[#"all"][i] === self) {
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
// Checksum 0x4db9ded8, Offset: 0x3bc8
// Size: 0x23c
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
    for (i = 1; i < placementall.size; i++) {
        player = placementall[i];
        playerscore = player.score;
        for (j = i - 1; j >= 0 && (playerscore > placementall[j].score || playerscore == placementall[j].score && player.deaths < placementall[j].deaths); j--) {
            placementall[j + 1] = placementall[j];
        }
        placementall[j + 1] = player;
    }
    level.placement[#"all"] = placementall;
    /#
        globallogic_utils::assertproperplacement();
    #/
    updateteamplacement();
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xe4b7d818, Offset: 0x3e10
// Size: 0x1b4
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
        if (isdefined(player)) {
            team = player.pers[#"team"];
            placement[team][placement[team].size] = player;
        }
    }
    foreach (team, _ in level.teams) {
        level.placement[team] = placement[team];
    }
}

// Namespace globallogic/globallogic
// Params 1, eflags: 0x2 linked
// Checksum 0x1dbe6f9a, Offset: 0x3fd0
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
// Params 1, eflags: 0x2 linked
// Checksum 0x70834272, Offset: 0x4088
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
// Checksum 0xaa63858e, Offset: 0x4210
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
// Checksum 0x714c0551, Offset: 0x42c0
// Size: 0x9a
function totalplayerlives() {
    count = 0;
    foreach (team, _ in level.teams) {
        count += level.playerlives[team];
    }
    return count;
}

// Namespace globallogic/globallogic
// Params 1, eflags: 0x2 linked
// Checksum 0x2d3ee969, Offset: 0x4368
// Size: 0x74
function initteamvariables(team) {
    level.lastalivecount[team] = 0;
    level.everexisted[team] = 0;
    level.wavedelay[team] = 0;
    level.lastwave[team] = 0;
    level.waveplayerspawnindex[team] = 0;
    resetteamvariables(team);
}

// Namespace globallogic/globallogic
// Params 1, eflags: 0x2 linked
// Checksum 0xffdcc4c, Offset: 0x43e8
// Size: 0x94
function resetteamvariables(team) {
    level.playercount[team] = 0;
    level.botscount[team] = 0;
    level.lastalivecount[team] = function_a1ef346b(team).size;
    level.playerlives[team] = 0;
    level.deadplayers[team] = [];
    level.squads[team] = [];
    level.spawnqueuemodified[team] = 0;
}

// Namespace globallogic/globallogic
// Params 1, eflags: 0x2 linked
// Checksum 0x6befb8bb, Offset: 0x4488
// Size: 0x368
function updateteamstatus(var_bdfe75a7) {
    profilestart();
    if (game.state == "postgame") {
        profilestop();
        return;
    }
    foreach (team, _ in level.teams) {
        resetteamvariables(team);
    }
    self.var_bdfe75a7 = var_bdfe75a7;
    foreach (player in getplayers()) {
        team = player.team;
        if (team != "spectator") {
            level.playercount[team]++;
            if (isbot(player)) {
                level.botscount[team]++;
            }
            if (player.sessionstate == "playing" && !is_true(player.var_bdfe75a7)) {
                level.playerlives[team]++;
                player.spawnqueueindex = -1;
                if (!isalive(player)) {
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
    totalalive = totalalivecount();
    if (totalalive > level.maxplayercount) {
        level.maxplayercount = totalalive;
    }
    foreach (team, _ in level.teams) {
        if (function_a1ef346b(team).size && level.everexisted[team] == 0) {
            level.everexisted[team] = gettime();
        }
        sortdeadplayers(team);
    }
    level updategameevents();
    self.var_bdfe75a7 = undefined;
    profilestop();
}

// Namespace globallogic/globallogic
// Params 1, eflags: 0x2 linked
// Checksum 0xe4f8d394, Offset: 0x47f8
// Size: 0xb0
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
        level notify(#"match_ending_soon", "score");
    }
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xe7b775b0, Offset: 0x48b0
// Size: 0xb8
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
        level notify(#"match_ending_soon", "score");
    }
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xe4184eca, Offset: 0x4970
// Size: 0x1fc
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
    prematchperiod();
    level notify(#"prematch_over");
    level.prematch_over = 1;
    thread graceperiod();
    thread watchmatchendingsoon();
    level callback::callback(#"on_game_playing");
    level notify(#"game_playing");
    if (is_true(level.zm_disable_recording_stats)) {
        return;
    }
    recordmatchbegin();
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xb0042b5b, Offset: 0x4b78
// Size: 0x22
function waitforplayers() {
    while (level.players.size == 0) {
        waitframe(1);
    }
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xd76e978c, Offset: 0x4ba8
// Size: 0x18a
function prematchperiod() {
    setmatchflag("hud_hardcore", level.hardcoremode);
    level endon(#"game_ended");
    if (level.prematchperiod > 0) {
        waitforplayers();
    } else {
        matchstarttimerskip();
        waitframe(1);
    }
    level.inprematchperiod = 0;
    foreach (player in level.players) {
        player val::reset(#"prematch_period", "freezecontrols");
        player val::reset(#"prematch_period", "disable_weapons");
        player val::reset(#"prematch_period", "disablegadgets");
    }
    if (game.state != "playing") {
        return;
    }
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xc756a41b, Offset: 0x4d40
// Size: 0x182
function graceperiod() {
    level endon(#"game_ended");
    if (isdefined(level.graceperiodfunc)) {
        [[ level.graceperiodfunc ]]();
    } else {
        level flag::wait_till(#"initial_fade_in_complete");
        wait(level.graceperiod);
    }
    level notify(#"grace_period_ending");
    waitframe(1);
    /#
        if (getdvarint(#"hash_69aba1806f70f81a", 0) > 0) {
            return;
        }
    #/
    level.ingraceperiod = 0;
    if (game.state != "playing") {
        return;
    }
    if (level.numlives) {
        players = level.players;
        for (i = 0; i < players.size; i++) {
            player = players[i];
            if (!player.hasspawned && player.sessionteam != "spectator" && !isalive(player)) {
                player.statusicon = "hud_status_dead";
            }
        }
    }
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0x48186933, Offset: 0x4ed0
// Size: 0x64
function watchmatchendingsoon() {
    setdvar(#"xblive_matchendingsoon", 0);
    level waittill(#"match_ending_soon");
    setdvar(#"xblive_matchendingsoon", 1);
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x4f40
// Size: 0x4
function assertteamvariables() {
    
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x0
// Checksum 0xac96b5b4, Offset: 0x4f50
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
// Checksum 0xc2ce1375, Offset: 0x4fe8
// Size: 0x1544
function callback_startgametype() {
    level.prematchperiod = 0;
    level.intermission = 0;
    if (isdefined(level.var_6c4ec3fc)) {
        [[ level.var_6c4ec3fc ]]();
    }
    setmatchflag("cg_drawSpectatorMessages", 1);
    setmatchflag("game_ended", 0);
    if (!isdefined(game.gamestarted)) {
        if (!isdefined(game.allies)) {
            game.allies = "seals";
        }
        if (!isdefined(game.axis)) {
            game.axis = "pmc";
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
                game.team = "pmc";
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
        game.strings[#"spawn_next_round"] = #"hash_590100cdca62e7db";
        game.strings[#"waiting_to_spawn"] = #"hash_44d60a6e6ed2a53c";
        game.strings[#"waiting_to_spawn_ss"] = #"hash_78bf3a61cf52e257";
        game.strings[#"you_will_spawn"] = #"hash_53c0ba6abce1c0ea";
        game.strings[#"match_starting"] = #"mp/match_starting";
        game.strings[#"change_class"] = #"hash_181a96fe9c28ada2";
        game.strings[#"last_stand"] = #"hash_5732d212e4511a00";
        game.strings[#"cowards_way"] = #"hash_268e464278a2f8ff";
        game.strings[#"tie"] = #"mp/match_tie";
        game.strings[#"round_draw"] = #"mp/round_draw";
        game.strings[#"enemies_eliminated"] = #"mp_enemies_eliminated";
        game.strings[#"score_limit_reached"] = #"mp/score_limit_reached";
        game.strings[#"round_limit_reached"] = #"mp/round_limit_reached";
        game.strings[#"time_limit_reached"] = #"mp/time_limit_reached";
        game.strings[#"players_forfeited"] = #"mp/players_forfeited";
        assertteamvariables();
        if (isdefined(level.onprecachegametype)) {
            [[ level.onprecachegametype ]]();
        }
        game.gamestarted = 1;
        game.totalkills = 0;
        foreach (team, _ in level.teams) {
            game.stat[#"teamscores"][team] = 0;
            game.totalkillsteam[team] = 0;
        }
        if (!level.splitscreen && is_true(level.var_4ea2c79a)) {
            level.prematchperiod = getgametypesetting(#"prematchperiod");
        }
    }
    if (!isdefined(game.timepassed)) {
        game.timepassed = 0;
    }
    if (!isdefined(game.roundsplayed)) {
        game.roundsplayed = 0;
    }
    if (!isdefined(game.roundwinner)) {
        game.roundwinner = [];
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
        level.teamspawnpoints[team] = [];
        level.spawn_point_team_class_names[team] = [];
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
    level.maxteamplayers = getgametypesetting(#"maxteamplayers");
    level.cumulativeroundscores = getgametypesetting(#"cumulativeroundscores");
    level.var_d0e6b79d = getgametypesetting(#"hash_47df56af71e4df3");
    level.allowhitmarkers = getgametypesetting(#"allowhitmarkers");
    level.playerqueuedrespawn = getgametypesetting(#"playerqueuedrespawn");
    level.playerforcerespawn = getgametypesetting(#"playerforcerespawn");
    level.perksenabled = getgametypesetting(#"perksenabled");
    level.disableattachments = getgametypesetting(#"disableattachments");
    level.disabletacinsert = getgametypesetting(#"disabletacinsert");
    level.disablecustomcac = getgametypesetting(#"disablecustomcac");
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
    level.spectatetype = getgametypesetting(#"spectatetype");
    level.voip = spawnstruct();
    level.voip.deadchatwithdead = getgametypesetting(#"voipdeadchatwithdead");
    level.voip.deadchatwithteam = getgametypesetting(#"voipdeadchatwithteam");
    level.voip.deadhearallliving = getgametypesetting(#"voipdeadhearallliving");
    level.voip.deadhearteamliving = getgametypesetting(#"voipdeadhearteamliving");
    level.voip.everyonehearseveryone = getgametypesetting(#"voipeveryonehearseveryone");
    level.voip.deadhearkiller = getgametypesetting(#"voipdeadhearkiller");
    level.voip.killershearvictim = getgametypesetting(#"voipkillershearvictim");
    callback::callback(#"on_start_gametype");
    level.persistentdatainfo = [];
    level.maxrecentstats = 10;
    level.maxhitlocations = 19;
    level.globalshotsfired = 0;
    thread hud_message::init();
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
    globallogic_utils::registerpostroundevent(&potm::post_round_potm);
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
    if (!isdefined(level.graceperiod)) {
        level.graceperiod = 15;
    }
    level.ingraceperiod = 1;
    level.roundenddelay = 5;
    level.halftimeroundenddelay = 3;
    globallogic_score::updateallteamscores();
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
    if (isdefined(level.onstartgametype)) {
        [[ level.onstartgametype ]]();
    }
    if (getdvarint(#"custom_killstreak_mode", 0) == 1) {
        level.killstreaksenabled = 0;
    }
    level thread potm::play_potm(1);
    thread startgame();
    if (!is_true(level.var_82dda526)) {
        level thread updategametypedvars();
    }
    level thread simple_hostmigration::updatehostmigrationdata();
    /#
        if (getdvarint(#"scr_writeconfigstrings", 0) == 1) {
            level.skipgameend = 1;
            level.roundlimit = 1;
            wait(1);
            thread forceend(0);
        }
        if (getdvarint(#"scr_hostmigrationtest", 0) == 1) {
            thread forcedebughostmigration();
        }
    #/
}

/#

    // Namespace globallogic/globallogic
    // Params 0, eflags: 0x0
    // Checksum 0x5756a867, Offset: 0x6538
    // Size: 0x50
    function forcedebughostmigration() {
        while (true) {
            hostmigration::waittillhostmigrationdone();
            wait(60);
            starthostmigration();
            hostmigration::waittillhostmigrationdone();
        }
    }

#/

// Namespace globallogic/globallogic
// Params 4, eflags: 0x2 linked
// Checksum 0x7f91083b, Offset: 0x6590
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
// Params 0, eflags: 0x0
// Checksum 0x51daf909, Offset: 0x66b0
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
// Checksum 0xc10add1e, Offset: 0x6748
// Size: 0x64
function listenforgameend() {
    self endon(#"disconnect");
    self waittill(#"host_sucks_end_game");
    level.skipvote = 1;
    if (!level.gameended) {
        level thread forceend(1);
    }
}

// Namespace globallogic/globallogic
// Params 1, eflags: 0x0
// Checksum 0xa3d4b13, Offset: 0x67b8
// Size: 0x116
function getkillstreaks(player) {
    for (killstreaknum = 0; killstreaknum < level.maxkillstreaks; killstreaknum++) {
        killstreak[killstreaknum] = "killstreak_null";
    }
    if (isplayer(player) && !level.oldschool && level.disablecustomcac != 1 && !isbot(player) && isdefined(player.killstreak)) {
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
// Checksum 0x16bd08aa, Offset: 0x68d8
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

// Namespace globallogic/globallogic
// Params 1, eflags: 0x2 linked
// Checksum 0x23d0b9a8, Offset: 0x6940
// Size: 0x4c
function function_d1924f29(var_c76ee8ad) {
    self clientfield::set_player_uimodel("hudItems.cursorHintZMPurchaseInvalidText", var_c76ee8ad);
    self clientfield::set_player_uimodel("hudItems.cursorHintZMPurchaseInvalid", 1);
}

// Namespace globallogic/globallogic
// Params 0, eflags: 0x2 linked
// Checksum 0xc55f3d7e, Offset: 0x6998
// Size: 0x24
function function_d96c031e() {
    self clientfield::set_player_uimodel("hudItems.cursorHintZMPurchaseInvalid", 0);
}

