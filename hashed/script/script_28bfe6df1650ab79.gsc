// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm.gsc;
#using scripts\zm_common\zm_trial_util.gsc;
#using scripts\zm_common\zm_trial.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace namespace_e01afe67;

// Namespace namespace_e01afe67/namespace_e01afe67
// Params 0, eflags: 0x5
// Checksum 0x9ec860e6, Offset: 0xa8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_993ee8bedbddc19", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_e01afe67/namespace_e01afe67
// Params 0, eflags: 0x4
// Checksum 0x83e41f6f, Offset: 0xf0
// Size: 0x5c
function private preinit() {
    if (!zm_trial::is_trial_mode()) {
        return;
    }
    zm_trial::register_challenge(#"hash_27897abffa9137fc", &on_begin, &on_end);
}

// Namespace namespace_e01afe67/namespace_e01afe67
// Params 0, eflags: 0x4
// Checksum 0x357c343c, Offset: 0x158
// Size: 0x24
function private on_begin() {
    zm::register_actor_damage_callback(&height_check);
}

// Namespace namespace_e01afe67/namespace_e01afe67
// Params 1, eflags: 0x4
// Checksum 0x403df306, Offset: 0x188
// Size: 0x64
function private on_end(*round_reset) {
    if (isinarray(level.actor_damage_callbacks, &height_check)) {
        arrayremovevalue(level.actor_damage_callbacks, &height_check, 0);
    }
}

// Namespace namespace_e01afe67/namespace_e01afe67
// Params 0, eflags: 0x0
// Checksum 0xc4403df2, Offset: 0x1f8
// Size: 0x32
function is_active() {
    challenge = zm_trial::function_a36e8c38(#"hash_27897abffa9137fc");
    return isdefined(challenge);
}

// Namespace namespace_e01afe67/namespace_e01afe67
// Params 13, eflags: 0x4
// Checksum 0x8cf33d54, Offset: 0x238
// Size: 0xc0
function private height_check(*inflictor, attacker, damage, *flags, *meansofdeath, *weapon, *var_fd90b0bb, *vpoint, *vdir, *shitloc, *psoffsettime, *boneindex, *surfacetype) {
    if (isdefined(boneindex.origin) && isdefined(self.origin) && boneindex.origin[2] > self.origin[2] + 40) {
        return surfacetype;
    }
    return 0;
}

