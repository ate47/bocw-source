#using script_1162c195eb8dd834;
#using script_71527a5629b857da;
#using scripts\core_common\array_shared;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\system_shared;

#namespace smart_bundle;

// Namespace smart_bundle/smart_bundle
// Params 0, eflags: 0x5
// Checksum 0x4b8dc0c1, Offset: 0x118
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"smart_bundle", &preinit, &function_fcaaa05f, undefined, undefined);
}

// Namespace smart_bundle/smart_bundle
// Params 0, eflags: 0x4
// Checksum 0x1ba0626f, Offset: 0x170
// Size: 0x1c
function private preinit() {
    flag::init("smart_bundle_initialized");
}

// Namespace smart_bundle/smart_bundle
// Params 0, eflags: 0x0
// Checksum 0xc90828de, Offset: 0x198
// Size: 0x134
function function_fcaaa05f() {
    if (isdefined(level.smart_bundle)) {
        return;
    }
    function_7b0cd269();
    callback::function_f642faf2(&function_2264f2c4);
    level.smart_bundle = spawnstruct();
    level.smart_bundle.var_84410238 = [];
    level.smart_bundle.var_f547fb8b = [];
    level.smart_bundle.var_8be32155 = [];
    level.smart_bundle.var_78371b11 = 0;
    level.smart_bundle.unique_id = 0;
    level.smart_bundle function_b904b36d();
    level.smart_bundle thread function_8ffa3a73();
    level.smart_bundle thread function_4e82b483();
    waitframe(3);
    flag::set("smart_bundle_initialized");
}

// Namespace smart_bundle/smart_bundle
// Params 1, eflags: 0x0
// Checksum 0x58002f24, Offset: 0x2d8
// Size: 0x170
function function_8dcff833(var_8a673bc9) {
    ret = [];
    if (!isdefined(var_8a673bc9)) {
        var_8a673bc9 = [];
    } else if (!isarray(var_8a673bc9)) {
        var_8a673bc9 = array(var_8a673bc9);
    }
    foreach (tname in var_8a673bc9) {
        for (i = 0; i < level.smart_bundle.var_84410238.size; i++) {
            if (isdefined(level.smart_bundle.var_84410238[i].targetname) && level.smart_bundle.var_84410238[i].targetname == tname) {
                ret[ret.size] = level.smart_bundle.var_84410238[i];
            }
        }
    }
    return ret;
}

// Namespace smart_bundle/smart_bundle
// Params 1, eflags: 0x0
// Checksum 0xd15d7fd2, Offset: 0x450
// Size: 0x94
function function_6c12ff6(var_63fded14) {
    var_84410238 = function_8dcff833(var_63fded14);
    assert(var_84410238.size <= 1, "<dev string:x38>" + var_84410238.size + "<dev string:x46>" + var_63fded14 + "<dev string:x69>");
    if (var_84410238.size == 0) {
        return undefined;
    }
    return var_84410238[0];
}

// Namespace smart_bundle/smart_bundle
// Params 0, eflags: 0x0
// Checksum 0x515796d0, Offset: 0x4f0
// Size: 0x4c
function function_764d4b74() {
    if (isdefined(self.var_38a97b32) && level flag::get(self.var_38a97b32)) {
        level flag::clear(self.var_38a97b32);
    }
}

// Namespace smart_bundle/smart_bundle
// Params 0, eflags: 0x0
// Checksum 0xe597f41c, Offset: 0x548
// Size: 0x5c
function function_d57734f6() {
    for (i = 0; i < level.smart_bundle.var_84410238.size; i++) {
        level.smart_bundle.var_84410238[i] function_764d4b74();
    }
}

// Namespace smart_bundle/smart_bundle
// Params 0, eflags: 0x0
// Checksum 0x18ca4e6c, Offset: 0x5b0
// Size: 0x14
function function_92da2014() {
    function_d57734f6();
}

// Namespace smart_bundle/smart_bundle
// Params 2, eflags: 0x0
// Checksum 0xdcff8b1, Offset: 0x5d0
// Size: 0xb8
function function_20ba1b43(var_63fded14, var_9bbdc994) {
    var_84410238 = function_8dcff833(var_63fded14);
    foreach (smart_bundle in var_84410238) {
        smart_bundle function_69011beb(var_9bbdc994);
    }
}

// Namespace smart_bundle/smart_bundle
// Params 1, eflags: 0x0
// Checksum 0xe3a22ce7, Offset: 0x690
// Size: 0x8a
function function_69011beb(var_9bbdc994) {
    if (!isdefined(self.variantname)) {
        assert(isdefined(self.script_noteworthy) && self.script_noteworthy == "<dev string:xb3>");
    } else {
        assert(self.variantname == "<dev string:xb3>");
    }
    self.var_38a97b32 = var_9bbdc994;
}

