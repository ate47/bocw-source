// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;
#using script_7dc3a36c222eaf22;
#using scripts\core_common\spawning_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\player\player_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace spectating;

// Namespace spectating/spectating
// Params 0, eflags: 0x5
// Checksum 0xc380929c, Offset: 0xe0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"spectating", &preinit, undefined, undefined, undefined);
}

// Namespace spectating/spectating
// Params 0, eflags: 0x6 linked
// Checksum 0x3ed30b85, Offset: 0x128
// Size: 0xa4
function private preinit() {
    callback::on_start_gametype(&init);
    callback::on_spawned(&set_permissions);
    callback::on_joined_team(&set_permissions_for_machine);
    callback::on_joined_spectate(&set_permissions_for_machine);
    callback::on_player_killed(&on_player_killed);
}

// Namespace spectating/spectating
// Params 0, eflags: 0x2 linked
// Checksum 0x58808533, Offset: 0x1d8
// Size: 0x94
function init() {
    foreach (team, _ in level.teams) {
        level.spectateoverride[team] = spawnstruct();
    }
}

// Namespace spectating/spectating
// Params 0, eflags: 0x2 linked
// Checksum 0x6506e0a1, Offset: 0x278
// Size: 0xa0
function update_settings() {
    level endon(#"game_ended");
    foreach (player in level.players) {
        player set_permissions();
    }
}

// Namespace spectating/spectating
// Params 0, eflags: 0x2 linked
// Checksum 0xfcf92d3, Offset: 0x320
// Size: 0xce
function get_splitscreen_team() {
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
        if (team != #"spectator") {
            return team;
        }
    }
    return self.sessionteam;
}

