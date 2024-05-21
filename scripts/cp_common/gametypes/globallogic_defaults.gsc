// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\util.gsc;
#using scripts\cp_common\gametypes\globallogic_utils.gsc;
#using scripts\cp_common\gametypes\globallogic.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using script_44b0b8420eabacad;
#using scripts\core_common\spawning_shared.gsc;
#using scripts\core_common\rank_shared.gsc;
#using scripts\core_common\math_shared.gsc;

#namespace globallogic_defaults;

// Namespace globallogic_defaults/globallogic_defaults
// Params 1, eflags: 0x2 linked
// Checksum 0x49e0888a, Offset: 0x150
// Size: 0x3a
function getwinningteamfromloser(losing_team) {
    if (level.multiteam) {
        return "tie";
    }
    return util::getotherteam(losing_team);
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 1, eflags: 0x2 linked
// Checksum 0xa0e19b81, Offset: 0x198
// Size: 0x34c
function default_onforfeit(team) {
    level.gameforfeited = 1;
    level notify(#"forfeit in progress");
    level endon(#"forfeit in progress", #"abort forfeit");
    forfeit_delay = 20;
    announcement(game.strings[#"opponent_forfeiting_in"], forfeit_delay, 0);
    wait(10);
    announcement(game.strings[#"opponent_forfeiting_in"], 10, 0);
    wait(10);
    endreason = #"";
    if (level.multiteam) {
        setdvar(#"ui_text_endreason", game.strings[#"other_teams_forfeited"]);
        endreason = game.strings[#"other_teams_forfeited"];
        winner = team;
    } else if (!isdefined(team)) {
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
    thread globallogic::endgame();
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 1, eflags: 0x2 linked
// Checksum 0x68cf97fd, Offset: 0x4f0
// Size: 0xa4
function default_ondeadevent(team) {
    if (team == "all") {
        winner = level.var_c20ad7aa;
        globallogic_utils::logteamwinstring("team eliminated", winner);
        thread globallogic::endgame();
        return;
    }
    winner = getwinningteamfromloser(team);
    globallogic_utils::logteamwinstring("team eliminated", winner);
    thread globallogic::endgame();
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 1, eflags: 0x2 linked
// Checksum 0x616d47f4, Offset: 0x5a0
// Size: 0x15c
function function_9fd1cc80(team) {
    if (isdefined(level.teams[team])) {
        eliminatedstring = game.strings[#"enemies_eliminated"];
        iprintln(eliminatedstring);
        setdvar(#"ui_text_endreason", eliminatedstring);
        winner = globallogic::determineteamwinnerbygamestat("teamScores");
        globallogic_utils::logteamwinstring("team eliminated", winner);
        thread globallogic::endgame();
        return;
    }
    setdvar(#"ui_text_endreason", game.strings[#"tie"]);
    globallogic_utils::logteamwinstring("tie");
    if (level.teambased) {
        thread globallogic::endgame();
        return;
    }
    thread globallogic::endgame();
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 1, eflags: 0x2 linked
// Checksum 0x13087b0f, Offset: 0x708
// Size: 0xe
function function_8fd32d09(*team) {
    return false;
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 1, eflags: 0x2 linked
// Checksum 0x8d60871, Offset: 0x720
// Size: 0xc8
function function_b8fe203b(team) {
    if (function_8fd32d09(team)) {
        return true;
    }
    if (level.playercount[team] == 1 && function_a1ef346b(team).size == 1) {
        assert(function_a1ef346b(team).size == 1);
        if (function_a1ef346b(team)[0].lives > 0) {
            return true;
        }
    }
    return false;
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 1, eflags: 0x0
// Checksum 0xd526c663, Offset: 0x7f0
// Size: 0x64
function function_b322d0f3(team) {
    if (function_b8fe203b(team)) {
        return;
    }
    if (team == "all") {
        thread globallogic::endgame();
        return;
    }
    thread globallogic::endgame();
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 1, eflags: 0x2 linked
// Checksum 0x78404dda, Offset: 0x860
// Size: 0xc
function default_onalivecountchange(*team) {
    
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 1, eflags: 0x2 linked
// Checksum 0x7dbf8af1, Offset: 0x878
// Size: 0x10
function default_onroundendgame(winner) {
    return winner;
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 1, eflags: 0x2 linked
// Checksum 0xbb74ba11, Offset: 0x890
// Size: 0xc
function default_ononeleftevent(*team) {
    
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 0, eflags: 0x2 linked
// Checksum 0x40ef4bc2, Offset: 0x8a8
// Size: 0xf4
function default_ontimelimit() {
    winner = undefined;
    if (level.teambased) {
        winner = globallogic::determineteamwinnerbygamestat("teamScores");
        globallogic_utils::logteamwinstring("time limit", winner);
    } else {
        /#
            if (isdefined(winner)) {
                print("<unknown string>" + winner.name);
            } else {
                print("<unknown string>");
            }
        #/
    }
    setdvar(#"ui_text_endreason", game.strings[#"time_limit_reached"]);
    thread globallogic::endgame();
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 0, eflags: 0x2 linked
// Checksum 0x841a3df8, Offset: 0x9a8
// Size: 0x110
function default_onscorelimit() {
    if (!level.endgameonscorelimit) {
        return false;
    }
    winner = undefined;
    if (level.teambased) {
        winner = globallogic::determineteamwinnerbygamestat("teamScores");
        globallogic_utils::logteamwinstring("scorelimit", winner);
    } else {
        /#
            if (isdefined(winner)) {
                print("<unknown string>" + winner.name);
            } else {
                print("<unknown string>");
            }
        #/
    }
    setdvar(#"ui_text_endreason", game.strings[#"score_limit_reached"]);
    thread globallogic::endgame();
    return true;
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 2, eflags: 0x2 linked
// Checksum 0xd83de3e, Offset: 0xac0
// Size: 0x17c
function default_onspawnspectator(origin, angles) {
    if (isdefined(origin) && isdefined(angles)) {
        self spawn(origin, angles);
        return;
    }
    spawnpointname = "cp_global_intermission";
    spawnpoints = struct::get_array(spawnpointname, "targetname");
    assert(spawnpoints.size, "<unknown string>" + spawnpointname + "<unknown string>");
    spawnpoint = spawning::get_spawnpoint_random(spawnpoints);
    assert(isdefined(spawnpoint.origin), "<unknown string>" + spawnpointname + "<unknown string>");
    assert(isdefined(spawnpoint.angles), "<unknown string>" + spawnpointname + "<unknown string>" + spawnpoint.origin + "<unknown string>");
    self spawn(spawnpoint.origin, spawnpoint.angles);
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 0, eflags: 0x2 linked
// Checksum 0xe72ec452, Offset: 0xc48
// Size: 0xac
function default_onspawnintermission() {
    spawnpointname = "cp_global_intermission";
    spawnpoints = struct::get_array(spawnpointname, "targetname");
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
// Checksum 0x3f6c97c1, Offset: 0xd00
// Size: 0x6a
function default_gettimelimit() {
    var_a25a9aa9 = getgametypesetting(#"timelimit");
    if (!isdefined(var_a25a9aa9)) {
        var_a25a9aa9 = level.timelimitmax;
    }
    return math::clamp(var_a25a9aa9, level.timelimitmin, level.timelimitmax);
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 4, eflags: 0x2 linked
// Checksum 0xa52c6ec2, Offset: 0xd78
// Size: 0x26
function default_getteamkillpenalty(*einflictor, *attacker, *smeansofdeath, *weapon) {
    return false;
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 4, eflags: 0x2 linked
// Checksum 0xccadb82a, Offset: 0xda8
// Size: 0x26
function default_getteamkillscore(*einflictor, *attacker, *smeansofdeath, *weapon) {
    return false;
}

