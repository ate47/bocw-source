// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\util.gsc;
#using scripts\zm_common\bb.gsc;
#using scripts\zm_common\gametypes\globallogic_utils.gsc;
#using scripts\zm_common\gametypes\globallogic_audio.gsc;
#using scripts\zm_common\gametypes\globallogic.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\rank_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\challenges_shared.gsc;
#using scripts\core_common\bb_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace globallogic_score;

// Namespace globallogic_score/globallogic_score
// Params 0, eflags: 0x2 linked
// Checksum 0x40eac549, Offset: 0x268
// Size: 0x106
function gethighestscoringplayer() {
    players = level.players;
    winner = undefined;
    tie = 0;
    for (i = 0; i < players.size; i++) {
        if (!isdefined(players[i].score)) {
            continue;
        }
        if (players[i].score < 1) {
            continue;
        }
        if (!isdefined(winner) || players[i].score > winner.score) {
            winner = players[i];
            tie = 0;
            continue;
        }
        if (players[i].score == winner.score) {
            tie = 1;
        }
    }
    if (tie || !isdefined(winner)) {
        return undefined;
    }
    return winner;
}

// Namespace globallogic_score/globallogic_score
// Params 0, eflags: 0x2 linked
// Checksum 0x5ac37e5c, Offset: 0x378
// Size: 0x2e
function resetscorechain() {
    self notify(#"reset_score_chain");
    self.scorechain = 0;
    self.rankupdatetotal = 0;
}

// Namespace globallogic_score/globallogic_score
// Params 0, eflags: 0x2 linked
// Checksum 0x3f567851, Offset: 0x3b0
// Size: 0x74
function scorechaintimer() {
    self notify(#"score_chain_timer");
    self endon(#"reset_score_chain", #"score_chain_timer", #"death", #"disconnect");
    wait(20);
    self thread resetscorechain();
}

// Namespace globallogic_score/globallogic_score
// Params 1, eflags: 0x2 linked
// Checksum 0x5b2a7ed9, Offset: 0x430
// Size: 0x4e
function roundtonearestfive(score) {
    rounding = score % 5;
    if (rounding <= 2) {
        return (score - rounding);
    }
    return score + 5 - rounding;
}

// Namespace globallogic_score/globallogic_score
// Params 4, eflags: 0x0
// Checksum 0x32fb1cd9, Offset: 0x488
// Size: 0x1ec
function giveplayermomentumnotification(score, label, *descvalue, countstowardrampage) {
    rampagebonus = 0;
    if (isdefined(level.usingrampage) && level.usingrampage) {
        if (countstowardrampage) {
            if (!isdefined(self.scorechain)) {
                self.scorechain = 0;
            }
            self.scorechain++;
            self thread scorechaintimer();
        }
        if (isdefined(self.scorechain) && self.scorechain >= 999) {
            rampagebonus = roundtonearestfive(int(label * level.rampagebonusscale + 0.5));
        }
    }
    combat_efficiency_factor = 0;
    if (label != 0) {
        self luinotifyevent(#"score_event", 4, descvalue, label, rampagebonus, combat_efficiency_factor);
    }
    label += rampagebonus;
    if (label > 0 && self hasperk(#"specialty_earnmoremomentum")) {
        label = roundtonearestfive(int(label * getdvarfloat(#"perk_killstreakmomentummultiplier", 0) + 0.5));
    }
    _setplayermomentum(self, self.pers[#"momentum"] + label);
}

// Namespace globallogic_score/globallogic_score
// Params 0, eflags: 0x0
// Checksum 0x4b57b36d, Offset: 0x680
// Size: 0x54
function resetplayermomentumondeath() {
    if (isdefined(level.usingscorestreaks) && level.usingscorestreaks) {
        _setplayermomentum(self, 0);
        self thread resetscorechain();
    }
}

// Namespace globallogic_score/globallogic_score
// Params 5, eflags: 0x2 linked
// Checksum 0xa9d11512, Offset: 0x6e0
// Size: 0x55a
function function_144d0392(event, player, victim, *descvalue, var_dbaa74e2) {
    score = victim rank::getscoreinfovalue(player);
    assert(isdefined(score));
    xp = victim rank::getscoreinfoxp(player);
    assert(isdefined(xp));
    label = rank::getscoreinfolabel(player);
    var_b393387d = victim.pers[#"score"];
    profileNamedStart(#"");
    [[ level.onplayerscore ]](player, victim, descvalue);
    newscore = victim.pers[#"score"];
    profileNamedStop();
    var_89b2d9e4 = newscore - var_b393387d;
    var_10d67c1a = {#type:ishash(player) ? player : hash(player), #player:victim.name, #delta:var_89b2d9e4};
    victim stats::function_dad108fa(#"hash_6a861f1323ce4ae9", var_89b2d9e4);
    if (!isdefined(victim.var_42dd3eba)) {
        victim.var_42dd3eba = 0;
    }
    if (!isdefined(victim.var_93369bb6)) {
        victim.var_93369bb6 = 0;
    }
    if (!isdefined(victim.var_2e139723)) {
        victim.var_2e139723 = 0;
    }
    victim.var_42dd3eba += var_89b2d9e4;
    victim zm_stats::function_fbce465a(#"hash_76bf5af08a08d8fe", var_89b2d9e4);
    victim zm_stats::function_fbce465a(#"hash_3d915bbfdb0453ba", var_89b2d9e4);
    victim zm_stats::function_17ee4529(#"hash_5a974e436e73bc2", var_89b2d9e4, #"hash_6abe83944d701459");
    victim.var_93369bb6 += var_89b2d9e4;
    if (victim.var_93369bb6 > 25000) {
        victim.var_93369bb6 = 0;
        victim zm_stats::function_fbce465a(#"hash_24abad59aafa4b84");
    }
    victim.var_2e139723 += var_89b2d9e4;
    if (victim.var_2e139723 > 35000) {
        victim.var_2e139723 = 0;
        victim zm_stats::function_fbce465a(#"hash_3a26c1202d86e50e");
    }
    if (var_89b2d9e4 && !level.gameended && isdefined(label)) {
        if (isdefined(descvalue.var_14e19734)) {
            actor_name = descvalue.var_14e19734;
        } else if (isactor(descvalue)) {
            actor_name = descvalue function_7f0363e8(1);
        } else if (ishash(descvalue.var_c7e611ea)) {
            actor_name = descvalue.var_c7e611ea;
        } else if (ishash(descvalue.actor_name)) {
            actor_name = descvalue.actor_name;
        }
        var_3fb48d9c = isdefined(var_dbaa74e2) && is_true(var_dbaa74e2.var_3fb48d9c);
        if (ishash(actor_name)) {
            victim luinotifyevent(#"score_event", 5, label, var_89b2d9e4, actor_name, -1, var_3fb48d9c);
        } else {
            victim luinotifyevent(#"score_event", 5, label, var_89b2d9e4, #"", -1, var_3fb48d9c);
        }
    }
    self function_3172cf59(victim, newscore, level.weaponnone, var_10d67c1a);
    victim.objscore = victim.score_total;
    return var_89b2d9e4;
}

// Namespace globallogic_score/globallogic_score
// Params 7, eflags: 0x2 linked
// Checksum 0x3b8caa77, Offset: 0xc48
// Size: 0x82
function giveplayerscore(event, player, victim, descvalue, weapon, *var_36f23f1f, var_dbaa74e2) {
    if (killstreaks::is_killstreak_weapon(var_36f23f1f) && isdefined(var_dbaa74e2)) {
        var_dbaa74e2.var_3fb48d9c = 0;
    }
    return function_144d0392(player, victim, descvalue, weapon, var_dbaa74e2);
}

// Namespace globallogic_score/globallogic_score
// Params 3, eflags: 0x2 linked
// Checksum 0xba21f522, Offset: 0xcd8
// Size: 0x17c
function default_onplayerscore(event, player, *victim) {
    score = rank::getscoreinfovalue(player);
    if (!isdefined(level.var_96ab8769)) {
        level.var_96ab8769 = isdefined(getgametypesetting(#"hash_f3d3533f21841ae")) ? getgametypesetting(#"hash_f3d3533f21841ae") : 1;
        if (level.var_96ab8769 <= 0) {
            level.var_96ab8769 = 1;
        }
    }
    score *= level.var_96ab8769;
    var_a08ade2e = zombie_utility::get_zombie_var_team(#"zombie_point_scalar", victim.team);
    score = int(score * var_a08ade2e);
    assert(isdefined(score));
    _setplayerscore(victim, victim.pers[#"score"] + score);
}

// Namespace globallogic_score/globallogic_score
// Params 4, eflags: 0x2 linked
// Checksum 0x186ee19b, Offset: 0xe60
// Size: 0x1f8
function function_3172cf59(player, newscore, *weapon, var_10d67c1a) {
    newscore endon(#"disconnect");
    profileNamedStart(#"");
    event = var_10d67c1a.type;
    scorediff = var_10d67c1a.delta;
    newscore bb::add_to_stat("score", var_10d67c1a.delta);
    if (!isbot(newscore)) {
        if (!isdefined(newscore.pers[#"scoreeventcache"])) {
            newscore.pers[#"scoreeventcache"] = [];
        }
        if (!isdefined(newscore.pers[#"scoreeventcache"][event])) {
            newscore.pers[#"scoreeventcache"][event] = 1;
        } else {
            newscore.pers[#"scoreeventcache"][event] = newscore.pers[#"scoreeventcache"][event] + 1;
        }
    }
    if (scorediff <= 0) {
        profileNamedStop();
        return;
    }
    recordplayerstats(newscore, "score", weapon);
    newscore stats::function_bb7eedf0(#"score", scorediff);
    newscore stats::function_bb7eedf0(#"score_core", scorediff);
    newscore.score_total += scorediff;
    profileNamedStop();
}

// Namespace globallogic_score/globallogic_score
// Params 2, eflags: 0x2 linked
// Checksum 0xe9951f47, Offset: 0x1060
// Size: 0xdc
function _setplayerscore(player, score) {
    if (score == player.pers[#"score"]) {
        return;
    }
    player.pers[#"score"] = score;
    player.score = player.pers[#"score"];
    recordplayerstats(player, "score", player.pers[#"score"]);
    player notify(#"hash_e456bbcb1359350");
    player thread globallogic::checkscorelimit();
    player thread globallogic::checkplayerscorelimitsoon();
}

// Namespace globallogic_score/globallogic_score
// Params 1, eflags: 0x2 linked
// Checksum 0x3fcfe6ac, Offset: 0x1148
// Size: 0x24
function _getplayerscore(player) {
    return player.pers[#"score"];
}

// Namespace globallogic_score/globallogic_score
// Params 2, eflags: 0x2 linked
// Checksum 0xf7b37b8c, Offset: 0x1178
// Size: 0xee
function _setplayermomentum(player, momentum) {
    momentum = math::clamp(momentum, 0, getdvarint(#"hash_6cc2b9f9d4cbe073", 2000));
    oldmomentum = player.pers[#"momentum"];
    if (momentum == oldmomentum) {
        return;
    }
    player bb::add_to_stat("momentum", momentum - oldmomentum);
    if (momentum < oldmomentum) {
    }
    player.pers[#"momentum"] = momentum;
    player.momentum = player.pers[#"momentum"];
}

/#

    // Namespace globallogic_score/globallogic_score
    // Params 0, eflags: 0x0
    // Checksum 0xaf7ac8ce, Offset: 0x1270
    // Size: 0x118
    function setplayermomentumdebug() {
        setdvar(#"sv_momentumpercent", 0);
        while (true) {
            wait(1);
            var_2227c36c = getdvarfloat(#"sv_momentumpercent", 0);
            if (var_2227c36c != 0) {
                player = util::gethostplayer();
                if (!isdefined(player)) {
                    return;
                }
                if (isdefined(player.killstreak)) {
                    _setplayermomentum(player, int(getdvarint(#"hash_6cc2b9f9d4cbe073", 2000) * var_2227c36c / 100));
                }
            }
        }
    }

#/

// Namespace globallogic_score/globallogic_score
// Params 4, eflags: 0x2 linked
// Checksum 0x96591681, Offset: 0x1390
// Size: 0x174
function giveteamscore(event, team, *player, *victim) {
    if (level.overrideteamscore) {
        return;
    }
    profileNamedStart(#"");
    teamscore = game.stat[#"teamscores"][victim];
    [[ level.onteamscore ]](player, victim);
    profileNamedStop();
    newscore = game.stat[#"teamscores"][victim];
    zmteamscores = {#gametime:function_f8d53445(), #event:player, #team:victim, #diff:newscore - teamscore, #score:newscore};
    function_92d1707f(#"hash_6823717ff11a304a", zmteamscores);
    if (teamscore == newscore) {
        return;
    }
    updateteamscores(victim);
    thread globallogic::checkscorelimit();
}

// Namespace globallogic_score/globallogic_score
// Params 2, eflags: 0x0
// Checksum 0xbdb5d7a4, Offset: 0x1510
// Size: 0xac
function giveteamscoreforobjective(team, score) {
    teamscore = game.stat[#"teamscores"][team];
    onteamscore(score, team);
    newscore = game.stat[#"teamscores"][team];
    if (teamscore == newscore) {
        return;
    }
    updateteamscores(team);
    thread globallogic::checkscorelimit();
}

// Namespace globallogic_score/globallogic_score
// Params 2, eflags: 0x2 linked
// Checksum 0x7e818df3, Offset: 0x15c8
// Size: 0x7c
function _setteamscore(team, teamscore) {
    if (teamscore == game.stat[#"teamscores"][team]) {
        return;
    }
    game.stat[#"teamscores"][team] = teamscore;
    updateteamscores(team);
    thread globallogic::checkscorelimit();
}

// Namespace globallogic_score/globallogic_score
// Params 0, eflags: 0x2 linked
// Checksum 0x6e6bd7fc, Offset: 0x1650
// Size: 0xcc
function resetteamscores() {
    if (level.scoreroundwinbased || util::isfirstround()) {
        foreach (team, _ in level.teams) {
            game.stat[#"teamscores"][team] = 0;
        }
    }
    updateallteamscores();
}

// Namespace globallogic_score/globallogic_score
// Params 0, eflags: 0x0
// Checksum 0x4837176a, Offset: 0x1728
// Size: 0x24
function resetallscores() {
    resetteamscores();
    resetplayerscores();
}

// Namespace globallogic_score/globallogic_score
// Params 0, eflags: 0x2 linked
// Checksum 0xb8a4efd7, Offset: 0x1758
// Size: 0x94
function resetplayerscores() {
    players = level.players;
    winner = undefined;
    tie = 0;
    for (i = 0; i < players.size; i++) {
        if (isdefined(players[i].pers[#"score"])) {
            _setplayerscore(players[i], 0);
        }
    }
}

// Namespace globallogic_score/globallogic_score
// Params 1, eflags: 0x2 linked
// Checksum 0x89af1792, Offset: 0x17f8
// Size: 0x54
function updateteamscores(team) {
    setteamscore(team, game.stat[#"teamscores"][team]);
    level thread globallogic::checkteamscorelimitsoon(team);
}

// Namespace globallogic_score/globallogic_score
// Params 0, eflags: 0x2 linked
// Checksum 0x7257c9f6, Offset: 0x1858
// Size: 0x88
function updateallteamscores() {
    foreach (team, _ in level.teams) {
        updateteamscores(team);
    }
}

// Namespace globallogic_score/globallogic_score
// Params 1, eflags: 0x2 linked
// Checksum 0x61460a6a, Offset: 0x18e8
// Size: 0x26
function _getteamscore(team) {
    return game.stat[#"teamscores"][team];
}

// Namespace globallogic_score/globallogic_score
// Params 0, eflags: 0x2 linked
// Checksum 0x45a9de9b, Offset: 0x1918
// Size: 0xec
function gethighestteamscoreteam() {
    score = 0;
    winning_teams = [];
    foreach (team, _ in level.teams) {
        team_score = game.stat[#"teamscores"][team];
        if (team_score > score) {
            score = team_score;
            winning_teams = [];
        }
        if (team_score == score) {
            winning_teams[team] = team;
        }
    }
    return winning_teams;
}

// Namespace globallogic_score/globallogic_score
// Params 2, eflags: 0x2 linked
// Checksum 0xe0c78b93, Offset: 0x1a10
// Size: 0xaa
function areteamarraysequal(teamsa, teamsb) {
    if (teamsa.size != teamsb.size) {
        return false;
    }
    foreach (team in teamsa) {
        if (!isdefined(teamsb[team])) {
            return false;
        }
    }
    return true;
}

// Namespace globallogic_score/globallogic_score
// Params 2, eflags: 0x2 linked
// Checksum 0x5a5d8aa5, Offset: 0x1ac8
// Size: 0x2a8
function onteamscore(score, team) {
    game.stat[#"teamscores"][team] = game.stat[#"teamscores"][team] + score;
    if (level.scorelimit && game.stat[#"teamscores"][team] > level.scorelimit) {
        game.stat[#"teamscores"][team] = level.scorelimit;
    }
    if (level.splitscreen) {
        return;
    }
    if (level.scorelimit == 1) {
        return;
    }
    iswinning = gethighestteamscoreteam();
    if (iswinning.size == 0) {
        return;
    }
    if (gettime() - level.laststatustime < 5000) {
        return;
    }
    if (areteamarraysequal(iswinning, level.waswinning)) {
        return;
    }
    level.laststatustime = gettime();
    if (iswinning.size == 1) {
        foreach (team in iswinning) {
            if (isdefined(level.waswinning[team])) {
                if (level.waswinning.size == 1) {
                }
            }
        }
    }
    if (level.waswinning.size == 1) {
        foreach (team in level.waswinning) {
            if (isdefined(iswinning[team])) {
                if (iswinning.size == 1) {
                    continue;
                }
                if (level.waswinning.size > 1) {
                }
            }
        }
    }
    level.waswinning = iswinning;
}

// Namespace globallogic_score/globallogic_score
// Params 3, eflags: 0x2 linked
// Checksum 0xe163f829, Offset: 0x1d78
// Size: 0xe8
function initpersstat(dataname, record_stats, init_to_stat_value) {
    if (!isdefined(self.pers[dataname])) {
        self.pers[dataname] = 0;
    }
    if (!isdefined(record_stats) || record_stats == 1) {
        recordplayerstats(self, dataname, int(self.pers[dataname]));
    }
    if (isdefined(init_to_stat_value) && init_to_stat_value == 1) {
        self.pers[dataname] = self stats::get_stat(#"playerstatslist", dataname, #"statvalue");
    }
}

// Namespace globallogic_score/globallogic_score
// Params 1, eflags: 0x2 linked
// Checksum 0xbafe1a7e, Offset: 0x1e68
// Size: 0x18
function getpersstat(dataname) {
    return self.pers[dataname];
}

// Namespace globallogic_score/globallogic_score
// Params 4, eflags: 0x2 linked
// Checksum 0xdd4106bb, Offset: 0x1e88
// Size: 0xe6
function incpersstat(dataname, increment, record_stats, *includegametype) {
    profileNamedStart(#"");
    assert(isdefined(self.pers[increment]), function_9e72a96(increment) + "<unknown string>");
    self.pers[increment] = self.pers[increment] + record_stats;
    self stats::function_dad108fa(increment, record_stats);
    if (!isdefined(includegametype) || includegametype == 1) {
        self thread threadedrecordplayerstats(increment);
    }
    profileNamedStop();
}

// Namespace globallogic_score/globallogic_score
// Params 1, eflags: 0x2 linked
// Checksum 0x51fea7d9, Offset: 0x1f78
// Size: 0x4c
function threadedrecordplayerstats(dataname) {
    self endon(#"disconnect");
    waittillframeend();
    if (isdefined(self)) {
        recordplayerstats(self, dataname, self.pers[dataname]);
    }
}

// Namespace globallogic_score/globallogic_score
// Params 1, eflags: 0x0
// Checksum 0xb46b74cc, Offset: 0x1fd0
// Size: 0x86
function inckillstreaktracker(weapon) {
    self endon(#"disconnect");
    waittillframeend();
    if (weapon.name == #"artillery") {
        self.pers[#"artillery_kills"]++;
    }
    if (weapon.name == #"dog_bite") {
        self.pers[#"dog_kills"]++;
    }
}

// Namespace globallogic_score/globallogic_score
// Params 5, eflags: 0x0
// Checksum 0xfdc65bd, Offset: 0x2060
// Size: 0x326
function trackattackerkill(name, rank, xp, prestige, xuid) {
    self endon(#"disconnect");
    attacker = self;
    waittillframeend();
    profileNamedStart(#"");
    if (!isdefined(attacker.pers[#"killed_players"][name])) {
        attacker.pers[#"killed_players"][name] = 0;
    }
    if (!isdefined(attacker.killedplayerscurrent[name])) {
        attacker.killedplayerscurrent[name] = 0;
    }
    if (!isdefined(attacker.pers[#"nemesis_tracking"][name])) {
        attacker.pers[#"nemesis_tracking"][name] = 0;
    }
    attacker.pers[#"killed_players"][name]++;
    attacker.killedplayerscurrent[name]++;
    attacker.pers[#"nemesis_tracking"][name] = attacker.pers[#"nemesis_tracking"][name] + 1;
    if (attacker.pers[#"nemesis_name"] == name) {
        attacker challenges::killednemesis();
    }
    if (attacker.pers[#"nemesis_name"] == "" || attacker.pers[#"nemesis_tracking"][name] > attacker.pers[#"nemesis_tracking"][attacker.pers[#"nemesis_name"]]) {
        attacker.pers[#"nemesis_name"] = name;
        attacker.pers[#"nemesis_rank"] = rank;
        attacker.pers[#"nemesis_rankicon"] = prestige;
        attacker.pers[#"nemesis_xp"] = xp;
        attacker.pers[#"nemesis_xuid"] = xuid;
    } else if (isdefined(attacker.pers[#"nemesis_name"]) && attacker.pers[#"nemesis_name"] == name) {
        attacker.pers[#"nemesis_rank"] = rank;
        attacker.pers[#"nemesis_xp"] = xp;
    }
    profileNamedStop();
}

// Namespace globallogic_score/globallogic_score
// Params 5, eflags: 0x0
// Checksum 0x8cd1efe3, Offset: 0x2390
// Size: 0x346
function trackattackeedeath(attackername, rank, xp, prestige, xuid) {
    self endon(#"disconnect");
    waittillframeend();
    profileNamedStart(#"");
    if (!isdefined(self.pers[#"killed_by"][attackername])) {
        self.pers[#"killed_by"][attackername] = 0;
    }
    self.pers[#"killed_by"][attackername]++;
    if (!isdefined(self.pers[#"nemesis_tracking"][attackername])) {
        self.pers[#"nemesis_tracking"][attackername] = 0;
    }
    self.pers[#"nemesis_tracking"][attackername] = self.pers[#"nemesis_tracking"][attackername] + 1.5;
    if (self.pers[#"nemesis_name"] == "" || self.pers[#"nemesis_tracking"][attackername] > self.pers[#"nemesis_tracking"][self.pers[#"nemesis_name"]]) {
        self.pers[#"nemesis_name"] = attackername;
        self.pers[#"nemesis_rank"] = rank;
        self.pers[#"nemesis_rankicon"] = prestige;
        self.pers[#"nemesis_xp"] = xp;
        self.pers[#"nemesis_xuid"] = xuid;
    } else if (isdefined(self.pers[#"nemesis_name"]) && self.pers[#"nemesis_name"] == attackername) {
        self.pers[#"nemesis_rank"] = rank;
        self.pers[#"nemesis_xp"] = xp;
    }
    if (self.pers[#"nemesis_name"] == attackername && self.pers[#"nemesis_tracking"][attackername] >= 2) {
        self setclientuivisibilityflag("killcam_nemesis", 1);
    } else {
        self setclientuivisibilityflag("killcam_nemesis", 0);
    }
    profileNamedStop();
}

// Namespace globallogic_score/globallogic_score
// Params 0, eflags: 0x2 linked
// Checksum 0xffb0534, Offset: 0x26e0
// Size: 0x6
function default_iskillboosting() {
    return false;
}

// Namespace globallogic_score/globallogic_score
// Params 3, eflags: 0x0
// Checksum 0x56c778b8, Offset: 0x26f0
// Size: 0x190
function givekillstats(smeansofdeath, *weapon, *evictim) {
    self endon(#"disconnect");
    waittillframeend();
    if (level.rankedmatch && self [[ level.iskillboosting ]]()) {
        /#
            self iprintlnbold("<unknown string>");
        #/
        return;
    }
    profileNamedStart(#"");
    self incpersstat(#"kills", 1, 1, 1);
    self.kills = self getpersstat(#"kills");
    self.kills_critical = self getpersstat(#"kills_critical");
    self updatestatratio("kdratio", "kills", "deaths");
    attacker = self;
    if (evictim == "MOD_HEAD_SHOT") {
        attacker thread incpersstat(#"headshots", 1, 1, 0);
        attacker.headshots = attacker.pers[#"headshots"];
    }
    profileNamedStop();
}

// Namespace globallogic_score/globallogic_score
// Params 1, eflags: 0x0
// Checksum 0x11cabdf2, Offset: 0x2888
// Size: 0x4c
function inctotalkills(team) {
    if (level.teambased && isdefined(level.teams[team])) {
        game.totalkillsteam[team]++;
    }
    game.totalkills++;
}

// Namespace globallogic_score/globallogic_score
// Params 3, eflags: 0x0
// Checksum 0x65a11e3c, Offset: 0x28e0
// Size: 0x154
function setinflictorstat(einflictor, eattacker, weapon) {
    if (!isdefined(eattacker)) {
        return;
    }
    if (!isdefined(einflictor)) {
        eattacker stats::function_e24eec31(weapon, #"hits", 1);
        return;
    }
    if (!isdefined(einflictor.playeraffectedarray)) {
        einflictor.playeraffectedarray = [];
    }
    foundnewplayer = 1;
    for (i = 0; i < einflictor.playeraffectedarray.size; i++) {
        if (einflictor.playeraffectedarray[i] == self) {
            foundnewplayer = 0;
            break;
        }
    }
    if (foundnewplayer) {
        einflictor.playeraffectedarray[einflictor.playeraffectedarray.size] = self;
        if (weapon == "concussion_grenade" || weapon == "tabun_gas") {
            eattacker stats::function_e24eec31(weapon, #"used", 1);
        }
        eattacker stats::function_e24eec31(weapon, #"hits", 1);
    }
}

// Namespace globallogic_score/globallogic_score
// Params 1, eflags: 0x0
// Checksum 0xa308e1e7, Offset: 0x2a40
// Size: 0x112
function processshieldassist(killedplayer) {
    self endon(#"disconnect");
    killedplayer endon(#"disconnect");
    waitframe(1);
    util::waittillslowprocessallowed();
    if (!isdefined(level.teams[self.pers[#"team"]])) {
        return;
    }
    if (self.pers[#"team"] == killedplayer.pers[#"team"]) {
        return;
    }
    if (!level.teambased) {
        return;
    }
    self incpersstat(#"assists", 1, 1, 1);
    self.assists = self getpersstat(#"assists");
}

// Namespace globallogic_score/globallogic_score
// Params 4, eflags: 0x0
// Checksum 0x8470b176, Offset: 0x2b60
// Size: 0x27c
function processassist(killedplayer, damagedone, weapon, assist_level = undefined) {
    self endon(#"disconnect");
    killedplayer endon(#"disconnect");
    waitframe(1);
    util::waittillslowprocessallowed();
    if (!isdefined(level.teams[self.pers[#"team"]])) {
        return;
    }
    if (self.pers[#"team"] == killedplayer.pers[#"team"]) {
        return;
    }
    if (!level.teambased) {
        return;
    }
    assist_level = "assist";
    assist_level_value = int(ceil(damagedone / 25));
    if (assist_level_value < 1) {
        assist_level_value = 1;
    } else if (assist_level_value > 3) {
        assist_level_value = 3;
    }
    assist_level = assist_level + "_" + assist_level_value * 25;
    self incpersstat(#"assists", 1, 1, 1);
    self.assists = self getpersstat(#"assists");
    switch (weapon.name) {
    case #"concussion_grenade":
        assist_level = "assist_concussion";
        break;
    case #"flash_grenade":
        assist_level = "assist_flash";
        break;
    case #"emp_grenade":
        assist_level = "assist_emp";
        break;
    case #"proximity_grenade":
    case #"proximity_grenade_aoe":
        assist_level = "assist_proximity";
        break;
    }
    self challenges::assisted();
}

