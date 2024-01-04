// Atian COD Tools GSC CW decompiler test
#using script_1cd690a97dfca36e;
#using script_3318f11e3a1b2358;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\serverfield_shared.csc;
#using script_1d4ca739cb476f50;
#using scripts\core_common\math_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\clientfield_shared.csc;

#namespace namespace_14de327b;

// Namespace namespace_14de327b/namespace_14de327b
// Params 0, eflags: 0x5
// Checksum 0xb48e62f2, Offset: 0x350
// Size: 0x34
function private autoexec __init__system__() {
    system::register("lockpick", &function_70a657d8, undefined, undefined, undefined);
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 0, eflags: 0x6 linked
// Checksum 0xecc459a2, Offset: 0x390
// Size: 0x104
function private function_70a657d8() {
    clientfield::register("toplayer", "lockpick_state", 1, 1, "int", &function_ef87790b, 0, 0);
    clientfield::register("toplayer", "lockpick_num_pins", 1, 3, "int", &function_a24ecc14, 0, 0);
    clientfield::register("toplayer", "lockpick_lock_index", 1, 1, "int", &function_72047528, 0, 0);
    serverfield::register("lockpick_state", 1, 2, "int");
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 7, eflags: 0x6 linked
// Checksum 0x48a9ce99, Offset: 0x4a0
// Size: 0xe4
function private function_ef87790b(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!self util::function_50ed1561(binitialsnap)) {
        return;
    }
    if (isdemoplaying()) {
        return;
    }
    if (fieldname == bwastimejump) {
        return;
    }
    self function_d65cbeab();
    start = bwastimejump & 1;
    if (start) {
        self function_3653370a(binitialsnap);
    } else {
        self function_9b9eaf7e();
    }
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 7, eflags: 0x6 linked
// Checksum 0x8d7a2f4c, Offset: 0x590
// Size: 0x9e
function private function_a24ecc14(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (isdemoplaying()) {
        return;
    }
    if (!self util::function_50ed1561(binitialsnap)) {
        return;
    }
    if (fieldname == bwastimejump) {
        return;
    }
    self function_d65cbeab();
    self.var_e10de4ad.difficulty = bwastimejump;
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 7, eflags: 0x6 linked
// Checksum 0x50c5a350, Offset: 0x638
// Size: 0x9e
function private function_72047528(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (isdemoplaying()) {
        return;
    }
    if (!self util::function_50ed1561(binitialsnap)) {
        return;
    }
    if (fieldname == bwastimejump) {
        return;
    }
    self function_d65cbeab();
    self.var_e10de4ad.var_843d0b2b = bwastimejump;
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 0, eflags: 0x6 linked
// Checksum 0x9df169a2, Offset: 0x6e0
// Size: 0x5e
function private function_d65cbeab() {
    if (!isdefined(self.var_e10de4ad)) {
        self.var_e10de4ad = spawnstruct();
        self.var_e10de4ad.enabled = 0;
        self.var_e10de4ad.difficulty = 1;
        self.var_e10de4ad.var_843d0b2b = 0;
    }
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 1, eflags: 0x6 linked
// Checksum 0xeface018, Offset: 0x748
// Size: 0xa4
function private function_3653370a(localclientnum) {
    self function_d65cbeab();
    if (self.var_e10de4ad.enabled) {
        return;
    }
    self function_64609828();
    while (function_18308bc1(localclientnum)) {
        waitframe(1);
    }
    snd::play("evt_lockpick_start", self);
    self thread function_bef7a7e6(localclientnum);
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 0, eflags: 0x6 linked
// Checksum 0xf8214ecc, Offset: 0x7f8
// Size: 0x4bc
function private function_64609828() {
    self.var_e10de4ad.enabled = 1;
    self.var_e10de4ad.running = 1;
    self.var_e10de4ad.complete = 0;
    self.var_e10de4ad.var_dd2c6e79 = function_80847fa6(self.localclientnum);
    self.var_e10de4ad.var_c393c6bc = getscriptbundle("minigame_lockpick");
    /#
        assert(self.var_e10de4ad.difficulty > 0 && self.var_e10de4ad.difficulty <= 5);
    #/
    self.var_e10de4ad.var_b263f6a2 = getscriptbundle(self.var_e10de4ad.var_c393c6bc.var_b263f6a2);
    self.var_e10de4ad.scratch = spawnstruct();
    self.var_e10de4ad.var_e9d52f77 = self.var_e10de4ad.var_b263f6a2.var_b263f6a2[self.var_e10de4ad.var_843d0b2b].var_e10de4ad;
    self.var_e10de4ad.var_be8b922e = getscriptbundle(self.var_e10de4ad.var_e9d52f77);
    self.var_e10de4ad.scratch.var_83e465eb = self.var_e10de4ad.difficulty;
    self.var_e10de4ad.scratch.var_b47c6dfb = 1;
    self.var_e10de4ad.scratch.var_b4059b5f = 0;
    self.var_e10de4ad.scratch.var_ff738e09 = 0;
    self.var_e10de4ad.scratch.var_7c5c4577 = 0;
    self.var_e10de4ad.scratch.var_f2412eaf = 0;
    self.var_e10de4ad.scratch.var_b2a5eac8 = 0;
    self.var_e10de4ad.audio = spawnstruct();
    self.var_e10de4ad.audio.var_d8de23d1 = 0;
    self.var_e10de4ad.audio.var_78430c0a = 0;
    self.var_e10de4ad.audio.var_d1d4a588 = 0;
    self.var_e10de4ad.audio.var_6a7c9466 = 0;
    self.var_e10de4ad.audio.var_6dc5be9f = 0;
    self.var_e10de4ad.audio.var_cf3d2929 = 0;
    self function_a0aa5f5f(1);
    function_90b8720(self.localclientnum, self.var_e10de4ad.scratch.var_83e465eb);
    function_2c6a1130(self.localclientnum, self.var_e10de4ad.var_e9d52f77);
    function_28ef17b1(self.localclientnum, self.var_e10de4ad.scratch.var_b4059b5f);
    function_192c93dd(self.localclientnum, self.var_e10de4ad.scratch.var_ff738e09);
    function_59f6b71c(self.localclientnum, self.var_e10de4ad.scratch.var_7c5c4577);
    function_efaef15b(self.localclientnum, 0);
    function_ef54083f(self.localclientnum, 0);
    for (var_bfb4aca5 = 1; var_bfb4aca5 <= 5; var_bfb4aca5++) {
        function_e9e03641(self.localclientnum, var_bfb4aca5, 0);
    }
    function_ef02d214(self.localclientnum, 1);
    self serverfield::set("lockpick_state", 0);
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 0, eflags: 0x6 linked
// Checksum 0x8e90713a, Offset: 0xcc0
// Size: 0x72
function private function_17e7b461() {
    return lerpfloat(self.var_e10de4ad.var_be8b922e.var_84bfe4cb, self.var_e10de4ad.var_be8b922e.var_1c764e77, self.var_e10de4ad.scratch.var_b47c6dfb / self.var_e10de4ad.scratch.var_83e465eb);
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 1, eflags: 0x6 linked
// Checksum 0x26cdeb45, Offset: 0xd40
// Size: 0x452
function private function_a0aa5f5f(init) {
    if (isdefined(init) ? init : 0) {
        self.var_e10de4ad.scratch.var_5d92bcc8 = randomfloatrange(self.var_e10de4ad.var_be8b922e.var_84bfe4cb * self.var_e10de4ad.var_be8b922e.var_9be11610, 90) * math::randomsign();
        self.var_e10de4ad.scratch.var_9fa74a7c = math::sign(self.var_e10de4ad.scratch.var_5d92bcc8);
        self.var_e10de4ad.scratch.var_66a8f3b7 = randomfloatrange(self.var_e10de4ad.var_be8b922e.var_84bfe4cb * 2, abs(-60)) * math::randomsign();
    } else {
        var_4cbec6df = self function_17e7b461();
        var_17ecda5a = 0;
        var_76514cc5 = var_4cbec6df * self.var_e10de4ad.var_be8b922e.var_9be11610;
        if (self.var_e10de4ad.var_be8b922e.var_71de0627 == "random") {
            var_17ecda5a = randomfloatrange(var_76514cc5, 90) * math::randomsign();
            if (abs(self.var_e10de4ad.scratch.var_5d92bcc8 + var_17ecda5a) > 90) {
                var_17ecda5a = var_17ecda5a * -1;
            }
        } else if (self.var_e10de4ad.var_be8b922e.var_71de0627 == "alternating sides") {
            var_17ecda5a = randomfloatrange(var_76514cc5, 90 + abs(self.var_e10de4ad.scratch.var_5d92bcc8)) * math::sign(self.var_e10de4ad.scratch.var_5d92bcc8) * -1;
        } else if (self.var_e10de4ad.var_be8b922e.var_71de0627 == "alternating directions") {
            self.var_e10de4ad.scratch.var_9fa74a7c = self.var_e10de4ad.scratch.var_9fa74a7c * -1;
            var_7f321bad = var_4cbec6df * self.var_e10de4ad.var_be8b922e.var_59079673;
            var_17ecda5a = randomfloatrange(var_76514cc5, var_7f321bad) * self.var_e10de4ad.scratch.var_9fa74a7c;
        }
        self.var_e10de4ad.scratch.var_5d92bcc8 = self.var_e10de4ad.scratch.var_5d92bcc8 + var_17ecda5a;
        self.var_e10de4ad.scratch.var_66a8f3b7 = randomfloatrange(self.var_e10de4ad.var_be8b922e.var_84bfe4cb * 2, abs(-60)) * math::sign(self.var_e10de4ad.scratch.var_66a8f3b7) * -1;
    }
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 1, eflags: 0x6 linked
// Checksum 0x6adb3532, Offset: 0x11a0
// Size: 0x12c
function private function_bef7a7e6(localclientnum) {
    self endoncallback(&function_9b9eaf7e, #"death", #"disconnect", #"hash_4296cd5b3f255c63");
    self function_95eb0e7b(self.var_e10de4ad.var_be8b922e.var_346d34d3, 0);
    while (self.var_e10de4ad.running) {
        self function_969d3dfa();
        self function_8b0dc9ba(localclientnum);
        self function_7265f078(localclientnum);
        waitframe(1);
    }
    while (self.var_e10de4ad.enabled) {
        self function_d04f90d8(localclientnum);
        waitframe(1);
    }
    self function_35d8ea7();
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 0, eflags: 0x2 linked
// Checksum 0xb0aa96a7, Offset: 0x12d8
// Size: 0x182
function function_969d3dfa() {
    if (!isdefined(self.var_e10de4ad.scratch.var_c17cd87c)) {
        self.var_e10de4ad.scratch.var_c17cd87c = getrealtime();
    }
    self.var_e10de4ad.currenttime = getrealtime();
    self.var_e10de4ad.scratch.frametime = self.var_e10de4ad.currenttime - self.var_e10de4ad.scratch.var_c17cd87c;
    if (self.var_e10de4ad.scratch.frametime < 1) {
        self.var_e10de4ad.scratch.frametime = 1;
    } else if (self.var_e10de4ad.scratch.frametime > 100) {
        self.var_e10de4ad.scratch.frametime = 100;
    }
    self.var_e10de4ad.scratch.var_e0861271 = self.var_e10de4ad.scratch.frametime / 1000;
    self.var_e10de4ad.scratch.var_c17cd87c = self.var_e10de4ad.currenttime;
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 1, eflags: 0x2 linked
// Checksum 0xcd05dbad, Offset: 0x1468
// Size: 0xbe
function function_d04f90d8(localclientnum) {
    var_53044e8e = gamepadusedlast(localclientnum);
    if (!self.var_e10de4ad.complete && (var_53044e8e && self flag::get(#"hash_3c27402259e4c18e") || !var_53044e8e && function_18308bc1(localclientnum))) {
        snd::play("evt_lockpick_end", self);
        self notify(#"hash_4296cd5b3f255c63");
    }
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 1, eflags: 0x6 linked
// Checksum 0xe1f8eb31, Offset: 0x1530
// Size: 0x30c
function private function_8b0dc9ba(localclientnum) {
    self.var_e10de4ad.scratch.var_8e926fa1 = gamepadusedlast(localclientnum);
    self.var_e10de4ad.scratch.input = util::function_ca4b4e19(localclientnum, 0, self.var_e10de4ad.scratch.var_8e926fa1);
    if (self.var_e10de4ad.scratch.var_8e926fa1) {
        var_859fc98 = self.var_e10de4ad.var_be8b922e.var_4436bd13 == "look" && self.var_e10de4ad.var_be8b922e.var_f1206d0d == "left-right" || self.var_e10de4ad.var_be8b922e.var_4436bd13 != "look" && self.var_e10de4ad.var_be8b922e.var_d74b78fc == "tension";
        self.var_e10de4ad.scratch.input[#"look"] = util::function_63320ea1(self.var_e10de4ad.scratch.input[#"look"], 0.2, var_859fc98);
        var_bef152 = self.var_e10de4ad.var_be8b922e.var_4436bd13 == "move" && self.var_e10de4ad.var_be8b922e.var_f1206d0d == "left-right" || self.var_e10de4ad.var_be8b922e.var_4436bd13 != "move" && self.var_e10de4ad.var_be8b922e.var_d74b78fc == "tension";
        self.var_e10de4ad.scratch.input[#"move"] = util::function_63320ea1(self.var_e10de4ad.scratch.input[#"move"], 0.2, var_bef152);
    } else {
        self.var_e10de4ad.scratch.input[#"look"] = self.var_e10de4ad.scratch.input[#"look"] * 10;
    }
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 1, eflags: 0x6 linked
// Checksum 0x248ba8e9, Offset: 0x1848
// Size: 0x28c
function private function_395ef29b(input) {
    if (self.var_e10de4ad.var_be8b922e.var_f1206d0d == "left-right" || !self.var_e10de4ad.scratch.var_8e926fa1) {
        self.var_e10de4ad.scratch.var_b4059b5f = self.var_e10de4ad.scratch.var_b4059b5f - input[0] * self.var_e10de4ad.var_be8b922e.var_b0b43710 * self.var_e10de4ad.scratch.var_e0861271;
    } else if (self.var_e10de4ad.var_be8b922e.var_f1206d0d == "full arc") {
        if (length(input) > 0.5) {
            yaw = angleclamp180(vectortoangles(input)[1] - 90);
            if (yaw >= -150 && yaw <= 150) {
                self.var_e10de4ad.scratch.var_b4059b5f = anglelerp(self.var_e10de4ad.scratch.var_b4059b5f, math::clamp(yaw, -90, 90), 0.25);
            }
        } else {
            self.var_e10de4ad.scratch.var_b4059b5f = anglelerp(self.var_e10de4ad.scratch.var_b4059b5f, 0, 0.25);
        }
    }
    self.var_e10de4ad.scratch.var_b4059b5f = math::clamp(self.var_e10de4ad.scratch.var_b4059b5f, -90, 90);
    function_28ef17b1(self.localclientnum, self.var_e10de4ad.scratch.var_b4059b5f);
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 1, eflags: 0x6 linked
// Checksum 0x9b80412a, Offset: 0x1ae0
// Size: 0x32c
function private function_fcaeb0c3(input) {
    if (self.var_e10de4ad.var_be8b922e.var_d74b78fc == "auto") {
        goto LOC_000002f8;
    }
    if (self.var_e10de4ad.var_be8b922e.var_d74b78fc == "tension" || !self.var_e10de4ad.scratch.var_8e926fa1) {
        if (input[0] < 0) {
            if (input[0] < -0.75) {
                self.var_e10de4ad.scratch.var_7c5c4577 = anglelerp(self.var_e10de4ad.scratch.var_7c5c4577, -60, 0.25);
            } else {
                self.var_e10de4ad.scratch.var_7c5c4577 = anglelerp(self.var_e10de4ad.scratch.var_7c5c4577, input[0] * -60 * -1, 0.25);
            }
        } else {
            self.var_e10de4ad.scratch.var_7c5c4577 = anglelerp(self.var_e10de4ad.scratch.var_7c5c4577, input[0] * 5, 0.25);
        }
    } else if (self.var_e10de4ad.var_be8b922e.var_d74b78fc == "sweetspot") {
        if (length(input) > 0.5) {
            yaw = angleclamp180(vectortoangles(input)[1] + 90);
            if (yaw >= -150 && yaw <= 150) {
                self.var_e10de4ad.scratch.var_7c5c4577 = anglelerp(self.var_e10de4ad.scratch.var_7c5c4577, math::clamp(yaw, -60, abs(-60)), 0.25);
            }
        } else {
            self.var_e10de4ad.scratch.var_7c5c4577 = anglelerp(self.var_e10de4ad.scratch.var_7c5c4577, 0, 0.25);
        LOC_000002f8:
        }
    LOC_000002f8:
    }
LOC_000002f8:
    function_59f6b71c(self.localclientnum, self.var_e10de4ad.scratch.var_7c5c4577);
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 1, eflags: 0x6 linked
// Checksum 0x31f02b24, Offset: 0x1e18
// Size: 0x30c
function private function_7265f078(localclientnum) {
    self function_d04f90d8(localclientnum);
    var_c7cdd0d8 = self.var_e10de4ad.scratch.input[#"look"];
    var_9e82ccf9 = self.var_e10de4ad.scratch.input[#"move"];
    if (self.var_e10de4ad.var_be8b922e.var_4436bd13 == "move") {
        var_c7cdd0d8 = self.var_e10de4ad.scratch.input[#"move"];
        var_9e82ccf9 = self.var_e10de4ad.scratch.input[#"look"];
    }
    self function_395ef29b(var_c7cdd0d8);
    self function_fcaeb0c3(var_9e82ccf9);
    var_999c568b = 0;
    if (self.var_e10de4ad.var_be8b922e.var_d74b78fc == "sweetspot" && self.var_e10de4ad.scratch.var_8e926fa1) {
        var_999c568b = abs(self.var_e10de4ad.scratch.var_7c5c4577 - self.var_e10de4ad.scratch.var_66a8f3b7) <= self.var_e10de4ad.var_be8b922e.var_84bfe4cb;
    } else if (self.var_e10de4ad.var_be8b922e.var_d74b78fc == "auto") {
        var_999c568b = 1;
    } else {
        var_999c568b = self.var_e10de4ad.scratch.var_7c5c4577 <= -59.4;
    }
    if (var_999c568b && self.var_e10de4ad.var_be8b922e.var_f1206d0d == "full arc" && self.var_e10de4ad.scratch.var_8e926fa1 && length(var_c7cdd0d8) < 0.5) {
        var_999c568b = 0;
    }
    self function_74dbcf3e(var_999c568b);
    self function_2d0a7942(self.var_e10de4ad.var_be8b922e.var_346d34d3, self.var_e10de4ad.scratch.var_b2a5eac8);
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 1, eflags: 0x6 linked
// Checksum 0x1b077bc1, Offset: 0x2130
// Size: 0x59c
function private function_74dbcf3e(var_999c568b) {
    var_4cbec6df = self function_17e7b461();
    var_60088c20 = absangleclamp180(self.var_e10de4ad.scratch.var_b4059b5f - self.var_e10de4ad.scratch.var_5d92bcc8);
    /#
        if (getdvarint(#"hash_39c760dd3b3fcc2f", 0)) {
            self.var_e10de4ad.complete = 1;
            self function_b3ef69ee();
            return;
        }
    #/
    var_bff04727 = var_60088c20 <= var_4cbec6df ? 0 : 1;
    var_ff738e09 = 0;
    if (var_60088c20 <= var_4cbec6df && var_999c568b) {
        self.var_e10de4ad.scratch.var_f2412eaf = self.var_e10de4ad.scratch.var_f2412eaf + self.var_e10de4ad.scratch.var_e0861271;
        if (self.var_e10de4ad.scratch.var_f2412eaf >= self.var_e10de4ad.var_be8b922e.var_426eb8da) {
            self function_e9e03641(self.localclientnum, self.var_e10de4ad.scratch.var_b47c6dfb, 2);
            var_ff738e09 = 0;
            self.var_e10de4ad.scratch.var_b47c6dfb++;
            self.var_e10de4ad.scratch.var_f2412eaf = 0;
            if (self.var_e10de4ad.scratch.var_b47c6dfb > self.var_e10de4ad.scratch.var_83e465eb) {
                self.var_e10de4ad.complete = 1;
                self function_b3ef69ee();
            } else {
                self function_a0aa5f5f();
            }
        } else {
            var_ff738e09 = 2;
        }
    } else {
        self.var_e10de4ad.scratch.var_f2412eaf = 0;
        if (var_60088c20 <= var_4cbec6df * 2 && var_999c568b) {
            self function_e9e03641(self.localclientnum, self.var_e10de4ad.scratch.var_b47c6dfb, 1);
            var_ff738e09 = 1;
        } else {
            self function_e9e03641(self.localclientnum, self.var_e10de4ad.scratch.var_b47c6dfb, 0);
            var_ff738e09 = 0;
        }
    }
    self function_192c93dd(self.localclientnum, var_ff738e09);
    if (var_999c568b) {
        self.var_e10de4ad.scratch.var_b2a5eac8 = 1 - (math::clamp(var_60088c20, var_4cbec6df, var_4cbec6df * 2) - var_4cbec6df) / var_4cbec6df;
    } else {
        self.var_e10de4ad.scratch.var_b2a5eac8 = 0;
    }
    if (self.var_e10de4ad.var_be8b922e.var_d74b78fc == "auto") {
        if (var_ff738e09 == 0) {
            self.var_e10de4ad.scratch.var_7c5c4577 = anglelerp(self.var_e10de4ad.scratch.var_7c5c4577, 0, 0.25);
        } else {
            self.var_e10de4ad.scratch.var_7c5c4577 = anglelerp(self.var_e10de4ad.scratch.var_7c5c4577, -60, 0.25);
        }
        if (var_ff738e09 == 2) {
            self function_efaef15b(self.localclientnum, 1);
        } else {
            self function_efaef15b(self.localclientnum, 0);
        }
    } else if (var_999c568b) {
        self function_efaef15b(self.localclientnum, 1);
    } else {
        if (self.var_e10de4ad.var_be8b922e.var_d74b78fc == "tension" || !self.var_e10de4ad.scratch.var_8e926fa1) {
            var_60088c20 = 360;
        }
        self function_efaef15b(self.localclientnum, 0);
    }
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 2, eflags: 0x6 linked
// Checksum 0x4d22e933, Offset: 0x26d8
// Size: 0x8e
function private function_95eb0e7b(rumble, fadestart) {
    if (!isdefined(self.var_e10de4ad.var_b5d11637) || self.var_e10de4ad.var_b5d11637 != rumble) {
        function_35d8ea7();
        function_fe0ad36e(self.localclientnum, rumble, fadestart);
        self.var_e10de4ad.var_b5d11637 = rumble;
    }
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 2, eflags: 0x6 linked
// Checksum 0xe111a3ed, Offset: 0x2770
// Size: 0x74
function private function_2d0a7942(rumble, fade) {
    if (!isdefined(self.var_e10de4ad.var_b5d11637)) {
        function_95eb0e7b(rumble);
    }
    if (self.var_e10de4ad.var_b5d11637 == rumble) {
        self function_7921b8a(self.localclientnum, rumble, fade);
    }
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 0, eflags: 0x6 linked
// Checksum 0x5d94876f, Offset: 0x27f0
// Size: 0x52
function private function_35d8ea7() {
    if (isdefined(self.var_e10de4ad.var_b5d11637)) {
        self stoprumble(self.localclientnum, self.var_e10de4ad.var_b5d11637);
        self.var_e10de4ad.var_b5d11637 = undefined;
    }
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 0, eflags: 0x6 linked
// Checksum 0xe8927141, Offset: 0x2850
// Size: 0x11e
function private function_b3ef69ee() {
    /#
        assert(self.var_e10de4ad.complete);
    #/
    self endoncallback(&function_9b9eaf7e, #"death", #"disconnect");
    self.var_e10de4ad.running = 0;
    self function_35d8ea7();
    thread function_f081ea1a();
    function_36e4ebd4(self.localclientnum, self.var_e10de4ad.var_be8b922e.var_c9b335a4);
    self function_ef54083f(self.localclientnum, 1);
    self function_192c93dd(self.localclientnum, 0);
    wait(0.5);
    self notify(#"hash_4296cd5b3f255c63");
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 1, eflags: 0x6 linked
// Checksum 0x6f9cae44, Offset: 0x2978
// Size: 0xea
function private function_9b9eaf7e(*notifyhash) {
    if (!self.var_e10de4ad.enabled) {
        return;
    }
    function_ef02d214(self.localclientnum, 0);
    self serverfield::set("lockpick_state", is_true(self.var_e10de4ad.complete) ? 2 : 1);
    self function_35d8ea7();
    function_3424c790();
    self.var_e10de4ad.scratch = undefined;
    self.var_e10de4ad.running = 0;
    self.var_e10de4ad.enabled = 0;
    self.var_e10de4ad.audio = undefined;
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 0, eflags: 0x2 linked
// Checksum 0xc47f286e, Offset: 0x2a70
// Size: 0x4c
function function_f081ea1a() {
    function_3424c790();
    snd::play("evt_lockpick_unlock", self);
    wait(1.5);
    snd::play("evt_lockpick_end", self);
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 0, eflags: 0x2 linked
// Checksum 0x54b78aa0, Offset: 0x2ac8
// Size: 0x34
function function_3424c790() {
    snd::stop(self.var_e10de4ad.audio.var_f1ed0ff0, 0.25);
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 1, eflags: 0x6 linked
// Checksum 0xdc92166c, Offset: 0x2b08
// Size: 0x2a
function private function_80847fa6(localclientnum) {
    return function_1df4c3b0(localclientnum, #"hash_6f7d895c5a9f4ff3");
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 2, eflags: 0x6 linked
// Checksum 0x2b160bbe, Offset: 0x2b40
// Size: 0x64
function private function_ef02d214(localclientnum, active) {
    var_dd2c6e79 = function_80847fa6(localclientnum);
    setuimodelvalue(getuimodel(var_dd2c6e79, "active"), active);
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 2, eflags: 0x6 linked
// Checksum 0x3133d4c4, Offset: 0x2bb0
// Size: 0x94
function private function_90b8720(localclientnum, var_83e465eb) {
    /#
        assert(var_83e465eb > 0 && var_83e465eb <= 5);
    #/
    var_dd2c6e79 = function_80847fa6(localclientnum);
    setuimodelvalue(getuimodel(var_dd2c6e79, "numPins"), var_83e465eb);
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 2, eflags: 0x6 linked
// Checksum 0xc8b959a4, Offset: 0x2c50
// Size: 0x64
function private function_2c6a1130(localclientnum, var_8b0a564b) {
    var_dd2c6e79 = function_80847fa6(localclientnum);
    setuimodelvalue(getuimodel(var_dd2c6e79, "lockDataAsset"), var_8b0a564b);
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 2, eflags: 0x6 linked
// Checksum 0x21181c3c, Offset: 0x2cc0
// Size: 0x1ae
function private function_28ef17b1(localclientnum, angle) {
    var_dd2c6e79 = function_80847fa6(localclientnum);
    setuimodelvalue(getuimodel(var_dd2c6e79, "pickAngle"), angle);
    diff = abs(self.var_e10de4ad.audio.var_6dc5be9f - angle);
    if (diff > 1) {
        if (!self.var_e10de4ad.audio.var_cf3d2929) {
            self.var_e10de4ad.audio.var_cf3d2929 = 1;
            var_ab8a5e59 = snd::play("evt_lockpick_pick_move", self);
            if (diff < 2) {
                vol = mapfloat(1, 60, 0, 1, diff);
                snd::function_db78159d(var_ab8a5e59, vol, 0.05);
            }
        }
    } else if (self.var_e10de4ad.audio.var_cf3d2929) {
        self.var_e10de4ad.audio.var_cf3d2929 = 0;
    }
    self.var_e10de4ad.audio.var_6dc5be9f = angle;
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 2, eflags: 0x6 linked
// Checksum 0x8a496087, Offset: 0x2e78
// Size: 0x64
function private function_192c93dd(localclientnum, state) {
    var_dd2c6e79 = function_80847fa6(localclientnum);
    setuimodelvalue(getuimodel(var_dd2c6e79, "pickState"), state);
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 2, eflags: 0x6 linked
// Checksum 0xc6fd38ad, Offset: 0x2ee8
// Size: 0x256
function private function_59f6b71c(localclientnum, angle) {
    var_dd2c6e79 = function_80847fa6(localclientnum);
    setuimodelvalue(getuimodel(var_dd2c6e79, "wrenchAngle"), angle);
    if (abs(self.var_e10de4ad.audio.var_d1d4a588 - angle) > 1) {
        if (!self.var_e10de4ad.audio.var_6a7c9466) {
            self.var_e10de4ad.audio.var_6a7c9466 = 1;
            var_83a8fad2 = 0;
            if (angle < self.var_e10de4ad.audio.var_d1d4a588) {
                diff = abs(angle - self.var_e10de4ad.audio.var_d1d4a588);
                var_83a8fad2 = snd::play("evt_lockpick_wrench_tighten", self);
            } else {
                diff = abs(self.var_e10de4ad.audio.var_d1d4a588 - angle);
                var_83a8fad2 = snd::play("evt_lockpick_wrench_loosen", self);
            }
            if (diff < 4) {
                vol = mapfloat(0, 60, 0, 1, diff);
                snd::function_db78159d(var_83a8fad2, vol, 0.05);
            }
        }
    } else if (self.var_e10de4ad.audio.var_6a7c9466) {
        self.var_e10de4ad.audio.var_6a7c9466 = 0;
    }
    self.var_e10de4ad.audio.var_d1d4a588 = angle;
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 2, eflags: 0x6 linked
// Checksum 0xf1f8e22d, Offset: 0x3148
// Size: 0x13e
function private function_efaef15b(localclientnum, state) {
    var_dd2c6e79 = function_80847fa6(localclientnum);
    setuimodelvalue(getuimodel(var_dd2c6e79, "wrenchState"), state);
    if (state == 1 && self.var_e10de4ad.audio.var_78430c0a == 0) {
        self.var_e10de4ad.audio.var_f1ed0ff0 = snd::play("evt_lockpick_wrench_tension_loop", self);
    } else if (state == 0 && self.var_e10de4ad.audio.var_78430c0a == 1) {
        snd::stop(self.var_e10de4ad.audio.var_f1ed0ff0, 0.25);
    }
    self.var_e10de4ad.audio.var_78430c0a = state;
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 2, eflags: 0x6 linked
// Checksum 0x476fa7e7, Offset: 0x3290
// Size: 0x64
function private function_ef54083f(localclientnum, unlocked) {
    var_dd2c6e79 = function_80847fa6(localclientnum);
    setuimodelvalue(getuimodel(var_dd2c6e79, "unlocked"), unlocked);
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 2, eflags: 0x6 linked
// Checksum 0x61d192fa, Offset: 0x3300
// Size: 0x9a
function private function_5a89af80(localclientnum, var_13408359) {
    /#
        assert(var_13408359 > 0 && var_13408359 <= 5);
    #/
    var_dd2c6e79 = function_80847fa6(localclientnum);
    var_8ec71e64 = getuimodel(var_dd2c6e79, "pin" + var_13408359);
    return var_8ec71e64;
}

// Namespace namespace_14de327b/namespace_14de327b
// Params 3, eflags: 0x6 linked
// Checksum 0x9204ae99, Offset: 0x33a8
// Size: 0x14e
function private function_e9e03641(localclientnum, var_13408359, state) {
    setuimodelvalue(getuimodel(function_5a89af80(localclientnum, var_13408359), "state"), state);
    if (state == 1 && self.var_e10de4ad.audio.var_d8de23d1 == 0) {
        snd::play("evt_lockpick_pin_lifted", self);
    } else if (state == 0 && self.var_e10de4ad.audio.var_d8de23d1 == 1) {
        snd::play("evt_lockpick_pin_dropped", self);
    } else if (state == 2) {
        snd::play("evt_lockpick_pin_unlock_" + var_13408359, self);
    }
    self.var_e10de4ad.audio.var_d8de23d1 = state;
}

