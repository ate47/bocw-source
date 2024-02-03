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
    system::register(#"rappel", &function_70a657d8, undefined, undefined, undefined);
}

// Namespace rappel/rappel
// Params 0, eflags: 0x6 linked
// Checksum 0xd63edd74, Offset: 0x1b0
// Size: 0x274
function private function_70a657d8() {
    level.var_feaba1ca = struct::get_array("ascend_begin", "script_noteworthy");
    level.var_4c9574a2 = struct::get_array("descend_begin", "script_noteworthy");
    level.var_4b97f99c = [];
    foreach (a in level.var_feaba1ca) {
        function_731b9325(a, 1);
    }
    foreach (a in level.var_4c9574a2) {
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
        if (isentity(self.var_45afc268.clip)) {
            self.var_45afc268.clip function_2ac7114f(self);
            if (!isdefined(self.var_6c49a5bb)) {
                self.var_6c49a5bb = [];
            } else if (!isarray(self.var_6c49a5bb)) {
                self.var_6c49a5bb = array(self.var_6c49a5bb);
            }
            if (!isinarray(self.var_6c49a5bb, self.var_45afc268.clip)) {
                self.var_6c49a5bb[self.var_6c49a5bb.size] = self.var_45afc268.clip;
            }
        }
        if (isentity(self.var_3eb5bddd.clip)) {
            self.var_3eb5bddd.clip function_2ac7114f(self);
            if (!isdefined(self.var_6c49a5bb)) {
                self.var_6c49a5bb = [];
            } else if (!isarray(self.var_6c49a5bb)) {
                self.var_6c49a5bb = array(self.var_6c49a5bb);
            }
            if (!isinarray(self.var_6c49a5bb, self.var_3eb5bddd.clip)) {
                self.var_6c49a5bb[self.var_6c49a5bb.size] = self.var_3eb5bddd.clip;
            }
        }
    } else {
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
        if (isdefined(self.var_45afc268)) {
            self thread function_7984d635(self.var_45afc268);
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
    } else {
        function_752582be(self.ascender);
        self.ascender = undefined;
    }
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
        if (isdefined(ascender.var_381fcaec) && isdefined(ascender.var_381fcaec.trigger)) {
            ascender.var_381fcaec.trigger sethintstring(hint);
            ascender.var_381fcaec.inuse = 0;
        }
    }
}

