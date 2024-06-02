// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\player\player_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace squads;

// Namespace squads/squads
// Params 0, eflags: 0x5
// Checksum 0x8d809be4, Offset: 0xa8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"squads", &__init__, undefined, undefined, undefined);
}

// Namespace squads/squads
// Params 0, eflags: 0x2 linked
// Checksum 0xa32a4cb2, Offset: 0xf0
// Size: 0x15c
function __init__() {
    if (currentsessionmode() != 4) {
        level.var_c58668ea = getgametypesetting(#"hash_5462586bdce0346e");
        level.var_3312552 = getgametypesetting(#"hash_7cc354dd83013a47");
    }
    level.var_704bcca1 = getgametypesetting(#"hash_3a4691a853585241");
    level.squad = {#count:function_bb1ab64b()};
    level.squads = [];
    for (squad_index = 1; squad_index <= level.squad.count; squad_index++) {
        var_bdb3f6a6 = "squad_" + squad_index;
        level.squads[hash("squad_" + squad_index)] = {#name:var_bdb3f6a6};
    }
}

// Namespace squads/squads
// Params 0, eflags: 0x2 linked
// Checksum 0xa41184de, Offset: 0x258
// Size: 0x2e
function function_a9758423() {
    return level.squad.count > 0 && level.var_c58668ea === 1;
}

// Namespace squads/squads
// Params 0, eflags: 0x6 linked
// Checksum 0x39007603, Offset: 0x290
// Size: 0x22
function private function_bb1ab64b() {
    return getdvarint(#"com_maxclients", 0);
}

// Namespace squads/squads
// Params 0, eflags: 0x2 linked
// Checksum 0x70ae8fc8, Offset: 0x2c0
// Size: 0xa2
function function_43a7bead() {
    foreach (squad, _ in level.squads) {
        if (self function_59396fe8(squad)) {
            return squad;
        }
    }
    return #"none";
}

// Namespace squads/squads
// Params 1, eflags: 0x2 linked
// Checksum 0x5fb9c6b4, Offset: 0x370
// Size: 0x42
function function_59396fe8(squad) {
    var_74578e76 = function_c65231e2(squad);
    if (var_74578e76.size > 0) {
        return false;
    }
    return true;
}

// Namespace squads/squads
// Params 1, eflags: 0x2 linked
// Checksum 0x142954bf, Offset: 0x3c0
// Size: 0xe2
function function_fc04a299(party) {
    foreach (member in party.party_members) {
        if (self == member) {
            continue;
        }
        if (member.squad != #"none" && member.squad != #"invalid") {
            return member.squad;
        }
    }
    return #"none";
}

// Namespace squads/squads
// Params 1, eflags: 0x2 linked
// Checksum 0x82d949d7, Offset: 0x4b0
// Size: 0xfa
function function_c98289a5(team) {
    teammates = getplayers(team);
    foreach (player in teammates) {
        if (self == player) {
            continue;
        }
        if (player.squad != #"none" && player.squad != #"invalid") {
            return player.squad;
        }
    }
    return #"none";
}

// Namespace squads/squads
// Params 0, eflags: 0x2 linked
// Checksum 0x6da60419, Offset: 0x5b8
// Size: 0xaa
function function_faeb0876() {
    status = self player::function_3d288f14();
    squad = self function_33843308(status);
    if (squad == #"none") {
        squad = function_43a7bead();
    }
    if (squad == #"none") {
        squad = function_4f237b02();
    }
    return squad;
}

// Namespace squads/squads
// Params 1, eflags: 0x2 linked
// Checksum 0xd8e749e7, Offset: 0x670
// Size: 0x2c
function function_46edfa55(var_74578e76) {
    return level.var_704bcca1 - player::function_1cec6cba(var_74578e76);
}

// Namespace squads/squads
// Params 1, eflags: 0x2 linked
// Checksum 0xaaa0958d, Offset: 0x6a8
// Size: 0xce
function function_a65e2082(squad) {
    var_74578e76 = function_c65231e2(squad);
    if (var_74578e76.size >= level.var_704bcca1) {
        return false;
    }
    if (var_74578e76.size > 0) {
        if (var_74578e76[0].team != self.team) {
            return false;
        }
    }
    available_spots = function_46edfa55(var_74578e76);
    party = self getparty();
    if (party.var_a15e4438 > available_spots) {
        return false;
    }
    return true;
}

// Namespace squads/squads
// Params 0, eflags: 0x2 linked
// Checksum 0x522dfeaa, Offset: 0x780
// Size: 0xa2
function function_4f237b02() {
    foreach (squad, _ in level.squads) {
        if (self function_a65e2082(squad)) {
            return squad;
        }
    }
    return #"none";
}

// Namespace squads/squads
// Params 1, eflags: 0x2 linked
// Checksum 0x220339f5, Offset: 0x830
// Size: 0x12a
function function_33843308(status) {
    foreach (var_bdb3f6a6, squad in level.squads) {
        if (status == #"game") {
            if (isdefined(squad.voip) && squad.voip != #"game") {
                continue;
            }
        } else if (isdefined(squad.voip) && squad.voip == #"game") {
            continue;
        }
        if (self function_a65e2082(var_bdb3f6a6)) {
            return var_bdb3f6a6;
        }
    }
    return #"none";
}

// Namespace squads/squads
// Params 1, eflags: 0x2 linked
// Checksum 0x30d36db1, Offset: 0x968
// Size: 0x50
function function_b0c92599(party) {
    if (isdefined(level.var_7d3ed2bf) && level.var_7d3ed2bf && isdefined(party) && party.fill == 0) {
        return true;
    }
    return false;
}

// Namespace squads/squads
// Params 0, eflags: 0x6 linked
// Checksum 0x5ef91019, Offset: 0x9c0
// Size: 0x62
function private function_f65acad1() {
    if (getdvarint(#"hash_587d8e03df4f4f8a", 0)) {
        squad = function_4f237b02();
    } else {
        squad = self function_faeb0876();
    }
    return squad;
}

// Namespace squads/squads
// Params 1, eflags: 0x6 linked
// Checksum 0xf9593153, Offset: 0xa30
// Size: 0x6a
function private function_49c2a7d1(party) {
    if (level.var_c58668ea && function_b0c92599(party)) {
        squad = function_43a7bead();
    } else {
        squad = function_f65acad1();
    }
    return squad;
}

// Namespace squads/squads
// Params 0, eflags: 0x2 linked
// Checksum 0xabdb0b2, Offset: 0xaa8
// Size: 0xea
function function_4c9d66b1() {
    var_432c77c2 = function_785ee514(self);
    /#
        var_d1f1fdbf = getdvarstring(#"hash_1c90c9250b52435a", "<unknown string>");
        var_8ec96d19 = strtok(var_d1f1fdbf, "<unknown string>");
        if (var_8ec96d19.size > 0) {
            playersquad = var_8ec96d19[self getentitynumber()];
            if (isdefined(playersquad) && isdefined(level.squads[playersquad])) {
                var_432c77c2 = hash(playersquad);
            }
        }
    #/
    return var_432c77c2;
}

// Namespace squads/squads
// Params 1, eflags: 0x2 linked
// Checksum 0xf6d9bad4, Offset: 0xba0
// Size: 0x274
function function_c70b26ea(squad = self function_4c9d66b1()) {
    if (squad == #"none") {
        println("<unknown string>");
        if (level.var_c58668ea) {
            squad = function_c98289a5(self.team);
            if (squad == #"none") {
                squad = function_4f237b02();
            }
        } else {
            squad = #"none";
            party = self getparty();
            if (isdefined(party) && party.var_a15e4438 > 1) {
                squad = function_fc04a299(party);
                if (squad == #"none") {
                    squad = function_49c2a7d1();
                }
            }
            if (!isdefined(squad) || squad == #"none") {
                if (level.var_3312552) {
                    squad = function_f65acad1();
                }
            }
        }
    }
    /#
        var_d1f1fdbf = getdvarstring(#"hash_1c90c9250b52435a", "<unknown string>");
        var_8ec96d19 = strtok(var_d1f1fdbf, "<unknown string>");
        if (var_8ec96d19.size > 0) {
            playersquad = var_8ec96d19[self getentitynumber()];
            if (isdefined(playersquad) && isdefined(level.squads[playersquad])) {
                squad = hash(playersquad);
            }
        }
    #/
    self function_ff3321ee(squad);
}

// Namespace squads/squads
// Params 1, eflags: 0x2 linked
// Checksum 0xa043718c, Offset: 0xe20
// Size: 0x19a
function function_ff3321ee(var_bdb3f6a6) {
    self.pers[#"squad"] = var_bdb3f6a6;
    self.squad = var_bdb3f6a6;
    self.pers[#"teammateindex"] = 0;
    self.teammateindex = 0;
    self function_a4c9eb05();
    /#
        xuid = self getxuid();
        println("<unknown string>" + xuid + "<unknown string>" + int(var_bdb3f6a6));
    #/
    if (isdefined(level.squads[var_bdb3f6a6])) {
        squad = level.squads[var_bdb3f6a6];
        status = self player::function_3d288f14();
        if (!isdefined(squad.voip) || status != squad.voip && status == #"game") {
            if (status == #"game") {
                squad.voip = #"game";
                return;
            }
            squad.voip = #"none";
        }
    }
}

// Namespace squads/squads
// Params 2, eflags: 0x6 linked
// Checksum 0xe2298718, Offset: 0xfc8
// Size: 0x9c
function private function_e249c6ae(squadmates, index) {
    foreach (player in squadmates) {
        if (player.teammateindex == index) {
            return true;
        }
    }
    return false;
}

// Namespace squads/squads
// Params 2, eflags: 0x6 linked
// Checksum 0x43905dbf, Offset: 0x1070
// Size: 0x4a
function private function_114b9455(squadmates, start_index) {
    for (var_cd210c3e = start_index; function_e249c6ae(squadmates, var_cd210c3e); var_cd210c3e++) {
    }
    return var_cd210c3e;
}

// Namespace squads/squads
// Params 2, eflags: 0x6 linked
// Checksum 0xfe8a5cf3, Offset: 0x10c8
// Size: 0xfa
function private function_80d5f55(squadmates, party) {
    last_index = 1;
    foreach (party_member in party.party_members) {
        if (party_member.teammateindex > 0) {
            last_index = party_member.teammateindex;
        } else {
            last_index = function_114b9455(squadmates, last_index);
        }
        if (self == party_member) {
            return last_index;
        }
    }
    return function_114b9455(squadmates, 1);
}

// Namespace squads/squads
// Params 0, eflags: 0x2 linked
// Checksum 0xeec4c22e, Offset: 0x11d0
// Size: 0xbc
function function_a4c9eb05() {
    if (self.squad != #"invalid") {
        squadmates = function_c65231e2(self.squad);
    } else {
        squadmates = getplayers(self.team);
    }
    self.teammateindex = self function_80d5f55(squadmates, self getparty());
    self.pers[#"teammateindex"] = self.teammateindex;
}

