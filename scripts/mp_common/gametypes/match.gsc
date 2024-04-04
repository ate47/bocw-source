// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\gametypes\round.gsc;
#using scripts\mp_common\gametypes\overtime.gsc;
#using scripts\mp_common\gametypes\outcome.gsc;
#using scripts\mp_common\gametypes\globallogic.gsc;
#using script_3d703ef87a841fe4;
#using scripts\core_common\system_shared.gsc;

#namespace match;

// Namespace match/match
// Params 0, eflags: 0x5
// Checksum 0x6854aefe, Offset: 0xe8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"match", &preinit, undefined, undefined, undefined);
}

// Namespace match/match
// Params 0, eflags: 0x6 linked
// Checksum 0x888484ed, Offset: 0x130
// Size: 0x14
function private preinit() {
    function_94003d29();
}

// Namespace match/match
// Params 0, eflags: 0x6 linked
// Checksum 0x40447a44, Offset: 0x150
// Size: 0x3e
function private function_37f04b09() {
    if (!isdefined(game.outcome)) {
        game.outcome = outcome::function_a1a81955();
        game.outcome.var_3c5fdf73 = [];
    }
}

// Namespace match/match
// Params 0, eflags: 0x6 linked
// Checksum 0xdf8adce0, Offset: 0x198
// Size: 0x4c
function private function_94003d29() {
    function_37f04b09();
    round::function_37f04b09();
    if (overtime::is_overtime_round()) {
        set_overtime();
    }
}

// Namespace match/match
// Params 0, eflags: 0x2 linked
// Checksum 0x20d95e9a, Offset: 0x1f0
// Size: 0xe
function function_f37f02fc() {
    return game.outcome;
}

// Namespace match/match
// Params 0, eflags: 0x4
// Checksum 0xa0d22f0, Offset: 0x208
// Size: 0x2c
function private function_b6b94df8() {
    if (overtime::is_overtime_round()) {
        set_overtime();
    }
}

// Namespace match/match
// Params 0, eflags: 0x2 linked
// Checksum 0x186f4228, Offset: 0x240
// Size: 0x34
function set_overtime() {
    round::set_flag("overtime");
    set_flag("overtime");
}

// Namespace match/match
// Params 1, eflags: 0x2 linked
// Checksum 0xb7fef231, Offset: 0x280
// Size: 0x2c
function set_flag(flag) {
    outcome::set_flag(game.outcome, flag);
}

// Namespace match/match
// Params 1, eflags: 0x2 linked
// Checksum 0x48d60c11, Offset: 0x2b8
// Size: 0x2a
function get_flag(flag) {
    return outcome::get_flag(game.outcome, flag);
}

// Namespace match/match
// Params 1, eflags: 0x0
// Checksum 0xe4d16cc5, Offset: 0x2f0
// Size: 0x2a
function clear_flag(flag) {
    return outcome::clear_flag(game.outcome, flag);
}

// Namespace match/match
// Params 1, eflags: 0x2 linked
// Checksum 0x349ae8a9, Offset: 0x328
// Size: 0x2c
function function_897438f4(var_c1e98979) {
    outcome::function_897438f4(game.outcome, var_c1e98979);
}

// Namespace match/match
// Params 0, eflags: 0x2 linked
// Checksum 0xf30275f3, Offset: 0x360
// Size: 0x1a
function function_3624d032() {
    return outcome::function_3624d032(game.outcome);
}

// Namespace match/match
// Params 0, eflags: 0x2 linked
// Checksum 0xe8ba0388, Offset: 0x388
// Size: 0x64
function function_c10174e7() {
    if (isdefined(game.outcome.team) && isdefined(level.teams[game.outcome.team])) {
        return true;
    }
    if (game.outcome.players.size) {
        return true;
    }
    return false;
}

// Namespace match/match
// Params 0, eflags: 0x2 linked
// Checksum 0x845d40ce, Offset: 0x3f8
// Size: 0x1a
function get_winning_team() {
    return outcome::get_winning_team(game.outcome);
}

// Namespace match/match
// Params 1, eflags: 0x0
// Checksum 0xf58b48f0, Offset: 0x420
// Size: 0x4a
function is_winning_team(team) {
    if (isdefined(game.outcome.team) && team == game.outcome.team) {
        return true;
    }
    return false;
}

// Namespace match/match
// Params 1, eflags: 0x2 linked
// Checksum 0x3caad425, Offset: 0x478
// Size: 0xa2
function function_a2b53e17(player) {
    if (game.outcome.team !== #"none" && player.pers[#"team"] === game.outcome.team) {
        return true;
    }
    if (game.outcome.players.size) {
        if (player == game.outcome.players[0]) {
            return true;
        }
    }
    return false;
}

