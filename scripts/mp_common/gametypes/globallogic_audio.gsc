// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\gametypes\round.gsc;
#using scripts\mp_common\gametypes\outcome.gsc;
#using scripts\mp_common\gametypes\match.gsc;
#using scripts\mp_common\gametypes\globallogic_utils.gsc;
#using scripts\mp_common\gametypes\globallogic_audio.gsc;
#using script_1cc417743d7c262d;
#using script_396f7d71538c9677;
#using scripts\core_common\battlechatter.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\sound_shared.gsc;
#using scripts\core_common\music_shared.gsc;
#using scripts\core_common\map.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\audio_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace globallogic_audio;

// Namespace globallogic_audio/globallogic_audio
// Params 0, eflags: 0x5
// Checksum 0x80e622d3, Offset: 0x550
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_410d0d4132d5f263", &preinit, undefined, undefined, undefined);
}

// Namespace globallogic_audio/globallogic_audio
// Params 0, eflags: 0x6 linked
// Checksum 0x3743865a, Offset: 0x598
// Size: 0x11c
function private preinit() {
    callback::on_start_gametype(&init);
    callback::on_joined_team(&on_joined_team);
    if (util::get_gametype_name() === "survival") {
        level.var_bc01f047 = "srtaacom";
        level.var_7ee6af9f = "srcommander";
    } else {
        level.var_bc01f047 = "mptaacom";
        level.var_7ee6af9f = "mpcommander";
    }
    level.playleaderdialogonplayer = &leader_dialog_on_player;
    level.var_57e2bc08 = &leader_dialog;
    level.playequipmentdestroyedonplayer = &play_equipment_destroyed_on_player;
    level.playequipmenthackedonplayer = &play_equipment_hacked_on_player;
    level.var_daaa6db3 = &function_4fb91bc7;
}