// Namespace smart_bundle/smart_bundle
// Params 1, eflags: 0x0
// Checksum 0x7ed2a66e, Offset: 0x728
// Size: 0x12e
function function_f029622c(var_268d3aa4) {
    self endon(#"death");
    self endon(#"hash_740faf03c1eeca5b");
    if (!(self.var_39a8d200 == "active" || self.var_39a8d200 == "wait_deactivate")) {
        self waittill(#"active");
    }
    if (!isdefined(var_268d3aa4) || var_268d3aa4 > self.var_f0a4c650.size) {
        var_268d3aa4 = self.var_f0a4c650.size;
    }
    while (self.var_fe336ab9 < var_268d3aa4) {
        self waittill(#"hash_7fafbdd20ef09362");
        waittillframeend();
    }
    self notify("smart_bundle_" + string(var_268d3aa4) + "_ai_killed");
    if (is_true(self.var_43db0d3e)) {
        self.var_2b96e535 = 0;
        self notify(#"hash_66e053d24034aa6f");
    }
}

// Namespace smart_bundle/smart_bundle
// Params 0, eflags: 0x0
// Checksum 0xc9afe7b2, Offset: 0x860
// Size: 0x96
function function_e47ac090() {
    self endon(#"death");
    self endon(#"hash_740faf03c1eeca5b");
    if (!(self.var_39a8d200 == "active" || self.var_39a8d200 == "wait_deactivate")) {
        self waittill(#"active");
    }
    while (self.var_42ae3297.size < self.var_f0a4c650.size) {
        self waittill(#"hash_544b598ad6fe9445");
    }
}

// Namespace smart_bundle/smart_bundle
// Params 3, eflags: 0x0
// Checksum 0xc42a89af, Offset: 0x900
// Size: 0x26a
function function_ee872d21(var_17736c1e, var_268d3aa4, var_1cbf40f = 1) {
    assert(isarray(var_17736c1e), "<dev string:xc3>");
    max_guys = 0;
    var_455a5bec = function_58ca92b7();
    remover_array = [];
    foreach (smart_bundle in var_17736c1e) {
        smart_bundle endon(#"death");
        smart_bundle endon(#"hash_740faf03c1eeca5b");
        if (!(smart_bundle.var_39a8d200 == "active" || smart_bundle.var_39a8d200 == "wait_deactivate")) {
            if (!is_true(var_1cbf40f)) {
                remover_array[remover_array.size] = smart_bundle;
                continue;
            }
            smart_bundle waittill(#"active");
        }
        max_guys += smart_bundle.var_f0a4c650.size;
        smart_bundle thread function_ad087e3b(var_455a5bec);
    }
    if (remover_array.size > 0) {
        for (i = 0; i < remover_array.size; i++) {
            arrayremovevalue(var_17736c1e, remover_array[i]);
        }
    }
    if (!isdefined(var_268d3aa4) || var_268d3aa4 > max_guys) {
        var_268d3aa4 = max_guys;
    }
    while (function_97118cde(var_17736c1e) < var_268d3aa4) {
        level waittill(var_455a5bec);
        waittillframeend();
    }
    level notify(var_455a5bec + "all_done");
}

// Namespace smart_bundle/smart_bundle
// Params 1, eflags: 0x0
// Checksum 0x3bddc63a, Offset: 0xb78
// Size: 0x68
function function_ad087e3b(var_455a5bec) {
    level endon(var_455a5bec + "all_done");
    self endon(#"death");
    self endon(#"hash_740faf03c1eeca5b");
    while (true) {
        self waittill(#"hash_7fafbdd20ef09362");
        level notify(var_455a5bec);
    }
}

// Namespace smart_bundle/smart_bundle
// Params 1, eflags: 0x0
// Checksum 0xc30576bb, Offset: 0xbe8
// Size: 0x54
function function_97118cde(var_17736c1e) {
    var_493a474b = 0;
    for (i = 0; i < var_17736c1e.size; i++) {
        var_493a474b += var_17736c1e[i].var_fe336ab9;
    }
    return var_493a474b;
}

// Namespace smart_bundle/smart_bundle
// Params 3, eflags: 0x0
// Checksum 0xe45f0d1d, Offset: 0xc48
// Size: 0x13c
function function_f059be95(set_flag, var_5936d221, timeout) {
    self endon(#"death");
    self endon(#"hash_740faf03c1eeca5b");
    if (!(self.var_39a8d200 == "active" || self.var_39a8d200 == "wait_deactivate")) {
        self waittill(#"active");
    }
    if (isdefined(timeout)) {
        self thread function_a6169d61(timeout);
    }
    if (!isdefined(var_5936d221) || var_5936d221 > self.var_f0a4c650.size) {
        var_5936d221 = self.var_f0a4c650.size;
    }
    self thread function_f029622c(var_5936d221);
    wait_notify = "smart_bundle_" + string(var_5936d221) + "_ai_killed";
    self waittill(wait_notify, #"hash_1951ecd22ca82373");
    level flag::set(set_flag);
}

// Namespace smart_bundle/smart_bundle
// Params 4, eflags: 0x0
// Checksum 0x8a4f9906, Offset: 0xd90
// Size: 0x94
function function_5ce85259(var_84410238, set_flag, var_5936d221, timeout) {
    self endon(#"death");
    self endon(#"hash_740faf03c1eeca5b");
    if (isdefined(timeout)) {
        self thread function_a6169d61(timeout);
    }
    function_ee872d21(var_84410238, var_5936d221);
    level flag::set(set_flag);
}

// Namespace smart_bundle/smart_bundle
// Params 1, eflags: 0x0
// Checksum 0x519a7fba, Offset: 0xe30
// Size: 0x26
function function_a6169d61(timeout) {
    wait timeout;
    self notify(#"hash_1951ecd22ca82373");
}

// Namespace smart_bundle/smart_bundle
// Params 2, eflags: 0x0
// Checksum 0x41aa136, Offset: 0xe60
// Size: 0xb4
function function_1ca38b11(state, callback_function) {
    assert(array::contains(["<dev string:x11b>", "<dev string:x12c>", "<dev string:x13c>", "<dev string:x146>", "<dev string:x159>"], state), "<dev string:x168>" + state);
    self.var_5df1a845[state] = callback_function;
}

// Namespace smart_bundle/smart_bundle
// Params 0, eflags: 0x0
// Checksum 0xf7d7aeb4, Offset: 0xf20
// Size: 0x22
function function_44cbaa85() {
    function_1eaaceab(self.var_42ae3297);
    return self.var_42ae3297;
}

// Namespace smart_bundle/smart_bundle
// Params 1, eflags: 0x0
// Checksum 0x62224ed1, Offset: 0xf50
// Size: 0xb6
function function_942bcdf6(var_84410238) {
    guys = [];
    foreach (smart_bundle in var_84410238) {
        guys = arraycombine(guys, smart_bundle function_44cbaa85(), 1, 0);
    }
    return guys;
}

// Namespace smart_bundle/smart_bundle
// Params 0, eflags: 0x0
// Checksum 0xf850038d, Offset: 0x1010
// Size: 0x1a
function function_97506362() {
    if (isdefined(self.var_fe336ab9)) {
        return self.var_fe336ab9;
    }
    return 0;
}

// Namespace smart_bundle/smart_bundle
// Params 0, eflags: 0x0
// Checksum 0xfe98005e, Offset: 0x1038
// Size: 0x24
function function_39cfddef() {
    if (isdefined(self.var_f0a4c650)) {
        return self.var_f0a4c650.size;
    }
    return self.var_49275033.size;
}

// Namespace smart_bundle/smart_bundle
// Params 1, eflags: 0x0
// Checksum 0xb9473d25, Offset: 0x1068
// Size: 0xa8
function function_92f17667(var_17736c1e) {
    total = 0;
    foreach (smart_bundle in var_17736c1e) {
        total += smart_bundle function_39cfddef();
    }
    return total;
}

// Namespace smart_bundle/smart_bundle
// Params 0, eflags: 0x0
// Checksum 0x99c6e871, Offset: 0x1118
// Size: 0x4c
function function_1f7aae9e() {
    total = self function_39cfddef();
    killed = self function_97506362();
    return total - killed;
}

// Namespace smart_bundle/smart_bundle
// Params 1, eflags: 0x0
// Checksum 0x558c7776, Offset: 0x1170
// Size: 0xda
function function_d96e9b9b(var_17736c1e) {
    total = 0;
    total_killed = 0;
    foreach (smart_bundle in var_17736c1e) {
        total += smart_bundle function_39cfddef();
        total_killed += smart_bundle function_97506362();
    }
    return total - total_killed;
}

// Namespace smart_bundle/smart_bundle
// Params 0, eflags: 0x0
// Checksum 0x696e498a, Offset: 0x1258
// Size: 0x36
function function_79e04d7f() {
    if (self.var_39a8d200 == "wait_deactivate" || self.var_39a8d200 == "active") {
        return true;
    }
    return false;
}

