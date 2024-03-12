// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\debug.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace poi;

// Namespace poi/namespace_b1048555
// Params 0, eflags: 0x5
// Checksum 0xa18907f8, Offset: 0x130
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"poi", &function_f64316de, undefined, undefined, undefined);
}

// Namespace poi/namespace_b1048555
// Params 3, eflags: 0x2 linked
// Checksum 0xcb357765, Offset: 0x178
// Size: 0x4ae
function enable(var_dc8b0c0d, firstpoint, var_8fbcda45) {
    /#
        assert(isactor(self));
    #/
    /#
        assert(var_dc8b0c0d === 1 || var_dc8b0c0d === 0, "<unknown string>");
    #/
    if (is_true(var_dc8b0c0d)) {
        if (!isdefined(self.poi)) {
            self.poi = {};
        }
    } else if (!isdefined(self.poi)) {
        return;
    }
    if (!var_dc8b0c0d && (isdefined(self.poi.var_7dfe573d.var_3b03815e) ? self.poi.var_7dfe573d.var_3b03815e : 0) > gettime()) {
        self ai::look_at(undefined, 3);
    }
    self.poi.var_7dfe573d = undefined;
    self.poi.var_6faefa54 = undefined;
    self.poi.var_40c78170 = var_dc8b0c0d;
    self.poi.var_8fbcda45 = var_8fbcda45;
    if (!var_dc8b0c0d) {
        /#
            assert(isdefined(level.poi.var_5ee53e3), "<unknown string>");
        #/
        arrayremovevalue(level.poi.var_5ee53e3, self);
        self.turnrate = isdefined(self.poi.var_3cf5f944) ? self.poi.var_3cf5f944 : self.turnrate;
        self.var_acf874aa = undefined;
        self.var_6141b84e = undefined;
        if (isdefined(self.poi.auto)) {
            self.poi = {#auto:self.poi.auto};
        } else {
            self.poi = undefined;
        }
        self notify(#"hash_540a2c03e6d27b24");
        return;
    }
    if (!isdefined(self.poi.var_1365068)) {
        self.poi.var_1365068 = self function_359fd121();
    }
    var_67b78bf3 = function_f002dade("human", "fast");
    var_47658db3 = function_15a5703b("human", min(self.poi.var_1365068, var_67b78bf3));
    self setdesiredspeed(var_47658db3);
    if (!isdefined(level.poi.var_5ee53e3)) {
        level.poi.var_5ee53e3 = [];
    }
    if (!array::contains(level.poi.var_5ee53e3, self)) {
        level.poi.var_5ee53e3[level.poi.var_5ee53e3.size] = self;
    }
    if (isdefined(level.poi.var_28bdae79)) {
        level thread [[ level.poi.var_28bdae79 ]]();
    }
    /#
        assert(!isdefined(firstpoint) || isstruct(firstpoint));
    #/
    self.poi.var_3cf5f944 = self.turnrate;
    self.turnrate = 0.25;
    self.poi.leftaimlimit = 90;
    self.poi.rightaimlimit = -90;
    self.poi.var_5fccb5cd = firstpoint;
    self.var_6141b84e = "disable";
    self notify(#"hash_66e66f69a86651cd");
}

// Namespace poi/namespace_b1048555
// Params 6, eflags: 0x2 linked
// Checksum 0x1476d96e, Offset: 0x630
// Size: 0x186
function function_fc1d22bd(var_dc8b0c0d, var_411041d2, yawmax, pitchmin, pitchmax, var_8fbcda45) {
    var_dc8b0c0d = is_true(var_dc8b0c0d);
    if (var_dc8b0c0d && !isdefined(self.poi.auto)) {
        self function_4d1af993(var_411041d2, yawmax, pitchmin, pitchmax, var_8fbcda45);
        self thread function_c6ff2ee5();
        self notify(#"hash_4f88221ad3977829");
        return;
    }
    if (!var_dc8b0c0d && isdefined(self.poi.auto)) {
        self notify(#"hash_5ea869d8ad18e50b");
        self ai::look_at(self.poi.auto.angles, 3, 1, float(function_60d95f53()) / 1000, self.poi.auto.var_8fbcda45, 1);
        self.poi.auto = undefined;
        self notify(#"hash_eb07a9b95814b4a");
    }
}

// Namespace poi/namespace_b1048555
// Params 0, eflags: 0x6 linked
// Checksum 0x7fdaadb6, Offset: 0x7c0
// Size: 0xdc
function private function_f64316de() {
    level.poi = {};
    level.poi.var_1ee388be = [];
    level.poi.var_28bdae79 = &function_b31aaef9;
    level.poi.var_705e0648 = &enable;
    level.poi.var_38974483 = &function_fc1d22bd;
    /#
        function_5ac4dc99("<unknown string>", 0);
        function_cd140ee9("<unknown string>", &function_c30fad9a);
    #/
    thread function_4de58b23();
}

// Namespace poi/namespace_b1048555
// Params 0, eflags: 0x6 linked
// Checksum 0xa2e645b2, Offset: 0x8a8
// Size: 0x11a
function private function_4de58b23() {
    waittillframeend();
    level.poi.var_1ee388be = struct::get_array("poi", "variantname");
    remove = [];
    foreach (poi in level.poi.var_1ee388be) {
        if (!is_true(poi.script_auto_use)) {
            remove[remove.size] = poi;
        }
    }
    level.poi.var_1ee388be = array::exclude(level.poi.var_1ee388be, remove);
}

// Namespace poi/namespace_b1048555
// Params 0, eflags: 0x6 linked
// Checksum 0x317dec04, Offset: 0x9d0
// Size: 0x3c4
function private function_b31aaef9() {
    if (is_true(level.poi.var_9e5f97bf)) {
        return;
    }
    level.poi.var_9e5f97bf = 1;
    waitframe(1);
    while (1) {
        if (!isarray(level.poi.var_5ee53e3) || level.poi.var_5ee53e3.size == 0) {
            level.poi.var_9e5f97bf = undefined;
            return;
        }
        var_6a9ced4 = [];
        waited = 0;
        foreach (guy in level.poi.var_5ee53e3) {
            if (isalive(guy) && is_true(guy.poi.var_40c78170) && !guy function_b4d1a9bb()) {
                poi = guy function_f3a2a643();
                if (isdefined(poi) && poi !== guy.poi.var_7dfe573d) {
                    now = gettime();
                    guy.poi.var_a192c8da = now;
                    guy.poi.var_7dfe573d = poi;
                    var_8fbcda45 = isdefined(poi.var_1eabcced) ? poi.var_1eabcced : self.poi.var_8fbcda45;
                    var_9ced4e21 = poi util::function_4b93f9c2();
                    if ((isdefined(var_9ced4e21) ? var_9ced4e21 : 0) == 0) {
                        var_9ced4e21 = float(2000) / 1000;
                    }
                    guy.poi.var_7dfe573d.var_3b03815e = now + var_9ced4e21 * 1000;
                    guy ai::look_at(poi.origin, 3, 1, var_9ced4e21, var_8fbcda45);
                    guy thread function_d0341c76(3, var_9ced4e21);
                }
                waitframe(1);
                waited = 1;
                continue;
            }
            var_6a9ced4[var_6a9ced4.size] = guy;
        }
        foreach (guy in var_6a9ced4) {
            arrayremovevalue(level.poi.var_5ee53e3, guy);
        }
        if (!waited) {
            wait(0.25);
        }
    }
}

// Namespace poi/namespace_b1048555
// Params 0, eflags: 0x6 linked
// Checksum 0xa368a1ef, Offset: 0xda0
// Size: 0x352
function private function_f3a2a643() {
    ismoving = isdefined(self.pathgoalpos);
    var_df7a9e25 = isdefined(self.poi.var_7dfe573d);
    if (!var_df7a9e25 && isdefined(self.poi.var_5fccb5cd)) {
        return function_aabc1f4c();
    }
    if (var_df7a9e25 && isdefined(self.poi.var_7dfe573d.target) || isdefined(self.poi.var_6faefa54)) {
        return function_75334336(var_df7a9e25);
    }
    self.poi.var_6faefa54 = undefined;
    if (var_df7a9e25) {
        /#
            assert(isdefined(self.poi.var_a192c8da));
        #/
        if (gettime() < self.poi.var_a192c8da + 2000) {
            return self.poi.var_7dfe573d;
        }
    }
    var_c2fb3093 = undefined;
    var_dea63fff = 1048576;
    foreach (var_a9af01c3 in level.poi.var_1ee388be) {
        var_970aced0 = float(isdefined(var_a9af01c3.var_715fc83d) ? var_a9af01c3.var_715fc83d : 0) * 1000;
        if (var_970aced0 <= 0) {
            var_970aced0 = 5000;
        }
        if (isdefined(var_a9af01c3.var_3b03815e) && gettime() < var_a9af01c3.var_3b03815e + var_970aced0) {
            continue;
        }
        poi = var_a9af01c3.origin;
        var_49277a4f = vectornormalize(poi - self.origin);
        var_6045790a = acos(vectordot(anglestoforward(self.angles), var_49277a4f));
        if (var_6045790a >= 50) {
            continue;
        }
        var_38a7325b = distance2d(self.origin, poi);
        if (var_38a7325b > var_dea63fff) {
            continue;
        }
        if (!sighttracepassed(self.origin, poi, 0, undefined)) {
            continue;
        }
        var_c2fb3093 = var_a9af01c3;
        var_dea63fff = var_38a7325b;
    }
    return var_c2fb3093;
}

// Namespace poi/namespace_b1048555
// Params 0, eflags: 0x6 linked
// Checksum 0x6e3326e6, Offset: 0x1100
// Size: 0xf4
function private function_aabc1f4c() {
    /#
        assert(isdefined(self.poi.var_5fccb5cd));
    #/
    if (sighttracepassed(self geteye(), self.poi.var_5fccb5cd.origin, 0, undefined)) {
        poi = self.poi.var_5fccb5cd;
        if (isdefined(poi.target)) {
            self.poi.var_6faefa54 = struct::get(poi.target, "targetname");
        }
        if (function_a6d41d6e(poi)) {
            return poi;
        } else {
            return undefined;
        }
        return;
    }
    return undefined;
}

// Namespace poi/namespace_b1048555
// Params 1, eflags: 0x6 linked
// Checksum 0xeee4a349, Offset: 0x1200
// Size: 0x348
function private function_75334336(var_df7a9e25) {
    min_time = undefined;
    /#
        assert(var_df7a9e25 && isdefined(self.poi.var_7dfe573d.target) || isdefined(self.poi.var_6faefa54));
    #/
    if (var_df7a9e25) {
        if (isdefined(self.poi.var_7dfe573d.target)) {
            self.poi.var_6faefa54 = struct::get(self.poi.var_7dfe573d.target, "targetname");
        } else {
            self.poi.var_6faefa54 = undefined;
        }
    }
    if (isdefined(self.poi.var_5fccb5cd)) {
        self.poi.var_5fccb5cd = undefined;
    }
    min_time = 2000;
    if (var_df7a9e25) {
        var_d78af89e = self.poi.var_7dfe573d util::function_4b93f9c2();
        if (var_d78af89e > 0) {
            min_time = var_d78af89e;
        }
    }
    if (!isdefined(self.poi.var_6faefa54)) {
        self notify(#"hash_1a7483ed1381776b");
        if (gettime() < self.poi.var_a192c8da + min_time && function_a6d41d6e(self.poi.var_7dfe573d)) {
            return self.poi.var_7dfe573d;
        } else {
            self enable(0);
            return undefined;
        }
    }
    if (var_df7a9e25 && gettime() < self.poi.var_a192c8da + min_time && function_a6d41d6e(self.poi.var_7dfe573d)) {
        return self.poi.var_7dfe573d;
    }
    if (!sighttracepassed(self geteye(), self.poi.var_6faefa54.origin, 0, undefined)) {
        return undefined;
    }
    if (!function_a6d41d6e(self.poi.var_6faefa54)) {
        if (isdefined(self.poi.var_6faefa54.target)) {
            self.poi.var_6faefa54 = struct::get(self.poi.var_6faefa54.target, "targetname");
        } else {
            self enable(0);
        }
        return undefined;
    }
    return self.poi.var_6faefa54;
}

// Namespace poi/namespace_b1048555
// Params 1, eflags: 0x6 linked
// Checksum 0x269e583f, Offset: 0x1550
// Size: 0x100
function private function_a6d41d6e(poi) {
    if (is_true(self.poi.var_9f099b2c)) {
        return 1;
    }
    /#
        assert(isdefined(poi));
    #/
    var_beabc994 = anglestoforward(self.angles);
    var_82b1379b = acos(vectordot(var_beabc994, vectornormalize(poi.origin - self geteye())));
    return var_82b1379b < (isdefined(self.poi.var_a3e1ce4f) ? self.poi.var_a3e1ce4f : 90);
}

// Namespace poi/namespace_b1048555
// Params 0, eflags: 0x6 linked
// Checksum 0x555e7145, Offset: 0x1658
// Size: 0x84
function private function_b4d1a9bb() {
    /#
        assert(!isdefined(self) || isactor(self));
    #/
    if (isdefined(self.stealth) && level flag::get("stealth_spotted")) {
        return 1;
    }
    if (isdefined(self.enemy)) {
        return 1;
    }
    return 0;
}

// Namespace poi/namespace_b1048555
// Params 2, eflags: 0x6 linked
// Checksum 0xd0a0e1e, Offset: 0x16e8
// Size: 0xb4
function private function_d0341c76(priority, var_9ced4e21) {
    self endon(#"death");
    result = undefined;
    result = self waittilltimeout(var_9ced4e21, #"stealth_attack", #"enemy");
    if (result._notify == "stealth_attack" || result._notify == "enemy") {
        self ai::look_at(undefined, priority, 1);
    }
}

// Namespace poi/namespace_b1048555
// Params 5, eflags: 0x6 linked
// Checksum 0x995f9ddb, Offset: 0x17a8
// Size: 0x11e
function private function_4d1af993(var_411041d2 = 15, yawmax = 35, pitchmin = -20, pitchmax = 0, var_8fbcda45) {
    if (!isdefined(self.poi)) {
        self.poi = {};
    }
    self.poi.auto = {};
    self.poi.auto.yawmax = yawmax;
    self.poi.auto.var_411041d2 = var_411041d2;
    self.poi.auto.pitchmin = pitchmin;
    self.poi.auto.pitchmax = pitchmax;
    self.poi.auto.var_8fbcda45 = var_8fbcda45;
}

// Namespace poi/namespace_b1048555
// Params 0, eflags: 0x6 linked
// Checksum 0xaf04a1c5, Offset: 0x18d0
// Size: 0x242
function private function_c6ff2ee5() {
    self notify(#"hash_5ea869d8ad18e50b");
    self endon(#"hash_5ea869d8ad18e50b");
    self endon(#"death");
    var_796d6ecf = 500;
    var_b785492c = 0;
    var_8dfbd33c = 0;
    var_960224ae = gettime() + 30000;
    if (!isdefined(self.poi.auto)) {
        self function_4d1af993();
    }
    /#
        self childthread function_4c4e4ab0();
    #/
    while (1) {
        var_bed66f89 = 0;
        if (var_960224ae <= gettime()) {
            self.poi.auto.angles = (0, 0, 0);
            if (var_960224ae == var_b785492c) {
                var_bed66f89 = 1;
            }
        }
        if (var_b785492c <= gettime()) {
            var_960224ae = gettime() + int(randomfloatrange(0.8, 1.8) * 1000);
            var_8dfbd33c = gettime();
            function_504eb38e(var_bed66f89);
            var_456b9fca = var_796d6ecf - gettime();
            var_33e79978 = var_960224ae - gettime();
            if (abs(var_33e79978 - var_456b9fca) >= 550 && math::cointoss()) {
                var_b785492c = var_960224ae;
            } else if (var_456b9fca > 3000) {
                var_b785492c = gettime() + randomintrange(2000, 3000);
            } else {
                var_b785492c = gettime() + var_456b9fca + 550 + randomintrange(1000, 2000);
            }
        }
        waitframe(1);
    }
}

// Namespace poi/namespace_b1048555
// Params 1, eflags: 0x6 linked
// Checksum 0xc77edd4f, Offset: 0x1b20
// Size: 0x96
function private function_34ed055a(angles) {
    forward = anglestoforward(angles);
    var_553ec518 = rotatepoint(forward, self.angles);
    eye = self geteye();
    pos = eye + var_553ec518 * 128;
    return pos;
}

// Namespace poi/namespace_b1048555
// Params 0, eflags: 0x4
// Checksum 0x10c81cff, Offset: 0x1bc0
// Size: 0xcc
function private function_e019f08b() {
    yaw = randomfloatrange(-45, 45);
    pitch = randomfloatrange(-20, 20);
    pos = function_34ed055a((pitch, yaw, 0));
    self.poi.auto.var_90d58445 = 1;
    self thread function_18a11ca3();
    self ai::look_at(pos, 3, 1, 0.55);
}

// Namespace poi/namespace_b1048555
// Params 0, eflags: 0x6 linked
// Checksum 0x290bea74, Offset: 0x1c98
// Size: 0x4a
function private function_18a11ca3() {
    self notify(#"hash_73ae51491006140e");
    self endon(#"hash_73ae51491006140e");
    wait(0.55);
    self.poi.auto.var_90d58445 = 0;
}

// Namespace poi/namespace_b1048555
// Params 0, eflags: 0x4
// Checksum 0x76c59dbd, Offset: 0x1cf0
// Size: 0x2a
function private function_28f716d5() {
    return is_true(self.poi.auto.var_90d58445);
}

// Namespace poi/namespace_b1048555
// Params 1, eflags: 0x6 linked
// Checksum 0x27accee1, Offset: 0x1d28
// Size: 0x28c
function private function_504eb38e(var_bed66f89) {
    if (var_bed66f89) {
        self.poi.auto.angles = self.poi.auto.nextangles;
        yaw = randomfloatrange(self.poi.auto.angles[1] + 5, self.poi.auto.angles[1] + 10);
        pitch = randomfloatrange(5, 10);
        if (math::cointoss()) {
            pitch = pitch * -1;
        }
        pitch = self.poi.auto.angles[0] + pitch;
        if (math::cointoss()) {
            yaw = yaw * -1;
        }
    } else {
        var_97311e28 = self.poi.auto;
        yaw = randomfloatrange(var_97311e28.var_411041d2, var_97311e28.yawmax);
        pitch = randomfloatrange(var_97311e28.pitchmin, var_97311e28.pitchmax);
        if (math::cointoss()) {
            yaw = yaw * -1;
        }
        self.poi.auto.angles = (pitch, yaw, 0);
    }
    self.poi.auto.nextangles = (pitch, yaw, 0);
    self.poi.auto.var_f0ada51b = randomintrange(100, 300) + gettime();
    self ai::look_at(self.poi.auto.angles, 3, 1, 0, self.poi.auto.var_8fbcda45, 1);
}

// Namespace poi/namespace_b1048555
// Params 4, eflags: 0x4
// Checksum 0x270fd26c, Offset: 0x1fc0
// Size: 0x1ea
function private function_636d2b5d(yawmax, var_411041d2, pitchmin, pitchmax) {
    /#
        assert(isdefined(self.poi.auto));
    #/
    if (!isdefined(self.poi.auto.var_12ae34ee)) {
        self.poi.auto.var_12ae34ee = self.poi.auto.yawmax;
    }
    if (!isdefined(self.poi.auto.var_f38392e2)) {
        self.poi.auto.var_f38392e2 = self.poi.auto.var_411041d2;
    }
    if (!isdefined(self.poi.auto.var_c14fca00)) {
        self.poi.auto.var_c14fca00 = self.poi.auto.pitchmin;
    }
    if (!isdefined(self.poi.auto.var_b4ec95d6)) {
        self.poi.auto.var_b4ec95d6 = self.poi.auto.pitchmax;
    }
    self.poi.auto.yawmax = yawmax;
    self.poi.auto.var_411041d2 = var_411041d2;
    self.poi.auto.pitchmin = pitchmin;
    self.poi.auto.pitchmax = pitchmax;
}

// Namespace poi/namespace_b1048555
// Params 0, eflags: 0x4
// Checksum 0x6adfad52, Offset: 0x21b8
// Size: 0x182
function private function_d60aa558() {
    /#
        assert(isdefined(self.poi.auto.var_12ae34ee));
    #/
    /#
        assert(isdefined(self.poi.auto.var_f38392e2));
    #/
    /#
        assert(isdefined(self.poi.auto.var_c14fca00));
    #/
    /#
        assert(isdefined(self.poi.auto.var_b4ec95d6));
    #/
    self.poi.auto.yawmax = self.poi.auto.var_12ae34ee;
    self.poi.auto.var_411041d2 = self.poi.auto.var_f38392e2;
    self.poi.auto.pitchmin = self.poi.auto.var_c14fca00;
    self.poi.auto.pitchmax = self.poi.auto.var_b4ec95d6;
}

// Namespace poi/namespace_b1048555
// Params 1, eflags: 0x4
// Checksum 0x1e31aaab, Offset: 0x2348
// Size: 0x94
function private function_c30fad9a(*parms) {
    /#
        level notify(#"hash_4821a87b2782d121");
        level.poi.debug = getdvarint(#"hash_1986594f14fcd987", 0);
        if (is_true(level.poi.debug)) {
            level thread debug();
        }
    #/
}

// Namespace poi/namespace_b1048555
// Params 0, eflags: 0x4
// Checksum 0xe0170a7b, Offset: 0x23e8
// Size: 0x32a
function private debug() {
    /#
        self notify(#"hash_4821a87b2782d121");
        self endon(#"hash_4821a87b2782d121");
        var_3b1af2ae = get_array("<unknown string>", "<unknown string>");
        while (1) {
            if (isdefined(level.poi.var_5ee53e3)) {
                foreach (ai in level.poi.var_5ee53e3) {
                    if (isdefined(ai.poi.var_7dfe573d) && gettime() < (isdefined(ai.poi.var_7dfe573d.var_3b03815e) ? ai.poi.var_7dfe573d.var_3b03815e : gettime() + float(function_60d95f53()) / 1000)) {
                        line(ai geteye(), ai.poi.var_7dfe573d.origin, (0, 0, 1), 1, 0, 1);
                        continue;
                    }
                    if (isdefined(ai.poi.var_6faefa54)) {
                        line(ai geteye(), ai.poi.var_6faefa54.origin, (1, 0, 0), 1, 0, 1);
                        continue;
                    }
                    if (isdefined(ai.poi.var_5fccb5cd)) {
                        line(ai geteye(), ai.poi.var_5fccb5cd.origin, (1, 0, 0), 1, 0, 1);
                    }
                }
            }
            foreach (poi in var_3b1af2ae) {
                function_9c52ce45(poi);
            }
            waitframe(1);
        }
    #/
}

// Namespace poi/namespace_b1048555
// Params 0, eflags: 0x4
// Checksum 0x739f7f19, Offset: 0x2720
// Size: 0x126
function private function_4c4e4ab0() {
    /#
        while (1) {
            if (is_true(level.poi.debug) && isdefined(self.poi.auto.angles)) {
                localdir = anglestoforward(self.poi.auto.angles);
                worlddir = rotatepoint(localdir, angleclamp180(self.angles));
                line(self geteye(), self geteye() + worlddir * 50, (1, 0.5, 0), 1, 0, 1);
            }
            waitframe(1);
        }
    #/
}

// Namespace poi/namespace_b1048555
// Params 1, eflags: 0x4
// Checksum 0xabb28da5, Offset: 0x2850
// Size: 0x68c
function private function_9c52ce45(poi) {
    /#
        hs = 4;
        color = (0, 0, 1);
        text = "<unknown string>";
        auto = 1;
        if (!is_true(poi.script_auto_use)) {
            hs = 2;
            color = vectorscale((1, 1, 1), 0.2);
            text = "<unknown string>";
            auto = 0;
        }
        var_711c17c1 = float(isdefined(poi.var_715fc83d) ? poi.var_715fc83d : 0) * 1000;
        if (var_711c17c1 <= 0) {
            var_711c17c1 = 2000;
        }
        visible = 0;
        prev = undefined;
        next = undefined;
        if (isdefined(poi.target)) {
            next = get(poi.target, "<unknown string>");
        }
        if (isdefined(poi.targetname)) {
            prev = get(poi.targetname, "<unknown string>");
        }
        if (auto && isdefined(poi.var_3b03815e) && gettime() < poi.var_3b03815e + var_711c17c1) {
            print3d(poi.origin, "<unknown string>" + float(poi.var_3b03815e + var_711c17c1 - gettime()) / 1000, vectorscale((1, 1, 1), 0.2), 1, 0.25, 1);
        } else {
            line(poi.origin + (0, 0, hs), poi.origin + (0, 0, hs * -1), color, 1, 1, 1);
            line(poi.origin + (0, hs, 0), poi.origin + (0, hs * -1, 0), color, 1, 1, 1);
            line(poi.origin + (hs, 0, 0), poi.origin + (hs * -1, 0, 0), color, 1, 1, 1);
            time = "<unknown string>" + float(2000) / 1000;
            waittime = poi function_4b93f9c2();
            if (waittime > 0) {
                time = "<unknown string>";
                if (isdefined(poi.script_wait)) {
                    time = time + float(poi.script_wait);
                }
                if (isdefined(poi.script_wait_min) || isdefined(poi.script_wait_min)) {
                    if (time.size > 0) {
                        time = time + "<unknown string>";
                    }
                    time = time + (isdefined(poi.script_wait_min) ? poi.script_wait_min : 0);
                    if (isdefined(poi.script_wait_max) && float(poi.script_wait_max) > float(isdefined(poi.script_wait_min) ? poi.script_wait_min : 0)) {
                        time = time + "<unknown string>" + poi.script_wait_max;
                    }
                }
            }
            if (auto) {
                time = time + "<unknown string>" + (float(isdefined(poi.var_715fc83d) ? poi.var_715fc83d : 0) < 0 ? float(poi.var_715fc83d) : float(5000) / 1000);
            }
            print3d(poi.origin + vectorscale((0, 0, 1), 5), text, color, 1, 0.25, 1, 1);
            print3d(poi.origin + vectorscale((0, 0, -1), 10), time, color, 1, 0.25, 1, 1);
            visible = 1;
        }
        if (isdefined(next) && (gettime() < (isdefined(poi.var_3b03815e) ? poi.var_3b03815e : 0) || visible)) {
            line(poi.origin, next.origin, vectorscale((1, 1, 1), 0.5), 0.5, 1, 1);
            function_e82f6faf(vectorlerp(poi.origin, next.origin, 0.1), vectortoangles(next.origin - poi.origin), vectorscale((1, 1, 1), 0.5), 0, 10, 0);
        }
    #/
}