// Namespace globallogic_audio/globallogic_audio
// Params 0, eflags: 0x2 linked
// Checksum 0xe84bb865, Offset: 0x6c0
// Size: 0x40c
function init() {
    level.multipledialogkeys = [];
    level.multipledialogkeys[#"enemyaitank"] = "enemyAiTankMultiple";
    level.multipledialogkeys[#"enemysupplydrop"] = "enemySupplyDropMultiple";
    level.multipledialogkeys[#"enemycombatrobot"] = "enemyCombatRobotMultiple";
    level.multipledialogkeys[#"enemycounteruav"] = "enemyCounterUavMultiple";
    level.multipledialogkeys[#"enemydart"] = "enemyDartMultiple";
    level.multipledialogkeys[#"enemyemp"] = "enemyEmpMultiple";
    level.multipledialogkeys[#"enemymicrowaveturret"] = "enemyMicrowaveTurretMultiple";
    level.multipledialogkeys[#"enemyrcbomb"] = "enemyRcBombMultiple";
    level.multipledialogkeys[#"enemyplanemortar"] = "enemyPlaneMortarMultiple";
    level.multipledialogkeys[#"enemyhelicoptergunner"] = "enemyHelicopterGunnerMultiple";
    level.multipledialogkeys[#"enemyraps"] = "enemyRapsMultiple";
    level.multipledialogkeys[#"enemydronestrike"] = "enemyDroneStrikeMultiple";
    level.multipledialogkeys[#"enemyturret"] = "enemyTurretMultiple";
    level.multipledialogkeys[#"enemyhelicopter"] = "enemyHelicopterMultiple";
    level.multipledialogkeys[#"enemyuav"] = "enemyUavMultiple";
    level.multipledialogkeys[#"enemysatellite"] = "enemySatelliteMultiple";
    level.multipledialogkeys[#"friendlyaitank"] = "";
    level.multipledialogkeys[#"friendlysupplydrop"] = "";
    level.multipledialogkeys[#"friendlycombatrobot"] = "";
    level.multipledialogkeys[#"friendlycounteruav"] = "";
    level.multipledialogkeys[#"friendlydart"] = "";
    level.multipledialogkeys[#"friendlyemp"] = "";
    level.multipledialogkeys[#"friendlymicrowaveturret"] = "";
    level.multipledialogkeys[#"friendlyrcbomb"] = "";
    level.multipledialogkeys[#"friendlyplanemortar"] = "";
    level.multipledialogkeys[#"friendlyhelicoptergunner"] = "";
    level.multipledialogkeys[#"friendlyraps"] = "";
    level.multipledialogkeys[#"friendlydronestrike"] = "";
    level.multipledialogkeys[#"friendlyturret"] = "";
    level.multipledialogkeys[#"friendlyhelicopter"] = "";
    level.multipledialogkeys[#"friendlyuav"] = "";
    level.multipledialogkeys[#"friendlysatellite"] = "";
}

// Namespace globallogic_audio/globallogic_audio
// Params 1, eflags: 0x2 linked
// Checksum 0x555563a5, Offset: 0xad8
// Size: 0x188
function set_blops_dialog(teamindex) {
    if (isdefined(level.var_462ca9bb)) {
        self.pers[level.var_bc01f047] = level.var_462ca9bb;
    } else {
        self.pers[level.var_bc01f047] = level.var_bc01f047 === "mptaacom" ? "blops_taacom" : "sr_taacom";
    }
    if (isdefined(level.var_e2f95698)) {
        self.pers[level.var_7ee6af9f] = level.var_e2f95698;
        return;
    }
    if (level.var_7ee6af9f === "mpcommander") {
        factionlist = map::function_596f8772();
        faction = getscriptbundle(isdefined(factionlist.faction[teamindex].var_d2446fa0) ? factionlist.faction[teamindex].var_d2446fa0 : #"");
        self.pers[level.var_7ee6af9f] = isdefined(faction.var_ccc3e5ba) ? faction.var_ccc3e5ba : "blops_commander";
        return;
    }
    self.pers[level.var_7ee6af9f] = "sr_commander";
}

// Namespace globallogic_audio/globallogic_audio
// Params 1, eflags: 0x2 linked
// Checksum 0x4fb01896, Offset: 0xc68
// Size: 0x12c
function set_cdp_dialog(teamindex) {
    if (isdefined(level.var_2d24ff8d)) {
        self.pers[level.var_bc01f047] = level.var_2d24ff8d;
    } else {
        self.pers[level.var_bc01f047] = "cdp_taacom";
    }
    if (isdefined(level.var_e2f95698)) {
        self.pers[level.var_7ee6af9f] = level.var_e2f95698;
        return;
    }
    factionlist = map::function_596f8772();
    faction = getscriptbundle(isdefined(factionlist.faction[teamindex].var_d2446fa0) ? factionlist.faction[teamindex].var_d2446fa0 : #"");
    self.pers[level.var_7ee6af9f] = isdefined(faction.var_ccc3e5ba) ? faction.var_ccc3e5ba : "cdp_commander";
}

// Namespace globallogic_audio/globallogic_audio
// Params 1, eflags: 0x2 linked
// Checksum 0xeccf6f6f, Offset: 0xda0
// Size: 0x24c
function on_joined_team(*params) {
    self endon(#"disconnect");
    teammask = getteammask(self.team);
    for (teamindex = 0; teammask > 1; teamindex++) {
        teammask >>= 1;
    }
    if (teamindex % 2) {
        self set_blops_dialog(teamindex);
    } else {
        self set_cdp_dialog(teamindex);
    }
    self flush_dialog();
    if (!is_true(level.inprematchperiod) && !is_true(self.pers[#"playedgamemode"]) && isdefined(level.leaderdialog)) {
        if (level.hardcoremode) {
            if (globallogic_utils::function_308e3379()) {
                self leader_dialog_on_player(level.leaderdialog.var_d04b3734, undefined, undefined, undefined, 1);
            } else {
                self leader_dialog_on_player(level.leaderdialog.starthcgamedialog, undefined, undefined, undefined, 1);
            }
        } else if (globallogic_utils::function_308e3379()) {
            self leader_dialog_on_player(level.leaderdialog.var_f6fda321, undefined, undefined, undefined, 1);
        } else {
            self leader_dialog_on_player(level.leaderdialog.startgamedialog, undefined, undefined, undefined, 1);
        }
        self.pers[#"playedgamemode"] = 1;
    }
}

// Namespace globallogic_audio/globallogic_audio
// Params 0, eflags: 0x2 linked
// Checksum 0x62ae58f4, Offset: 0xff8
// Size: 0x1a4
function announcercontroller() {
    level endon(#"game_ended");
    level waittill(#"match_ending_soon");
    if (util::islastround() || util::isoneround()) {
        if (level.teambased) {
            if (!announce_team_is_winning()) {
                leader_dialog("min_draw");
            }
        }
        level waittill(#"match_ending_very_soon");
        if (level.var_70cd9e95 !== 1) {
            foreach (team, _ in level.teams) {
                leader_dialog("roundTimeWarning", team);
            }
        }
        return;
    }
    level waittill(#"match_ending_vox");
    if (level.var_70cd9e95 !== 1) {
        leader_dialog("roundTimeWarning");
    }
}

// Namespace globallogic_audio/globallogic_audio
// Params 0, eflags: 0x2 linked
// Checksum 0x8f1baa2d, Offset: 0x11a8
// Size: 0x1f4
function function_1f89b047() {
    if (!isdefined(game.outcome.var_3c5fdf73)) {
        return;
    }
    var_f743e210 = 0;
    if (game.outcome.var_3c5fdf73.size > 1) {
        var_cdf943df = undefined;
        for (index = game.outcome.var_3c5fdf73.size - 2; index >= 0; index--) {
            if (!isdefined(var_cdf943df)) {
                var_cdf943df = game.outcome.var_3c5fdf73[index].team;
            }
            if (var_cdf943df != game.outcome.var_3c5fdf73[index].team) {
                break;
            }
            var_f743e210++;
        }
    }
    var_d70a4dd2 = game.outcome.var_3c5fdf73[game.outcome.var_3c5fdf73.size - 1].team;
    var_b66d2861 = 0;
    if (var_d70a4dd2 === var_cdf943df) {
        var_f743e210++;
    } else if (var_f743e210 > 1) {
        var_b66d2861 = 1;
    }
    if (is_true(var_b66d2861)) {
        leader_dialog("announceStreakBreaker", var_d70a4dd2);
        return;
    }
    if (var_f743e210 >= 3 && var_f743e210 <= 8) {
        dialogkey = "announceStreak_" + (isdefined(var_f743e210) ? "" + var_f743e210 : "");
        leader_dialog(dialogkey, var_d70a4dd2);
    }
}

// Namespace globallogic_audio/globallogic_audio
// Params 0, eflags: 0x2 linked
// Checksum 0x21963bfb, Offset: 0x13a8
// Size: 0x3c
function function_5e0a6842() {
    level thread set_music_on_team("roundend_finish", undefined, 3);
    leader_dialog("roundSwitchSides");
}

// Namespace globallogic_audio/globallogic_audio
// Params 0, eflags: 0x2 linked
// Checksum 0x8f29b523, Offset: 0x13f0
// Size: 0x1c
function function_dfd17bd3() {
    leader_dialog("roundHalftime");
}

// Namespace globallogic_audio/globallogic_audio
// Params 0, eflags: 0x2 linked
// Checksum 0x6ca68297, Offset: 0x1418
// Size: 0x120
function announce_team_is_winning() {
    foreach (team, _ in level.teams) {
        if (is_team_winning(team)) {
            var_5624e09d = isdefined(level.var_2ee800c8) ? level.var_2ee800c8 : "gameWinning";
            var_c678068b = isdefined(level.var_78739954) ? level.var_78739954 : "gameLosing";
            leader_dialog(var_5624e09d, team);
            leader_dialog_for_other_teams(var_c678068b, team);
            return true;
        }
    }
    return false;
}

// Namespace globallogic_audio/globallogic_audio
// Params 1, eflags: 0x2 linked
// Checksum 0xc2d5dd82, Offset: 0x1540
// Size: 0x27c
function announce_round_winner(delay) {
    if (delay > 0) {
        wait(delay);
    }
    winner = round::get_winner();
    if (!isdefined(winner) || isplayer(winner)) {
        return;
    }
    if (isdefined(level.teams[winner])) {
        var_e1fb96c7 = isdefined(level._callbacks[#"hash_20dca48305feccf5"]);
        if (var_e1fb96c7) {
            level callback::callback(#"hash_20dca48305feccf5", winner);
        } else if (level.gametype === "bounty" && round::function_3624d032() === 1) {
            leader_dialog("bountyRoundEncourageWon", winner, undefined, undefined, undefined, 1);
            leader_dialog_for_other_teams("bountyRoundEncourageLost", winner, undefined, undefined, undefined, 1);
        } else {
            leader_dialog("roundEncourageWon", winner, undefined, undefined, undefined, 1, level.var_db91e97c);
            leader_dialog_for_other_teams("roundEncourageLost", winner, undefined, undefined, undefined, 1, level.var_db91e97c);
        }
        return;
    }
    foreach (team, _ in level.teams) {
        if (isdefined(level.teampostfix[team])) {
            thread sound::play_on_players("mus_round_draw" + "_" + level.teampostfix[team]);
        }
    }
    leader_dialog("roundDraw");
}

// Namespace globallogic_audio/globallogic_audio
// Params 1, eflags: 0x2 linked
// Checksum 0x171819ff, Offset: 0x17c8
// Size: 0x114
function announce_game_winner(outcome) {
    wait(battlechatter::mpdialog_value("announceWinnerDelay", 0));
    if (level.teambased) {
        if (level.var_ba92f0a8 || outcome::get_flag(outcome, "tie") || !match::function_c10174e7()) {
            leader_dialog("gameDraw", undefined, undefined, undefined, undefined, 1);
            return;
        }
        leader_dialog("gameWon", outcome::get_winner(outcome), undefined, undefined, undefined, 1);
        leader_dialog_for_other_teams("gameLost", outcome::get_winner(outcome), undefined, undefined, undefined, 1);
    }
}

// Namespace globallogic_audio/globallogic_audio
// Params 1, eflags: 0x2 linked
// Checksum 0xc850a7f2, Offset: 0x18e8
// Size: 0xc
function function_57678746(*outcome) {
    
}

// Namespace globallogic_audio/globallogic_audio
// Params 1, eflags: 0x0
// Checksum 0xebeb5038, Offset: 0x1900
// Size: 0x6a
function get_round_switch_dialog(switchtype) {
    switch (switchtype) {
    case 2:
        return "roundHalftime";
    case 4:
        return "roundOvertime";
    default:
        return "roundSwitchSides";
    }
}

// Namespace globallogic_audio/globallogic_audio
// Params 0, eflags: 0x2 linked
// Checksum 0xe7c913b5, Offset: 0x1978
// Size: 0x7c
function sndmusicfunctions() {
    if (!is_true(level.var_34842a14)) {
        level thread function_4e959ce6();
    }
    if (!is_true(level.var_ce802423)) {
        level thread sndmusichalfway();
        level thread sndmusictimelimitwatcher();
    }
}

// Namespace globallogic_audio/globallogic_audio
// Params 0, eflags: 0x2 linked
// Checksum 0xa01b68df, Offset: 0x1a00
// Size: 0x4c
function function_4e959ce6() {
    level thread function_13bcae23();
    level thread function_913f483f();
    level thread function_c13cee9b();
}

// Namespace globallogic_audio/globallogic_audio
// Params 0, eflags: 0x0
// Checksum 0x8899dbe8, Offset: 0x1a58
// Size: 0x94
function sndmusicsetrandomizer() {
    if (isdefined(level.var_30783ca9)) {
        level thread [[ level.var_30783ca9 ]]();
        return;
    }
    if (game.roundsplayed == 0) {
        game.musicset = 3;
        if (game.musicset <= 9) {
            game.musicset = "0" + game.musicset;
        }
        game.musicset = "_" + game.musicset;
    }
}

// Namespace globallogic_audio/globallogic_audio
// Params 0, eflags: 0x2 linked
// Checksum 0xd55ddef9, Offset: 0x1af8
// Size: 0xc0
function function_c13cee9b() {
    level endon(#"game_ended", #"match_ending_very_soon", #"hash_15b8b6edc4ed3032");
    if (is_true(level.var_ab24f23b)) {
        return;
    }
    waitresult = level waittill(#"match_ending_soon");
    if (waitresult.event === "score") {
        level notify(#"hash_15b8b6edc4ed3032", {#var_7090bf53:1});
    }
}

// Namespace globallogic_audio/globallogic_audio
// Params 0, eflags: 0x2 linked
// Checksum 0x21e9b1f1, Offset: 0x1bc0
// Size: 0x114
function function_13bcae23() {
    level endon(#"game_ended", #"hash_5473f958d5ea84dc");
    var_ffe73385 = 0;
    if (isdefined(level.gametype) && level.gametype == "sd") {
        var_ffe73385 = 1;
    }
    s_waitresult = level waittill(#"hash_15b8b6edc4ed3032");
    if (!is_true(s_waitresult.var_7090bf53)) {
        level notify(#"hash_d50c83061fcd561");
    }
    level.var_2179a6bf = 1;
    if (var_ffe73385) {
        level thread set_music_on_team("timeout_loop_quiet");
        return;
    }
    level thread set_music_on_team("timeout_loop");
}

// Namespace globallogic_audio/globallogic_audio
// Params 0, eflags: 0x2 linked
// Checksum 0x85818450, Offset: 0x1ce0
// Size: 0xa4
function function_913f483f() {
    level endon(#"game_ended", #"hash_d50c83061fcd561");
    s_waitresult = level waittill(#"hash_28434e94a8844dc5");
    if (isdefined(s_waitresult.n_delay)) {
        wait(s_waitresult.n_delay);
    }
    if (!is_true(level.var_a8b23f5a)) {
        level thread set_music_on_team("none");
    }
}

// Namespace globallogic_audio/globallogic_audio
// Params 0, eflags: 0x2 linked
// Checksum 0xf1ddc26c, Offset: 0x1d90
// Size: 0x94
function sndmusichalfway() {
    level endon(#"game_ended", #"match_ending_soon", #"match_ending_very_soon", #"hash_15b8b6edc4ed3032");
    str_gametype = level.gametype;
    level waittill(#"sndmusichalfway");
    level thread set_music_on_team("underscore");
}

// Namespace globallogic_audio/globallogic_audio
// Params 0, eflags: 0x2 linked
// Checksum 0x2af09e76, Offset: 0x1e30
// Size: 0x10c
function sndmusictimelimitwatcher() {
    level endon(#"game_ended", #"match_ending_soon", #"match_ending_very_soon", #"sndmusichalfway");
    if (!isdefined(level.timelimit) || level.timelimit == 0) {
        return;
    }
    halfway = level.timelimit * 60 * 0.5;
    if (halfway <= 100) {
        return;
    }
    while (true) {
        timeleft = float(globallogic_utils::gettimeremaining()) / 1000;
        if (timeleft <= halfway) {
            level notify(#"sndmusichalfway");
            return;
        }
        wait(2);
    }
}

// Namespace globallogic_audio/globallogic_audio
// Params 1, eflags: 0x2 linked
// Checksum 0x8d791158, Offset: 0x1f48
// Size: 0x1c8
function function_91d557d3(outcome) {
    if (isdefined(level.var_a4947666)) {
        level thread [[ level.var_a4947666 ]](outcome);
        return;
    }
    if (outcome::get_flag(outcome, "tie") || !match::function_c10174e7()) {
        level thread set_music_global("matchend_draw");
        return;
    }
    if (level.teambased) {
        level thread set_music_on_team("matchend_win", outcome::get_winner(outcome));
        level thread function_89fe8163("matchend_lose", outcome::get_winner(outcome));
        return;
    }
    foreach (player in level.players) {
        if (player === match::function_b5f4c9d8()) {
            player thread set_music_on_player("matchend_win");
            continue;
        }
        player thread set_music_on_player("matchend_lose");
    }
}

// Namespace globallogic_audio/globallogic_audio
// Params 0, eflags: 0x0
// Checksum 0x6d59d5e4, Offset: 0x2118
// Size: 0x86
function function_2685981b() {
    var_5d9df74c = 0;
    str_gametype = util::get_game_type();
    switch (str_gametype) {
    case #"control":
    case #"fireteam_dirty_bomb":
    case #"vip":
        var_5d9df74c = 1;
        break;
    }
    return var_5d9df74c;
}

