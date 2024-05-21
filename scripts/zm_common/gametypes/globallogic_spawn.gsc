// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_loadout.gsc;
#using scripts\zm_common\util.gsc;
#using scripts\zm_common\gametypes\spectating.gsc;
#using scripts\zm_common\gametypes\spawnlogic.gsc;
#using scripts\zm_common\gametypes\spawning.gsc;
#using scripts\zm_common\gametypes\hostmigration.gsc;
#using scripts\zm_common\gametypes\globallogic_utils.gsc;
#using scripts\zm_common\gametypes\globallogic_ui.gsc;
#using scripts\zm_common\gametypes\globallogic_score.gsc;
#using scripts\zm_common\gametypes\globallogic_player.gsc;
#using scripts\zm_common\gametypes\globallogic_defaults.gsc;
#using scripts\zm_common\gametypes\globallogic_audio.gsc;
#using scripts\zm_common\gametypes\globallogic.gsc;
#using script_44b0b8420eabacad;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\player\player_shared.gsc;
#using scripts\core_common\hud_shared.gsc;
#using scripts\core_common\hud_message_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace globallogic_spawn;

// Namespace globallogic_spawn/globallogic_spawn
// Params 1, eflags: 0x2 linked
// Checksum 0x14db99ea, Offset: 0x288
// Size: 0xd0
function timeuntilspawn(*includeteamkilldelay) {
    if (level.ingraceperiod && !self.hasspawned) {
        return 0;
    }
    respawndelay = 0;
    if (is_true(self.hasspawned)) {
        result = self [[ level.onrespawndelay ]]();
        if (isdefined(result)) {
            respawndelay = result;
        } else {
            respawndelay = level.playerrespawndelay;
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
// Checksum 0xd22c02c1, Offset: 0x360
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
// Checksum 0x2a72ef89, Offset: 0x3f8
// Size: 0x192
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
    if (level.numlives) {
        if (level.teambased) {
            gamehasstarted = allteamshaveexisted();
        } else {
            gamehasstarted = level.maxplayercount > 1 || !util::isoneround() && !util::isfirstround();
        }
        if (!is_true(self.pers[#"lives"]) && gamehasstarted) {
            return false;
        } else if (gamehasstarted) {
            if (!level.ingraceperiod && !self.hasspawned && !isbot(self)) {
                return false;
            }
        }
    }
    return true;
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 1, eflags: 0x2 linked
// Checksum 0x935ec75b, Offset: 0x598
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
// Checksum 0x37b084ff, Offset: 0x748
// Size: 0x46
function stoppoisoningandflareonspawn() {
    self endon(#"disconnect");
    self.inpoisonarea = 0;
    self.inburnarea = 0;
    self.inflarevisionarea = 0;
    self.ingroundnapalm = 0;
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 0, eflags: 0x2 linked
// Checksum 0x25b7d14e, Offset: 0x798
// Size: 0xdc
function spawnplayerprediction() {
    self endon(#"disconnect", #"end_respawn", #"game_ended", #"joined_spectators", #"spawned");
    while (true) {
        wait(0.5);
        if (isdefined(level.onspawnplayerunified) && getdvarint(#"scr_disableunifiedspawning", 0) == 0) {
            spawning::onspawnplayer_unified(1);
            continue;
        }
        self [[ level.onspawnplayer ]](1);
    }
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 0, eflags: 0x2 linked
// Checksum 0xe0dc0914, Offset: 0x880
// Size: 0x49c
function spawnplayer() {
    profileNamedStart(#"");
    self endon(#"disconnect", #"joined_spectators");
    hadspawned = self.hasspawned;
    self player::spawn_player();
    if (is_false(self.hasspawned)) {
        self.underscorechance = 70;
    }
    self.laststand = undefined;
    self.revivingteammate = 0;
    self.burning = undefined;
    self.nextkillstreakfree = undefined;
    self.activeuavs = 0;
    self.activecounteruavs = 0;
    self.activesatellites = 0;
    self.deathmachinekills = 0;
    self.diedonvehicle = undefined;
    if (is_false(self.wasaliveatmatchstart)) {
        if (level.ingraceperiod || globallogic_utils::gettimepassed() < 20000) {
            self.wasaliveatmatchstart = 1;
        }
    }
    profileNamedStart(#"");
    if (isdefined(level.onspawnplayerunified) && getdvarint(#"scr_disableunifiedspawning", 0) == 0) {
        self [[ level.onspawnplayerunified ]]();
    } else {
        self [[ level.onspawnplayer ]](0);
    }
    if (isdefined(level.playerspawnedcb)) {
        self [[ level.playerspawnedcb ]]();
    }
    profileNamedStop();
    profileNamedStop();
    globallogic::updateteamstatus();
    profileNamedStart(#"");
    self thread stoppoisoningandflareonspawn();
    assert(globallogic_utils::isvalidclass(self.curclass));
    self zm_loadout::give_loadout();
    if (level.inprematchperiod) {
        self val::set(#"prematch_period", "freezecontrols");
        self val::set(#"prematch_period", "disablegadgets");
        self val::set(#"prematch_period", "disable_weapons");
    } else if (!hadspawned && game.state == "playing") {
        profileNamedStart(#"");
        team = self.team;
        if (isdefined(self.pers[#"music"].spawn) && self.pers[#"music"].spawn == 0) {
            self.pers[#"music"].spawn = 1;
        }
        if (level.splitscreen) {
            if (isdefined(level.playedstartingmusic)) {
                music = undefined;
            } else {
                level.playedstartingmusic = 1;
            }
        }
        profileNamedStop();
    }
    /#
        if (!level.splitscreen && getdvarint(#"scr_showperksonspawn", 0) == 1 && game.state != "<unknown string>") {
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
    self thread _spawnplayer();
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 0, eflags: 0x2 linked
// Checksum 0x69936a7e, Offset: 0xd28
// Size: 0x164
function _spawnplayer() {
    self endon(#"disconnect", #"joined_spectators");
    waittillframeend();
    self notify(#"spawned_player");
    self callback::callback(#"on_player_spawned");
    /#
        print("<unknown string>" + self.origin[0] + "<unknown string>" + self.origin[1] + "<unknown string>" + self.origin[2] + "<unknown string>");
    #/
    setdvar(#"scr_selecting_location", "");
    self zm_utility::set_max_health();
    if (game.state == "postgame") {
        self globallogic_player::freezeplayerforroundend();
    }
    self util::set_lighting_state();
    self util::set_sun_shadow_split_distance();
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 2, eflags: 0x2 linked
// Checksum 0xfe346d19, Offset: 0xe98
// Size: 0x4c
function spawnspectator(origin, angles) {
    self notify(#"spawned");
    self notify(#"end_respawn");
    in_spawnspectator(origin, angles);
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 2, eflags: 0x2 linked
// Checksum 0x5f397e51, Offset: 0xef0
// Size: 0x2c
function respawn_asspectator(origin, angles) {
    in_spawnspectator(origin, angles);
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 2, eflags: 0x2 linked
// Checksum 0xf975f25d, Offset: 0xf28
// Size: 0x144
function in_spawnspectator(origin, angles) {
    pixmarker("BEGIN: in_spawnSpectator");
    self player::set_spawn_variables();
    self.sessionstate = "spectator";
    self.spectatorclient = -1;
    self.killcamentity = -1;
    self.archivetime = 0;
    self.psoffsettime = 0;
    self.friendlydamage = undefined;
    if (self.pers[#"team"] == "spectator") {
        self.statusicon = "";
    } else {
        self.statusicon = "hud_status_dead";
    }
    spectating::setspectatepermissionsformachine();
    [[ level.onspawnspectator ]](origin, angles);
    if (level.teambased && !level.splitscreen) {
        self thread spectatorthirdpersonness();
    }
    pixmarker("END: in_spawnSpectator");
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 0, eflags: 0x2 linked
// Checksum 0xb3ccdd26, Offset: 0x1078
// Size: 0x52
function spectatorthirdpersonness() {
    self notify(#"spectator_thirdperson_thread");
    self endon(#"disconnect", #"spawned", #"spectator_thirdperson_thread");
    self.spectatingthirdperson = 0;
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 1, eflags: 0x0
// Checksum 0xf511f972, Offset: 0x10d8
// Size: 0x100
function forcespawn(time) {
    self endon(#"death", #"spawned");
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
    self thread [[ level.spawnclient ]]();
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 0, eflags: 0x2 linked
// Checksum 0x76df0a1f, Offset: 0x11e0
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
// Checksum 0x5a843d7d, Offset: 0x1250
// Size: 0x1d4
function kickifidontspawninternal() {
    self endon(#"death", #"spawned");
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
    timepassed = (gettime() - starttime) / 1000;
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
    kick(self getentitynumber());
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 1, eflags: 0x2 linked
// Checksum 0xe312e041, Offset: 0x1430
// Size: 0x34
function kickwait(waittime) {
    level endon(#"game_ended");
    hostmigration::waitlongdurationwithhostmigrationpause(waittime);
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 0, eflags: 0x0
// Checksum 0xdfeb7aca, Offset: 0x1470
// Size: 0x10c
function spawninterroundintermission() {
    self notify(#"spawned");
    self notify(#"end_respawn");
    self player::set_spawn_variables();
    self hud_message::clearlowermessage();
    self.sessionstate = "spectator";
    self.spectatorclient = -1;
    self.killcamentity = -1;
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
// Checksum 0xbc0df33e, Offset: 0x1588
// Size: 0x14c
function spawnintermission(usedefaultcallback) {
    self notify(#"spawned");
    self notify(#"end_respawn");
    self endon(#"disconnect");
    self player::set_spawn_variables();
    self hud_message::clearlowermessage();
    if (level.rankedmatch && util::waslastround()) {
    }
    self.sessionstate = "intermission";
    self.spectatorclient = -1;
    self.killcamentity = -1;
    self.archivetime = 0;
    self.psoffsettime = 0;
    self.friendlydamage = undefined;
    if (isdefined(usedefaultcallback) && usedefaultcallback) {
        globallogic_defaults::default_onspawnintermission();
    } else {
        [[ level.onspawnintermission ]]();
    }
    if (game.state != "postgame") {
        self clientfield::set_to_player("player_dof_settings", 2);
    }
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 1, eflags: 0x2 linked
// Checksum 0x58546d50, Offset: 0x16e0
// Size: 0xa4
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
        player_to_spawn thread [[ level.spawnclient ]]();
    }
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 2, eflags: 0x0
// Checksum 0xd232450d, Offset: 0x1790
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
// Checksum 0x26b2f21a, Offset: 0x18c8
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
// Checksum 0x2cbe123e, Offset: 0x19a8
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
// Checksum 0xb74d26e6, Offset: 0x1a20
// Size: 0x2c
function default_spawnmessage() {
    hud_message::setlowermessage(game.strings[#"spawn_next_round"]);
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 0, eflags: 0x2 linked
// Checksum 0x536d6eb8, Offset: 0x1a58
// Size: 0x28
function showspawnmessage() {
    if (shouldshowrespawnmessage()) {
        self thread [[ level.spawnmessage ]]();
    }
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 1, eflags: 0x2 linked
// Checksum 0xa5ebbe33, Offset: 0x1a88
// Size: 0x14e
function spawnclient(timealreadypassed) {
    profileNamedStart(#"");
    assert(isdefined(self.team));
    assert(globallogic_utils::isvalidclass(self.curclass));
    if (!self mayspawn()) {
        currentorigin = self.origin;
        currentangles = self.angles;
        self showspawnmessage();
        self thread [[ level.spawnspectator ]](currentorigin + (0, 0, 60), currentangles);
        profileNamedStop();
        return;
    }
    if (is_true(self.waitingtospawn)) {
        profileNamedStop();
        return;
    }
    self.waitingtospawn = 1;
    self.allowqueuespawn = undefined;
    profileNamedStop();
    self waitandspawnclient(timealreadypassed);
    if (isdefined(self)) {
        self.waitingtospawn = 0;
    }
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 1, eflags: 0x2 linked
// Checksum 0x75aa086a, Offset: 0x1be0
// Size: 0x3fc
function waitandspawnclient(timealreadypassed) {
    self endon(#"disconnect", #"end_respawn");
    level endon(#"game_ended");
    if (!isdefined(timealreadypassed)) {
        timealreadypassed = 0;
    }
    spawnedasspectator = 0;
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
                spawnpoint = spawnlogic::getrandomintermissionpoint();
                if (isdefined(spawnpoint)) {
                    spawnorigin = spawnpoint.origin;
                    spawnangles = spawnpoint.angles;
                }
            }
            self thread respawn_asspectator(spawnorigin, spawnangles);
        }
        spawnedasspectator = 1;
        self globallogic_utils::waitfortimeornotify(timeuntilspawn, "force_spawn");
        if (isdefined(level.var_16918506)) {
            self [[ level.var_16918506 ]]();
        }
        self notify(#"stop_wait_safe_spawn_button");
    }
    wavebased = level.waverespawndelay > 0;
    if (!level.playerforcerespawn && self.hasspawned && !wavebased && !self.wantsafespawn && !level.playerqueuedrespawn) {
        hud_message::setlowermessage(game.strings[#"press_to_spawn"]);
        if (!spawnedasspectator) {
            self thread respawn_asspectator(self.origin + (0, 0, 60), self.angles);
        }
        spawnedasspectator = 1;
        self waitrespawnorsafespawnbutton();
    }
    self.waitingtospawn = 0;
    self.wavespawnindex = undefined;
    self.respawntimerstarttime = undefined;
    if (isdefined(level.var_4e1e5411)) {
        if (self [[ level.var_4e1e5411 ]]()) {
            self thread [[ level.spawnplayer ]]();
        }
    } else {
        self thread [[ level.spawnplayer ]]();
    }
    self hud_message::clearlowermessage();
}

// Namespace globallogic_spawn/globallogic_spawn
// Params 0, eflags: 0x2 linked
// Checksum 0xd7f1c8bb, Offset: 0x1fe8
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
// Checksum 0xd064a2fa, Offset: 0x2048
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
// Checksum 0xb573e03a, Offset: 0x2110
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

