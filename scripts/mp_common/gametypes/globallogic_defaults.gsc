// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\util.gsc;
#using scripts\mp_common\gametypes\round.gsc;
#using scripts\mp_common\gametypes\match.gsc;
#using scripts\mp_common\gametypes\globallogic_score.gsc;
#using script_1cc417743d7c262d;
#using scripts\mp_common\gametypes\globallogic.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\core_common\util_shared.gsc;
#using script_7dc3a36c222eaf22;
#using script_44b0b8420eabacad;
#using scripts\core_common\rank_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\gamestate_util.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace globallogic_defaults;

// Namespace globallogic_defaults/globallogic_defaults
// Params 1, eflags: 0x2 linked
// Checksum 0x474f11bb, Offset: 0x148
// Size: 0x32
function getwinningteamfromloser(losing_team) {
    if (level.multiteam) {
        return undefined;
    }
    return util::getotherteam(losing_team);
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 1, eflags: 0x2 linked
// Checksum 0x7f09145e, Offset: 0x188
// Size: 0x5c
function function_61c8bef4(*params) {
    level.var_ba92f0a8 = 1;
    level.forcedend = 1;
    round::set_flag("force_end");
    thread globallogic::end_round(11);
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 1, eflags: 0x2 linked
// Checksum 0xc6c241a9, Offset: 0x1f0
// Size: 0x174
function default_onforfeit(params) {
    level.gameforfeited = 1;
    level notify(#"forfeit in progress");
    level endon(#"forfeit in progress", #"abort forfeit");
    forfeit_delay = 20;
    announcement(game.strings[#"opponent_forfeiting_in"], forfeit_delay, 0);
    wait(10);
    announcement(game.strings[#"opponent_forfeiting_in"], 10, 0);
    wait(10);
    if (!isdefined(params)) {
        round::set_winner(level.players[0]);
    } else if (params.var_6eb69269.size) {
        round::set_winner(params.var_6eb69269[0]);
    }
    level.forcedend = 1;
    round::set_flag("force_end");
    thread globallogic::end_round(7);
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 1, eflags: 0x0
// Checksum 0x4d113d34, Offset: 0x370
// Size: 0xdc
function default_ondeadevent(team) {
    var_2e0d5506 = round::get_winner();
    if (isdefined(var_2e0d5506) && var_2e0d5506 != #"none") {
        return;
    }
    if (isdefined(level.teams[team])) {
        round::set_winner(getwinningteamfromloser(team));
        thread globallogic::end_round(6);
        return;
    }
    round::set_flag("tie");
    thread globallogic::end_round(6);
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 1, eflags: 0x2 linked
// Checksum 0x49d06a1c, Offset: 0x458
// Size: 0xdc
function function_dcf41142(params) {
    /#
        if (getdvarint(#"hash_3b4d2cf24a06392e", 0)) {
            return;
        }
    #/
    if (gamestate::is_game_over()) {
        return;
    }
    if (params.teams_alive.size && isdefined(level.teams[params.teams_alive[0]])) {
        round::function_af2e264f(params.teams_alive[0]);
    } else {
        round::set_flag("tie");
    }
    thread globallogic::end_round(6);
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 0, eflags: 0x0
// Checksum 0x74e9b991, Offset: 0x540
// Size: 0x34
function function_daa7e9d5() {
    level callback::remove_callback(#"on_last_alive", &function_dcf41142);
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 1, eflags: 0x2 linked
// Checksum 0xc2201ecd, Offset: 0x580
// Size: 0xc
function default_onalivecountchange(*team) {
    
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 1, eflags: 0x2 linked
// Checksum 0x1fceb742, Offset: 0x598
// Size: 0xa4
function onendgame(*var_c1e98979) {
    if (level.scoreroundwinbased) {
        globallogic_score::function_9779ac61();
    }
    winner = match::function_6d0354e3();
    if (level.var_1e347348 === 1 && (!isdefined(winner) || winner == #"none")) {
        winner = match::function_10cd0ad();
    }
    match::function_af2e264f(winner);
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 1, eflags: 0x2 linked
// Checksum 0xa9b4386b, Offset: 0x648
// Size: 0x150
function default_ononeleftevent(team) {
    if (!level.teambased) {
        round::set_winner(globallogic_score::gethighestscoringplayer());
        thread globallogic::end_round(6);
        return;
    }
    foreach (player in level.players) {
        if (!isalive(player)) {
            continue;
        }
        if (!isdefined(player.pers[#"team"]) || player.pers[#"team"] != team) {
            continue;
        }
        player globallogic_audio::leader_dialog_on_player("sudden_death");
    }
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 0, eflags: 0x2 linked
// Checksum 0x90af2729, Offset: 0x7a0
// Size: 0x2c
function default_ontimelimit() {
    round::function_870759fb();
    thread globallogic::end_round(2);
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 0, eflags: 0x2 linked
// Checksum 0xb4f05b21, Offset: 0x7d8
// Size: 0x48
function default_onscorelimit() {
    if (!level.endgameonscorelimit) {
        return false;
    }
    round::function_870759fb();
    thread globallogic::end_round(3);
    return true;
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 0, eflags: 0x2 linked
// Checksum 0x1713e5fa, Offset: 0x828
// Size: 0x40
function default_onroundscorelimit() {
    round::function_870759fb();
    param1 = 4;
    thread globallogic::end_round(param1);
    return true;
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 2, eflags: 0x6 linked
// Checksum 0xc1eef8a4, Offset: 0x870
// Size: 0x84
function private function_85d45b4b(origin, angles) {
    self spawn(origin, angles);
    if (self.pers[#"team"] != #"spectator" && level.var_1ba484ad === 2) {
        self spectate_view::function_86df9236();
    }
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 2, eflags: 0x2 linked
// Checksum 0xaa46b62f, Offset: 0x900
// Size: 0xd4
function default_onspawnspectator(origin, angles) {
    if (isdefined(origin) && isdefined(angles)) {
        self function_85d45b4b(origin, angles);
        return;
    }
    spawnpoints = spawning::get_spawnpoint_array("mp_global_intermission");
    assert(spawnpoints.size, "<unknown string>");
    spawnpoint = spawning::get_spawnpoint_random(spawnpoints);
    self function_85d45b4b(spawnpoint.origin, spawnpoint.angles);
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 1, eflags: 0x2 linked
// Checksum 0x3b99a664, Offset: 0x9e0
// Size: 0xb4
function default_onspawnintermission(endgame) {
    if (is_true(endgame)) {
        return;
    }
    spawnpoint = spawning::get_random_intermission_point();
    if (isdefined(spawnpoint)) {
        self spawn(spawnpoint.origin, spawnpoint.angles);
    } else {
        /#
            util::error("<unknown string>");
        #/
    }
    self callback::callback(#"hash_3e52a013a2eb0f16");
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 0, eflags: 0x2 linked
// Checksum 0x365cbe94, Offset: 0xaa0
// Size: 0xba
function default_gettimelimit() {
    /#
        if (getdvarfloat(#"timelimit_override", -1) != -1) {
            return math::clamp(getdvarfloat(#"timelimit_override", -1), level.timelimitmin, level.timelimitmax);
        }
    #/
    return math::clamp(getgametypesetting(#"timelimit"), level.timelimitmin, level.timelimitmax);
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 4, eflags: 0x2 linked
// Checksum 0x1ad49705, Offset: 0xb68
// Size: 0xb0
function default_getteamkillpenalty(einflictor, attacker, smeansofdeath, weapon) {
    teamkill_penalty = 1;
    if (killstreaks::is_killstreak_weapon(weapon)) {
        teamkill_penalty *= killstreaks::get_killstreak_team_kill_penalty_scale(weapon);
    }
    if (isdefined(level.var_17ae20ae) && [[ level.var_17ae20ae ]](einflictor, attacker, smeansofdeath, weapon)) {
        teamkill_penalty *= level.teamkillpenaltymultiplier;
    }
    return teamkill_penalty;
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 4, eflags: 0x2 linked
// Checksum 0x9154cc76, Offset: 0xc20
// Size: 0xc2
function default_getteamkillscore(einflictor, attacker, smeansofdeath, weapon) {
    teamkill_score = attacker rank::getscoreinfovalue("team_kill");
    if (isdefined(level.var_17ae20ae) && [[ level.var_17ae20ae ]](einflictor, attacker, smeansofdeath, weapon)) {
        teamkill_score = attacker rank::getscoreinfovalue("kill");
        teamkill_score *= level.teamkillscoremultiplier;
    }
    return int(teamkill_score);
}

// Namespace globallogic_defaults/globallogic_defaults
// Params 1, eflags: 0x0
// Checksum 0xa1633f0c, Offset: 0xcf0
// Size: 0x102
function get_alive_players(players) {
    alive_players = [];
    foreach (player in players) {
        if (player == self) {
            continue;
        }
        if (!isalive(player)) {
            continue;
        }
        if (!isdefined(alive_players)) {
            alive_players = [];
        } else if (!isarray(alive_players)) {
            alive_players = array(alive_players);
        }
        alive_players[alive_players.size] = player;
    }
    return alive_players;
}

