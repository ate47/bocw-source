// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\gestures.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace namespace_9cf4c697;

// Namespace namespace_9cf4c697/namespace_9cf4c697
// Params 0, eflags: 0x5
// Checksum 0x6b8bbfc3, Offset: 0x180
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_182e6e1e0572174a", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_9cf4c697/namespace_9cf4c697
// Params 0, eflags: 0x6 linked
// Checksum 0x1c5b0332, Offset: 0x1c8
// Size: 0x1cc
function private preinit() {
    level.var_e02fab68 = struct::get_array("zipline_start", "script_noteworthy");
    /#
        level thread function_be9add5();
    #/
    level.var_8e1ba65f = [];
    level.var_58e84ce5 = getweapon(#"hash_3089757a990e0f6c");
    foreach (a in level.var_e02fab68) {
        function_2a1bd467(a);
    }
    level.var_e02fab68 = undefined;
    if (sessionmodeiszombiesgame()) {
        callback::on_zipline(&function_7205ee5e);
        callback::function_46609b1(&function_96a812e6);
        callback::on_bleedout(&function_9066dc16);
        callback::on_disconnect(&function_9066dc16);
        callback::add_callback(#"on_vehicle_enter", &function_8307577f);
    }
}

// Namespace namespace_9cf4c697/namespace_9cf4c697
// Params 1, eflags: 0x6 linked
// Checksum 0xf0be67a5, Offset: 0x3a0
// Size: 0x2fa
function private function_733c3cbb(b_hide = 1) {
    if (!is_true(level.var_f30c7ef1)) {
        return;
    }
    if (b_hide) {
        self notsolid();
        if (isentity(self.var_5da09c55.clip)) {
            self.var_5da09c55.clip hidefromplayer(self);
            if (!isdefined(self.var_6d2b99d1)) {
                self.var_6d2b99d1 = [];
            } else if (!isarray(self.var_6d2b99d1)) {
                self.var_6d2b99d1 = array(self.var_6d2b99d1);
            }
            if (!isinarray(self.var_6d2b99d1, self.var_5da09c55.clip)) {
                self.var_6d2b99d1[self.var_6d2b99d1.size] = self.var_5da09c55.clip;
            }
        }
        if (isentity(self.var_7bc01517.clip)) {
            self.var_7bc01517.clip hidefromplayer(self);
            if (!isdefined(self.var_6d2b99d1)) {
                self.var_6d2b99d1 = [];
            } else if (!isarray(self.var_6d2b99d1)) {
                self.var_6d2b99d1 = array(self.var_6d2b99d1);
            }
            if (!isinarray(self.var_6d2b99d1, self.var_7bc01517.clip)) {
                self.var_6d2b99d1[self.var_6d2b99d1.size] = self.var_7bc01517.clip;
            }
        }
        return;
    }
    self solid();
    if (isarray(self.var_6d2b99d1)) {
        foreach (clip in self.var_6d2b99d1) {
            if (isentity(clip)) {
                clip showtoplayer(self);
            }
        }
        self.var_6d2b99d1 = undefined;
    }
}

// Namespace namespace_9cf4c697/namespace_9cf4c697
// Params 0, eflags: 0x2 linked
// Checksum 0x384a972c, Offset: 0x6a8
// Size: 0x19c
function function_7205ee5e() {
    if (isdefined(self.var_5da09c55.trigger) && !isdefined(self.var_c09c6e0a)) {
        self.var_c09c6e0a = self.var_5da09c55.trigger;
        self.var_c09c6e0a setinvisibletoplayer(self);
    }
    if (isdefined(self.var_7bc01517.trigger) && !isdefined(self.var_30b41973)) {
        self.var_30b41973 = self.var_7bc01517.trigger;
        self.var_30b41973 setinvisibletoplayer(self);
    }
    self function_733c3cbb(1);
    self val::set(#"hash_273031a45a7c3032", "takedamage", 0);
    self val::set(#"hash_273031a45a7c3032", "ignoreme", 1);
    self flag::set(#"hash_686d5709e1566aa6");
    if (isdefined(self.var_5da09c55)) {
        self thread function_c54ca80d(self.var_5da09c55);
    }
    self thread function_f7f636b8();
    self thread function_39e551d4();
}

// Namespace namespace_9cf4c697/namespace_9cf4c697
// Params 1, eflags: 0x6 linked
// Checksum 0xf7790471, Offset: 0x850
// Size: 0xb4
function private function_9194becb(n_delay = undefined) {
    self endon(#"disconnect");
    var_e4110fee = self.var_c09c6e0a;
    var_487cfa48 = self.var_30b41973;
    self.var_c09c6e0a = undefined;
    self.var_30b41973 = undefined;
    if (isdefined(n_delay)) {
        wait(n_delay);
    }
    if (isdefined(var_e4110fee)) {
        var_e4110fee setvisibletoplayer(self);
    }
    if (isdefined(var_487cfa48)) {
        var_487cfa48 setvisibletoplayer(self);
    }
}

// Namespace namespace_9cf4c697/namespace_9cf4c697
// Params 0, eflags: 0x2 linked
// Checksum 0x20aa3779, Offset: 0x910
// Size: 0x34
function function_96a812e6() {
    self function_d8f0d6ea();
    self function_9194becb(1);
}

// Namespace namespace_9cf4c697/namespace_9cf4c697
// Params 1, eflags: 0x2 linked
// Checksum 0x600c685, Offset: 0x950
// Size: 0x5c
function function_8307577f(*params) {
    self val::reset(#"hash_273031a45a7c3032", "takedamage");
    self val::reset(#"hash_273031a45a7c3032", "ignoreme");
}

// Namespace namespace_9cf4c697/namespace_9cf4c697
// Params 0, eflags: 0x6 linked
// Checksum 0x82e43486, Offset: 0x9b8
// Size: 0x36
function private function_25fbe208() {
    if (isdefined(self.var_5da09c55)) {
        self.var_5da09c55 function_33111d8d(0);
        self.var_5da09c55 = undefined;
    }
}

// Namespace namespace_9cf4c697/namespace_9cf4c697
// Params 0, eflags: 0x6 linked
// Checksum 0x362507d5, Offset: 0x9f8
// Size: 0x36
function private function_802dd110() {
    if (isdefined(self.var_7bc01517)) {
        self.var_7bc01517 function_33111d8d(0);
        self.var_7bc01517 = undefined;
    }
}

// Namespace namespace_9cf4c697/namespace_9cf4c697
// Params 0, eflags: 0x2 linked
// Checksum 0x95d6cf16, Offset: 0xa38
// Size: 0x34
function function_9066dc16() {
    self function_d8f0d6ea();
    self function_9194becb();
}

// Namespace namespace_9cf4c697/namespace_9cf4c697
// Params 0, eflags: 0x6 linked
// Checksum 0xdcbbafa9, Offset: 0xa78
// Size: 0xbc
function private function_d8f0d6ea() {
    self notify(#"hash_3a0011aea678de3d");
    self function_25fbe208();
    self function_802dd110();
    if (self flag::get(#"hash_686d5709e1566aa6")) {
        self flag::clear(#"hash_686d5709e1566aa6");
        self val::reset_all(#"hash_273031a45a7c3032");
        self function_733c3cbb(0);
    }
}

// Namespace namespace_9cf4c697/namespace_9cf4c697
// Params 1, eflags: 0x2 linked
// Checksum 0x54caccdf, Offset: 0xb40
// Size: 0x224
function function_e415c864(var_5da09c55) {
    if (!isdefined(var_5da09c55.radius)) {
        var_5da09c55.radius = 96;
    }
    if (!isdefined(var_5da09c55.height)) {
        var_5da09c55.height = 128;
    }
    var_912fa366 = spawn("trigger_radius_use", var_5da09c55.origin + (0, 0, 16), 0, var_5da09c55.radius, var_5da09c55.height);
    var_912fa366.var_5da09c55 = var_5da09c55;
    var_912fa366 triggerignoreteam();
    var_912fa366 setvisibletoall();
    var_912fa366 setteamfortrigger(#"none");
    var_912fa366 setcursorhint("HINT_NOICON");
    hint = #"hash_5ca3696cb6c3bea9";
    var_912fa366 sethintstring(hint);
    var_912fa366 callback::on_trigger(&zipline_use);
    var_912fa366 function_2e7a1fba();
    if (sessionmodeiszombiesgame()) {
        if (!isdefined(level.var_f2db450a)) {
            level.var_f2db450a = [];
        } else if (!isarray(level.var_f2db450a)) {
            level.var_f2db450a = array(level.var_f2db450a);
        }
        if (!isinarray(level.var_f2db450a, var_912fa366)) {
            level.var_f2db450a[level.var_f2db450a.size] = var_912fa366;
        }
    }
    return var_912fa366;
}

// Namespace namespace_9cf4c697/namespace_9cf4c697
// Params 1, eflags: 0x0
// Checksum 0x823d7813, Offset: 0xd70
// Size: 0x17c
function function_77fde59c(var_5da09c55) {
    var_912fa366 = spawn("trigger_radius", var_5da09c55.origin + (0, 0, 16), 0, 96, 128);
    var_912fa366.var_5da09c55 = var_5da09c55;
    var_912fa366 triggerignoreteam();
    var_912fa366 setvisibletoall();
    var_912fa366 setteamfortrigger(#"none");
    var_912fa366 callback::on_trigger(&function_5abc3f1f);
    if (sessionmodeiszombiesgame()) {
        if (!isdefined(level.var_f2db450a)) {
            level.var_f2db450a = [];
        } else if (!isarray(level.var_f2db450a)) {
            level.var_f2db450a = array(level.var_f2db450a);
        }
        if (!isinarray(level.var_f2db450a, var_912fa366)) {
            level.var_f2db450a[level.var_f2db450a.size] = var_912fa366;
        }
    }
    return var_912fa366;
}

// Namespace namespace_9cf4c697/namespace_9cf4c697
// Params 1, eflags: 0x2 linked
// Checksum 0x605d81e9, Offset: 0xef8
// Size: 0x1e4
function function_5abc3f1f(trigger_info) {
    player = trigger_info.activator;
    if (!isplayer(player)) {
        return;
    }
    if (player isziplining()) {
        return;
    }
    if (!player isinair()) {
        return;
    }
    velocity = player getvelocity();
    var_aba19503 = self.var_5da09c55.endstruct.origin - self.var_5da09c55.origin;
    var_aba19503 = vectornormalize(var_aba19503);
    velocitymag = vectordot(var_aba19503, velocity);
    if (velocitymag < getdvarfloat(#"hash_22b8f78d9b451771", 170)) {
        return;
    }
    angles = player getangles();
    forward = anglestoforward(angles);
    if (vectordot(var_aba19503, forward) < getdvarfloat(#"hash_1d72909e619429dc", -1)) {
        return;
    }
    player function_827228db(self.var_5da09c55.endstruct.origin, self.var_5da09c55.origin, 1, self.var_5da09c55);
}

// Namespace namespace_9cf4c697/namespace_9cf4c697
// Params 1, eflags: 0x2 linked
// Checksum 0x60f19cc3, Offset: 0x10e8
// Size: 0xda
function function_2a1bd467(struct) {
    endstruct = struct::get(struct.target, "targetname");
    if (!isdefined(endstruct)) {
        return;
    }
    level.var_8e1ba65f[struct.target] = struct;
    if (sessionmodeiszombiesgame()) {
        struct.inuse = 0;
        struct.cooldown = [];
        if (isdefined(struct.script_string)) {
            struct.clip = getent(struct.script_string, "targetname");
        }
    }
    struct.endstruct = endstruct;
    struct.trigger = function_e415c864(struct);
}

// Namespace namespace_9cf4c697/namespace_9cf4c697
// Params 2, eflags: 0x2 linked
// Checksum 0x7e4a5b01, Offset: 0x11d0
// Size: 0x196
function function_f8e9f7d7(player, var_5da09c55) {
    if (player laststand::player_is_in_laststand() && !is_true(player.var_b895a3ff)) {
        return false;
    }
    if (player getstance() == "prone") {
        return false;
    }
    if (!player function_b59f3ecd()) {
        return false;
    }
    if (sessionmodeiszombiesgame()) {
        if (var_5da09c55.inuse > 0) {
            return false;
        }
        entnum = player getentitynumber();
        if (is_true(var_5da09c55.cooldown[entnum]) || is_true(var_5da09c55.endstruct.cooldown[entnum])) {
            return false;
        }
    }
    weapon = player getcurrentweapon();
    if (killstreaks::is_killstreak_weapon(weapon) && weapon.iscarriedkillstreak !== 1 || weapon === level.weaponnone) {
        return false;
    }
    return true;
}

// Namespace namespace_9cf4c697/namespace_9cf4c697
// Params 1, eflags: 0x2 linked
// Checksum 0x835110f8, Offset: 0x1370
// Size: 0x184
function zipline_use(trigger_info) {
    player = trigger_info.activator;
    var_5da09c55 = self.var_5da09c55;
    if (!function_f8e9f7d7(player, var_5da09c55)) {
        return;
    }
    if (sessionmodeiszombiesgame()) {
        var_5da09c55 function_33111d8d(1);
        player.var_5da09c55 = var_5da09c55;
        var_7bc01517 = var_5da09c55.endstruct;
        if (isdefined(var_7bc01517.trigger)) {
            var_7bc01517 function_33111d8d(1);
            player.var_7bc01517 = var_7bc01517;
        }
        if (isdefined(var_5da09c55.trigger)) {
            player.var_c09c6e0a = var_5da09c55.trigger;
            player.var_c09c6e0a setinvisibletoplayer(player);
        }
        if (isdefined(var_7bc01517.trigger)) {
            player.var_30b41973 = var_7bc01517.trigger;
            player.var_30b41973 setinvisibletoplayer(player);
        }
    }
    player function_827228db(var_5da09c55.endstruct.origin, var_5da09c55.origin, 0, var_5da09c55);
}

// Namespace namespace_9cf4c697/namespace_9cf4c697
// Params 4, eflags: 0x2 linked
// Checksum 0xa5d38795, Offset: 0x1500
// Size: 0xd2
function function_827228db(target, start, inair, *var_5da09c55) {
    var_b527f10 = spawn("script_model", self.origin);
    var_b527f10 setmodel("tag_origin");
    var_b527f10 setowner(self);
    var_b527f10 setweapon(level.var_58e84ce5);
    self function_ac5595ff(start, inair, var_5da09c55, var_b527f10);
    self.var_b527f10 = var_b527f10;
}

// Namespace namespace_9cf4c697/namespace_9cf4c697
// Params 1, eflags: 0x6 linked
// Checksum 0xed3ff1de, Offset: 0x15e0
// Size: 0xbc
function private function_c4035adb(zipline) {
    entnum = self getentitynumber();
    if (is_true(zipline.cooldown[entnum])) {
        hint = #"hash_55e4459830283bc7";
    } else if (zipline.inuse > 0) {
        hint = #"hash_d51ffb83d896d2d";
    } else {
        hint = #"hash_5ca3696cb6c3bea9";
    }
    zipline.trigger sethintstringforplayer(self, hint);
}

// Namespace namespace_9cf4c697/namespace_9cf4c697
// Params 1, eflags: 0x6 linked
// Checksum 0xc036ea1c, Offset: 0x16a8
// Size: 0x9c
function private function_33111d8d(inuse) {
    self.inuse += inuse ? 1 : -1;
    assert(self.inuse >= 0 && self.inuse <= 4);
    array::thread_all(getplayers(), &function_c4035adb, self);
}

// Namespace namespace_9cf4c697/namespace_9cf4c697
// Params 0, eflags: 0x6 linked
// Checksum 0x4e3f8a38, Offset: 0x1750
// Size: 0x54
function private function_f7f636b8() {
    self endon(#"death", #"disconnect", #"hash_3a0011aea678de3d");
    wait(0.8);
    self function_25fbe208();
}

// Namespace namespace_9cf4c697/namespace_9cf4c697
// Params 0, eflags: 0x6 linked
// Checksum 0x1fff8cd, Offset: 0x17b0
// Size: 0x54
function private function_39e551d4() {
    self endon(#"death", #"disconnect", #"hash_3a0011aea678de3d");
    wait(5);
    self function_802dd110();
}

// Namespace namespace_9cf4c697/namespace_9cf4c697
// Params 1, eflags: 0x2 linked
// Checksum 0x9b92c26d, Offset: 0x1810
// Size: 0x154
function function_c54ca80d(var_5da09c55) {
    if (sessionmodeiszombiesgame()) {
        entnum = self getentitynumber();
        var_7bc01517 = var_5da09c55.endstruct;
        var_5da09c55.cooldown[entnum] = 1;
        self function_c4035adb(var_5da09c55);
        if (isdefined(var_7bc01517.trigger)) {
            var_7bc01517.cooldown[entnum] = 1;
            self function_c4035adb(var_7bc01517);
        }
        if (isdefined(level.var_aff839f3)) {
            level waittilltimeout(10, level.var_aff839f3);
        } else {
            wait(10);
        }
        var_5da09c55.cooldown[entnum] = undefined;
        if (isdefined(self)) {
            self function_c4035adb(var_5da09c55);
        }
        if (isdefined(var_7bc01517.trigger)) {
            var_7bc01517.cooldown[entnum] = undefined;
            if (isdefined(self)) {
                self function_c4035adb(var_7bc01517);
            }
        }
    }
}

/#

    // Namespace namespace_9cf4c697/namespace_9cf4c697
    // Params 0, eflags: 0x0
    // Checksum 0x323d2ad4, Offset: 0x1970
    // Size: 0x39c
    function function_be9add5() {
        if (!getdvarint(#"hash_13a9fb4be8e86e13", 0)) {
            return;
        }
        ziplines = level.var_e02fab68;
        mapname = util::get_map_name();
        adddebugcommand("<unknown string>" + mapname + "<unknown string>");
        while (getdvarint(#"hash_13a9fb4be8e86e13", 0)) {
            waitframe(1);
            foreach (zipline in ziplines) {
                var_86660d95 = zipline.origin;
                print3d(var_86660d95 + (0, 0, 16), zipline.targetname, (0, 1, 0));
                sphere(var_86660d95, 4, (0, 1, 0));
                circle(var_86660d95, zipline.radius, (0, 1, 0), 1, 1);
                circle(var_86660d95 + (0, 0, zipline.height), zipline.radius, (0, 1, 0), 1, 1);
                line(var_86660d95, zipline.endstruct.origin, (0, 1, 0));
                if (isdefined(level.var_94f4ca81)) {
                    foreach (dataset in level.var_94f4ca81.dataset) {
                        foreach (spawn in dataset.spawns) {
                            spawn_origin = spawn.origin;
                            if (distance2dsquared(spawn_origin, var_86660d95) <= 4096) {
                                cylinder(spawn_origin, spawn_origin + (0, 0, 72), 15, (1, 0, 0));
                                sphere(spawn_origin, 4, (1, 0, 0));
                            }
                        }
                    }
                }
            }
        }
    }

#/
