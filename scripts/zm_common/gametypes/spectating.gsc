// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace spectating;

// Namespace spectating/spectating
// Params 0, eflags: 0x5
// Checksum 0x790f4c11, Offset: 0xd0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_spectating", &preinit, undefined, undefined, undefined);
}

// Namespace spectating/spectating
// Params 0, eflags: 0x6 linked
// Checksum 0x5e165cb9, Offset: 0x118
// Size: 0x24
function private preinit() {
    callback::on_start_gametype(&main);
}

// Namespace spectating/spectating
// Params 0, eflags: 0x2 linked
// Checksum 0xe039c96, Offset: 0x148
// Size: 0xb4
function main() {
    foreach (team, _ in level.teams) {
        level.spectateoverride[team] = spawnstruct();
    }
    callback::on_connecting(&on_player_connecting);
}

// Namespace spectating/spectating
// Params 0, eflags: 0x2 linked
// Checksum 0xd02c8804, Offset: 0x208
// Size: 0x64
function on_player_connecting() {
    callback::on_joined_team(&on_joined_team);
    callback::on_spawned(&on_player_spawned);
    callback::on_joined_spectate(&on_joined_spectate);
}

// Namespace spectating/spectating
// Params 0, eflags: 0x2 linked
// Checksum 0x84f4e8, Offset: 0x278
// Size: 0x2c
function on_player_spawned() {
    self endon(#"disconnect");
    self setspectatepermissions();
}

// Namespace spectating/spectating
// Params 1, eflags: 0x2 linked
// Checksum 0x5ce2f40b, Offset: 0x2b0
// Size: 0x34
function on_joined_team(*params) {
    self endon(#"disconnect");
    self setspectatepermissionsformachine();
}

// Namespace spectating/spectating
// Params 1, eflags: 0x2 linked
// Checksum 0x30ea9cf1, Offset: 0x2f0
// Size: 0x34
function on_joined_spectate(*params) {
    self endon(#"disconnect");
    self setspectatepermissionsformachine();
}

// Namespace spectating/spectating
// Params 0, eflags: 0x0
// Checksum 0x172479cb, Offset: 0x330
// Size: 0x64
function updatespectatesettings() {
    level endon(#"game_ended");
    for (index = 0; index < level.players.size; index++) {
        level.players[index] setspectatepermissions();
    }
}

// Namespace spectating/spectating
// Params 0, eflags: 0x2 linked
// Checksum 0x309e4549, Offset: 0x3a0
// Size: 0xca
function getsplitscreenteam() {
    for (index = 0; index < level.players.size; index++) {
        if (!isdefined(level.players[index])) {
            continue;
        }
        if (level.players[index] == self) {
            continue;
        }
        if (!self isplayeronsamemachine(level.players[index])) {
            continue;
        }
        team = level.players[index].sessionteam;
        if (team != "spectator") {
            return team;
        }
    }
    return self.sessionteam;
}

// Namespace spectating/spectating
// Params 0, eflags: 0x2 linked
// Checksum 0x804f5fe3, Offset: 0x478
// Size: 0xb6
function otherlocalplayerstillalive() {
    for (index = 0; index < level.players.size; index++) {
        if (!isdefined(level.players[index])) {
            continue;
        }
        if (level.players[index] == self) {
            continue;
        }
        if (!self isplayeronsamemachine(level.players[index])) {
            continue;
        }
        if (isalive(level.players[index])) {
            return true;
        }
    }
    return false;
}

// Namespace spectating/spectating
// Params 1, eflags: 0x2 linked
// Checksum 0xdc7fac96, Offset: 0x538
// Size: 0x98
function allowspectateallteams(allow) {
    foreach (team, _ in level.teams) {
        self allowspectateteam(team, allow);
    }
}

// Namespace spectating/spectating
// Params 2, eflags: 0x2 linked
// Checksum 0x22b18772, Offset: 0x5d8
// Size: 0xb0
function allowspectateallteamsexceptteam(skip_team, allow) {
    foreach (team, _ in level.teams) {
        if (team == skip_team) {
            continue;
        }
        self allowspectateteam(team, allow);
    }
}

// Namespace spectating/spectating
// Params 0, eflags: 0x2 linked
// Checksum 0x3ea66633, Offset: 0x690
// Size: 0x54c
function setspectatepermissions() {
    team = self.sessionteam;
    if (team == "spectator") {
        if (self issplitscreen() && !level.splitscreen) {
            team = getsplitscreenteam();
        }
        if (team == "spectator") {
            self allowspectateallteams(1);
            self allowspectateteam("freelook", 0);
            self allowspectateteam("none", 1);
            self allowspectateteam("localplayers", 1);
            return;
        }
    }
    spectatetype = level.spectatetype;
    switch (spectatetype) {
    case 0:
        self allowspectateallteams(0);
        self allowspectateteam("freelook", 0);
        self allowspectateteam("none", 1);
        self allowspectateteam("localplayers", 0);
        break;
    case 3:
        if (self issplitscreen() && self otherlocalplayerstillalive()) {
            self allowspectateallteams(0);
            self allowspectateteam("none", 0);
            self allowspectateteam("freelook", 0);
            self allowspectateteam("localplayers", 1);
            break;
        }
    case 1:
        if (!level.teambased) {
            self allowspectateallteams(1);
            self allowspectateteam("none", 1);
            self allowspectateteam("freelook", 0);
            self allowspectateteam("localplayers", 1);
        } else if (isdefined(team) && isdefined(level.teams[team])) {
            self allowspectateteam(team, 1);
            self allowspectateallteamsexceptteam(team, 0);
            self allowspectateteam("freelook", 0);
            self allowspectateteam("none", 0);
            self allowspectateteam("localplayers", 1);
        } else {
            self allowspectateallteams(0);
            self allowspectateteam("freelook", 0);
            self allowspectateteam("none", 0);
            self allowspectateteam("localplayers", 1);
        }
        break;
    case 2:
        self allowspectateallteams(1);
        self allowspectateteam("freelook", 1);
        self allowspectateteam("none", 1);
        self allowspectateteam("localplayers", 1);
        break;
    }
    if (isdefined(team) && isdefined(level.teams[team])) {
        if (isdefined(level.spectateoverride[team].allowfreespectate)) {
            self allowspectateteam("freelook", 1);
        }
        if (isdefined(level.spectateoverride[team].allowenemyspectate)) {
            self allowspectateallteamsexceptteam(team, 1);
        }
    }
}

// Namespace spectating/spectating
// Params 0, eflags: 0x2 linked
// Checksum 0xd3501e7a, Offset: 0xbe8
// Size: 0xdc
function setspectatepermissionsformachine() {
    self setspectatepermissions();
    if (!self issplitscreen()) {
        return;
    }
    for (index = 0; index < level.players.size; index++) {
        if (!isdefined(level.players[index])) {
            continue;
        }
        if (level.players[index] == self) {
            continue;
        }
        if (!self isplayeronsamemachine(level.players[index])) {
            continue;
        }
        level.players[index] setspectatepermissions();
    }
}

