// Atian COD Tools GSC CW decompiler test
#namespace overtime;

// Namespace overtime/overtime
// Params 0, eflags: 0x1
// Checksum 0x4544ee2e, Offset: 0x90
// Size: 0x3c
function autoexec main() {
    if (!isdefined(game.overtime_round)) {
        game.overtime_round = 0;
    }
    if (!isdefined(level.nextroundisovertime)) {
        level.nextroundisovertime = 0;
    }
}

// Namespace overtime/overtime
// Params 0, eflags: 0x2 linked
// Checksum 0x99f5f9ce, Offset: 0xd8
// Size: 0x1c
function is_overtime_round() {
    if (game.overtime_round > 0) {
        return 1;
    }
    return 0;
}

// Namespace overtime/overtime
// Params 0, eflags: 0x2 linked
// Checksum 0x6f007a77, Offset: 0x100
// Size: 0x19a
function round_stats_init() {
    if (is_overtime_round()) {
        setmatchflag("overtime", 1);
    } else {
        setmatchflag("overtime", 0);
    }
    if (!isdefined(game.stat[#"overtimeroundswon"])) {
        game.stat[#"overtimeroundswon"] = [];
    }
    if (!isdefined(game.stat[#"overtimeroundswon"][#"tie"])) {
        game.stat[#"overtimeroundswon"][#"tie"] = 0;
    }
    foreach (team, _ in level.teams) {
        if (!isdefined(game.stat[#"overtimeroundswon"][team])) {
            game.stat[#"overtimeroundswon"][team] = 0;
        }
    }
}

// Namespace overtime/overtime
// Params 0, eflags: 0x2 linked
// Checksum 0x9d21f1c, Offset: 0x2a8
// Size: 0x30
function get_rounds_played() {
    if (game.overtime_round == 0) {
        return game.overtime_round;
    }
    return game.overtime_round - 1;
}

// Namespace overtime/overtime
// Params 0, eflags: 0x2 linked
// Checksum 0xfc6cf6d9, Offset: 0x2e0
// Size: 0x44
function function_f435f4dd() {
    if (isdefined(level.shouldplayovertimeround)) {
        if ([[ level.shouldplayovertimeround ]]()) {
            level.nextroundisovertime = 1;
            return;
        }
    }
    level.nextroundisovertime = 0;
}
