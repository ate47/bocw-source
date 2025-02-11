#using scripts\core_common\animation_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\struct;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;

#namespace cp_ger_stakeout_fx;

// Namespace cp_ger_stakeout_fx/cp_ger_stakeout_fx
// Params 0, eflags: 0x5
// Checksum 0x362e5264, Offset: 0x190
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"cp_ger_stakeout_fx", &_preload, &function_fa076c68, undefined, undefined);
}

// Namespace cp_ger_stakeout_fx/cp_ger_stakeout_fx
// Params 0, eflags: 0x4
// Checksum 0xeae9d343, Offset: 0x1e8
// Size: 0x14
function private _preload() {
    function_bc948200();
}

// Namespace cp_ger_stakeout_fx/cp_ger_stakeout_fx
// Params 0, eflags: 0x4
// Checksum 0x80f724d1, Offset: 0x208
// Size: 0x4
function private function_fa076c68() {
    
}

// Namespace cp_ger_stakeout_fx/cp_ger_stakeout_fx
// Params 0, eflags: 0x4
// Checksum 0x89e41263, Offset: 0x218
// Size: 0x124
function private function_bc948200() {
    clientfield::register("actor", "umbrella_drips", 1, 2, "int");
    clientfield::register("scriptmover", "police_headlights", 1, 1, "int");
    clientfield::register("vehicle", "police_headlights", 1, 1, "int");
    clientfield::register("scriptmover", "police_sirens", 1, 1, "int");
    clientfield::register("vehicle", "police_sirens", 1, 1, "int");
    clientfield::register("scriptmover", "clf_contact_cig_smoke", 1, 1, "int");
}

// Namespace cp_ger_stakeout_fx/cp_ger_stakeout_fx
// Params 0, eflags: 0x0
// Checksum 0x718fb3e2, Offset: 0x348
// Size: 0x54
function function_22b7fffd() {
    animation::add_notetrack_func("cp_ger_stakeout_fx::umbrella_drips_on", &function_7ac85f6e);
    animation::add_notetrack_func("cp_ger_stakeout_fx::umbrella_drips_off", &function_a2a2a7e9);
}

// Namespace cp_ger_stakeout_fx/cp_ger_stakeout_fx
// Params 0, eflags: 0x0
// Checksum 0x6cd6ad94, Offset: 0x3a8
// Size: 0x5c
function function_943c286e() {
    if (is_true(self.var_e00a27ab)) {
        return;
    }
    self.var_e00a27ab = 1;
    self clientfield::set("clf_contact_cig_smoke", 1);
    thread function_b428955a();
}

// Namespace cp_ger_stakeout_fx/cp_ger_stakeout_fx
// Params 0, eflags: 0x0
// Checksum 0x53179cc5, Offset: 0x410
// Size: 0x5c
function function_b428955a() {
    if (!is_true(self.var_e00a27ab)) {
        return;
    }
    level waittill(#"hash_23cc6d8b29c98232");
    self.var_e00a27ab = undefined;
    self clientfield::set("clf_contact_cig_smoke", 0);
}

// Namespace cp_ger_stakeout_fx/cp_ger_stakeout_fx
// Params 1, eflags: 0x0
// Checksum 0x5772938f, Offset: 0x478
// Size: 0xc4
function function_7ac85f6e(params) {
    if (is_true(self.var_2f05f8b4)) {
        return;
    }
    self.var_2f05f8b4 = 1;
    if (params === "left") {
        self clientfield::set("umbrella_drips", 1);
        return;
    }
    if (params === "right") {
        self clientfield::set("umbrella_drips", 2);
        return;
    }
    assertmsg("<dev string:x38>");
}

// Namespace cp_ger_stakeout_fx/cp_ger_stakeout_fx
// Params 1, eflags: 0x0
// Checksum 0x82c9a351, Offset: 0x548
// Size: 0x54
function function_a2a2a7e9(*params) {
    if (!is_true(self.var_2f05f8b4)) {
        return;
    }
    self.var_2f05f8b4 = undefined;
    self clientfield::set("umbrella_drips", 0);
}

// Namespace cp_ger_stakeout_fx/cp_ger_stakeout_fx
// Params 1, eflags: 0x0
// Checksum 0x8c6b3dc9, Offset: 0x5a8
// Size: 0x64
function function_93e3e68a(on) {
    if (is_true(on)) {
        self clientfield::set("police_headlights", 1);
        return;
    }
    self clientfield::set("police_headlights", 0);
}

// Namespace cp_ger_stakeout_fx/cp_ger_stakeout_fx
// Params 1, eflags: 0x0
// Checksum 0x8eb3f13c, Offset: 0x618
// Size: 0x64
function function_ad03f35b(on) {
    if (is_true(on)) {
        self clientfield::set("police_sirens", 1);
        return;
    }
    self clientfield::set("police_sirens", 0);
}

