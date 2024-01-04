// Atian COD Tools GSC CW decompiler test
#using script_7e3221b6c80d8cc4;
#using script_1883fa4e60abbf9f;
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
    self function_43959107();
    self thread function_21ff6a71();
    self thread function_7474a3ce();
    /#
        self thread function_b4d10409();
    #/
}

// Namespace namespace_32a4062b/friendly
// Params 0, eflags: 0x2 linked
// Checksum 0xeb0f0497, Offset: 0x1b8
// Size: 0x12e
function function_43959107() {
    /#
        assert(!isdefined(self.stealth), "<unknown string>");
    #/
    self.stealth = spawnstruct();
    self.stealth.var_2055753 = [];
    self.stealth.funcs = [];
    self flag::init("stealth_enabled");
    self flag::init("stealth_override_goal");
    self flag::set("stealth_enabled");
    self namespace_979752dc::function_27ba0328();
    self namespace_979752dc::function_cc94df6e();
    self.stealth.var_103386e8 = self namespace_979752dc::function_3c827c8f("stealth_spotted");
    self.stealth.var_abf79234 = -1;
}

// Namespace namespace_32a4062b/friendly
// Params 0, eflags: 0x2 linked
// Checksum 0x3ac835d0, Offset: 0x2f0
// Size: 0x178
function function_21ff6a71() {
    self endon(#"death");
    self notify(#"hash_60aae3c7a7d2c1ff");
    self endon(#"hash_60aae3c7a7d2c1ff");
    while (1) {
        self flag::wait_till("stealth_enabled");
        self namespace_979752dc::function_b9259f5f("stealth_spotted");
        if (!self flag::get("stealth_enabled")) {
            self flag::wait_till("stealth_enabled");
        }
        self thread function_8066616b();
        self flag::wait_till("stealth_enabled");
        self namespace_979752dc::function_9ea9beb9("stealth_spotted");
        if (!self flag::get("stealth_enabled")) {
            self flag::wait_till("stealth_enabled");
        }
        self thread function_16e7e76f();
    }
}

// Namespace namespace_32a4062b/friendly
// Params 0, eflags: 0x2 linked
// Checksum 0x71709cad, Offset: 0x470
// Size: 0xa4
function function_8066616b() {
    self thread namespace_979752dc::function_81c024b8(0);
    self.stealth.var_b65ab5e8 = self.grenadeammo;
    self.grenadeammo = 0;
    self.var_f0ab915e = 0;
    self.var_e45b4876 = 1;
    self.var_bcf995f7 = 1;
    if (isdefined(self.stealth.funcs[#"hidden"])) {
        self namespace_b2b86d39::function_d8eafaa4("hidden");
    }
}

// Namespace namespace_32a4062b/friendly
// Params 0, eflags: 0x2 linked
// Checksum 0x27b2365e, Offset: 0x520
// Size: 0xec
function function_16e7e76f() {
    /#
        assert(!isplayer(self));
    #/
    self thread namespace_979752dc::function_81c024b8(1);
    if (isdefined(self.stealth.var_b65ab5e8)) {
        self.grenadeammo = self.stealth.var_b65ab5e8;
    } else {
        self.grenadeammo = 3;
    }
    self.var_e45b4876 = 0;
    self.var_bcf995f7 = 0;
    self pushplayer(0);
    if (isdefined(self.stealth.funcs[#"hash_67ac95dafb7278ea"])) {
        self namespace_b2b86d39::function_d8eafaa4("spotted");
    }
}

// Namespace namespace_32a4062b/friendly
// Params 0, eflags: 0x0
// Checksum 0x48ec4b29, Offset: 0x618
// Size: 0x18
function function_42355eb3() {
    self endon(#"death");
}

// Namespace namespace_32a4062b/friendly
// Params 0, eflags: 0x2 linked
// Checksum 0x232705b2, Offset: 0x638
// Size: 0x88
function function_7474a3ce() {
    self endon(#"death");
    self endon(#"hash_4bfd375383ea3706");
    while (1) {
        self flag::wait_till("stealth_enabled");
        if (!isdefined(self.stealth.var_2692ce8e)) {
            self.maxvisibledist = self function_5fee4f6();
        }
        wait(0.05);
    }
}

// Namespace namespace_32a4062b/friendly
// Params 0, eflags: 0x2 linked
// Checksum 0x737e5948, Offset: 0x6c8
// Size: 0x112
function function_5fee4f6() {
    stance = self.var_9c26658;
    if (stance === "back") {
        stance = "prone";
    }
    if (self namespace_979752dc::function_48fc612d()) {
        var_334eb858 = "spotted";
    } else {
        var_334eb858 = "hidden";
    }
    range = level.stealth.var_33b5cf8f.range[var_334eb858][stance];
    if (self flag::get("stealth_in_shadow")) {
        range = max(level.stealth.var_33b5cf8f.range[#"hidden"][#"prone"], range * 0.5);
    }
    return range;
}

