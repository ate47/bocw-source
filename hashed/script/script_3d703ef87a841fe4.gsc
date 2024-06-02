// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\map.gsc;
#using scripts\core_common\player\player_shared.gsc;

#namespace teams;

// Namespace teams/teams
// Params 1, eflags: 0x0
// Checksum 0xd9f75b9f, Offset: 0x90
// Size: 0x26
function function_7f8faff9(team) {
    return game.stat[#"teamscores"][team];
}

// Namespace teams/teams
// Params 1, eflags: 0x2 linked
// Checksum 0x76b815c, Offset: 0xc0
// Size: 0x134
function function_dc7eaabd(assignment) {
    assert(isdefined(assignment));
    self.pers[#"team"] = assignment;
    self.team = assignment;
    self.sessionteam = assignment;
    if (isdefined(level.teams[assignment])) {
        status = self player::function_3d288f14();
        if (!isdefined(level.var_75dffa9f[assignment]) || status != level.var_75dffa9f[assignment] && status == #"game") {
            if (status == #"game") {
                level.var_75dffa9f[assignment] = #"game";
            } else {
                level.var_75dffa9f[assignment] = #"none";
            }
        }
    }
    /#
        self thread function_ba459d03(assignment);
    #/
}

// Namespace teams/teams
// Params 1, eflags: 0x2 linked
// Checksum 0x3530437b, Offset: 0x200
// Size: 0x42
function is_team_empty(team) {
    team_players = getplayers(team);
    if (team_players.size > 0) {
        return false;
    }
    return true;
}

// Namespace teams/teams
// Params 0, eflags: 0x2 linked
// Checksum 0x71006129, Offset: 0x250
// Size: 0xfa
function function_959bac94() {
    foreach (team in level.teams) {
        if (self is_team_empty(team)) {
            println("<unknown string>" + "<unknown string>" + self.name + "<unknown string>" + team);
            /#
                function_d28f6fa0(team);
            #/
            return team;
        }
    }
    return #"spectator";
}

// Namespace teams/teams
// Params 1, eflags: 0x2 linked
// Checksum 0x61ab7c92, Offset: 0x358
// Size: 0xac
function function_712e3ba6(score) {
    foreach (team, _ in level.teams) {
        if (game.stat[#"teamscores"][team] >= score) {
            return true;
        }
    }
    return false;
}

// Namespace teams/teams
// Params 0, eflags: 0x2 linked
// Checksum 0x702fab0f, Offset: 0x410
// Size: 0x1a
function any_team_hit_score_limit() {
    return function_712e3ba6(level.scorelimit);
}

// Namespace teams/teams
// Params 4, eflags: 0x6 linked
// Checksum 0x939695f0, Offset: 0x438
// Size: 0xaa
function private function_67aac3d9(gamestat, teama, teamb, previous_winner_score) {
    winner = undefined;
    assert(teama !== "<unknown string>");
    if (previous_winner_score == game.stat[gamestat][teamb]) {
        winner = undefined;
    } else if (game.stat[gamestat][teamb] > previous_winner_score) {
        winner = teamb;
    } else {
        winner = teama;
    }
    return winner;
}

// Namespace teams/teams
// Params 1, eflags: 0x2 linked
// Checksum 0x6721d526, Offset: 0x4f0
// Size: 0xbe
function function_d85770f0(gamestat) {
    teamkeys = getarraykeys(level.teams);
    winner = teamkeys[0];
    previous_winner_score = game.stat[gamestat][winner];
    for (teamindex = 1; teamindex < teamkeys.size; teamindex++) {
        winner = function_67aac3d9(gamestat, winner, teamkeys[teamindex], previous_winner_score);
        if (isdefined(winner)) {
            previous_winner_score = game.stat[gamestat][winner];
        }
    }
    return winner;
}

// Namespace teams/teams
// Params 3, eflags: 0x6 linked
// Checksum 0x5d069e68, Offset: 0x5b8
// Size: 0x7e
function private function_e390f598(var_1ada49b5, teamb, var_2a5c5ccb) {
    assert(var_1ada49b5 !== "<unknown string>");
    teambscore = [[ level._getteamscore ]](teamb);
    if (teambscore == var_2a5c5ccb) {
        return undefined;
    } else if (teambscore > var_2a5c5ccb) {
        return teamb;
    }
    return var_1ada49b5;
}

// Namespace teams/teams
// Params 0, eflags: 0x2 linked
// Checksum 0x61a69525, Offset: 0x640
// Size: 0xb6
function function_ef80de99() {
    teamkeys = getarraykeys(level.teams);
    winner = teamkeys[0];
    var_2a5c5ccb = [[ level._getteamscore ]](winner);
    for (teamindex = 1; teamindex < teamkeys.size; teamindex++) {
        winner = function_e390f598(winner, teamkeys[teamindex], var_2a5c5ccb);
        if (isdefined(winner)) {
            var_2a5c5ccb = [[ level._getteamscore ]](winner);
        }
    }
    return winner;
}

// Namespace teams/teams
// Params 1, eflags: 0x2 linked
// Checksum 0x7c02e5c8, Offset: 0x700
// Size: 0x96
function function_20cfd8b5(team) {
    if (isdefined(team)) {
        teamindex = level.teamindex[team];
        if (isdefined(teamindex)) {
            var_504bfad6 = map::function_596f8772();
            var_7c3dac8 = var_504bfad6.faction[teamindex].var_d2446fa0;
            if (isdefined(var_7c3dac8)) {
                return getscriptbundle(var_7c3dac8);
            }
        }
    }
    return undefined;
}

/#

    // Namespace teams/teams
    // Params 1, eflags: 0x4
    // Checksum 0x30998ef, Offset: 0x7a0
    // Size: 0x12c
    function private function_ba459d03(team) {
        if (is_true(level.var_ba13fb7a)) {
            team_str = string(team);
            if (isdefined(level.teams[team])) {
                team_str = level.teams[team];
            }
            voip = "<unknown string>";
            if (isdefined(level.var_75dffa9f[team])) {
                voip += level.var_75dffa9f[team] == #"game" ? "<unknown string>" : "<unknown string>";
            } else {
                voip += "<unknown string>";
            }
            println("<unknown string>" + "<unknown string>" + self.name + "<unknown string>" + team_str + "<unknown string>" + voip);
        }
    }

    // Namespace teams/teams
    // Params 1, eflags: 0x0
    // Checksum 0x8d35b591, Offset: 0x8d8
    // Size: 0xd8
    function function_a9d594a0(party) {
        foreach (party_member in party.party_members) {
            var_2798314b = party_member getparty();
            if (var_2798314b.var_a15e4438 != party.var_a15e4438) {
                assertmsg("<unknown string>");
            }
        }
    }

    // Namespace teams/teams
    // Params 1, eflags: 0x0
    // Checksum 0x20e37b67, Offset: 0x9b8
    // Size: 0xc0
    function function_d28f6fa0(team) {
        players = getplayers(team);
        foreach (player in players) {
            function_a9d594a0(player getparty());
        }
    }

#/
