// Atian COD Tools GSC CW decompiler test
#using scripts\mp_common\teams\teams.gsc;
#using scripts\core_common\bots\bot.gsc;
#using scripts\core_common\util_shared.gsc;
#using script_3d703ef87a841fe4;
#using script_45fdb6cec5580007;
#using scripts\core_common\player\player_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace teams;

// Namespace teams/team_assignment
// Params 0, eflags: 0x5
// Checksum 0x82a01445, Offset: 0xe0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"team_assignment", &preinit, undefined, undefined, undefined);
}

// Namespace teams/team_assignment
// Params 0, eflags: 0x6 linked
// Checksum 0x8ad773a0, Offset: 0x128
// Size: 0x5c
function private preinit() {
    if (!isdefined(level.var_a3e209ba)) {
        level.var_a3e209ba = &function_321f8eb5;
    }
    /#
        level.var_ba13fb7a = getdvarint(#"hash_40fe9055da22add4", 1);
    #/
}

// Namespace teams/team_assignment
// Params 0, eflags: 0x0
// Checksum 0xa8b16ba, Offset: 0x190
// Size: 0x26
function get_assigned_team() {
    teamname = getassignedteamname(self);
}

// Namespace teams/team_assignment
// Params 0, eflags: 0x0
// Checksum 0x8c827066, Offset: 0x1c0
// Size: 0x36
function function_2ba5e3e6() {
    var_ac46c774 = util::gethostplayerforbots();
    if (isdefined(var_ac46c774)) {
        return var_ac46c774.team;
    }
    return "";
}

// Namespace teams/team_assignment
// Params 0, eflags: 0x2 linked
// Checksum 0x49a81580, Offset: 0x200
// Size: 0x8e
function function_582e5d7c() {
    max_players = player::function_d36b6597();
    return isbot(self) && isdefined(self.botteam) && self.botteam != "autoassign" && (max_players == 0 || getplayers(self.botteam).size < max_players);
}

// Namespace teams/team_assignment
// Params 1, eflags: 0x2 linked
// Checksum 0xc7a52bff, Offset: 0x298
// Size: 0x3c
function function_ee150fcc(team_players) {
    max_players = player::function_d36b6597();
    return max_players - player::function_1cec6cba(team_players);
}

// Namespace teams/team_assignment
// Params 1, eflags: 0x2 linked
// Checksum 0x4ccc6bfb, Offset: 0x2e0
// Size: 0x2c
function function_46edfa55(team_players) {
    return level.var_704bcca1 - player::function_1cec6cba(team_players);
}

// Namespace teams/team_assignment
// Params 1, eflags: 0x2 linked
// Checksum 0x4056be12, Offset: 0x318
// Size: 0x162
function function_efe5a681(team) {
    max_players = player::function_d36b6597();
    team_players = getplayers(team);
    if (team_players.size >= max_players && max_players != 0) {
        return false;
    }
    if (!max_players) {
        return true;
    }
    available_spots = function_ee150fcc(team_players);
    party = self getparty();
    if (party.var_a15e4438 > available_spots) {
        return false;
    }
    /#
        if (getdvarint(#"hash_2ffea48b89a9ff3f", 0) && self != getplayers()[0] && getplayers()[0].team == team && !isbot(self)) {
            return false;
        }
    #/
    return true;
}

// Namespace teams/team_assignment
// Params 1, eflags: 0x2 linked
// Checksum 0xa44d2a61, Offset: 0x488
// Size: 0x12a
function function_ccb3bc7a(teams) {
    foreach (team in teams) {
        if (self function_efe5a681(team)) {
            println("<unknown string>" + "<unknown string>" + self.name + "<unknown string>" + function_2c846a74(team) + "<unknown string>" + getplayers(team).size);
            /#
                function_d28f6fa0(team);
            #/
            return team;
        }
    }
    return #"spectator";
}

// Namespace teams/team_assignment
// Params 1, eflags: 0x2 linked
// Checksum 0x450a20c3, Offset: 0x5c0
// Size: 0x1c2
function function_b919f6aa(status) {
    foreach (team in level.teams) {
        if (status == #"game") {
            if (isdefined(level.var_75dffa9f[team]) && level.var_75dffa9f[team] != #"game") {
                continue;
            }
        } else if (isdefined(level.var_75dffa9f[team]) && level.var_75dffa9f[team] == #"game") {
            continue;
        }
        if (self function_efe5a681(team)) {
            println("<unknown string>" + "<unknown string>" + self.name + "<unknown string>" + function_2c846a74(team) + "<unknown string>" + getplayers(team).size);
            /#
                function_d28f6fa0(team);
            #/
            return team;
        }
    }
    return #"spectator";
}

// Namespace teams/team_assignment
// Params 0, eflags: 0x2 linked
// Checksum 0x8d60254, Offset: 0x790
// Size: 0xaa
function function_5c389625() {
    status = self player::function_3d288f14();
    assignment = self function_b919f6aa(status);
    if (!isdefined(assignment) || assignment == #"spectator") {
        assignment = function_959bac94();
    }
    if (!isdefined(assignment)) {
        assignment = function_ccb3bc7a(level.teams);
    }
    return assignment;
}

// Namespace teams/team_assignment
// Params 1, eflags: 0x2 linked
// Checksum 0xa83ccc84, Offset: 0x848
// Size: 0x236
function function_5d02dd86(party) {
    if (!isdefined(party)) {
        println("<unknown string>" + "<unknown string>" + self.name + "<unknown string>");
        return undefined;
    }
    if (party.var_a15e4438 <= 1) {
        println("<unknown string>" + "<unknown string>" + self.name + "<unknown string>");
        return undefined;
    }
    foreach (member in party.party_members) {
        if (self == member) {
            continue;
        }
        if (member.team != "autoassign" && member.team != #"spectator" && member.team != #"none") {
            println("<unknown string>" + "<unknown string>" + self.name + "<unknown string>" + member.team + "<unknown string>" + member.name);
            /#
                function_d28f6fa0(member.team);
            #/
            return member.team;
        }
    }
    println("<unknown string>" + "<unknown string>" + self.name + "<unknown string>");
    return undefined;
}

// Namespace teams/team_assignment
// Params 0, eflags: 0x6 linked
// Checksum 0xb4ef54b2, Offset: 0xa88
// Size: 0x1d8
function private function_650d105d() {
    teamkeys = array::randomize(getarraykeys(level.teams));
    assignment = undefined;
    playercounts = self count_players();
    if (teamplayercountsequal(playercounts)) {
        if (!level.splitscreen && self issplitscreen()) {
            assignment = self get_splitscreen_team();
            if (assignment == "") {
                assignment = function_dd2e9892(teamkeys);
            }
        } else {
            assignment = function_dd2e9892(teamkeys);
        }
        println("<unknown string>" + "<unknown string>" + self.name + "<unknown string>" + function_2c846a74(assignment));
    } else {
        assignment = function_d078493a(playercounts);
        println("<unknown string>" + "<unknown string>" + self.name + "<unknown string>" + function_2c846a74(assignment));
    }
    assert(isdefined(assignment));
    return assignment;
}

// Namespace teams/team_assignment
// Params 1, eflags: 0x2 linked
// Checksum 0xe5eb1e1f, Offset: 0xc68
// Size: 0xb8
function function_b0c92599(party) {
    /#
        var_f8896168 = getdvarint(#"hash_4cbf229ab691d987", 0);
        if (var_f8896168 && (var_f8896168 != 2 || self ishost())) {
            return false;
        }
    #/
    if (isdefined(level.var_7d3ed2bf) && level.var_7d3ed2bf && isdefined(party) && party.fill == 0) {
        return true;
    }
    return false;
}

// Namespace teams/team_assignment
// Params 1, eflags: 0x6 linked
// Checksum 0xca223d53, Offset: 0xd28
// Size: 0x1b8
function private function_868b679c(party) {
    if (level.teamcount == 0 && level.var_c58668ea && function_b0c92599(party)) {
        assignment = function_959bac94();
        println("<unknown string>" + "<unknown string>" + self.name + "<unknown string>" + function_2c846a74(assignment));
    } else if (getdvarint(#"hash_587d8e03df4f4f8a", 0)) {
        assignment = function_ccb3bc7a(level.teams);
        println("<unknown string>" + "<unknown string>" + self.name + "<unknown string>" + function_2c846a74(assignment));
    } else {
        assignment = self function_5c389625();
        println("<unknown string>" + "<unknown string>" + self.name + "<unknown string>" + function_2c846a74(assignment));
    }
    return assignment;
}

// Namespace teams/team_assignment
// Params 0, eflags: 0x2 linked
// Checksum 0x465eab09, Offset: 0xee8
// Size: 0xfa
function function_bec6e9a() {
    party = self getparty();
    assignment = function_5d02dd86(party);
    if (isdefined(assignment)) {
        println("<unknown string>" + "<unknown string>" + self.name + "<unknown string>" + function_2c846a74(assignment));
        return assignment;
    }
    max_players = player::function_d36b6597();
    if (level.multiteam && level.maxteamplayers > 0) {
        return function_868b679c();
    }
    return function_650d105d();
}

// Namespace teams/team_assignment
// Params 2, eflags: 0x2 linked
// Checksum 0x24d7501d, Offset: 0xff0
// Size: 0x12c
function function_b55ab4b3(comingfrommenu, var_4c542e39) {
    if (!comingfrommenu && var_4c542e39 === "spectator") {
        return var_4c542e39;
    }
    if (isdefined(level.var_4614c421) && [[ level.var_4614c421 ]]()) {
        return #"spectator";
    }
    clientnum = self getentitynumber();
    count = 0;
    foreach (team, _ in level.teams) {
        count++;
        if (count == clientnum + 1) {
            return team;
        }
    }
    return var_4c542e39;
}

// Namespace teams/team_assignment
// Params 3, eflags: 0x2 linked
// Checksum 0x4586c1aa, Offset: 0x1128
// Size: 0x360
function function_d22a4fbb(comingfrommenu, var_4c542e39, var_432c77c2) {
    teamname = var_4c542e39;
    if (!isdefined(teamname)) {
        teamname = #"none";
    }
    var_bdb3f6a6 = var_432c77c2;
    if (!isdefined(var_bdb3f6a6)) {
        var_bdb3f6a6 = #"none";
    }
    println("<unknown string>" + "<unknown string>" + self.name + "<unknown string>" + (comingfrommenu ? "<unknown string>" : "<unknown string>") + "<unknown string>" + (isdefined(var_4c542e39) ? function_2c846a74(var_4c542e39) : "<unknown string>"));
    if (level.teamcount > 2 && var_bdb3f6a6 !== #"none" && !comingfrommenu) {
        assignment = function_79740c0f(var_bdb3f6a6);
        println("<unknown string>" + "<unknown string>" + self.name + "<unknown string>" + var_bdb3f6a6 + "<unknown string>" + function_2c846a74(assignment));
    } else if (teamname !== #"none" && !comingfrommenu) {
        assignment = teamname;
        println("<unknown string>" + "<unknown string>" + self.name + "<unknown string>" + function_2c846a74(assignment));
    } else if (function_a3e209ba(teamname, comingfrommenu)) {
        assignment = #"spectator";
        println("<unknown string>" + "<unknown string>" + self.name + "<unknown string>");
    }
    if (!isdefined(assignment) || assignment != #"spectator" && !isdefined(level.teams[assignment])) {
        assignment = function_bec6e9a();
        assert(isdefined(assignment));
        if (function_582e5d7c()) {
            println("<unknown string>" + "<unknown string>" + self.name + "<unknown string>" + self.botteam);
            return self.botteam;
        }
    }
    return assignment;
}

// Namespace teams/team_assignment
// Params 0, eflags: 0x2 linked
// Checksum 0x3d44c3be, Offset: 0x1490
// Size: 0xcc
function teamscoresequal() {
    score = undefined;
    foreach (team, _ in level.teams) {
        if (!isdefined(score)) {
            score = getteamscore(team);
            continue;
        }
        if (score != getteamscore(team)) {
            return false;
        }
    }
    return true;
}

// Namespace teams/team_assignment
// Params 0, eflags: 0x2 linked
// Checksum 0xb29f5a28, Offset: 0x1568
// Size: 0xbe
function function_4818e9af() {
    score = 99999999;
    lowest_team = undefined;
    foreach (team, _ in level.teams) {
        if (score > getteamscore(team)) {
            lowest_team = team;
        }
    }
    return lowest_team;
}

// Namespace teams/team_assignment
// Params 1, eflags: 0x2 linked
// Checksum 0x1060024a, Offset: 0x1630
// Size: 0x72
function function_dd2e9892(teams) {
    assignment = #"allies";
    if (teamscoresequal()) {
        assignment = function_ccb3bc7a(teams);
    } else {
        assignment = function_4818e9af();
    }
    return assignment;
}

// Namespace teams/team_assignment
// Params 0, eflags: 0x2 linked
// Checksum 0xc8a77768, Offset: 0x16b0
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
    return "";
}

// Namespace teams/team_assignment
// Params 1, eflags: 0x2 linked
// Checksum 0xc2e68320, Offset: 0x1788
// Size: 0xb6
function teamplayercountsequal(playercounts) {
    count = undefined;
    foreach (team, _ in level.teams) {
        if (!isdefined(count)) {
            count = playercounts[team];
            continue;
        }
        if (count != playercounts[team]) {
            return false;
        }
    }
    return true;
}

// Namespace teams/team_assignment
// Params 1, eflags: 0x2 linked
// Checksum 0xb662c057, Offset: 0x1848
// Size: 0xbc
function function_d078493a(playercounts) {
    count = 9999;
    lowest_team = undefined;
    foreach (team, _ in level.teams) {
        if (count > playercounts[team]) {
            count = playercounts[team];
            lowest_team = team;
        }
    }
    return lowest_team;
}

// Namespace teams/team_assignment
// Params 1, eflags: 0x2 linked
// Checksum 0xeb8f63ba, Offset: 0x1910
// Size: 0x10
function function_321f8eb5(*player) {
    return true;
}

// Namespace teams/team_assignment
// Params 2, eflags: 0x2 linked
// Checksum 0xaa0c529, Offset: 0x1928
// Size: 0x106
function function_a3e209ba(teamname, comingfrommenu) {
    if (level.rankedmatch) {
        return false;
    }
    if (level.inprematchperiod) {
        return false;
    }
    if (teamname != #"none") {
        return false;
    }
    if (comingfrommenu) {
        return false;
    }
    if (self ishost()) {
        return false;
    }
    if (level.forceautoassign) {
        return false;
    }
    if (isbot(self)) {
        return false;
    }
    if (self issplitscreen()) {
        return false;
    }
    /#
        if (getdvarint(#"hash_4421e80faf4736fc", 0)) {
            return false;
        }
    #/
    if (![[ level.var_a3e209ba ]]()) {
        return false;
    }
    return true;
}

// Namespace teams/team_assignment
// Params 0, eflags: 0x2 linked
// Checksum 0x53a21c9f, Offset: 0x1a38
// Size: 0x64
function function_567994de() {
    if (!isdefined(level.teams[self.pers[#"team"]]) || level.var_c58668ea) {
        return #"none";
    }
    return self.pers[#"team"];
}

// Namespace teams/team_assignment
// Params 0, eflags: 0x2 linked
// Checksum 0xdf13e3e2, Offset: 0x1aa8
// Size: 0x192
function function_7d93567f() {
    distribution = [];
    foreach (player in level.players) {
        team = player function_567994de();
        squad = player.squad;
        if (squad == #"invalid") {
            continue;
        }
        if (!isdefined(distribution[team])) {
            distribution[team] = [];
        }
        if (!isdefined(distribution[team][squad])) {
            distribution[team][squad] = [];
        }
        if (!isdefined(distribution[team][squad])) {
            distribution[team][squad] = [];
        } else if (!isarray(distribution[team][squad])) {
            distribution[team][squad] = array(distribution[team][squad]);
        }
        distribution[team][squad][distribution[team][squad].size] = player;
    }
    return distribution;
}

// Namespace teams/team_assignment
// Params 1, eflags: 0x6 linked
// Checksum 0x6e40648b, Offset: 0x1c48
// Size: 0x266
function private function_a119c7ef(distribution) {
    var_2def7656 = [];
    foreach (team, var_e08edbde in distribution) {
        if (!isdefined(var_2def7656[team])) {
            var_2def7656[team] = [];
        }
        for (i = 1; i < level.var_704bcca1; i++) {
            var_2def7656[team][i] = [];
        }
    }
    foreach (team, var_e08edbde in distribution) {
        if (!isdefined(var_2def7656[team])) {
            var_2def7656[team] = [];
        }
        foreach (squad, var_74578e76 in var_e08edbde) {
            if (var_74578e76.size < level.var_704bcca1) {
                var_a787dfe7 = function_46edfa55(var_74578e76);
                if (var_a787dfe7 > 0) {
                    if (!isdefined(var_2def7656[team][var_a787dfe7])) {
                        var_2def7656[team][var_a787dfe7] = [];
                    } else if (!isarray(var_2def7656[team][var_a787dfe7])) {
                        var_2def7656[team][var_a787dfe7] = array(var_2def7656[team][var_a787dfe7]);
                    }
                    var_2def7656[team][var_a787dfe7][var_2def7656[team][var_a787dfe7].size] = squad;
                }
            }
        }
    }
    return var_2def7656;
}

// Namespace teams/team_assignment
// Params 4, eflags: 0x2 linked
// Checksum 0x3dedc6b5, Offset: 0x1eb8
// Size: 0x15a
function function_569914e8(var_e439f5d6, var_a9ab69de, *var_d9438b7, var_f36ce5dd) {
    foreach (var_a787dfe7, var_2a80e9e0 in var_f36ce5dd) {
        if (level.var_704bcca1 - var_a787dfe7 > var_d9438b7) {
            continue;
        }
        if (var_2a80e9e0.size == 0) {
            continue;
        }
        foreach (squad in var_2a80e9e0) {
            if (squad == #"none") {
                continue;
            }
            if (squad == var_a9ab69de) {
                continue;
            }
            return squad;
        }
    }
    return undefined;
}

// Namespace teams/team_assignment
// Params 1, eflags: 0x6 linked
// Checksum 0xca716d61, Offset: 0x2020
// Size: 0xf2
function private function_5e84fc28(var_68253610) {
    team = #"none";
    var_d549939e = function_c65231e2(var_68253610);
    foreach (player in var_d549939e) {
        team = player.pers[#"team"];
        if (isdefined(level.teams[team])) {
            return team;
        }
    }
    return #"none";
}

// Namespace teams/team_assignment
// Params 2, eflags: 0x6 linked
// Checksum 0x58f4a3ce, Offset: 0x2120
// Size: 0xf6
function private function_8c162ba0(var_8de04fca, var_68253610) {
    new_team = function_5e84fc28(var_68253610);
    players = function_c65231e2(var_8de04fca);
    foreach (player in players) {
        player function_dc7eaabd(new_team);
        player squads::function_ff3321ee(var_68253610);
    }
    return players.size;
}

// Namespace teams/team_assignment
// Params 0, eflags: 0x2 linked
// Checksum 0xa7e30cc0, Offset: 0x2220
// Size: 0x574
function function_344e464d() {
    if (getdvarint(#"hash_761d80face4c4459", 1)) {
        return;
    }
    customgame = gamemodeismode(1) || gamemodeismode(7);
    if (customgame) {
        return;
    }
    distribution = function_7d93567f();
    var_f36ce5dd = function_a119c7ef(distribution);
    /#
        if (level.var_ba13fb7a) {
            println("<unknown string>" + "<unknown string>");
            function_a9bfa6d6();
            println("<unknown string>" + "<unknown string>");
        }
    #/
    foreach (team, var_e08edbde in var_f36ce5dd) {
        println("<unknown string>" + team);
        foreach (var_a787dfe7, var_2a80e9e0 in var_e08edbde) {
            foreach (index, squad in var_2a80e9e0) {
                if (squad == #"none") {
                    continue;
                }
                for (current_count = level.var_704bcca1 - var_a787dfe7; current_count < level.var_704bcca1; current_count += function_8c162ba0(var_d28e4159, squad)) {
                    var_d28e4159 = function_569914e8(squad, level.var_704bcca1 - current_count, distribution[squad], var_f36ce5dd[team]);
                    if (!isdefined(var_d28e4159)) {
                        break;
                    }
                    var_74578e76 = function_c65231e2(squad);
                    var_fd72a4f = function_c65231e2(var_d28e4159);
                    assert(function_c65231e2(squad).size + function_c65231e2(var_d28e4159).size <= level.var_704bcca1);
                    println("<unknown string>" + var_f36ce5dd[team].size);
                    foreach (var_1e066fba in var_f36ce5dd[team]) {
                        println("<unknown string>" + var_1e066fba.size);
                        foreach (remove_index, var_16ba986d in var_1e066fba) {
                            if (var_16ba986d == var_d28e4159) {
                                var_1e066fba[remove_index] = #"none";
                            }
                        }
                    }
                }
                var_2a80e9e0[index] = #"none";
            }
        }
    }
    /#
        if (level.var_ba13fb7a) {
            println("<unknown string>" + "<unknown string>");
            function_a9bfa6d6();
        }
    #/
}

/#

    // Namespace teams/team_assignment
    // Params 0, eflags: 0x4
    // Checksum 0x6246a042, Offset: 0x27a0
    // Size: 0xa0
    function private function_a9bfa6d6() {
        if (level.var_ba13fb7a) {
            foreach (team in level.teams) {
                self thread function_6c66cc64(team);
            }
        }
    }

#/

// Namespace teams/team_assignment
// Params 1, eflags: 0x0
// Checksum 0x30f15855, Offset: 0x2848
// Size: 0x5a
function function_2c846a74(team) {
    /#
        team_str = string(team);
        if (isdefined(level.teams[team])) {
            team_str = level.teams[team];
        }
        return team_str;
    #/
}

/#

    // Namespace teams/team_assignment
    // Params 1, eflags: 0x4
    // Checksum 0xc9362e14, Offset: 0x28b0
    // Size: 0x2b0
    function private function_6c66cc64(team) {
        players = getplayers(team);
        if (players.size == 0) {
            return;
        }
        team_str = function_2c846a74(team);
        voip = "<unknown string>";
        if (isdefined(level.var_75dffa9f[team])) {
            voip += level.var_75dffa9f[team] == #"game" ? "<unknown string>" : "<unknown string>";
        } else {
            voip += "<unknown string>";
        }
        println("<unknown string>" + "<unknown string>" + team_str + "<unknown string>" + voip);
        foreach (player in players) {
            squad = player.squad;
            var_bdb3f6a6 = undefined;
            if (squad == #"invalid") {
                var_bdb3f6a6 = "<unknown string>";
            } else if (squad == #"none") {
                var_bdb3f6a6 = "<unknown string>";
            } else if (isdefined(level.squads[squad])) {
                var_bdb3f6a6 = level.squads[squad].name;
            }
            party = player getparty();
            println("<unknown string>" + "<unknown string>" + player.name + "<unknown string>" + var_bdb3f6a6 + "<unknown string>" + (party.fill ? "<unknown string>" : "<unknown string>") + "<unknown string>" + party.var_a15e4438);
        }
    }

    // Namespace teams/team_assignment
    // Params 0, eflags: 0x0
    // Checksum 0xad235017, Offset: 0x2b68
    // Size: 0x43c
    function function_58b6d2c9() {
        if (level.multiteam && level.maxteamplayers > 0) {
            max_players = player::function_d36b6597();
            players = getplayers();
            foreach (team in level.teams) {
                var_dcbb8617 = getplayers(team);
                if (var_dcbb8617.size > max_players) {
                    var_f554d31e = "<unknown string>";
                    foreach (player in var_dcbb8617) {
                        party = player getparty();
                        var_f554d31e = var_f554d31e + player.name + "<unknown string>" + party.party_id + "<unknown string>";
                    }
                    assertmsg("<unknown string>" + self.name + "<unknown string>" + (ishash(team) ? function_9e72a96(team) : team) + "<unknown string>" + var_dcbb8617.size + "<unknown string>" + level.maxteamplayers + "<unknown string>" + var_f554d31e);
                }
            }
            if (!level.custommatch) {
                foreach (player in players) {
                    if (player.team == #"spectator") {
                        continue;
                    }
                    party = player getparty();
                    foreach (party_member in party.party_members) {
                        if (party_member.team == #"spectator") {
                            continue;
                        }
                        if (party_member.team != player.team) {
                            assertmsg("<unknown string>" + player.name + "<unknown string>" + function_9e72a96(player.team) + "<unknown string>" + party_member.name + "<unknown string>" + function_9e72a96(party_member.team) + "<unknown string>");
                        }
                    }
                }
            }
        }
    }

    // Namespace teams/team_assignment
    // Params 0, eflags: 0x0
    // Checksum 0x57f4ac6f, Offset: 0x2fb0
    // Size: 0x14c
    function function_1aa0418f() {
        while (true) {
            wait(3);
            players = getplayers();
            if (players.size > 0 && players[0] isstreamerready()) {
                setdvar(#"devgui_bot", "<unknown string>");
                wait(3);
                function_344e464d();
                wait(1);
                bots = get_bots();
                foreach (bot in bots) {
                    level thread bot::remove_bot(bot);
                }
            }
        }
    }

    // Namespace teams/team_assignment
    // Params 0, eflags: 0x0
    // Checksum 0xd990e5aa, Offset: 0x3108
    // Size: 0xcc
    function get_bots() {
        players = getplayers();
        bots = [];
        foreach (player in players) {
            if (isbot(player)) {
                bots[bots.size] = player;
            }
        }
        return bots;
    }

#/
