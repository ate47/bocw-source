// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\weaponobjects.gsc;
#using scripts\weapons\weapon_utils.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using script_40fc784c60f9fa7b;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\status_effects\status_effect_util.gsc;
#using scripts\abilities\ability_util.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\globallogic\globallogic_player.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using script_7a8059ca02b7b09e;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\rank_shared.gsc;
#using script_67ce8e728d8f37ba;
#using scripts\core_common\globallogic\globallogic_score.gsc;
#using scripts\core_common\drown.gsc;
#using scripts\core_common\contracts_shared.gsc;
#using scripts\core_common\activecamo_shared.gsc;
#using scripts\abilities\ability_player.gsc;

#namespace challenges;

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x5
// Checksum 0x40923e11, Offset: 0x508
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"challenges_shared", &preinit, undefined, undefined, undefined);
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x6 linked
// Checksum 0x66216f62, Offset: 0x550
// Size: 0x1c
function private preinit() {
    level thread function_57d8515c();
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x578
// Size: 0x4
function init_shared() {
    
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x0
// Checksum 0x58f8174b, Offset: 0x588
// Size: 0x10
function pickedupballisticknife() {
    self.retreivedblades++;
}

// Namespace challenges/challenges_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x28495f36, Offset: 0x5a0
// Size: 0x94
function trackassists(attacker, *damage, isflare) {
    if (!isplayer(damage)) {
        return;
    }
    if (!isdefined(self.flareattackerdamage)) {
        self.flareattackerdamage = [];
    }
    if (isdefined(isflare) && isflare == 1) {
        self.flareattackerdamage[damage.clientid] = 1;
        return;
    }
    self.flareattackerdamage[damage.clientid] = 0;
}

// Namespace challenges/challenges_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xedca58bf, Offset: 0x640
// Size: 0x26c
function destroyedequipment(weapon) {
    if (sessionmodeiszombiesgame() || sessionmodeiscampaigngame()) {
        return;
    }
    if (!isplayer(self)) {
        return;
    }
    if (isdefined(weapon) && weapon.isemp) {
        if (self util::is_item_purchased(#"emp_grenade")) {
            self stats::function_dad108fa(#"destroy_equipment_with_emp_grenade", 1);
        }
        self function_be7a08a8(weapon, 1);
        if (self util::has_hacker_perk_purchased_and_equipped()) {
            self stats::function_dad108fa(#"destroy_equipment_with_emp_engineer", 1);
            self stats::function_dad108fa(#"destroy_equipment_engineer", 1);
        }
    } else if (self util::has_hacker_perk_purchased_and_equipped()) {
        self stats::function_dad108fa(#"destroy_equipment_engineer", 1);
    }
    self stats::function_dad108fa(#"destroy_equipment", 1);
    if (isdefined(weapon)) {
        if (weapon.statname !== #"special_crossbow_t9") {
            self stats::function_e24eec31(weapon, #"hash_114572b44a79e990", 1);
        }
        self stats::function_e24eec31(weapon, #"hash_497df827743010c3", 1);
        self stats::function_e24eec31(weapon, #"hash_67536f932f6aeb36", 1);
    }
    self hackedordestroyedequipment();
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x0
// Checksum 0x6f097a04, Offset: 0x8b8
// Size: 0xb4
function destroyedtacticalinsert() {
    if (!isdefined(self.pers[#"tacticalinsertsdestroyed"])) {
        self.pers[#"tacticalinsertsdestroyed"] = 0;
    }
    self.pers[#"tacticalinsertsdestroyed"]++;
    if (self.pers[#"tacticalinsertsdestroyed"] >= 5) {
        self.pers[#"tacticalinsertsdestroyed"] = 0;
        self stats::function_dad108fa(#"destroy_5_tactical_inserts", 1);
    }
}

// Namespace challenges/challenges_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x1cb6f6f0, Offset: 0x978
// Size: 0x1d8
function addflyswatterstat(weapon, aircraft) {
    if (!isdefined(self.pers[#"flyswattercount"])) {
        self.pers[#"flyswattercount"] = 0;
    }
    self stats::function_e24eec31(weapon, #"destroyed_aircraft", 1);
    self.pers[#"flyswattercount"]++;
    if (self.pers[#"flyswattercount"] == 5) {
        self stats::function_e24eec31(weapon, #"destroyed_5_aircraft", 1);
    }
    if (isdefined(aircraft) && isdefined(aircraft.birthtime)) {
        if (gettime() - aircraft.birthtime < 20000) {
            self stats::function_e24eec31(weapon, #"destroyed_aircraft_under20s", 1);
        }
    }
    if (!isdefined(self.destroyedaircrafttime)) {
        self.destroyedaircrafttime = [];
    }
    if (isdefined(self.destroyedaircrafttime[weapon]) && gettime() - self.destroyedaircrafttime[weapon] < 10000) {
        self stats::function_e24eec31(weapon, #"destroyed_2aircraft_quickly", 1);
        self.destroyedaircrafttime[weapon] = undefined;
        return;
    }
    self.destroyedaircrafttime[weapon] = gettime();
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x8237b8b3, Offset: 0xb58
// Size: 0xa0
function canprocesschallenges() {
    /#
        if (getdvarint(#"debugchallenges", 0) > 0) {
            return true;
        }
    #/
    if (getdvarint(#"hash_4a5c76bca8b0e3d8", 0) > 0) {
        return false;
    }
    if (level.rankedmatch || level.arenamatch || sessionmodeiscampaigngame()) {
        return true;
    }
    return false;
}

// Namespace challenges/challenges_shared
// Params 1, eflags: 0x0
// Checksum 0xb20a969a, Offset: 0xc00
// Size: 0xd2
function initteamchallenges(team) {
    if (!isdefined(game.challenge)) {
        game.challenge = [];
    }
    if (!isdefined(game.challenge[team])) {
        game.challenge[team] = [];
        game.challenge[team][#"plantedbomb"] = 0;
        game.challenge[team][#"destroyedbombsite"] = 0;
        game.challenge[team][#"capturedflag"] = 0;
    }
    game.challenge[team][#"allalive"] = 1;
}

// Namespace challenges/challenges_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x4ee21be6, Offset: 0xce0
// Size: 0x7a
function registerchallengescallback(callback, func) {
    if (!isdefined(level.challengescallbacks)) {
        level.challengescallbacks = [];
    }
    if (!isdefined(level.challengescallbacks[callback])) {
        level.challengescallbacks[callback] = [];
    }
    level.challengescallbacks[callback][level.challengescallbacks[callback].size] = func;
}

// Namespace challenges/challenges_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xcaf068e0, Offset: 0xd68
// Size: 0x12e
function dochallengecallback(var_838fbbf5, data) {
    callbacks = level.challengescallbacks[var_838fbbf5];
    if (!isdefined(callbacks)) {
        return;
    }
    if (isdefined(data)) {
        foreach (var_2a6ba2ea in callbacks) {
            thread [[ var_2a6ba2ea ]](data);
        }
        return;
    }
    foreach (var_2a6ba2ea in callbacks) {
        thread [[ var_2a6ba2ea ]]();
    }
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x0
// Checksum 0x31619e61, Offset: 0xea0
// Size: 0x34
function on_player_connect() {
    self thread initchallengedata();
    self thread spawnwatcher();
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x3ed5d58f, Offset: 0xee0
// Size: 0x3e
function initchallengedata() {
    self.pers[#"stickexplosivekill"] = 0;
    self.pers[#"carepackagescalled"] = 0;
    self.explosiveinfo = [];
}

// Namespace challenges/challenges_shared
// Params 3, eflags: 0x0
// Checksum 0x449faffa, Offset: 0xf28
// Size: 0xd4
function isdamagefromplayercontrolledaitank(eattacker, einflictor, weapon) {
    if (weapon.name == #"ai_tank_drone_gun") {
        if (isdefined(eattacker) && isdefined(eattacker.remoteweapon) && isdefined(einflictor)) {
            if (is_true(einflictor.controlled)) {
                if (eattacker.remoteweapon == einflictor) {
                    return true;
                }
            }
        }
    } else if (weapon.name == #"ai_tank_drone_rocket") {
        if (isdefined(einflictor) && !isdefined(einflictor.from_ai)) {
            return true;
        }
    }
    return false;
}

// Namespace challenges/challenges_shared
// Params 3, eflags: 0x0
// Checksum 0xf1806fef, Offset: 0x1008
// Size: 0x96
function isdamagefromplayercontrolledsentry(eattacker, einflictor, weapon) {
    if (weapon.name == #"auto_gun_turret") {
        if (isdefined(eattacker) && isdefined(eattacker.remoteweapon) && isdefined(einflictor)) {
            if (eattacker.remoteweapon == einflictor) {
                if (is_true(einflictor.controlled)) {
                    return true;
                }
            }
        }
    }
    return false;
}

// Namespace challenges/challenges_shared
// Params 3, eflags: 0x0
// Checksum 0x227b13b3, Offset: 0x10a8
// Size: 0x6d4
function perkkills(victim, isstunned, time) {
    player = self;
    if (player hasperk(#"specialty_movefaster")) {
        player stats::function_dad108fa(#"perk_movefaster_kills", 1);
    }
    if (player hasperk(#"specialty_noname")) {
        player stats::function_dad108fa(#"perk_noname_kills", 1);
    }
    if (player hasperk(#"specialty_quieter")) {
        player stats::function_dad108fa(#"perk_quieter_kills", 1);
    }
    if (player hasperk(#"specialty_longersprint")) {
        if (isdefined(player.lastsprinttime) && gettime() - player.lastsprinttime < 2500) {
            player stats::function_dad108fa(#"perk_longersprint", 1);
        }
    }
    if (player hasperk(#"specialty_fastmantle")) {
        if (isdefined(player.lastsprinttime) && gettime() - player.lastsprinttime < 2500 && player playerads() >= 1) {
            player stats::function_dad108fa(#"perk_fastmantle_kills", 1);
        }
    }
    if (player hasperk(#"specialty_loudenemies")) {
        player stats::function_dad108fa(#"perk_loudenemies_kills", 1);
    }
    if (isstunned == 1 && player hasperk(#"specialty_stunprotection")) {
        player stats::function_dad108fa(#"perk_protection_stun_kills", 1);
    }
    activeenemyemp = 0;
    activecuav = 0;
    if (level.teambased) {
        foreach (team, _ in level.teams) {
            assert(isdefined(level.activecounteruavs[team]));
            assert(isdefined(level.emp_shared.activeemps[team]));
            if (team == player.team) {
                continue;
            }
            if (level.activecounteruavs[team] > 0) {
                activecuav = 1;
            }
            if (level.emp_shared.activeemps[team] > 0) {
                activeenemyemp = 1;
            }
        }
    } else {
        assert(isdefined(level.activecounteruavs[victim.entnum]));
        assert(isdefined(level.emp_shared.activeemps[victim.entnum]));
        players = level.players;
        for (i = 0; i < players.size; i++) {
            if (players[i] != player) {
                if (isdefined(level.activecounteruavs[players[i].entnum]) && level.activecounteruavs[players[i].entnum] > 0) {
                    activecuav = 1;
                }
                if (isdefined(level.emp_shared.activeemps[players[i].entnum]) && level.emp_shared.activeemps[players[i].entnum] > 0) {
                    activeenemyemp = 1;
                }
            }
        }
    }
    if (activecuav == 1 || activeenemyemp == 1) {
        if (player hasperk(#"specialty_immunecounteruav")) {
            player stats::function_dad108fa(#"perk_immune_cuav_kills", 1);
        }
    }
    activeuavvictim = 0;
    if (isdefined(level.activeuavs[victim.team]) && level.activeuavs[victim.team] > 0) {
        if (player hasperk(#"specialty_gpsjammer")) {
            player stats::function_dad108fa(#"perk_gpsjammer_immune_kills", 1);
        }
    }
    if (player.lastweaponchange + 5000 > time) {
        if (player hasperk(#"specialty_fastweaponswitch")) {
            player stats::function_dad108fa(#"perk_fastweaponswitch_kill_after_swap", 1);
        }
    }
    if (player.scavenged == 1) {
        if (player hasperk(#"specialty_scavenger")) {
            player stats::function_dad108fa(#"perk_scavenger_kills_after_resupply", 1);
        }
    }
}

// Namespace challenges/challenges_shared
// Params 2, eflags: 0x0
// Checksum 0x279c469e, Offset: 0x1788
// Size: 0x86
function flakjacketprotected(weapon, attacker) {
    if (weapon.name == #"claymore") {
        self.flakjacketclaymore[attacker.clientid] = 1;
    }
    self stats::function_dad108fa(#"survive_with_flak", 1);
    self.challenge_lastsurvivewithflakfrom = attacker;
    self.challenge_lastsurvivewithflaktime = gettime();
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xf82b5d08, Offset: 0x1818
// Size: 0x106
function earnedkillstreak() {
    gear = self function_b958b70d(self.class_num, "tacticalgear");
    if (gear === #"gear_scorestreakcharge") {
        self stats::function_dad108fa(#"hash_656a2ab7e777796b", 1);
        if (isdefined(self.var_ea1458aa)) {
            if (!isdefined(self.var_ea1458aa.var_829c3e81)) {
                self.var_ea1458aa.var_829c3e81 = 0;
            }
            self.var_ea1458aa.var_829c3e81++;
            if (self.var_ea1458aa.var_829c3e81 == 5) {
                self stats::function_dad108fa(#"hash_1dd0ef4785aa4084", 1);
                self.var_ea1458aa.var_829c3e81 = 0;
            }
        }
    }
}

// Namespace challenges/challenges_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xd5ae4e96, Offset: 0x1928
// Size: 0x158
function ishighestscoringplayer(player) {
    if (!isdefined(player.score) || player.score < 1) {
        return false;
    }
    players = level.players;
    if (level.teambased) {
        team = player.pers[#"team"];
    } else {
        team = "all";
    }
    highscore = player.score;
    for (i = 0; i < players.size; i++) {
        if (!isdefined(players[i].score)) {
            continue;
        }
        if (players[i] == player) {
            continue;
        }
        if (players[i].score < 1) {
            continue;
        }
        if (team != "all" && players[i].pers[#"team"] != team) {
            continue;
        }
        if (players[i].score >= highscore) {
            return false;
        }
    }
    return true;
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x27bede5e, Offset: 0x1a88
// Size: 0x148
function spawnwatcher() {
    self endon(#"disconnect", #"killspawnmonitor");
    self.pers[#"stickexplosivekill"] = 0;
    self.pers[#"pistolheadshot"] = 0;
    self.pers[#"assaultrifleheadshot"] = 0;
    self.pers[#"killnemesis"] = 0;
    while (true) {
        self waittill(#"spawned_player");
        self.pers[#"longshotsperlife"] = 0;
        self.weaponkills = [];
        self.attachmentkills = [];
        self.retreivedblades = 0;
        self.lastreloadtime = 0;
        self.crossbowclipkillcount = 0;
        self thread watchfordtp();
        self thread watchformantle();
        self thread monitor_player_sprint();
    }
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x6dd1971f, Offset: 0x1bd8
// Size: 0x76
function watchfordtp() {
    self endon(#"disconnect", #"death", #"killdtpmonitor");
    self.dtptime = 0;
    while (true) {
        self waittill(#"dtp_end");
        self.dtptime = gettime() + 4000;
    }
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xf4f16731, Offset: 0x1c58
// Size: 0x82
function watchformantle() {
    self endon(#"disconnect", #"death", #"killmantlemonitor");
    self.mantletime = 0;
    while (true) {
        waitresult = self waittill(#"mantle_start");
        self.mantletime = waitresult.end_time;
    }
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x78ce1ed9, Offset: 0x1ce8
// Size: 0x2c
function disarmedhackedcarepackage() {
    self stats::function_dad108fa(#"disarm_hacked_carepackage", 1);
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xd117aa0f, Offset: 0x1d20
// Size: 0x54
function destroyed_car() {
    if (!isdefined(self) || !isplayer(self)) {
        return;
    }
    self stats::function_dad108fa(#"destroy_car", 1);
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xff7b775c, Offset: 0x1d80
// Size: 0xb4
function killednemesis() {
    if (!isdefined(self.pers[#"killnemesis"])) {
        self.pers[#"killnemesis"] = 0;
    }
    self.pers[#"killnemesis"]++;
    if (self.pers[#"killnemesis"] >= 5) {
        self.pers[#"killnemesis"] = 0;
        self stats::function_dad108fa(#"kill_nemesis", 1);
    }
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xddd266be, Offset: 0x1e40
// Size: 0x2c
function killwhiledamagingwithhpm() {
    self stats::function_dad108fa(#"kill_while_damaging_with_microwave_turret", 1);
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x409b8dfc, Offset: 0x1e78
// Size: 0x2c
function longdistancehatchetkill() {
    self stats::function_dad108fa(#"long_distance_hatchet_kill", 1);
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x28c5b221, Offset: 0x1eb0
// Size: 0x2c
function blockedsatellite() {
    self stats::function_dad108fa(#"activate_cuav_while_enemy_satelite_active", 1);
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x0
// Checksum 0x17493e84, Offset: 0x1ee8
// Size: 0x7c
function longdistancekill() {
    self.pers[#"longshotsperlife"]++;
    if (self.pers[#"longshotsperlife"] >= 3) {
        self.pers[#"longshotsperlife"] = 0;
        self stats::function_dad108fa(#"longshot_3_onelife", 1);
    }
}

// Namespace challenges/challenges_shared
// Params 1, eflags: 0x0
// Checksum 0xd4c13679, Offset: 0x1f70
// Size: 0x182
function challengeroundend(data) {
    player = data.player;
    winner = data.winner;
    if (endedearly(winner, winner == "tie")) {
        return;
    }
    if (level.teambased) {
        winnerscore = game.stat[#"teamscores"][winner];
        loserscore = getlosersteamscores(winner);
    }
    switch (level.gametype) {
    case #"sd":
        if (player.team == winner) {
            if (game.challenge[winner][#"allalive"]) {
                player stats::function_d40764f3(#"round_win_no_deaths", 1);
            }
            if (isdefined(player.lastmansddefeat3enemies)) {
                player stats::function_d40764f3(#"last_man_defeat_3_enemies", 1);
            }
        }
        break;
    default:
        break;
    }
}

// Namespace challenges/challenges_shared
// Params 1, eflags: 0x0
// Checksum 0xe3315b1a, Offset: 0x2100
// Size: 0x84
function last_man_defeat_3_enemies(team) {
    if (function_a1ef346b(team).size == 1) {
        player = function_a1ef346b(team)[0];
        if (isdefined(player.var_66cfa07f)) {
            player stats::function_bb7eedf0(#"last_man_defeat_3_enemies", 1);
        }
    }
}

// Namespace challenges/challenges_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x38e52dff, Offset: 0x2190
// Size: 0x11c
function roundend(winner) {
    waitframe(1);
    data = spawnstruct();
    data.time = gettime();
    if (level.teambased) {
        if (isdefined(winner) && isdefined(level.teams[winner])) {
            data.winner = winner;
        }
    } else if (isdefined(winner)) {
        data.winner = winner;
    }
    for (index = 0; index < level.placement[#"all"].size; index++) {
        data.player = level.placement[#"all"][index];
        if (isdefined(data.player)) {
            data.place = index;
            dochallengecallback("roundEnd", data);
        }
    }
}

// Namespace challenges/challenges_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xac209813, Offset: 0x22b8
// Size: 0x90c
function function_90185171(totaltimeplayed, iswinner) {
    if (!sessionmodeisonlinegame() || !is_true(level.rankedmatch)) {
        return;
    }
    player = self;
    if (!isdefined(player) || !isplayer(player) || isbot(player)) {
        return;
    }
    if (function_472b5be3() && isdefined(level.var_52b0a80d) && isdefined(level.var_512c31e)) {
        var_9b4de29 = isdefined(iswinner) ? iswinner : 0;
        player function_cce105c8(#"hash_71f20af4235ff7fe", 1, getdvarint(#"hash_54d4176b43d29535", 0), 2, int(max(level.var_52b0a80d, 0)), 3, int(max(level.var_512c31e, 0)), 4, var_9b4de29);
    }
    println("<unknown string>" + player.name);
    println("<unknown string>" + (isdefined(totaltimeplayed) ? totaltimeplayed : "<unknown string>"));
    println("<unknown string>" + (isdefined(player.pers[#"participation"]) ? player.pers[#"participation"] : "<unknown string>"));
    var_e521cb78 = 0;
    if (!isdefined(totaltimeplayed) || totaltimeplayed <= 0) {
        return;
    } else {
        var_e521cb78 = totaltimeplayed;
        var_e521cb78 = int(var_e521cb78 * (isdefined(level.var_b4320b5b[#"hash_2873049796893c2"]) ? level.var_b4320b5b[#"hash_2873049796893c2"] : 1));
        if (!isdedicated()) {
            if (ispc()) {
                var_e521cb78 = int(var_e521cb78 * (isdefined(level.var_b4320b5b[#"hash_164e590374876a39"]) ? level.var_b4320b5b[#"hash_164e590374876a39"] : 1));
            } else {
                var_e521cb78 = int(var_e521cb78 * (isdefined(level.var_b4320b5b[#"hash_5873106a43bbf0a9"]) ? level.var_b4320b5b[#"hash_5873106a43bbf0a9"] : 1));
            }
        }
    }
    /#
        var_8cfed04 = getdvarint(#"hash_4b14d2bc8d560a47", 0);
        if (var_8cfed04 > 0) {
            var_e521cb78 = var_8cfed04;
            player.timeplayed[#"total"]++;
            player.pers[#"participation"]++;
        }
    #/
    if (!isdefined(player.pers[#"participation"]) || player.pers[#"participation"] < 1) {
        if (!sessionmodeiswarzonegame()) {
            println(player.name + "<unknown string>");
            return;
        }
    }
    if (!sessionmodeiswarzonegame() && isdefined(player.pers[#"controllerparticipation"])) {
        if (is_true(player.pers[#"controllerparticipationchecks"])) {
            if (player.pers[#"controllerparticipationchecks"] >= level.var_42dca1dd) {
                var_7be1e671 = player.pers[#"controllerparticipation"] / player.pers[#"controllerparticipationchecks"];
                if (var_7be1e671 < level.var_8e1c2aa1) {
                    self.pers[#"controllerparticipationendgameresult"] = 0;
                    println(player.name + "<unknown string>" + var_7be1e671 + "<unknown string>" + level.var_8e1c2aa1 + "<unknown string>");
                    return;
                } else {
                    self.pers[#"controllerparticipationendgameresult"] = 1;
                }
            }
        }
    }
    if (var_e521cb78 > 0) {
        if ((sessionmodeismultiplayergame() || sessionmodeiswarzonegame()) && getdvarint(#"hash_2f8caf73a89c7179", 1)) {
            var_ae857992 = getdvarint(#"hash_60d812bef0f782fb", 1);
            var_f406f7e3 = getdvarstring(#"hash_714f877764f473ea", "");
            total_time = int(var_e521cb78 * getdvarfloat(#"hash_4a9ebeef00abd6cb", 1));
            if (var_f406f7e3 != "") {
                currxp = player rank::getrankxp();
                xpearned = 0;
                if (isdefined(player.pers[#"hash_43ad5d1b08145b1f"])) {
                    xpearned = currxp - player.pers[#"hash_43ad5d1b08145b1f"];
                }
                player.pers[#"hash_43ad5d1b08145b1f"] = currxp;
                var_90f98f51 = int(player function_c52bcf79() * 100);
                var_d0a27bc3 = int(player getxpscale() * 100);
                var_524ab934 = player function_d40f1a0e();
                var_68441d6f = player function_325dc923();
                println("<unknown string>" + total_time + "<unknown string>" + xpearned);
                player function_cce105c8(hash(var_f406f7e3), 1, int(var_ae857992), 2, total_time, 3, var_90f98f51, 4, xpearned, 5, var_d0a27bc3, 6, var_524ab934, 7, var_68441d6f);
            }
        }
    }
}

// Namespace challenges/challenges_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xa7777e09, Offset: 0x2bd0
// Size: 0x94
function function_659f7dc(var_3e34c8a4, iswinner) {
    self util::function_22bf0a4a();
    if (isdefined(var_3e34c8a4) && var_3e34c8a4 > 0) {
        var_5024088b = float(var_3e34c8a4) / 1000;
        if (var_5024088b > 0) {
            self function_90185171(var_5024088b, iswinner);
        }
    }
}

// Namespace challenges/challenges_shared
// Params 1, eflags: 0x6 linked
// Checksum 0xf3cddc71, Offset: 0x2c70
// Size: 0x12c
function private function_d6f929d6(winner) {
    wait(2);
    level.var_4f654f3a = 1;
    foreach (player in level.players) {
        if (isdefined(player.pers[#"hash_150795bee4d46ce4"])) {
            var_28ee869a = gettime() - player.pers[#"hash_150795bee4d46ce4"];
            iswinner = player iswinner(winner);
            player function_659f7dc(var_28ee869a, iswinner);
        }
    }
    function_f4f6d8a1();
}

// Namespace challenges/challenges_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x532bd295, Offset: 0x2da8
// Size: 0xaa
function iswinner(winner) {
    player = self;
    if (level.teambased) {
        if (isdefined(player) && isdefined(player.team) && isdefined(winner) && isdefined(level.teams[winner])) {
            return (player.team == winner);
        }
    } else if (isdefined(player) && isdefined(winner) && isplayer(winner)) {
        return (player == winner);
    }
    return false;
}

// Namespace challenges/challenges_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xa1144075, Offset: 0x2e60
// Size: 0x1dc
function gameend(winner, *var_c1e98979) {
    waitframe(1);
    data = spawnstruct();
    data.time = gettime();
    if (level.teambased) {
        if (isdefined(var_c1e98979) && isdefined(level.teams[var_c1e98979])) {
            data.winner = var_c1e98979;
        }
    } else if (isdefined(var_c1e98979) && isplayer(var_c1e98979)) {
        data.winner = var_c1e98979;
    }
    for (index = 0; index < level.placement[#"all"].size; index++) {
        data.player = level.placement[#"all"][index];
        data.place = index;
        if (isdefined(data.player)) {
            dochallengecallback("gameEnd", data);
        }
    }
    if (sessionmodeismultiplayergame() && sessionmodeisonlinegame() && level.rankedmatch) {
        if (getdvarint(#"hash_7902ca2d14eb933b", 0) == 1) {
            level.var_4f654f3a = 1;
            function_f4f6d8a1();
            return;
        }
        thread function_d6f929d6(var_c1e98979);
    }
}

// Namespace challenges/challenges_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xfd797ad0, Offset: 0x3048
// Size: 0xd4
function function_1e064861(type, var_a7674114) {
    if (type == self.pers[#"hash_4a01db5796cf12b1"]) {
        self.pers[#"hash_3b7fc8c62a7d4420"]++;
    } else {
        self.pers[#"hash_3b7fc8c62a7d4420"] = 1;
        self.pers[#"hash_4a01db5796cf12b1"] = type;
    }
    if (self.pers[#"hash_3b7fc8c62a7d4420"] > self.pers[var_a7674114]) {
        self.pers[var_a7674114] = self.pers[#"hash_3b7fc8c62a7d4420"];
    }
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xafab0bba, Offset: 0x3128
// Size: 0x6a
function function_fd112605() {
    if (is_true(self.var_4c45f505)) {
        return true;
    }
    if (self.sessionstate != "playing") {
        return true;
    }
    if (isdefined(level.var_fd112605)) {
        if (self [[ level.var_fd112605 ]]()) {
            return true;
        }
    }
    return false;
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x17b98fe8, Offset: 0x31a0
// Size: 0x4e
function function_ca7c50ce() {
    return self.pers[#"controllerparticipation"] / self.pers[#"controllerparticipationchecks"] + self.pers[#"hash_2013e34fb3c104e9"];
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x2002ad4, Offset: 0x31f8
// Size: 0x360
function controllerparticipationcheck() {
    if (!isdefined(self)) {
        return false;
    }
    if (!isdefined(self.pers[#"controllerparticipationchecksskipped"])) {
        self.pers[#"controllerparticipationchecksskipped"] = 0;
    }
    if (isdedicated() && getdvarint(#"hash_2167ce61af5dc0b0", 1) == 0) {
        return false;
    }
    if (function_fd112605()) {
        self.pers[#"controllerparticipationchecksskipped"]++;
        return false;
    }
    self.pers[#"controllerparticipationchecks"]++;
    var_51ba979b = #"failure";
    var_a7674114 = "controllerParticipationConsecutiveFailureMax";
    var_fb144707 = self function_1bc04df9();
    if (var_fb144707 >= level.var_5b7e9056) {
        self.pers[#"controllerparticipation"]++;
        var_51ba979b = #"success";
        var_a7674114 = "controllerParticipationConsecutiveSuccessMax";
        if (self.pers[#"controllerparticipationinactivitywarnings"]) {
            var_9c06c7d1 = function_ca7c50ce();
            difference = level.var_b6752258 - var_9c06c7d1;
            if (difference > 0) {
                difference += 0.02;
                self.pers[#"hash_2013e34fb3c104e9"] = difference;
            }
            self.pers[#"controllerparticipationsuccessafterinactivitywarning"] = 1;
        }
    }
    self function_1e064861(var_51ba979b, var_a7674114);
    if (isdefined(level.var_7db94180)) {
        self [[ level.var_7db94180 ]]();
    } else if (self.pers[#"controllerparticipationchecks"] >= level.var_5d96cc20) {
        var_b06a954d = function_ca7c50ce();
        if (var_b06a954d < level.var_b6752258) {
            if (!self.pers[#"controllerparticipationinactivitywarnings"]) {
                self.pers[#"controllerparticipationinactivitywarnings"]++;
                self iprintlnbold(#"hash_59bd89e170a924ac");
            } else {
                self.pers[#"controllerparticipationendgameresult"] = -2;
                if (isdefined(level.gamehistoryplayerkicked)) {
                    self thread [[ level.gamehistoryplayerkicked ]]();
                }
                kick(self getentitynumber(), "GAME/DROPPEDFORINACTIVITY");
            }
        }
    }
    return true;
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xe8740daf, Offset: 0x3560
// Size: 0x4de
function function_57d8515c() {
    var_9fcc136e = 0;
    /#
        var_9fcc136e = getdvarint(#"hash_174ecf3dea3f9d9c", 0) > 0;
    #/
    if (!var_9fcc136e) {
        if (!sessionmodeisonlinegame() || !is_true(level.rankedmatch)) {
            return;
        }
    }
    var_37c0d246 = 25;
    level.var_5b7e9056 = isdefined(getgametypesetting(#"hash_410c5c7c1e60b534")) ? getgametypesetting(#"hash_410c5c7c1e60b534") : 0;
    level.var_df437ed2 = isdefined(getgametypesetting(#"hash_451245a24412d90f")) ? getgametypesetting(#"hash_451245a24412d90f") : 0;
    level.var_42dca1dd = isdefined(getgametypesetting(#"hash_6ae29c8144cb7659")) ? getgametypesetting(#"hash_6ae29c8144cb7659") : 0;
    level.var_8e1c2aa1 = isdefined(getgametypesetting(#"hash_35e9fc8eee6881e0")) ? getgametypesetting(#"hash_35e9fc8eee6881e0") : 0;
    level.var_5d96cc20 = isdefined(getgametypesetting(#"hash_7adb62a64c6d963")) ? getgametypesetting(#"hash_7adb62a64c6d963") : 0;
    level.var_b6752258 = isdefined(getgametypesetting(#"hash_1df445b9d1af641f")) ? getgametypesetting(#"hash_1df445b9d1af641f") : 0;
    level.var_173b2973 = isdefined(getgametypesetting(#"hash_96215e6d55c4b2b")) ? getgametypesetting(#"hash_96215e6d55c4b2b") : 0;
    level.var_87e0e72d = isdefined(getgametypesetting(#"hash_3e1bb1840c4ab667")) ? getgametypesetting(#"hash_3e1bb1840c4ab667") : 0;
    level.var_a3354733 = isdefined(getgametypesetting(#"hash_312848239629f5b9")) ? getgametypesetting(#"hash_312848239629f5b9") : 0;
    level waittill(#"game_playing");
    for (;;) {
        wait(level.var_df437ed2);
        playerschecked = 0;
        players = getplayers();
        foreach (player in players) {
            if (!isdefined(player) || !isplayer(player) || isbot(player)) {
                continue;
            }
            if (player controllerparticipationcheck()) {
                playerschecked++;
            }
            if (12 <= playerschecked) {
                waitframe(1);
            }
        }
    }
}

// Namespace challenges/challenges_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xf057dd46, Offset: 0x3a48
// Size: 0x4c
function getfinalkill(player) {
    if (isplayer(player)) {
        player stats::function_dad108fa(#"get_final_kill", 1);
    }
}

// Namespace challenges/challenges_shared
// Params 3, eflags: 0x2 linked
// Checksum 0xfa23407d, Offset: 0x3aa0
// Size: 0xdc
function destroy_killstreak_vehicle(weapon, vehicle, hatchet_kill_stat) {
    if (!isplayer(self) || !isdefined(weapon)) {
        return;
    }
    controlled = isdefined(vehicle.controlled) ? vehicle.controlled : 1;
    self destroyscorestreak(weapon, controlled, 1, 1, vehicle);
    if (weapon.rootweapon.name == "hatchet" && isdefined(hatchet_kill_stat)) {
        self stats::function_dad108fa(hatchet_kill_stat, 1);
    }
}

// Namespace challenges/challenges_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x67fd33, Offset: 0x3b88
// Size: 0x114
function capturedcrate(owner) {
    if (isdefined(self.lastrescuedby) && isdefined(self.lastrescuedtime)) {
        if (self.lastrescuedtime + 5000 > gettime()) {
            self.lastrescuedby stats::function_dad108fa(#"defend_teammate_who_captured_package", 1);
        }
    }
    if (owner == self) {
        self stats::function_dad108fa(#"capture_own_carepackage", 1);
    } else if (level.teambased && owner.team != self.team || !level.teambased) {
        self stats::function_dad108fa(#"capture_enemy_carepackage", 1);
    }
    self contracts::increment_contract(#"hash_3cdc6d90fcaff928");
}

// Namespace challenges/challenges_shared
// Params 5, eflags: 0x2 linked
// Checksum 0xbcd743de, Offset: 0x3ca8
// Size: 0x92c
function destroyscorestreak(weapon, playercontrolled, groundbased, countaskillstreakvehicle = 1, var_ba3b7192) {
    if (!isplayer(self) || !isdefined(weapon)) {
        return;
    }
    if (groundbased) {
        self stats::function_dad108fa(#"destroy_groundbased_scorestreak", 1);
        self stats::function_e24eec31(weapon, #"hash_8fafad87a8bd288", 1);
    } else {
        self stats::function_e24eec31(weapon, #"hash_4c3e48c162ff0279", 1);
    }
    if (isdefined(level.killstreakweapons[weapon])) {
        if (level.killstreakweapons[weapon] == "dart") {
            self stats::function_dad108fa(#"destroy_scorestreak_with_dart", 1);
        }
        self stats::function_dad108fa(#"hash_e085a5f8fda7fec", 1);
        self stats::function_dad108fa(#"hash_9eb7f104b26e17c", 1);
    } else if (weapon.issignatureweapon) {
        self stats::function_dad108fa(#"destroy_scorestreak_with_specialist", 1);
    } else {
        if (self isinvehicle()) {
            self stats::function_dad108fa(#"hash_9eb7f104b26e17c", 1);
            vehicle = self getvehicleoccupied();
            vehicledriver = vehicle getseatoccupant(0);
            if (isdefined(vehicledriver) && vehicledriver != self) {
                vehicledriver stats::function_dad108fa(#"hash_9eb7f104b26e17c", 1);
            }
        }
        weaponclass = util::getweaponclass(weapon);
        weaponclass = isstring(weaponclass) ? hash(weaponclass) : weaponclass;
        if (weaponclass === #"weapon_launcher") {
            self stats::function_dad108fa(#"hash_be93d1227e6db1", 1);
            self stats::function_dad108fa(#"hash_6b344091a61ea57a", 1);
            self stats::function_dad108fa(#"hash_6b343b91a61e9cfb", 1);
            self stats::function_dad108fa(#"hash_689e13f25737ea0", 1);
            self stats::function_dad108fa(#"hash_6b343a91a61e9b48", 1);
            self stats::function_dad108fa(#"hash_6b343d91a61ea061", 1);
        }
    }
    if (playercontrolled === 1) {
        self stats::function_dad108fa(#"hash_56bb9eba7da13617", 1);
    } else if (self function_6c32d092(#"talent_coldblooded")) {
        self stats::function_dad108fa(#"destroy_ai_scorestreak_coldblooded", 1);
    }
    if (!isdefined(self.pers[#"challenge_destroyed_killstreak"])) {
        self.pers[#"challenge_destroyed_killstreak"] = 0;
    }
    self.pers[#"challenge_destroyed_killstreak"]++;
    if (self.pers[#"challenge_destroyed_killstreak"] >= 5) {
        self.pers[#"challenge_destroyed_killstreak"] = 0;
        self stats::function_e24eec31(weapon, #"destroy_5_killstreak", 1);
        self stats::function_e24eec31(weapon, #"destroy_5_killstreak_vehicle", 1);
    }
    if (weapon.statname !== #"special_crossbow_t9") {
        self stats::function_e24eec31(weapon, #"hash_114572b44a79e990", 1);
    }
    self stats::function_e24eec31(weapon, #"hash_497df827743010c3", 1);
    self stats::function_e24eec31(weapon, #"hash_67536f932f6aeb36", 1);
    self function_38ad2427(#"hash_450f99ce50083544", 1);
    self stats::function_dad108fa(#"hash_5d209f828d9bbd96", 1);
    self stats::function_dad108fa(#"hash_55becb3a18f3c612", 1);
    self stats::function_dad108fa(#"hash_73653f3482eed5a1", 1);
    self stats::function_dad108fa(#"hash_2fe91bb302563c57", 1);
    self stats::function_dad108fa(#"hash_3cec8f96e8988e85", 1);
    self stats::function_dad108fa(#"hash_2fe91ab302563aa4", 1);
    if (self function_6c32d092(#"talent_engineer")) {
        self stats::function_dad108fa(#"destroy_scorestreaks_equipment_engineer", 1);
        self contracts::increment_contract(#"hash_448a34bf383a87a6", 1);
    }
    if (isdefined(weapon.attachments) && weapon.attachments.size > 0) {
        if (isdefined(weaponclass) && weaponclass == #"weapon_launcher") {
            if (self weaponhasattachmentandunlocked(weapon, "fastreload")) {
                self stats::function_dad108fa(#"hash_4b19afce40dfc918", 1);
            }
        }
    }
    var_d9906cca = level.killstreaks[var_ba3b7192.killstreaktype].script_bundle;
    if (!(isdefined(var_d9906cca.var_192bb442) ? var_d9906cca.var_192bb442 : 0)) {
        if ((isdefined(level.scorestreak_kills[var_ba3b7192.killstreakid]) ? level.scorestreak_kills[var_ba3b7192.killstreakid] : 0) == 0) {
            self stats::function_dad108fa(#"hash_760e917a4024491a", 1);
        }
    }
    if (isdefined(level.var_c8de519d) && isdefined(level.var_c8de519d.var_ec391d55)) {
        self [[ level.var_c8de519d.var_ec391d55 ]](weapon, playercontrolled, groundbased, countaskillstreakvehicle);
    }
    self thread watchforrapiddestroy(weapon);
}

// Namespace challenges/challenges_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xbd7a6dd4, Offset: 0x45e0
// Size: 0x46c
function function_24db0c33(weapon = level.weaponnone, destroyedobject) {
    weaponclass = util::getweaponclass(weapon);
    weaponclass = isstring(weaponclass) ? hash(weaponclass) : weaponclass;
    weaponpickedup = 0;
    if (isdefined(self.pickedupweapons) && isdefined(self.pickedupweapons[weapon])) {
        weaponpickedup = 1;
    }
    self stats::function_eec52333(weapon, #"destroyed", 1, self.class_num, weaponpickedup);
    var_e535460 = self function_6c32d092(#"talent_engineer");
    if (var_e535460) {
        self stats::function_dad108fa(#"destroy_scorestreaks_equipment_engineer", 1);
        self contracts::increment_contract(#"hash_448a34bf383a87a6", 1);
    }
    if (weaponclass === #"weapon_launcher") {
        self stats::function_dad108fa(#"hash_be93d1227e6db1", 1);
        self stats::function_dad108fa(#"hash_6b344091a61ea57a", 1);
        self stats::function_dad108fa(#"hash_6b343b91a61e9cfb", 1);
        self stats::function_dad108fa(#"hash_689e13f25737ea0", 1);
        self stats::function_dad108fa(#"hash_6b343a91a61e9b48", 1);
        self stats::function_dad108fa(#"hash_6b343d91a61ea061", 1);
        if (isdefined(weapon.attachments) && weapon.attachments.size > 0) {
            if (self weaponhasattachmentandunlocked(weapon, "fastreload")) {
                self stats::function_dad108fa(#"hash_4b19afce40dfc918", 1);
            }
        }
    }
    if (destroyedobject.var_62c1bfaa === 1) {
        self contracts::increment_contract(#"hash_26b4158b49b2e43f");
        if (weapon.isbulletweapon && (sessionmodeismultiplayergame() || sessionmodeiswarzonegame())) {
            self stats::function_dad108fa(#"hash_6cc53905c5a9ce6f", 1);
        }
        if (var_e535460) {
            self stats::function_dad108fa(#"hash_ad0d6648c240285", 1);
            self stats::function_dad108fa(#"hash_73579fbf50ae9cb6", 1);
        }
        self stats::function_dad108fa(#"hash_68179bba77f0a8aa", 1);
        self stats::function_dad108fa(#"hash_681796ba77f0a02b", 1);
        self stats::function_dad108fa(#"hash_54f62feef023cb4f", 1);
        self stats::function_dad108fa(#"hash_681795ba77f09e78", 1);
    }
}

// Namespace challenges/challenges_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x2e93a292, Offset: 0x4a58
// Size: 0xbc
function watchforrapiddestroy(weapon) {
    self endon(#"disconnect");
    if (!isdefined(self.challenge_previousdestroyweapon) || self.challenge_previousdestroyweapon != weapon) {
        self.challenge_previousdestroyweapon = weapon;
        self.challenge_previousdestroycount = 0;
    } else {
        self.challenge_previousdestroycount++;
    }
    self waittilltimeoutordeath(4);
    if (self.challenge_previousdestroycount > 1) {
        self stats::function_e24eec31(weapon, #"destroy_2_killstreaks_rapidly", 1);
    }
}

// Namespace challenges/challenges_shared
// Params 1, eflags: 0x0
// Checksum 0x9e044dca, Offset: 0x4b20
// Size: 0xb6
function function_783313d8(player) {
    player.var_7998aa31 = undefined;
    if (player isinvehicle()) {
        vehicle = player getvehicleoccupied();
        vehicledriver = isdefined(vehicle player_vehicle::get_vehicle_driver()) ? vehicle player_vehicle::get_vehicle_driver() : vehicle.var_735382e;
    } else {
        vehicledriver = player.var_c0f5ab51;
    }
    if (isdefined(vehicledriver)) {
        player.var_7998aa31 = vehicledriver;
    }
}

// Namespace challenges/challenges_shared
// Params 2, eflags: 0x0
// Checksum 0xaa9c7d39, Offset: 0x4be0
// Size: 0x706
function capturedobjective(capturetime, objective) {
    var_52e682ae = 0;
    var_b9be4dca = capturetime - 14000;
    if (isdefined(self.var_e0e2e070)) {
        foreach (var_96138b54 in self.var_e0e2e070) {
            if (!isdefined(var_96138b54)) {
                continue;
            }
            if (var_96138b54.var_6f327e4a < var_b9be4dca) {
                continue;
            }
            if (distancesquared(var_96138b54.position, self.origin) < 57600) {
                var_52e682ae = 1;
                break;
            }
        }
    }
    if (var_52e682ae) {
        if (self util::is_item_purchased(#"willy_pete")) {
            scoreevents::processscoreevent(#"hash_1782d884df525a0e", self);
            self contracts::increment_contract(#"hash_199eb498b6c0cdbe", 1);
        }
        self stats::function_622feb0d(#"willy_pete", #"hash_7542f0d7d9ea6e78", 1);
        self stats::function_6fb0b113(#"willy_pete", #"hash_434a5a95d07bf751");
        self stats::function_622feb0d(#"willy_pete", #"hash_45ef9ed5d55c6e43", 1);
    }
    if (level.var_9bb99713 === 1) {
        friendlyplayers = getfriendlyplayers(self.team);
        foreach (friendlyplayer in friendlyplayers) {
            if (!isplayer(friendlyplayer)) {
                continue;
            }
            if (friendlyplayer == self) {
                continue;
            }
            if (!isdefined(friendlyplayer.var_e0e2e070)) {
                continue;
            }
            foreach (var_96138b54 in friendlyplayer.var_e0e2e070) {
                if (!isdefined(var_96138b54)) {
                    continue;
                }
                if (var_96138b54.var_6f327e4a < var_b9be4dca) {
                    continue;
                }
                if (distancesquared(var_96138b54.position, self.origin) < 57600) {
                    friendlyplayer stats::function_622feb0d(#"willy_pete", #"hash_52fbd3f855752244", 1);
                    break;
                }
            }
        }
    }
    if (isdefined(objective)) {
        if (isdefined(level.capturedobjectivefunction) && isdefined(capturetime)) {
            self [[ level.capturedobjectivefunction ]](objective, capturetime);
        }
        if (self.challenge_objectivedefensive === objective) {
            if ((isdefined(self.challenge_objectivedefensivekillcount) ? self.challenge_objectivedefensivekillcount : 0) > 0 && ((isdefined(self.recentkillcount) ? self.recentkillcount : 0) > 2 || self.challenge_objectivedefensivetriplekillmedalorbetterearned === 1)) {
                self stats::function_dad108fa(#"triple_kill_defenders_and_capture", 1);
            }
            self.challenge_objectivedefensivekillcount = 0;
            self.challenge_objectivedefensive = undefined;
            self.challenge_objectivedefensivetriplekillmedalorbetterearned = undefined;
        }
    }
    if (isdefined(self.var_7998aa31)) {
        if (self isinvehicle() || isdefined(self.var_3a76b3aa) && self.var_3a76b3aa + 5000 >= gettime()) {
            drivervehicle = isdefined(self.var_6309c512) ? self.var_6309c512 : self getvehicleoccupied();
            if (self.var_7998aa31 == self) {
                scoreevents::processscoreevent(#"infil", self);
                self stats::function_7fd36562(drivervehicle.scriptvehicletype, #"hash_27f1ef935d43363", 1);
            } else {
                scoreevents::processscoreevent(#"hash_18efe678457ab4e9", self.var_7998aa31);
                self.var_7998aa31 stats::function_7fd36562(drivervehicle.scriptvehicletype, #"hash_5a59385e0f80e1ae", 1);
            }
            self stats::function_7fd36562(drivervehicle.scriptvehicletype, #"hash_3c58ef545d7d757e", 1);
            if (isdefined(drivervehicle.session)) {
                drivervehicle.session.var_7db0543d++;
            }
        }
        self.var_7998aa31 = undefined;
    }
    self stats::function_dad108fa(#"hash_46a88cf34bc4309f", 1);
    self stats::function_dad108fa(#"hash_46a88bf34bc42eec", 1);
    self notify(#"capturedobjective", {#capturetime:capturetime, #var_eced93f5:objective});
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xe4640181, Offset: 0x52f0
// Size: 0x44
function hackedordestroyedequipment() {
    if (self util::has_hacker_perk_purchased_and_equipped()) {
        self stats::function_dad108fa(#"perk_hacker_destroy", 1);
    }
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x0
// Checksum 0xaf0de36f, Offset: 0x5340
// Size: 0xb4
function bladekill() {
    if (!isdefined(self.pers[#"bladekills"])) {
        self.pers[#"bladekills"] = 0;
    }
    self.pers[#"bladekills"]++;
    if (self.pers[#"bladekills"] >= 15) {
        self.pers[#"bladekills"] = 0;
        self stats::function_dad108fa(#"kill_15_with_blade", 1);
    }
}

// Namespace challenges/challenges_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x722f1050, Offset: 0x5400
// Size: 0x4c
function destroyedexplosive(weapon) {
    self destroyedequipment(weapon);
    self stats::function_dad108fa(#"destroy_explosive", 1);
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xe5e887d0, Offset: 0x5458
// Size: 0x2c
function assisted() {
    self stats::function_dad108fa(#"assist", 1);
}

// Namespace challenges/challenges_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x8b61e847, Offset: 0x5490
// Size: 0xf4
function earnedmicrowaveassistscore(score) {
    self stats::function_dad108fa(#"assist_score_microwave_turret", score);
    self stats::function_dad108fa(#"assist_score_killstreak", score);
    self stats::function_e24eec31(getweapon(#"microwave_turret_deploy"), #"assists", 1);
    self stats::function_e24eec31(getweapon(#"microwave_turret_deploy"), #"assist_score", score);
    self contracts::increment_contract(#"hash_4840654e4b2597a5", score);
}

// Namespace challenges/challenges_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xf3e0162a, Offset: 0x5590
// Size: 0xf4
function earnedcuavassistscore(score) {
    self stats::function_dad108fa(#"assist_score_cuav", score);
    self stats::function_dad108fa(#"assist_score_killstreak", score);
    self stats::function_e24eec31(getweapon(#"counteruav"), #"assists", 1);
    self stats::function_e24eec31(getweapon(#"counteruav"), #"assist_score", score);
    self contracts::increment_contract(#"hash_4840654e4b2597a5", score);
}

// Namespace challenges/challenges_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x5f6e33ab, Offset: 0x5690
// Size: 0xf4
function earneduavassistscore(score) {
    self stats::function_dad108fa(#"assist_score_uav", score);
    self stats::function_dad108fa(#"assist_score_killstreak", score);
    self stats::function_e24eec31(getweapon(#"uav"), #"assists", 1);
    self stats::function_e24eec31(getweapon(#"uav"), #"assist_score", score);
    self contracts::increment_contract(#"hash_4840654e4b2597a5", score);
}

// Namespace challenges/challenges_shared
// Params 1, eflags: 0x0
// Checksum 0xffbd3ff2, Offset: 0x5790
// Size: 0xf4
function earnedsatelliteassistscore(score) {
    self stats::function_dad108fa(#"assist_score_satellite", score);
    self stats::function_dad108fa(#"assist_score_killstreak", score);
    self stats::function_e24eec31(getweapon(#"satellite"), #"assists", 1);
    self stats::function_e24eec31(getweapon(#"satellite"), #"assist_score", score);
    self contracts::increment_contract(#"hash_4840654e4b2597a5", score);
}

// Namespace challenges/challenges_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x5f7b3e21, Offset: 0x5890
// Size: 0xf4
function earnedempassistscore(score) {
    self stats::function_dad108fa(#"assist_score_emp", score);
    self stats::function_dad108fa(#"assist_score_killstreak", score);
    self stats::function_e24eec31(getweapon(#"emp_turret"), #"assists", 1);
    self stats::function_e24eec31(getweapon(#"emp_turret"), #"assist_score", score);
    self contracts::increment_contract(#"hash_4840654e4b2597a5", score);
}

// Namespace challenges/challenges_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x2d51467b, Offset: 0x5990
// Size: 0x9c
function teamcompletedchallenge(team, challenge) {
    players = getplayers();
    for (i = 0; i < players.size; i++) {
        if (isdefined(players[i].team) && players[i].team == team) {
            players[i] stats::function_d40764f3(challenge, 1);
        }
    }
}

// Namespace challenges/challenges_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x6f51b213, Offset: 0x5a38
// Size: 0x52
function endedearly(winner, tie) {
    if (level.hostforcedend) {
        return true;
    }
    if (!isdefined(winner)) {
        return true;
    }
    if (level.teambased) {
        if (tie) {
            return true;
        }
    }
    return false;
}

// Namespace challenges/challenges_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x356f260b, Offset: 0x5a98
// Size: 0xbc
function getlosersteamscores(winner) {
    teamscores = 0;
    foreach (team, _ in level.teams) {
        if (team == winner) {
            continue;
        }
        teamscores += game.stat[#"teamscores"][team];
    }
    return teamscores;
}

// Namespace challenges/challenges_shared
// Params 2, eflags: 0x0
// Checksum 0xbc8a8751, Offset: 0x5b60
// Size: 0xb2
function didloserfailchallenge(winner, challenge) {
    foreach (team, _ in level.teams) {
        if (team == winner) {
            continue;
        }
        if (game.challenge[team][challenge]) {
            return false;
        }
    }
    return true;
}

// Namespace challenges/challenges_shared
// Params 1, eflags: 0x0
// Checksum 0xf9ece9bc, Offset: 0x5c20
// Size: 0xb6
function challengegameend(data) {
    player = data.player;
    winner = data.winner;
    if (endedearly(winner, winner == "tie")) {
        return;
    }
    if (level.teambased) {
        winnerscore = game.stat[#"teamscores"][winner];
        loserscore = getlosersteamscores(winner);
    }
}

// Namespace challenges/challenges_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xe6984ee0, Offset: 0x5ce0
// Size: 0x360
function multikill(killcount, weapon) {
    if (!sessionmodeismultiplayergame() && !sessionmodeiswarzonegame()) {
        return;
    }
    self stats::function_dad108fa(#"hash_31aba70cdac22dab", 1);
    self stats::function_bcf9602(#"hash_5a978e436e7428e", 1, #"hash_6abe83944d701459");
    weaponclass = util::getweaponclass(weapon);
    weaponclass = isstring(weaponclass) ? hash(weaponclass) : weaponclass;
    if (weaponclass === #"weapon_smg") {
        self stats::function_dad108fa(#"hash_59b46a27ebbdb7d0", 1);
    }
    doublekill = int(killcount / 2);
    if (doublekill > 0) {
        if (weapon.isheavyweapon) {
            self stats::function_dad108fa(#"multikill_2_with_heroweapon", doublekill);
        }
    }
    triplekill = int(killcount / 3);
    if (triplekill > 0) {
        if (isdefined(self.lastkillwheninjured)) {
            if (self.lastkillwheninjured + 5000 > gettime()) {
                self stats::function_dad108fa(#"multikill_3_near_death", 1);
            }
        }
        if (weapon.isheavyweapon) {
            self stats::function_dad108fa(#"multikill_3_with_heroweapon", triplekill);
        }
        self stats::function_dad108fa(#"hash_63afeb1820e32bc2", 1);
        self stats::function_dad108fa(#"hash_42d584c6dc3908bb", 1);
    }
    if (killcount >= 4) {
        self stats::function_dad108fa(#"hash_580adbed89cd7532", 1);
    }
    if (isdefined(self.var_ea1458aa)) {
        if (!isdefined(self.var_ea1458aa.var_e0bfa611)) {
            self.var_ea1458aa.var_e0bfa611 = 0;
        }
        self.var_ea1458aa.var_e0bfa611++;
        self function_a4db0a4c();
    }
    if (isdefined(level.var_c8de519d.multikill)) {
        self [[ level.var_c8de519d.multikill ]](killcount, weapon, globallogic_score::function_3cbc4c6c(weapon.var_2e4a8800));
    }
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xe8f034b3, Offset: 0x6048
// Size: 0xaa
function function_a4db0a4c() {
    if (!isdefined(self.var_ea1458aa.var_e0bfa611)) {
        return;
    }
    if (!isdefined(self.var_ea1458aa.var_2bad4cbb)) {
        return;
    }
    if (self.var_ea1458aa.var_e0bfa611 > 0 && self.var_ea1458aa.var_2bad4cbb > 0) {
        self stats::function_dad108fa(#"hash_5803a1b332accd42", 1);
        self.var_ea1458aa.var_e0bfa611 = undefined;
        self.var_ea1458aa.var_2bad4cbb = undefined;
    }
}

// Namespace challenges/challenges_shared
// Params 1, eflags: 0x0
// Checksum 0xff66cff3, Offset: 0x6100
// Size: 0x34
function domattackermultikill(*killcount) {
    self stats::function_d40764f3(#"kill_2_enemies_capturing_your_objective", 1);
}

// Namespace challenges/challenges_shared
// Params 1, eflags: 0x0
// Checksum 0x64720fe, Offset: 0x6140
// Size: 0x2c
function totaldomination(team) {
    teamcompletedchallenge(team, "control_3_points_3_minutes");
}

// Namespace challenges/challenges_shared
// Params 2, eflags: 0x0
// Checksum 0xb793ac4c, Offset: 0x6178
// Size: 0xbc
function holdflagentirematch(team, label) {
    switch (label) {
    case #"_a":
        event = "hold_a_entire_match";
        break;
    case #"_b":
        event = "hold_b_entire_match";
        break;
    case #"_c":
        event = "hold_c_entire_match";
        break;
    default:
        return;
    }
    teamcompletedchallenge(team, event);
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x0
// Checksum 0x295ec03, Offset: 0x6240
// Size: 0x2c
function function_f96312cb() {
    self stats::function_d40764f3(#"capture_b_first_minute", 1);
}

// Namespace challenges/challenges_shared
// Params 1, eflags: 0x0
// Checksum 0xde39f28c, Offset: 0x6278
// Size: 0x2c
function controlzoneentirely(team) {
    teamcompletedchallenge(team, "control_zone_entirely");
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x8ee123ee, Offset: 0x62b0
// Size: 0x2c
function multi_lmg_smg_kill() {
    self stats::function_dad108fa(#"multikill_3_lmg_or_smg_hip_fire", 1);
}

// Namespace challenges/challenges_shared
// Params 1, eflags: 0x0
// Checksum 0x4517fd0c, Offset: 0x62e8
// Size: 0x74
function killedzoneattacker(weapon) {
    if (weapon.statname == #"planemortar" || weapon.statname == "remote_missile_missile" || weapon.name == #"remote_missile_bomblet") {
        self thread updatezonemultikills();
    }
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x0
// Checksum 0xddfe642b, Offset: 0x6368
// Size: 0x11c
function killeddog() {
    origin = self.origin;
    if (level.teambased) {
        teammates = function_a1ef346b(self.team);
        foreach (player in teammates) {
            if (player == self) {
                continue;
            }
            distsq = distancesquared(origin, player.origin);
            if (distsq < 57600) {
                self stats::function_dad108fa(#"killed_dog_close_to_teammate", 1);
                break;
            }
        }
    }
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x36c839ee, Offset: 0x6490
// Size: 0xb6
function updatezonemultikills() {
    self endon(#"disconnect");
    level endon(#"game_ended");
    self notify(#"updaterecentzonekills");
    self endon(#"updaterecentzonekills");
    if (!isdefined(self.recentzonekillcount)) {
        self.recentzonekillcount = 0;
    }
    self.recentzonekillcount++;
    wait(4);
    if (self.recentzonekillcount > 1) {
        self stats::function_dad108fa(#"multikill_2_zone_attackers", 1);
    }
    self.recentzonekillcount = 0;
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xe554be35, Offset: 0x6550
// Size: 0x2c
function multi_rcbomb_kill() {
    self stats::function_dad108fa(#"multikill_2_with_rcbomb", 1);
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x31617067, Offset: 0x6588
// Size: 0x2c
function function_46754062() {
    self stats::function_dad108fa(#"hash_709699a31c8f89f7", 1);
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xf527af22, Offset: 0x65c0
// Size: 0x2c
function multi_remotemissile_kill() {
    self stats::function_dad108fa(#"multikill_3_remote_missile", 1);
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xff403c2f, Offset: 0x65f8
// Size: 0x2c
function multi_mgl_kill() {
    self stats::function_dad108fa(#"multikill_3_with_mgl", 1);
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x0
// Checksum 0x2e1ff793, Offset: 0x6630
// Size: 0x2c
function immediatecapture() {
    self stats::function_d40764f3(#"immediate_capture", 1);
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x0
// Checksum 0x9a1a1230, Offset: 0x6668
// Size: 0x2c
function killedlastcontester() {
    self stats::function_d40764f3(#"contest_then_capture", 1);
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x0
// Checksum 0xebdb36f5, Offset: 0x66a0
// Size: 0x2c
function bothbombsdetonatewithintime() {
    self stats::function_d40764f3(#"both_bombs_detonate_10_seconds", 1);
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xe2c1666d, Offset: 0x66d8
// Size: 0xcc
function calledincarepackage() {
    self.pers[#"carepackagescalled"]++;
    if (self.pers[#"carepackagescalled"] >= 3) {
        self stats::function_dad108fa(#"call_in_3_care_packages", 1);
        self.pers[#"carepackagescalled"] = 0;
    }
    self stats::function_dad108fa(#"hash_5ca3004cfbc713c4", 1);
    self stats::function_dad108fa(#"hash_5ca3014cfbc71577", 1);
}

// Namespace challenges/challenges_shared
// Params 5, eflags: 0x2 linked
// Checksum 0x7168328c, Offset: 0x67b0
// Size: 0xbc
function destroyedhelicopter(attacker, weapon, damagetype, playercontrolled, vehicle) {
    if (!isplayer(attacker)) {
        return;
    }
    attacker destroyedaircraft(attacker, weapon, playercontrolled, vehicle, 1);
    if (isdefined(damagetype) && (damagetype == "MOD_RIFLE_BULLET" || damagetype == "MOD_PISTOL_BULLET")) {
        attacker stats::function_dad108fa(#"destroyed_helicopter_with_bullet", 1);
    }
}

// Namespace challenges/challenges_shared
// Params 3, eflags: 0x0
// Checksum 0xfc70e8bd, Offset: 0x6878
// Size: 0xcc
function destroyedqrdrone(damagetype, weapon, drone) {
    self destroyscorestreak(weapon, 1, 0, 1, drone);
    self stats::function_dad108fa(#"destroy_qrdrone", 1);
    if (damagetype == "MOD_RIFLE_BULLET" || damagetype == "MOD_PISTOL_BULLET") {
        self stats::function_dad108fa(#"destroyed_qrdrone_with_bullet", 1);
    }
    self destroyedplayercontrolledaircraft();
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x21254c6a, Offset: 0x6950
// Size: 0x4c
function destroyedplayercontrolledaircraft() {
    if (self hasperk(#"specialty_noname")) {
        self stats::function_dad108fa(#"destroy_helicopter", 1);
    }
}

// Namespace challenges/challenges_shared
// Params 5, eflags: 0x2 linked
// Checksum 0xbd30cb4b, Offset: 0x69a8
// Size: 0x384
function destroyedaircraft(attacker, weapon, playercontrolled, vehicle, var_91d2e813) {
    if (!isplayer(attacker)) {
        return;
    }
    attacker destroyscorestreak(weapon, playercontrolled, 0, 1, vehicle);
    attacker stats::function_dad108fa(#"hash_7a62575cacc70aab", 1);
    attacker contracts::increment_contract(#"hash_e8dfae9aa3ccf27");
    if (isdefined(weapon)) {
        killstreaks::function_47b44bcc(attacker, weapon, 1);
        if (weapon.name == #"emp" && attacker util::is_item_purchased(#"killstreak_emp")) {
            attacker stats::function_dad108fa(#"destroy_aircraft_with_emp", 1);
        } else if (weapon.name == #"missile_drone_projectile" || weapon.name == #"missile_drone") {
            attacker stats::function_dad108fa(#"destroy_aircraft_with_missile_drone", 1);
        } else if (weapon.isbulletweapon) {
            attacker stats::function_dad108fa(#"shoot_aircraft", 1);
        }
    }
    if (attacker util::has_blind_eye_perk_purchased_and_equipped()) {
        attacker stats::function_dad108fa(#"perk_nottargetedbyairsupport_destroy_aircraft", 1);
    }
    attacker stats::function_dad108fa(#"destroy_aircraft", 1);
    attacker stats::function_dad108fa(#"hash_7dab2161d3681f85", 1);
    weaponclass = util::getweaponclass(weapon);
    weaponclass = isstring(weaponclass) ? hash(weaponclass) : weaponclass;
    if (weaponclass === #"weapon_launcher") {
        if (var_91d2e813 === 1) {
            attacker stats::function_dad108fa(#"hash_32a02036b210e14d", 1);
        }
        attacker stats::function_dad108fa(#"hash_5f20e4f510b85f5e", 1);
    }
    if (playercontrolled === 0) {
        if (attacker util::has_blind_eye_perk_purchased_and_equipped()) {
            attacker stats::function_dad108fa(#"destroy_ai_aircraft_using_blindeye", 1);
        }
    }
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x8d9a308e, Offset: 0x6d38
// Size: 0x1a4
function killstreakten() {
    if (!isdefined(self.class_num)) {
        return;
    }
    primary = self getloadoutitem(self.class_num, "primary");
    if (primary != 0) {
        return;
    }
    secondary = self getloadoutitem(self.class_num, "secondary");
    if (secondary != 0) {
        return;
    }
    primarygrenade = self getloadoutitem(self.class_num, "primarygrenade");
    if (primarygrenade != 0) {
        return;
    }
    specialgrenade = self getloadoutitem(self.class_num, "specialgrenade");
    if (specialgrenade != 0) {
        return;
    }
    for (numspecialties = 0; numspecialties < level.maxspecialties; numspecialties++) {
        perk = self getloadoutitem(self.class_num, "specialty" + numspecialties + 1);
        if (perk != 0) {
            return;
        }
    }
    self stats::function_dad108fa(#"killstreak_10_no_weapons_perks", 1);
}

// Namespace challenges/challenges_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xb3023bc6, Offset: 0x6ee8
// Size: 0xc0
function scavengedgrenade(weapon) {
    self endon(#"disconnect", #"death");
    self notify("3c35a536d34f20a3");
    self endon("3c35a536d34f20a3");
    self callback::callback(#"scavenged_primary_grenade", {#weapon:weapon});
    for (;;) {
        self waittill(#"lethalgrenadekill");
        self stats::function_dad108fa(#"kill_with_resupplied_lethal_grenade", 1);
    }
}

// Namespace challenges/challenges_shared
// Params 1, eflags: 0x0
// Checksum 0xad7c1b37, Offset: 0x6fb0
// Size: 0xc
function stunnedtankwithempgrenade(*attacker) {
    
}

// Namespace challenges/challenges_shared
// Params 9, eflags: 0x2 linked
// Checksum 0x886bfc1f, Offset: 0x6fc8
// Size: 0x1ea8
function playerkilled(einflictor, attacker, idamage, smeansofdeath, weapon, shitloc, attackerstance, bledout, var_f3c114a7) {
    profileNamedStart(#"");
    if (!isdefined(weapon)) {
        weapon = level.weaponnone;
    } else {
        weaponclass = util::getweaponclass(weapon);
        weaponclass = isstring(weaponclass) ? hash(weaponclass) : weaponclass;
    }
    self endon(#"disconnect");
    data = spawnstruct();
    data.results = spawnstruct();
    var_5fceefd4 = self getplayerangles();
    victim = self;
    data.victim = victim;
    victim.var_1318544a = data;
    data.victimorigin = self.origin;
    data.var_5fceefd4 = var_5fceefd4;
    data.victimforward = anglestoforward(var_5fceefd4);
    data.victimstance = self getstance();
    data.var_241836bd = self getplayercamerapos();
    data.einflictor = einflictor;
    data.attacker = attacker;
    data.attackerstance = attackerstance;
    data.idamage = idamage;
    data.smeansofdeath = smeansofdeath;
    data.weapon = weapon;
    data.weaponclass = weaponclass;
    data.shitloc = shitloc;
    data.time = gettime();
    data.bledout = 0;
    if (isdefined(bledout)) {
        data.bledout = bledout;
    }
    washacked = 0;
    if (isdefined(einflictor)) {
        if (isdefined(einflictor.lastweaponbeforetoss)) {
            data.lastweaponbeforetoss = einflictor.lastweaponbeforetoss;
        }
        if (isdefined(einflictor.ownerweaponatlaunch)) {
            data.ownerweaponatlaunch = einflictor.ownerweaponatlaunch;
        }
        if (isdefined(einflictor.var_72ed30b7)) {
            data.var_84a369d1 = 1;
        }
        washacked = einflictor util::ishacked();
        if (isdefined(einflictor.stucktoplayer) && isdefined(einflictor.originalowner) && einflictor.stucktoplayer == self && einflictor.originalowner == attacker) {
            data.var_c274d62f = 1;
        }
    }
    victimentnum = victim getentitynumber();
    data.washacked = washacked;
    data.wasplanting = victim.isplanting;
    data.wasunderwater = victim isplayerunderwater();
    data.var_e828179e = victim depthinwater();
    if (!isdefined(data.wasplanting)) {
        data.wasplanting = 0;
    }
    data.wasdefusing = victim.isdefusing;
    if (!isdefined(data.wasdefusing)) {
        data.wasdefusing = 0;
    }
    data.var_f0b3c772 = victim playerads();
    data.var_bd10969 = [];
    if (isarray(self.var_121392a1)) {
        foreach (effect in self.var_121392a1) {
            struct = spawnstruct();
            if (isdefined(effect.var_4f6b79a4)) {
                struct.var_2e4a8800 = effect.var_4f6b79a4.var_2e4a8800;
                struct.var_b5bddaea = spawnstruct();
                struct.var_b5bddaea.ishacked = effect.var_4f6b79a4.sourceent.ishacked;
                struct.var_b5bddaea.owner = effect.var_4f6b79a4.sourceent.owner;
            }
            struct.var_4b22e697 = effect.var_4b22e697;
            struct.var_3d1ed4bd = effect.var_3d1ed4bd;
            struct.name = effect.namehash;
            data.var_bd10969[struct.name] = struct;
        }
    }
    if (isdefined(victim.var_ea1458aa)) {
        data.var_6799f1da = victim.var_ea1458aa.var_6799f1da;
    }
    if (isdefined(victim.var_9cd2c51d)) {
        data.var_70763083 = victim.var_9cd2c51d.var_c54af9a9;
    }
    data.victimweapon = victim.currentweapon;
    data.victimonground = victim isonground();
    data.victimlaststunnedby = victim.laststunnedby;
    data.var_f150ae0c = victim.var_7da08929;
    data.var_da9749ea = victim.laststunnedtime;
    data.var_642d3a64 = victim.lastfiretime;
    data.victimelectrifiedby = victim.electrifiedby;
    data.victimwasinslamstate = victim isslamming();
    data.var_9fb5719b = victim function_90fe764c();
    data.var_893d5683 = victim.var_ae639436;
    data.var_59b78db0 = victim.var_700a5910;
    data.var_59a8c5c7 = victim.var_9cd2c51d.var_a063d754;
    data.var_5fa4aeed = isdefined(victim.lastattackedshieldtime) && victim.lastattackedshieldtime + 500 > gettime();
    data.var_90795a2c = victim util::function_14e61d05();
    data.var_f0b3c772 = victim playerads();
    data.var_d7dddd05 = victim.idflags;
    data.var_78e3b537 = victim.idflagstime;
    if (isdefined(data.victimweapon)) {
        slot = victim gadgetgetslot(data.victimweapon);
        if (slot != -1) {
            data.victimgadgetpower = victim gadgetpowerget(slot);
        }
        if (data.victimweapon.iscarriedkillstreak) {
            data.var_cb8ee1f0 = 1;
        }
    }
    if (isdefined(victim.in_enemy_mute_smoke) && victim.in_enemy_mute_smoke || isdefined(victim.var_2118ca55) && victim.var_2118ca55) {
        data.var_ab4f5741 = 1;
    }
    data.var_504c7a2f = victim.in_enemy_mute_smoke;
    data.var_7006e4f4 = victim.var_fd0be7bd;
    data.var_af1b39cb = victim.lastflashedby;
    data.var_e020b97e = victim function_c5000c67();
    data.var_ac7c0ef7 = victim function_6c32d092(#"talent_resistance");
    data.var_a79760b1 = victim status_effect::function_4617032e(5);
    data.var_dd195b6b = victim.var_a7679005;
    data.var_31310133 = victim.var_7ef2427c;
    data.var_9084d6e = victim status_effect::function_4617032e(2);
    data.var_157f4d3b = victim.var_a010bd8f;
    data.var_f048a359 = victim.var_9060b065;
    var_8e0c4587 = isdefined(victim getvehicleoccupied()) ? victim getvehicleoccupied() : victim.var_156bf46e;
    if (isdefined(var_8e0c4587) && !var_8e0c4587 isremotecontrol() && !(var_8e0c4587.vehicleclass === "artillery")) {
        if (victim.vehicleposition === 0) {
            data.var_8099aa99 = 1;
        } else {
            var_e082d5c = var_8e0c4587 seatgetweapon(victim.vehicleposition);
            if (is_true(var_e082d5c.var_29d24e37)) {
                data.var_58ecc225 = 1;
            }
        }
        data.var_89187b46 = 1;
        data.var_8e0c4587 = var_8e0c4587;
        data.var_4ff87ec1 = self.var_6089daa1;
    } else if (victim.var_3a76b3aa === data.time) {
        if (victim.var_65b3d786 === 0) {
            data.var_8099aa99 = 1;
        } else if (isdefined(victim.var_6309c512)) {
            var_e082d5c = victim.var_6309c512 seatgetweapon(victim.var_65b3d786);
            if (is_true(var_e082d5c.var_29d24e37)) {
                data.var_58ecc225 = 1;
            }
        }
        data.var_89187b46 = 1;
        data.var_8e0c4587 = victim.var_6309c512;
        data.var_4ff87ec1 = self.var_6089daa1;
    }
    data.var_f91a4dd6 = victim.recentkillcountsameweapon;
    data.var_8e5d0c71 = victim issprinting();
    data.var_5a900b8f = victim isparachuting();
    data.var_ae515dc9 = victim isskydiving();
    data.var_b4e7eecb = victim isonladder();
    data.var_fb4d11c6 = victim isziplining();
    data.var_c496a910 = victim function_b4813488();
    data.victim_jump_begin = victim.challenge_jump_begin;
    data.victim_jump_end = victim.challenge_jump_end;
    data.victim_swimming_begin = victim.challenge_swimming_begin;
    data.victim_swimming_end = victim.challenge_swimming_end;
    data.victim_slide_begin = victim.challenge_slide_begin;
    data.victim_slide_end = victim.challenge_slide_end;
    data.var_7c5ded5a = victim.var_d8783e02;
    data.var_4a01f856 = victim.var_9c19dd03;
    data.var_a1c9eb28 = victim.var_21b1a39;
    data.var_e05c79a4 = isplayer(victim) && victim isplayerswimming();
    if (isdefined(victim.var_50575fa8)) {
        data.var_83d5e1bd = arraycopy(victim.var_50575fa8);
    }
    if (isdefined(victim.activeproximitygrenades)) {
        data.victimactiveproximitygrenades = [];
        arrayremovevalue(victim.activeproximitygrenades, undefined);
        foreach (proximitygrenade in victim.activeproximitygrenades) {
            proximitygrenadeinfo = spawnstruct();
            proximitygrenadeinfo.origin = proximitygrenade.origin;
            data.victimactiveproximitygrenades[data.victimactiveproximitygrenades.size] = proximitygrenadeinfo;
        }
    }
    if (isdefined(victim.activebouncingbetties)) {
        data.victimactivebouncingbetties = [];
        arrayremovevalue(victim.activebouncingbetties, undefined);
        foreach (bouncingbetty in victim.activebouncingbetties) {
            bouncingbettyinfo = spawnstruct();
            bouncingbettyinfo.origin = bouncingbetty.origin;
            data.victimactivebouncingbetties[data.victimactivebouncingbetties.size] = bouncingbettyinfo;
        }
    }
    data.var_a99236f2 = victim.var_ead9cdbf;
    if (isstruct(victim.var_14e48fb5)) {
        data.var_9ef7e31 = structcopy(victim.var_14e48fb5);
    }
    if (isplayer(attacker)) {
        data.attackerorigin = attacker.origin;
        data.var_83634238 = attacker getplayerangles();
        data.attackerforward = anglestoforward(data.var_83634238);
        data.attackeronground = attacker isonground();
        data.attackertraversing = attacker istraversing();
        data.attackersliding = attacker issliding();
        data.var_1fa3e8cc = attacker function_104d7b4d();
        data.var_8556c722 = attacker isusingoffhand();
        data.killstreaktype = killstreaks::get_from_weapon(weapon);
        if (weapon.iscarriedkillstreak === 1 && isdefined(attacker.var_8e94d71c[weapon])) {
            data.var_18db7a57 = attacker.var_8e94d71c[weapon];
        } else {
            data.var_18db7a57 = level.scorestreak_kills[einflictor.killstreakid];
        }
        data.var_4c540e11 = attacker playerads();
        data.attackerwasflashed = (isdefined(attacker.flashendtime) ? attacker.flashendtime : 0) + 1200 > gettime() && attacker status_effect::function_3c54ae98(1) < 0.5;
        data.attackerlastflashedby = attacker.lastflashedby;
        data.var_1c4553e5 = attacker.var_ba6bbd30;
        data.var_c3782b05 = (isdefined(attacker.var_23ed81d6) ? attacker.var_23ed81d6 : 0) > gettime() && attacker status_effect::function_3c54ae98(2) < 0.5;
        data.var_c2cdb4a1 = attacker.var_9060b065;
        data.attackerlaststunnedby = attacker.laststunnedby;
        data.attackerlaststunnedtime = attacker.laststunnedtime;
        data.attackerwasconcussed = (isdefined(attacker.concussionendtime) ? attacker.concussionendtime : 0) > gettime();
        data.attackerwasunderwater = attacker isplayerunderwater();
        data.attackerlastfastreloadtime = attacker.lastfastreloadtime;
        data.attackerwassliding = attacker issliding();
        data.attackerwassprinting = attacker issprinting();
        data.var_b0985dfc = attacker isholdingbreath();
        data.attackerstance = attacker getstance();
        data.var_351dc5f = attacker geteye();
        data.var_911b9b40 = attacker isremotecontrolling();
        data.var_be469b25 = attacker isgrappling() || isdefined(attacker.var_700a5910) && attacker.var_700a5910 + 2000 > gettime();
        data.var_a15d12b0 = attacker util::function_14e61d05();
        data.var_2f59a6b8 = attacker hasperk("specialty_equipmentrecharge");
        data.attacker_jump_begin = attacker.challenge_jump_begin;
        data.attacker_jump_end = attacker.challenge_jump_end;
        data.attacker_swimming_begin = attacker.challenge_swimming_begin;
        data.attacker_swimming_end = attacker.challenge_swimming_end;
        data.attacker_slide_begin = attacker.challenge_slide_begin;
        data.attacker_slide_end = attacker.challenge_slide_end;
        data.attacker_sprint_end = attacker.challenge_sprint_end;
        data.var_f2bc9529 = attacker.var_f469393;
        data.var_117e9294 = attacker.var_99d26a94;
        data.var_26aed950 = attacker function_65776b07();
        if (isdefined(attacker.attackerdamage[victim.clientid])) {
            data.var_1452c652 = structcopy(attacker.attackerdamage[victim.clientid]);
        }
        if (isdefined(level.var_d92c4db3)) {
            data.var_84f2a49b = attacker [[ level.var_d92c4db3 ]]();
        }
        if (isdefined(level.var_de946e0)) {
            data.var_18e4956e = attacker [[ level.var_de946e0 ]]();
        }
        if (isdefined(level.var_f18966dd)) {
            data.var_525172df = attacker [[ level.var_f18966dd ]]();
        }
        if (isdefined(attacker.var_ea1458aa)) {
            if (isdefined(attacker.var_ea1458aa.var_8f7ff7ed)) {
                data.var_58b48038 = attacker.var_ea1458aa.var_8f7ff7ed[victimentnum];
            }
        }
        if (isdefined(attacker.var_9cd2c51d)) {
            data.var_e5241328 = attacker.var_9cd2c51d.var_c54af9a9;
            data.var_cc8f0762 = attacker.var_9cd2c51d.var_6e219f3c;
        }
        if (isdefined(data.var_525172df.name)) {
            var_f09a5f22 = 0;
            switch (data.var_525172df.name) {
            case #"listening_device":
                var_5e93fb70 = sqr(isdefined(level.var_8ddf6d3d.var_151e2c9b) ? level.var_8ddf6d3d.var_151e2c9b : 512);
                var_f09a5f22 = 1;
                break;
            case #"gadget_jammer":
                var_5e93fb70 = level.var_578f7c6d.radiussqr;
                var_f09a5f22 = 1;
                break;
            case #"missile_turret":
                var_5e93fb70 = sqr(512);
                var_f09a5f22 = 1;
                break;
            case #"gadget_supplypod":
                var_5e93fb70 = sqr(isdefined(level.var_934fb97.bundle.var_366f43e9) ? level.var_934fb97.bundle.var_366f43e9 : 512);
                var_f09a5f22 = 1;
                break;
            case #"trophy_system":
                var_5e93fb70 = 262144;
                var_f09a5f22 = 1;
                break;
            default:
                break;
            }
            if (var_f09a5f22) {
                watcher = attacker weaponobjects::getweaponobjectwatcherbyweapon(data.var_525172df);
                if (isdefined(watcher.objectarray)) {
                    foreach (field_upgrade in watcher.objectarray) {
                        if (field_upgrade.owner === attacker) {
                            if (isdefined(field_upgrade.origin) && distancesquared(field_upgrade.origin, attacker.origin) <= (isdefined(var_5e93fb70) ? var_5e93fb70 : sqr(512))) {
                                data.var_2e1b3ac1 = 1;
                                break;
                            }
                        }
                    }
                }
            }
        }
        if (isdefined(attacker.var_2ba4c892) && isdefined(attacker.var_2ba4c892[victim getentitynumber()])) {
            data.var_7117b104 = attacker.var_2ba4c892[victim getentitynumber()];
        }
        data.var_d6553aa9 = attacker function_ac8c1222(victim);
        if (isdefined(level.var_81286410)) {
            data.var_807875bc = attacker [[ level.var_81286410 ]]();
            data.var_a73da413 = victim.var_e5a19e3d;
            data.var_5f1818be = victim.var_50703880;
            data.var_c23ee432 = victim.var_3ab8ccc9;
            data.var_dbbf805a = victim.var_5550488a;
            data.var_9c16cd22 = victim.var_bb20a522;
            data.var_5d9be0a1 = victim.var_8c3b7f1a;
        }
        attackervehicle = isdefined(attacker getvehicleoccupied()) ? attacker getvehicleoccupied() : attacker.var_156bf46e;
        if (isentity(attackervehicle) && !isdefined(getentbynum(attackervehicle getentitynumber()))) {
            attackervehicle = undefined;
        }
        if (isdefined(attackervehicle) && !isvehicle(attackervehicle)) {
            attackervehicle = undefined;
        }
        if (isdefined(attackervehicle)) {
            if (!attackervehicle isremotecontrol() && !(attackervehicle.vehicleclass === "artillery")) {
                data.attackervehicle = attackervehicle;
            }
            data.var_4e8a56b1 = 1;
            data.var_ee70dcab = isairborne(attackervehicle);
            data.var_1ebff6a5 = attackervehicle getoccupantseat(attacker);
            data.var_123eada = data.var_1ebff6a5 === attackervehicle.var_260e3593;
            data.var_b840fc2a = attackervehicle.scriptvehicletype;
        }
        if (!isdefined(attackervehicle)) {
            groundent = attacker getgroundent();
            if (isvehicle(groundent)) {
                attackervehicle = groundent;
                data.var_3f8dd192 = 1;
            }
        }
        if (isdefined(attackervehicle)) {
            data.var_8badc7f8 = attackervehicle.isphysicsvehicle;
            data.var_adb68654 = attackervehicle player_vehicle::get_vehicle_driver();
        }
        if (isdefined(weaponclass)) {
            if (isdefined(attacker.var_e846bafa[weaponclass])) {
                attacker.var_e846bafa[weaponclass]++;
            } else {
                if (!isdefined(attacker.var_e846bafa)) {
                    attacker.var_e846bafa = [];
                }
                attacker.var_e846bafa[weaponclass] = 1;
            }
            data.var_63a3295e = attacker.var_e846bafa[weaponclass];
        }
    } else {
        data.attackeronground = 0;
        data.attackertraversing = 0;
        data.attackersliding = 0;
        data.attackerwasflashed = 0;
        data.attackerwasconcussed = 0;
        data.attackerstance = "stand";
        data.attackerwasunderwater = 0;
        data.attackerwassprinting = 0;
        data.attacker_sprint_end = 0;
    }
    if (isdefined(einflictor)) {
        if (isdefined(einflictor.iscooked)) {
            data.inflictoriscooked = einflictor.iscooked;
        } else {
            data.inflictoriscooked = 0;
        }
        if (isdefined(einflictor.throwback)) {
            data.var_dc8c6b51 = einflictor.throwback;
            data.var_74f23861 = einflictor.previousowner;
        } else {
            data.var_dc8c6b51 = 0;
        }
        if (isdefined(einflictor.challenge_hatchettosscount)) {
            data.inflictorchallenge_hatchettosscount = einflictor.challenge_hatchettosscount;
        } else {
            data.inflictorchallenge_hatchettosscount = 0;
        }
        if (isdefined(einflictor.ownerwassprinting)) {
            data.inflictorownerwassprinting = einflictor.ownerwassprinting;
        } else {
            data.inflictorownerwassprinting = 0;
        }
        if (isdefined(einflictor.playerhasengineerperk)) {
            data.inflictorplayerhasengineerperk = einflictor.playerhasengineerperk;
        } else {
            data.inflictorplayerhasengineerperk = 0;
        }
        if (isdefined(attacker.connect_time) && einflictor.var_e2131267[attacker getentitynumber()] === attacker.connect_time) {
            data.var_9e818622 = 1;
        } else {
            data.var_9e818622 = 0;
        }
        if (isweapon(einflictor.item) && einflictor.item.islethalgrenade && util::function_ed82a8a(einflictor.item).loadoutslotname === "primarygrenade") {
            data.var_e8c642a1 = einflictor.birthtime;
            data.var_3d8f6ba2 = einflictor.var_c6c56953;
        }
    } else {
        data.inflictoriscooked = 0;
        data.inflictorchallenge_hatchettosscount = 0;
        data.inflictorownerwassprinting = 0;
        data.inflictorplayerhasengineerperk = 0;
        data.var_9e818622 = 0;
    }
    if (smeansofdeath == "MOD_GRENADE_SPLASH" || smeansofdeath == "MOD_GRENADE" || smeansofdeath == "MOD_EXPLOSIVE" || smeansofdeath == "MOD_PROJECTILE_SPLASH") {
        if (weapon.name == #"napalm_strike") {
            data.var_254ce896 = einflictor.var_813987b5;
        } else {
            data.var_254ce896 = einflictor.birthtime;
        }
        data.var_b75b215 = 1;
    }
    if (level.var_268c70a7 === 1) {
        data.var_91610392 = attacker.isbombcarrier === 1 || isdefined(attacker.touchtriggers) && attacker.touchtriggers.size > 0;
        data.var_30db4425 = victim.isbombcarrier === 1 || isdefined(victim.touchtriggers) && victim.touchtriggers.size > 0;
    }
    profileNamedStop();
    if (var_f3c114a7 === 1) {
        return data;
    }
    waitandprocessplayerkilledcallback(data);
    if (isdefined(attacker)) {
        attacker notify(#"playerkilledchallengesprocessed");
    }
}

// Namespace challenges/challenges_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xe7e8dab0, Offset: 0x8e78
// Size: 0x70
function function_ee74d44(data, bledout) {
    attacker = data.attacker;
    if (isdefined(bledout)) {
        data.bledout = bledout;
    }
    waitandprocessplayerkilledcallback(data);
    if (isdefined(attacker)) {
        attacker notify(#"playerkilledchallengesprocessed");
    }
}

// Namespace challenges/challenges_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x1a3d4a01, Offset: 0x8ef0
// Size: 0x12c
function waitandprocessplayerkilledcallback(data) {
    if (isdefined(data.attacker)) {
        data.attacker endon(#"disconnect");
    }
    level thread telemetry::function_18135b72(#"hash_6602db5bc859fcd9", data);
    waitframe(1);
    util::waittillslowprocessallowed();
    if (isdefined(data.weapon) && data.weapon != level.weaponnone && isdefined(data.attacker) && isplayer(data.attacker)) {
        level thread dochallengecallback("playerKilled", data);
    }
    level thread scoreevents::doscoreeventcallback("playerKilled", data);
    level thread telemetry::function_18135b72(#"hash_fc0d1250fc48d49", data);
}

// Namespace challenges/challenges_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x9ed81983, Offset: 0x9028
// Size: 0x94
function function_730144c6(data) {
    if (isdefined(data.attacker)) {
        data.attacker endon(#"disconnect");
    }
    level thread telemetry::function_18135b72(#"hash_6602db5bc859fcd9", data);
    waitframe(1);
    util::waittillslowprocessallowed();
    level thread telemetry::function_18135b72(#"hash_fc0d1250fc48d49", data);
}

// Namespace challenges/challenges_shared
// Params 1, eflags: 0x2 linked
// Checksum 0xb3bd7bf7, Offset: 0x90c8
// Size: 0x148
function function_c3b411f6(smeansofdeath) {
    attacker = self;
    data = spawnstruct();
    data.results = spawnstruct();
    data.suicide = 1;
    victim = self;
    data.victim = victim;
    var_5fceefd4 = self getplayerangles();
    data.victimorigin = self.origin;
    data.var_5fceefd4 = var_5fceefd4;
    data.victimforward = anglestoforward(var_5fceefd4);
    data.victimstance = victim getstance();
    data.var_f0b3c772 = victim playerads();
    data.smeansofdeath = smeansofdeath;
    data.victimweapon = victim.currentweapon;
    function_730144c6(data);
    if (isdefined(attacker)) {
        attacker notify(#"playerkilledchallengesprocessed");
    }
}

// Namespace challenges/challenges_shared
// Params 8, eflags: 0x2 linked
// Checksum 0x65b57b71, Offset: 0x9218
// Size: 0x1e0
function function_cbfdab8f(einflictor, attacker, *idamage, smeansofdeath, weapon, shitloc, attackerstance, *bledout) {
    data = spawnstruct();
    data.results = spawnstruct();
    data.var_b845651e = 1;
    var_5fceefd4 = self getplayerangles();
    victim = self;
    data.victim = victim;
    data.victimorigin = self.origin;
    data.victimforward = anglestoforward(var_5fceefd4);
    data.var_5fceefd4 = var_5fceefd4;
    data.victimstance = victim getstance();
    data.var_f0b3c772 = victim playerads();
    data.smeansofdeath = weapon;
    data.weapon = shitloc;
    data.shitloc = attackerstance;
    data.time = gettime();
    data.victimweapon = victim.currentweapon;
    data.einflictor = idamage;
    data.attacker = smeansofdeath;
    data.attackerstance = bledout;
    if (isdefined(smeansofdeath)) {
        data.var_4c540e11 = smeansofdeath playerads();
    }
    function_730144c6(data);
    if (isdefined(smeansofdeath)) {
        smeansofdeath notify(#"playerkilledchallengesprocessed");
    }
}

// Namespace challenges/challenges_shared
// Params 1, eflags: 0x0
// Checksum 0xf1012c4d, Offset: 0x9400
// Size: 0x66
function weaponisknife(weapon) {
    if (weapon == level.weaponbasemelee || weapon == level.weaponbasemeleeheld || weapon.rootweapon.statname == level.weaponballisticknife.statname) {
        return true;
    }
    return false;
}

// Namespace challenges/challenges_shared
// Params 1, eflags: 0x0
// Checksum 0x60aadbce, Offset: 0x9470
// Size: 0x4a2
function eventreceived(eventname) {
    self endon(#"disconnect");
    util::waittillslowprocessallowed();
    switch (level.gametype) {
    case #"tdm":
        if (eventname == "killstreak_10") {
            self stats::function_d40764f3(#"killstreak_10", 1);
        } else if (eventname == "killstreak_15") {
            self stats::function_d40764f3(#"killstreak_15", 1);
        } else if (eventname == "killstreak_20") {
            self stats::function_d40764f3(#"killstreak_20", 1);
        } else if (eventname == "multikill_3") {
            self stats::function_d40764f3(#"multikill_3", 1);
        } else if (eventname == "kill_enemy_who_killed_teammate") {
            self stats::function_d40764f3(#"kill_enemy_who_killed_teammate", 1);
        } else if (eventname == "kill_enemy_injuring_teammate") {
            self stats::function_d40764f3(#"kill_enemy_injuring_teammate", 1);
        }
        break;
    case #"dm":
        if (eventname == "killstreak_10") {
            self stats::function_d40764f3(#"killstreak_10", 1);
        } else if (eventname == "killstreak_15") {
            self stats::function_d40764f3(#"killstreak_15", 1);
        } else if (eventname == "killstreak_20") {
            self stats::function_d40764f3(#"killstreak_20", 1);
        } else if (eventname == "killstreak_30") {
            self stats::function_d40764f3(#"killstreak_30", 1);
        }
        break;
    case #"sd":
        if (eventname == "defused_bomb_last_man_alive") {
            self stats::function_d40764f3(#"defused_bomb_last_man_alive", 1);
        } else if (eventname == "elimination_and_last_player_alive") {
            self stats::function_d40764f3(#"elimination_and_last_player_alive", 1);
        } else if (eventname == "killed_bomb_planter") {
            self stats::function_d40764f3(#"killed_bomb_planter", 1);
        } else if (eventname == "killed_bomb_defuser") {
            self stats::function_d40764f3(#"killed_bomb_defuser", 1);
        }
        break;
    case #"ctf":
        if (eventname == "kill_flag_carrier") {
            self stats::function_d40764f3(#"kill_flag_carrier", 1);
        } else if (eventname == "defend_flag_carrier") {
            self stats::function_d40764f3(#"defend_flag_carrier", 1);
        }
        break;
    case #"dem":
        if (eventname == "killed_bomb_planter") {
            self stats::function_d40764f3(#"killed_bomb_planter", 1);
        } else if (eventname == "killed_bomb_defuser") {
            self stats::function_d40764f3(#"killed_bomb_defuser", 1);
        }
        break;
    default:
        break;
    }
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x5ccf769b, Offset: 0x9920
// Size: 0x8a
function monitor_player_sprint() {
    self endon(#"disconnect", #"killplayersprintmonitor", #"death");
    self.lastsprinttime = undefined;
    while (true) {
        self waittill(#"sprint_begin");
        self waittill(#"sprint_end");
        self.lastsprinttime = gettime();
    }
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x2 linked
// Checksum 0xb54b7ab9, Offset: 0x99b8
// Size: 0x24
function function_c5000c67() {
    return isdefined(self.flashendtime) && gettime() < self.flashendtime + 3000;
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x0
// Checksum 0x61fd7aae, Offset: 0x99e8
// Size: 0x1e
function isheatwavestunned() {
    return isdefined(self._heat_wave_stuned_end) && gettime() < self._heat_wave_stuned_end;
}

// Namespace challenges/challenges_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x32452456, Offset: 0x9a10
// Size: 0x1fc
function trophy_defense(origin, radius, trophy) {
    if (trophy util::ishacked()) {
        self stats::function_dad108fa(#"hash_4d5d6f748ea6e4be", 1);
    }
    if (level.challenge_scorestreaksenabled === 1) {
        entities = getdamageableentarray(origin, radius);
        foreach (entity in entities) {
            if (isdefined(entity.challenge_isscorestreak)) {
                self stats::function_dad108fa(#"hash_580b295b38c0ee38", 1);
                break;
            }
            weapon = entity.weapon;
            if (isdefined(weapon)) {
                should_award = 0;
                if (weapon.issignatureweapon) {
                    should_award = 1;
                } else if (weapon.var_76ce72e8) {
                    scoreevents = globallogic_score::function_3cbc4c6c(weapon.var_2e4a8800);
                    should_award = isdefined(scoreevents) && scoreevents.var_fcd2ff3a === 1;
                }
                if (should_award) {
                    self stats::function_dad108fa(#"hash_580b295b38c0ee38", 1);
                    break;
                }
            }
        }
    }
}

// Namespace challenges/challenges_shared
// Params 1, eflags: 0x2 linked
// Checksum 0x2581320b, Offset: 0x9c18
// Size: 0x26
function waittilltimeoutordeath(timeout) {
    self endon(#"death");
    wait(timeout);
}

// Namespace challenges/challenges_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x9285889d, Offset: 0x9c48
// Size: 0x162
function function_45615fac(var_32220397, var_25e55131) {
    var_20cab030 = tablelookuprownum(var_32220397, 5, var_25e55131.itemgroupname);
    if (isint(var_20cab030) && var_20cab030 != -1 && ishash(var_25e55131.namehash)) {
        row_info = tablelookuprow(var_32220397, var_20cab030);
        var_39cd8305 = row_info[10] === 1;
        if (var_39cd8305) {
            var_c358ec1 = self stats::function_1bb1c57c(row_info[6], var_25e55131.namehash, row_info[7], #"challengetier");
        } else {
            var_c358ec1 = self stats::get_stat(row_info[6], var_25e55131.namehash, row_info[7], #"challengetier");
        }
        return (var_c358ec1 > 0);
    }
    return undefined;
}

// Namespace challenges/challenges_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x5e657640, Offset: 0x9db8
// Size: 0x16a
function function_b3e4bd8(var_32220397, var_25e55131) {
    var_326177c1 = tablelookuprownum(var_32220397, 1, #"expert");
    if (isint(var_326177c1) && var_326177c1 != -1 && ishash(var_25e55131.namehash)) {
        row_info = tablelookuprow(var_32220397, var_326177c1);
        var_39cd8305 = row_info[10] === 1;
        if (var_39cd8305) {
            var_ebbef18a = self stats::function_1bb1c57c(row_info[6], var_25e55131.namehash, row_info[7], #"challengetier");
        } else {
            var_ebbef18a = self stats::get_stat(row_info[6], var_25e55131.namehash, row_info[7], #"challengetier");
        }
        return (var_ebbef18a > 0);
    }
    return undefined;
}

// Namespace challenges/challenges_shared
// Params 2, eflags: 0x2 linked
// Checksum 0xd36c2609, Offset: 0x9f30
// Size: 0x184
function function_4e40694d(var_104294f6, eventstruct) {
    if (!isdefined(eventstruct)) {
        return;
    }
    if (!isplayer(self)) {
        return;
    }
    var_9776a65f = self function_b17c1957(eventstruct.item_index) === 1;
    if (!var_9776a65f) {
        return;
    }
    var_25e55131 = getunlockableiteminfofromindex(eventstruct.item_index, 0);
    if (!isdefined(var_25e55131)) {
        return;
    }
    if (var_25e55131.itemgroupname == "") {
        return;
    }
    var_853b9f7b = self function_45615fac(var_104294f6, var_25e55131);
    if (var_853b9f7b !== 1) {
        return;
    }
    var_e6673dba = function_b3e4bd8(var_104294f6, var_25e55131);
    if (var_e6673dba !== 1) {
        return;
    }
    weapon = getweapon(var_25e55131.namehash);
    if (weapon != level.weaponnone) {
        self stats::function_e24eec31(weapon, #"hash_5a2ba340560103b3", 1);
    }
}

// Namespace challenges/challenges_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x45dde16f, Offset: 0xa0c0
// Size: 0x174
function function_d43316bd(var_f737f85f, eventstruct) {
    if (!isplayer(self)) {
        return;
    }
    var_d0170b84 = tablelookuprownum(var_f737f85f, 1, #"hash_407c4dccb14b6bbb");
    if (var_d0170b84 == -1) {
        return;
    }
    var_df333125 = tablelookupcolumnforrow(var_f737f85f, var_d0170b84, 3);
    if (!isint(var_df333125)) {
        return;
    }
    var_25e55131 = getunlockableiteminfofromindex(eventstruct.item_index, 0);
    if (!isdefined(var_25e55131)) {
        return;
    }
    weapon = getweapon(var_25e55131.namehash);
    if (weapon == level.weaponnone) {
        return;
    }
    pickedup = isdefined(self.pickedupweapons[weapon]);
    self addrankxp(#"hash_5343520320b2abd6", 2, weapon, self.class_num, var_df333125, pickedup, 1);
}

// Namespace challenges/challenges_shared
// Params 2, eflags: 0x2 linked
// Checksum 0x554020a4, Offset: 0xa240
// Size: 0x74
function function_38ad2427(var_b7b748b7, amount) {
    var_94583a5d = 0;
    if (getdvarint(#"hash_f46d80ea72f539c", 0) != 0) {
        var_94583a5d = 1;
    }
    if (var_94583a5d) {
        return;
    }
    self stats::function_dad108fa(var_b7b748b7, amount);
}

// Namespace challenges/challenges_shared
// Params 3, eflags: 0x2 linked
// Checksum 0xf70bfac6, Offset: 0xa2c0
// Size: 0x2cc
function function_7f86a7b8(attacker, attackerweapon, meansofdeath) {
    attacker contracts::increment_contract(#"hash_3ff1fe889b516cc3");
    attacker function_38ad2427(#"hash_4808274db2565c0d", 1);
    attacker stats::function_dad108fa(#"hash_15da16b6b9032af", 1);
    attacker stats::function_dad108fa(#"hash_d9fe863a1e9e4d8", 1);
    attacker stats::function_a47092b5(#"hash_10b266bec758c000", 1, #"hash_5de4e8563e882e42");
    if (isdefined(attackerweapon) && attackerweapon != level.weaponnone) {
        attacker stats::function_e24eec31(attackerweapon, #"hash_6759c0df02e8aa9d", 1);
        if (attackerweapon.statname === #"special_crossbow_t9" && !weapons::ismeleemod(meansofdeath)) {
            attacker stats::function_e24eec31(attackerweapon, #"hash_6a9ef93d619f4bcc", 1);
        }
        weaponclass = util::getweaponclass(attackerweapon);
        weaponclass = isstring(weaponclass) ? hash(weaponclass) : weaponclass;
        if (weaponclass === #"weapon_knife" && !isdefined(attacker.pers[#"hash_23898018c4f3a260"])) {
            attacker stats::function_d0de7686(#"hash_6a34be0ae51df16d", 1, #"hash_34a28edc5d90a87");
            attacker.pers[#"hash_23898018c4f3a260"] = 1;
        }
        if (weaponclass === #"weapon_smg" && !isdefined(attacker.pers[#"hash_5cd5482ab60ed275"])) {
            attacker stats::function_d0de7686(#"hash_4425e8a9deb73e9a", 1, #"hash_2b4649f1d1493b64");
            attacker.pers[#"hash_5cd5482ab60ed275"] = 1;
        }
    }
}

// Namespace challenges/challenges_shared
// Params 0, eflags: 0x2 linked
// Checksum 0x51df5d95, Offset: 0xa598
// Size: 0x10c
function function_a66bed3e() {
    if (level.var_d619bc61 !== 1) {
        return;
    }
    if (!isplayer(self)) {
        return;
    }
    if (!isarray(self.pers[#"hash_58ebc906abf2fa00"])) {
        return;
    }
    foreach (var_9ef04ef9, value in self.pers[#"hash_58ebc906abf2fa00"]) {
        self stats::function_dad108fa(var_9ef04ef9, value);
    }
    self.pers[#"hash_58ebc906abf2fa00"] = undefined;
}

// Namespace challenges/challenges_shared
// Params 3, eflags: 0x2 linked
// Checksum 0x89de3a8b, Offset: 0xa6b0
// Size: 0x88
function function_c9e4f73f(target_value, var_55b913da, var_6ccd331f) {
    player_pers = self.pers;
    if (!isdefined(player_pers[var_6ccd331f])) {
        player_pers[var_6ccd331f] = 1;
    } else {
        player_pers[var_6ccd331f]++;
    }
    if (player_pers[var_6ccd331f] >= target_value) {
        player_pers[var_55b913da] = 1;
        player_pers[var_6ccd331f] = undefined;
        return true;
    }
    return false;
}

