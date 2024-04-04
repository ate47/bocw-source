// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\gametypes\match.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\gamestate_util.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace arena;

// Namespace arena/arena
// Params 0, eflags: 0x5
// Checksum 0xeab2f411, Offset: 0xd0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"arena", &preinit, undefined, undefined, undefined);
}

// Namespace arena/arena
// Params 0, eflags: 0x6 linked
// Checksum 0x321ae3d4, Offset: 0x118
// Size: 0xac
function private preinit() {
    callback::on_connecting(&on_connecting);
    callback::on_connect(&on_connect);
    callback::on_disconnect(&on_disconnect);
    if (gamemodeisarena()) {
        callback::on_game_playing(&on_game_playing);
        level.var_a962eeb6 = &function_51203700;
    }
}

// Namespace arena/arena
// Params 0, eflags: 0x2 linked
// Checksum 0x8dd99f4d, Offset: 0x1d0
// Size: 0x6
function function_51203700() {
    return false;
}

// Namespace arena/arena
// Params 0, eflags: 0x2 linked
// Checksum 0xd26cfca3, Offset: 0x1e0
// Size: 0x104
function on_connecting() {
    if (getdvarint(#"hash_143d0e437ef89350", 0) == 0) {
        return;
    }
    if (!gamemodeisarena() || isdefined(self.pers[#"arenainit"]) && self.pers[#"arenainit"] == 1) {
        return;
    }
    if (level.var_ba92f0a8) {
        return;
    }
    self arenabeginmatch();
    if (function_945560bf() == 0) {
        self.pers[#"hash_1b5251cc167039c8"] = self function_a200171d();
    }
    self.pers[#"arenainit"] = 1;
}

// Namespace arena/arena
// Params 0, eflags: 0x2 linked
// Checksum 0x12c17c30, Offset: 0x2f0
// Size: 0x124
function on_connect() {
    if (getdvarint(#"hash_143d0e437ef89350", 0) == 1) {
        return;
    }
    if (!gamemodeisarena() || isdefined(self.pers[#"arenainit"]) && self.pers[#"arenainit"] == 1) {
        return;
    }
    if (level.var_ba92f0a8) {
        return;
    }
    self arenabeginmatch();
    if (function_945560bf() == 0) {
        self.pers[#"hash_1b5251cc167039c8"] = self function_a200171d();
        uploadstats(self);
    }
    self.pers[#"arenainit"] = 1;
}

// Namespace arena/arena
// Params 0, eflags: 0x2 linked
// Checksum 0x3b198b31, Offset: 0x420
// Size: 0x21c
function on_game_playing() {
    if (gamemodeisarena()) {
        function_e938380b();
        if (gamemodeisarena() && isdefined(self.pers[#"arenainit"]) && self.pers[#"arenainit"] == 1) {
            penalty = function_377f07c2();
            for (index = 0; index < level.players.size; index++) {
                player = level.players[index];
                if (isdefined(player) && isdefined(player.team) && isdefined(level.playercount) && isdefined(level.playercount[player.team])) {
                    if (!gamestate::is_game_over() && level.playercount[player.team] <= function_7a0dc792()) {
                        if (!isdefined(player.pers[#"hash_6dbbb195b62e0dd3"])) {
                            if (isdefined(player.pers[#"arenainit"]) && player.pers[#"arenainit"] == 1) {
                                if (isdefined(player.pers[#"hash_1b5251cc167039c8"])) {
                                    player function_ca53535e(penalty);
                                    player.pers[#"hash_6dbbb195b62e0dd3"] = 1;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

// Namespace arena/arena
// Params 1, eflags: 0x2 linked
// Checksum 0x2da69fb4, Offset: 0x648
// Size: 0x184
function function_b856a952(team) {
    if (gamemodeisarena() && getdvarint(#"hash_6eb6c222bc98b01", 0)) {
        penalty = function_377f07c2();
        for (index = 0; index < level.players.size; index++) {
            player = level.players[index];
            if (isdefined(player.team) && player.team == team && !isdefined(player.pers[#"hash_6dbbb195b62e0dd3"])) {
                if (isdefined(player.pers[#"arenainit"]) && player.pers[#"arenainit"] == 1) {
                    if (isdefined(player.pers[#"hash_1b5251cc167039c8"])) {
                        player function_ca53535e(penalty);
                        player.pers[#"hash_6dbbb195b62e0dd3"] = 1;
                    }
                }
            }
        }
    }
}

// Namespace arena/arena
// Params 0, eflags: 0x2 linked
// Checksum 0xfb62ce44, Offset: 0x7d8
// Size: 0xf4
function on_disconnect() {
    if (gamemodeisarena() && isdefined(self.pers[#"arenainit"]) && self.pers[#"arenainit"] == 1) {
        if (isdefined(self) && isdefined(self.team) && isdefined(level.playercount) && isdefined(level.playercount[self.team])) {
            if (!gamestate::is_game_over() && level.playercount[self.team] <= function_7a0dc792()) {
                function_b856a952(self.team);
            }
        }
    }
}

// Namespace arena/arena
// Params 0, eflags: 0x2 linked
// Checksum 0x15b4b314, Offset: 0x8d8
// Size: 0x154
function function_77151fd1() {
    if (gamemodeisarena() && getdvarint(#"hash_6eb6c222bc98b01", 0)) {
        penalty = function_377f07c2();
        for (index = 0; index < level.players.size; index++) {
            player = level.players[index];
            if (!isdefined(player.pers[#"hash_6dbbb195b62e0dd3"])) {
                if (isdefined(player.pers[#"arenainit"]) && player.pers[#"arenainit"] == 1) {
                    if (isdefined(player.pers[#"hash_1b5251cc167039c8"])) {
                        player function_ca53535e(penalty);
                        player.pers[#"hash_6dbbb195b62e0dd3"] = 1;
                    }
                }
            }
        }
    }
}

// Namespace arena/arena
// Params 0, eflags: 0x2 linked
// Checksum 0x44705e30, Offset: 0xa38
// Size: 0xcc
function cancel_match() {
    if (gamemodeisarena()) {
        for (index = 0; index < level.players.size; index++) {
            player = level.players[index];
            if (isdefined(player.pers[#"arenainit"]) && player.pers[#"arenainit"] == 1) {
                player function_4403ddff();
                uploadstats(player);
            }
        }
    }
}

// Namespace arena/arena
// Params 0, eflags: 0x2 linked
// Checksum 0x33e24852, Offset: 0xb10
// Size: 0x434
function match_end() {
    if (gamemodeisarena()) {
        function_77151fd1();
        for (index = 0; index < level.players.size; index++) {
            player = level.players[index];
            if (isdefined(player.pers[#"arenainit"]) && player.pers[#"arenainit"] == 1) {
                matchresult = undefined;
                var_74386ffc = -1;
                if (match::get_flag("tie")) {
                    matchresult = 1;
                    player arenaendmatch(0, level.var_ba92f0a8);
                } else if (match::function_a2b53e17(player)) {
                    matchresult = 2;
                    player arenaendmatch(1, level.var_ba92f0a8);
                } else {
                    matchresult = 0;
                    player arenaendmatch(-1, level.var_ba92f0a8);
                }
                if (getdvarint(#"hash_5a49cb3f6a18c3a6", 0) && player function_4ded3935()) {
                    var_876fccfb = player stats::get_stat(#"arenabest", #"performancevalue");
                    var_74386ffc = player function_cdaaa372(var_876fccfb);
                    if (var_74386ffc == -1) {
                        var_23491496 = getscriptbundle(#"arena_league_play_skill_divisions_default");
                        if (isdefined(var_876fccfb) && isdefined(var_23491496)) {
                            foreach (tierindex, var_b5ddbfd7 in var_23491496.skilldivisiontierlist) {
                                if (var_876fccfb < var_b5ddbfd7.var_7197b13a) {
                                    var_74386ffc = tierindex;
                                    break;
                                }
                            }
                        }
                    }
                }
                if (isdefined(player.pers[#"hash_1b5251cc167039c8"])) {
                    if (isdefined(matchresult)) {
                        if (var_74386ffc != -1) {
                            player function_cce105c8(#"hash_4e13b2889185a48d", 1, player.pers[#"hash_1b5251cc167039c8"], 2, matchresult, 3, var_74386ffc, 4, level.var_ba92f0a8, 5, getdvarint(#"hash_6e07431d7a79d00f", 0));
                            continue;
                        }
                        player function_cce105c8(#"hash_4e13b2889185a48d", 1, player.pers[#"hash_1b5251cc167039c8"], 2, matchresult, 4, level.var_ba92f0a8, 5, getdvarint(#"hash_6e07431d7a79d00f", 0));
                    }
                }
            }
        }
        function_42e2cd11(level.var_ba92f0a8);
    }
}

// Namespace arena/arena
// Params 0, eflags: 0x0
// Checksum 0xb7aa11de, Offset: 0xf50
// Size: 0x260
function update_arena_challenge_seasons() {
    if (!gamemodeisarena()) {
        return;
    }
    eventstate = "";
    eventtype = function_945560bf();
    switch (eventtype) {
    case 1:
        eventstate = #"rankedplaystats";
        break;
    case 0:
        eventstate = #"leagueplaystats";
        break;
    case 4:
        eventstate = #"hash_4986c748eb81d3c5";
        break;
    default:
        return;
    }
    perseasonwins = self stats::get_stat(#"arenaperseasonstats", eventstate, #"matchesstats", #"wins");
    if (perseasonwins >= getdvarint(#"arena_seasonvetchallengewins", 0)) {
        arenaslot = arenagetslot();
        currentseason = self stats::get_stat(#"arenastats", arenaslot, #"season");
        seasonvetchallengearraycount = self getdstatarraycount("arenaChallengeSeasons");
        for (i = 0; i < seasonvetchallengearraycount; i++) {
            challengeseason = self stats::get_stat(#"arenachallengeseasons", i);
            if (challengeseason == currentseason) {
                return;
            }
            if (challengeseason == 0) {
                self stats::set_stat(#"arenachallengeseasons", i, currentseason);
                break;
            }
        }
    }
}

