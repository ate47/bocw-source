// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\collectibles.gsc;
#using script_1478fbd17fe393cf;
#using script_5513c8efed5ff300;
#using script_35ae72be7b4fec10;
#using script_4ae261b2785dda9f;
#using script_32399001bdb550da;
#using script_7d0013bbc05623b9;
#using script_6df46b7b233fa3c;
#using scripts\cp_common\dialogue.gsc;
#using scripts\cp_common\oed.gsc;
#using scripts\cp_common\gametypes\globallogic_ui.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\string_shared.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\serverfield_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using script_1cf46b33555422b7;
#using script_4607f5d47c16102b;
#using script_5961deb533dad533;
#using script_633abfc63faf8efc;

#namespace util;

// Namespace util/util
// Params 0, eflags: 0x5
// Checksum 0x2f9745da, Offset: 0x630
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_3b7610eda5a02b79", &preinit, undefined, undefined, undefined);
}

// Namespace util/util
// Params 0, eflags: 0x6 linked
// Checksum 0x3e5fb5ac, Offset: 0x678
// Size: 0x12c
function private preinit() {
    if (!isdefined(level.var_54ce800f)) {
        level.var_54ce800f = [];
    }
    function_3969639b(&cp_hint_text::register, "cp_hint_text");
    lui::add_luimenu("pip_menu", &pip_menu::register);
    clientfield::register("toplayer", "cinematicmotion_blend", 1, 1, "int");
    serverfield::register("cinematicmotion_blend", 1, 1, "int", &function_e6d37e3b);
    animation::add_notetrack_func("dialog_gender_vo", &function_b7367cc0);
    animation::add_notetrack_func("dialog_faction_vo", &function_244408f7);
}

