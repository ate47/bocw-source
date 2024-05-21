// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\array_shared.gsc;

#namespace rappel;

// Namespace rappel/rappel
// Params 0, eflags: 0x5
// Checksum 0xf3f4a9e0, Offset: 0x168
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"rappel", &preinit, undefined, undefined, undefined);
}

// Namespace rappel/rappel
// Params 0, eflags: 0x6 linked
// Checksum 0xd63edd74, Offset: 0x1b0
// Size: 0x274
function private preinit() {
    level.ascendstarts = struct::get_array("ascend_begin", "script_noteworthy");
    level.descendstarts = struct::get_array("descend_begin", "script_noteworthy");
    level.ascendstructs = [];
    foreach (a in level.ascendstarts) {
        function_731b9325(a, 1);
    }
    foreach (a in level.descendstarts) {
        function_731b9325(a, 0);
    }
    callback::function_532a4f74(&function_1858cdf2);
    callback::function_c16ce2bc(&function_7e99ed03);
    if (sessionmodeiszombiesgame()) {
        callback::on_bleedout(&function_1fd398d8);
    } else {
        callback::on_player_killed(&on_player_killed);
    }
    callback::on_disconnect(&function_1fd398d8);
    callback::add_callback(#"on_vehicle_enter", &function_8307577f);
    /#
        level thread function_efab52ae();
    #/
}

// Namespace rappel/rappel
// Params 1, eflags: 0x6 linked
// Checksum 0x4e0ae2f6, Offset: 0x430
// Size: 0x2fa
function private function_7cbd94d5(b_hide = 1) {
    if (!is_true(level.var_e714f814)) {
        return;
    }
    if (b_hide) {
        self notsolid();
        if (isentity(self.ascenderstart.clip)) {
            self.ascenderstart.clip hidefromplayer(self);
            if (!isdefined(self.var_6c49a5bb)) {
                self.var_6c49a5bb = [];
            } else if (!isarray(self.var_6c49a5bb)) {
                self.var_6c49a5bb = array(self.var_6c49a5bb);
            }
            if (!isinarray(self.var_6c49a5bb, self.ascenderstart.clip)) {
                self.var_6c49a5bb[self.var_6c49a5bb.size] = self.ascenderstart.clip;
            }
        }
        if (isentity(self.var_3eb5bddd.clip)) {
            self.var_3eb5bddd.clip hidefromplayer(self);
            if (!isdefined(self.var_6c49a5bb)) {
                self.var_6c49a5bb = [];
            } else if (!isarray(self.var_6c49a5bb)) {
                self.var_6c49a5bb = array(self.var_6c49a5bb);
            }
            if (!isinarray(self.var_6c49a5bb, self.var_3eb5bddd.clip)) {
                self.var_6c49a5bb[self.var_6c49a5bb.size] = self.var_3eb5bddd.clip;
            }
        }
        return;
    }
    self solid();
    if (isarray(self.var_6c49a5bb)) {
        foreach (clip in self.var_6c49a5bb) {
            if (isentity(clip)) {
                clip showtoplayer(self);
            }
        }
        self.var_6c49a5bb = undefined;
    }
}

// Namespace rappel/rappel
// Params 0, eflags: 0x2 linked
// Checksum 0xa394f090, Offset: 0x738
// Size: 0x104
function function_1858cdf2() {
    if (sessionmodeiszombiesgame()) {
        self val::set(#"hash_4213464e79503575", "takedamage", 0);
        self val::set(#"hash_4213464e79503575", "ignoreme", 1);
        self function_7cbd94d5(1);
        self flag::set(#"hash_1b361b950317ecb5");
        if (isdefined(self.ascenderstart)) {
            self thread function_7984d635(self.ascenderstart);
        }
        self thread function_3e38fdfe();
        self thread function_1e1b99b6();
    }
}

// Namespace rappel/rappel
// Params 0, eflags: 0x2 linked
// Checksum 0x40c575d7, Offset: 0x848
// Size: 0x1b0
function function_5c3294de() {
    if (!isplayer(self)) {
        return;
    }
    if (!self flag::get(#"hash_1b361b950317ecb5")) {
        return;
    }
    foreach (player in function_a1ef346b(undefined, self.origin, 16)) {
        if (player == self) {
            continue;
        }
        if (player istouching(self) && player getvelocity() == 0) {
            v_dir = anglestoforward(self.angles);
            player setvelocity(v_dir * 500);
            /#
                iprintln("<unknown string>" + self getentnum() + "<unknown string>" + player getentnum());
            #/
        }
    }
}

// Namespace rappel/rappel
// Params 0, eflags: 0x2 linked
// Checksum 0x57534bab, Offset: 0xa00
// Size: 0x94
function function_7e99ed03() {
    self endon(#"disconnect");
    if (sessionmodeiszombiesgame()) {
        waitframe(1);
        self function_5c3294de();
        waitframe(1);
        self val::reset(#"hash_4213464e79503575", "disable_weapons");
    }
    self function_1fd398d8();
}

// Namespace rappel/rappel
// Params 0, eflags: 0x2 linked
// Checksum 0x45592602, Offset: 0xaa0
// Size: 0x64
function function_8307577f() {
    if (sessionmodeiszombiesgame()) {
        self val::reset(#"hash_4213464e79503575", "takedamage");
        self val::reset(#"hash_4213464e79503575", "ignoreme");
    }
}

// Namespace rappel/rappel
// Params 1, eflags: 0x2 linked
// Checksum 0x7ded5e5d, Offset: 0xb10
// Size: 0x24
function on_player_killed(*params) {
    self function_1fd398d8();
}

// Namespace rappel/rappel
// Params 0, eflags: 0x2 linked
// Checksum 0x4bce5ef2, Offset: 0xb40
// Size: 0x56
function function_1fd398d8() {
    if (sessionmodeiszombiesgame()) {
        self function_2e714695();
        return;
    }
    function_752582be(self.ascender);
    self.ascender = undefined;
}

// Namespace rappel/rappel
// Params 1, eflags: 0x2 linked
// Checksum 0xee909f47, Offset: 0xba0
// Size: 0xb6
function function_752582be(ascender) {
    if (isdefined(ascender)) {
        ascender.inuse = 0;
        hint = #"hash_4079b1df1f035718";
        ascender.trigger sethintstring(hint);
        if (isdefined(ascender.ascendstructend) && isdefined(ascender.ascendstructend.trigger)) {
            ascender.ascendstructend.trigger sethintstring(hint);
            ascender.ascendstructend.inuse = 0;
        }
    }
}

// Namespace rappel/rappel
// Params 0, eflags: 0x6 linked
// Checksum 0x359d04fe, Offset: 0xc60
// Size: 0x36
function private function_142825fc() {
    if (isdefined(self.ascenderstart)) {
        self.ascenderstart function_28a2f589(0);
        self.ascenderstart = undefined;
    }
}

// Namespace rappel/rappel
// Params 0, eflags: 0x6 linked
// Checksum 0xa1d477b9, Offset: 0xca0
// Size: 0x36
function private function_547d97a1() {
    if (isdefined(self.var_3eb5bddd)) {
        self.var_3eb5bddd function_28a2f589(0);
        self.var_3eb5bddd = undefined;
    }
}

// Namespace rappel/rappel
// Params 0, eflags: 0x2 linked
// Checksum 0xb4e5ad17, Offset: 0xce0
// Size: 0xbc
function function_2e714695() {
    self notify(#"hash_49fcf7bb78321ac");
    self function_142825fc();
    self function_547d97a1();
    if (self flag::get(#"hash_1b361b950317ecb5")) {
        self flag::clear(#"hash_1b361b950317ecb5");
        self val::reset_all(#"hash_4213464e79503575");
        self function_7cbd94d5(0);
    }
}

// Namespace rappel/rappel
// Params 1, eflags: 0x2 linked
// Checksum 0x8fb99c44, Offset: 0xda8
// Size: 0x204
function function_c487f6c0(ascendstart) {
    if (!isdefined(ascendstart.radius)) {
        ascendstart.radius = 128;
    }
    var_3d783ef7 = spawn("trigger_radius_use", ascendstart.origin + (0, 0, 16), 0, ascendstart.radius, 128);
    var_3d783ef7.ascendstart = ascendstart;
    var_3d783ef7 triggerignoreteam();
    var_3d783ef7 setvisibletoall();
    var_3d783ef7 setteamfortrigger(#"none");
    var_3d783ef7 setcursorhint("HINT_NOICON");
    var_3d783ef7 function_95c6df5a();
    hint = #"hash_4079b1df1f035718";
    var_3d783ef7 sethintstring(hint);
    var_3d783ef7 callback::on_trigger(&function_4945d10b);
    if (sessionmodeiszombiesgame()) {
        if (!isdefined(level.var_f2db450a)) {
            level.var_f2db450a = [];
        } else if (!isarray(level.var_f2db450a)) {
            level.var_f2db450a = array(level.var_f2db450a);
        }
        if (!isinarray(level.var_f2db450a, var_3d783ef7)) {
            level.var_f2db450a[level.var_f2db450a.size] = var_3d783ef7;
        }
    }
    return var_3d783ef7;
}

// Namespace rappel/rappel
// Params 2, eflags: 0x2 linked
// Checksum 0x152b3b16, Offset: 0xfb8
// Size: 0x152
function function_731b9325(struct, dir) {
    endstruct = struct::get(struct.target, "targetname");
    var_1802b8ab = struct::get(endstruct.target, "targetname");
    level.ascendstructs[struct.target] = struct;
    struct.ascendstructend = endstruct;
    struct.ascendstructout = var_1802b8ab;
    struct.inuse = 0;
    if (sessionmodeiszombiesgame()) {
        struct.cooldown = [];
        if (isdefined(struct.script_string)) {
            struct.clip = getent(struct.script_string, "targetname");
        }
    }
    struct.exitangle = struct.angles + (0, 180, 0);
    struct.startangle = struct.angles;
    struct.dir = dir;
    struct.trigger = function_c487f6c0(struct);
}

// Namespace rappel/rappel
// Params 2, eflags: 0x2 linked
// Checksum 0x83a517f3, Offset: 0x1118
// Size: 0x150
function function_8b08f357(player, ascendstart) {
    if (is_true(ascendstart.inuse)) {
        return false;
    }
    if (is_true(player.laststand) && !is_true(player.var_b895a3ff)) {
        return false;
    }
    if (player getstance() == "prone") {
        return false;
    }
    if (!player function_c73c0ee6()) {
        return false;
    }
    if (sessionmodeiszombiesgame()) {
        if (ascendstart.inuse > 0) {
            return false;
        }
        entnum = player getentitynumber();
        if (is_true(ascendstart.cooldown[entnum]) || is_true(ascendstart.ascendstructend.cooldown[entnum])) {
            return false;
        }
    }
    return true;
}

// Namespace rappel/rappel
// Params 1, eflags: 0x6 linked
// Checksum 0x7c3294d7, Offset: 0x1270
// Size: 0xf4
function private function_2f037a69(ascender) {
    self endon(#"death", #"disconnect");
    if (!isdefined(self)) {
        return;
    }
    wait(0.2);
    entnum = self getentitynumber();
    if (is_true(ascender.cooldown[entnum])) {
        hint = #"hash_7030ee296306731c";
    } else if (ascender.inuse > 0) {
        hint = #"hash_607b12b5d5733b3e";
    } else {
        hint = #"hash_4079b1df1f035718";
    }
    ascender.trigger sethintstringforplayer(self, hint);
}

// Namespace rappel/rappel
// Params 1, eflags: 0x6 linked
// Checksum 0x14b64f3a, Offset: 0x1370
// Size: 0x9c
function private function_28a2f589(inuse) {
    self.inuse += inuse ? 1 : -1;
    assert(self.inuse >= 0 && self.inuse <= 4);
    array::thread_all(getplayers(), &function_2f037a69, self);
}

// Namespace rappel/rappel
// Params 1, eflags: 0x2 linked
// Checksum 0x1f5b2d15, Offset: 0x1418
// Size: 0x294
function function_4945d10b(trigger_info) {
    player = trigger_info.activator;
    level endon(#"game_ended");
    player endon(#"death");
    player endon(#"disconnect");
    player endon(#"hash_210eae4f25120927");
    ascendstart = self.ascendstart;
    if (!function_8b08f357(player, ascendstart)) {
        return;
    }
    ascendend = ascendstart.ascendstructend;
    var_81d2b10b = distance(ascendend.origin, ascendstart.origin);
    if (ascendstart.origin[2] > ascendend.origin[2]) {
        var_81d2b10b *= -1;
    }
    if (sessionmodeiszombiesgame()) {
        ascendstart function_28a2f589(1);
        player.ascenderstart = ascendstart;
        if (isdefined(ascendend.trigger)) {
            ascendend function_28a2f589(1);
            player.var_3eb5bddd = ascendend;
        }
        player val::set(#"hash_4213464e79503575", "disable_weapons", 2);
        if (isdefined(player.var_6dfeb5ef)) {
            player thread [[ player.var_6dfeb5ef ]]();
        }
        player waittilltimeout(3, #"weapon_change");
    } else {
        player.ascender = ascendstart;
        thread function_8c46de17(ascendstart, ascendend);
        ascendstart thread function_cf4e25e5();
        ascendstart.inuse = 1;
        ascendend.inuse = 1;
    }
    player function_256406a6(ascendstart.origin, ascendstart.angles[1], var_81d2b10b);
}

// Namespace rappel/rappel
// Params 2, eflags: 0x2 linked
// Checksum 0x67046d7a, Offset: 0x16b8
// Size: 0x8c
function function_8c46de17(ascendstart, ascendend) {
    wait(0.2);
    hint = #"hash_607b12b5d5733b3e";
    ascendstart.trigger sethintstring(hint);
    if (isdefined(ascendend) && isdefined(ascendend.trigger)) {
        ascendend.trigger sethintstring(hint);
    }
}

// Namespace rappel/rappel
// Params 0, eflags: 0x6 linked
// Checksum 0x80d10e8b, Offset: 0x1750
// Size: 0x3c
function private function_cf4e25e5() {
    self notify("2100ea0c1a2c851b");
    self endon("2100ea0c1a2c851b");
    wait(5);
    function_752582be(self);
}

// Namespace rappel/rappel
// Params 0, eflags: 0x6 linked
// Checksum 0xad3f013f, Offset: 0x1798
// Size: 0x54
function private function_3e38fdfe() {
    self endon(#"death", #"disconnect", #"hash_2b89f4991e648f3e");
    wait(0.8);
    self function_142825fc();
}

// Namespace rappel/rappel
// Params 0, eflags: 0x6 linked
// Checksum 0xca14956d, Offset: 0x17f8
// Size: 0x54
function private function_1e1b99b6() {
    self endon(#"death", #"disconnect", #"hash_2b89f4991e648f3e");
    wait(5);
    self function_547d97a1();
}

// Namespace rappel/rappel
// Params 1, eflags: 0x2 linked
// Checksum 0x634feec9, Offset: 0x1858
// Size: 0x154
function function_7984d635(ascendstart) {
    if (sessionmodeiszombiesgame()) {
        entnum = self getentitynumber();
        ascendend = ascendstart.ascendstructend;
        ascendstart.cooldown[entnum] = 1;
        self thread function_2f037a69(ascendstart);
        if (isdefined(ascendend.trigger)) {
            ascendend.cooldown[entnum] = 1;
            self thread function_2f037a69(ascendend);
        }
        if (isdefined(level.var_fe888e9e)) {
            level waittilltimeout(10, level.var_fe888e9e);
        } else {
            wait(10);
        }
        ascendstart.cooldown[entnum] = undefined;
        if (isdefined(self)) {
            self thread function_2f037a69(ascendstart);
        }
        if (isdefined(ascendend.trigger)) {
            ascendend.cooldown[entnum] = undefined;
            if (isdefined(self)) {
                self thread function_2f037a69(ascendend);
            }
        }
    }
}

/#

    // Namespace rappel/rappel
    // Params 0, eflags: 0x0
    // Checksum 0xe26eb3c0, Offset: 0x19b8
    // Size: 0x164
    function function_efab52ae() {
        while (getdvarint(#"hash_7cfb013f9bd630b6", 0)) {
            waitframe(1);
            foreach (rappel in level.ascendstarts) {
                var_86660d95 = rappel.origin;
                print3d(var_86660d95 + (0, 0, 16), rappel.targetname, (0, 1, 0));
                sphere(var_86660d95, 4, (0, 1, 0));
                circle(var_86660d95, 24, (0, 1, 0), 1, 1);
                line(var_86660d95, rappel.ascendstructend.origin, (0, 1, 0));
            }
        }
    }

#/
