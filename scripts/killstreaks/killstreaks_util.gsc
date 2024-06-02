// Atian COD Tools GSC CW decompiler test
#using scripts\abilities\ability_util.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace killstreaks;

// Namespace killstreaks/killstreaks_util
// Params 3, eflags: 0x2 linked
// Checksum 0xa6d0b4b3, Offset: 0x160
// Size: 0x428
function switch_to_last_non_killstreak_weapon(immediate, awayfromball, gameended) {
    if (self.sessionstate === "disconnected") {
        return 0;
    }
    ball = getweapon(#"ball");
    if (isdefined(ball) && self hasweapon(ball) && !is_true(awayfromball)) {
        self switchtoweaponimmediate(ball);
        self disableweaponcycling();
        self disableoffhandweapons();
    } else if (is_true(self.laststand)) {
        if (isdefined(self.laststandpistol) && self hasweapon(self.laststandpistol)) {
            self switchtoweapon(self.laststandpistol);
        }
    } else if (isdefined(self.lastnonkillstreakweapon) && self hasweapon(self.lastnonkillstreakweapon) && self getcurrentweapon() != self.lastnonkillstreakweapon) {
        if (ability_util::is_hero_weapon(self.lastnonkillstreakweapon)) {
            if (self.lastnonkillstreakweapon.gadget_heroversion_2_0) {
                if (self.lastnonkillstreakweapon.isgadget && self getammocount(self.lastnonkillstreakweapon) > 0) {
                    slot = self gadgetgetslot(self.lastnonkillstreakweapon);
                    if (self util::gadget_is_in_use(slot)) {
                        return self switchtoweapon(self.lastnonkillstreakweapon);
                    } else {
                        return 1;
                    }
                }
            } else if (self getammocount(self.lastnonkillstreakweapon) > 0) {
                return self switchtoweapon(self.lastnonkillstreakweapon);
            }
            if (is_true(awayfromball) && isdefined(self.lastdroppableweapon) && self hasweapon(self.lastdroppableweapon)) {
                self switchtoweapon(self.lastdroppableweapon);
            } else {
                self switchtoweapon();
            }
            return 1;
        } else if (is_true(immediate)) {
            self switchtoweaponimmediate(self.lastnonkillstreakweapon, is_true(gameended));
        } else {
            self switchtoweapon(self.lastnonkillstreakweapon);
        }
    } else if (isdefined(self.lastdroppableweapon) && self hasweapon(self.lastdroppableweapon) && self getcurrentweapon() != self.lastdroppableweapon) {
        self switchtoweapon(self.lastdroppableweapon);
    } else {
        return 0;
    }
    return 1;
}

// Namespace killstreaks/killstreaks_util
// Params 1, eflags: 0x2 linked
// Checksum 0x5a1eb338, Offset: 0x590
// Size: 0x4c
function hasuav(team_or_entnum) {
    if (!isdefined(level.activeuavs)) {
        return true;
    }
    if (!isdefined(level.activeuavs[team_or_entnum])) {
        return false;
    }
    return level.activeuavs[team_or_entnum] > 0;
}

// Namespace killstreaks/killstreaks_util
// Params 1, eflags: 0x2 linked
// Checksum 0x20449c3a, Offset: 0x5e8
// Size: 0x34
function hassatellite(team_or_entnum) {
    if (!isdefined(level.activesatellites)) {
        return true;
    }
    return level.activesatellites[team_or_entnum] > 0;
}

// Namespace killstreaks/killstreaks_util
// Params 1, eflags: 0x2 linked
// Checksum 0x9e50fbde, Offset: 0x628
// Size: 0x3c
function function_f479a2ff(weapon) {
    if (isdefined(level.var_3ff1b984) && isdefined(level.var_3ff1b984[weapon])) {
        return true;
    }
    return false;
}

// Namespace killstreaks/killstreaks_util
// Params 1, eflags: 0x2 linked
// Checksum 0xaa6487f8, Offset: 0x670
// Size: 0x8c
function function_e3a30c69(weapon) {
    assert(isdefined(isdefined(level.killstreakweapons[weapon])));
    killstreak = level.killstreaks[level.killstreakweapons[weapon]];
    return isdefined(killstreak.script_bundle.var_a82b593f) ? killstreak.script_bundle.var_a82b593f : 0;
}

// Namespace killstreaks/killstreaks_util
// Params 1, eflags: 0x2 linked
// Checksum 0x60a66228, Offset: 0x708
// Size: 0x70
function is_killstreak_weapon(weapon) {
    if (!isdefined(weapon)) {
        return false;
    }
    if (weapon == level.weaponnone || weapon.notkillstreak) {
        return false;
    }
    if (weapon.isspecificuse || is_weapon_associated_with_killstreak(weapon)) {
        return true;
    }
    return false;
}

// Namespace killstreaks/killstreaks_util
// Params 1, eflags: 0x2 linked
// Checksum 0xaaccaa42, Offset: 0x780
// Size: 0x5a
function get_killstreak_weapon(killstreak) {
    if (!isdefined(killstreak)) {
        return level.weaponnone;
    }
    assert(isdefined(level.killstreaks[killstreak]));
    return level.killstreaks[killstreak].weapon;
}

// Namespace killstreaks/killstreaks_util
// Params 1, eflags: 0x2 linked
// Checksum 0x2d9eae6a, Offset: 0x7e8
// Size: 0x1e
function function_c5927b3f(weapon) {
    return isdefined(level.var_b1dfdc3b[weapon]);
}

// Namespace killstreaks/killstreaks_util
// Params 1, eflags: 0x2 linked
// Checksum 0xd0267ce9, Offset: 0x810
// Size: 0x1e
function is_weapon_associated_with_killstreak(weapon) {
    return isdefined(level.killstreakweapons[weapon]);
}

// Namespace killstreaks/killstreaks_util
// Params 0, eflags: 0x2 linked
// Checksum 0x67003f1b, Offset: 0x838
// Size: 0xa2
function function_4a1fb0f() {
    onkillstreak = 0;
    if (!isdefined(self.pers[#"kill_streak_before_death"])) {
        self.pers[#"kill_streak_before_death"] = 0;
    }
    streakplusone = self.pers[#"kill_streak_before_death"] + 1;
    if (self.pers[#"kill_streak_before_death"] >= 5) {
        onkillstreak = 1;
    }
    return onkillstreak;
}

// Namespace killstreaks/killstreaks_util
// Params 1, eflags: 0x2 linked
// Checksum 0x628ba5c1, Offset: 0x8e8
// Size: 0x7e
function get_killstreak_team_kill_penalty_scale(weapon) {
    killstreak = get_killstreak_for_weapon(weapon);
    if (!isdefined(killstreak)) {
        return 1;
    }
    return isdefined(level.killstreaks[killstreak].teamkillpenaltyscale) ? level.killstreaks[killstreak].teamkillpenaltyscale : 1;
}

// Namespace killstreaks/killstreaks_util
// Params 1, eflags: 0x2 linked
// Checksum 0x66e5aa61, Offset: 0x970
// Size: 0x5e
function get_killstreak_for_weapon(weapon) {
    if (!isdefined(level.killstreakweapons)) {
        return undefined;
    }
    if (isdefined(level.killstreakweapons[weapon])) {
        return level.killstreakweapons[weapon];
    }
    return level.killstreakweapons[weapon.rootweapon];
}

// Namespace killstreaks/killstreaks_util
// Params 1, eflags: 0x2 linked
// Checksum 0xcdb33f07, Offset: 0x9d8
// Size: 0x62
function function_73b4659(killstreak) {
    if (isdefined(killstreak)) {
        prefix = "inventory_";
        if (strstartswith(killstreak, prefix)) {
            killstreak = getsubstr(killstreak, prefix.size);
        }
    }
    return killstreak;
}

// Namespace killstreaks/killstreaks_util
// Params 1, eflags: 0x2 linked
// Checksum 0xf6c8a2a6, Offset: 0xa48
// Size: 0x42
function get_killstreak_for_weapon_for_stats(weapon) {
    killstreak = get_killstreak_for_weapon(weapon);
    return function_73b4659(killstreak);
}

// Namespace killstreaks/killstreaks_util
// Params 1, eflags: 0x2 linked
// Checksum 0x9dcab9f9, Offset: 0xa98
// Size: 0x108
function function_a2c375bb(killstreaktype) {
    if (!isdefined(killstreaktype)) {
        return undefined;
    }
    if (self.usingkillstreakfrominventory === 1) {
        return 3;
    }
    killstreak_weapon = get_killstreak_weapon(killstreaktype);
    keys = getarraykeys(self.killstreak);
    foreach (key in keys) {
        if (self.killstreak[key] === killstreak_weapon.rootweapon.name) {
            return key;
        }
    }
    return undefined;
}

// Namespace killstreaks/killstreaks_util
// Params 2, eflags: 0x2 linked
// Checksum 0xf84c267, Offset: 0xba8
// Size: 0xca
function function_fde227c6(weapon, var_1ee97554) {
    assert(weapon.iscarriedkillstreak);
    assert(var_1ee97554.iscarriedkillstreak);
    if (weapon.var_6f41c2a9) {
        assert(isdefined(level.var_6110cb51[var_1ee97554]));
        assert(level.var_6110cb51[var_1ee97554] != level.weaponnone);
        return level.var_6110cb51[var_1ee97554];
    }
    return var_1ee97554;
}

// Namespace killstreaks/killstreaks_util
// Params 1, eflags: 0x2 linked
// Checksum 0x4226b59d, Offset: 0xc80
// Size: 0xd4
function function_fa6e0467(weapon) {
    if (weapon.iscliponly) {
        self setweaponammoclip(weapon, self.pers[#"held_killstreak_ammo_count"][weapon]);
        return;
    }
    self setweaponammoclip(weapon, self.pers[#"held_killstreak_clip_count"][weapon]);
    self setweaponammostock(weapon, self.pers[#"held_killstreak_ammo_count"][weapon] - self.pers[#"held_killstreak_clip_count"][weapon]);
}

// Namespace killstreaks/killstreaks_util
// Params 0, eflags: 0x2 linked
// Checksum 0x83af8bc9, Offset: 0xd60
// Size: 0xaa
function function_43f4782d() {
    airsupport_height = struct::get("air_support_height", "targetname");
    if (isdefined(airsupport_height)) {
        height = airsupport_height.origin[2];
    } else {
        println("<unknown string>");
        height = 1000;
        if (isdefined(level.mapcenter)) {
            height += level.mapcenter[2];
        }
    }
    return height;
}

// Namespace killstreaks/killstreaks_util
// Params 6, eflags: 0x6 linked
// Checksum 0xd8fc02eb, Offset: 0xe18
// Size: 0x14c
function private function_a021023d(rotator, angle, radius, var_b468418b, var_93e44bb3, roll) {
    radiusoffset = radius + (var_b468418b == 0 ? 0 : randomint(var_b468418b));
    xoffset = cos(angle) * radiusoffset;
    yoffset = sin(angle) * radiusoffset;
    anglevector = vectornormalize((xoffset, yoffset, 0));
    anglevector *= radius;
    anglevector = (anglevector[0], anglevector[1], 0);
    angle_offset = 90 * (var_93e44bb3 > 0 ? 1 : -1);
    self linkto(rotator, "tag_origin", anglevector, (0, angle + angle_offset, roll));
}

// Namespace killstreaks/killstreaks_util
// Params 5, eflags: 0x2 linked
// Checksum 0x37afc6d9, Offset: 0xf70
// Size: 0x84
function function_67d553c4(rotator, radius, var_b468418b, var_93e44bb3, roll = 0) {
    angle = randomint(360);
    self function_a021023d(rotator, angle, radius, var_b468418b, var_93e44bb3, roll);
}

// Namespace killstreaks/killstreaks_util
// Params 4, eflags: 0x2 linked
// Checksum 0x3aa5c767, Offset: 0x1000
// Size: 0xe4
function function_d7123898(rotator, var_4fb9010a, var_93e44bb3, roll = 0) {
    originoffset = (var_4fb9010a[0], var_4fb9010a[1], rotator.origin[2]) - rotator.origin;
    angle = vectortoangles(originoffset)[1] - rotator.angles[1];
    radius = length(originoffset);
    self function_a021023d(rotator, angle, radius, 0, var_93e44bb3, roll);
}

// Namespace killstreaks/killstreaks_util
// Params 5, eflags: 0x2 linked
// Checksum 0xedc598d0, Offset: 0x10f0
// Size: 0x188
function function_f3875fb0(var_d22c85cf, height_offset, var_b6417305, var_93e44bb3, var_e690ed4e = 0) {
    height = int(function_43f4782d()) + height_offset;
    var_564cfb64 = (isdefined(var_d22c85cf[0]) ? var_d22c85cf[0] : level.mapcenter[0], isdefined(var_d22c85cf[1]) ? var_d22c85cf[1] : level.mapcenter[1], height);
    rotator = spawn("script_model", var_564cfb64);
    rotator setmodel(#"tag_origin");
    rotator.angles = (0, 115, 0);
    rotator hide();
    rotator thread function_1ddb2653(var_b6417305, var_93e44bb3);
    if (var_e690ed4e) {
        rotator thread function_8294e9b3();
    }
    rotator setforcenocull();
    return rotator;
}

// Namespace killstreaks/killstreaks_util
// Params 2, eflags: 0x2 linked
// Checksum 0xd6374808, Offset: 0x1280
// Size: 0x66
function function_1ddb2653(seconds, direction) {
    self endon(#"death");
    for (;;) {
        self rotateyaw(360 * (direction > 0 ? 1 : -1), seconds);
        wait(seconds);
    }
}

// Namespace killstreaks/killstreaks_util
// Params 0, eflags: 0x2 linked
// Checksum 0xbfb99061, Offset: 0x12f0
// Size: 0x11e
function function_8294e9b3() {
    self endon(#"death");
    centerorigin = self.origin;
    for (;;) {
        z = randomintrange(-200, -100);
        time = randomintrange(3, 6);
        self moveto(centerorigin + (0, 0, z), time, 1, 1);
        wait(time);
        z = randomintrange(100, 200);
        time = randomintrange(3, 6);
        self moveto(centerorigin + (0, 0, z), time, 1, 1);
        wait(time);
    }
}

// Namespace killstreaks/killstreaks_util
// Params 1, eflags: 0x2 linked
// Checksum 0xbb651112, Offset: 0x1418
// Size: 0xc4
function function_5a7ecb6b(var_56422be = 0.01) {
    self endon(#"death");
    scale = 0.1;
    for (scalestep = 0.1; scale < 1; scalestep -= var_56422be) {
        self setscale(scale);
        waitframe(1);
        scale += scalestep;
        if (scalestep > var_56422be + 0.01) {
        }
    }
    self setscale(1);
}

// Namespace killstreaks/killstreaks_util
// Params 1, eflags: 0x2 linked
// Checksum 0x6bdb51a2, Offset: 0x14e8
// Size: 0x11c
function function_3696d106(var_56422be = 0.001) {
    self endon(#"death");
    if (target_istarget(self)) {
        target_remove(self);
    }
    if (issentient(self)) {
        self function_60d50ea4();
    }
    scale = 0.99;
    for (scalestep = 0.01; scale > 0.01; scalestep += var_56422be) {
        self setscale(scale);
        waitframe(1);
        scale -= scalestep;
        if (scalestep < 0.1) {
        }
    }
    self hide();
}

// Namespace killstreaks/killstreaks_util
// Params 2, eflags: 0x2 linked
// Checksum 0x6cfd22bf, Offset: 0x1610
// Size: 0xaa
function function_e729ccee(attacker, weapon) {
    if (isdefined(attacker.owner)) {
        attacker = attacker.owner;
    }
    killstreaktype = get_killstreak_for_weapon(weapon);
    if (isdefined(killstreaktype) && (killstreaktype == "planemortar" || killstreaktype == "remote_missile" || killstreaktype == "straferun")) {
        attacker.(killstreaktype + "_hitconfirmed") = 1;
    }
}

// Namespace killstreaks/killstreaks_util
// Params 3, eflags: 0x2 linked
// Checksum 0x73067865, Offset: 0x16c8
// Size: 0xe2
function function_47b44bcc(attacker, weapon, aircraft) {
    if (isdefined(attacker.owner)) {
        attacker = attacker.owner;
    }
    killstreaktype = get_killstreak_for_weapon(weapon);
    if (isdefined(killstreaktype) && (killstreaktype == "planemortar" || killstreaktype == "remote_missile" || killstreaktype == "straferun")) {
        if (aircraft === 1) {
            attacker.(killstreaktype + "_killAircraft") = 1;
            return;
        }
        attacker.(killstreaktype + "_killGroundVehicle") = 1;
    }
}

// Namespace killstreaks/killstreaks_util
// Params 0, eflags: 0x2 linked
// Checksum 0xf8620692, Offset: 0x17b8
// Size: 0x40
function function_59e2c378() {
    if (is_true(level.var_e80a117f) && self arecontrolsfrozen()) {
        return false;
    }
    return true;
}

// Namespace killstreaks/killstreaks_util
// Params 3, eflags: 0x2 linked
// Checksum 0xb07f5f71, Offset: 0x1800
// Size: 0x1bc
function function_eb52ba7(killstreaktype, team, killstreak_id) {
    var_88dc634d = hash(killstreaktype);
    if (isdefined(self.var_9fa3bd36[killstreak_id]) || isdefined(self.var_63fa6458[var_88dc634d])) {
        return;
    }
    session = {#spawnid:getplayerspawnid(self), #name:var_88dc634d, #starttime:function_f8d53445(), #endtime:0, #team:team, #kills:0, #var_e72137e8:#"hash_49690d3b97372410", #var_6e1d768e:#""};
    weapon = get_killstreak_weapon(killstreaktype);
    if (weapon.iscarriedkillstreak === 1) {
        if (!isdefined(self.var_63fa6458)) {
            self.var_63fa6458 = [];
        }
        self.var_63fa6458[var_88dc634d] = session;
        return;
    }
    if (!isdefined(self.var_9fa3bd36)) {
        self.var_9fa3bd36 = [];
    }
    self.var_9fa3bd36[killstreak_id] = session;
}

// Namespace killstreaks/killstreaks_util
// Params 3, eflags: 0x2 linked
// Checksum 0xe7dbc87e, Offset: 0x19c8
// Size: 0xce
function function_fda235cf(killstreaktype, killstreak_id, var_e72137e8) {
    var_571c684 = function_73b4659(killstreaktype);
    if (isdefined(level.var_11e725c2[var_571c684])) {
        var_4fbb4b53 = level.var_11e725c2[var_571c684];
    } else {
        var_4fbb4b53 = &function_79e49b15;
    }
    params = {#killstreaktype:var_571c684, #killstreak_id:killstreak_id, #var_e72137e8:var_e72137e8};
    [[ var_4fbb4b53 ]](params);
}

// Namespace killstreaks/killstreaks_util
// Params 1, eflags: 0x2 linked
// Checksum 0x1f87d7c3, Offset: 0x1aa0
// Size: 0x22c
function function_79e49b15(params) {
    killstreaktype = params.killstreaktype;
    killstreak_id = params.killstreak_id;
    var_e72137e8 = params.var_e72137e8;
    weapon = get_killstreak_weapon(killstreaktype);
    if (weapon.iscarriedkillstreak === 1) {
        var_88dc634d = hash(killstreaktype);
        if (isdefined(self.var_63fa6458[var_88dc634d])) {
            self.var_63fa6458[var_88dc634d].endtime = function_f8d53445();
            self.var_63fa6458[var_88dc634d].var_e72137e8 = isdefined(var_e72137e8) ? var_e72137e8 : self.var_63fa6458[var_88dc634d].var_e72137e8;
            var_8756d70f = function_16a1f9b6();
            self function_678f57c8(var_8756d70f, self.var_63fa6458[var_88dc634d]);
            self.var_63fa6458[var_88dc634d] = undefined;
        }
        return;
    }
    if (isdefined(self.var_9fa3bd36[killstreak_id])) {
        self.var_9fa3bd36[killstreak_id].endtime = function_f8d53445();
        self.var_9fa3bd36[killstreak_id].var_e72137e8 = isdefined(var_e72137e8) ? var_e72137e8 : self.var_9fa3bd36[killstreak_id].var_e72137e8;
        var_8756d70f = function_16a1f9b6();
        self function_678f57c8(var_8756d70f, self.var_9fa3bd36[killstreak_id]);
        self.var_9fa3bd36[killstreak_id] = undefined;
    }
}

// Namespace killstreaks/killstreaks_util
// Params 2, eflags: 0x2 linked
// Checksum 0x7d5b311, Offset: 0x1cd8
// Size: 0x1e2
function function_ef1303ba(end_time, var_e72137e8) {
    if (isdefined(self.var_63fa6458)) {
        foreach (session in self.var_63fa6458) {
            session.endtime = end_time;
            session.var_e72137e8 = isdefined(var_e72137e8) ? var_e72137e8 : session.var_e72137e8;
            var_8756d70f = function_16a1f9b6();
            self function_678f57c8(var_8756d70f, session);
        }
        self.var_63fa6458 = [];
    }
    if (isdefined(self.var_9fa3bd36)) {
        foreach (session in self.var_9fa3bd36) {
            session.endtime = end_time;
            session.var_e72137e8 = isdefined(var_e72137e8) ? var_e72137e8 : session.var_e72137e8;
            var_8756d70f = function_16a1f9b6();
            self function_678f57c8(var_8756d70f, session);
        }
        self.var_9fa3bd36 = [];
    }
}

// Namespace killstreaks/killstreaks_util
// Params 0, eflags: 0x2 linked
// Checksum 0xb433ae79, Offset: 0x1ec8
// Size: 0x4a
function function_16a1f9b6() {
    if (sessionmodeiszombiesgame()) {
        var_8756d70f = #"hash_5c02726a4663b7dd";
    } else {
        var_8756d70f = #"hash_25d8f7d855b13f45";
    }
    return var_8756d70f;
}

// Namespace killstreaks/killstreaks_util
// Params 0, eflags: 0x2 linked
// Checksum 0xbe4bcf6a, Offset: 0x1f20
// Size: 0x4a
function function_cb0594d5() {
    if (sessionmodeiszombiesgame()) {
        var_8756d70f = #"hash_45468d6066fbc34e";
    } else {
        var_8756d70f = #"hash_710b205b26e46446";
    }
    return var_8756d70f;
}

// Namespace killstreaks/killstreaks_util
// Params 3, eflags: 0x2 linked
// Checksum 0x377b8c55, Offset: 0x1f78
// Size: 0x112
function function_e9873ef7(killstreaktype, killstreak_id, var_e72137e8) {
    weapon = get_killstreak_weapon(killstreaktype);
    if (weapon.iscarriedkillstreak === 1) {
        var_88dc634d = hash(killstreaktype);
        if (isdefined(self.var_63fa6458[var_88dc634d])) {
            self.var_63fa6458[var_88dc634d].var_e72137e8 = isdefined(var_e72137e8) ? var_e72137e8 : self.var_63fa6458[var_88dc634d].var_e72137e8;
        }
        return;
    }
    if (isdefined(self.var_9fa3bd36[killstreak_id])) {
        self.var_9fa3bd36[killstreak_id].var_e72137e8 = isdefined(var_e72137e8) ? var_e72137e8 : self.var_9fa3bd36[killstreak_id].var_e72137e8;
    }
}

// Namespace killstreaks/killstreaks_util
// Params 3, eflags: 0x2 linked
// Checksum 0x56286441, Offset: 0x2098
// Size: 0xe2
function function_4aad9803(killstreaktype, killstreak_id, var_6e1d768e) {
    if (!isdefined(var_6e1d768e)) {
        return;
    }
    weapon = get_killstreak_weapon(killstreaktype);
    if (weapon.iscarriedkillstreak === 1) {
        var_88dc634d = hash(killstreaktype);
        if (isdefined(self.var_63fa6458[var_88dc634d])) {
            self.var_63fa6458[var_88dc634d].var_6e1d768e = var_6e1d768e.name;
        }
        return;
    }
    if (isdefined(self.var_9fa3bd36[killstreak_id])) {
        self.var_9fa3bd36[killstreak_id].var_6e1d768e = var_6e1d768e.name;
    }
}

// Namespace killstreaks/killstreaks_util
// Params 2, eflags: 0x2 linked
// Checksum 0x6cccfed2, Offset: 0x2188
// Size: 0x40
function function_1e016087(killstreaktype, var_5c980521) {
    if (!isdefined(level.var_11e725c2)) {
        level.var_11e725c2 = [];
    }
    level.var_11e725c2[killstreaktype] = var_5c980521;
}

