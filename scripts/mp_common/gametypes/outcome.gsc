// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\gametypes\globallogic_score.gsc;
#using scripts\mp_common\gametypes\globallogic.gsc;
#using script_3d703ef87a841fe4;
#using scripts\core_common\flag_shared.gsc;

#namespace outcome;

// Namespace outcome/outcome
// Params 0, eflags: 0x1
// Checksum 0x46dd2da3, Offset: 0xc8
// Size: 0x94
function autoexec main() {
    level.var_9b671c3c[#"tie"] = {#flag:"tie", #code_flag:1};
    level.var_9b671c3c[#"overtime"] = {#flag:"overtime", #code_flag:2};
}

// Namespace outcome/outcome
// Params 0, eflags: 0x2 linked
// Checksum 0x46d484ea, Offset: 0x168
// Size: 0x66
function function_a1a81955() {
    outcome = spawnstruct();
    outcome.flags = 0;
    outcome.var_c1e98979 = 0;
    outcome.team = #"none";
    outcome.players = [];
    outcome.players_score = [];
    return outcome;
}

// Namespace outcome/outcome
// Params 2, eflags: 0x2 linked
// Checksum 0xe23d3592, Offset: 0x1d8
// Size: 0xce
function is_winner(outcome, team_or_player) {
    if (isplayer(team_or_player)) {
        if (isdefined(outcome.players) && outcome.players.size && outcome.players[0] == team_or_player) {
            return true;
        }
        if (isdefined(outcome.team) && outcome.team == team_or_player.team) {
            return true;
        }
    } else if (isdefined(outcome.team) && outcome.team == team_or_player) {
        return true;
    }
    return false;
}

// Namespace outcome/outcome
// Params 2, eflags: 0x2 linked
// Checksum 0x252418f0, Offset: 0x2b0
// Size: 0x2c
function set_flag(outcome, flag) {
    outcome flag::set(flag);
}

// Namespace outcome/outcome
// Params 2, eflags: 0x2 linked
// Checksum 0xda95c11a, Offset: 0x2e8
// Size: 0x2a
function get_flag(outcome, flag) {
    return outcome flag::get(flag);
}

// Namespace outcome/outcome
// Params 2, eflags: 0x2 linked
// Checksum 0xac7b3f01, Offset: 0x320
// Size: 0x2a
function clear_flag(outcome, flag) {
    return outcome flag::clear(flag);
}

// Namespace outcome/outcome
// Params 1, eflags: 0x2 linked
// Checksum 0x8df45b48, Offset: 0x358
// Size: 0xc0
function function_2e00fa44(outcome) {
    flags = 0;
    foreach (var_b4a9554f in level.var_9b671c3c) {
        if (outcome flag::get(var_b4a9554f.flag)) {
            flags |= var_b4a9554f.code_flag;
        }
    }
    return flags;
}

// Namespace outcome/outcome
// Params 2, eflags: 0x2 linked
// Checksum 0x33261f99, Offset: 0x420
// Size: 0x22
function function_897438f4(outcome, var_c1e98979) {
    outcome.var_c1e98979 = var_c1e98979;
}

// Namespace outcome/outcome
// Params 1, eflags: 0x2 linked
// Checksum 0x3743cb77, Offset: 0x450
// Size: 0x16
function function_3624d032(outcome) {
    return outcome.var_c1e98979;
}

// Namespace outcome/outcome
// Params 1, eflags: 0x2 linked
// Checksum 0xad260dbe, Offset: 0x470
// Size: 0x5a
function get_winning_team(outcome) {
    if (isdefined(outcome.team)) {
        return outcome.team;
    }
    if (outcome.players.size) {
        return outcome.players[0].team;
    }
    return #"none";
}

// Namespace outcome/outcome
// Params 1, eflags: 0x2 linked
// Checksum 0x93d928d0, Offset: 0x4d8
// Size: 0x2c
function function_b5f4c9d8(outcome) {
    if (outcome.players.size) {
        return outcome.players[0];
    }
    return undefined;
}

// Namespace outcome/outcome
// Params 1, eflags: 0x2 linked
// Checksum 0xc085e7f8, Offset: 0x510
// Size: 0x48
function get_winner(outcome) {
    if (isdefined(outcome.team)) {
        return outcome.team;
    }
    if (outcome.players.size) {
        return outcome.players[0];
    }
    return undefined;
}

// Namespace outcome/outcome
// Params 2, eflags: 0x2 linked
// Checksum 0x19f5371f, Offset: 0x560
// Size: 0x72
function set_winner(outcome, team_or_player) {
    if (!isdefined(team_or_player)) {
        return;
    }
    if (isplayer(team_or_player)) {
        outcome.players[outcome.players.size] = team_or_player;
        outcome.team = team_or_player.team;
        return;
    }
    outcome.team = team_or_player;
}

// Namespace outcome/outcome
// Params 2, eflags: 0x2 linked
// Checksum 0x9700283c, Offset: 0x5e0
// Size: 0x54
function function_af2e264f(outcome, winner) {
    if (isdefined(winner)) {
        set_winner(outcome, winner);
        return;
    }
    set_flag(outcome, "tie");
}

// Namespace outcome/outcome
// Params 0, eflags: 0x2 linked
// Checksum 0x5726f6e8, Offset: 0x640
// Size: 0x52
function function_6d0354e3() {
    if (level.teambased) {
        winner = teams::function_d85770f0("teamScores");
    } else {
        winner = globallogic_score::gethighestscoringplayer();
    }
    return winner;
}

// Namespace outcome/outcome
// Params 1, eflags: 0x2 linked
// Checksum 0x45675ac2, Offset: 0x6a0
// Size: 0x3c
function function_870759fb(outcome) {
    winner = function_6d0354e3();
    function_af2e264f(outcome, winner);
}

