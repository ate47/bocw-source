// Atian COD Tools GSC CW decompiler test
#using script_2764f2b7c40521c8;
#using script_38dc72b5220a1a67;
#using script_251549d469e816bf;
#using script_40e017336a087343;
#using script_7276bc654659288;
#using scripts\core_common\math_shared.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using script_140d5347de8af85c;
#using scripts\core_common\easing.csc;
#using scripts\core_common\serverfield_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\struct.csc;

#namespace util;

// Namespace util/util
// Params 0, eflags: 0x5
// Checksum 0x2f9745da, Offset: 0x1b0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_3b7610eda5a02b79", &preinit, undefined, undefined, undefined);
}

// Namespace util/util
// Params 0, eflags: 0x6 linked
// Checksum 0x6823e2bd, Offset: 0x1f8
// Size: 0xcc
function private preinit() {
    if (!isdefined(level.var_54ce800f)) {
        level.var_54ce800f = [];
    }
    function_3969639b(&cp_hint_text::register, "cp_hint_text");
    pip_menu::register();
    clientfield::register("toplayer", "cinematicmotion_blend", 1, 1, "int", &function_e6d37e3b, 0, 0);
    serverfield::register("cinematicmotion_blend", 1, 1, "int");
}

// Namespace util/util
// Params 7, eflags: 0x6 linked
// Checksum 0x37d31eab, Offset: 0x2d0
// Size: 0x5c
function private function_e6d37e3b(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump) {
    self thread function_2e48b28e(localclientnum, oldval, newval, bnewent, binitialsnap, fieldname, bwastimejump);
}

