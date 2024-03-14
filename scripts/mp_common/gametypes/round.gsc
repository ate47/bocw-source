// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\gametypes\overtime.gsc;
#using scripts\mp_common\gametypes\outcome.gsc;

#namespace round;

// Namespace round/round
// Params 0, eflags: 0x2 linked
// Checksum 0x72153536, Offset: 0x90
// Size: 0x5e
function function_37f04b09() {
    outcome = outcome::function_a1a81955();
    game.outcome.var_3c5fdf73[game.outcome.var_3c5fdf73.size] = outcome;
    game.outcome.var_aefc8b8d = outcome;
}

// Namespace round/round
// Params 0, eflags: 0x2 linked
// Checksum 0xd164def8, Offset: 0xf8
// Size: 0x16
function function_f37f02fc() {
    return game.outcome.var_aefc8b8d;
}

// Namespace round/round
// Params 0, eflags: 0x2 linked
// Checksum 0x7a978351, Offset: 0x118
// Size: 0x1ec
function round_stats_init() {
    if (!isdefined(game.roundsplayed)) {
        game.roundsplayed = 0;
    }
    setroundsplayed(game.roundsplayed + overtime::get_rounds_played());
    overtime::round_stats_init();
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
        level.spawn_point_team_class_names[team] = [];
    }
}

// Namespace round/round
// Params 1, eflags: 0x2 linked
// Checksum 0xb4c294ea, Offset: 0x310
// Size: 0x34
function set_flag(flag) {
    outcome::set_flag(game.outcome.var_aefc8b8d, flag);
}

// Namespace round/round
// Params 1, eflags: 0x2 linked
// Checksum 0x1c3c614c, Offset: 0x350
// Size: 0x32
function get_flag(flag) {
    return outcome::get_flag(game.outcome.var_aefc8b8d, flag);
}

// Namespace round/round
// Params 1, eflags: 0x0
// Checksum 0xd1e3781c, Offset: 0x390
// Size: 0x32
function clear_flag(flag) {
    return outcome::clear_flag(game.outcome.var_aefc8b8d, flag);
}

// Namespace round/round
// Params 1, eflags: 0x2 linked
// Checksum 0xac134927, Offset: 0x3d0
// Size: 0x34
function function_897438f4(var_c1e98979) {
    outcome::function_897438f4(game.outcome.var_aefc8b8d, var_c1e98979);
}

// Namespace round/round
// Params 0, eflags: 0x2 linked
// Checksum 0xb70da2be, Offset: 0x410
// Size: 0x22
function function_3624d032() {
    return outcome::function_3624d032(game.outcome.var_aefc8b8d);
}

// Namespace round/round
// Params 0, eflags: 0x2 linked
// Checksum 0xbd31f8df, Offset: 0x440
// Size: 0x22
function get_winning_team() {
    return outcome::get_winning_team(game.outcome.var_aefc8b8d);
}

// Namespace round/round
// Params 0, eflags: 0x0
// Checksum 0x3c71adf9, Offset: 0x470
// Size: 0x22
function function_b5f4c9d8() {
    return outcome::function_b5f4c9d8(game.outcome.var_aefc8b8d);
}

// Namespace round/round
// Params 0, eflags: 0x2 linked
// Checksum 0xad96d853, Offset: 0x4a0
// Size: 0x22
function get_winner() {
    return outcome::get_winner(game.outcome.var_aefc8b8d);
}

// Namespace round/round
// Params 1, eflags: 0x0
// Checksum 0xe248173a, Offset: 0x4d0
// Size: 0x32
function is_winner(team_or_player) {
    return outcome::is_winner(game.outcome.var_aefc8b8d, team_or_player);
}

// Namespace round/round
// Params 1, eflags: 0x2 linked
// Checksum 0xda6fc3eb, Offset: 0x510
// Size: 0x34
function set_winner(team_or_player) {
    outcome::set_winner(game.outcome.var_aefc8b8d, team_or_player);
}

// Namespace round/round
// Params 1, eflags: 0x2 linked
// Checksum 0x81f96b28, Offset: 0x550
// Size: 0x34
function function_af2e264f(winner) {
    outcome::function_af2e264f(game.outcome.var_aefc8b8d, winner);
}

// Namespace round/round
// Params 0, eflags: 0x2 linked
// Checksum 0x6dce0579, Offset: 0x590
// Size: 0x24
function function_870759fb() {
    outcome::function_870759fb(game.outcome.var_aefc8b8d);
}

// Namespace round/round
// Params 0, eflags: 0x0
// Checksum 0xba9a8c4f, Offset: 0x5c0
// Size: 0x1c
function is_overtime_round() {
    if (game.overtime_round > 0) {
        return true;
    }
    return false;
}