// Namespace spectating/spectating
// Params 0, eflags: 0x2 linked
// Checksum 0x451a70d, Offset: 0x3f8
// Size: 0xb6
function other_local_player_still_alive() {
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
// Params 0, eflags: 0x2 linked
// Checksum 0x92c42a39, Offset: 0x4b8
// Size: 0x6b4
function set_permissions() {
    team = self.sessionteam;
    if (team == #"spectator") {
        if (self issplitscreen() && !level.splitscreen) {
            team = get_splitscreen_team();
        }
        if (team == #"spectator") {
            self.spectatorteam = #"invalid";
            self allowspectateallteams(1);
            self allowspectateteam("freelook", 0);
            self allowspectateteam(#"none", 1);
            self allowspectateteam("localplayers", 1);
            return;
        }
    }
    self allowspectateallteams(0);
    self allowspectateteam("localplayers", 1);
    self allowspectateteam("freelook", 0);
    switch (level.spectatetype) {
    case 0:
        self.spectatorteam = #"invalid";
        self allowspectateteam(#"none", 1);
        self allowspectateteam("localplayers", 0);
        break;
    case 3:
        self.spectatorteam = #"invalid";
        if (self issplitscreen() && self other_local_player_still_alive()) {
            self allowspectateteam(#"none", 0);
            break;
        }
    case 1:
        self.spectatorteam = #"invalid";
        if (!level.teambased) {
            self allowspectateallteams(1);
            self allowspectateteam(#"none", 1);
        } else if (isdefined(team) && isdefined(level.teams[team])) {
            self allowspectateteam(team, 1);
            self allowspectateteam(#"none", 0);
        } else {
            self allowspectateteam(#"none", 0);
        }
        break;
    case 6:
        self.spectatorteam = team;
        self allowspectateteam(#"none", 0);
        self allowspectateteam(team, 1);
        break;
    case 2:
        self.spectatorteam = #"invalid";
        self allowspectateteam(#"none", 1);
        self allowspectateallteams(1);
        foreach (team in level.teams) {
            if (self.team == team) {
                continue;
            }
            self allowspectateteam(team, 1);
        }
        break;
    case 4:
    case 5:
        if (spawning::function_29b859d1() || function_a1ef346b(team).size > 0) {
            self allowspectateteam(#"none", 0);
            self allowspectateteam(team, 1);
            return;
        }
        self allowspectateallteams(1);
        return;
    }
    if (isdefined(level.var_799cca7d)) {
        self [[ level.var_799cca7d ]]();
        return;
    }
    if (isdefined(team) && isdefined(level.teams[team])) {
        if (isdefined(level.spectateoverride[team].allowfreespectate)) {
            self allowspectateteam("freelook", 1);
        }
        if (isdefined(level.spectateoverride[team].allowenemyspectate)) {
            if (level.spectateoverride[team].allowenemyspectate == #"all") {
                self allowspectateallteams(1);
                return;
            }
            self allowspectateallteams(0);
            self allowspectateteam(level.spectateoverride[team].allowenemyspectate, 1);
        }
    }
}

// Namespace spectating/spectating
// Params 2, eflags: 0x2 linked
// Checksum 0x2a77aafe, Offset: 0xb78
// Size: 0x10e
function function_18b8b7e4(players, origin) {
    if (!isdefined(players) || players.size == 0) {
        return undefined;
    }
    sorted_players = arraysort(players, origin);
    foreach (player in sorted_players) {
        if (player == self) {
            continue;
        }
        if (!isalive(player)) {
            continue;
        }
        if (player laststand::player_is_in_laststand()) {
            continue;
        }
        return player;
    }
    return undefined;
}

// Namespace spectating/spectating
// Params 1, eflags: 0x2 linked
// Checksum 0x7bac6a00, Offset: 0xc90
// Size: 0x16
function spectator_team(player) {
    return player.spectatorteam;
}

// Namespace spectating/spectating
// Params 1, eflags: 0x2 linked
// Checksum 0xa1910c3, Offset: 0xcb0
// Size: 0x16
function function_44d43a69(player) {
    return player.var_ba35b2d2;
}

// Namespace spectating/spectating
// Params 3, eflags: 0x2 linked
// Checksum 0x8fd9bf, Offset: 0xcd0
// Size: 0xb4
function function_9c5853f5(players, var_22b78352, var_89bd5332) {
    foreach (player in players) {
        if (player != self && [[ var_22b78352 ]](player) != var_89bd5332) {
            return player;
        }
    }
    return undefined;
}

// Namespace spectating/spectating
// Params 3, eflags: 0x2 linked
// Checksum 0xc399c4a2, Offset: 0xd90
// Size: 0x1b6
function function_327e6270(players, var_22b78352, var_89bd5332) {
    if (!isdefined(players) || players.size == 0) {
        return self;
    }
    player = function_18b8b7e4(players, self.origin);
    if (isdefined(player)) {
        println("<unknown string>" + [[ var_22b78352 ]](player) + "<unknown string>" + self.name + "<unknown string>" + [[ var_22b78352 ]](self) + "<unknown string>" + player.name + "<unknown string>");
        return player;
    }
    player = function_9c5853f5(players, var_22b78352, var_89bd5332);
    if (isdefined(player)) {
        println("<unknown string>" + [[ var_22b78352 ]](player) + "<unknown string>" + self.name + "<unknown string>" + [[ var_22b78352 ]](self) + "<unknown string>" + player.name + "<unknown string>");
        return player;
    }
    println("<unknown string>" + [[ var_22b78352 ]](self) + "<unknown string>" + self.name + "<unknown string>");
    return self;
}

// Namespace spectating/spectating
// Params 4, eflags: 0x2 linked
// Checksum 0x66b95f48, Offset: 0xf50
// Size: 0x170
function function_460b3788(players, var_22b78352, var_89bd5332, var_c9fe8766) {
    if (!isdefined(players) || players.size == 0) {
        return undefined;
    }
    var_156b3879 = self function_18b8b7e4(players, self.origin);
    if (isdefined(var_156b3879) && isplayer(var_156b3879)) {
        return var_156b3879;
    }
    target = function_9c5853f5(players, var_22b78352, var_89bd5332);
    if (isdefined(target)) {
        return target;
    }
    if (var_c9fe8766) {
        teammates = function_a1ef346b(self.team);
        return self function_460b3788(teammates, &spectator_team, #"invalid", 0);
    }
    target = array::random(function_a1ef346b());
    if (isdefined(target)) {
        return target;
    }
    return undefined;
}

// Namespace spectating/spectating
// Params 0, eflags: 0x2 linked
// Checksum 0xb05b521b, Offset: 0x10c8
// Size: 0xfc
function function_4c37bb21() {
    players = undefined;
    if (self.team != #"spectator") {
        players = function_a1ef346b(self.team);
    }
    var_156b3879 = self function_460b3788(players, &spectator_team, #"invalid", 0);
    if (isdefined(var_156b3879) && isplayer(var_156b3879)) {
        self.spectatorteam = var_156b3879.team;
        if (self.sessionstate !== "playing") {
            self setcurrentspectatorclient(var_156b3879);
        }
        return var_156b3879;
    }
    return undefined;
}

// Namespace spectating/spectating
// Params 0, eflags: 0x2 linked
// Checksum 0xfe018e1c, Offset: 0x11d0
// Size: 0xfc
function function_10fbd7e5() {
    players = undefined;
    if (self.team != #"spectator") {
        players = function_a1cff525(self.squad);
    }
    var_156b3879 = self function_460b3788(players, &function_44d43a69, #"invalid", 1);
    if (isdefined(var_156b3879) && isplayer(var_156b3879)) {
        self.spectatorteam = var_156b3879.team;
        if (self.sessionstate !== "playing") {
            self setcurrentspectatorclient(var_156b3879);
        }
        return var_156b3879;
    }
    return undefined;
}

// Namespace spectating/spectating
// Params 0, eflags: 0x2 linked
// Checksum 0x1f76a32b, Offset: 0x12d8
// Size: 0x86
function function_da128b1() {
    if (level.spectatetype === 5 && self.var_ba35b2d2 !== #"invalid") {
        return function_10fbd7e5();
    }
    if (level.spectatetype === 4 && self.spectatorteam !== #"invalid") {
        return function_4c37bb21();
    }
    return undefined;
}

// Namespace spectating/spectating
// Params 0, eflags: 0x2 linked
// Checksum 0xfa212767, Offset: 0x1368
// Size: 0xf4
function set_permissions_for_machine() {
    self function_da128b1();
    self set_permissions();
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
        level.players[index] set_permissions();
    }
}

// Namespace spectating/spectating
// Params 0, eflags: 0x2 linked
// Checksum 0xf3a504ab, Offset: 0x1468
// Size: 0x6e
function function_7d15f599() {
    livesleft = !(level.numlives && !self.pers[#"lives"]);
    if (!function_a1ef346b(self.team).size && !livesleft) {
        return false;
    }
    return true;
}

// Namespace spectating/spectating
// Params 0, eflags: 0x0
// Checksum 0x6d014b4b, Offset: 0x14e0
// Size: 0x3c
function function_23c5f4f2() {
    self endon(#"disconnect");
    waitframe(1);
    function_493d2e03(#"all");
}

// Namespace spectating/spectating
// Params 1, eflags: 0x6 linked
// Checksum 0x31865ff0, Offset: 0x1528
// Size: 0x5c
function private function_493d2e03(team) {
    if (!self function_7d15f599()) {
        level.spectateoverride[self.team].allowenemyspectate = team;
        update_settings();
    }
}

// Namespace spectating/spectating
// Params 1, eflags: 0x0
// Checksum 0x5f38055b, Offset: 0x1590
// Size: 0xb8
function function_34460764(team) {
    players = getplayers(team);
    foreach (player in players) {
        player allowspectateallteams(1);
    }
}

// Namespace spectating/spectating
// Params 2, eflags: 0x0
// Checksum 0xaea1f9f1, Offset: 0x1650
// Size: 0xe8
function function_ef775048(team, var_6f1b46b8) {
    self endon(#"disconnect");
    waitframe(1);
    if (function_a1ef346b(team).size) {
        return;
    }
    players = getplayers(team);
    foreach (player in players) {
        player function_493d2e03(var_6f1b46b8);
    }
}

// Namespace spectating/spectating
// Params 1, eflags: 0x2 linked
// Checksum 0x27d9827b, Offset: 0x1740
// Size: 0x98
function follow_chain(var_41349818) {
    if (!isdefined(var_41349818)) {
        return;
    }
    var_932d1e24 = 0;
    while (isdefined(var_41349818) && var_41349818.spectatorclient != -1) {
        var_746bf89f = var_41349818;
        var_41349818 = getentbynum(var_41349818.spectatorclient);
        var_932d1e24++;
        if (var_41349818 === var_746bf89f || var_932d1e24 >= 40) {
            break;
        }
    }
    return var_41349818;
}

// Namespace spectating/spectating
// Params 2, eflags: 0x2 linked
// Checksum 0xe51b1871, Offset: 0x17e0
// Size: 0x180
function function_93281015(players, attacker) {
    if (!isdefined(self) || !isdefined(self.team)) {
        return undefined;
    }
    var_1178af52 = isdefined(attacker) && isplayer(attacker) && attacker != self && isalive(attacker);
    if (var_1178af52 && attacker.team == self.team) {
        return attacker;
    }
    friendly = function_18b8b7e4(players, self.origin);
    if (isdefined(friendly)) {
        return friendly;
    }
    foreach (player in players) {
        if (isalive(player) && player != self) {
            return player;
        }
    }
    return undefined;
}

// Namespace spectating/spectating
// Params 2, eflags: 0x0
// Checksum 0x673d2f81, Offset: 0x1968
// Size: 0x78
function function_e34c084d(*players, attacker) {
    var_1178af52 = isdefined(attacker) && isplayer(attacker) && attacker != self && isalive(attacker);
    if (var_1178af52) {
        return attacker;
    }
    return undefined;
}

// Namespace spectating/spectating
// Params 0, eflags: 0x6 linked
// Checksum 0x57a2544b, Offset: 0x19e8
// Size: 0xd2
function private function_770d7902() {
    assert(level.spectatetype == 4 || level.spectatetype == 5);
    switch (level.spectatetype) {
    case 5:
        players = function_a1cff525(self.squad);
        if (players.size > 0) {
            return players;
        }
    case 4:
    default:
        return function_a1ef346b(self.team);
    }
}

// Namespace spectating/spectating
// Params 1, eflags: 0x2 linked
// Checksum 0x22914ea0, Offset: 0x1ac8
// Size: 0x8c
function function_26c5324a(var_156b3879) {
    self.spectatorclient = -1;
    if (!self spawning::function_29b859d1()) {
        self.spectatorteam = var_156b3879.team;
    }
    self setcurrentspectatorclient(var_156b3879);
    self callback::callback(#"hash_37840d0d5a10e6b8", {#client:var_156b3879});
}

// Namespace spectating/spectating
// Params 1, eflags: 0x2 linked
// Checksum 0xa599767f, Offset: 0x1b60
// Size: 0xcc
function function_2b728d67(attacker) {
    players = function_770d7902();
    var_8447710e = player::figure_out_attacker(attacker);
    var_156b3879 = self function_93281015(players, var_8447710e);
    if (isdefined(var_156b3879)) {
        function_836ee9ed(var_156b3879);
        return;
    }
    if (!isdefined(level.var_18c9a2d1)) {
        level.var_18c9a2d1 = &function_7fe9c0d1;
    }
    [[ level.var_18c9a2d1 ]](players, attacker);
}

// Namespace spectating/spectating
// Params 1, eflags: 0x2 linked
// Checksum 0xfccff758, Offset: 0x1c38
// Size: 0x280
function function_836ee9ed(var_156b3879) {
    var_156b3879 = follow_chain(var_156b3879);
    if (isdefined(var_156b3879) && isplayer(var_156b3879) && isalive(var_156b3879)) {
        function_26c5324a(var_156b3879);
        return var_156b3879;
    }
    players = function_a1ef346b(self.team);
    if (players.size > 0) {
        self.spectatorteam = self.team;
        return self;
    }
    players = getplayers(self.team);
    foreach (player in players) {
        var_156b3879 = follow_chain(player);
        if (isdefined(var_156b3879) && isplayer(var_156b3879) && isalive(var_156b3879)) {
            function_26c5324a(var_156b3879);
            return var_156b3879;
        }
    }
    foreach (team in level.teams) {
        if (team == self.team) {
            continue;
        }
        players = function_a1ef346b(team);
        if (players.size > 0) {
            function_26c5324a(players[0]);
            return players[0];
        }
    }
}

// Namespace spectating/spectating
// Params 2, eflags: 0x2 linked
// Checksum 0x5727e404, Offset: 0x1ec0
// Size: 0xcc
function function_7fe9c0d1(*players, attacker) {
    if (self spawning::function_29b859d1()) {
        return;
    }
    var_1178af52 = isdefined(attacker) && isplayer(attacker) && attacker != self && isalive(attacker);
    if (var_1178af52) {
        var_156b3879 = attacker;
    }
    if (!isdefined(var_156b3879)) {
        var_156b3879 = self function_da128b1();
    }
    function_836ee9ed(var_156b3879);
}

// Namespace spectating/spectating
// Params 1, eflags: 0x2 linked
// Checksum 0xb049d642, Offset: 0x1f98
// Size: 0xb4
function on_player_killed(params) {
    if (level.spectatetype == 4 || level.spectatetype == 5) {
        self thread function_2b728d67(params.eattacker);
        if (level.var_1ba484ad == 2 || self spectate_view::function_500047aa(1)) {
            self spectate_view::function_86df9236();
            return;
        }
        self spectate_view::function_888901cb();
    }
}