// Namespace util/util
// Params 7, eflags: 0x6 linked
// Checksum 0x57b455c0, Offset: 0x338
// Size: 0x1f4
function private function_2e48b28e(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endoncallback(&function_1402addd, #"death");
    var_a6f59e30 = 2.5;
    self notify("63352a601e3213fb");
    self endon("63352a601e3213fb");
    if (!isdefined(self.var_86c3a9a2)) {
        self.var_86c3a9a2 = 1;
    }
    target = float(!bwastimejump);
    time_total = abs(target - self.var_86c3a9a2) / var_a6f59e30 * 1000;
    var_2e1d5239 = self getclienttime();
    start = self.var_86c3a9a2;
    while (self.var_86c3a9a2 != target) {
        waitframe(1);
        time_now = self getclienttime();
        time_delta = time_now - var_2e1d5239;
        coef = math::clamp(time_delta / time_total, 0, 1);
        self.var_86c3a9a2 = start + (target - start) * coef;
        self function_97c2dab8(self.var_86c3a9a2);
    }
    self function_1402addd();
}

// Namespace util/util
// Params 1, eflags: 0x6 linked
// Checksum 0xd31ad637, Offset: 0x538
// Size: 0x44
function private function_1402addd(*data) {
    if (isdefined(self)) {
        self serverfield::set("cinematicmotion_blend", !serverfield::get("cinematicmotion_blend"));
    }
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0xb36d5351, Offset: 0x588
// Size: 0x1c
function function_d1397ecd(str_id) {
    return level.var_54ce800f[str_id];
}

// Namespace util/util
// Params 2, eflags: 0x2 linked
// Checksum 0xf2fcbffc, Offset: 0x5b0
// Size: 0x2c
function function_3969639b(func, str_id) {
    level.var_54ce800f[str_id] = [[ func ]]();
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0x3eddf4d5, Offset: 0x5e8
// Size: 0x28
function function_ebbb8995(str_id) {
    level.var_54ce800f[str_id] = luielemtext::register();
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0x3556064d, Offset: 0x618
// Size: 0x28
function function_351488bb(str_id) {
    level.var_54ce800f[str_id] = luielembar::register();
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0xe6db0009, Offset: 0x648
// Size: 0x28
function function_d2554df(str_id) {
    level.var_54ce800f[str_id] = luielemimage::register();
}

// Namespace util/util
// Params 2, eflags: 0x0
// Checksum 0xc3a80da5, Offset: 0x678
// Size: 0x74
function function_f3906128(func, var_c9ec2dc3) {
    level.var_4530c925 = func;
    clientfield::register("world", "force_streamer", 1, getminbitcountfornum(var_c9ec2dc3), "int", &function_70df4eb1, 0, 0);
}

// Namespace util/util
// Params 7, eflags: 0x2 linked
// Checksum 0xcb6dfb06, Offset: 0x6f8
// Size: 0xa4
function function_70df4eb1(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *var_f2e0ac2e) {
    if (var_f2e0ac2e == 0) {
        stopforcingstreamer();
        return;
    }
    [[ level.var_4530c925 ]](var_f2e0ac2e);
    level waittilltimeout(15, #"streamer_100");
    streamernotify(var_f2e0ac2e);
}

// Namespace util/util
// Params 2, eflags: 0x2 linked
// Checksum 0x84a70dfa, Offset: 0x7a8
// Size: 0x1ba
function force_stream_weapons(localclientnum, weaponarray) {
    assert(isplayer(self));
    self notify("1fa5700010347000");
    self endon("1fa5700010347000");
    self endon(#"death");
    if (!isdefined(weaponarray)) {
        return;
    }
    if (!isdefined(weaponarray)) {
        weaponarray = [];
    } else if (!isarray(weaponarray)) {
        weaponarray = array(weaponarray);
    }
    while (weaponarray.size > 0) {
        foreach (streamweapon in weaponarray) {
            if (isweapon(streamweapon)) {
                renderoptionsweapon = self getbuildkitweaponoptions(localclientnum, streamweapon);
                var_fd90b0bb = self function_1744e243(localclientnum, streamweapon);
                function_d780f794(localclientnum, streamweapon, renderoptionsweapon, var_fd90b0bb);
            }
        }
        waitframe(1);
    }
}

// Namespace util/util
// Params 0, eflags: 0x0
// Checksum 0xf68d8fb9, Offset: 0x970
// Size: 0xec
function function_d96391ba() {
    level.var_dd9e1cd5 = [];
    level._effect[#"player_cold_breath"] = #"hash_3276d891dff1f743";
    level._effect[#"ai_cold_breath"] = #"hash_326fec91dfebfa91";
    clientfield::register("toplayer", "player_cold_breath", 1, 1, "int", &function_73d83dae, 0, 0);
    clientfield::register("actor", "ai_cold_breath", 1, 1, "counter", &function_f39fc31d, 0, 0);
}

// Namespace util/util
// Params 7, eflags: 0x2 linked
// Checksum 0xf0bceba1, Offset: 0xa68
// Size: 0xb0
function function_73d83dae(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump == 1) {
        if (is_true(level.var_dd9e1cd5[fieldname])) {
            return;
        }
        level.var_dd9e1cd5[fieldname] = 1;
        self thread function_9340eb56(fieldname);
        return;
    }
    level.var_dd9e1cd5[fieldname] = 0;
}

// Namespace util/util
// Params 1, eflags: 0x2 linked
// Checksum 0xe5478103, Offset: 0xb20
// Size: 0xb8
function function_9340eb56(localclientnum) {
    self endon(#"disconnect");
    self endon(#"death");
    while (is_true(level.var_dd9e1cd5[localclientnum])) {
        wait(randomintrange(5, 7));
        playfxoncamera(localclientnum, level._effect[#"player_cold_breath"], (0, 0, 0), (1, 0, 0), (0, 0, 1));
    }
}

// Namespace util/util
// Params 7, eflags: 0x2 linked
// Checksum 0x767cc5fb, Offset: 0xbe0
// Size: 0xc0
function function_f39fc31d(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self endon(#"death");
    while (isalive(self)) {
        wait(randomintrange(6, 8));
        playfxontag(bwastimejump, level._effect[#"ai_cold_breath"], self, "j_head");
    }
}

// Namespace util/util
// Params 1, eflags: 0x0
// Checksum 0x3c7a6ef1, Offset: 0xca8
// Size: 0x188
function player_keyline_render(localclientnum) {
    /#
        if (!isdefined(level.var_8530f39a)) {
            level.var_8530f39a = [];
        }
        if (!isdefined(level.var_8530f39a)) {
            level.var_8530f39a = [];
        } else if (!isarray(level.var_8530f39a)) {
            level.var_8530f39a = array(level.var_8530f39a);
        }
        level.var_8530f39a[level.var_8530f39a.size] = self;
    #/
    if (self function_21c0fa55()) {
        self function_dc7fced6();
        self thread force_update_player_clientfields(localclientnum);
    }
    if (isplayer(self) && self function_21c0fa55()) {
        if (!isdefined(self getlocalclientnumber()) || localclientnum == self getlocalclientnumber()) {
            return;
        }
    }
    if (!self function_ca024039()) {
        return;
    }
    wait(1);
    if (isdefined(self)) {
    }
}

// Namespace util/util
// Params 1, eflags: 0x2 linked
// Checksum 0x6cc73746, Offset: 0xe38
// Size: 0x64
function force_update_player_clientfields(localclientnum) {
    self endon(#"death");
    while (!clienthassnapshot(localclientnum)) {
        wait(0.25);
    }
    wait(0.25);
    self processclientfieldsasifnew();
}

// Namespace util/util
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0xea8
// Size: 0x4
function function_dc7fced6() {
    
}

// Namespace util/util
// Params 2, eflags: 0x0
// Checksum 0x173b6f20, Offset: 0xeb8
// Size: 0x86e
function function_8e4d84eb(localclientnum, bundlename) {
    player = self;
    player endon(#"death", #"disconnected", #"deactivate_camera_lens_overrides");
    /#
        function_5ac4dc99("<unknown string>", 0);
    #/
    var_2c46fc48 = getscriptbundle(bundlename);
    var_73024e3b = 0;
    var_8c180cda = 0;
    var_cbcfc238 = var_2c46fc48.var_8833ab8f;
    player function_49cdf043(var_cbcfc238, 0);
    if (var_cbcfc238 > var_2c46fc48.var_11f00a95) {
        var_73024e3b = (var_cbcfc238 - var_2c46fc48.var_11f00a95) / (var_2c46fc48.var_8dd70933 - var_2c46fc48.var_11f00a95);
        if (var_73024e3b < 0) {
            var_73024e3b = 0;
        } else if (var_73024e3b > 1) {
            var_73024e3b = 1;
        }
    }
    var_4f64fb6b = var_2c46fc48.var_691507ba;
    var_c5e00469 = (var_4f64fb6b * -1, var_4f64fb6b * -1, var_4f64fb6b * -1);
    var_43ac2595 = (var_4f64fb6b, var_4f64fb6b, var_4f64fb6b);
    var_e17c45e2 = 1;
    player function_d7be9a9f(var_e17c45e2, 0);
    player function_1816c600(0.1, 0);
    player function_9e574055(1);
    waitframe(1);
    var_6588e6fc = 5;
    player easing::function_136edb11(undefined, 3.5, var_6588e6fc, #"hash_2de1684e2167ada4", 1, 0);
    var_58cb5a30 = 0;
    var_c846ce25 = 0;
    while (true) {
        var_a23c6f11 = player function_ca4b4e19(localclientnum, 0)[#"move"][1];
        var_8c180cda = lerpfloat(var_8c180cda, function_b5338ccb(var_a23c6f11, var_2c46fc48.var_b4e0311b), 0.25);
        var_e8be0c0e = abs(var_a23c6f11) != 0 && (var_8c180cda < 0 && var_cbcfc238 > var_2c46fc48.var_11f00a95 || var_8c180cda > 0 && var_cbcfc238 < var_2c46fc48.var_8dd70933);
        if (var_e8be0c0e) {
            var_73024e3b += var_8c180cda * var_2c46fc48.var_95d1f1bd * float(self function_8e4cd43b()) / 1000;
            if (var_73024e3b < 0) {
                var_73024e3b = 0;
            } else if (var_73024e3b > 1) {
                var_73024e3b = 1;
            }
            var_cbcfc238 = easing::ease_cubic(var_2c46fc48.var_11f00a95, var_2c46fc48.var_8dd70933, var_73024e3b, 1, 1);
            player function_49cdf043(var_cbcfc238, 0);
            var_2c46fc48.var_e78c4b55 = var_cbcfc238;
            if (!var_c846ce25 && abs(var_a23c6f11) > 0) {
                var_c846ce25 = 1;
                if (isdefined(var_2c46fc48.var_2afe6ba0)) {
                    player playsound(localclientnum, var_2c46fc48.var_2afe6ba0);
                }
                if (!isdefined(player.var_8bbff4f8) && isdefined(var_2c46fc48.var_9cbc1120)) {
                    player.var_8bbff4f8 = player playloopsound(var_2c46fc48.var_9cbc1120);
                }
            }
        } else if (var_c846ce25) {
            var_c846ce25 = 0;
            if (isdefined(var_2c46fc48.var_c0a8a9c6)) {
                self playsound(localclientnum, var_2c46fc48.var_c0a8a9c6);
            }
            if (isdefined(self.var_8bbff4f8)) {
                self stoploopsound(self.var_8bbff4f8);
                self.var_8bbff4f8 = undefined;
            }
        }
        eye = player geteye();
        fwd = anglestoforward(player getcamangles());
        trace = physicstrace(eye, eye + fwd * var_2c46fc48.var_e99a5258, var_c5e00469, var_43ac2595, player, 1);
        var_de79cd4c = distance(eye, trace[#"position"] + fwd * var_43ac2595[0]);
        if (var_58cb5a30 < player getclienttime() && abs(var_de79cd4c - var_e17c45e2) < var_2c46fc48.var_b5adab9c) {
            var_e17c45e2 = lerpfloat(var_e17c45e2, var_de79cd4c, 0.5);
            player function_d7be9a9f(var_e17c45e2, 0);
        } else if (var_58cb5a30 < player getclienttime() || abs(var_de79cd4c - var_e17c45e2) >= var_2c46fc48.var_b5adab9c) {
            var_36df6119 = isdefined(var_6588e6fc) ? var_6588e6fc : var_2c46fc48.var_b0ea9e6d;
            var_58cb5a30 = player getclienttime() + int(var_36df6119 * 1000);
            var_e17c45e2 = var_de79cd4c;
            player easing::function_b6f1c993(undefined, var_e17c45e2, var_36df6119, #"back", 0, 1);
            var_6588e6fc = undefined;
        }
        /#
            if (getdvarint(#"hash_2e5a9052a4b09249", 0)) {
                var_31a761bf = absangleclamp360(player getcamangles()[1]);
                box(trace[#"position"] + fwd * var_43ac2595[0], var_c5e00469, var_43ac2595, var_31a761bf, (1, 0, 0), 1, 0, 1);
            }
        #/
        waitframe(1);
    }
}

// Namespace util/util
// Params 0, eflags: 0x0
// Checksum 0x3b9a71cb, Offset: 0x1730
// Size: 0x66
function function_e706c315() {
    player = self;
    player function_c2856ebd(0);
    if (isdefined(player.var_8bbff4f8)) {
        player stoploopsound(self.var_8bbff4f8);
        player.var_8bbff4f8 = undefined;
    }
}

// Namespace util/util
// Params 1, eflags: 0x2 linked
// Checksum 0xa34ebc65, Offset: 0x17a0
// Size: 0x3a
function function_5a407dc8(localclientnum) {
    return isdefined(localclientnum) ? function_ab88dbd2(localclientnum, #"g_gameskill") : 1;
}

