// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\player\player_utils.gsc;
#using scripts\mp_common\gametypes\globallogic_score.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using script_44b0b8420eabacad;
#using scripts\core_common\hud_shared.gsc;
#using scripts\core_common\hud_message_shared.gsc;
#using scripts\core_common\gamestate_util.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\flag_shared.gsc;

#namespace player;

// Namespace player/player
// Params 0, eflags: 0x1
// Checksum 0xc995b8f6, Offset: 0x128
// Size: 0x44
function autoexec __init__() {
    callback::on_spawned(&on_player_spawned);
    callback::on_game_playing(&on_game_playing);
}

// Namespace player/player
// Params 0, eflags: 0x2 linked
// Checksum 0xcd87fce0, Offset: 0x178
// Size: 0x3ec
function spectate_player_watcher() {
    self endon(#"disconnect");
    /#
        if (!level.splitscreen && !level.hardcoremode && getdvarint(#"scr_showperksonspawn", 0) == 1 && !gamestate::is_game_over() && !isdefined(self.perkhudelem)) {
            if (level.perksenabled == 1) {
                self hud::showperks();
            }
        }
    #/
    if (self.pers[#"team"] == #"spectator") {
        spawnorigin = self.origin + (0, 0, 60);
        spawnangles = self.angles;
        spawnpoint = spawning::get_random_intermission_point();
        if (isdefined(spawnpoint)) {
            spawnorigin = spawnpoint.origin;
            spawnangles = spawnpoint.angles;
        }
        self function_38fd902d(spawnorigin, spawnangles);
    }
    self.watchingactiveclient = 1;
    while (true) {
        if (self.pers[#"team"] != #"spectator" || level.gameended) {
            if (!is_true(level.inprematchperiod)) {
                self val::reset(#"spectate", "freezecontrols");
                self val::reset(#"spectate", "disablegadgets");
            }
            self.watchingactiveclient = 0;
            break;
        }
        count = 0;
        for (i = 0; i < level.players.size; i++) {
            if (level.players[i].team != #"spectator") {
                count++;
                break;
            }
        }
        if (count > 0) {
            if (!self.watchingactiveclient) {
                self val::reset(#"spectate", "freezecontrols");
                self val::reset(#"spectate", "disablegadgets");
                self luinotifyevent(#"player_spawned", 0);
            }
            self.watchingactiveclient = 1;
        } else {
            if (self.watchingactiveclient) {
                [[ level.onspawnspectator ]]();
                self val::set(#"spectate", "freezecontrols", 1);
                self val::set(#"spectate", "disablegadgets", 1);
            }
            self.watchingactiveclient = 0;
        }
        wait(0.5);
    }
}

// Namespace player/player
// Params 0, eflags: 0x2 linked
// Checksum 0xc3f2cb11, Offset: 0x570
// Size: 0x2c
function reset_doublexp_timer() {
    self notify(#"reset_doublexp_timer");
    self thread doublexp_timer();
}

// Namespace player/player
// Params 0, eflags: 0x2 linked
// Checksum 0xfba002ba, Offset: 0x5a8
// Size: 0xbc
function doublexp_timer() {
    self notify(#"doublexp_timer");
    self endon(#"doublexp_timer", #"reset_doublexp_timer", #"end_game");
    level flag::wait_till("game_start_doublexp");
    if (!level.onlinegame) {
        return;
    }
    wait(60);
    if (level.onlinegame) {
        if (!isdefined(self)) {
            return;
        }
        self doublexptimerfired();
    }
    self thread reset_doublexp_timer();
}

// Namespace player/player
// Params 0, eflags: 0x2 linked
// Checksum 0x19186c5c, Offset: 0x670
// Size: 0xbc
function on_player_spawned() {
    self thread doublexp_timer();
    profilestart();
    if (util::is_frontend_map()) {
        profilestop();
        return;
    }
    profilestop();
    if (self function_8b1a219a()) {
        self val::set(#"hash_6e3ee1d6ea855f0a", "allow_jump", 0);
        wait(0.5);
        if (!isdefined(self)) {
            return;
        }
        self val::reset(#"hash_6e3ee1d6ea855f0a", "allow_jump");
    }
}

// Namespace player/player
// Params 0, eflags: 0x2 linked
// Checksum 0xa536ceed, Offset: 0x738
// Size: 0x24
function on_game_playing() {
    level flag::set("game_start_doublexp");
}

// Namespace player/player
// Params 0, eflags: 0x2 linked
// Checksum 0xf1bac61d, Offset: 0x768
// Size: 0x6e
function function_490dc3d3() {
    return self isinvehicle() && !self isremotecontrolling() && self function_a867284b() && self playerads() >= 1;
}

// Namespace player/player
// Params 0, eflags: 0x2 linked
// Checksum 0xc894fd11, Offset: 0x7e0
// Size: 0x98
function function_c3eed624() {
    origin = self.origin;
    if (self function_490dc3d3()) {
        forward = anglestoforward(self.angles);
        origin += forward * self function_85d25868();
        origin -= (0, 0, isdefined(self.var_2d23ee07) ? self.var_2d23ee07 : 0);
    }
    return origin;
}

// Namespace player/player
// Params 0, eflags: 0x0
// Checksum 0x3321402e, Offset: 0x880
// Size: 0x2a8
function last_valid_position() {
    self endon(#"disconnect");
    self notify(#"stop_last_valid_position");
    self endon(#"stop_last_valid_position");
    while (!isdefined(self.last_valid_position) && isdefined(self)) {
        origin = self function_c3eed624();
        self.last_valid_position = getclosestpointonnavmesh(origin, 2048, 0);
        wait(0.1);
    }
    while (isdefined(self)) {
        origin = self function_c3eed624();
        if (getdvarint(#"hash_1a597b008cc91bd8", 0) > 0) {
            wait(1);
            continue;
        }
        playerradius = self getpathfindingradius();
        if (distance2dsquared(origin, self.last_valid_position) < sqr(playerradius) && sqr(origin[2] - self.last_valid_position[2]) < sqr(16)) {
            wait(0.1);
            continue;
        }
        if (ispointonnavmesh(origin, self)) {
            self.last_valid_position = origin;
        } else if (!ispointonnavmesh(origin, self) && ispointonnavmesh(self.last_valid_position, self) && distance2dsquared(origin, self.last_valid_position) < sqr(32)) {
            wait(0.1);
            continue;
        } else {
            position = getclosestpointonnavmesh(origin, 100, playerradius);
            if (isdefined(position)) {
                self.last_valid_position = position;
            }
        }
        wait(0.1);
    }
}