// Namespace rappel/rappel
// Params 0, eflags: 0x6 linked
// Checksum 0x359d04fe, Offset: 0xc60
// Size: 0x36
function private function_142825fc() {
    if (isdefined(self.var_45afc268)) {
        self.var_45afc268 function_28a2f589(0);
        self.var_45afc268 = undefined;
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
        self val::function_e681e68e(#"hash_4213464e79503575");
        self function_7cbd94d5(0);
    }
}

// Namespace rappel/rappel
// Params 1, eflags: 0x2 linked
// Checksum 0x8fb99c44, Offset: 0xda8
// Size: 0x204
function function_c487f6c0(var_13bb8c94) {
    if (!isdefined(var_13bb8c94.radius)) {
        var_13bb8c94.radius = 128;
    }
    var_3d783ef7 = spawn("trigger_radius_use", var_13bb8c94.origin + vectorscale((0, 0, 1), 16), 0, var_13bb8c94.radius, 128);
    var_3d783ef7.var_13bb8c94 = var_13bb8c94;
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
    var_b53569ae = struct::get(struct.target, "targetname");
    var_1802b8ab = struct::get(var_b53569ae.target, "targetname");
    level.var_4b97f99c[struct.target] = struct;
    struct.var_381fcaec = var_b53569ae;
    struct.var_4b2e2dac = var_1802b8ab;
    struct.inuse = 0;
    if (sessionmodeiszombiesgame()) {
        struct.cooldown = [];
        if (isdefined(struct.script_string)) {
            struct.clip = getent(struct.script_string, "targetname");
        }
    }
    struct.exitangle = struct.angles + vectorscale((0, 1, 0), 180);
    struct.startangle = struct.angles;
    struct.dir = dir;
    struct.trigger = function_c487f6c0(struct);
}

// Namespace rappel/rappel
// Params 2, eflags: 0x2 linked
// Checksum 0x83a517f3, Offset: 0x1118
// Size: 0x150
function function_8b08f357(player, var_13bb8c94) {
    if (is_true(var_13bb8c94.inuse)) {
        return 0;
    }
    if (is_true(player.laststand) && !is_true(player.var_b895a3ff)) {
        return 0;
    }
    if (player getstance() == "prone") {
        return 0;
    }
    if (!player function_c73c0ee6()) {
        return 0;
    }
    if (sessionmodeiszombiesgame()) {
        if (var_13bb8c94.inuse > 0) {
            return 0;
        }
        entnum = player getentitynumber();
        if (is_true(var_13bb8c94.cooldown[entnum]) || is_true(var_13bb8c94.var_381fcaec.cooldown[entnum])) {
            return 0;
        }
    }
    return 1;
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
    self.inuse = self.inuse + (inuse ? 1 : -1);
    /#
        /#
            assert(self.inuse >= 0 && self.inuse <= 4);
        #/
    #/
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
    var_13bb8c94 = self.var_13bb8c94;
    if (!function_8b08f357(player, var_13bb8c94)) {
        return;
    }
    var_5c1b57ee = var_13bb8c94.var_381fcaec;
    var_81d2b10b = distance(var_5c1b57ee.origin, var_13bb8c94.origin);
    if (var_13bb8c94.origin[2] > var_5c1b57ee.origin[2]) {
        var_81d2b10b = var_81d2b10b * -1;
    }
    if (sessionmodeiszombiesgame()) {
        var_13bb8c94 function_28a2f589(1);
        player.var_45afc268 = var_13bb8c94;
        if (isdefined(var_5c1b57ee.trigger)) {
            var_5c1b57ee function_28a2f589(1);
            player.var_3eb5bddd = var_5c1b57ee;
        }
        player val::set(#"hash_4213464e79503575", "disable_weapons", 2);
        if (isdefined(player.var_6dfeb5ef)) {
            player thread [[ player.var_6dfeb5ef ]]();
        }
        player waittilltimeout(3, #"weapon_change");
    } else {
        player.ascender = var_13bb8c94;
        thread function_8c46de17(var_13bb8c94, var_5c1b57ee);
        var_13bb8c94 thread function_cf4e25e5();
        var_13bb8c94.inuse = 1;
        var_5c1b57ee.inuse = 1;
    }
    player function_256406a6(var_13bb8c94.origin, var_13bb8c94.angles[1], var_81d2b10b);
}

// Namespace rappel/rappel
// Params 2, eflags: 0x2 linked
// Checksum 0x67046d7a, Offset: 0x16b8
// Size: 0x8c
function function_8c46de17(var_13bb8c94, var_5c1b57ee) {
    wait(0.2);
    hint = #"hash_607b12b5d5733b3e";
    var_13bb8c94.trigger sethintstring(hint);
    if (isdefined(var_5c1b57ee) && isdefined(var_5c1b57ee.trigger)) {
        var_5c1b57ee.trigger sethintstring(hint);
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
function function_7984d635(var_13bb8c94) {
    if (sessionmodeiszombiesgame()) {
        entnum = self getentitynumber();
        var_5c1b57ee = var_13bb8c94.var_381fcaec;
        var_13bb8c94.cooldown[entnum] = 1;
        self thread function_2f037a69(var_13bb8c94);
        if (isdefined(var_5c1b57ee.trigger)) {
            var_5c1b57ee.cooldown[entnum] = 1;
            self thread function_2f037a69(var_5c1b57ee);
        }
        if (isdefined(level.var_fe888e9e)) {
            level waittilltimeout(10, level.var_fe888e9e);
        } else {
            wait(10);
        }
        var_13bb8c94.cooldown[entnum] = undefined;
        if (isdefined(self)) {
            self thread function_2f037a69(var_13bb8c94);
        }
        if (isdefined(var_5c1b57ee.trigger)) {
            var_5c1b57ee.cooldown[entnum] = undefined;
            if (isdefined(self)) {
                self thread function_2f037a69(var_5c1b57ee);
            }
        }
    }
}

// Namespace rappel/rappel
// Params 0, eflags: 0x0
// Checksum 0xe26eb3c0, Offset: 0x19b8
// Size: 0x164
function function_efab52ae() {
    /#
        while (getdvarint(#"hash_7cfb013f9bd630b6", 0)) {
            waitframe(1);
            foreach (rappel in level.var_feaba1ca) {
                var_86660d95 = rappel.origin;
                print3d(var_86660d95 + vectorscale((0, 0, 1), 16), rappel.targetname, (0, 1, 0));
                sphere(var_86660d95, 4, (0, 1, 0));
                circle(var_86660d95, 24, (0, 1, 0), 1, 1);
                line(var_86660d95, rappel.var_381fcaec.origin, (0, 1, 0));
            }
        }
    #/
}

