// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\stealth\debug.gsc;
#using scripts\core_common\stealth\utility.gsc;
#using script_6c5ee33879e077f8;
#using script_3ad66e3076c279ab;
#using scripts\core_common\flag_shared.gsc;

#namespace namespace_32a4062b;

// Namespace namespace_32a4062b/friendly
// Params 0, eflags: 0x2 linked
// Checksum 0x14297ec1, Offset: 0x128
// Size: 0x84
function main() {
    if (!isdefined(level.stealth)) {
        namespace_393f6012::function_f9682fd();
    }
    self init_settings();
    self thread spotted_thread();
    self thread visibility_thread();
    /#
        self thread stealth_debug::debug_friendly();
    #/
}

// Namespace namespace_32a4062b/friendly
// Params 0, eflags: 0x2 linked
// Checksum 0xeb0f0497, Offset: 0x1b8
// Size: 0x12e
function init_settings() {
    assert(!isdefined(self.stealth), "<unknown string>");
    self.stealth = spawnstruct();
    self.stealth.spotted_list = [];
    self.stealth.funcs = [];
    self flag::init("stealth_enabled");
    self flag::init("stealth_override_goal");
    self flag::set("stealth_enabled");
    self namespace_979752dc::assign_unique_id();
    self namespace_979752dc::group_add();
    self.stealth.var_103386e8 = self namespace_979752dc::group_flag_init("stealth_spotted");
    self.stealth.bsmstate = -1;
}

// Namespace namespace_32a4062b/friendly
// Params 0, eflags: 0x2 linked
// Checksum 0x3ac835d0, Offset: 0x2f0
// Size: 0x178
function spotted_thread() {
    self endon(#"death");
    self notify(#"spotted_thread");
    self endon(#"spotted_thread");
    while (true) {
        self flag::wait_till("stealth_enabled");
        self namespace_979752dc::group_flag_waitopen("stealth_spotted");
        if (!self flag::get("stealth_enabled")) {
            self flag::wait_till("stealth_enabled");
        }
        self thread state_hidden();
        self flag::wait_till("stealth_enabled");
        self namespace_979752dc::group_flag_wait("stealth_spotted");
        if (!self flag::get("stealth_enabled")) {
            self flag::wait_till("stealth_enabled");
        }
        self thread state_spotted();
    }
}

// Namespace namespace_32a4062b/friendly
// Params 0, eflags: 0x2 linked
// Checksum 0x71709cad, Offset: 0x470
// Size: 0xa4
function state_hidden() {
    self thread namespace_979752dc::setbattlechatter(0);
    self.stealth.oldgrenadeammo = self.grenadeammo;
    self.grenadeammo = 0;
    self.forcesidearm = 0;
    self.dontevershoot = 1;
    self.dontattackme = 1;
    if (isdefined(self.stealth.funcs[#"hidden"])) {
        self namespace_b2b86d39::stealth_call_thread("hidden");
    }
}

// Namespace namespace_32a4062b/friendly
// Params 0, eflags: 0x2 linked
// Checksum 0x27b2365e, Offset: 0x520
// Size: 0xec
function state_spotted() {
    assert(!isplayer(self));
    self thread namespace_979752dc::setbattlechatter(1);
    if (isdefined(self.stealth.oldgrenadeammo)) {
        self.grenadeammo = self.stealth.oldgrenadeammo;
    } else {
        self.grenadeammo = 3;
    }
    self.dontevershoot = 0;
    self.dontattackme = 0;
    self pushplayer(0);
    if (isdefined(self.stealth.funcs[#"spotted"])) {
        self namespace_b2b86d39::stealth_call_thread("spotted");
    }
}

// Namespace namespace_32a4062b/friendly
// Params 0, eflags: 0x0
// Checksum 0x48ec4b29, Offset: 0x618
// Size: 0x18
function getup_from_prone() {
    self endon(#"death");
}

// Namespace namespace_32a4062b/friendly
// Params 0, eflags: 0x2 linked
// Checksum 0x232705b2, Offset: 0x638
// Size: 0x88
function visibility_thread() {
    self endon(#"death");
    self endon(#"hash_4bfd375383ea3706");
    while (true) {
        self flag::wait_till("stealth_enabled");
        if (!isdefined(self.stealth.ignore_visibility)) {
            self.maxvisibledist = self get_detect_range();
        }
        wait(0.05);
    }
}

// Namespace namespace_32a4062b/friendly
// Params 0, eflags: 0x2 linked
// Checksum 0x737e5948, Offset: 0x6c8
// Size: 0x112
function get_detect_range() {
    stance = self.currentpose;
    if (stance === "back") {
        stance = "prone";
    }
    if (self namespace_979752dc::group_spotted_flag()) {
        detection = "spotted";
    } else {
        detection = "hidden";
    }
    range = level.stealth.detect.range[detection][stance];
    if (self flag::get("stealth_in_shadow")) {
        range = max(level.stealth.detect.range[#"hidden"][#"prone"], range * 0.5);
    }
    return range;
}

