// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_trial_util.gsc;
#using scripts\zm_common\zm_trial.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace namespace_ab88201b;

// Namespace namespace_ab88201b/namespace_ab88201b
// Params 0, eflags: 0x5
// Checksum 0xe6e5ac3e, Offset: 0xf0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_77812dea54caab85", &function_70a657d8, undefined, undefined, undefined);
}

// Namespace namespace_ab88201b/namespace_ab88201b
// Params 0, eflags: 0x4
// Checksum 0x8a6cc97d, Offset: 0x138
// Size: 0x5c
function private function_70a657d8() {
    if (!zm_trial::is_trial_mode()) {
        return;
    }
    zm_trial::register_challenge(#"hash_6840f605489bddc2", &on_begin, &on_end);
}

// Namespace namespace_ab88201b/namespace_ab88201b
// Params 1, eflags: 0x4
// Checksum 0xa5f668f7, Offset: 0x1a0
// Size: 0xb8
function private on_begin(var_c8a36f90) {
    level.var_2bd4c60 = isdefined(var_c8a36f90) ? var_c8a36f90 : "movement";
    foreach (player in getplayers()) {
        player thread function_1633056a();
    }
}

// Namespace namespace_ab88201b/namespace_ab88201b
// Params 1, eflags: 0x4
// Checksum 0x86accd43, Offset: 0x260
// Size: 0xb8
function private on_end(*round_reset) {
    level.var_2bd4c60 = undefined;
    foreach (player in getplayers()) {
        player val::reset(#"hash_10a425ccc9bbccad", "health_regen");
    }
}

// Namespace namespace_ab88201b/namespace_ab88201b
// Params 0, eflags: 0x4
// Checksum 0x25cb17ea, Offset: 0x320
// Size: 0xe6
function private function_1633056a() {
    self endon(#"disconnect");
    level endon(#"hash_7646638df88a3656");
    while (1) {
        if (self function_26f124d8() && !self.heal.enabled) {
            self val::reset(#"hash_10a425ccc9bbccad", "health_regen");
        } else if (!self function_26f124d8() && self.heal.enabled) {
            self val::set(#"hash_10a425ccc9bbccad", "health_regen", 0);
        }
        waitframe(1);
    }
}

// Namespace namespace_ab88201b/namespace_ab88201b
// Params 0, eflags: 0x4
// Checksum 0x5cf10d4b, Offset: 0x410
// Size: 0x1d4
function private function_26f124d8() {
    switch (level.var_2bd4c60) {
    case #"ads":
        if (self playerads() == 1) {
            return 1;
        }
        return 0;
    case #"jump":
        if (self zm_utility::is_jumping()) {
            return 1;
        }
        return 0;
    case #"slide":
        if (self issliding()) {
            return 1;
        }
        return 0;
    case #"hash_6c6c8f6b349b8751":
        if (self zm_utility::is_jumping() || self issliding()) {
            return 1;
        }
        return 0;
    case #"crouch":
        if (self getstance() === "crouch") {
            return 1;
        }
        return 0;
    case #"prone":
        if (self getstance() === "prone") {
            return 1;
        }
        return 0;
    case #"movement":
    case #"hash_defdefdefdefdef0":
        v_velocity = self getvelocity();
        if (length(v_velocity) != 0) {
            return 1;
        }
        return 0;
        break;
    }
    return 0;
}
