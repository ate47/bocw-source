// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\bots\bot.gsc;

#namespace namespace_ffbf548b;

// Namespace namespace_ffbf548b/namespace_ffbf548b
// Params 0, eflags: 0x2 linked
// Checksum 0x921f23b2, Offset: 0xc0
// Size: 0x1a8
function preinit() {
    if (util::is_frontend_map()) {
        return;
    }
    callback::on_start_gametype(&on_start_gametype);
    level.var_f5c1fb9d = [];
    level.var_8a530af5 = [];
    if (!isshipbuild()) {
        botfill = getdvarint(#"botfill", 0);
        if (botfill > 0) {
            level.var_fa9f5bab = botfill;
            return;
        }
    }
    foreach (team, teamstr in level.teams) {
        autofill = getgametypesetting(#"hash_43e6eb8f9fd14f92" + teamstr, 0);
        level.var_8a530af5[team] = autofill;
        count = getdvarint(#"bot_" + teamstr, 0);
        level.var_f5c1fb9d[team] = count;
    }
}

// Namespace namespace_ffbf548b/namespace_ffbf548b
// Params 0, eflags: 0x6 linked
// Checksum 0x7307ece3, Offset: 0x270
// Size: 0x6c
function private on_start_gametype() {
    if (is_true(level.rankedmatch)) {
        return;
    }
    botsoak = getdvarint(#"sv_botsoak", 0);
    level thread function_31a989f7(!botsoak);
}

// Namespace namespace_ffbf548b/namespace_ffbf548b
// Params 0, eflags: 0x6 linked
// Checksum 0x309e7f8b, Offset: 0x2e8
// Size: 0x174
function private function_8958c312() {
    /#
        if (function_7373cc35()) {
            return;
        }
    #/
    if (level.teambased) {
        foreach (team in level.teams) {
            level.var_f5c1fb9d[team] = is_true(level.var_8a530af5[team]) ? getplayers(team).size : function_b16926ea(team).size;
        }
        return;
    }
    level.var_f5c1fb9d[#"allies"] = is_true(level.var_8a530af5[#"allies"]) ? getplayers().size : function_b16926ea().size;
}

// Namespace namespace_ffbf548b/namespace_ffbf548b
// Params 1, eflags: 0x6 linked
// Checksum 0xac18a3d3, Offset: 0x468
// Size: 0x134
function private function_ba1ef25b(maxplayers) {
    if (level.teambased) {
        teamsize = maxplayers / level.teams.size;
        assert(teamsize - int(teamsize) == 0);
        foreach (team in level.teams) {
            level.var_f5c1fb9d[team] = teamsize;
            level.var_8a530af5[team] = 1;
        }
        return;
    }
    level.var_f5c1fb9d[#"allies"] = maxplayers;
    level.var_8a530af5[#"allies"] = 1;
}

// Namespace namespace_ffbf548b/namespace_ffbf548b
// Params 1, eflags: 0x6 linked
// Checksum 0x44c538a9, Offset: 0x5a8
// Size: 0x254
function private function_31a989f7(waitforplayers = 1) {
    level endon(#"game_ended");
    if (waitforplayers) {
        level flag::wait_till("all_players_connected");
    }
    waitframe(1);
    if (!isshipbuild()) {
        if (isdefined(level.var_fa9f5bab) && level.var_fa9f5bab > 0) {
            bot::add_bots(level.var_fa9f5bab);
            return;
        }
    }
    maxplayers = getgametypesetting(#"maxplayers");
    if (is_true(getgametypesetting(#"hash_c6a2e6c3e86125a"))) {
        level function_ba1ef25b(maxplayers);
    } else {
        level function_8958c312();
    }
    if (level.teambased) {
        foreach (count in level.var_f5c1fb9d) {
            if (count > 0) {
                level thread function_bbeb8bbe(maxplayers);
                break;
            }
        }
        return;
    }
    var_8a291590 = isdefined(level.var_f5c1fb9d[#"allies"]) ? level.var_f5c1fb9d[#"allies"] : 0;
    if (var_8a291590 > 0) {
        level thread function_9bead880(var_8a291590, maxplayers);
    }
}

// Namespace namespace_ffbf548b/namespace_ffbf548b
// Params 1, eflags: 0x6 linked
// Checksum 0x77e47b27, Offset: 0x808
// Size: 0x8e
function private function_bbeb8bbe(maxplayers) {
    level endon(#"game_ended");
    while (true) {
        playercount = getplayers().size;
        if (playercount > maxplayers) {
            level function_e88d0cf4();
        } else if (playercount < maxplayers) {
            level function_38a06234();
        }
        waitframe(1);
    }
}

// Namespace namespace_ffbf548b/namespace_ffbf548b
// Params 2, eflags: 0x6 linked
// Checksum 0x9c6b965a, Offset: 0x8a0
// Size: 0xf6
function private function_9bead880(var_8a291590, maxplayers) {
    level endon(#"game_ended");
    while (true) {
        players = getplayers();
        bots = function_b16926ea();
        if (players.size > maxplayers) {
            level function_f992463c(bots);
        } else if (players.size < maxplayers && players.size < level.teams.size && bots.size < var_8a291590) {
            level bot::add_bot();
        }
        waitframe(1);
    }
}

// Namespace namespace_ffbf548b/namespace_ffbf548b
// Params 0, eflags: 0x6 linked
// Checksum 0x529329b9, Offset: 0x9a0
// Size: 0x18e
function private function_38a06234() {
    var_4ec52f78 = undefined;
    var_dd1b756e = undefined;
    foreach (team, count in level.var_f5c1fb9d) {
        if (!isdefined(count) || count <= 0) {
            continue;
        }
        players = getplayers(team);
        if (isdefined(var_dd1b756e) && players.size >= var_dd1b756e) {
            continue;
        }
        if (is_true(level.var_8a530af5[team]) && players.size >= count) {
            continue;
        }
        bots = function_b16926ea(team);
        if (bots.size >= count) {
            continue;
        }
        var_4ec52f78 = team;
        var_dd1b756e = players.size;
    }
    if (!isdefined(var_4ec52f78)) {
        return;
    }
    bot = bot::add_bot(var_4ec52f78);
}

// Namespace namespace_ffbf548b/namespace_ffbf548b
// Params 0, eflags: 0x6 linked
// Checksum 0x8be2f563, Offset: 0xb38
// Size: 0x1e4
function private function_e88d0cf4() {
    var_c1e10c7d = undefined;
    var_a6dba815 = undefined;
    var_e019b1bb = undefined;
    largestcount = undefined;
    foreach (team, count in level.var_f5c1fb9d) {
        bots = function_b16926ea(team);
        if (bots.size <= 0) {
            continue;
        }
        players = getplayers(team);
        if (!isdefined(largestcount) || players.size > largestcount) {
            var_e019b1bb = team;
            largestcount = players.size;
        }
        var_83858f99 = players.size - (isdefined(count) ? count : 0);
        if (var_83858f99 > 0) {
            if (!isdefined(var_c1e10c7d) || var_83858f99 > var_a6dba815) {
                var_c1e10c7d = team;
                var_a6dba815 = var_83858f99;
            }
        }
    }
    var_a22b08a1 = undefined;
    if (isdefined(var_c1e10c7d)) {
        var_a22b08a1 = var_c1e10c7d;
    } else if (isdefined(var_e019b1bb)) {
        var_a22b08a1 = var_e019b1bb;
    }
    if (!isdefined(var_a22b08a1)) {
        return;
    }
    bots = function_b16926ea(var_a22b08a1);
    level function_f992463c(bots);
}

// Namespace namespace_ffbf548b/namespace_ffbf548b
// Params 1, eflags: 0x6 linked
// Checksum 0x80d99340, Offset: 0xd28
// Size: 0xfc
function private function_f992463c(bots) {
    var_6ddda2cf = undefined;
    var_be6d09d1 = undefined;
    foreach (bot in bots) {
        if (isautocontrolledplayer(bot)) {
            continue;
        }
        if (!isdefined(var_6ddda2cf) || bot.score < var_be6d09d1) {
            var_6ddda2cf = bot;
            var_be6d09d1 = bot.score;
        }
    }
    if (isdefined(var_6ddda2cf)) {
        bot::remove_bot(var_6ddda2cf);
    }
}