// Namespace util/util
// Params 2, eflags: 0x6 linked
// Checksum 0xcd1e12e6, Offset: 0x7b0
// Size: 0x58
function private function_e6d37e3b(*oldval, *newval) {
    player = getplayers()[0];
    if (isdefined(player)) {
        player notify(#"hash_301c38546c8e722d");
    }
}

// Namespace util/util
// Params 1, eflags: 0x2 linked
// Checksum 0x5dcc201b, Offset: 0x810
// Size: 0x4c
function function_5f1df718(var_474d98c7) {
    assert(isplayer(self));
    self thread function_3ca27921(var_474d98c7);
}

// Namespace util/util
// Params 1, eflags: 0x6 linked
// Checksum 0xf2521eb7, Offset: 0x868
// Size: 0x132
function private function_3ca27921(var_474d98c7) {
    self endon(#"death");
    if (var_474d98c7 === self function_43ee4470()) {
        return;
    }
    self notify("247bcf35d68b6074");
    self endon("247bcf35d68b6074");
    if (self clientfield::get_to_player("cinematicmotion_blend") != 1) {
        self clientfield::set_to_player("cinematicmotion_blend", 1);
        self waittill(#"hash_301c38546c8e722d");
    }
    self function_6ea199e(var_474d98c7);
    if (self clientfield::get_to_player("cinematicmotion_blend") != 0) {
        self clientfield::set_to_player("cinematicmotion_blend", 0);
        self waittill(#"hash_301c38546c8e722d");
    }
}

// Namespace util/util
// Params 1, eflags: 0x6 linked
// Checksum 0x3074baa2, Offset: 0x9a8
// Size: 0x176
function private function_6ea199e(var_474d98c7) {
    assert(isplayer(self));
    if (!isdefined(self.var_758eae6)) {
        self.var_758eae6 = {};
    }
    if (!isdefined(self.var_758eae6.previous) && !isdefined(self.var_758eae6.current)) {
        self.var_758eae6.previous = self function_43ee4470();
    }
    if (isdefined(var_474d98c7)) {
        self setcinematicmotionoverride(var_474d98c7);
    } else if (isdefined(self.var_758eae6.previous)) {
        if (isdefined(self.var_758eae6.current) && self.var_758eae6.current == self function_43ee4470()) {
            self setcinematicmotionoverride(self.var_758eae6.previous);
        }
        self.var_758eae6.previous = undefined;
    } else {
        self clearcinematicmotionoverride();
    }
    self.var_758eae6.current = var_474d98c7;
}

// Namespace util/util
// Params 1, eflags: 0x2 linked
// Checksum 0x14f4a8b2, Offset: 0xb28
// Size: 0x1c
function function_d1397ecd(str_id) {
    return level.var_54ce800f[str_id];
}

// Namespace util/util
// Params 2, eflags: 0x2 linked
// Checksum 0x54fde183, Offset: 0xb50
// Size: 0x2c
function function_3969639b(func, str_id) {
    level.var_54ce800f[str_id] = [[ func ]]();
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0xd17cab49, Offset: 0xb88
// Size: 0x28
function function_ebbb8995(str_id) {
    level.var_54ce800f[str_id] = luielemtext::register();
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0x54de8469, Offset: 0xbb8
// Size: 0x28
function function_351488bb(str_id) {
    level.var_54ce800f[str_id] = luielembar::register();
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0xbc3a704e, Offset: 0xbe8
// Size: 0x28
function function_d2554df(str_id) {
    level.var_54ce800f[str_id] = luielemimage::register();
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0x21fde551, Offset: 0xc18
// Size: 0xc
function add_gametype(*gt) {
    
}

// Namespace util/util
// Params 4, eflags: 0x2 linked
// Checksum 0x7f305945, Offset: 0xc30
// Size: 0x8c
function within_fov(start_origin, start_angles, end_origin, fov) {
    normal = vectornormalize(end_origin - start_origin);
    forward = anglestoforward(start_angles);
    dot = vectordot(forward, normal);
    return dot >= fov;
}

// Namespace util/util
// Params 0, eflags: 0x0
// Checksum 0x6bbf9fa7, Offset: 0xcc8
// Size: 0xa
function get_player_height() {
    return 70;
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0xff1c453e, Offset: 0xce0
// Size: 0x3e
function isbulletimpactmod(smeansofdeath) {
    return issubstr(smeansofdeath, "BULLET") || smeansofdeath == "MOD_HEAD_SHOT";
}

// Namespace util/util
// Params 0, eflags: 0x0
// Checksum 0x3d85896c, Offset: 0xd28
// Size: 0x4e
function waitrespawnbutton() {
    self endon(#"disconnect", #"end_respawn");
    while (self usebuttonpressed() != 1) {
        waitframe(1);
    }
}

// Namespace util/util
// Params 2, eflags: 0x0
// Checksum 0xa3891b29, Offset: 0xd80
// Size: 0xf4
function printonteam(text, str_team) {
    str_team = get_team_mapping(str_team);
    assert(isdefined(level.players));
    for (i = 0; i < level.players.size; i++) {
        player = level.players[i];
        if (isdefined(player.pers[#"team"]) && player.pers[#"team"] == str_team) {
            player iprintln(text);
        }
    }
}

// Namespace util/util
// Params 2, eflags: 0x0
// Checksum 0x7aed5c00, Offset: 0xe80
// Size: 0xf4
function printboldonteam(text, str_team) {
    str_team = get_team_mapping(str_team);
    assert(isdefined(level.players));
    for (i = 0; i < level.players.size; i++) {
        player = level.players[i];
        if (isdefined(player.pers[#"team"]) && player.pers[#"team"] == str_team) {
            player iprintlnbold(text);
        }
    }
}

// Namespace util/util
// Params 3, eflags: 0x0
// Checksum 0x1ab5aa26, Offset: 0xf80
// Size: 0xfc
function printboldonteamarg(text, str_team, arg) {
    str_team = get_team_mapping(str_team);
    assert(isdefined(level.players));
    for (i = 0; i < level.players.size; i++) {
        player = level.players[i];
        if (isdefined(player.pers[#"team"]) && player.pers[#"team"] == str_team) {
            player iprintlnbold(text, arg);
        }
    }
}

// Namespace util/util
// Params 3, eflags: 0x0
// Checksum 0xd8109c52, Offset: 0x1088
// Size: 0x1c
function printonteamarg(*text, *team, *arg) {
    
}

// Namespace util/util
// Params 2, eflags: 0x0
// Checksum 0x424069e7, Offset: 0x10b0
// Size: 0xec
function printonplayers(text, str_team) {
    str_team = get_team_mapping(str_team);
    players = level.players;
    for (i = 0; i < players.size; i++) {
        if (isdefined(str_team)) {
            if (isdefined(players[i].pers[#"team"]) && players[i].pers[#"team"] == str_team) {
                players[i] iprintln(text);
            }
            continue;
        }
        players[i] iprintln(text);
    }
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0x39efdd91, Offset: 0x11a8
// Size: 0x4c
function _playlocalsound(soundalias) {
    if (level.splitscreen && !self ishost()) {
        return;
    }
    self playlocalsound(soundalias);
}

// Namespace util/util
// Params 1, eflags: 0x2 linked
// Checksum 0x9b0bed1e, Offset: 0x1200
// Size: 0xac
function getotherteam(str_team) {
    str_team = get_team_mapping(str_team);
    if (str_team == #"allies") {
        return #"axis";
    } else if (str_team == #"axis") {
        return #"allies";
    } else {
        return #"allies";
    }
    assertmsg(".button" + str_team);
}

// Namespace util/util
// Params 1, eflags: 0x2 linked
// Checksum 0xeb50721f, Offset: 0x12b8
// Size: 0x8c
function getteammask(str_team) {
    str_team = get_team_mapping(str_team);
    if (!level.teambased || !isdefined(str_team) || !isdefined(level.spawnsystem.ispawn_teammask[str_team])) {
        return level.spawnsystem.var_c2989de;
    }
    return level.spawnsystem.ispawn_teammask[str_team];
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0x5f9190e5, Offset: 0x1350
// Size: 0xd8
function getotherteamsmask(str_skip_team) {
    str_skip_team = get_team_mapping(str_skip_team);
    mask = 0;
    foreach (str_team in level.teams) {
        if (str_team == str_skip_team) {
            continue;
        }
        mask |= getteammask(str_team);
    }
    return mask;
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0x8d7345f, Offset: 0x1430
// Size: 0x5c
function getfx(fx) {
    assert(isdefined(level._effect[fx]), "<unknown string>" + fx + "<unknown string>");
    return level._effect[fx];
}

// Namespace util/util
// Params 1, eflags: 0x2 linked
// Checksum 0xa7b24490, Offset: 0x1498
// Size: 0x44
function add_trigger_to_ent(ent) {
    if (!isdefined(ent._triggers)) {
        ent._triggers = [];
    }
    ent._triggers[self getentitynumber()] = 1;
}

// Namespace util/util
// Params 1, eflags: 0x2 linked
// Checksum 0x9610fc46, Offset: 0x14e8
// Size: 0x6c
function remove_trigger_from_ent(ent) {
    if (!isdefined(ent)) {
        return;
    }
    if (!isdefined(ent._triggers)) {
        return;
    }
    if (!isdefined(ent._triggers[self getentitynumber()])) {
        return;
    }
    ent._triggers[self getentitynumber()] = 0;
}

// Namespace util/util
// Params 1, eflags: 0x2 linked
// Checksum 0xf79e7a0c, Offset: 0x1560
// Size: 0x70
function ent_already_in_trigger(trig) {
    if (!isdefined(self._triggers)) {
        return false;
    }
    if (!isdefined(self._triggers[trig getentitynumber()])) {
        return false;
    }
    if (!self._triggers[trig getentitynumber()]) {
        return false;
    }
    return true;
}

// Namespace util/util
// Params 2, eflags: 0x2 linked
// Checksum 0x9161fc22, Offset: 0x15d8
// Size: 0x4c
function trigger_thread_death_monitor(ent, ender) {
    ent waittill(#"death");
    self endon(ender);
    self remove_trigger_from_ent(ent);
}

// Namespace util/util
// Params 3, eflags: 0x0
// Checksum 0xfab0949e, Offset: 0x1630
// Size: 0x184
function trigger_thread(ent, on_enter_payload, on_exit_payload) {
    ent endon(#"death");
    if (ent ent_already_in_trigger(self)) {
        return;
    }
    self add_trigger_to_ent(ent);
    ender = "end_trig_death_monitor" + self getentitynumber() + " " + ent getentitynumber();
    self thread trigger_thread_death_monitor(ent, ender);
    endon_condition = "leave_trigger_" + self getentitynumber();
    if (isdefined(on_enter_payload)) {
        self thread [[ on_enter_payload ]](ent, endon_condition);
    }
    while (isdefined(ent) && ent istouching(self)) {
        wait(0.01);
    }
    ent notify(endon_condition);
    if (isdefined(ent) && isdefined(on_exit_payload)) {
        self thread [[ on_exit_payload ]](ent);
    }
    if (isdefined(ent)) {
        self remove_trigger_from_ent(ent);
    }
    self notify(ender);
}

// Namespace util/util
// Params 2, eflags: 0x0
// Checksum 0x84871e31, Offset: 0x17c0
// Size: 0x38
function isstrstart(string1, substr) {
    return getsubstr(string1, 0, substr.size) == substr;
}

// Namespace util/util
// Params 0, eflags: 0x0
// Checksum 0x8ebfbb67, Offset: 0x1800
// Size: 0x20
function iskillstreaksenabled() {
    return isdefined(level.killstreaksenabled) && level.killstreaksenabled;
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0x59c523f9, Offset: 0x1828
// Size: 0x5e
function clearusingremote(*remotename) {
    if (isdefined(self.carryicon)) {
        self.carryicon.alpha = 1;
    }
    self.usingremote = undefined;
    self enableoffhandweapons();
    self.killstreak_delay_killcam = undefined;
    self notify(#"stopped_using_remote");
}

// Namespace util/util
// Params 0, eflags: 0x0
// Checksum 0xa4e161ee, Offset: 0x1890
// Size: 0x32
function getremotename() {
    assert(self isusingremote());
    return self.usingremote;
}

// Namespace util/util
// Params 2, eflags: 0x2 linked
// Checksum 0xcbd2a0ff, Offset: 0x18d0
// Size: 0x54
function setobjectivetext(team, text) {
    team = get_team_mapping(team);
    game.strings["objective_" + level.teams[team]] = text;
}

// Namespace util/util
// Params 2, eflags: 0x2 linked
// Checksum 0x73c7954a, Offset: 0x1930
// Size: 0x54
function setobjectivescoretext(team, text) {
    team = get_team_mapping(team);
    game.strings["objective_score_" + level.teams[team]] = text;
}

// Namespace util/util
// Params 2, eflags: 0x2 linked
// Checksum 0x8366ff5f, Offset: 0x1990
// Size: 0x54
function setobjectivehinttext(team, text) {
    team = get_team_mapping(team);
    game.strings["objective_hint_" + level.teams[team]] = text;
}

// Namespace util/util
// Params 1, eflags: 0x2 linked
// Checksum 0x954e2979, Offset: 0x19f0
// Size: 0x48
function getobjectivetext(team) {
    team = get_team_mapping(team);
    return game.strings["objective_" + level.teams[team]];
}

// Namespace util/util
// Params 1, eflags: 0x2 linked
// Checksum 0xf7427082, Offset: 0x1a40
// Size: 0x48
function getobjectivescoretext(team) {
    team = get_team_mapping(team);
    return game.strings["objective_score_" + level.teams[team]];
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0x14221091, Offset: 0x1a90
// Size: 0x48
function getobjectivehinttext(team) {
    team = get_team_mapping(team);
    return game.strings["objective_hint_" + level.teams[team]];
}

// Namespace util/util
// Params 2, eflags: 0x2 linked
// Checksum 0xe93a5809, Offset: 0x1ae0
// Size: 0x74
function registerroundswitch(minvalue, maxvalue) {
    level.roundswitch = math::clamp(getgametypesetting(#"roundswitch"), minvalue, maxvalue);
    level.roundswitchmin = minvalue;
    level.roundswitchmax = maxvalue;
}

// Namespace util/util
// Params 2, eflags: 0x2 linked
// Checksum 0x185be15c, Offset: 0x1b60
// Size: 0x74
function registerroundlimit(minvalue, maxvalue) {
    level.roundlimit = math::clamp(getgametypesetting(#"roundlimit"), minvalue, maxvalue);
    level.roundlimitmin = minvalue;
    level.roundlimitmax = maxvalue;
}

// Namespace util/util
// Params 2, eflags: 0x2 linked
// Checksum 0x72fabbe7, Offset: 0x1be0
// Size: 0x74
function registerroundwinlimit(minvalue, maxvalue) {
    level.roundwinlimit = math::clamp(getgametypesetting(#"roundwinlimit"), minvalue, maxvalue);
    level.roundwinlimitmin = minvalue;
    level.roundwinlimitmax = maxvalue;
}

// Namespace util/util
// Params 2, eflags: 0x2 linked
// Checksum 0x60c65ae0, Offset: 0x1c60
// Size: 0x74
function registerscorelimit(minvalue, maxvalue) {
    level.scorelimit = math::clamp(getgametypesetting(#"scorelimit"), minvalue, maxvalue);
    level.scorelimitmin = minvalue;
    level.scorelimitmax = maxvalue;
}

// Namespace util/util
// Params 2, eflags: 0x2 linked
// Checksum 0x6c634bb0, Offset: 0x1ce0
// Size: 0x74
function registertimelimit(minvalue, maxvalue) {
    level.timelimit = math::clamp(getgametypesetting(#"timelimit"), minvalue, maxvalue);
    level.timelimitmin = minvalue;
    level.timelimitmax = maxvalue;
}

// Namespace util/util
// Params 2, eflags: 0x2 linked
// Checksum 0xf80cb72d, Offset: 0x1d60
// Size: 0x74
function registernumlives(minvalue, maxvalue) {
    level.numlives = math::clamp(getgametypesetting(#"playernumlives"), minvalue, maxvalue);
    level.numlivesmin = minvalue;
    level.numlivesmax = maxvalue;
}

// Namespace util/util
// Params 1, eflags: 0x2 linked
// Checksum 0x25d25cec, Offset: 0x1de0
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
// Checksum 0xed1403d, Offset: 0x1e68
// Size: 0x52
function ispressbuild() {
    buildtype = getdvarstring(#"buildtype");
    if (isdefined(buildtype) && buildtype == "press") {
        return true;
    }
    return false;
}

// Namespace util/util
// Params 0, eflags: 0x2 linked
// Checksum 0x77e31562, Offset: 0x1ec8
// Size: 0x1e
function isflashbanged() {
    return isdefined(self.flashendtime) && gettime() < self.flashendtime;
}

// Namespace util/util
// Params 0, eflags: 0x0
// Checksum 0x8cdee9af, Offset: 0x1ef0
// Size: 0xb2
function function_614b5d1() {
    time = gettime();
    if (isdefined(self.stunned) && self.stunned) {
        return true;
    }
    if (self isflashbanged()) {
        return true;
    }
    if (isdefined(self.stun_fx)) {
        return true;
    }
    if (isdefined(self.laststunnedtime) && self.laststunnedtime + 5000 > time) {
        return true;
    }
    if (isdefined(self.concussionendtime) && self.concussionendtime > time) {
        return true;
    }
    return false;
}

// Namespace util/util
// Params 5, eflags: 0x0
// Checksum 0xc084959a, Offset: 0x1fb0
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
// Params 0, eflags: 0x0
// Checksum 0x1914709a, Offset: 0x2070
// Size: 0x24
function self_delete() {
    if (isdefined(self)) {
        self delete();
    }
}

/#

    // Namespace util/util
    // Params 5, eflags: 0x0
    // Checksum 0xef30c32, Offset: 0x20a0
    // Size: 0x55c
    function function_eeb6bf9c(var_bb81b398, var_8d3bd70d, var_df277ae3, var_40bdf47c, n_time) {
        level notify(#"hash_64323f034c2c875e");
        level endon(#"hash_64323f034c2c875e");
        if (isdefined(level.missionfailed) && level.missionfailed) {
            return;
        }
        if (getdvarint(#"hash_4bfac373b340d0a6", 0) == 1) {
            return;
        }
        if (!isdefined(var_40bdf47c)) {
            var_40bdf47c = 0;
        }
        if (!isdefined(level.var_a48f831c)) {
            level.var_a48f831c = newdebughudelem();
            level.var_a48f831c.elemtype = "<unknown string>";
            level.var_a48f831c.font = "<unknown string>";
            level.var_a48f831c.fontscale = 1.8;
            level.var_a48f831c.horzalign = "<unknown string>";
            level.var_a48f831c.vertalign = "<unknown string>";
            level.var_a48f831c.alignx = "<unknown string>";
            level.var_a48f831c.aligny = "<unknown string>";
            level.var_a48f831c.y = -60 + var_40bdf47c;
            level.var_a48f831c.sort = 2;
            level.var_a48f831c.color = (1, 1, 1);
            level.var_a48f831c.alpha = 1;
            level.var_a48f831c.hidewheninmenu = 1;
        }
        level.var_a48f831c settext(var_bb81b398);
        if (isdefined(var_8d3bd70d)) {
            if (!isdefined(level.var_24a50345)) {
                level.var_24a50345 = newdebughudelem();
                level.var_24a50345.elemtype = "<unknown string>";
                level.var_24a50345.font = "<unknown string>";
                level.var_24a50345.fontscale = 1.8;
                level.var_24a50345.horzalign = "<unknown string>";
                level.var_24a50345.vertalign = "<unknown string>";
                level.var_24a50345.alignx = "<unknown string>";
                level.var_24a50345.aligny = "<unknown string>";
                level.var_24a50345.y = -33 + var_40bdf47c;
                level.var_24a50345.sort = 2;
                level.var_24a50345.color = (1, 1, 1);
                level.var_24a50345.alpha = 1;
                level.var_24a50345.hidewheninmenu = 1;
            }
            level.var_24a50345 settext(var_8d3bd70d);
        } else if (isdefined(level.var_24a50345)) {
            level.var_24a50345 destroy();
        }
        if (isdefined(var_df277ae3)) {
            if (!isdefined(level.var_52e55fc5)) {
                level.var_52e55fc5 = newdebughudelem();
                level.var_52e55fc5.elemtype = "<unknown string>";
                level.var_52e55fc5.font = "<unknown string>";
                level.var_52e55fc5.fontscale = 1.8;
                level.var_52e55fc5.horzalign = "<unknown string>";
                level.var_52e55fc5.vertalign = "<unknown string>";
                level.var_52e55fc5.alignx = "<unknown string>";
                level.var_52e55fc5.aligny = "<unknown string>";
                level.var_52e55fc5.y = -6 + var_40bdf47c;
                level.var_52e55fc5.sort = 2;
                level.var_52e55fc5.color = (1, 1, 1);
                level.var_52e55fc5.alpha = 1;
                level.var_52e55fc5.hidewheninmenu = 1;
            }
            level.var_52e55fc5 settext(var_df277ae3);
        } else if (isdefined(level.var_52e55fc5)) {
            level.var_52e55fc5 destroy();
        }
        if (isdefined(n_time) && n_time > 0) {
            wait(n_time);
            function_76c14823();
        }
    }

    // Namespace util/util
    // Params 1, eflags: 0x0
    // Checksum 0xac0a14b5, Offset: 0x2608
    // Size: 0x94
    function function_76c14823(delay) {
        if (isdefined(delay)) {
            wait(delay);
        }
        if (isdefined(level.var_a48f831c)) {
            level.var_a48f831c destroy();
        }
        if (isdefined(level.var_24a50345)) {
            level.var_24a50345 destroy();
        }
        if (isdefined(level.var_52e55fc5)) {
            level.var_52e55fc5 destroy();
        }
    }

    // Namespace util/util
    // Params 5, eflags: 0x0
    // Checksum 0xef0ad96e, Offset: 0x26a8
    // Size: 0x544
    function function_b5d0a39e(var_bb81b398, var_8d3bd70d, var_df277ae3, var_40bdf47c, n_time) {
        self notify(#"hash_64323f034c2c875e");
        self endon(#"hash_64323f034c2c875e", #"death");
        if (isdefined(level.missionfailed) && level.missionfailed) {
            return;
        }
        if (getdvarint(#"hash_4bfac373b340d0a6", 0) == 1) {
            return;
        }
        if (!isdefined(var_40bdf47c)) {
            var_40bdf47c = 0;
        }
        if (!isdefined(self.var_a48f831c)) {
            self.var_a48f831c = newdebughudelem(self);
            self.var_a48f831c.elemtype = "<unknown string>";
            self.var_a48f831c.font = "<unknown string>";
            self.var_a48f831c.fontscale = 1.8;
            self.var_a48f831c.horzalign = "<unknown string>";
            self.var_a48f831c.vertalign = "<unknown string>";
            self.var_a48f831c.alignx = "<unknown string>";
            self.var_a48f831c.aligny = "<unknown string>";
            self.var_a48f831c.y = -60 + var_40bdf47c;
            self.var_a48f831c.sort = 2;
            self.var_a48f831c.color = (1, 1, 1);
            self.var_a48f831c.alpha = 1;
            self.var_a48f831c.hidewheninmenu = 1;
        }
        self.var_a48f831c settext(var_bb81b398);
        if (isdefined(var_8d3bd70d)) {
            if (!isdefined(self.var_24a50345)) {
                self.var_24a50345 = newdebughudelem(self);
                self.var_24a50345.elemtype = "<unknown string>";
                self.var_24a50345.font = "<unknown string>";
                self.var_24a50345.fontscale = 1.8;
                self.var_24a50345.horzalign = "<unknown string>";
                self.var_24a50345.vertalign = "<unknown string>";
                self.var_24a50345.alignx = "<unknown string>";
                self.var_24a50345.aligny = "<unknown string>";
                self.var_24a50345.y = -33 + var_40bdf47c;
                self.var_24a50345.sort = 2;
                self.var_24a50345.color = (1, 1, 1);
                self.var_24a50345.alpha = 1;
                self.var_24a50345.hidewheninmenu = 1;
            }
            self.var_24a50345 settext(var_8d3bd70d);
        } else if (isdefined(self.var_24a50345)) {
            self.var_24a50345 destroy();
        }
        if (isdefined(var_df277ae3)) {
            if (!isdefined(self.var_52e55fc5)) {
                self.var_52e55fc5 = newdebughudelem(self);
                self.var_52e55fc5.elemtype = "<unknown string>";
                self.var_52e55fc5.font = "<unknown string>";
                self.var_52e55fc5.fontscale = 1.8;
                self.var_52e55fc5.horzalign = "<unknown string>";
                self.var_52e55fc5.vertalign = "<unknown string>";
                self.var_52e55fc5.alignx = "<unknown string>";
                self.var_52e55fc5.aligny = "<unknown string>";
                self.var_52e55fc5.y = -6 + var_40bdf47c;
                self.var_52e55fc5.sort = 2;
                self.var_52e55fc5.color = (1, 1, 1);
                self.var_52e55fc5.alpha = 1;
                self.var_52e55fc5.hidewheninmenu = 1;
            }
            self.var_52e55fc5 settext(var_df277ae3);
        } else if (isdefined(self.var_52e55fc5)) {
            self.var_52e55fc5 destroy();
        }
        if (isdefined(n_time) && n_time > 0) {
            self thread function_2e0c1f7d(n_time);
        }
    }

    // Namespace util/util
    // Params 1, eflags: 0x0
    // Checksum 0x64e0def6, Offset: 0x2bf8
    // Size: 0xa4
    function function_2e0c1f7d(delay) {
        self endon(#"hash_64323f034c2c875e");
        if (isdefined(delay)) {
            wait(delay);
        }
        if (isdefined(self.var_a48f831c)) {
            self.var_a48f831c destroy();
        }
        if (isdefined(self.var_24a50345)) {
            self.var_24a50345 destroy();
        }
        if (isdefined(self.var_52e55fc5)) {
            self.var_52e55fc5 destroy();
        }
    }

#/

// Namespace util/util
// Params 3, eflags: 0x2 linked
// Checksum 0x68cb27eb, Offset: 0x2ca8
// Size: 0x4c
function screen_fade_out(n_time, var_c615ad76 = "black", str_menu_id) {
    level lui::screen_fade_out(n_time, var_c615ad76, str_menu_id);
}

// Namespace util/util
// Params 3, eflags: 0x2 linked
// Checksum 0xd22b8736, Offset: 0x2d00
// Size: 0x4c
function screen_fade_in(n_time, var_c615ad76 = "black", str_menu_id) {
    level lui::screen_fade_in(n_time, var_c615ad76, str_menu_id);
}

// Namespace util/util
// Params 9, eflags: 0x2 linked
// Checksum 0x2b1de01e, Offset: 0x2d58
// Size: 0x17c
function missionfailedwrapper(var_f695d653, var_fc366442, *shader, *iwidth, *var_cfeb7a77, *fdelay, *x, *y, var_286a6310 = 1) {
    if (level.missionfailed || level.var_5be43b2d === 1) {
        return;
    }
    if (isdefined(level.nextmission)) {
        return;
    }
    if (getdvarint(#"hash_da1fce032d13782", 0)) {
        return;
    }
    /#
        function_76c14823();
    #/
    level prompts::function_86eedc();
    if (isdefined(y)) {
        setdvar(#"ui_deadquote", y);
    }
    level.missionfailed = 1;
    level.var_85b00b2b = x;
    level.var_30eb363 = y;
    level notify(#"hash_2bb74762daab3cd");
    if (var_286a6310) {
    }
    level callback::callback(#"on_mission_failed");
}

// Namespace util/util
// Params 2, eflags: 0x2 linked
// Checksum 0x2dd45d0a, Offset: 0x2ee0
// Size: 0x2c
function function_2a8f4806(var_f695d653, var_fc366442) {
    missionfailedwrapper(var_f695d653, var_fc366442, 0);
}

// Namespace util/util
// Params 0, eflags: 0x0
// Checksum 0x29da4aca, Offset: 0x2f18
// Size: 0xec
function show_hit_marker() {
    if (isplayer(self)) {
        if (isdefined(self) && isdefined(self.hud_damagefeedback)) {
            /#
                self.hud_damagefeedback setshader(#"damage_feedback", 24, 48);
                self.hud_damagefeedback.alpha = 1;
                self.hud_damagefeedback fadeovertime(1);
                self.hud_damagefeedback.alpha = 0;
            #/
            return;
        }
        if (isdefined(self) && !isdefined(self.hud_damagefeedback)) {
            self playhitmarker(undefined, 1, undefined, 0, 0);
        }
    }
}

// Namespace util/util
// Params 8, eflags: 0x2 linked
// Checksum 0x41dbc4f5, Offset: 0x3010
// Size: 0x2a0
function function_268bdf4f(name, func_init, arg1, arg2, arg3, arg4, arg5, var_dc17ca64 = 1) {
    if (!isdefined(level.heroes)) {
        level.heroes = [];
    }
    name = tolower(name);
    ai_hero = getent(name, "targetname", 1);
    if (!isalive(ai_hero)) {
        spawner = getent(name, "targetname");
        if (!is_true(spawner.spawning)) {
            spawner.count++;
            ai_hero = spawner::simple_spawn_single(spawner);
            assert(isdefined(ai_hero), "<unknown string>" + name + "<unknown string>");
            spawner notify(#"hash_7edd884f767a5390", {#hero:ai_hero});
        } else {
            waitresult = spawner waittill(#"hash_7edd884f767a5390");
            ai_hero = waitresult.hero;
        }
    }
    level.heroes[name] = ai_hero;
    level.(name) = ai_hero;
    ai_hero.animname = name;
    ai_hero.is_hero = 1;
    ai_hero.enableterrainik = 1;
    ai_hero magic_bullet_shield();
    ai_hero thread function_fc345061(name);
    if (isdefined(func_init)) {
        single_thread(ai_hero, func_init, arg1, arg2, arg3, arg4, arg5);
    }
    if (isdefined(level.var_d88df155)) {
        ai_hero [[ level.var_d88df155 ]]();
    }
    if (var_dc17ca64) {
        ai_hero thread oed::enable_thermal();
    }
    return ai_hero;
}

// Namespace util/util
// Params 7, eflags: 0x0
// Checksum 0x7c7d6590, Offset: 0x32b8
// Size: 0x126
function function_619dc45e(var_18647bc8, func, arg1, arg2, arg3, arg4, arg5) {
    a_heroes = [];
    foreach (str_hero in var_18647bc8) {
        if (!isdefined(a_heroes)) {
            a_heroes = [];
        } else if (!isarray(a_heroes)) {
            a_heroes = array(a_heroes);
        }
        a_heroes[a_heroes.size] = function_268bdf4f(str_hero, func, arg1, arg2, arg3, arg4, arg5);
    }
    return a_heroes;
}

// Namespace util/util
// Params 1, eflags: 0x2 linked
// Checksum 0xc93f7016, Offset: 0x33e8
// Size: 0x9c
function function_fc345061(str_name) {
    self endon(#"unmake_hero");
    self waittill(#"death");
    if (isdefined(self) && !is_true(level.var_5be43b2d)) {
        assertmsg("<unknown string>" + str_name + "<unknown string>");
    }
    unmake_hero(str_name);
}

// Namespace util/util
// Params 2, eflags: 0x2 linked
// Checksum 0x36e5c9e, Offset: 0x3490
// Size: 0xc4
function unmake_hero(str_name, b_delete = 0) {
    ai_hero = level.heroes[str_name];
    level.heroes = array::remove_index(level.heroes, str_name, 1);
    if (isalive(ai_hero)) {
        ai_hero stop_magic_bullet_shield();
        ai_hero notify(#"unmake_hero");
        if (b_delete) {
            ai_hero delete();
        }
    }
}

// Namespace util/util
// Params 0, eflags: 0x0
// Checksum 0xb625e04b, Offset: 0x3560
// Size: 0xe
function function_fb34ca9f() {
    return level.heroes;
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0x212cd5f7, Offset: 0x3578
// Size: 0x64
function function_892363(str_name) {
    if (!isdefined(level.heroes)) {
        level.heroes = [];
    }
    if (isdefined(level.heroes[str_name])) {
        return level.heroes[str_name];
    }
    return function_268bdf4f(str_name);
}

// Namespace util/util
// Params 0, eflags: 0x0
// Checksum 0x7383cca5, Offset: 0x35e8
// Size: 0x1a
function is_hero() {
    return is_true(self.is_hero);
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0x7d8921da, Offset: 0x3610
// Size: 0x4c
function function_38769153(var_c9ec2dc3) {
    clientfield::register("world", "force_streamer", 1, getminbitcountfornum(var_c9ec2dc3), "int");
}

// Namespace util/util
// Params 0, eflags: 0x0
// Checksum 0xb2bca1bd, Offset: 0x3668
// Size: 0x44
function clear_streamer_hint() {
    level flag::wait_till("all_players_connected");
    level clientfield::set("force_streamer", 0);
}

// Namespace util/util
// Params 2, eflags: 0x0
// Checksum 0xd0f8f54e, Offset: 0x36b8
// Size: 0x44
function function_d0016d9c(n_zone, var_97094ff3 = 1) {
    level thread function_9d9d132a(n_zone, var_97094ff3);
}

// Namespace util/util
// Params 2, eflags: 0x2 linked
// Checksum 0xeef80fad, Offset: 0x3708
// Size: 0x2cc
function function_9d9d132a(n_zone, var_97094ff3 = 1) {
    level notify(#"hash_16f43460a48d5395");
    level endon(#"hash_16f43460a48d5395");
    assert(n_zone > 0, "<unknown string>");
    level flag::set(#"hash_262b0a7523df69cd");
    level flag::wait_till("all_players_connected");
    if (var_97094ff3) {
        level clientfield::set("force_streamer", 0);
        wait_network_frame();
    }
    level clientfield::set("force_streamer", n_zone);
    if (!isdefined(level.var_cf9733af)) {
        level.var_cf9733af = 1;
        /#
            level.var_cf9733af = 0;
        #/
    }
    foreach (player in level.players) {
        player thread function_250b79b0(n_zone);
    }
    /#
        n_timeout = gettime() + 15000;
    #/
    array::wait_till(level.players, "streamer" + n_zone, 15);
    level flag::clear(#"hash_262b0a7523df69cd");
    level streamer_wait();
    /#
        if (gettime() >= n_timeout) {
            printtoprightln("<unknown string>" + string::rjust(gettime(), 6, "<unknown string>"), (1, 0, 0));
            return;
        }
        printtoprightln("<unknown string>" + string::rjust(gettime(), 6, "<unknown string>"), (1, 1, 1));
    #/
}

// Namespace util/util
// Params 1, eflags: 0x2 linked
// Checksum 0xc11c9338, Offset: 0x39e0
// Size: 0x70
function function_250b79b0(n_zone) {
    self endon(#"disconnect");
    level endon(#"hash_16f43460a48d5395");
    self waittillmatch({#zone:n_zone}, #"streamer");
    self notify("streamer" + n_zone);
}

// Namespace util/util
// Params 2, eflags: 0x2 linked
// Checksum 0x4bb51865, Offset: 0x3a58
// Size: 0x314
function function_749362d7(var_53cdb3f5, gesture = #"hash_743809219cd0d96b") {
    self val::reset_all(#"low_ready");
    if (isdefined(self.var_acac2f93)) {
        self stopgestureviewmodel(self.var_acac2f93);
        self notify(#"hash_1e1bc72a511dc338");
        self.var_acac2f93 = undefined;
    }
    if (var_53cdb3f5) {
        if ((isstring(gesture) || ishash(gesture)) && isgesture(gesture)) {
            self val::set(#"low_ready", "disable_weapon_fire", 1);
            self playgestureviewmodel(gesture);
            self.var_acac2f93 = gesture;
            self thread function_79e25924();
        } else {
            self val::set(#"low_ready", "low_ready", 1);
        }
        self val::set(#"low_ready", "show_weapon_hud", 0);
        self val::set(#"low_ready", "allow_jump", 0);
        self val::set(#"low_ready", "allow_double_jump", 0);
        self val::set(#"low_ready", "allow_sprint", 0);
        self val::set(#"low_ready", "disable_offhand_weapons", 1);
        self val::set(#"low_ready", "disable_offhand_special", 1);
        self val::set(#"low_ready", "allow_ads", 0);
        self val::set(#"low_ready", "disable_aim_assist", 1);
        self val::set(#"low_ready", "allow_prone", 0);
    }
    self.var_f82e2c3d = undefined;
    oed::enable_ev(!var_53cdb3f5);
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0x8fbbbac3, Offset: 0x3d78
// Size: 0x11c
function function_1478233c(var_e601604e) {
    if (isdefined(self.var_acac2f93)) {
        if (isfloat(var_e601604e)) {
            self.var_f82e2c3d = gettime() + int(var_e601604e * 1000);
            self stopgestureviewmodel(self.var_acac2f93);
            return;
        }
        if (isgesture(var_e601604e)) {
            self.var_f82e2c3d = gettime() + int((self getgestureanimlength(var_e601604e) - 0.2) * 1000);
            self playgestureviewmodel(var_e601604e, undefined, undefined, undefined, undefined, undefined, 1);
            return;
        }
        assertmsg("<unknown string>");
    }
}

// Namespace util/util
// Params 0, eflags: 0x6 linked
// Checksum 0xc6b6dfa6, Offset: 0x3ea0
// Size: 0x11e
function private function_79e25924() {
    self endon(#"death", #"hash_1e1bc72a511dc338");
    var_826fad97 = 0;
    while (true) {
        if (!self isgestureplaying(self.var_acac2f93)) {
            isweaponnone = self getcurrentweapon() === level.weaponnone;
            if (!isweaponnone) {
                if (var_826fad97) {
                    waitframe(1);
                }
                if (isdefined(self.var_f82e2c3d) && gettime() < self.var_f82e2c3d) {
                    waitframe(1);
                    continue;
                }
                if (!self isplayinganimscripted()) {
                    self playgestureviewmodel(self.var_acac2f93, undefined, undefined, undefined, undefined, undefined, 1);
                }
            }
            var_826fad97 = isweaponnone;
        }
        waitframe(1);
    }
}

// Namespace util/util
// Params 0, eflags: 0x2 linked
// Checksum 0x57b92cc2, Offset: 0x3fc8
// Size: 0xa8
function function_323d3227() {
    foreach (corpse in getcorpsearray()) {
        if (isactorcorpse(corpse)) {
            corpse delete();
        }
    }
}

// Namespace util/util
// Params 1, eflags: 0x2 linked
// Checksum 0xdba9d0ab, Offset: 0x4078
// Size: 0x3c
function function_49cd62a8(str_flag) {
    level.var_a7b99722 = str_flag;
    level flag::init(level.var_a7b99722);
}

// Namespace util/util
// Params 1, eflags: 0x2 linked
// Checksum 0x60686309, Offset: 0x40c0
// Size: 0x1c
function function_f3cadc9a(str_flag) {
    level.var_d7d201ba = str_flag;
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0x8359468b, Offset: 0x40e8
// Size: 0x3e
function function_8c95fc4d(b_state = 1) {
    if (b_state) {
        self.var_35445183 = 1;
        return;
    }
    self.var_35445183 = undefined;
}

// Namespace util/util
// Params 0, eflags: 0x0
// Checksum 0x9a5bc230, Offset: 0x4130
// Size: 0x64
function function_d96391ba() {
    clientfield::register("toplayer", "player_cold_breath", 1, 1, "int");
    clientfield::register("actor", "ai_cold_breath", 1, 1, "counter");
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0xa622ffd1, Offset: 0x41a0
// Size: 0x2c
function function_bd2fa08b(var_d5e547fc) {
    self clientfield::set_to_player("player_cold_breath", var_d5e547fc);
}

// Namespace util/util
// Params 0, eflags: 0x0
// Checksum 0xb22afeb7, Offset: 0x41d8
// Size: 0x64
function function_5bc3da8b() {
    self endon(#"death");
    if (self.archetype === "human") {
        wait(randomfloatrange(1, 3));
        self clientfield::increment("ai_cold_breath");
    }
}

// Namespace util/util
// Params 4, eflags: 0x2 linked
// Checksum 0x8359cfcc, Offset: 0x4248
// Size: 0xac
function show_hint_text(str_text_to_show, *b_should_blink, str_turn_off_notify = "notify_turn_off_hint_text", n_display_time = -1) {
    if (!level flag::get(#"mission_failed")) {
        self thread hint_tutorial::function_4c2d4fc4(b_should_blink, #"", 0, #"", 2, n_display_time, str_turn_off_notify, 0);
    }
}

// Namespace util/util
// Params 4, eflags: 0x0
// Checksum 0xee32ddd6, Offset: 0x4300
// Size: 0x10c
function function_84f75222(str_text_to_show, b_should_blink, str_turn_off_notify, n_display_time) {
    lui_elem = function_d1397ecd("cp_hint_text");
    if (lui_elem cp_hint_text::is_open(self)) {
        self hide_hint_text(0);
    }
    lui_elem cp_hint_text::open(self);
    lui_elem cp_hint_text::function_a16f86c1(self, str_text_to_show);
    wait_network_frame();
    if (b_should_blink) {
        lui_elem cp_hint_text::function_64d95cad(self);
    } else {
        lui_elem cp_hint_text::function_a981d6b6(self);
    }
    self thread function_7b7dfab3(n_display_time, str_turn_off_notify);
}

// Namespace util/util
// Params 1, eflags: 0x2 linked
// Checksum 0xe7e7496c, Offset: 0x4418
// Size: 0x44
function hide_hint_text(b_fade_before_hiding = 1) {
    self hint_tutorial::function_9f427d88(b_fade_before_hiding ? 2 : 0);
}

// Namespace util/util
// Params 2, eflags: 0x2 linked
// Checksum 0x5b7b5199, Offset: 0x4468
// Size: 0xfc
function function_7b7dfab3(n_display_time, str_turn_off_notify) {
    self endon(#"disconnect");
    s_waitresult = undefined;
    if (n_display_time > 0.75) {
        s_waitresult = self waittilltimeout(n_display_time - 0.75, str_turn_off_notify, #"kill_hint_text", #"death");
    } else {
        s_waitresult = self waittill(str_turn_off_notify, #"kill_hint_text", #"death");
    }
    if (s_waitresult._notify == "timeout") {
        hide_hint_text(1);
        return;
    }
    hide_hint_text(0);
}

// Namespace util/util
// Params 2, eflags: 0x0
// Checksum 0xcafd43d4, Offset: 0x4570
// Size: 0x3c
function function_bd3989c1(var_c6c2973a, str_message) {
    var_c6c2973a luinotifyevent(#"hash_6400fde1d34c7351", 1, str_message);
}

// Namespace util/util
// Params 1, eflags: 0x2 linked
// Checksum 0x417be7db, Offset: 0x45b8
// Size: 0x224
function function_502198f3(var_67df10fb = 4) {
    self notify("2142fa1c1345de02");
    self endon("2142fa1c1345de02");
    if (!namespace_61e6d095::exists(#"hash_5a8140e735eea0a")) {
        namespace_61e6d095::create(#"hash_5a8140e735eea0a", #"hash_bca0ed0cade1b34");
        namespace_61e6d095::function_d3c3e5c3(#"hash_5a8140e735eea0a", [#"interactive_map", #"dialog_tree", #"computer"]);
        namespace_61e6d095::function_46df0bc7(#"hash_5a8140e735eea0a", 1000);
    }
    namespace_61e6d095::function_9ade1d9b(#"hash_5a8140e735eea0a", "text", #"hash_15fd757c26b65474", 0, 0, 0, 1);
    namespace_61e6d095::function_9ade1d9b(#"hash_5a8140e735eea0a", "time", var_67df10fb, 0, 0, 0, 1);
    var_67df10fb += 4;
    if (var_67df10fb >= float(function_60d95f53()) / 1000) {
        wait(var_67df10fb);
        if (namespace_61e6d095::exists(#"hash_5a8140e735eea0a")) {
            namespace_61e6d095::remove(#"hash_5a8140e735eea0a");
        }
    }
}

// Namespace util/util
// Params 1, eflags: 0x2 linked
// Checksum 0x9c35ff11, Offset: 0x47e8
// Size: 0x224
function function_b9dfcfb7(var_67df10fb = 4) {
    self notify("6ecd26f4e31dfab8");
    self endon("6ecd26f4e31dfab8");
    if (!namespace_61e6d095::exists(#"hash_4362296ac2fe0d63")) {
        namespace_61e6d095::create(#"hash_4362296ac2fe0d63", #"hash_35889974967db979");
        namespace_61e6d095::function_d3c3e5c3(#"hash_4362296ac2fe0d63", [#"interactive_map", #"dialog_tree", #"computer"]);
        namespace_61e6d095::function_46df0bc7(#"hash_4362296ac2fe0d63", 1000);
    }
    namespace_61e6d095::function_9ade1d9b(#"hash_4362296ac2fe0d63", "text", #"hash_55ed0cb21f07064d", 0, 0, 0, 1);
    namespace_61e6d095::function_9ade1d9b(#"hash_4362296ac2fe0d63", "time", var_67df10fb, 0, 0, 0, 1);
    var_67df10fb += 1;
    if (var_67df10fb >= float(function_60d95f53()) / 1000) {
        wait(var_67df10fb);
        if (namespace_61e6d095::exists(#"hash_4362296ac2fe0d63")) {
            namespace_61e6d095::remove(#"hash_4362296ac2fe0d63");
        }
    }
}

// Namespace util/util
// Params 4, eflags: 0x0
// Checksum 0xc3ffbe0f, Offset: 0x4a18
// Size: 0x104
function function_2b98ebb1(str_team, str_objective, var_26ed87a4 = 3, var_86fdb2cc = 1) {
    str_team = get_team_mapping(str_team);
    a_players = getplayers(str_team);
    array::thread_all(a_players, &globallogic_ui::function_d679cb5b);
    waitframe(1);
    if (str_team === #"allies") {
        mission.var_efc64276 = str_objective;
    } else {
        mission.var_24134271 = str_objective;
    }
    array::thread_all(a_players, &function_4e4e008c, str_objective, var_26ed87a4, var_86fdb2cc);
}

// Namespace util/util
// Params 3, eflags: 0x2 linked
// Checksum 0x509d0743, Offset: 0x4b28
// Size: 0x154
function function_4e4e008c(str_objective, var_f1515fd2 = 2, var_86fdb2cc = 1) {
    self notify(#"hash_73b59fc5d37c6c0b");
    self endon(#"hash_73b59fc5d37c6c0b", #"disconnect");
    if (!isdefined(str_objective)) {
        return;
    }
    self thread globallogic_ui::function_d679cb5b();
    waitframe(1);
    if (isdefined(self)) {
        self thread globallogic_ui::function_4c96ea2c(str_objective);
    } else {
        return;
    }
    if (var_86fdb2cc) {
        v_starting_origin = self getorigin();
        while (isalive(self) && distance2dsquared(self getorigin(), v_starting_origin) < 1) {
            waitframe(1);
        }
    }
    wait(var_f1515fd2);
    if (isdefined(self)) {
        self thread globallogic_ui::function_d679cb5b();
    }
}

// Namespace util/util
// Params 2, eflags: 0x0
// Checksum 0xc618a3cf, Offset: 0x4c88
// Size: 0x3e0
function function_74a9e89b(str_team = #"any", str_vehicle = undefined) {
    level flag::wait_till("all_players_spawned");
    foreach (e_player in getplayers(str_team)) {
        var_30181301 = [];
        if (str_team == #"axis") {
            var_261c6219 = struct::get_array("cp_player_vehicle_spawn_axis", "targetname");
        } else if (str_team == #"allies") {
            var_261c6219 = struct::get_array("cp_player_vehicle_spawn_allies", "targetname");
        } else {
            var_261c6219 = arraycombine(struct::get_array("cp_player_vehicle_spawn_axis", "targetname"), struct::get_array("cp_player_vehicle_spawn_allies", "targetname"), 0, 0);
        }
        var_b72afb0d = struct::get_array("cp_vh_spawn_loc", "variantname");
        var_17d40a0f = arraycombine(var_b72afb0d, var_261c6219, 0, 0);
        if (isdefined(level.var_28c22d88) && level.var_28c22d88.size > 0) {
            foreach (var_e56f5f30 in var_17d40a0f) {
                if (!isdefined(var_e56f5f30.script_objective) || isinarray(level.var_28c22d88, var_e56f5f30.script_objective)) {
                    if (!isdefined(var_30181301)) {
                        var_30181301 = [];
                    } else if (!isarray(var_30181301)) {
                        var_30181301 = array(var_30181301);
                    }
                    if (!isinarray(var_30181301, var_e56f5f30)) {
                        var_30181301[var_30181301.size] = var_e56f5f30;
                    }
                }
            }
        } else {
            var_30181301 = var_17d40a0f;
        }
        assert(var_30181301.size > 0, "<unknown string>");
        s_point = arraygetclosest(e_player.origin, var_30181301);
        if (isdefined(world.var_f6fb45f7[e_player.name])) {
        }
        e_player vehicle::function_fa8ced6e(s_point.origin, s_point.angles, str_vehicle);
    }
}

// Namespace util/util
// Params 0, eflags: 0x0
// Checksum 0x2f317130, Offset: 0x5070
// Size: 0x200
function function_2020ca4e() {
    while (isdefined(self)) {
        str_result = self waittill(#"vehicle_used", #"enter_vehicle", #"exit_vehicle", #"death");
        if (str_result._notify == "death") {
            if (isdefined(self)) {
                self.var_fb195aa2 = undefined;
                self clientfield::set("vehicle_keyline_toggle", 0);
            }
            return;
        }
        if (isdefined(self)) {
            b_occupied = undefined;
            for (i = 0; i < 4; i++) {
                if (self function_dcef0ba1(i)) {
                    if (self isvehicleseatoccupied(i)) {
                        b_occupied = 1;
                        break;
                    }
                    continue;
                }
                break;
            }
            if (is_true(b_occupied) && !is_true(self.var_fb195aa2)) {
                self clientfield::set("vehicle_keyline_toggle", 1);
                self.var_fb195aa2 = 1;
                continue;
            }
            if (!is_true(b_occupied) && is_true(self.var_fb195aa2)) {
                self.var_fb195aa2 = undefined;
                self clientfield::set("vehicle_keyline_toggle", 0);
            }
        }
    }
}

// Namespace util/util
// Params 5, eflags: 0x2 linked
// Checksum 0x304c3c6b, Offset: 0x5278
// Size: 0x312
function can_see_ai(var_428cf68a, ai, latency, var_593afcc1, var_8230ceac) {
    currenttime = gettime();
    if (!isdefined(latency)) {
        latency = 0;
    }
    frompoint = var_428cf68a;
    entnum = -1;
    if (!isdefined(var_8230ceac)) {
        var_8230ceac = ai;
    }
    if (isentity(var_428cf68a)) {
        if (!isdefined(var_593afcc1)) {
            var_593afcc1 = var_428cf68a;
        }
        entnum = var_428cf68a getentitynumber();
        if (isdefined(ai.var_830332de) && ai.var_830332de[entnum] + latency >= currenttime) {
            assert(isdefined(ai.var_59c5720b[entnum]));
            return ai.var_59c5720b[entnum];
        }
        if (!isdefined(ai.var_830332de)) {
            ai.var_830332de = [];
            ai.var_59c5720b = [];
        }
        ai.var_830332de[entnum] = currenttime;
        if (!within_fov(var_428cf68a.origin, var_428cf68a.angles, ai.origin, 0.766)) {
            ai.var_59c5720b[entnum] = 0;
            return 0;
        }
        if (isplayer(var_428cf68a) || isai(var_428cf68a)) {
            frompoint = var_428cf68a geteye();
        }
    }
    feetorigin = ai.origin;
    if (sighttracepassed(frompoint, feetorigin, 1, var_593afcc1, var_8230ceac)) {
        if (entnum >= 0) {
            ai.var_59c5720b[entnum] = 1;
        }
        return 1;
    }
    eyeorigin = ai geteye();
    if (sighttracepassed(frompoint, eyeorigin, 1, var_593afcc1, var_8230ceac)) {
        if (entnum >= 0) {
            ai.var_59c5720b[entnum] = 1;
        }
        return 1;
    }
    midorigin = (eyeorigin + feetorigin) * 0.5;
    if (sighttracepassed(frompoint, midorigin, 1, var_593afcc1, var_8230ceac)) {
        if (entnum >= 0) {
            ai.var_59c5720b[entnum] = 1;
        }
        return 1;
    }
    if (entnum >= 0) {
        ai.var_59c5720b[entnum] = 0;
    }
    return 0;
}

// Namespace util/util
// Params 13, eflags: 0x2 linked
// Checksum 0xb28c6af1, Offset: 0x5598
// Size: 0x1dc
function create_cursor_hint(tag, originoffset = (0, 0, 0), hintstring, var_2b3af0de = 85, var_2625ed95 = 0.25, var_49394206, prompt = #"use", var_42dabd79, var_b42660a4, var_3a0702cc, ignorecollision, var_a9618cc5, validatefunc) {
    if (isdefined(tag) && (tag == #"" || !isdefined(self gettagorigin(tag)))) {
        tag = undefined;
    }
    var_754bedbb = !isdefined(tag);
    var_248cbbcf = {};
    var_248cbbcf.var_4d98c3ce = hintstring;
    var_248cbbcf.complete_callback = var_49394206;
    var_248cbbcf.tag = tag;
    var_248cbbcf.offset = originoffset;
    var_248cbbcf.var_de6f0004 = var_2625ed95;
    var_248cbbcf.var_87c991f3 = var_2b3af0de;
    var_248cbbcf.var_754bedbb = var_754bedbb;
    var_248cbbcf.var_71b9f0c0 = var_42dabd79;
    var_248cbbcf.var_5e83875a = var_b42660a4;
    var_248cbbcf.var_8ce60046 = var_3a0702cc;
    var_248cbbcf.var_9a27c4ee = ignorecollision;
    var_248cbbcf.var_be77841a = var_a9618cc5;
    var_248cbbcf.var_531201f1 = validatefunc;
    self prompts::function_c97a48c7(prompt, var_248cbbcf);
}

// Namespace util/util
// Params 1, eflags: 0x2 linked
// Checksum 0x5c253c19, Offset: 0x5780
// Size: 0x3c
function remove_cursor_hint(prompt = #"use") {
    self prompts::remove(prompt);
}

// Namespace util/util
// Params 3, eflags: 0x0
// Checksum 0x6b1a387e, Offset: 0x57c8
// Size: 0xec
function function_5b2f930e(slot, image, button) {
    self setactionslot(slot, "scripted");
    wait_network_frame(2);
    globallogic_ui::function_9ed5232e("hudItems.actionSlots.actionSlot" + slot + ".image", image, undefined, 1);
    globallogic_ui::function_9ed5232e("hudItems.actionSlots.actionSlot" + slot + ".ammo", -1, undefined, 1);
    if (isdefined(button)) {
        globallogic_ui::function_9ed5232e("hudItems.actionSlots.actionSlot" + slot + ".button", button, undefined, 1);
    }
}

// Namespace util/util
// Params 2, eflags: 0x0
// Checksum 0xae38a99d, Offset: 0x58c0
// Size: 0x44
function function_ae1d1464(slot, var_d108d25b) {
    globallogic_ui::function_9ed5232e("hudItems.actionSlots.actionSlot" + slot + ".isUpdated", var_d108d25b, undefined, 1);
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0x23fa6f45, Offset: 0x5910
// Size: 0xa4
function function_658a8750(slot) {
    self setactionslot(slot, "");
    globallogic_ui::function_2ec075a9("hudItems.actionSlots.actionSlot" + slot + ".image");
    globallogic_ui::function_2ec075a9("hudItems.actionSlots.actionSlot" + slot + ".ammo");
    globallogic_ui::function_2ec075a9("hudItems.actionSlots.actionSlot" + slot + ".button");
}

// Namespace util/util
// Params 2, eflags: 0x0
// Checksum 0x605cc82e, Offset: 0x59c0
// Size: 0xbc
function function_49cff8b0(slot, var_8dab40d1 = 1) {
    type = "scripted";
    if (!var_8dab40d1) {
        type = "";
    }
    if (isarray(slot)) {
        for (i = 1; i <= slot.size; i++) {
            self setactionslot(i, type);
        }
        return;
    }
    self setactionslot(slot, type);
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0xe556c97f, Offset: 0x5a88
// Size: 0xbc
function give_offhand_weapon(weapon) {
    offhandslot = 0;
    if (isdefined(self._gadgets_player[offhandslot])) {
        self takeweapon(self._gadgets_player[offhandslot]);
    }
    self giveweapon(weapon);
    slot = self gadgetgetslot(weapon);
    self gadgetpowerset(slot, 100);
    self gadgetcharging(slot, 0);
}

// Namespace util/util
// Params 2, eflags: 0x0
// Checksum 0x177b84f3, Offset: 0x5b50
// Size: 0xf6
function are_enemies_nearby(origin, radius = 2000) {
    var_d3a6fe2b = self getenemiesinradius(origin, radius);
    foreach (enemy in var_d3a6fe2b) {
        if (isalive(enemy) && !is_true(enemy.in_melee_death)) {
            return true;
        }
    }
    return false;
}

// Namespace util/util
// Params 6, eflags: 0x2 linked
// Checksum 0x2aac7f8c, Offset: 0x5c50
// Size: 0x184
function function_5045bb33(var_6d369e51, var_c8ae7644, var_5816725d, var_c0bf04f, var_724aaf0a, var_18542db1 = 1) {
    assert(isplayer(self));
    self notify(#"hash_b771812661a9fdc");
    self endon(#"hash_b771812661a9fdc");
    if (!isdefined(var_5816725d)) {
        var_5816725d = 0.2;
    }
    if (!isdefined(var_c0bf04f)) {
        var_c0bf04f = var_5816725d;
    }
    if (!isdefined(var_724aaf0a)) {
        var_724aaf0a = "_never_";
    }
    var_eb7c3686 = 1 - (1 - var_c8ae7644) * var_18542db1;
    setslowmotion(1, var_c8ae7644, var_5816725d, 1, var_eb7c3686);
    wait_time = var_6d369e51 * var_c8ae7644 + var_5816725d * ((1 - var_c8ae7644) * 0.5 + var_c8ae7644);
    self waittilltimeout(wait_time, var_724aaf0a);
    setslowmotion(var_c8ae7644, 1, var_c0bf04f, var_eb7c3686, 1);
}

// Namespace util/util
// Params 2, eflags: 0x2 linked
// Checksum 0x30b59658, Offset: 0x5de0
// Size: 0x7c
function blend_movespeedscale(n_scale, n_time = 0) {
    player = self;
    if (!isplayer(player)) {
        player = getplayers()[0];
    }
    player thread player_speed_proc(n_scale, n_time);
}

// Namespace util/util
// Params 2, eflags: 0x2 linked
// Checksum 0xe0cec0c7, Offset: 0x5e68
// Size: 0x144
function player_speed_proc(n_speed, n_time) {
    self notify("59e496bf94583510");
    self endon("59e496bf94583510");
    var_ab3e25a2 = self getmovespeedscale();
    var_7f64fd7d = n_speed;
    if (isdefined(n_time)) {
        n_range = var_7f64fd7d - var_ab3e25a2;
        n_cycles = n_time / float(function_60d95f53()) / 1000;
        n_fraction = n_range / n_cycles;
        while (abs(var_7f64fd7d - var_ab3e25a2) > abs(n_fraction * 1.1)) {
            var_ab3e25a2 += n_fraction;
            self setmovespeedscale(var_ab3e25a2);
            waitframe(1);
        }
    }
    self setmovespeedscale(var_7f64fd7d);
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0x91e93fa5, Offset: 0x5fb8
// Size: 0x74
function blend_movespeedscale_default(n_time = 0) {
    player = self;
    if (!isplayer(player)) {
        player = getplayers()[0];
    }
    player blend_movespeedscale(1, n_time);
}

// Namespace util/util
// Params 3, eflags: 0x2 linked
// Checksum 0x7a7e1f22, Offset: 0x6038
// Size: 0x108
function function_27f5f662(var_6aa6a4ac, var_9e5871fd, delay = 4) {
    level endon(var_9e5871fd);
    var_29a0fa27 = 0;
    while (!flag::get(var_9e5871fd) && var_29a0fa27 < var_6aa6a4ac.size) {
        if (soundexists(var_6aa6a4ac[var_29a0fa27])) {
            if (self != level) {
                self dialogue::queue(var_6aa6a4ac[var_29a0fa27]);
            } else {
                self dialogue::radio(var_6aa6a4ac[var_29a0fa27]);
            }
        } else {
            iprintlnbold(var_6aa6a4ac[var_29a0fa27]);
        }
        var_29a0fa27++;
        wait(delay);
        delay *= 2;
    }
}

// Namespace util/util
// Params 1, eflags: 0x6 linked
// Checksum 0xefdffd1b, Offset: 0x6148
// Size: 0x9c
function private function_b7367cc0(parms) {
    if (!is_true(level.var_4032a278)) {
        lines = strtok(parms, " ;,");
        assert(lines.size == 3, "<unknown string>");
        self dialog_gender_vo(lines[0], lines[1], lines[2]);
    }
}

// Namespace util/util
// Params 1, eflags: 0x6 linked
// Checksum 0x45e74a27, Offset: 0x61f0
// Size: 0xa4
function private function_244408f7(parms) {
    if (!is_true(level.var_4032a278)) {
        lines = strtok(parms, " ;,");
        assert(lines.size == 4, "<unknown string>");
        self dialog_faction_vo(lines[0], lines[1], lines[2], lines[3]);
    }
}

// Namespace util/util
// Params 4, eflags: 0x2 linked
// Checksum 0x8fe38754, Offset: 0x62a0
// Size: 0x12a
function dialog_faction_vo(var_d9823b39, var_be096d26, var_7f1981e0, var_500f33b5) {
    player = getplayers()[0];
    if (!isplayer(player)) {
        return;
    }
    switch (player namespace_70eba6e6::function_b6a02677()) {
    case 1:
        self function_b6f9da41(var_d9823b39);
        break;
    case 2:
        self function_b6f9da41(var_be096d26);
        break;
    case 3:
        self function_b6f9da41(var_7f1981e0);
        break;
    case 0:
        self function_b6f9da41(var_500f33b5);
        break;
    }
}

// Namespace util/util
// Params 3, eflags: 0x2 linked
// Checksum 0x7044620b, Offset: 0x63d8
// Size: 0xfa
function function_c76fa9e1(var_42ff3045, var_d47e50e, var_97085828) {
    player = getplayers()[0];
    if (!isplayer(player)) {
        return;
    }
    switch (player player_decision::function_1c4fb6d4()) {
    case 0:
        self function_b6f9da41(var_42ff3045);
        break;
    case 1:
        self function_b6f9da41(var_d47e50e);
        break;
    case 2:
        self function_b6f9da41(var_97085828);
        break;
    }
}

// Namespace util/util
// Params 3, eflags: 0x2 linked
// Checksum 0xaca23a84, Offset: 0x64e0
// Size: 0x102
function dialog_gender_vo(var_fb68995e, var_75afe953, var_7c7241a) {
    player = getplayers()[0];
    if (!isplayer(player)) {
        return;
    }
    switch (player namespace_70eba6e6::function_33bf99f8(1)) {
    case 0:
        self function_b6f9da41(var_7c7241a);
        break;
    case 1:
        self function_b6f9da41(var_fb68995e);
        break;
    case 2:
        self function_b6f9da41(var_75afe953);
        break;
    }
}

// Namespace util/util
// Params 1, eflags: 0x2 linked
// Checksum 0xdab61f3a, Offset: 0x65f0
// Size: 0x6c
function function_b6f9da41(str_vo) {
    if (isdefined(str_vo) && isstring(str_vo)) {
        if (self != level) {
            self dialogue::queue(str_vo);
            return;
        }
        self dialogue::radio(str_vo);
    }
}

// Namespace util/util
// Params 4, eflags: 0x0
// Checksum 0x9a529113, Offset: 0x6668
// Size: 0xd2
function function_d8ae866d(var_d9823b39, var_be096d26, var_7f1981e0, var_500f33b5) {
    player = getplayers()[0];
    switch (player namespace_70eba6e6::function_b6a02677()) {
    case 1:
        return var_d9823b39;
    case 2:
        return var_be096d26;
    case 3:
        return var_7f1981e0;
    case 0:
        return var_500f33b5;
    }
}

// Namespace util/util
// Params 3, eflags: 0x0
// Checksum 0xb6dbac05, Offset: 0x6748
// Size: 0xb2
function function_a1a0fe0c(var_42ff3045, var_d47e50e, var_97085828) {
    player = getplayers()[0];
    switch (player player_decision::function_1c4fb6d4()) {
    case 0:
        return var_42ff3045;
    case 1:
        return var_d47e50e;
    case 2:
        return var_97085828;
    }
}

// Namespace util/util
// Params 3, eflags: 0x0
// Checksum 0x6e46920b, Offset: 0x6808
// Size: 0xba
function function_3ac6fa36(var_fb68995e, var_75afe953, var_7c7241a) {
    player = getplayers()[0];
    switch (player namespace_70eba6e6::function_33bf99f8(1)) {
    case 0:
        return var_7c7241a;
    case 1:
        return var_fb68995e;
    case 2:
        return var_75afe953;
    }
}

// Namespace util/util
// Params 0, eflags: 0x2 linked
// Checksum 0x83e1edb7, Offset: 0x68d0
// Size: 0xc6
function function_875955a() {
    player = getplayers()[0];
    switch (player player_decision::function_1c4fb6d4()) {
    case 0:
        var_ea95c1e7 = "park";
        break;
    case 1:
        var_ea95c1e7 = "lazar";
        break;
    case 2:
    default:
        var_ea95c1e7 = "sims";
        break;
    }
    return var_ea95c1e7;
}

// Namespace util/util
// Params 4, eflags: 0x2 linked
// Checksum 0xf5315b2e, Offset: 0x69a0
// Size: 0x344
function function_a5318821(var_79a934ad = 1, var_6fa12df4 = 0, var_64b54706 = undefined, var_20900fd = 0) {
    if (var_79a934ad) {
        self.var_4fc36735 = 1;
        self namespace_70eba6e6::function_516d14be();
    } else {
        self.var_4fc36735 = 0;
    }
    thread function_62e48a();
    if (var_20900fd) {
        return;
    }
    var_f82db92c = get_map_name();
    if (isdefined(var_64b54706)) {
        var_f82db92c = var_64b54706;
    }
    var_1afba46e = [#"cp_rus_amerika", #"cp_nam_armada", #"cp_rus_duga", #"cp_rus_kgb", #"cp_nam_prisoner", #"cp_nic_revolucion", #"cp_ger_hub", #"cp_rus_siege", #"cp_ger_stakeout", #"hash_75e51938faa93db4"];
    for (lookup = 0; lookup < var_1afba46e.size; lookup++) {
        if (var_1afba46e[lookup] == var_f82db92c) {
            break;
        }
    }
    if (lookup >= var_1afba46e.size) {
        println("<unknown string>" + var_f82db92c + "<unknown string>");
        return;
    }
    var_918f15a4 = self namespace_70eba6e6::function_33bf99f8(2) - 1;
    var_55f32da2 = lookup * 2 + var_918f15a4 + 3;
    self setcharacterbodytype(var_55f32da2);
    var_cc362ad9 = self namespace_70eba6e6::function_e86cb765() - 1 + 8 * var_6fa12df4;
    self setcharacteroutfit(var_cc362ad9);
    var_50faf85d = self namespace_70eba6e6::function_33bf99f8(1);
    setsaveddvar(#"hash_270ca5acff742bb9", var_50faf85d);
}

// Namespace util/util
// Params 0, eflags: 0x2 linked
// Checksum 0x58f97222, Offset: 0x6cf0
// Size: 0xfa
function function_de500b59() {
    mapname = get_map_name();
    if (mapname === #"cp_takedown" || mapname === #"cp_rus_yamantau" || mapname === #"cp_sidemission_takedown" || mapname === #"cp_sidemission_tundra") {
        return #"hash_4d5f6c0e8d8bec20";
    }
    if (mapname === #"cp_rus_kgb") {
        if (getplayers()[0].var_4fc36735 === 1) {
            return #"hash_40c037a247e8b24f";
        } else {
            return #"hash_59ecd456f45762d4";
        }
    }
    return #"hash_40c037a247e8b24f";
}

// Namespace util/util
// Params 0, eflags: 0x2 linked
// Checksum 0x4c0eb8a5, Offset: 0x6df8
// Size: 0x14c
function function_62e48a() {
    missionname = savegame::function_8136eb5a();
    charactername = function_de500b59();
    var_d3f10235 = collectibles::function_7be39f53(missionname);
    var_68be2f7a = collectibles::function_9f976c54(missionname);
    globallogic_ui::function_9ed5232e("cp_start_menu.missionName", hash(missionname), 0, 1);
    globallogic_ui::function_9ed5232e("cp_start_menu.characterName", hash(charactername), 0, 1);
    globallogic_ui::function_9ed5232e("cp_start_menu.evidenceEarnedCount", var_d3f10235, 0, 1);
    globallogic_ui::function_9ed5232e("cp_start_menu.evidenceMaxCount", var_68be2f7a, 0, 1);
    globallogic_ui::function_d9f3d3b4("cp_start_menu.updated", 0, 0);
}

// Namespace util/util
// Params 1, eflags: 0x2 linked
// Checksum 0x1b0d203e, Offset: 0x6f50
// Size: 0x70
function getteamindex(team) {
    if (!isdefined(team)) {
        return 0;
    }
    if (team == #"none") {
        return 0;
    }
    if (team == #"allies") {
        return 1;
    }
    if (team == #"axis") {
        return 2;
    }
    return 0;
}

// Namespace util/util
// Params 1, eflags: 0x2 linked
// Checksum 0xe13ca22d, Offset: 0x6fc8
// Size: 0x44
function nvidiaansel_scriptdisable(b_disable) {
    if (function_9d3d451a()) {
        setsaveddvar(#"hash_26b59191d536cbe1", b_disable);
    }
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0x9913434c, Offset: 0x7018
// Size: 0x44
function nvidiaansel_overridecollisionradius(n_radius) {
    if (function_9d3d451a()) {
        setsaveddvar(#"hash_60764845bd5c3f80", n_radius);
    }
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0xdc02650a, Offset: 0x7068
// Size: 0x44
function function_5b433130(n_radius) {
    if (function_9d3d451a()) {
        setsaveddvar(#"hash_469ff38ad6da23d1", n_radius);
    }
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0x44a591b4, Offset: 0x70b8
// Size: 0x44
function function_3909412(b_allow) {
    if (function_9d3d451a()) {
        setsaveddvar(#"hash_5a382c4d43aa1e3f", b_allow);
    }
}

// Namespace util/util
// Params 1, eflags: 0x2 linked
// Checksum 0x13e1d314, Offset: 0x7108
// Size: 0x44
function function_eefca70f(b_allow) {
    if (function_9d3d451a()) {
        setsaveddvar(#"hash_25c492a152a9ee98", b_allow);
    }
}

// Namespace util/util
// Params 1, eflags: 0x2 linked
// Checksum 0x52a972de, Offset: 0x7158
// Size: 0x54
function function_3e65fe0b(enabled = 0) {
    setsaveddvar(#"hash_22e2bc16e5d98b38", is_true(enabled));
}

