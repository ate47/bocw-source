// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\killstreaks_shared.gsc;
#using script_32399001bdb550da;
#using scripts\cp_common\gametypes\loadout.gsc;
#using scripts\cp_common\gametypes\globallogic_utils.gsc;
#using scripts\cp_common\gametypes\globallogic_ui.gsc;
#using scripts\cp_common\gametypes\globallogic_player.gsc;
#using scripts\cp_common\gametypes\globallogic_defaults.gsc;
#using scripts\cp_common\gametypes\globallogic.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\spectating.gsc;
#using script_44b0b8420eabacad;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\player\player_shared.gsc;
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\hud_shared.gsc;
#using scripts\core_common\hud_message_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace globallogic_spawn;

// Namespace globallogic_spawn/globallogic_spawn
// Params 1, eflags: 0x2 linked
// Checksum 0x9ef0e14c, Offset: 0x270
// Size: 0x488
function timeuntilspawn(includeteamkilldelay) {
    if (level.ingraceperiod && !self.hasspawned) {
        return 0;
    }
    respawndelay = 0;
    if (is_true(self.hasspawned)) {
        result = self [[ level.onrespawndelay ]]();
        if (isdefined(result)) {
            respawndelay = result;
        } else if (is_true(self.diedonvehicle) && isdefined(level.var_cf393bff)) {
            self.var_84c0402e = undefined;
            self.bleedout_time = undefined;
            respawndelay = level.var_cf393bff;
        } else if (isdefined(level.var_a4107aed)) {
            respawndelay = level.var_a4107aed;
        } else if (self.team === #"allies" && isdefined(level.var_6e5e9604)) {
            respawndelay = level.var_6e5e9604;
        } else if (self.team === #"axis" && isdefined(level.var_c260c3bd)) {
            respawndelay = level.var_c260c3bd;
        } else {
            respawndelay = level.playerrespawndelay;
        }
        if (isdefined(self.lastspawntime) && isdefined(level.var_1cac200a) && gettime() - self.var_88f8dfe3 <= level.var_1cac200a * 1000) {
            if (!isdefined(self.var_4999cc5d)) {
                self.var_4999cc5d = 0;
            } else {
                self.var_4999cc5d += 1;
            }
        } else {
            self.var_4999cc5d = 0;
        }
        if (isplayer(self) && !isbot(self) && isdefined(level.var_a164210a)) {
            var_7415756f = level.var_a164210a * self.var_4999cc5d;
            respawndelay += var_7415756f;
            if (isdefined(level.var_a6a26da0) && respawndelay > level.var_a6a26da0) {
                respawndelay = level.var_a6a26da0;
            }
            if (var_7415756f > 0) {
                var_1581b0a8 = isdefined(var_7415756f) ? "" + var_7415756f : "";
                /#
                    debug2dtext((900, 500, 0), var_1581b0a8 + "<unknown string>", (1, 1, 1), 1, (0, 0, 0), 0.5, 1, 80);
                #/
            }
        }
        if (is_true(self.suicide) && level.suicidespawndelay > 0) {
            respawndelay += level.suicidespawndelay;
        }
        if (is_true(self.teamkilled) && level.teamkilledspawndelay > 0) {
            respawndelay += level.teamkilledspawndelay;
        }
        if (includeteamkilldelay && is_true(self.teamkillpunish)) {
            respawndelay += globallogic_player::teamkilldelay();
        }
        if (isdefined(self.bleedout_time) && isdefined(self.var_84c0402e)) {
            assert(self.bleedout_time >= 0);
            assert(self.bleedout_time <= self.var_84c0402e);
            respawndelay -= self.var_84c0402e - self.bleedout_time;
        }
    }
    wavebased = level.waverespawndelay > 0;
    if (wavebased) {
        return self timeuntilwavespawn(respawndelay);
    }
    return respawndelay;
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 0, eflags: 0x2 linked
// Checksum 0x21ce3429, Offset: 0x700
// Size: 0x90
function allteamshaveexisted() {
    foreach (team, _ in level.teams) {
        if (!level.everexisted[team]) {
            return false;
        }
    }
    return true;
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 0, eflags: 0x2 linked
// Checksum 0x62b93779, Offset: 0x798
// Size: 0x176
function mayspawn() {
    if (isdefined(level.playermayspawn) && !self [[ level.playermayspawn ]]()) {
        return false;
    }
    if (level.inovertime) {
        return false;
    }
    if (level.playerqueuedrespawn && !isdefined(self.allowqueuespawn) && !level.ingraceperiod && !spawning::usestartspawns()) {
        return false;
    }
    if (is_true(self.var_f68bc076)) {
        return false;
    }
    if (level.numlives) {
        if (level.teambased) {
            gamehasstarted = allteamshaveexisted();
        } else {
            gamehasstarted = level.maxplayercount > 1 || !util::isoneround() && !util::isfirstround();
        }
        if (!self.pers[#"lives"]) {
            return false;
        } else if (gamehasstarted) {
            if (!level.ingraceperiod && !self.hasspawned) {
                return false;
            }
        }
    }
    return true;
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 1, eflags: 0x2 linked
// Checksum 0x82ae7fa2, Offset: 0x918
// Size: 0x1a4
function timeuntilwavespawn(minimumwait) {
    earliestspawntime = gettime() + int(minimumwait * 1000);
    lastwavetime = level.lastwave[self.pers[#"team"]];
    wavedelay = int(level.wavedelay[self.pers[#"team"]] * 1000);
    if (wavedelay == 0) {
        return 0;
    }
    var_a0122c26 = 50;
    var_e0fb0ad5 = var_a0122c26 * (isdefined(self.wavespawnindex) ? self.wavespawnindex : 0);
    elapsed = max(0, earliestspawntime - lastwavetime - var_e0fb0ad5);
    numwavespassedearliestspawntime = elapsed / wavedelay;
    numwaves = ceil(numwavespassedearliestspawntime);
    timeofspawn = lastwavetime + numwaves * wavedelay;
    if (isdefined(self.wavespawnindex)) {
        timeofspawn += var_e0fb0ad5;
    }
    return float(timeofspawn - gettime()) / 1000;
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 0, eflags: 0x2 linked
// Checksum 0x709cf1c8, Offset: 0xac8
// Size: 0x32
function stoppoisoningandflareonspawn() {
    self.inpoisonarea = 0;
    self.inburnarea = 0;
    self.inflarevisionarea = 0;
    self.ingroundnapalm = 0;
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 0, eflags: 0x0
// Checksum 0x1152ca4f, Offset: 0xb08
// Size: 0x84
function spawnplayerprediction() {
    self endon(#"disconnect", #"end_respawn", #"game_ended", #"joined_spectators", #"spawned");
    while (true) {
        wait(0.5);
        self [[ level.onspawnplayer ]](1);
    }
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 0, eflags: 0x2 linked
// Checksum 0x3d598553, Offset: 0xb98
// Size: 0x7e4
function spawnplayer() {
    profileNamedStart(#"");
    self endon(#"disconnect", #"joined_spectators");
    hadspawned = self.hasspawned;
    self player::spawn_player();
    self setcharacterbodytype(0);
    self setcharacteroutfit(0);
    self hud_message::clearlowermessage();
    self.nextkillstreakfree = undefined;
    self.activeuavs = 0;
    self.activecounteruavs = 0;
    self.activesatellites = 0;
    self.deathmachinekills = 0;
    self.diedonvehicle = undefined;
    self.disable_score_events = 1;
    if (is_false(self.wasaliveatmatchstart)) {
        if (level.ingraceperiod || globallogic_utils::gettimepassed() < 20000) {
            self.wasaliveatmatchstart = 1;
        }
    }
    profileNamedStart(#"");
    self [[ level.onspawnplayer ]](0);
    if (isdefined(level.playerspawnedcb)) {
        self [[ level.playerspawnedcb ]]();
    }
    profileNamedStop();
    profileNamedStop();
    globallogic::updateteamstatus();
    self stoppoisoningandflareonspawn();
    self.sensorgrenadedata = undefined;
    if (!isdefined(self.curclass)) {
        waitframe(1);
    }
    profileNamedStart(#"");
    assert(globallogic_utils::isvalidclass(self.curclass) || isbot(self));
    self loadout::setclass(self.curclass);
    var_db3f2906 = self savegame::function_2ee66e93("altPlayerID", undefined);
    var_d4a479a1 = undefined;
    if (isdefined(var_db3f2906)) {
        foreach (var_88ad84f4 in level.players) {
            if (var_88ad84f4 getxuid() === var_db3f2906) {
                var_d4a479a1 = var_88ad84f4;
                break;
            }
        }
        if (!isdefined(var_d4a479a1)) {
            self savegame::set_player_data("altPlayerID", undefined);
        }
    }
    self thread loadout::giveloadout(self.team, self.curclass, var_d4a479a1);
    if (is_true(self.var_c071a13e)) {
        self.var_c071a13e = undefined;
    } else {
        self lui::screen_close_menu();
    }
    if (level.inprematchperiod) {
        self val::set(#"prematch", "ignoreme", 1);
        team = self.pers[#"team"];
    } else {
        self val::reset(#"prematch", "freezecontrols");
        self enableweapons();
        if (!hadspawned && game.state == "playing") {
            team = self.team;
        }
    }
    self val::reset(#"roundend", "freezecontrols");
    self val::reset(#"suicide", "freezecontrols");
    if (!isdefined(getdvar(#"scr_showperksonspawn"))) {
        setdvar(#"scr_showperksonspawn", 0);
    }
    if (level.hardcoremode) {
        setdvar(#"scr_showperksonspawn", 0);
    }
    /#
        if (getdvarint(#"scr_showperksonspawn", 0) == 1 && game.state != "<unknown string>") {
            profileNamedStart(#"");
            if (level.perksenabled == 1) {
                self hud::showperks();
            }
            profileNamedStop();
        }
    #/
    if (isdefined(self.pers[#"momentum"])) {
        self.momentum = self.pers[#"momentum"];
    }
    profileNamedStop();
    self setnosunshadow();
    waitframe(1);
    self notify(#"spawned_player");
    if (!getdvarint(#"art_review", 0)) {
        self.var_913d3fca = 0;
        self.last_damaged_time = 0;
        self.var_63a30c1 = 0;
        self.var_7e008e0c = 0;
        callback::callback(#"on_player_spawned");
        if (isdefined(self.var_f8271fa3)) {
            self.var_f8271fa3 delete();
            self.var_f8271fa3 = undefined;
        }
    }
    /#
        print("<unknown string>" + self.origin[0] + "<unknown string>" + self.origin[1] + "<unknown string>" + self.origin[2] + "<unknown string>");
    #/
    setdvar(#"scr_selecting_location", "");
    self thread function_e3b1cd54();
    self util::set_lighting_state();
    self util::set_sun_shadow_split_distance();
    self.firstspawn = 0;
    self.var_88f8dfe3 = gettime();
    self thread util::cleanup_fancycam();
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 0, eflags: 0x2 linked
// Checksum 0x2e925eec, Offset: 0x1388
// Size: 0x92
function function_e3b1cd54() {
    self notify(#"hash_587f51dc5f621d5d");
    self endon(#"hash_587f51dc5f621d5d", #"disconnect");
    while (true) {
        waitresult = self waittill(#"vehicle_death");
        if (waitresult.vehicle_died) {
            self.diedonvehicle = 1;
            continue;
        }
        self.var_e961196c = 1;
    }
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 2, eflags: 0x2 linked
// Checksum 0x142cb56d, Offset: 0x1428
// Size: 0x5c
function spawnspectator(origin, angles) {
    self notify(#"spawned");
    self notify(#"end_respawn");
    self notify(#"spawned_spectator");
    in_spawnspectator(origin, angles);
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 2, eflags: 0x2 linked
// Checksum 0xc0ac8850, Offset: 0x1490
// Size: 0x7a
function respawn_asspectator(origin, angles) {
    in_spawnspectator(origin, angles);
    if (isplayer(self) && !isbot(self) && level.gametype === "pvp") {
    }
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 2, eflags: 0x2 linked
// Checksum 0x6b85678b, Offset: 0x1518
// Size: 0x134
function in_spawnspectator(origin, angles) {
    pixmarker("BEGIN: in_spawnSpectator");
    self player::set_spawn_variables();
    self.sessionstate = "spectator";
    self.spectatorclient = -1;
    self.archivetime = 0;
    self.psoffsettime = 0;
    self.friendlydamage = undefined;
    if (self.pers[#"team"] == "spectator") {
        self.statusicon = "";
    } else {
        self.statusicon = "hud_status_dead";
    }
    spectating::set_permissions_for_machine();
    [[ level.onspawnspectator ]](origin, angles);
    if (level.teambased && !level.splitscreen) {
        self thread spectatorthirdpersonness();
    }
    pixmarker("END: in_spawnSpectator");
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 0, eflags: 0x2 linked
// Checksum 0xd19c0961, Offset: 0x1658
// Size: 0x5a
function spectatorthirdpersonness() {
    self endon(#"disconnect", #"spawned");
    self notify(#"spectator_thirdperson_thread");
    self endon(#"spectator_thirdperson_thread");
    self.spectatingthirdperson = 0;
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 1, eflags: 0x0
// Checksum 0x34f14a25, Offset: 0x16c0
// Size: 0x128
function forcespawn(time) {
    self endon(#"death", #"hash_54543f163347573c", #"spawned");
    if (!isdefined(time)) {
        time = 60;
    }
    wait(time);
    if (is_true(self.hasspawned)) {
        return;
    }
    if (self.pers[#"team"] == "spectator") {
        return;
    }
    if (!globallogic_utils::isvalidclass(self.pers[#"class"])) {
        self.pers[#"class"] = "CLASS_CUSTOM1";
        self.curclass = self.pers[#"class"];
    }
    self globallogic_ui::closemenus();
    self thread [[ level.spawnclient ]]();
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 0, eflags: 0x2 linked
// Checksum 0xd670c028, Offset: 0x17f0
// Size: 0x64
function kickifdontspawn() {
    /#
        if (getdvarint(#"scr_hostmigrationtest", 0) == 1) {
            return;
        }
    #/
    if (self ishost()) {
        return;
    }
    self kickifidontspawninternal();
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 0, eflags: 0x2 linked
// Checksum 0x6849a69a, Offset: 0x1860
// Size: 0x21c
function kickifidontspawninternal() {
    self endon(#"death", #"disconnect", #"spawned");
    waittime = 90;
    if (getdvarstring(#"scr_kick_time") != "") {
        waittime = getdvarfloat(#"scr_kick_time", 0);
    }
    mintime = 45;
    if (getdvarstring(#"scr_kick_mintime") != "") {
        mintime = getdvarfloat(#"scr_kick_mintime", 0);
    }
    starttime = gettime();
    kickwait(waittime);
    timepassed = float(gettime() - starttime) / 1000;
    if (timepassed < waittime - 0.1 && timepassed < mintime) {
        return;
    }
    if (is_true(self.hasspawned)) {
        return;
    }
    if (sessionmodeisprivate()) {
        return;
    }
    if (self.pers[#"team"] == "spectator") {
        return;
    }
    if (!mayspawn()) {
        return;
    }
    globallogic::gamehistoryplayerkicked();
    kick(self getentitynumber());
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 1, eflags: 0x2 linked
// Checksum 0xfb7942fd, Offset: 0x1a88
// Size: 0x22
function kickwait(*waittime) {
    level endon(#"game_ended");
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 0, eflags: 0x0
// Checksum 0x16317573, Offset: 0x1ab8
// Size: 0x104
function spawninterroundintermission() {
    self notify(#"spawned");
    self notify(#"end_respawn");
    self player::set_spawn_variables();
    self hud_message::clearlowermessage();
    self.sessionstate = "spectator";
    self.spectatorclient = -1;
    self.archivetime = 0;
    self.psoffsettime = 0;
    self.friendlydamage = undefined;
    self globallogic_defaults::default_onspawnintermission();
    self setorigin(self.origin);
    self setplayerangles(self.angles);
    self clientfield::set_to_player("player_dof_settings", 2);
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 1, eflags: 0x2 linked
// Checksum 0xd4b3bd18, Offset: 0x1bc8
// Size: 0x104
function spawnintermission(usedefaultcallback) {
    self notify(#"spawned");
    self notify(#"end_respawn");
    self endon(#"disconnect");
    self player::set_spawn_variables();
    self hud_message::clearlowermessage();
    self.sessionstate = "intermission";
    self.spectatorclient = -1;
    self.archivetime = 0;
    self.psoffsettime = 0;
    self.friendlydamage = undefined;
    if (isdefined(usedefaultcallback) && usedefaultcallback) {
        globallogic_defaults::default_onspawnintermission();
    } else {
        [[ level.onspawnintermission ]]();
    }
    self clientfield::set_to_player("player_dof_settings", 2);
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 1, eflags: 0x2 linked
// Checksum 0xd3bd411a, Offset: 0x1cd8
// Size: 0xb8
function spawnqueuedclientonteam(team) {
    player_to_spawn = undefined;
    for (i = 0; i < level.deadplayers[team].size; i++) {
        player = level.deadplayers[team][i];
        if (player.waitingtospawn) {
            continue;
        }
        player_to_spawn = player;
        break;
    }
    if (isdefined(player_to_spawn)) {
        player_to_spawn.allowqueuespawn = 1;
        player_to_spawn globallogic_ui::closemenus();
        player_to_spawn thread [[ level.spawnclient ]]();
    }
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 2, eflags: 0x2 linked
// Checksum 0x37efabf8, Offset: 0x1d98
// Size: 0x130
function spawnqueuedclient(dead_player_team, killer) {
    if (!level.playerqueuedrespawn) {
        return;
    }
    util::waittillslowprocessallowed();
    spawn_team = undefined;
    if (isdefined(killer) && isdefined(killer.team) && isdefined(level.teams[killer.team])) {
        spawn_team = killer.team;
    }
    if (isdefined(spawn_team)) {
        spawnqueuedclientonteam(spawn_team);
        return;
    }
    foreach (team, _ in level.teams) {
        if (team == dead_player_team) {
            continue;
        }
        spawnqueuedclientonteam(team);
    }
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 0, eflags: 0x2 linked
// Checksum 0xc25c4004, Offset: 0x1ed0
// Size: 0xd6
function allteamsnearscorelimit() {
    if (!level.teambased) {
        return false;
    }
    if (level.scorelimit <= 1) {
        return false;
    }
    foreach (team, _ in level.teams) {
        if (!(game.stat[#"teamscores"][team] >= level.scorelimit - 1)) {
            return false;
        }
    }
    return true;
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 0, eflags: 0x2 linked
// Checksum 0x36d83f7b, Offset: 0x1fb0
// Size: 0x6e
function shouldshowrespawnmessage() {
    if (util::waslastround()) {
        return false;
    }
    if (util::isoneround()) {
        return false;
    }
    if (isdefined(level.livesdonotreset) && level.livesdonotreset) {
        return false;
    }
    if (allteamsnearscorelimit()) {
        return false;
    }
    return true;
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 0, eflags: 0x2 linked
// Checksum 0xbd019e8b, Offset: 0x2028
// Size: 0x44
function default_spawnmessage() {
    hud_message::setlowermessage(game.strings[#"spawn_next_round"]);
    self thread globallogic_ui::removespawnmessageshortly(3);
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 0, eflags: 0x2 linked
// Checksum 0x27b20481, Offset: 0x2078
// Size: 0x28
function showspawnmessage() {
    if (shouldshowrespawnmessage()) {
        self thread [[ level.spawnmessage ]]();
    }
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 1, eflags: 0x2 linked
// Checksum 0x816f5d5b, Offset: 0x20a8
// Size: 0x136
function spawnclient(timealreadypassed) {
    assert(isdefined(self.team));
    assert(globallogic_utils::isvalidclass(self.curclass));
    if (!self mayspawn()) {
        currentorigin = self.origin;
        currentangles = self.angles;
        self showspawnmessage();
        self thread [[ level.spawnspectator ]](currentorigin + (0, 0, 60), currentangles);
        return;
    }
    if (is_true(self.waitingtospawn)) {
        return;
    }
    self.waitingtospawn = 1;
    self.allowqueuespawn = undefined;
    self waitandspawnclient(timealreadypassed);
    if (isdefined(self)) {
        self.waitingtospawn = 0;
    }
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 1, eflags: 0x2 linked
// Checksum 0x8b55faf5, Offset: 0x21e8
// Size: 0x810
function waitandspawnclient(timealreadypassed) {
    self endon(#"disconnect", #"end_respawn");
    level endon(#"game_ended");
    if (!isdefined(timealreadypassed)) {
        timealreadypassed = 0;
    }
    spawnedasspectator = 0;
    if (is_true(level.var_41cd8311) && is_true(self.var_30a1aeee)) {
        if (isdefined(level.var_31c6ebd4)) {
            self [[ level.var_31c6ebd4 ]]();
        }
    }
    if (is_true(self.teamkillpunish)) {
        teamkilldelay = globallogic_player::teamkilldelay();
        if (teamkilldelay > timealreadypassed) {
            teamkilldelay -= timealreadypassed;
            timealreadypassed = 0;
        } else {
            timealreadypassed -= teamkilldelay;
            teamkilldelay = 0;
        }
        if (teamkilldelay > 0) {
            hud_message::setlowermessage(#"hash_7d1a0e5bd191fce", teamkilldelay);
            self thread respawn_asspectator(self.origin + (0, 0, 60), self.angles);
            spawnedasspectator = 1;
            wait(teamkilldelay);
        }
        self.teamkillpunish = 0;
    }
    if (!isdefined(self.wavespawnindex) && isdefined(level.waveplayerspawnindex[self.team])) {
        self.wavespawnindex = level.waveplayerspawnindex[self.team];
        level.waveplayerspawnindex[self.team]++;
    }
    timeuntilspawn = timeuntilspawn(0);
    if (timeuntilspawn > timealreadypassed) {
        timeuntilspawn -= timealreadypassed;
        timealreadypassed = 0;
    } else {
        timealreadypassed -= timeuntilspawn;
        timeuntilspawn = 0;
    }
    if (timeuntilspawn > 0) {
        if (level.playerqueuedrespawn) {
            hud_message::setlowermessage(game.strings[#"you_will_spawn"], timeuntilspawn);
        } else {
            hud_message::setlowermessage(game.strings[#"waiting_to_spawn"], timeuntilspawn);
        }
        if (!spawnedasspectator) {
            spawnorigin = self.origin + (0, 0, 60);
            spawnangles = self.angles;
            if (isdefined(level.useintermissionpointsonwavespawn) && [[ level.useintermissionpointsonwavespawn ]]() == 1) {
                spawnpoint = spawning::get_random_intermission_point();
                if (isdefined(spawnpoint)) {
                    spawnorigin = spawnpoint.origin;
                    spawnangles = spawnpoint.angles;
                }
            }
            self thread respawn_asspectator(spawnorigin, spawnangles);
        }
        spawnedasspectator = 1;
        if (timeuntilspawn >= 0.3 && !isbot(self)) {
            var_4dff964a = timeuntilspawn - 0.3 - 0.2;
            self thread function_bb88905b(var_4dff964a);
        }
        self waittilltimeout(timeuntilspawn, #"force_spawn");
        self notify(#"stop_wait_safe_spawn_button");
    }
    if (isdefined(level.var_515c3797)) {
        if (isdefined(level.var_84a50edd) && !spawnedasspectator) {
            spawnedasspectator = self [[ level.var_84a50edd ]]();
        }
        if (!spawnedasspectator) {
            self thread respawn_asspectator(self.origin + (0, 0, 60), self.angles);
        }
        spawnedasspectator = 1;
        if (!self [[ level.var_515c3797 ]]()) {
            self.waitingtospawn = 0;
            self hud_message::clearlowermessage();
            self.wavespawnindex = undefined;
            self.respawntimerstarttime = undefined;
            return;
        }
    }
    system::function_c11b0642();
    level flag::wait_till("all_players_connected");
    if (level.players.size > 0) {
        if (scene::should_spectate_on_join()) {
            if (!spawnedasspectator) {
                self thread respawn_asspectator(self.origin + (0, 0, 60), self.angles);
            }
            spawnedasspectator = 1;
            scene::wait_until_spectate_on_join_completes();
        }
    }
    wavebased = level.waverespawndelay > 0;
    if (!level.playerforcerespawn && self.hasspawned && !wavebased && !self.wantsafespawn && !level.playerqueuedrespawn && !spawnedasspectator) {
        hud_message::setlowermessage(game.strings[#"press_to_spawn"]);
        if (!spawnedasspectator) {
            self thread respawn_asspectator(self.origin + (0, 0, 60), self.angles);
        }
        spawnedasspectator = 1;
        self waitrespawnorsafespawnbutton();
    }
    self.waitingtospawn = 0;
    self hud_message::clearlowermessage();
    self.wavespawnindex = undefined;
    self.respawntimerstarttime = undefined;
    if (is_true(self.var_8fc85657)) {
        self waittill(#"end_killcam");
    }
    self notify(#"hash_4bd20f5c626eb3f0");
    if (isdefined(self.var_ca00be20)) {
        self.var_ca00be20.alpha = 0;
    }
    self.var_30a1aeee = undefined;
    self.var_8fc85657 = undefined;
    self.var_2a0475c3 = undefined;
    self.var_941a2b2b = undefined;
    self.killcamweapon = getweapon(#"none");
    self.var_5ff1f21c = undefined;
    self.var_f9870df6 = undefined;
    if (is_true(level.var_ba2a141)) {
        level waittill(#"forever");
    }
    if (!isdefined(self.firstspawn)) {
        self.firstspawn = 1;
        savegame::checkpoint_save();
    }
    if (!isbot(self)) {
        self function_eb0dd56(2);
    }
    self thread [[ level.spawnplayer ]]();
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 1, eflags: 0x2 linked
// Checksum 0xf6bb48fa, Offset: 0x2a00
// Size: 0x21e
function function_bb88905b(var_4dff964a) {
    self endon(#"disconnect");
    if (is_true(self.var_bb88905b)) {
        return;
    }
    self.var_bb88905b = 1;
    s_notify = self waittilltimeout(var_4dff964a, #"force_spawn", #"scene");
    if (s_notify._notify == "timeout") {
        lui::screen_fade_out(0.3, (1, 1, 1), "spectate_spawn");
    } else {
        lui::screen_fade_out(0, (1, 1, 1), "spectate_spawn");
    }
    [[ level.var_ad332481[#"fullscreenblack"] ]]->close(self);
    [[ level.var_ad332481[#"fullscreenblack"] ]]->open(self, 1);
    if (s_notify._notify == "timeout") {
        while (self.sessionstate !== "playing") {
            util::wait_network_frame();
        }
        lui::screen_fade_out(0, (1, 1, 1), "spectate_spawn");
    }
    util::wait_network_frame(2);
    [[ level.var_ad332481[#"fullscreenblack"] ]]->close(self);
    util::wait_network_frame(2);
    lui::screen_fade_in(0.3, (1, 1, 1), "spectate_spawn");
    self.var_bb88905b = 0;
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 0, eflags: 0x2 linked
// Checksum 0xc5e51f9e, Offset: 0x2c28
// Size: 0x54
function waitrespawnorsafespawnbutton() {
    self endon(#"disconnect", #"end_respawn");
    while (true) {
        if (self usebuttonpressed()) {
            break;
        }
        waitframe(1);
    }
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 0, eflags: 0x0
// Checksum 0x8dad5901, Offset: 0x2c88
// Size: 0xba
function waitinspawnqueue() {
    self endon(#"disconnect", #"end_respawn");
    if (!level.ingraceperiod && !spawning::usestartspawns()) {
        currentorigin = self.origin;
        currentangles = self.angles;
        self thread [[ level.spawnspectator ]](currentorigin + (0, 0, 60), currentangles);
        self waittill(#"queue_respawn");
    }
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 1, eflags: 0x0
// Checksum 0x5a62c9dd, Offset: 0x2d50
// Size: 0xdc
function setthirdperson(value) {
    if (!level.console) {
        return;
    }
    if (!isdefined(self.spectatingthirdperson) || value != self.spectatingthirdperson) {
        self.spectatingthirdperson = value;
        if (value) {
            self setclientthirdperson(1);
            self clientfield::set_to_player("player_dof_settings", 2);
        } else {
            self setclientthirdperson(0);
            self clientfield::set_to_player("player_dof_settings", 1);
        }
        self resetfov();
    }
}

