// Atian COD Tools GSC CW decompiler test
#using script_388632816e11681e;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\mp_common\player\player_utils.gsc;
#using scripts\abilities\ability_util.gsc;
#using scripts\core_common\infection.gsc;
#using scripts\mp_common\util.gsc;
#using scripts\mp_common\player\player_loadout.gsc;
#using scripts\mp_common\gametypes\round.gsc;
#using scripts\mp_common\gametypes\match.gsc;
#using scripts\mp_common\gametypes\globallogic_ui.gsc;
#using scripts\mp_common\gametypes\globallogic_spawn.gsc;
#using scripts\mp_common\gametypes\globallogic_score.gsc;
#using script_1cc417743d7c262d;
#using scripts\mp_common\gametypes\globallogic.gsc;
#using scripts\mp_common\draft.gsc;
#using scripts\weapons\weapons.gsc;
#using scripts\core_common\popups_shared.gsc;
#using scripts\core_common\player\player_loadout.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\player\player_role.gsc;
#using scripts\core_common\influencers_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using script_3d703ef87a841fe4;
#using scripts\core_common\sound_shared.gsc;
#using scripts\core_common\spawning_shared.gsc;
#using script_44b0b8420eabacad;
#using script_335d0650ed05d36d;
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\hostmigration_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace infect;

