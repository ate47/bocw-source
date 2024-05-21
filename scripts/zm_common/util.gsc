// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\trigger_shared.gsc;
#using scripts\core_common\sound_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\fx_shared.gsc;
#using scripts\core_common\exploder_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace util;

// Namespace util/util
// Params 0, eflags: 0x0
// Checksum 0x96a5db33, Offset: 0x130
// Size: 0x114
function brush_delete() {
    num = self.v[#"exploder"];
    if (isdefined(self.v[#"delay"])) {
        wait(self.v[#"delay"]);
    } else {
        wait(0.05);
    }
    if (!isdefined(self.model)) {
        return;
    }
    assert(isdefined(self.model));
    if (!isdefined(self.v[#"fxid"]) || self.v[#"fxid"] == "No FX") {
        self.v[#"exploder"] = undefined;
    }
    waittillframeend();
    self.model delete();
}

// Namespace util/util
// Params 0, eflags: 0x0
// Checksum 0xc3c85b82, Offset: 0x250
// Size: 0x8c
function brush_show() {
    if (isdefined(self.v[#"delay"])) {
        wait(self.v[#"delay"]);
    }
    assert(isdefined(self.model));
    self.model show();
    self.model solid();
}

// Namespace util/util
// Params 0, eflags: 0x0
// Checksum 0x83c80480, Offset: 0x2e8
// Size: 0x21c
function brush_throw() {
    if (isdefined(self.v[#"delay"])) {
        wait(self.v[#"delay"]);
    }
    ent = undefined;
    if (isdefined(self.v[#"target"])) {
        ent = getent(self.v[#"target"], "targetname");
    }
    if (!isdefined(ent)) {
        self.model delete();
        return;
    }
    self.model show();
    startorg = self.v[#"origin"];
    startang = self.v[#"angles"];
    org = ent.origin;
    temp_vec = org - self.v[#"origin"];
    x = temp_vec[0];
    y = temp_vec[1];
    z = temp_vec[2];
    self.model rotatevelocity((x, y, z), 12);
    self.model movegravity((x, y, z), 12);
    self.v[#"exploder"] = undefined;
    wait(6);
    self.model delete();
}

// Namespace util/util
// Params 2, eflags: 0x0
// Checksum 0x5cf8f77a, Offset: 0x510
// Size: 0x174
function playsoundonplayers(sound, team) {
    assert(isdefined(level.players));
    if (level.splitscreen) {
        if (isdefined(level.players[0])) {
            level.players[0] playlocalsound(sound);
        }
        return;
    }
    if (isdefined(team)) {
        for (i = 0; i < level.players.size; i++) {
            player = level.players[i];
            if (isdefined(player.pers[#"team"]) && player.pers[#"team"] == team) {
                player playlocalsound(sound);
            }
        }
        return;
    }
    for (i = 0; i < level.players.size; i++) {
        level.players[i] playlocalsound(sound);
    }
}

// Namespace util/util
// Params 0, eflags: 0x0
// Checksum 0x6185211, Offset: 0x690
// Size: 0xa
function get_player_height() {
    return 70;
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0xd6759802, Offset: 0x6a8
// Size: 0x3e
function isbulletimpactmod(smeansofdeath) {
    return issubstr(smeansofdeath, "BULLET") || smeansofdeath == "MOD_HEAD_SHOT";
}

// Namespace util/util
// Params 0, eflags: 0x0
// Checksum 0x48d2bd5e, Offset: 0x6f0
// Size: 0x4e
function waitrespawnbutton() {
    self endon(#"disconnect", #"end_respawn");
    while (self usebuttonpressed() != 1) {
        waitframe(1);
    }
}

// Namespace util/util
// Params 2, eflags: 0x0
// Checksum 0xdcb43616, Offset: 0x748
// Size: 0xd4
function printonteam(text, team) {
    assert(isdefined(level.players));
    for (i = 0; i < level.players.size; i++) {
        player = level.players[i];
        if (isdefined(player.pers[#"team"]) && player.pers[#"team"] == team) {
            player iprintln(text);
        }
    }
}

// Namespace util/util
// Params 2, eflags: 0x0
// Checksum 0x3b3e8954, Offset: 0x828
// Size: 0xd4
function printboldonteam(text, team) {
    assert(isdefined(level.players));
    for (i = 0; i < level.players.size; i++) {
        player = level.players[i];
        if (isdefined(player.pers[#"team"]) && player.pers[#"team"] == team) {
            player iprintlnbold(text);
        }
    }
}

// Namespace util/util
// Params 3, eflags: 0x0
// Checksum 0x45617a5e, Offset: 0x908
// Size: 0xdc
function printboldonteamarg(text, team, arg) {
    assert(isdefined(level.players));
    for (i = 0; i < level.players.size; i++) {
        player = level.players[i];
        if (isdefined(player.pers[#"team"]) && player.pers[#"team"] == team) {
            player iprintlnbold(text, arg);
        }
    }
}

// Namespace util/util
// Params 3, eflags: 0x0
// Checksum 0x38d48aca, Offset: 0x9f0
// Size: 0x1c
function printonteamarg(*text, *team, *arg) {
    
}

// Namespace util/util
// Params 2, eflags: 0x0
// Checksum 0xc9973601, Offset: 0xa18
// Size: 0xd4
function printonplayers(text, team) {
    players = level.players;
    for (i = 0; i < players.size; i++) {
        if (isdefined(team)) {
            if (isdefined(players[i].pers[#"team"]) && players[i].pers[#"team"] == team) {
                players[i] iprintln(text);
            }
            continue;
        }
        players[i] iprintln(text);
    }
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0x147e29b2, Offset: 0xaf8
// Size: 0x4c
function _playlocalsound(soundalias) {
    if (level.splitscreen && !self ishost()) {
        return;
    }
    self playlocalsound(soundalias);
}

// Namespace util/util
// Params 1, eflags: 0x2 linked
// Checksum 0xedf78258, Offset: 0xb50
// Size: 0x8c
function getotherteam(team) {
    if (team == #"allies") {
        return #"axis";
    } else if (team == #"axis") {
        return #"allies";
    } else {
        return #"allies";
    }
    assertmsg("<unknown string>" + team);
}

// Namespace util/util
// Params 1, eflags: 0x2 linked
// Checksum 0x762d557f, Offset: 0xbe8
// Size: 0x74
function getteammask(team) {
    if (!level.teambased || !isdefined(team) || !isdefined(level.spawnsystem.ispawn_teammask[team])) {
        return level.spawnsystem.ispawn_teammask_free;
    }
    return level.spawnsystem.ispawn_teammask[team];
}

// Namespace util/util
// Params 1, eflags: 0x2 linked
// Checksum 0x4acdab37, Offset: 0xc68
// Size: 0xb8
function getotherteamsmask(skip_team) {
    mask = 0;
    foreach (team, _ in level.teams) {
        if (team == skip_team) {
            continue;
        }
        mask |= getteammask(team);
    }
    return mask;
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0x87ac1a9b, Offset: 0xd28
// Size: 0x5c
function getfx(fx) {
    assert(isdefined(level._effect[fx]), "<unknown string>" + fx + "<unknown string>");
    return level._effect[fx];
}

// Namespace util/util
// Params 2, eflags: 0x0
// Checksum 0x167584e9, Offset: 0xd90
// Size: 0x38
function isstrstart(string1, substr) {
    return getsubstr(string1, 0, substr.size) == substr;
}

// Namespace util/util
// Params 0, eflags: 0x0
// Checksum 0x47f0faa9, Offset: 0xdd0
// Size: 0x20
function iskillstreaksenabled() {
    return isdefined(level.killstreaksenabled) && level.killstreaksenabled;
}

// Namespace util/util
// Params 0, eflags: 0x0
// Checksum 0x48557cc6, Offset: 0xdf8
// Size: 0x32
function getremotename() {
    assert(self isusingremote());
    return self.usingremote;
}

// Namespace util/util
// Params 2, eflags: 0x0
// Checksum 0x5baae6dd, Offset: 0xe38
// Size: 0x38
function setobjectivetext(team, text) {
    game.strings["objective_" + level.teams[team]] = text;
}

// Namespace util/util
// Params 2, eflags: 0x0
// Checksum 0xe8be46, Offset: 0xe78
// Size: 0x38
function setobjectivescoretext(team, text) {
    game.strings["objective_score_" + level.teams[team]] = text;
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0xa07d565a, Offset: 0xeb8
// Size: 0x2c
function getobjectivetext(team) {
    return game.strings["objective_" + level.teams[team]];
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0x824c4676, Offset: 0xef0
// Size: 0x2c
function getobjectivescoretext(team) {
    return game.strings["objective_score_" + level.teams[team]];
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0x80aabc0b, Offset: 0xf28
// Size: 0x2c
function getobjectivehinttext(team) {
    return game.strings["objective_hint_" + level.teams[team]];
}

// Namespace util/util
// Params 2, eflags: 0x0
// Checksum 0x1396ae10, Offset: 0xf60
// Size: 0x74
function registerroundswitch(minvalue, maxvalue) {
    level.roundswitch = math::clamp(getgametypesetting(#"roundswitch"), minvalue, maxvalue);
    level.roundswitchmin = minvalue;
    level.roundswitchmax = maxvalue;
}

// Namespace util/util
// Params 2, eflags: 0x2 linked
// Checksum 0xb264b2f7, Offset: 0xfe0
// Size: 0x74
function registerroundlimit(minvalue, maxvalue) {
    level.roundlimit = math::clamp(getgametypesetting(#"roundlimit"), minvalue, maxvalue);
    level.roundlimitmin = minvalue;
    level.roundlimitmax = maxvalue;
}

// Namespace util/util
// Params 2, eflags: 0x2 linked
// Checksum 0xc27baa81, Offset: 0x1060
// Size: 0x74
function registerroundwinlimit(minvalue, maxvalue) {
    level.roundwinlimit = math::clamp(getgametypesetting(#"roundwinlimit"), minvalue, maxvalue);
    level.roundwinlimitmin = minvalue;
    level.roundwinlimitmax = maxvalue;
}

// Namespace util/util
// Params 2, eflags: 0x2 linked
// Checksum 0xe8290cb0, Offset: 0x10e0
// Size: 0x74
function registerscorelimit(minvalue, maxvalue) {
    level.scorelimit = math::clamp(getgametypesetting(#"scorelimit"), minvalue, maxvalue);
    level.scorelimitmin = minvalue;
    level.scorelimitmax = maxvalue;
}

// Namespace util/util
// Params 2, eflags: 0x2 linked
// Checksum 0x7487c9fd, Offset: 0x1160
// Size: 0x74
function registertimelimit(minvalue, maxvalue) {
    level.timelimit = math::clamp(getgametypesetting(#"timelimit"), minvalue, maxvalue);
    level.timelimitmin = minvalue;
    level.timelimitmax = maxvalue;
}

// Namespace util/util
// Params 2, eflags: 0x2 linked
// Checksum 0x46edbfb2, Offset: 0x11e0
// Size: 0x74
function registernumlives(minvalue, maxvalue) {
    level.numlives = math::clamp(getgametypesetting(#"playernumlives"), minvalue, maxvalue);
    level.numlivesmin = minvalue;
    level.numlivesmax = maxvalue;
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0x3dd4bf3b, Offset: 0x1260
// Size: 0x80
function getplayerfromclientnum(clientnum) {
    if (clientnum < 0) {
        return undefined;
    }
    for (i = 0; i < level.players.size; i++) {
        if (level.players[i] getentitynumber() == clientnum) {
            return level.players[i];
        }
    }
    return undefined;
}

// Namespace util/util
// Params 0, eflags: 0x0
// Checksum 0x51b67b14, Offset: 0x12e8
// Size: 0x52
function ispressbuild() {
    buildtype = getdvarstring(#"buildtype");
    if (isdefined(buildtype) && buildtype == "press") {
        return true;
    }
    return false;
}

// Namespace util/util
// Params 0, eflags: 0x0
// Checksum 0xec5b50a2, Offset: 0x1348
// Size: 0x1e
function isflashbanged() {
    return isdefined(self.flashendtime) && gettime() < self.flashendtime;
}

// Namespace util/util
// Params 5, eflags: 0x0
// Checksum 0xafdb87e6, Offset: 0x1370
// Size: 0xb4
function domaxdamage(origin, attacker, inflictor, headshot, mod) {
    if (isdefined(self.damagedtodeath) && self.damagedtodeath) {
        return;
    }
    if (isdefined(self.maxhealth)) {
        damage = self.maxhealth + 1;
    } else {
        damage = self.health + 1;
    }
    self.damagedtodeath = 1;
    self dodamage(damage, origin, attacker, inflictor, headshot, mod);
}

// Namespace util/util
// Params 5, eflags: 0x0
// Checksum 0xf39d52b1, Offset: 0x1430
// Size: 0x294
function get_array_of_closest(org, array, excluders = [], max = array.size, maxdist) {
    maxdists2rd = undefined;
    if (isdefined(maxdist)) {
        maxdists2rd = maxdist * maxdist;
    }
    dist = [];
    index = [];
    for (i = 0; i < array.size; i++) {
        if (!isdefined(array[i])) {
            continue;
        }
        if (isinarray(excluders, array[i])) {
            continue;
        }
        if (isvec(array[i])) {
            length = distancesquared(org, array[i]);
        } else {
            length = distancesquared(org, array[i].origin);
        }
        if (isdefined(maxdists2rd) && maxdists2rd < length) {
            continue;
        }
        dist[dist.size] = length;
        index[index.size] = i;
    }
    for (;;) {
        change = 0;
        for (i = 0; i < dist.size - 1; i++) {
            if (dist[i] <= dist[i + 1]) {
                continue;
            }
            change = 1;
            temp = dist[i];
            dist[i] = dist[i + 1];
            dist[i + 1] = temp;
            temp = index[i];
            index[i] = index[i + 1];
            index[i + 1] = temp;
        }
        if (!change) {
            break;
        }
    }
    newarray = [];
    if (max > dist.size) {
        max = dist.size;
    }
    for (i = 0; i < max; i++) {
        newarray[i] = array[index[i]];
    }
    return newarray;
}

