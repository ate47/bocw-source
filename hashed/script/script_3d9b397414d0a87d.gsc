// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\scoreevents.gsc;
#using scripts\mp_common\gametypes\round.gsc;
#using scripts\mp_common\gametypes\globallogic_utils.gsc;
#using scripts\mp_common\gametypes\globallogic.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using script_7a8059ca02b7b09e;
#using scripts\core_common\player\player_loadout.gsc;

#namespace namespace_4b798cb0;

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 0, eflags: 0x5
// Checksum 0x6093fb6b, Offset: 0x260
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_4b859fe530bf291d", &function_70a657d8, undefined, undefined, #"hash_53528dbbf6cd15c4");
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 0, eflags: 0x6 linked
// Checksum 0xf90e030a, Offset: 0x2b0
// Size: 0x682
function private function_70a657d8() {
    if (getdvarint(#"hash_43b642374f5b1f22", 0) == 0) {
        return;
    }
    level.esports = {};
    level.esports.teams = [];
    level.var_268c70a7 = 1;
    level.map_name = util::get_map_name();
    level.esports.var_49d3ced6 = getdvarint(#"hash_61fde65a22e1f290", 5);
    namespace_341c57b3::add_callback(#"on_start_gametype", &on_start_gametype);
    namespace_341c57b3::add_callback(#"on_game_playing", &function_e2603d58);
    namespace_341c57b3::add_callback(#"hash_3ca80e35288a78d0", &function_84b3ab79);
    namespace_341c57b3::add_callback(#"on_end_game", &function_a6efe6c9);
    namespace_341c57b3::add_callback(#"on_player_connect", &function_5a676b2c);
    namespace_341c57b3::add_callback(#"on_player_disconnect", &function_42fa3a5c);
    namespace_341c57b3::add_callback(#"on_player_spawned", &on_player_spawned);
    namespace_341c57b3::function_98df8818(#"hash_fc0d1250fc48d49", &on_player_killed);
    namespace_341c57b3::add_callback(#"on_loadout", &function_e2162733);
    namespace_341c57b3::add_callback(#"hash_7de173a0523c27c9", &function_d5aacfd7);
    switch (level.basegametype) {
    case #"koth":
        level.var_ab8dd45a = {#var_c1f04374:&function_99b4929d, #var_284ea17f:#"hash_75fa0382e49cdd2f"};
        level.var_86d47028 = {#var_c1f04374:&function_6607b43f, #var_284ea17f:#"hash_4f85fe047c18a6f2"};
        level.var_8d67cbd8 = {#var_c1f04374:&function_712f816a, #var_284ea17f:#"hash_57af555874ed0050"};
        level.var_46fc4fdb = &function_4dc75f1b;
        level.var_e1206cfc = &function_f2282b8b;
        break;
    case #"sd":
        level.var_ab8dd45a = {#var_c1f04374:&function_39e8afcf, #var_284ea17f:#"hash_d9870c3e6c1e3c5"};
        level.var_86d47028 = {#var_c1f04374:&function_9555b8d2, #var_284ea17f:#"hash_63c6c30aa3ff880"};
        level.var_8d67cbd8 = {#var_c1f04374:&function_150786f3, #var_284ea17f:#"hash_628978e8b4daa872"};
        level.var_46fc4fdb = &function_86398c9c;
        level.var_e1206cfc = &function_ceb40ef4;
        break;
    case #"control":
        level.var_ab8dd45a = {#var_c1f04374:&function_91a0716f, #var_284ea17f:#"hash_22a8e3365d654f5b"};
        level.var_86d47028 = {#var_c1f04374:&function_b16086a1, #var_284ea17f:#"hash_740ef2b9ec63f1fe"};
        level.var_8d67cbd8 = {#var_c1f04374:&function_cdce904b, #var_284ea17f:#"hash_145e373d3b0196c4"};
        level.var_88531f89 = {#var_c1f04374:&function_2b1314ec, #var_284ea17f:#"hash_2880dbfd80bebbb2"};
        level.var_46fc4fdb = &function_979f0cb4;
        level.var_e1206cfc = &function_a9b19a49;
        break;
    }
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 1, eflags: 0x2 linked
// Checksum 0xdb2cae67, Offset: 0x940
// Size: 0x60
function function_8d2c5f27(array) {
    var_67a93196 = [];
    for (i = 0; i < array.size; i++) {
        var_67a93196[i] = hash(array[i]);
    }
    return var_67a93196;
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 2, eflags: 0x2 linked
// Checksum 0x199de499, Offset: 0x9a8
// Size: 0x12e
function function_4dc75f1b(var_a504287b, var_bc31168d) {
    var_a504287b.var_20546359.var_a504287b = isdefined(var_bc31168d[#"hash_15d08ee09ca7c219"]) ? var_bc31168d[#"hash_15d08ee09ca7c219"] : 0;
    var_a504287b.var_c9ac1b25.var_a504287b = isdefined(var_bc31168d[#"hash_15d08be09ca7bd00"]) ? var_bc31168d[#"hash_15d08be09ca7bd00"] : 0;
    var_a504287b.var_17cc6b98.var_a504287b = isdefined(var_bc31168d[#"hash_15d08ce09ca7beb3"]) ? var_bc31168d[#"hash_15d08ce09ca7beb3"] : 0;
    var_a504287b.var_e6110dd7.var_a504287b = isdefined(var_bc31168d[#"hash_15d091e09ca7c732"]) ? var_bc31168d[#"hash_15d091e09ca7c732"] : 0;
    var_a504287b.var_1993c7d2.var_a504287b = isdefined(var_bc31168d[#"hash_15d092e09ca7c8e5"]) ? var_bc31168d[#"hash_15d092e09ca7c8e5"] : 0;
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 2, eflags: 0x2 linked
// Checksum 0x19ea617e, Offset: 0xae0
// Size: 0x86
function function_86398c9c(var_a504287b, var_bc31168d) {
    var_a504287b.var_f177bc0c.var_a504287b = isdefined(var_bc31168d[#"bombplanted"]) ? var_bc31168d[#"bombplanted"] : 0;
    var_a504287b.var_8a69e593.var_a504287b = isdefined(var_bc31168d[#"bombdefused"]) ? var_bc31168d[#"bombdefused"] : 0;
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 2, eflags: 0x2 linked
// Checksum 0x36716e4, Offset: 0xb70
// Size: 0x2e
function function_979f0cb4(var_a504287b, var_bc31168d) {
    var_a504287b.var_a6134363.var_a504287b = var_bc31168d[#"hash_156cd38474282f8d"];
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 0, eflags: 0x2 linked
// Checksum 0xf899ebe, Offset: 0xba8
// Size: 0x20e
function function_9f07d120() {
    foreach (player in self.players) {
        if (player.team != #"spectator") {
            var_bc31168d = player.pers;
            var_a504287b = {};
            var_a504287b.kills.var_a504287b = var_bc31168d[#"kills"];
            var_a504287b.deaths.var_a504287b = var_bc31168d[#"deaths"];
            var_a504287b.assists.var_a504287b = var_bc31168d[#"assists"];
            var_a504287b.damage_done.var_a504287b = var_bc31168d[#"damagedone"];
            var_a504287b.var_52bfc9cc.var_a504287b = 0;
            var_a504287b.multikills.var_a504287b = var_bc31168d[#"hash_104ec9727c3d4ef7"];
            var_a504287b.var_fc1e4ef3.var_a504287b = 0;
            var_a504287b.var_fcafa2f2.var_a504287b = var_bc31168d[#"time_played_alive"];
            var_a504287b.score.var_a504287b = var_bc31168d[#"score"];
            var_a504287b.shots_hit.var_a504287b = var_bc31168d[#"shotshit"];
            var_a504287b.shots_fired.var_a504287b = var_bc31168d[#"shotsfired"];
            var_a504287b.var_d75d8ad2.var_a504287b = var_bc31168d[#"headshothits"];
            var_a504287b.objective_time.var_a504287b = var_bc31168d[#"objtime"];
            if (isdefined(level.var_46fc4fdb)) {
                self [[ level.var_46fc4fdb ]](var_a504287b, var_bc31168d);
            }
            player.var_a504287b = var_a504287b;
        }
    }
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 1, eflags: 0x2 linked
// Checksum 0x292ecf94, Offset: 0xdc0
// Size: 0x90
function function_1674a96a(var_67d23bd8) {
    if (!isdefined(level.esports.teams[var_67d23bd8]) || level.esports.teams[var_67d23bd8] == "") {
        level.esports.teams[var_67d23bd8] = function_638671f1(var_67d23bd8);
    }
    return level.esports.teams[var_67d23bd8];
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 0, eflags: 0x2 linked
// Checksum 0xa35dc5a0, Offset: 0xe58
// Size: 0x42
function function_ce7dd3eb() {
    var_64e8f5a4 = 0;
    while (!isdefined(self.var_b2ca7b2b)) {
        wait(0.1);
        var_64e8f5a4++;
        if (var_64e8f5a4 >= 10) {
            break;
        }
    }
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 0, eflags: 0x2 linked
// Checksum 0x42006694, Offset: 0xea8
// Size: 0x16a
function function_3d01c1b3() {
    var_c1e98979 = round::function_3624d032();
    switch (var_c1e98979) {
    case 0:
        return "dnf";
    case 1:
        return "completed";
    case 2:
        return "time limit";
    case 3:
        return "scorelimit";
    case 4:
        return "roundscorelimit";
    case 5:
        return "roundlimit";
    case 6:
        return "team eliminated";
    case 7:
        return "forfeit";
    case 8:
        return "ended game";
    case 9:
        return "host ended game";
    case 10:
        return "host ended sucks";
    case 12:
        return "gamemode-specific";
    case 11:
        return "canceled";
        break;
    }
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 0, eflags: 0x2 linked
// Checksum 0x798967a1, Offset: 0x1020
// Size: 0x12c
function function_d757edb5() {
    winning_team = round::get_winning_team();
    if (winning_team == game.attackers) {
        return {#var_c7a20fbb:game.defenders, #var_9bfeafed:winning_team, #side:#"attack"};
    } else if (winning_team == game.defenders) {
        return {#var_c7a20fbb:game.attackers, #var_9bfeafed:winning_team, #side:#"hash_43d410f7ec113773"};
    }
    return {#var_c7a20fbb:#"none", #var_9bfeafed:winning_team, #side:#"none"};
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 0, eflags: 0x2 linked
// Checksum 0x40dba32c, Offset: 0x1158
// Size: 0x48
function function_ddf02547() {
    zoneindex = array::find(level.zones, level.var_c32b93c6[0]) + 1;
    return "point_" + zoneindex;
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 0, eflags: 0x2 linked
// Checksum 0x6fe9b2ab, Offset: 0x11a8
// Size: 0x52
function function_a6f108b5() {
    if (isdefined(self.label)) {
        if (self.label == "_a") {
            return "point_a";
        } else if (self.label == "_b") {
            return "point_b";
        }
    }
    return "bomb";
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 0, eflags: 0x2 linked
// Checksum 0x1d0f611, Offset: 0x1208
// Size: 0x46
function function_d4ad62c7() {
    if (self.var_f23c87bd == "control_0") {
        return "point_a";
    } else if (self.var_f23c87bd == "control_1") {
        return "point_b";
    }
    return self.var_f23c87bd;
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 0, eflags: 0x2 linked
// Checksum 0xb3a0ce, Offset: 0x1258
// Size: 0x7e
function function_9ad755c5() {
    var_c6af8b83 = float(self.pers[#"hash_20464b40eeb9b465"]);
    time_played_moving = float(self.pers[#"time_played_moving"]);
    return time_played_moving != 0 ? var_c6af8b83 / time_played_moving : 0;
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 0, eflags: 0x2 linked
// Checksum 0xb6ea939, Offset: 0x12e0
// Size: 0xba
function function_a3384e() {
    var_e4d08367 = "A";
    if (isdefined(level.defuseobject) && isdefined(level.defuseobject.label)) {
        var_e3c6fc00 = level.defuseobject.label;
        var_e4d08367 = toupper(var_e3c6fc00[1]);
    }
    currenttime = gettime();
    objective_time = function_4c27be22(var_e4d08367);
    return currenttime > objective_time ? objective_time - currenttime : 0;
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 0, eflags: 0x2 linked
// Checksum 0x30970652, Offset: 0x13a8
// Size: 0x94
function function_e2603d58() {
    self function_9f07d120();
    if (util::isfirstround()) {
        self function_72c32279();
        if (isdefined(level.var_e1206cfc)) {
            self [[ level.var_e1206cfc ]]();
        }
    }
    level thread function_1296760e();
    self function_2fda590d();
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 0, eflags: 0x2 linked
// Checksum 0x4be3c5d2, Offset: 0x1448
// Size: 0x6c
function function_84b3ab79() {
    util::function_64ebd94d();
    waittillframeend();
    self on_round_end();
    if (util::isoneround() || util::waslastround()) {
        self function_d519e318();
    }
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 0, eflags: 0x2 linked
// Checksum 0xd569cf84, Offset: 0x14c0
// Size: 0x8c
function function_a6efe6c9() {
    if (self.team == #"spectator") {
        return;
    }
    util::function_64ebd94d();
    waittillframeend();
    self function_2d28a3b3();
    if (util::isoneround() || util::waslastround()) {
        self function_f0ffff28();
    }
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 0, eflags: 0x6 linked
// Checksum 0x166b9a81, Offset: 0x1558
// Size: 0xea
function private function_5a676b2c() {
    self endon(#"disconnect");
    player_team = self.pers[#"team"];
    var_64e8f5a4 = 0;
    while (!isdefined(player_team) || isdefined(self.pers[#"needteam"])) {
        wait(0.1);
        player_team = self.pers[#"team"];
        if (player_team == #"spectator") {
            return;
        }
        var_64e8f5a4++;
        if (var_64e8f5a4 >= 10) {
            break;
        }
    }
    self.var_7a967a71 = {};
    self.var_b2ca7b2b = function_1674a96a(player_team);
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 0, eflags: 0x6 linked
// Checksum 0x7e2ad421, Offset: 0x1650
// Size: 0xcc
function private function_42fa3a5c() {
    if (self.team == #"spectator" || !isdefined(self.var_7a967a71) || game.state == #"pregame") {
        return;
    }
    var_66e1aeea = self.var_7a967a71;
    if (var_66e1aeea.round_end !== 1) {
        self function_2d28a3b3();
    }
    if (var_66e1aeea.match_end !== 1) {
        self function_f0ffff28();
    }
    self on_player_disconnect();
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 1, eflags: 0x2 linked
// Checksum 0xded2af07, Offset: 0x1728
// Size: 0x6a
function function_2b1314ec(var_fb5fbbb8) {
    var_fb5fbbb8.var_34f440e5.var_fb5fbbb8 = isdefined(level.var_1cb1e802[0]) ? level.var_1cb1e802[0] : 0;
    var_fb5fbbb8.var_e428312f.var_fb5fbbb8 = isdefined(level.var_1cb1e802[1]) ? level.var_1cb1e802[1] : 0;
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 0, eflags: 0x2 linked
// Checksum 0x70946aad, Offset: 0x17a0
// Size: 0x24c
function function_3651a831() {
    var_d21c921d = game.stat[#"teamscores"];
    var_fb5fbbb8 = {#var_a41f3c35:isdefined(var_d21c921d[#"axis"]) ? var_d21c921d[#"axis"] : 0, #var_9953c424:isdefined(var_d21c921d[#"allies"]) ? var_d21c921d[#"allies"] : 0, #var_43cf7fe7:isdefined(int(float(function_a3384e()) / 1000)) ? int(float(function_a3384e()) / 1000) : 0, #var_804c5177:isdefined(int(float(globallogic_utils::gettimeremaining()) / 1000)) ? int(float(globallogic_utils::gettimeremaining()) / 1000) : 0};
    var_284ea17f = #"hash_12a25db8eddf1e1c";
    if (isdefined(level.var_88531f89)) {
        var_284ea17f = level.var_88531f89.var_284ea17f;
        self [[ level.var_88531f89.var_c1f04374 ]](var_fb5fbbb8);
    }
    function_92d1707f(var_284ea17f, var_fb5fbbb8);
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 0, eflags: 0x2 linked
// Checksum 0x7773c342, Offset: 0x19f8
// Size: 0x53e
function function_a8ccfb6() {
    var_477c313e = [];
    foreach (player in level.players) {
        if (!isdefined(player) || player.team == #"spectator") {
            continue;
        }
        var_341c57b3 = player function_28d70fb8();
        player.pers[#"hash_c9752eb3c681b24"] = player.pers[#"hash_c9752eb3c681b24"] + var_341c57b3.var_c3f958f5;
        player.pers[#"hash_567d2891c00748f7"] = player.pers[#"hash_567d2891c00748f7"] + 1;
        origin = player.origin;
        var_fb5fbbb8 = {#ping:var_341c57b3.ping, #latency:var_341c57b3.latency, #var_58c899fa:origin[2], #var_6e78c55a:origin[1], #var_ef0c4683:origin[0], #var_c3f958f5:var_341c57b3.var_c3f958f5, #player:player.name, #objective_time:player.pers[#"objtime"], #var_d75d8ad2:player.pers[#"headshothits"], #shots_hit:player.pers[#"shotshit"], #shots_fired:player.pers[#"shotsfired"], #score:player.pers[#"score"], #var_fc1e4ef3:player.pers[#"highestmultikill"], #multikills:player.pers[#"hash_104ec9727c3d4ef7"], #var_52bfc9cc:player.pers[#"best_kill_streak"], #var_c6267937:player.pers[#"cur_kill_streak"], #kills:player.pers[#"kills"], #deaths:player.pers[#"deaths"], #assists:player.pers[#"assists"], #damage_dealt:player.pers[#"damagedone"]};
        var_99f319a8 = {#event:var_fb5fbbb8, #player:player};
        if (!isdefined(var_477c313e)) {
            var_477c313e = [];
        } else if (!isarray(var_477c313e)) {
            var_477c313e = array(var_477c313e);
        }
        var_477c313e[var_477c313e.size] = var_99f319a8;
    }
    foreach (var_99f319a8 in var_477c313e) {
        player = var_99f319a8.player;
        if (!isdefined(player)) {
            continue;
        }
        player function_678f57c8(#"hash_38e3c906bd8063c0", var_99f319a8.event);
        waitframe(1);
    }
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 0, eflags: 0x6 linked
// Checksum 0xa327ddcf, Offset: 0x1f40
// Size: 0x7e
function private function_1296760e() {
    self endon(#"death");
    level endon(#"game_ended");
    var_49d3ced6 = level.esports.var_49d3ced6;
    while (1) {
        function_3651a831();
        function_a8ccfb6();
        wait(var_49d3ced6);
    }
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 0, eflags: 0x2 linked
// Checksum 0xc97a3cc5, Offset: 0x1fc8
// Size: 0xdc
function on_start_gametype() {
    if (util::isfirstround()) {
        var_fb5fbbb8 = {#var_16d89ef:function_1674a96a(#"axis"), #var_53efd038:function_1674a96a(#"allies"), #map_name:level.map_name, #game_type:level.gametype};
        function_92d1707f(#"hash_1f4373b70b30be60", var_fb5fbbb8);
    }
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 0, eflags: 0x2 linked
// Checksum 0x7d205f9d, Offset: 0x20b0
// Size: 0xc4
function function_72c32279() {
    var_fb5fbbb8 = {#var_16d89ef:function_1674a96a(#"axis"), #var_53efd038:function_1674a96a(#"allies"), #map_name:level.map_name, #game_type:level.gametype};
    function_92d1707f(#"hash_60026644979e3672", var_fb5fbbb8);
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 0, eflags: 0x2 linked
// Checksum 0xe5b072c5, Offset: 0x2180
// Size: 0x1bc
function function_d519e318() {
    var_d21c921d = game.stat[#"teamscores"];
    var_9bfeafed = function_1674a96a(round::get_winning_team());
    var_fb5fbbb8 = {#map_name:level.map_name, #game_type:level.gametype, #var_9bfeafed:isdefined(var_9bfeafed) ? var_9bfeafed : "draw", #var_a41f3c35:var_d21c921d[#"axis"], #var_16d89ef:function_1674a96a(#"axis"), #var_9953c424:var_d21c921d[#"allies"], #var_53efd038:function_1674a96a(#"allies"), #var_e394d7c0:game.roundsplayed, #var_34d28e72:function_f8d53445()};
    function_92d1707f(#"hash_59d78dad912aed7", var_fb5fbbb8);
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 1, eflags: 0x2 linked
// Checksum 0xc1e4c024, Offset: 0x2348
// Size: 0xce
function function_99b4929d(var_fb5fbbb8) {
    var_fb5fbbb8.var_5fb8d45b.var_fb5fbbb8 = self.pers[#"objtime"];
    var_fb5fbbb8.var_20546359.var_fb5fbbb8 = self.pers[#"hash_15d08ee09ca7c219"];
    var_fb5fbbb8.var_c9ac1b25.var_fb5fbbb8 = self.pers[#"hash_15d08be09ca7bd00"];
    var_fb5fbbb8.var_17cc6b98.var_fb5fbbb8 = self.pers[#"hash_15d08ce09ca7beb3"];
    var_fb5fbbb8.var_e6110dd7.var_fb5fbbb8 = self.pers[#"hash_15d091e09ca7c732"];
    var_fb5fbbb8.var_1993c7d2.var_fb5fbbb8 = self.pers[#"hash_15d092e09ca7c8e5"];
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 1, eflags: 0x2 linked
// Checksum 0x2b2bc94c, Offset: 0x2420
// Size: 0x6e
function function_39e8afcf(var_fb5fbbb8) {
    var_fb5fbbb8.var_5fb8d45b.var_fb5fbbb8 = self.pers[#"objtime"];
    var_fb5fbbb8.var_f177bc0c.var_fb5fbbb8 = self.pers[#"bombplanted"];
    var_fb5fbbb8.var_8a69e593.var_fb5fbbb8 = self.pers[#"bombdefused"];
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 1, eflags: 0x2 linked
// Checksum 0x1abc3f50, Offset: 0x2498
// Size: 0x4e
function function_91a0716f(var_fb5fbbb8) {
    var_fb5fbbb8.var_b675fed3.var_fb5fbbb8 = self.pers[#"captures"];
    var_fb5fbbb8.var_79714d9b.var_fb5fbbb8 = self.pers[#"hash_156cd38474282f8d"];
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 0, eflags: 0x2 linked
// Checksum 0x123074b7, Offset: 0x24f0
// Size: 0x366
function function_f0ffff28() {
    var_bc31168d = self.pers;
    var_1bed336c = 0;
    var_f5a2d10c = var_bc31168d[#"hash_567d2891c00748f7"];
    if (var_f5a2d10c > 0) {
        var_1bed336c = var_bc31168d[#"hash_c9752eb3c681b24"] / var_f5a2d10c;
    }
    var_fb5fbbb8 = {#var_4ac15e1d:var_1bed336c, #var_e394d7c0:game.roundsplayed, #var_fc1e4ef3:var_bc31168d[#"highestmultikill"], #var_f66612f0:var_bc31168d[#"hash_104ec9727c3d4ef7"], #var_5afded2b:var_bc31168d[#"shotshit"], #var_e36aba01:var_bc31168d[#"headshothits"], #var_9411af72:var_bc31168d[#"shotsfired"], #var_d568c84:var_bc31168d[#"suicides"], #var_5bda8eec:var_bc31168d[#"time_played_moving"], #var_be574ee1:self function_9ad755c5(), #var_2e369569:var_bc31168d[#"damagedone"], #var_3426c422:var_bc31168d[#"hash_20464b40eeb9b465"], #var_62f25812:var_bc31168d[#"time_played_alive"], #var_35cd6992:var_bc31168d[#"headshots"], #total_deaths:var_bc31168d[#"deaths"], #var_ef5017c7:var_bc31168d[#"best_kill_streak"], #total_kills:var_bc31168d[#"kills"], #var_229e9030:var_bc31168d[#"assists"], #total_score:var_bc31168d[#"score"], #player:self.name};
    var_284ea17f = #"hash_467c6c9bd786ed0d";
    if (isdefined(level.var_ab8dd45a)) {
        var_284ea17f = level.var_ab8dd45a.var_284ea17f;
        self [[ level.var_ab8dd45a.var_c1f04374 ]](var_fb5fbbb8);
    }
    self function_678f57c8(var_284ea17f, var_fb5fbbb8);
    self.var_7a967a71.match_end = 1;
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 0, eflags: 0x2 linked
// Checksum 0xa7fddaa8, Offset: 0x2860
// Size: 0x15c
function on_player_spawned() {
    player_position = self.origin;
    player_angles = self getplayerangles();
    var_fb5fbbb8 = {#var_e88b9d9:player_angles[2], #var_c91e5a:player_angles[1], #var_231262ec:player_angles[0], #var_58c899fa:player_position[2], #var_6e78c55a:player_position[1], #var_ef0c4683:player_position[0], #var_34d28e72:function_f8d53445(), #player:self.name};
    if (!isdefined(self.var_b2ca7b2b)) {
        self function_ce7dd3eb();
    }
    var_fb5fbbb8.player_team.var_fb5fbbb8 = self.var_b2ca7b2b;
    self function_678f57c8(#"hash_1bc66812d8d53094", var_fb5fbbb8);
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 1, eflags: 0x2 linked
// Checksum 0xd16c59e5, Offset: 0x29c8
// Size: 0x524
function on_player_killed(data) {
    attacker = data.attacker;
    victim = data.victim;
    results = data.results;
    if (isplayer(attacker)) {
        var_9c0962f = data.attackerorigin;
        var_83634238 = data.var_83634238;
        attackerweapon = data.weapon;
        var_c4b07a31 = {#weapon_attachments:function_8d2c5f27(attackerweapon.attachments), #weapon:attackerweapon.name, #var_e88b9d9:var_83634238[2], #var_c91e5a:var_83634238[1], #var_231262ec:var_83634238[0], #var_58c899fa:var_9c0962f[2], #var_6e78c55a:var_9c0962f[1], #var_ef0c4683:var_9c0962f[0], #team:attacker.var_b2ca7b2b, #name:attacker.name};
        var_ebf88f4 = {#var_4aca04c6:data.var_91610392, #var_c085dcdf:data.attackerwasflashed, #is_ads:data.var_4c540e11 > 0.5};
        var_15b3531 = {#var_905bd140:results.var_905bd140 === 1, #var_a5aabf71:results.var_a5aabf71 === 1, #var_91b86b21:results.var_91b86b21 === 1};
    } else {
        var_c4b07a31 = {};
        var_ebf88f4 = {};
        var_15b3531 = {};
    }
    var_48dd40c2 = data.victimorigin;
    var_5fceefd4 = data.var_5fceefd4;
    victimweapon = data.victimweapon;
    var_6d0087b5 = {#weapon_attachments:function_8d2c5f27(victimweapon.attachments), #weapon:victimweapon.name, #var_e88b9d9:var_5fceefd4[2], #var_c91e5a:var_5fceefd4[1], #var_231262ec:var_5fceefd4[0], #var_58c899fa:var_48dd40c2[2], #var_6e78c55a:var_48dd40c2[1], #var_ef0c4683:var_48dd40c2[0], #team:victim.var_b2ca7b2b, #name:victim.name};
    var_61e89f84 = {#var_4aca04c6:data.var_30db4425, #var_c085dcdf:data.var_e020b97e, #is_ads:data.var_f0b3c772 > 0.5};
    var_ce72ff21 = {#var_cc573225:isdefined(results.kill_distance) ? results.kill_distance : 0, #means_of_death:data.smeansofdeath, #var_34d28e72:function_f8d53445()};
    victim function_678f57c8(#"hash_36ba9c8216e49683", #"info", var_ce72ff21, #"attacker", var_c4b07a31, #"hash_22188ea5740f5555", var_ebf88f4, #"victim", var_6d0087b5, #"hash_11d3bd3693fea440", var_61e89f84, #"hash_77050fd9e402347d", var_15b3531);
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 0, eflags: 0x2 linked
// Checksum 0x430ba983, Offset: 0x2ef8
// Size: 0x4c
function on_player_disconnect() {
    var_fb5fbbb8 = {#player:self.name};
    self function_678f57c8(#"hash_75c1498f60e0b0f0", var_fb5fbbb8);
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 0, eflags: 0x2 linked
// Checksum 0x6ebbaddb, Offset: 0x2f50
// Size: 0x3b4
function function_e2162733() {
    if (isdefined(self.lastclass) && self.curclass == self.lastclass) {
        return;
    }
    self.lastclass = self.curclass;
    primary_weapon = self loadout::function_18a77b37("primary");
    secondary_weapon = self loadout::function_18a77b37("secondary");
    primary_grenade = self loadout::function_18a77b37("primarygrenade");
    var_68f5c0ed = self loadout::function_18a77b37("secondarygrenade");
    field_upgrade = self loadout::function_18a77b37("specialgrenade");
    var_992d253 = self loadout::function_18a77b37("herogadget");
    var_7078908d = self loadout::function_18a77b37("ultimate");
    class_num = self.class_num;
    tactical_gear = self function_d78e0e04(class_num);
    scorestreaks = self.killstreak;
    perks = self function_4a9f1384(class_num);
    wildcards = self function_6f2c0492(class_num);
    var_fb5fbbb8 = {#wildcards:wildcards, #perks:perks, #scorestreaks:scorestreaks, #tactical_gear:tactical_gear, #var_7078908d:var_7078908d.name, #var_992d253:var_992d253.name, #field_upgrade:field_upgrade.name, #var_68f5c0ed:var_68f5c0ed.name, #primary_grenade:primary_grenade.name, #var_85aac3ff:function_8d2c5f27(isdefined(secondary_weapon.attachments) ? secondary_weapon.attachments : []), #secondary_weapon:secondary_weapon.name, #var_70eb2c9d:function_8d2c5f27(isdefined(primary_weapon.attachments) ? primary_weapon.attachments : []), #primary_weapon:primary_weapon.name, #var_34d28e72:function_f8d53445(), #player:self.name};
    self function_678f57c8(#"hash_8443c9b69d1ef55", var_fb5fbbb8);
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 0, eflags: 0x2 linked
// Checksum 0x7a2c96ea, Offset: 0x3310
// Size: 0x104
function function_2fda590d() {
    var_d0ac2a58 = #"none";
    var_7fe6eed1 = #"none";
    if (util::isroundbased()) {
        if (game.attackers == #"allies") {
            var_d0ac2a58 = #"attack";
            var_7fe6eed1 = #"hash_43d410f7ec113773";
        } else {
            var_d0ac2a58 = #"hash_43d410f7ec113773";
            var_7fe6eed1 = #"attack";
        }
    }
    var_fb5fbbb8 = {#var_7fe6eed1:var_7fe6eed1, #var_d0ac2a58:var_d0ac2a58};
    function_92d1707f(#"hash_6b49a5cba731068f", var_fb5fbbb8);
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 0, eflags: 0x2 linked
// Checksum 0xce59c2fe, Offset: 0x3420
// Size: 0x12c
function on_round_end() {
    round_info = function_d757edb5();
    var_fb5fbbb8 = {#var_c7a20fbb:function_1674a96a(round_info.var_c7a20fbb), #var_9bfeafed:function_1674a96a(round_info.var_9bfeafed), #map_name:level.map_name, #game_type:level.gametype, #var_34d28e72:function_f8d53445(), #var_77a9bf99:round_info.side, #result:function_3d01c1b3()};
    function_92d1707f(#"hash_1d858c5e8f79303a", var_fb5fbbb8);
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 1, eflags: 0x2 linked
// Checksum 0x5dd2d840, Offset: 0x3558
// Size: 0x1ca
function function_6607b43f(var_fb5fbbb8) {
    var_a504287b = self.var_a504287b;
    var_bc31168d = self.pers;
    objective_time = var_bc31168d[#"objtime"];
    var_20546359 = var_bc31168d[#"hash_15d08ee09ca7c219"];
    var_c9ac1b25 = var_bc31168d[#"hash_15d08be09ca7bd00"];
    var_17cc6b98 = var_bc31168d[#"hash_15d08ce09ca7beb3"];
    var_e6110dd7 = var_bc31168d[#"hash_15d091e09ca7c732"];
    var_1993c7d2 = var_bc31168d[#"hash_15d092e09ca7c8e5"];
    var_fb5fbbb8.objective_time.var_fb5fbbb8 = isdefined(objective_time) ? objective_time - var_a504287b.objective_time : 0;
    var_fb5fbbb8.var_20546359.var_fb5fbbb8 = isdefined(var_20546359) ? var_20546359 - var_a504287b.var_20546359 : 0;
    var_fb5fbbb8.var_c9ac1b25.var_fb5fbbb8 = isdefined(var_c9ac1b25) ? var_c9ac1b25 - var_a504287b.var_c9ac1b25 : 0;
    var_fb5fbbb8.var_17cc6b98.var_fb5fbbb8 = isdefined(var_17cc6b98) ? var_17cc6b98 - var_a504287b.var_17cc6b98 : 0;
    var_fb5fbbb8.var_e6110dd7.var_fb5fbbb8 = isdefined(var_e6110dd7) ? var_e6110dd7 - var_a504287b.var_e6110dd7 : 0;
    var_fb5fbbb8.var_1993c7d2.var_fb5fbbb8 = isdefined(var_1993c7d2) ? var_1993c7d2 - var_a504287b.var_1993c7d2 : 0;
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 1, eflags: 0x2 linked
// Checksum 0xd5c2b0e8, Offset: 0x3730
// Size: 0xfe
function function_9555b8d2(var_fb5fbbb8) {
    var_a504287b = self.var_a504287b;
    var_bc31168d = self.pers;
    objective_time = var_bc31168d[#"objtime"];
    var_f177bc0c = var_bc31168d[#"bombplanted"];
    var_8a69e593 = var_bc31168d[#"bombdefused"];
    var_fb5fbbb8.objective_time.var_fb5fbbb8 = isdefined(objective_time) ? objective_time - var_a504287b.objective_time : 0;
    var_fb5fbbb8.var_f177bc0c.var_fb5fbbb8 = isdefined(var_f177bc0c) ? var_f177bc0c - var_a504287b.var_f177bc0c : 0;
    var_fb5fbbb8.var_8a69e593.var_fb5fbbb8 = isdefined(var_8a69e593) ? var_8a69e593 - var_a504287b.var_8a69e593 : 0;
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 1, eflags: 0x2 linked
// Checksum 0xcddf86fc, Offset: 0x3838
// Size: 0xa6
function function_b16086a1(var_fb5fbbb8) {
    var_a504287b = self.var_a504287b;
    objective_time = self.pers[#"objtime"];
    var_a6134363 = self.pers[#"hash_156cd38474282f8d"];
    var_fb5fbbb8.objective_time.var_fb5fbbb8 = isdefined(objective_time) ? objective_time - var_a504287b.objective_time : 0;
    var_fb5fbbb8.var_a6134363.var_fb5fbbb8 = isdefined(var_a6134363) ? var_a6134363 - var_a504287b.var_a6134363 : 0;
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 0, eflags: 0x2 linked
// Checksum 0xe146f580, Offset: 0x38e8
// Size: 0x2be
function function_2d28a3b3() {
    var_a504287b = self.var_a504287b;
    var_bc31168d = self.pers;
    var_ec6fc02d = util::getroundswon(self.team);
    if (!isdefined(var_a504287b)) {
        return;
    }
    var_fb5fbbb8 = {#player:self.name, #var_d75d8ad2:var_bc31168d[#"headshothits"] - var_a504287b.var_d75d8ad2, #shots_hit:var_bc31168d[#"shotshit"] - var_a504287b.shots_hit, #shots_fired:var_bc31168d[#"shotsfired"] - var_a504287b.shots_fired, #score:var_bc31168d[#"score"] - var_a504287b.score, #var_ec6fc02d:isdefined(var_ec6fc02d) ? var_ec6fc02d : 0, #var_e394d7c0:game.roundsplayed, #var_fcafa2f2:var_bc31168d[#"time_played_alive"] - var_a504287b.var_fcafa2f2, #var_52bfc9cc:var_a504287b.var_52bfc9cc, #damage_dealt:var_bc31168d[#"damagedone"] - var_a504287b.damage_done, #assists:var_bc31168d[#"assists"] - var_a504287b.assists, #deaths:var_bc31168d[#"deaths"] - var_a504287b.deaths, #kills:var_bc31168d[#"kills"] - var_a504287b.kills};
    var_284ea17f = #"hash_15b84d837906d158";
    if (isdefined(level.var_86d47028)) {
        var_284ea17f = level.var_86d47028.var_284ea17f;
        self [[ level.var_86d47028.var_c1f04374 ]](var_fb5fbbb8);
    }
    self function_678f57c8(var_284ea17f, var_fb5fbbb8);
    self.var_7a967a71.round_end = 1;
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 2, eflags: 0x2 linked
// Checksum 0x3ba66d64, Offset: 0x3bb0
// Size: 0x8e
function function_712f816a(var_fb5fbbb8, player) {
    var_fb5fbbb8.var_943dace9.var_fb5fbbb8 = self.var_a4926509 != #"none";
    var_fb5fbbb8.var_7407eb67.var_fb5fbbb8 = self.iscontested;
    var_fb5fbbb8.var_a50591bc.var_fb5fbbb8 = function_ddf02547();
    if (!isdefined(player)) {
        var_fb5fbbb8.player.var_fb5fbbb8 = "none";
    } else {
        var_fb5fbbb8.player.var_fb5fbbb8 = player.name;
    }
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 2, eflags: 0x2 linked
// Checksum 0x9d03da24, Offset: 0x3c48
// Size: 0x92
function function_150786f3(var_fb5fbbb8, player) {
    if (!isdefined(player)) {
        var_fb5fbbb8.player.var_fb5fbbb8 = "none";
        var_fb5fbbb8.var_f4f5d0fd.var_fb5fbbb8 = 0;
    } else {
        var_fb5fbbb8.player.var_fb5fbbb8 = player.name;
        var_fb5fbbb8.var_f4f5d0fd.var_fb5fbbb8 = player.isbombcarrier;
    }
    var_fb5fbbb8.var_a50591bc.var_fb5fbbb8 = function_a6f108b5();
    var_fb5fbbb8.var_f04ca204.var_fb5fbbb8 = level.bombplanted;
    var_fb5fbbb8.var_72f6a393.var_fb5fbbb8 = level.bombdefused;
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 2, eflags: 0x2 linked
// Checksum 0x95394c02, Offset: 0x3ce8
// Size: 0x10a
function function_cdce904b(var_fb5fbbb8, player) {
    var_1cb1e802 = level.var_1cb1e802;
    var_fb5fbbb8.player.var_fb5fbbb8 = player.name;
    var_fb5fbbb8.var_a50591bc.var_fb5fbbb8 = function_d4ad62c7();
    var_fb5fbbb8.var_943dace9.var_fb5fbbb8 = self.var_a4926509 != #"none";
    var_fb5fbbb8.var_7407eb67.var_fb5fbbb8 = self.contested;
    var_fb5fbbb8.var_b910ed34.var_fb5fbbb8 = game.lives[#"allies"];
    var_fb5fbbb8.var_33a590ba.var_fb5fbbb8 = game.lives[#"axis"];
    var_fb5fbbb8.var_34f440e5.var_fb5fbbb8 = isdefined(var_1cb1e802[0]) ? var_1cb1e802[0] : 0;
    var_fb5fbbb8.var_e428312f.var_fb5fbbb8 = isdefined(var_1cb1e802[1]) ? var_1cb1e802[1] : 0;
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 1, eflags: 0x2 linked
// Checksum 0x8b33c798, Offset: 0x3e00
// Size: 0x16c
function function_d5aacfd7(var_5a9598f0) {
    if (!is_true(self.var_3517bb1)) {
        return;
    }
    origin = self.origin;
    var_fb5fbbb8 = {#var_34d28e72:function_f8d53445(), #var_7b99e470:function_1674a96a(isdefined(var_5a9598f0.team) ? var_5a9598f0.team : self.var_a4926509), #var_94d1ee7a:origin[2], #var_830acac0:origin[1], #var_94e96e7d:origin[0]};
    var_284ea17f = #"hash_3cb91ecb4b176d16";
    if (isdefined(level.var_8d67cbd8)) {
        var_284ea17f = level.var_8d67cbd8.var_284ea17f;
        self [[ level.var_8d67cbd8.var_c1f04374 ]](var_fb5fbbb8, var_5a9598f0);
    }
    function_92d1707f(var_284ea17f, var_fb5fbbb8);
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 1, eflags: 0x2 linked
// Checksum 0xaf6f2fce, Offset: 0x3f78
// Size: 0x116
function function_48541d37(zones) {
    var_e87e5141 = [];
    for (zone_index = 0; zone_index < zones.size; zone_index++) {
        origin = zones[zone_index].origin;
        var_563da17e = {#var_58c899fa:origin[2], #var_6e78c55a:origin[1], #var_ef0c4683:origin[0], #var_a50591bc:"point_" + zone_index + 1};
        if (!isdefined(var_e87e5141)) {
            var_e87e5141 = [];
        } else if (!isarray(var_e87e5141)) {
            var_e87e5141 = array(var_e87e5141);
        }
        var_e87e5141[var_e87e5141.size] = var_563da17e;
    }
    return var_e87e5141;
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 0, eflags: 0x2 linked
// Checksum 0x3c588a15, Offset: 0x4098
// Size: 0x114
function function_f2282b8b() {
    var_e87e5141 = function_48541d37(level.zones);
    function_92d1707f(#"hash_728e50d0434b4a22", #"hash_4ad96aaa6914f640", isdefined(var_e87e5141[0]) ? var_e87e5141[0] : {}, #"hash_56df7742e286bc87", isdefined(var_e87e5141[1]) ? var_e87e5141[1] : {}, #"hash_573b5a52833adb52", isdefined(var_e87e5141[2]) ? var_e87e5141[2] : {}, #"hash_63c1781e1881c679", isdefined(var_e87e5141[3]) ? var_e87e5141[3] : {}, #"hash_85376cdd236d6e4", isdefined(var_e87e5141[4]) ? var_e87e5141[4] : {});
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 0, eflags: 0x2 linked
// Checksum 0x16e97962, Offset: 0x41b8
// Size: 0x9c
function function_ceb40ef4() {
    var_e87e5141 = function_48541d37(level.bombzones);
    function_92d1707f(#"hash_3f1baae52561df70", #"hash_4ad96aaa6914f640", isdefined(var_e87e5141[0]) ? var_e87e5141[0] : {}, #"hash_56df7742e286bc87", isdefined(var_e87e5141[1]) ? var_e87e5141[1] : {});
}

// Namespace namespace_4b798cb0/namespace_4b798cb0
// Params 0, eflags: 0x2 linked
// Checksum 0xb1057983, Offset: 0x4260
// Size: 0x104
function function_a9b19a49() {
    var_e87e5141 = function_48541d37(level.zones);
    var_8b5d8d58 = {#var_beae0a65:game.lives[#"axis"], #var_4d3ce32d:game.lives[#"allies"]};
    function_92d1707f(#"hash_3fef02abcd99afce", #"hash_4ad96aaa6914f640", isdefined(var_e87e5141[0]) ? var_e87e5141[0] : {}, #"hash_56df7742e286bc87", isdefined(var_e87e5141[1]) ? var_e87e5141[1] : {}, #"hash_7a87a57cbb842ec7", var_8b5d8d58);
}