// Namespace infect/gametype_init
// Params 1, eflags: 0x20
// Checksum 0xe7d10238, Offset: 0x580
// Size: 0x4cc
function event_handler[gametype_init] main(*eventstruct) {
    globallogic::init();
    infection::initialize();
    infection::function_153000d0(#"hash_721c1c5fa1dcb813", #"hash_2cda396792b415ea");
    level.var_e81cfec8 = 1;
    level.var_757f1b92 = getweapon("melee_infected_knife_t9");
    level.var_4ae49bbd = getweapon("hatchet");
    level.var_30783ca9 = &function_1a87243c;
    level.scoreroundwinbased = getgametypesetting("cumulativeRoundScores") == 0;
    level.teamscoreperdeath = getgametypesetting("teamScorePerDeath");
    level.teamscoreperheadshot = getgametypesetting("teamScorePerHeadshot");
    level.teambased = 1;
    level.var_7bc1850b = 1;
    level.onstartgametype = &onstartgametype;
    level.onendgame = &onendgame;
    level.onspawnplayer = &onspawnplayer;
    level.onroundendgame = &onroundendgame;
    level.onroundswitch = &onroundswitch;
    level.var_c61a7b00 = &function_c61a7b00;
    level.gettimelimit = &gettimelimit;
    level.var_e8c7548e = &function_244af78f;
    level.var_e0118bbd = &nukedetonated;
    level.var_f82f37a9 = &function_7b2f9db1;
    spawning::addsupportedspawnpointtype("ffa");
    callback::on_connect(&onplayerconnect);
    callback::on_disconnect(&onplayerdisconnect);
    callback::on_joined_team(&onplayerjoinedteam);
    callback::on_joined_spectate(&function_2c22a107);
    player::function_cf3aa03d(&onplayerkilled);
    clientfield::register("allplayers", "Infected.player_infected", 15000, 1, "int");
    clientfield::register("toplayer", "infected_zombie_postfx", 17000, 1, "int");
    clientfield::register_clientuimodel("hud_items_cranked.infectedSurvivorTier", 17000, 3, "int", 0);
    clientfield::register_clientuimodel("hudItems.isInfected", 17000, 1, "int", 1);
    gameobjects::register_allowed_gameobject(level.gametype);
    level.infect_timer = mp_infect_timer::register();
    level.givecustomloadout = &givecustomloadout;
    level.var_9ce4ee42 = &function_9ce4ee42;
    level.ontimelimit = &ontimelimit;
    level.var_ce802423 = 1;
    game.musicset = "_" + "infected";
    infection::function_db5ddd5f("specialty_sprint");
    infection::function_db5ddd5f("specialty_slide");
    infection::function_db5ddd5f("specialty_quieter");
    infection::function_db5ddd5f("specialty_tracker");
    infection::function_db5ddd5f("specialty_fallheight");
}

// Namespace infect/infect
// Params 0, eflags: 0x0
// Checksum 0x32608ec8, Offset: 0xa58
// Size: 0x1e4
function onstartgametype() {
    setclientnamemode("auto_change");
    game.defenders = "allies";
    game.attackers = "axis";
    infection::function_a2d73bc3(game.attackers);
    if (!isdefined(game.switchedsides)) {
        game.switchedsides = 0;
    }
    if (game.switchedsides) {
        oldattackers = game.attackers;
        olddefenders = game.defenders;
        game.attackers = olddefenders;
        game.defenders = oldattackers;
    }
    level.displayroundendtext = 0;
    influencers::create_map_placed_influencers();
    spawnpoint = spawning::get_random_intermission_point();
    setdemointermissionpoint(spawnpoint.origin, spawnpoint.angles);
    if (!util::isoneround()) {
        level.displayroundendtext = 1;
        if (level.scoreroundwinbased) {
            globallogic_score::resetteamscores();
        }
    }
    level.infect_chosefirstinfected = 0;
    level.infect_choosingfirstinfected = 0;
    level.infect_allowsuicide = 0;
    level.infect_awardedfinalsurvivor = 0;
    level.var_7a796aa8 = 1;
    inithud();
    level thread function_a6489256();
    level thread function_3ba09e5e();
}

// Namespace infect/infect
// Params 1, eflags: 0x0
// Checksum 0x54d5654c, Offset: 0xc48
// Size: 0xcc
function onendgame(var_c1e98979) {
    if (!util::isoneround() && !util::islastround()) {
        function_8d346fd8(round::get_winner());
        return;
    }
    if (var_c1e98979 == 6) {
        match::set_winner(#"axis");
        return;
    }
    if (var_c1e98979 == 2 || var_c1e98979 == 12) {
        match::set_winner(#"allies");
    }
}

// Namespace infect/infect
// Params 1, eflags: 0x0
// Checksum 0x739fea26, Offset: 0xd20
// Size: 0x1ac
function function_8d346fd8(winningteam) {
    players = level.players;
    for (i = 0; i < players.size; i++) {
        if (!isdefined(players[i].pers[#"team"])) {
            continue;
        }
        if (level.hostforcedend && players[i] ishost()) {
            continue;
        }
        if (winningteam == "tie") {
            globallogic_score::updatetiestats(players[i]);
            continue;
        }
        if (players[i].pers[#"team"] == winningteam) {
            globallogic_score::updatewinstats(players[i]);
            continue;
        }
        if (level.rankedmatch && !level.leaguematch && players[i].pers[#"latejoin"] === 1) {
            globallogic_score::updatelosslatejoinstats(players[i]);
        }
        if (!level.disablestattracking) {
            players[i] stats::set_stat(#"playerstatslist", "cur_win_streak", #"statvalue", 0);
        }
    }
}

// Namespace infect/infect
// Params 0, eflags: 0x0
// Checksum 0x3da3ad60, Offset: 0xed8
// Size: 0xee
function inithud() {
    level.var_43406ee9 = spawnstruct();
    level.var_43406ee9.label = #"hash_7bf80a392d947b6e";
    level.var_43406ee9.alpha = 0;
    level.var_43406ee9.archived = 0;
    level.var_43406ee9.hidewheninmenu = 1;
    level.var_6c6b8981 = spawnstruct();
    level.var_6c6b8981.label = #"hash_29028683f846db5d";
    level.var_6c6b8981.alpha = 0;
    level.var_6c6b8981.archived = 0;
    level.var_6c6b8981.hidewheninmenu = 1;
}

// Namespace infect/infect
// Params 0, eflags: 0x0
// Checksum 0xa827553, Offset: 0xfd0
// Size: 0x11c
function onplayerconnect() {
    self.var_9007c3f6 = 1;
    self.var_fc81f69c = level.inprematchperiod;
    if (isbot(self) && !isdefined(self.pers[#"team"])) {
        self waittill(#"joined_team");
    }
    if (self.sessionteam != "spectator") {
        self.pers[#"needteam"] = 1;
    }
    if (self infection::function_687661ea()) {
        self.var_6f2537ed = 1;
    }
    if (!is_true(level.infect_chosefirstinfected)) {
        self changeteam(game.defenders);
        return;
    }
    self changeteam(game.attackers);
}

// Namespace infect/infect
// Params 1, eflags: 0x0
// Checksum 0x82f6c0c3, Offset: 0x10f8
// Size: 0x3a
function onplayerjoinedteam(*params) {
    if (self.team == game.attackers) {
        self.disableclassselection = 1;
        return;
    }
    self.disableclassselection = undefined;
}

// Namespace infect/infect
// Params 2, eflags: 0x0
// Checksum 0x6d5a8460, Offset: 0x1140
// Size: 0x102
function function_9ce4ee42(player, comingfrommenu) {
    if (!comingfrommenu && player.sessionteam == "spectator") {
        teamname = "spectator";
    } else if (is_true(level.var_ad5ac73b)) {
        level.var_ad5ac73b = undefined;
        teamname = game.defenders;
        level thread function_df1183b3();
    } else if (is_true(player.var_6f2537ed) || is_true(level.infect_chosefirstinfected)) {
        teamname = game.attackers;
    } else {
        teamname = game.defenders;
    }
    return teamname;
}

// Namespace infect/infect
// Params 0, eflags: 0x0
// Checksum 0x820ffb91, Offset: 0x1250
// Size: 0x50
function function_219eee6b() {
    started_waiting = gettime();
    while (!self isstreamerready(-1, 1) && started_waiting + 90000 > gettime()) {
        waitframe(1);
    }
}

// Namespace infect/infect
// Params 1, eflags: 0x0
// Checksum 0x176ee9e0, Offset: 0x12a8
// Size: 0x164
function onspawnplayer(predictedspawn) {
    if (spawning::usestartspawns() && !level.ingraceperiod && !level.playerqueuedrespawn) {
        spawning::function_7a87efaa();
    }
    if (self.team == game.attackers) {
        function_d3beb9d3();
    }
    if (!level.infect_choosingfirstinfected) {
        level.infect_choosingfirstinfected = 1;
        level thread choosefirstinfected();
    }
    spawning::onspawnplayer(predictedspawn);
    if (self.team == game.attackers) {
        self.var_ec2d285c = 0;
        self infection::give_body();
        self clientfield::set_to_player("infected_zombie_postfx", 1);
        self util::delay(0.1, "death", &function_5e3c947f);
        return;
    }
    self clientfield::set_to_player("infected_zombie_postfx", 0);
}

// Namespace infect/infect
// Params 0, eflags: 0x0
// Checksum 0x91dd5e50, Offset: 0x1418
// Size: 0x24
function function_5e3c947f() {
    self playsound(#"hash_3c126f4a9d761794");
}

// Namespace infect/infect
// Params 1, eflags: 0x0
// Checksum 0x8660e794, Offset: 0x1448
// Size: 0x8e
function function_7b2f9db1(activeteamcount) {
    if (!isdefined(level.var_29f744be)) {
        level.var_29f744be = gettime();
    }
    if (gettime() - level.var_29f744be > int(20 * 1000)) {
        return true;
    }
    if (activeteamcount[#"any"] < getnumexpectedplayers()) {
        return false;
    }
    return true;
}

// Namespace infect/infect
// Params 0, eflags: 0x0
// Checksum 0x3fb81ab2, Offset: 0x14e0
// Size: 0x1c
function onroundswitch() {
    game.switchedsides = !game.switchedsides;
}

// Namespace infect/infect
// Params 1, eflags: 0x0
// Checksum 0xd03ca479, Offset: 0x1508
// Size: 0xca
function onroundendgame(*roundwinner) {
    if (level.scoreroundwinbased) {
        foreach (team in level.teams) {
            [[ level._setteamscore ]](team, game.stat[#"roundswon"][team]);
        }
    }
    return [[ level.determinewinner ]]();
}

// Namespace infect/infect
// Params 0, eflags: 0x0
// Checksum 0x4064585a, Offset: 0x15e0
// Size: 0xe
function function_f86ae9e5() {
    return self.time_played_moving > 0;
}

// Namespace infect/infect
// Params 3, eflags: 0x0
// Checksum 0x136591e5, Offset: 0x15f8
// Size: 0xd8
function function_24ca3437(team, var_efb758a8, calloutplayer) {
    players = getplayers(team);
    foreach (player in players) {
        player luinotifyevent(#"player_callout", 2, var_efb758a8, calloutplayer);
    }
}

// Namespace infect/infect
// Params 9, eflags: 0x0
// Checksum 0x563f30f, Offset: 0x16d8
// Size: 0xc4
function onplayerkilled(*einflictor, attacker, *idamage, *smeansofdeath, weapon, *vdir, *shitloc, *psoffsettime, *deathanimduration) {
    processkill = 0;
    wassuicide = 0;
    if (self.team === game.defenders) {
        function_1457d082(self, psoffsettime, deathanimduration);
        return;
    }
    if (self.team === game.attackers) {
        function_fe1ee745(self, psoffsettime, deathanimduration);
    }
}

// Namespace infect/infect
// Params 3, eflags: 0x4
// Checksum 0x7cab8889, Offset: 0x17a8
// Size: 0x23c
function private function_1457d082(victim, attacker, weapon) {
    processkill = 0;
    wassuicide = 0;
    if (victim.team == game.defenders && isdefined(attacker)) {
        if (level.friendlyfire > 0 && attacker.team === victim.team) {
            processkill = 0;
        } else if (isplayer(attacker) && attacker != victim) {
            processkill = 1;
        } else if (level.infect_allowsuicide && (attacker == victim || !isplayer(attacker))) {
            processkill = 1;
            wassuicide = 1;
        }
    }
    if (!processkill) {
        return;
    }
    if (!wassuicide) {
        scoreevents::processscoreevent("infected_survivor", attacker, victim, weapon);
        if (!isdefined(attacker.var_ec2d285c)) {
            attacker.var_ec2d285c = 0;
        }
        attacker.var_ec2d285c++;
        if (attacker.var_ec2d285c == 3) {
            scoreevents::processscoreevent("infected_infect_3_enemies", attacker, victim, weapon);
        }
        if (isdefined(attacker.pers[#"infects"])) {
            attacker.pers[#"infects"] = attacker.pers[#"infects"] + 1;
            attacker.infects = attacker.pers[#"infects"];
        }
        [[ level.var_37d62931 ]](attacker, 1);
    }
    level thread function_98c89d66(victim, wassuicide);
}

// Namespace infect/infect
// Params 3, eflags: 0x4
// Checksum 0xfab59d7, Offset: 0x19f0
// Size: 0x254
function private function_fe1ee745(victim, attacker, *weapon) {
    if (!isplayer(weapon) || !isalive(weapon)) {
        return;
    }
    if (weapon === attacker || weapon.team === attacker.team) {
        return;
    }
    if (!weapon function_6c32d092(#"hash_2e1dc098c9d99751")) {
        weapon function_986114ce(#"hash_2e1dc098c9d99751");
        weapon clientfield::set_player_uimodel("hud_items_cranked.infectedSurvivorTier", 1);
    } else if (!weapon function_6c32d092(#"hash_92aa9267254980")) {
        weapon function_986114ce(#"hash_92aa9267254980");
        weapon clientfield::set_player_uimodel("hud_items_cranked.infectedSurvivorTier", 2);
    } else if (!weapon function_6c32d092(#"hash_3f3eea064c89666")) {
        weapon function_986114ce(#"hash_3f3eea064c89666");
        weapon clientfield::set_player_uimodel("hud_items_cranked.infectedSurvivorTier", 3);
    } else if (!weapon function_6c32d092(#"hash_343efcca1cdc353b")) {
        weapon function_986114ce(#"hash_343efcca1cdc353b");
        weapon clientfield::set_player_uimodel("hud_items_cranked.infectedSurvivorTier", 4);
    }
    if (level.var_7a796aa8 === 1 && attacker.team == game.attackers) {
        attacker thread function_b10fc1b();
    }
}

// Namespace infect/infect
// Params 2, eflags: 0x0
// Checksum 0xb8ef6c37, Offset: 0x1c50
// Size: 0x304
function function_98c89d66(victim, wassuicide) {
    level endon(#"game_ended");
    waittillframeend();
    if (isdefined(victim.laststand)) {
        result = victim function_cc49dfcf();
        if (result === "player_input_revive") {
            return;
        }
    }
    victim waittilltimeout(1.5, #"begin_killcam");
    if (isdefined(victim)) {
        level thread function_a5abd7ee();
        function_e030bdaf(victim, wassuicide);
        function_d3beb9d3();
        victim globallogic_audio::leader_dialog_on_player("infectInfected");
    }
    var_63f8204e = function_4d9c9e8e(game.defenders);
    if (var_63f8204e > 1 && isdefined(victim)) {
        sound::play_on_players("mpl_infection_zombie_created_stinger", game.defenders);
        sound::play_on_players("mpl_infection_zombie_created_stinger", game.attackers);
        level thread popups::displayteammessagetoall(#"mp/got_infected", victim);
        if (var_63f8204e == 3) {
            globallogic_audio::leader_dialog("infectLowLives", game.defenders);
            globallogic_audio::leader_dialog("infectLowLivesEnemy", game.attackers);
        }
        if (!wassuicide) {
            survivors = getplayers(game.defenders);
            foreach (survivor in survivors) {
                if (survivor != victim && survivor function_f86ae9e5()) {
                    survivor scoreevents::processscoreevent("survivor_still_alive", survivor);
                }
            }
        }
        return;
    }
    if (var_63f8204e == 1) {
        onfinalsurvivor();
        return;
    }
    if (var_63f8204e == 0) {
        onsurvivorseliminated();
    }
}

// Namespace infect/infect
// Params 0, eflags: 0x4
// Checksum 0x94cf20d1, Offset: 0x1f60
// Size: 0x164
function private function_b10fc1b() {
    level endon(#"game_ended");
    waittillframeend();
    if (!isdefined(self.body) || isalive(self)) {
        return;
    }
    var_4c4a5215 = spawnstruct();
    var_4c4a5215.player = self;
    var_4c4a5215.var_c3317960 = 0;
    if (randomint(2)) {
        gibserverutils::function_b14ffba8(var_4c4a5215);
    }
    if (randomint(2)) {
        gibserverutils::playergibleftlegvel(var_4c4a5215);
    }
    if (randomint(2)) {
        gibserverutils::playergibrightlegvel(var_4c4a5215);
    }
    if (randomint(2)) {
        gibserverutils::playergibleftarmvel(var_4c4a5215);
    }
    if (randomint(2)) {
        gibserverutils::playergibrightarmvel(var_4c4a5215);
    }
}

// Namespace infect/infect
// Params 0, eflags: 0x0
// Checksum 0xa2f44f1, Offset: 0x20d0
// Size: 0x6e
function function_cc49dfcf() {
    level endon(#"game_ended");
    self endon(#"disconnect");
    waitresult = self waittill(#"player_input_revive", #"death");
    return waitresult._notify;
}

// Namespace infect/infect
// Params 0, eflags: 0x0
// Checksum 0xf2859e69, Offset: 0x2148
// Size: 0x1a4
function onfinalsurvivor() {
    if (is_true(level.var_8ea7e2d5)) {
        return;
    }
    level notify(#"hash_15b8b6edc4ed3032", {#var_7090bf53:0});
    sound::play_on_players("mpl_infection_zombie_created_stinger_last");
    globallogic_audio::leader_dialog("infectNoLives", game.defenders);
    globallogic_audio::leader_dialog("infectNoLivesEnemy", game.attackers);
    finalsurvivor = getplayers(game.defenders)[0];
    if (!level.infect_awardedfinalsurvivor) {
        finalsurvivor function_4928e571();
        if (finalsurvivor.var_fc81f69c && finalsurvivor function_f86ae9e5()) {
            finalsurvivor scoreevents::processscoreevent("final_survivor", finalsurvivor);
        }
        level.infect_awardedfinalsurvivor = 1;
    }
    finalsurvivor luinotifyevent(#"hash_7cd844c6661c23d2");
    var_816446f3 = 0;
    if (var_816446f3) {
        level thread finalsurvivoruav(finalsurvivor);
    }
    level.var_8ea7e2d5 = 1;
}

// Namespace infect/infect
// Params 0, eflags: 0x0
// Checksum 0x5b738a7d, Offset: 0x22f8
// Size: 0x74
function function_4928e571() {
    if (!isdefined(self.heroweapon)) {
        return;
    }
    var_98664858 = self gadgetgetslot(self.heroweapon);
    if (self gadgetisready(var_98664858)) {
        return;
    }
    self gadgetpowerset(var_98664858, 100);
}

// Namespace infect/infect
// Params 1, eflags: 0x0
// Checksum 0xc4a15a0b, Offset: 0x2378
// Size: 0x254
function finalsurvivoruav(finalsurvivor) {
    level endon(#"game_ended");
    finalsurvivor endon(#"disconnect", #"death");
    level endon(#"hash_c99e3873a00e736");
    level thread enduavonlatejoiner(finalsurvivor);
    setteamspyplane(game.attackers, 1);
    util::set_team_radar(game.attackers, 1);
    removeuav = 0;
    while (true) {
        prevpos = finalsurvivor.origin;
        wait(4);
        if (removeuav) {
            setteamspyplane(game.attackers, 0);
            util::set_team_radar(game.attackers, 0);
            removeuav = 0;
        }
        wait(6);
        if (distancesquared(prevpos, finalsurvivor.origin) < sqr(200)) {
            setteamspyplane(game.attackers, 1);
            util::set_team_radar(game.attackers, 1);
            removeuav = 1;
            foreach (player in level.players) {
                sound::play_on_players("fly_hunter_raise_plr");
            }
        }
    }
}

// Namespace infect/infect
// Params 1, eflags: 0x0
// Checksum 0x73908cb1, Offset: 0x25d8
// Size: 0xea
function enduavonlatejoiner(finalsurvivor) {
    level endon(#"game_ended");
    finalsurvivor endon(#"disconnect", #"death");
    while (true) {
        var_63f8204e = function_4d9c9e8e(game.defenders);
        if (var_63f8204e > 1) {
            level notify(#"hash_c99e3873a00e736");
            waitframe(1);
            setteamspyplane(game.attackers, 1);
            util::set_team_radar(game.attackers, 1);
            break;
        }
        waitframe(1);
    }
}

// Namespace infect/infect
// Params 0, eflags: 0x0
// Checksum 0x84a8f50b, Offset: 0x26d0
// Size: 0x3c
function ontimelimit() {
    winner = game.defenders;
    level thread endgame(winner, 2);
}

// Namespace infect/infect
// Params 0, eflags: 0x0
// Checksum 0x6cfe6071, Offset: 0x2718
// Size: 0x24
function onsurvivorseliminated() {
    level thread endgame(game.attackers, 6);
}

// Namespace infect/infect
// Params 2, eflags: 0x0
// Checksum 0xd7998cd5, Offset: 0x2748
// Size: 0x44
function function_36f8016e(winning_team, var_c1e98979) {
    round::set_winner(winning_team);
    thread globallogic::function_a3e3bd39(winning_team, var_c1e98979);
}

// Namespace infect/infect
// Params 2, eflags: 0x0
// Checksum 0xec0f0551, Offset: 0x2798
// Size: 0x6c
function endgame(winner, endreasontext) {
    if (is_true(level.var_87c88519)) {
        return;
    }
    level.var_87c88519 = 1;
    util::wait_network_frame();
    function_36f8016e(winner, endreasontext);
}

// Namespace infect/infect
// Params 0, eflags: 0x0
// Checksum 0x9b09603d, Offset: 0x2810
// Size: 0x14
function function_2c22a107() {
    function_7a51569a();
}

// Namespace infect/infect
// Params 0, eflags: 0x0
// Checksum 0xd1b767a, Offset: 0x2830
// Size: 0x14
function onplayerdisconnect() {
    function_7a51569a();
}

// Namespace infect/infect
// Params 0, eflags: 0x0
// Checksum 0xa31a8177, Offset: 0x2850
// Size: 0x1c0
function function_7a51569a() {
    if (is_true(level.gameended)) {
        return;
    }
    var_b5d2cc6a = function_4d9c9e8e(game.attackers);
    var_63f8204e = function_4d9c9e8e(game.defenders);
    if (isdefined(self.infect_isbeingchosen) || level.infect_chosefirstinfected) {
        if (var_b5d2cc6a > 0 && var_63f8204e > 0) {
            if (var_63f8204e == 1) {
                onfinalsurvivor();
            }
        } else if (var_63f8204e == 0) {
            onsurvivorseliminated();
        } else if (var_b5d2cc6a == 0) {
            if (var_63f8204e == 1) {
                winner = game.defenders;
                level thread endgame(winner, 6);
            } else if (var_63f8204e > 1) {
                level.infect_chosefirstinfected = 0;
                level thread choosefirstinfected();
                level notify(#"abort forfeit");
            }
        }
        return;
    }
    var_6d6ee08e = function_170ee166(game.defenders);
    if (var_6d6ee08e.size < 1) {
        level notify(#"hash_367e3645fd146620");
    }
}

// Namespace infect/infect
// Params 2, eflags: 0x0
// Checksum 0x2ee8580c, Offset: 0x2a18
// Size: 0x72
function givecustomloadout(*takeallweapons, *alreadyspawned) {
    if (self.team == game.attackers) {
        self function_bbde018c();
    } else if (self.team == game.defenders) {
        self function_845acdea();
    }
    return self.spawnweapon;
}

// Namespace infect/infect
// Params 0, eflags: 0x0
// Checksum 0x3f001936, Offset: 0x2a98
// Size: 0x94
function function_845acdea() {
    loadout::init_player(1);
    loadout::function_f436358b(self.curclass);
    level.givecustomloadout = undefined;
    loadout::give_loadout(self.team, self.curclass);
    level.givecustomloadout = &givecustomloadout;
    self clientfield::set_player_uimodel("hud_items_cranked.infectedSurvivorTier", 0);
}

// Namespace infect/infect
// Params 0, eflags: 0x0
// Checksum 0xc186db8c, Offset: 0x2b38
// Size: 0x314
function function_bbde018c() {
    loadout::init_player(1);
    if (loadout::function_87bcb1b()) {
        loadout::function_f436358b(self.curclass);
    }
    self infection::give_loadout();
    self notify(#"switched_field_upgrade", {#var_51246a31:1});
    self clientfield::set_player_uimodel("hud_items_cranked.infectedSurvivorTier", 0);
    defaultweapon = level.var_757f1b92;
    self function_e6d991bc(defaultweapon);
    self setspawnweapon(defaultweapon);
    self.spawnweapon = defaultweapon;
    primaryoffhand = level.var_4ae49bbd;
    primaryoffhandcount = 1;
    self giveweapon(primaryoffhand);
    self setweaponammostock(primaryoffhand, primaryoffhandcount);
    self switchtooffhand(primaryoffhand);
    self.grenadetypeprimary = primaryoffhand;
    self.grenadetypeprimarycount = primaryoffhandcount;
    if (is_true(level.specialistequipmentreadyonrespawn)) {
        self ability_util::function_36a15b60(primaryoffhand);
    }
    self giveweapon(level.weaponbasemelee);
    self.heroweapon = undefined;
    e_whippings = isdefined(getgametypesetting(#"hash_4ca06c610b5d53bd")) ? getgametypesetting(#"hash_4ca06c610b5d53bd") : 0;
    if (!e_whippings) {
        secondaryoffhand = getweapon(#"gadget_health_regen");
        secondaryoffhandcount = 1;
        self giveweapon(secondaryoffhand);
        self setweaponammoclip(secondaryoffhand, secondaryoffhandcount);
        self switchtooffhand(secondaryoffhand);
        loadout = self loadout::get_loadout_slot("secondarygrenade");
        loadout.weapon = secondaryoffhand;
        loadout.count = secondaryoffhandcount;
        self ability_util::function_36a15b60(secondaryoffhand);
    }
}

// Namespace infect/infect
// Params 1, eflags: 0x0
// Checksum 0x22539f0c, Offset: 0x2e58
// Size: 0x1a
function settimer(time) {
    self.time = time;
}

// Namespace infect/infect
// Params 0, eflags: 0x0
// Checksum 0x690fb37a, Offset: 0x2e80
// Size: 0x378
function choosefirstinfected() {
    level endon(#"game_ended", #"hash_367e3645fd146620");
    level.infect_allowsuicide = 0;
    level.var_b93ecc24 = undefined;
    if (level.inprematchperiod) {
        while (game.state != #"playing") {
            waitframe(1);
        }
    }
    foreach (player in level.players) {
        level.infect_timer mp_infect_timer::open(player);
        level.infect_timer mp_infect_timer::function_8c8674a4(player, 8);
    }
    for (i = 1; i <= 8; i++) {
        wait(1);
        foreach (player in level.players) {
            if (8 - i) {
                level.infect_timer mp_infect_timer::function_8c8674a4(player, 8 - i);
                continue;
            }
            level.infect_timer mp_infect_timer::close(player);
            if (!player_role::is_valid(player player_role::get())) {
                draft::assign_remaining_players(player);
            }
        }
    }
    var_6d6ee08e = function_170ee166(game.defenders);
    if (var_6d6ee08e.size > 0) {
        array::random(var_6d6ee08e) setfirstinfected();
    } else {
        level.infect_choosingfirstinfected = 0;
    }
    level notify(#"abort forfeit");
    wait(30);
    foreach (player in level.players) {
        if (player.team == #"allies") {
            scoreevents::processscoreevent("infected_survive_30_seconds", player);
        }
    }
}

// Namespace infect/infect
// Params 0, eflags: 0x0
// Checksum 0x3e4660af, Offset: 0x3200
// Size: 0x90
function function_a6489256() {
    while (true) {
        waitresult = level waittill(#"game_ended", #"hash_367e3645fd146620");
        if (isdefined(level.var_43406ee9)) {
            level.var_43406ee9.alpha = 0;
        }
        if (waitresult._notify == "game_ended") {
            return;
        }
        level.infect_choosingfirstinfected = 0;
    }
}

// Namespace infect/infect
// Params 0, eflags: 0x0
// Checksum 0x3f37d8f6, Offset: 0x3298
// Size: 0xf6
function function_a5abd7ee() {
    level notify(#"timeextended");
    level endon(#"game_ended", #"hash_14fed44cd3ece79d", #"timeextended");
    timeout = 0;
    while (isdefined(level.var_43406ee9) && level.var_43406ee9.alpha > 0) {
        hostmigration::waitlongdurationwithhostmigrationpause(0.5);
        timeout++;
        if (timeout == 20) {
            return;
        }
    }
    level.var_6c6b8981.alpha = 1;
    hostmigration::waitlongdurationwithhostmigrationpause(1);
    level.var_6c6b8981.alpha = 0;
}

// Namespace infect/infect
// Params 0, eflags: 0x0
// Checksum 0xc13dae4, Offset: 0x3398
// Size: 0x82
function function_3ba09e5e() {
    while (true) {
        waitresult = level waittill(#"game_ended", #"hash_14fed44cd3ece79d");
        if (isdefined(level.var_6c6b8981)) {
            level.var_6c6b8981.alpha = 0;
        }
        if (waitresult._notify == "game_ended") {
            return;
        }
    }
}

// Namespace infect/infect
// Params 1, eflags: 0x0
// Checksum 0x872aaebb, Offset: 0x3428
// Size: 0x10a
function function_170ee166(team) {
    activeplayers = [];
    teamplayers = getplayers(team);
    foreach (player in teamplayers) {
        if (player.sessionstate == "spectator") {
            continue;
        }
        if (!isdefined(activeplayers)) {
            activeplayers = [];
        } else if (!isarray(activeplayers)) {
            activeplayers = array(activeplayers);
        }
        activeplayers[activeplayers.size] = player;
    }
    return activeplayers;
}

// Namespace infect/infect
// Params 0, eflags: 0x0
// Checksum 0x4194fbb7, Offset: 0x3540
// Size: 0x332
function setfirstinfected() {
    self endon(#"disconnect");
    self.infect_isbeingchosen = 1;
    while (!isalive(self) || self util::isusingremote()) {
        waitframe(1);
    }
    if (is_true(self.iscarrying)) {
        self notify(#"hash_3c03f07896658fb7");
        waitframe(1);
    }
    while (self ismantling()) {
        waitframe(1);
    }
    while (!self isonground() && !self isonladder() && !self function_b4813488() && !self isziplining()) {
        waitframe(1);
    }
    function_e030bdaf(self);
    self.switching_teams = undefined;
    if (self isusingoffhand()) {
        self forceoffhandend();
    }
    self disableoffhandspecial();
    self thread function_57f1203();
    playfxontag("player/fx8_plyr_infect_change_flash_3p", self, "j_spine4");
    self playsound(#"hash_3c126f4a9d761794");
    loadout::give_loadout(self.team, self.curclass);
    self infection::give_body();
    self clientfield::set_to_player("infected_zombie_postfx", 1);
    var_63f8204e = function_4d9c9e8e(game.defenders);
    if (var_63f8204e < 1) {
        level.var_ad5ac73b = 1;
    } else {
        forcespawnteam(game.defenders);
    }
    level thread popups::displayteammessagetoall(#"mp/got_infected", self);
    scoreevents::processscoreevent("first_infected", self);
    sound::play_on_players("mpl_infection_zombie_created_stinger");
    self thread infection::function_da08f4d0();
    level.infect_allowsuicide = 1;
    level.infect_chosefirstinfected = 1;
    self.infect_isbeingchosen = undefined;
    self.var_ec2d285c = 0;
}

// Namespace infect/infect
// Params 1, eflags: 0x0
// Checksum 0x5ad6e32, Offset: 0x3880
// Size: 0xb0
function forcespawnteam(team) {
    players = getplayers(team);
    foreach (player in players) {
        player thread playerforcespawn();
    }
}

// Namespace infect/infect
// Params 0, eflags: 0x0
// Checksum 0x3242aa3b, Offset: 0x3938
// Size: 0x120
function playerforcespawn() {
    level endon(#"game_ended");
    self endon(#"death", #"disconnect", #"spawned");
    if (is_true(self.hasspawned)) {
        return;
    }
    if (self.pers[#"team"] == "spectator") {
        return;
    }
    self function_219eee6b();
    self.pers[#"class"] = level.defaultclass;
    self.curclass = level.defaultclass;
    self globallogic_ui::closemenus();
    self closemenu("ChooseClass_InGame");
    self thread [[ level.spawnclient ]]();
}

// Namespace infect/infect
// Params 2, eflags: 0x0
// Checksum 0xcd2d326c, Offset: 0x3a60
// Size: 0xa4
function function_e030bdaf(player, wassuicide = 0) {
    player infection::function_882350c();
    player weapons::function_830e007d();
    player changeteam(game.attackers);
    player luinotifyevent(#"hash_685401a095af9a21");
    if (!wassuicide) {
        function_862e5e08();
    }
}

// Namespace infect/infect
// Params 0, eflags: 0x0
// Checksum 0x983161f7, Offset: 0x3b10
// Size: 0x54
function function_57f1203() {
    level endon(#"game_ended");
    self endon(#"death");
    self waittill(#"weapon_change");
    self enableoffhandspecial();
}

// Namespace infect/infect
// Params 1, eflags: 0x0
// Checksum 0xc1a433c3, Offset: 0x3b70
// Size: 0x186
function changeteam(team) {
    if (team === #"axis") {
        self infection::function_d3da95cf();
    } else {
        if (self.sessionstate != "dead") {
            self.switching_teams = 1;
            self.switchedteamsresetgadgets = 1;
            self.joining_team = team;
            self.leaving_team = self.pers[#"team"];
        }
        self teams::function_dc7eaabd(team);
        self.pers[#"weapon"] = undefined;
        self.pers[#"spawnweapon"] = undefined;
        self.pers[#"savedmodel"] = undefined;
        self.pers[#"teamtime"] = undefined;
    }
    self clientfield::set("Infected.player_infected", team === #"axis");
    self clientfield::set_player_uimodel("hudItems.isInfected", team === #"axis");
    self globallogic_ui::updateobjectivetext();
    self notify(#"end_respawn");
}

// Namespace infect/infect
// Params 1, eflags: 0x0
// Checksum 0x8ff93479, Offset: 0x3d00
// Size: 0x34
function function_4d9c9e8e(team) {
    playersonteam = getplayers(team);
    return playersonteam.size;
}

// Namespace infect/infect
// Params 1, eflags: 0x0
// Checksum 0xa58a7bf1, Offset: 0x3d40
// Size: 0x64
function updateteamscore(team) {
    score = function_4d9c9e8e(team);
    game.stat[#"teamscores"][team] = score;
    globallogic_score::updateteamscores(team);
}

// Namespace infect/infect
// Params 1, eflags: 0x0
// Checksum 0xa84ae0f7, Offset: 0x3db0
// Size: 0x82
function function_e6d991bc(weapon) {
    self giveweapon(weapon);
    self givestartammo(weapon);
    self setblockweaponpickup(weapon, 1);
    self switchtoweapon(weapon);
    self.var_8a886ffc = weapon;
}

// Namespace infect/infect
// Params 0, eflags: 0x0
// Checksum 0xd4ffe1f4, Offset: 0x3e40
// Size: 0x130
function function_d3beb9d3() {
    attackers = getplayers(game.attackers);
    if (attackers.size < 2) {
        return;
    }
    foreach (player in attackers) {
        if (!isalive(player)) {
            continue;
        }
        if (player.var_8a886ffc !== level.var_757f1b92) {
            if (isdefined(player.var_8a886ffc)) {
                player takeweapon(player.var_8a886ffc);
            }
            newweapon = level.var_757f1b92;
            player function_e6d991bc(newweapon);
        }
    }
}

// Namespace infect/infect
// Params 2, eflags: 0x0
// Checksum 0xb9ce366b, Offset: 0x3f78
// Size: 0x3e
function function_c61a7b00(weapon, var_6d42b98) {
    if (weapon == self.grenadetypeprimary || weapon == self.grenadetypesecondary) {
        return 0;
    }
    return var_6d42b98;
}

// Namespace infect/infect
// Params 0, eflags: 0x0
// Checksum 0x5a476649, Offset: 0x3fc0
// Size: 0x30
function function_862e5e08() {
    level.var_6b102fee = gettimelimit(1);
    level.var_b93ecc24 = gettime();
}

// Namespace infect/infect
// Params 1, eflags: 0x0
// Checksum 0xff1840e0, Offset: 0x3ff8
// Size: 0xd4
function gettimelimit(*var_abfac690) {
    defaulttimelimit = getgametypesetting("timeLimit");
    if (defaulttimelimit == 0) {
        return 0;
    }
    if (!isdefined(level.var_6b102fee)) {
        return defaulttimelimit;
    }
    if (!isdefined(level.var_b93ecc24)) {
        level.var_b93ecc24 = gettime();
    }
    timelimit = level.var_6b102fee + 0.166667;
    var_b7bcdf3b = (level.var_b93ecc24 - level.starttime + 1000) / 60000;
    if (timelimit - var_b7bcdf3b > defaulttimelimit) {
        timelimit = var_b7bcdf3b + defaulttimelimit;
    }
    return timelimit;
}

// Namespace infect/infect
// Params 8, eflags: 0x0
// Checksum 0x3533d517, Offset: 0x40d8
// Size: 0x284
function function_ef516d85(winner, endtype, endreasontext, outcometext, team, winnerenum, notifyroundendtoui, matchbonus) {
    if (endtype == "roundend") {
        if (winner == "tie") {
            outcometext = game.strings[#"draw"];
        } else if (isdefined(self.pers[#"team"]) && winner == team) {
            outcometext = game.strings[#"victory"];
            overridespectator = 1;
        } else {
            outcometext = game.strings[#"defeat"];
            if ((level.rankedmatch || level.leaguematch) && self.pers[#"latejoin"] === 1) {
                endreasontext = game.strings[#"join_in_progress_loss"];
            }
            overridespectator = 1;
        }
        notifyroundendtoui = 0;
        if (team == "spectator" && overridespectator) {
            foreach (team in level.teams) {
                if (endreasontext == game.strings[team + "_eliminated"]) {
                    endreasontext = game.strings[#"cod_caster_team_eliminated"];
                    break;
                }
            }
            outcometext = game.strings[#"cod_caster_team_wins"];
        }
        self luinotifyevent(#"show_outcome", 5, outcometext, endreasontext, int(matchbonus), winnerenum, notifyroundendtoui);
        return true;
    }
    return false;
}

// Namespace infect/infect
// Params 1, eflags: 0x0
// Checksum 0x3c4792d3, Offset: 0x4368
// Size: 0x5c
function function_d2136dea(player) {
    if (player.team === game.attackers) {
        playerweapon = player getcurrentweapon();
        if (isdefined(playerweapon.worldmodel)) {
            return playerweapon;
        }
    }
    return undefined;
}

// Namespace infect/infect
// Params 0, eflags: 0x0
// Checksum 0x6290bd3d, Offset: 0x43d0
// Size: 0x64
function function_df1183b3() {
    level endon(#"game_ended");
    level notify(#"hash_674fa4643cd81a8c");
    level endon(#"hash_674fa4643cd81a8c");
    wait(30);
    forcespawnteam(game.defenders);
}

// Namespace infect/infect
// Params 1, eflags: 0x0
// Checksum 0xa1cb3389, Offset: 0x4440
// Size: 0x2c
function function_244af78f(weaponitem) {
    weaponitem hidefromteam(game.attackers);
}

// Namespace infect/infect
// Params 1, eflags: 0x0
// Checksum 0xfbae24a0, Offset: 0x4478
// Size: 0x4c
function nukedetonated(player) {
    if (player.team !== game.defenders) {
        return;
    }
    level thread endgame(player.team, 12);
}

// Namespace infect/infect
// Params 0, eflags: 0x0
// Checksum 0xa5749362, Offset: 0x44d0
// Size: 0x40
function function_1a87243c() {
    n_random_int = randomintrange(1, 2);
    game.musicset = "_zm_0" + n_random_int;
}

// Namespace infect/infect
// Params 1, eflags: 0x4
// Checksum 0xb3788d4d, Offset: 0x4518
// Size: 0x180
function private function_986114ce(talent) {
    if (!isplayer(self) || !isalive(self)) {
        return;
    }
    if (self function_6c32d092(talent)) {
        return;
    }
    var_98b8d4a3 = self getloadoutperks(self.class_num);
    self function_b5feff95(talent);
    var_c89dd845 = self getloadoutperks(self.class_num);
    if (var_98b8d4a3.size == var_c89dd845.size) {
        return;
    }
    foreach (perk in var_c89dd845) {
        if (isinarray(var_98b8d4a3, perk)) {
            continue;
        }
        self setperk(perk);
    }
}

