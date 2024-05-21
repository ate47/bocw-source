// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\util.gsc;
#using scripts\zm_common\gametypes\spawnlogic.gsc;
#using scripts\zm_common\gametypes\globallogic_utils.gsc;
#using scripts\zm_common\gametypes\globallogic_score.gsc;
#using scripts\zm_common\gametypes\globallogic_audio.gsc;
#using scripts\zm_common\gametypes\globallogic.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace globallogic_defaults;

// Namespace globallogic_defaults/globallogic_defaults
// Params 1, eflags: 0x2 linked
// Checksum 0xc38e3696, Offset: 0x158
// Size: 0x3a
function getwinningteamfromloser(losing_team) {
    if (level.multiteam) {
        return "tie";
    }
    return util::getotherteam(losing_team);
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 1, eflags: 0x2 linked
// Checksum 0x4463f151, Offset: 0x1a0
// Size: 0x2ec
function default_onforfeit(team) {
    level.gameforfeited = 1;
    level notify(#"forfeit in progress");
    level endon(#"forfeit in progress");
    level endon(#"abort forfeit");
    forfeit_delay = 20;
    announcement(game.strings[#"opponent_forfeiting_in"], forfeit_delay, 0);
    wait(10);
    announcement(game.strings[#"opponent_forfeiting_in"], 10, 0);
    wait(10);
    endreason = #"";
    if (!isdefined(team)) {
        setdvar(#"ui_text_endreason", game.strings[#"players_forfeited"]);
        endreason = game.strings[#"players_forfeited"];
        winner = level.players[0];
    } else if (isdefined(level.teams[team])) {
        endreason = game.strings[team + "_forfeited"];
        setdvar(#"ui_text_endreason", endreason);
        winner = getwinningteamfromloser(team);
    } else {
        assert(isdefined(team), "<unknown string>");
        assert(0, "<unknown string>" + team + "<unknown string>");
        winner = "tie";
    }
    level.forcedend = 1;
    /#
        if (isplayer(winner)) {
            print("<unknown string>" + winner getxuid() + "<unknown string>" + winner.name + "<unknown string>");
        } else {
            globallogic_utils::logteamwinstring("<unknown string>", winner);
        }
    #/
    thread globallogic::endgame(winner, endreason);
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 1, eflags: 0x2 linked
// Checksum 0xf3713669, Offset: 0x498
// Size: 0x1bc
function default_ondeadevent(team) {
    level callback::callback(#"on_team_eliminated", team);
    if (isdefined(level.teams[team])) {
        eliminatedstring = game.strings[team + "_eliminated"];
        iprintln(eliminatedstring);
        setdvar(#"ui_text_endreason", eliminatedstring);
        winner = getwinningteamfromloser(team);
        globallogic_utils::logteamwinstring("team eliminated", winner);
        thread globallogic::endgame(winner, eliminatedstring);
        return;
    }
    setdvar(#"ui_text_endreason", game.strings[#"tie"]);
    globallogic_utils::logteamwinstring("tie");
    if (level.teambased) {
        thread globallogic::endgame("tie", game.strings[#"tie"]);
        return;
    }
    thread globallogic::endgame(undefined, game.strings[#"tie"]);
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 1, eflags: 0x2 linked
// Checksum 0x9a7d7fa4, Offset: 0x660
// Size: 0xc
function default_onalivecountchange(*team) {
    
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 1, eflags: 0x2 linked
// Checksum 0xd881ae18, Offset: 0x678
// Size: 0x10
function default_onroundendgame(winner) {
    return winner;
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 1, eflags: 0x2 linked
// Checksum 0xf70c6acf, Offset: 0x690
// Size: 0x154
function default_ononeleftevent(team) {
    if (!level.teambased) {
        winner = globallogic_score::gethighestscoringplayer();
        /#
            if (isdefined(winner)) {
                print("<unknown string>" + winner.name);
            } else {
                print("<unknown string>");
            }
        #/
        thread globallogic::endgame(winner, #"mp_enemies_eliminated");
        return;
    }
    for (index = 0; index < level.players.size; index++) {
        player = level.players[index];
        if (!isalive(player)) {
            continue;
        }
        if (!isdefined(player.pers[#"team"]) || player.pers[#"team"] != team) {
        }
    }
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 0, eflags: 0x2 linked
// Checksum 0x14e8c91a, Offset: 0x7f0
// Size: 0x124
function default_ontimelimit() {
    winner = undefined;
    if (level.teambased) {
        winner = globallogic::determineteamwinnerbygamestat("teamScores");
        globallogic_utils::logteamwinstring("time limit", winner);
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
    setdvar(#"ui_text_endreason", game.strings[#"time_limit_reached"]);
    thread globallogic::endgame(winner, game.strings[#"time_limit_reached"]);
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 0, eflags: 0x2 linked
// Checksum 0x8a73b771, Offset: 0x920
// Size: 0x140
function default_onscorelimit() {
    if (!level.endgameonscorelimit) {
        return false;
    }
    winner = undefined;
    if (level.teambased) {
        winner = globallogic::determineteamwinnerbygamestat("teamScores");
        globallogic_utils::logteamwinstring("scorelimit", winner);
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
    setdvar(#"ui_text_endreason", game.strings[#"score_limit_reached"]);
    thread globallogic::endgame(winner, game.strings[#"score_limit_reached"]);
    return true;
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 2, eflags: 0x2 linked
// Checksum 0x7a5d791a, Offset: 0xa68
// Size: 0xec
function default_onspawnspectator(origin, angles) {
    if (isdefined(origin) && isdefined(angles)) {
        self spawn(origin, angles);
        return;
    }
    spawnpointname = "mp_global_intermission";
    spawnpoints = getentarray(spawnpointname, "classname");
    assert(spawnpoints.size, "<unknown string>");
    spawnpoint = spawnlogic::getspawnpoint_random(spawnpoints);
    self spawn(spawnpoint.origin, spawnpoint.angles);
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 0, eflags: 0x2 linked
// Checksum 0xd9775483, Offset: 0xb60
// Size: 0xac
function default_onspawnintermission() {
    spawnpointname = "mp_global_intermission";
    spawnpoints = getentarray(spawnpointname, "classname");
    spawnpoint = spawnpoints[0];
    if (isdefined(spawnpoint)) {
        self spawn(spawnpoint.origin, spawnpoint.angles);
        return;
    }
    /#
        util::error("<unknown string>" + spawnpointname + "<unknown string>");
    #/
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 0, eflags: 0x2 linked
// Checksum 0xe5807b11, Offset: 0xc18
// Size: 0x62
function default_gettimelimit() {
    timelimit = getgametypesetting(#"timelimit");
    if (!isdefined(timelimit)) {
        timelimit = 0;
    }
    return math::clamp(timelimit, level.timelimitmin, level.timelimitmax);
}