// Namespace match/match
// Params 0, eflags: 0x2 linked
// Checksum 0x772085f2, Offset: 0x528
// Size: 0x24
function function_75f97ac7() {
    if (game.outcome.players.size) {
        return true;
    }
    return false;
}

// Namespace match/match
// Params 0, eflags: 0x2 linked
// Checksum 0x85dc6c8, Offset: 0x558
// Size: 0x46
function function_517c0ce0() {
    if (game.outcome.players.size) {
        return game.outcome.players[0] ishost();
    }
    return 0;
}

// Namespace match/match
// Params 0, eflags: 0x2 linked
// Checksum 0xf0dea8df, Offset: 0x5a8
// Size: 0x1a
function function_b5f4c9d8() {
    return outcome::function_b5f4c9d8(game.outcome);
}

// Namespace match/match
// Params 0, eflags: 0x2 linked
// Checksum 0xbcc24596, Offset: 0x5d0
// Size: 0x52
function get_winner() {
    if (is_true(level.teambased)) {
        return outcome::get_winning_team(game.outcome);
    }
    return outcome::function_b5f4c9d8(game.outcome);
}

// Namespace match/match
// Params 1, eflags: 0x0
// Checksum 0x8b90f983, Offset: 0x630
// Size: 0x2c
function set_winner(team_or_player) {
    outcome::set_winner(game.outcome, team_or_player);
}

// Namespace match/match
// Params 1, eflags: 0x2 linked
// Checksum 0x4e9d9f09, Offset: 0x668
// Size: 0x2c
function function_af2e264f(winner) {
    outcome::function_af2e264f(game.outcome, winner);
}

// Namespace match/match
// Params 0, eflags: 0x0
// Checksum 0xc7ce2afe, Offset: 0x6a0
// Size: 0x3c
function function_870759fb() {
    winner = function_6d0354e3();
    outcome::function_af2e264f(game.outcome, winner);
}

// Namespace match/match
// Params 0, eflags: 0x2 linked
// Checksum 0x308c995, Offset: 0x6e8
// Size: 0x132
function function_6d0354e3() {
    winner = round::get_winner();
    if (game.outcome.var_aefc8b8d.var_c1e98979 != 7 && game.outcome.var_aefc8b8d.var_c1e98979 != 11) {
        if (level.teambased && get_flag("overtime")) {
            if (!is_true(level.doubleovertime) || round::get_flag("tie")) {
                winner = teams::function_d85770f0("overtimeroundswon");
            }
        } else if (level.scoreroundwinbased) {
            winner = teams::function_d85770f0("roundswon");
        } else {
            winner = teams::function_ef80de99();
        }
    }
    return winner;
}

// Namespace match/match
// Params 0, eflags: 0x2 linked
// Checksum 0xe31af664, Offset: 0x828
// Size: 0x48c
function function_10cd0ad() {
    totalkills = [];
    totaldeaths = [];
    teamkeys = getarraykeys(level.teams);
    foreach (team in teamkeys) {
        totalkills[team] = 0;
        totaldeaths[team] = 0;
        foreach (player in getplayers(team)) {
            totalkills[team] = totalkills[team] + player.pers[#"kills"];
            totaldeaths[team] = totaldeaths[team] + player.pers[#"deaths"];
        }
    }
    highestkillcount = undefined;
    lowestdeathcount = undefined;
    var_578c6319 = [];
    foreach (team in teamkeys) {
        killcount = totalkills[team];
        if (!isdefined(highestkillcount) || killcount > highestkillcount) {
            highestkillcount = killcount;
        }
    }
    foreach (team in teamkeys) {
        if (totalkills[team] == highestkillcount) {
            var_578c6319[var_578c6319.size] = team;
        }
    }
    if (var_578c6319.size == 1) {
        return var_578c6319[0];
    }
    if (var_578c6319.size > 0) {
        foreach (team in var_578c6319) {
            deathcount = totaldeaths[team];
            if (!isdefined(lowestdeathcount) || deathcount < lowestdeathcount) {
                lowestdeathcount = deathcount;
            }
        }
        foreach (i, team in var_578c6319) {
            if (totaldeaths[team] != lowestdeathcount) {
                var_578c6319[i] = #"hash_14ed42bb8a61e1e2";
            }
        }
        arrayremovevalue(var_578c6319, #"hash_14ed42bb8a61e1e2");
        if (var_578c6319.size > 0) {
            winnerindex = randomint(var_578c6319.size);
            return var_578c6319[winnerindex];
        }
    }
    winnerindex = randomint(teamkeys.size);
    return teamkeys[winnerindex];
}

