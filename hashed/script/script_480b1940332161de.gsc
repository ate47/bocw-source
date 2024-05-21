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
function enable(shouldenable, firstpoint, var_8fbcda45) {
    assert(isactor(self));
    assert(shouldenable === 1 || shouldenable === 0, "<unknown string>");
    if (is_true(shouldenable)) {
        if (!isdefined(self.poi)) {
            self.poi = {};
        }
    } else if (!isdefined(self.poi)) {
        return;
    }
    if (!shouldenable && (isdefined(self.poi.currentpoi.var_3b03815e) ? self.poi.currentpoi.var_3b03815e : 0) > gettime()) {
        self ai::look_at(undefined, 3);
    }
    self.poi.currentpoi = undefined;
    self.poi.nextpoi = undefined;
    self.poi.doingpoi = shouldenable;
    self.poi.var_8fbcda45 = var_8fbcda45;
    if (!shouldenable) {
        assert(isdefined(level.poi.var_5ee53e3), "<unknown string>");
        arrayremovevalue(level.poi.var_5ee53e3, self);
        self.turnrate = isdefined(self.poi.poi_oldturnrate) ? self.poi.poi_oldturnrate : self.turnrate;
        self.gunadditiveoverride = undefined;
        self.gunposeoverride = undefined;
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
    if (isdefined(level.poi.fnfindcqbpointsofinterest)) {
        level thread [[ level.poi.fnfindcqbpointsofinterest ]]();
    }
    assert(!isdefined(firstpoint) || isstruct(firstpoint));
    self.poi.poi_oldturnrate = self.turnrate;
    self.turnrate = 0.25;
    self.poi.leftaimlimit = 90;
    self.poi.rightaimlimit = -90;
    self.poi.poi_firstpoint = firstpoint;
    self.gunposeoverride = "disable";
    self notify(#"poi_enabled");
}

// Namespace poi/namespace_b1048555
// Params 6, eflags: 0x2 linked
// Checksum 0x1476d96e, Offset: 0x630
// Size: 0x186
function function_fc1d22bd(shouldenable, yawmin, yawmax, pitchmin, pitchmax, var_8fbcda45) {
    shouldenable = is_true(shouldenable);
    if (shouldenable && !isdefined(self.poi.auto)) {
        self function_4d1af993(yawmin, yawmax, pitchmin, pitchmax, var_8fbcda45);
        self thread function_c6ff2ee5();
        self notify(#"hash_4f88221ad3977829");
        return;
    }
    if (!shouldenable && isdefined(self.poi.auto)) {
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
    level.poi.fnfindcqbpointsofinterest = &function_b31aaef9;
    level.poi.fnenable = &enable;
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
    if (is_true(level.poi.alreadyfindingpoi)) {
        return;
    }
    level.poi.alreadyfindingpoi = 1;
    waitframe(1);
    while (true) {
        if (!isarray(level.poi.var_5ee53e3) || level.poi.var_5ee53e3.size == 0) {
            level.poi.alreadyfindingpoi = undefined;
            return;
        }
        var_6a9ced4 = [];
        waited = 0;
        foreach (guy in level.poi.var_5ee53e3) {
            if (isalive(guy) && is_true(guy.poi.doingpoi) && !guy function_b4d1a9bb()) {
                poi = guy function_f3a2a643();
                if (isdefined(poi) && poi !== guy.poi.currentpoi) {
                    now = gettime();
                    guy.poi.poi_starttime = now;
                    guy.poi.currentpoi = poi;
                    var_8fbcda45 = isdefined(poi.var_1eabcced) ? poi.var_1eabcced : self.poi.var_8fbcda45;
                    var_9ced4e21 = poi util::function_4b93f9c2();
                    if ((isdefined(var_9ced4e21) ? var_9ced4e21 : 0) == 0) {
                        var_9ced4e21 = float(2000) / 1000;
                    }
                    guy.poi.currentpoi.var_3b03815e = now + var_9ced4e21 * 1000;
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
    haspoi = isdefined(self.poi.currentpoi);
    if (!haspoi && isdefined(self.poi.poi_firstpoint)) {
        return function_aabc1f4c();
    }
    if (haspoi && isdefined(self.poi.currentpoi.target) || isdefined(self.poi.nextpoi)) {
        return function_75334336(haspoi);
    }
    self.poi.nextpoi = undefined;
    if (haspoi) {
        assert(isdefined(self.poi.poi_starttime));
        if (gettime() < self.poi.poi_starttime + 2000) {
            return self.poi.currentpoi;
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
    assert(isdefined(self.poi.poi_firstpoint));
    if (sighttracepassed(self geteye(), self.poi.poi_firstpoint.origin, 0, undefined)) {
        poi = self.poi.poi_firstpoint;
        if (isdefined(poi.target)) {
            self.poi.nextpoi = struct::get(poi.target, "targetname");
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
function private function_75334336(haspoi) {
    min_time = undefined;
    assert(haspoi && isdefined(self.poi.currentpoi.target) || isdefined(self.poi.nextpoi));
    if (haspoi) {
        if (isdefined(self.poi.currentpoi.target)) {
            self.poi.nextpoi = struct::get(self.poi.currentpoi.target, "targetname");
        } else {
            self.poi.nextpoi = undefined;
        }
    }
    if (isdefined(self.poi.poi_firstpoint)) {
        self.poi.poi_firstpoint = undefined;
    }
    min_time = 2000;
    if (haspoi) {
        var_d78af89e = self.poi.currentpoi util::function_4b93f9c2();
        if (var_d78af89e > 0) {
            min_time = var_d78af89e;
        }
    }
    if (!isdefined(self.poi.nextpoi)) {
        self notify(#"hash_1a7483ed1381776b");
        if (gettime() < self.poi.poi_starttime + min_time && function_a6d41d6e(self.poi.currentpoi)) {
            return self.poi.currentpoi;
        } else {
            self enable(0);
            return undefined;
        }
    }
    if (haspoi && gettime() < self.poi.poi_starttime + min_time && function_a6d41d6e(self.poi.currentpoi)) {
        return self.poi.currentpoi;
    }
    if (!sighttracepassed(self geteye(), self.poi.nextpoi.origin, 0, undefined)) {
        return undefined;
    }
    if (!function_a6d41d6e(self.poi.nextpoi)) {
        if (isdefined(self.poi.nextpoi.target)) {
            self.poi.nextpoi = struct::get(self.poi.nextpoi.target, "targetname");
        } else {
            self enable(0);
        }
        return undefined;
    }
    return self.poi.nextpoi;
}

// Namespace poi/namespace_b1048555
// Params 1, eflags: 0x6 linked
// Checksum 0x269e583f, Offset: 0x1550
// Size: 0x100
function private function_a6d41d6e(poi) {
    if (is_true(self.poi.poi_disablefov)) {
        return true;
    }
    assert(isdefined(poi));
    myforward = anglestoforward(self.angles);
    var_82b1379b = acos(vectordot(myforward, vectornormalize(poi.origin - self geteye())));
    return var_82b1379b < (isdefined(self.poi.poi_fovlimit) ? self.poi.poi_fovlimit : 90);
}

// Namespace poi/namespace_b1048555
// Params 0, eflags: 0x6 linked
// Checksum 0x555e7145, Offset: 0x1658
// Size: 0x84
function private function_b4d1a9bb() {
    assert(!isdefined(self) || isactor(self));
    if (isdefined(self.stealth) && level flag::get("stealth_spotted")) {
        return true;
    }
    if (isdefined(self.enemy)) {
        return true;
    }
    return false;
}

// Namespace poi/namespace_b1048555
// Params 2, eflags: 0x6 linked
// Checksum 0xd0a0e1e, Offset: 0x16e8
// Size: 0xb4
function private function_d0341c76(priority, var_9ced4e21) {
    self endon(#"death");
    result = self waittilltimeout(var_9ced4e21, #"stealth_attack", #"enemy");
    if (result._notify == "stealth_attack" || result._notify == "enemy") {
        self ai::look_at(undefined, priority, 1);
    }
}

// Namespace poi/namespace_b1048555
// Params 5, eflags: 0x6 linked
// Checksum 0x995f9ddb, Offset: 0x17a8
// Size: 0x11e
function private function_4d1af993(yawmin = 15, yawmax = 35, pitchmin = -20, pitchmax = 0, var_8fbcda45) {
    if (!isdefined(self.poi)) {
        self.poi = {};
    }
    self.poi.auto = {};
    self.poi.auto.yawmax = yawmax;
    self.poi.auto.yawmin = yawmin;
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
    while (true) {
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
    worldforward = rotatepoint(forward, self.angles);
    eye = self geteye();
    pos = eye + worldforward * 128;
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
    self.poi.auto.glancing = 1;
    self thread function_18a11ca3();
    self ai::look_at(pos, 3, 1, 0.55);
}

// Namespace poi/namespace_b1048555
// Params 0, eflags: 0x6 linked
// Checksum 0x290bea74, Offset: 0x1c98
// Size: 0x4a
function private function_18a11ca3() {
    self notify(#"poiauto_glanceend");
    self endon(#"poiauto_glanceend");
    wait(0.55);
    self.poi.auto.glancing = 0;
}

// Namespace poi/namespace_b1048555
// Params 0, eflags: 0x4
// Checksum 0x76c59dbd, Offset: 0x1cf0
// Size: 0x2a
function private function_28f716d5() {
    return is_true(self.poi.auto.glancing);
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
            pitch *= -1;
        }
        pitch = self.poi.auto.angles[0] + pitch;
        if (math::cointoss()) {
            yaw *= -1;
        }
    } else {
        poiauto = self.poi.auto;
        yaw = randomfloatrange(poiauto.yawmin, poiauto.yawmax);
        pitch = randomfloatrange(poiauto.pitchmin, poiauto.pitchmax);
        if (math::cointoss()) {
            yaw *= -1;
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
function private function_636d2b5d(yawmax, yawmin, pitchmin, pitchmax) {
    assert(isdefined(self.poi.auto));
    if (!isdefined(self.poi.auto.og_yawmax)) {
        self.poi.auto.og_yawmax = self.poi.auto.yawmax;
    }
    if (!isdefined(self.poi.auto.og_yawmin)) {
        self.poi.auto.og_yawmin = self.poi.auto.yawmin;
    }
    if (!isdefined(self.poi.auto.og_pitchmin)) {
        self.poi.auto.og_pitchmin = self.poi.auto.pitchmin;
    }
    if (!isdefined(self.poi.auto.og_pitchmax)) {
        self.poi.auto.og_pitchmax = self.poi.auto.pitchmax;
    }
    self.poi.auto.yawmax = yawmax;
    self.poi.auto.yawmin = yawmin;
    self.poi.auto.pitchmin = pitchmin;
    self.poi.auto.pitchmax = pitchmax;
}

// Namespace poi/namespace_b1048555
// Params 0, eflags: 0x4
// Checksum 0x6adfad52, Offset: 0x21b8
// Size: 0x182
function private function_d60aa558() {
    assert(isdefined(self.poi.auto.og_yawmax));
    assert(isdefined(self.poi.auto.og_yawmin));
    assert(isdefined(self.poi.auto.og_pitchmin));
    assert(isdefined(self.poi.auto.og_pitchmax));
    self.poi.auto.yawmax = self.poi.auto.og_yawmax;
    self.poi.auto.yawmin = self.poi.auto.og_yawmin;
    self.poi.auto.pitchmin = self.poi.auto.og_pitchmin;
    self.poi.auto.pitchmax = self.poi.auto.og_pitchmax;
}

/#

    // Namespace poi/namespace_b1048555
    // Params 1, eflags: 0x4
    // Checksum 0x1e31aaab, Offset: 0x2348
    // Size: 0x94
    function private function_c30fad9a(*parms) {
        level notify(#"hash_4821a87b2782d121");
        level.poi.debug = getdvarint(#"hash_1986594f14fcd987", 0);
        if (is_true(level.poi.debug)) {
            level thread debug();
        }
    }

    // Namespace poi/namespace_b1048555
    // Params 0, eflags: 0x4
    // Checksum 0xe0170a7b, Offset: 0x23e8
    // Size: 0x32a
    function private debug() {
        self notify(#"hash_4821a87b2782d121");
        self endon(#"hash_4821a87b2782d121");
        var_3b1af2ae = struct::get_array("<unknown string>", "<unknown string>");
        while (true) {
            if (isdefined(level.poi.var_5ee53e3)) {
                foreach (ai in level.poi.var_5ee53e3) {
                    if (isdefined(ai.poi.currentpoi) && gettime() < (isdefined(ai.poi.currentpoi.var_3b03815e) ? ai.poi.currentpoi.var_3b03815e : gettime() + float(function_60d95f53()) / 1000)) {
                        line(ai geteye(), ai.poi.currentpoi.origin, (0, 0, 1), 1, 0, 1);
                        continue;
                    }
                    if (isdefined(ai.poi.nextpoi)) {
                        line(ai geteye(), ai.poi.nextpoi.origin, (1, 0, 0), 1, 0, 1);
                        continue;
                    }
                    if (isdefined(ai.poi.poi_firstpoint)) {
                        line(ai geteye(), ai.poi.poi_firstpoint.origin, (1, 0, 0), 1, 0, 1);
                    }
                }
            }
            foreach (poi in var_3b1af2ae) {
                function_9c52ce45(poi);
            }
            waitframe(1);
        }
    }

    // Namespace poi/namespace_b1048555
    // Params 0, eflags: 0x4
    // Checksum 0x739f7f19, Offset: 0x2720
    // Size: 0x126
    function private function_4c4e4ab0() {
        while (true) {
            if (is_true(level.poi.debug) && isdefined(self.poi.auto.angles)) {
                localdir = anglestoforward(self.poi.auto.angles);
                worlddir = rotatepoint(localdir, angleclamp180(self.angles));
                line(self geteye(), self geteye() + worlddir * 50, (1, 0.5, 0), 1, 0, 1);
            }
            waitframe(1);
        }
    }

    // Namespace poi/namespace_b1048555
    // Params 1, eflags: 0x4
    // Checksum 0xabb28da5, Offset: 0x2850
    // Size: 0x68c
    function private function_9c52ce45(poi) {
        hs = 4;
        color = (0, 0, 1);
        text = "<unknown string>";
        auto = 1;
        if (!is_true(poi.script_auto_use)) {
            hs = 2;
            color = (0.2, 0.2, 0.2);
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
            next = struct::get(poi.target, "<unknown string>");
        }
        if (isdefined(poi.targetname)) {
            prev = struct::get(poi.targetname, "<unknown string>");
        }
        if (auto && isdefined(poi.var_3b03815e) && gettime() < poi.var_3b03815e + var_711c17c1) {
            print3d(poi.origin, "<unknown string>" + float(poi.var_3b03815e + var_711c17c1 - gettime()) / 1000, (0.2, 0.2, 0.2), 1, 0.25, 1);
        } else {
            line(poi.origin + (0, 0, hs), poi.origin + (0, 0, hs * -1), color, 1, 1, 1);
            line(poi.origin + (0, hs, 0), poi.origin + (0, hs * -1, 0), color, 1, 1, 1);
            line(poi.origin + (hs, 0, 0), poi.origin + (hs * -1, 0, 0), color, 1, 1, 1);
            time = "<unknown string>" + float(2000) / 1000;
            waittime = poi util::function_4b93f9c2();
            if (waittime > 0) {
                time = "<unknown string>";
                if (isdefined(poi.script_wait)) {
                    time += float(poi.script_wait);
                }
                if (isdefined(poi.script_wait_min) || isdefined(poi.script_wait_min)) {
                    if (time.size > 0) {
                        time += "<unknown string>";
                    }
                    time += isdefined(poi.script_wait_min) ? poi.script_wait_min : 0;
                    if (isdefined(poi.script_wait_max) && float(poi.script_wait_max) > float(isdefined(poi.script_wait_min) ? poi.script_wait_min : 0)) {
                        time = time + "<unknown string>" + poi.script_wait_max;
                    }
                }
            }
            if (auto) {
                time = time + "<unknown string>" + (float(isdefined(poi.var_715fc83d) ? poi.var_715fc83d : 0) < 0 ? float(5000) / 1000 : float(poi.var_715fc83d));
            }
            print3d(poi.origin + (0, 0, 5), text, color, 1, 0.25, 1, 1);
            print3d(poi.origin + (0, 0, -10), time, color, 1, 0.25, 1, 1);
            visible = 1;
        }
        if (isdefined(next) && (gettime() < (isdefined(poi.var_3b03815e) ? poi.var_3b03815e : 0) || visible)) {
            line(poi.origin, next.origin, (0.5, 0.5, 0.5), 0.5, 1, 1);
            debug::drawarrow(vectorlerp(poi.origin, next.origin, 0.1), vectortoangles(next.origin - poi.origin), (0.5, 0.5, 0.5), 0, 10, 0);
        }
    }

#/
