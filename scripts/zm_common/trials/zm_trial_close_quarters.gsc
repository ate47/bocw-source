// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm.gsc;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm_trial_util.gsc;
#using scripts\zm_common\zm_trial.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace zm_trial_close_quarters;

// Namespace zm_trial_close_quarters/zm_trial_close_quarters
// Params 0, eflags: 0x5
// Checksum 0x85dc6c3a, Offset: 0xb0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_trial_close_quarters", &preinit, undefined, undefined, undefined);
}

// Namespace zm_trial_close_quarters/zm_trial_close_quarters
// Params 0, eflags: 0x4
// Checksum 0xa9f6c14e, Offset: 0xf8
// Size: 0x5c
function private preinit() {
    if (!zm_trial::is_trial_mode()) {
        return;
    }
    zm_trial::register_challenge(#"close_quarters", &on_begin, &on_end);
}

// Namespace zm_trial_close_quarters/zm_trial_close_quarters
// Params 0, eflags: 0x4
// Checksum 0xcfcd438d, Offset: 0x160
// Size: 0x24
function private on_begin() {
    zm::register_actor_damage_callback(&range_check);
}

// Namespace zm_trial_close_quarters/zm_trial_close_quarters
// Params 1, eflags: 0x4
// Checksum 0xd132eb14, Offset: 0x190
// Size: 0x64
function private on_end(*round_reset) {
    if (isinarray(level.actor_damage_callbacks, &range_check)) {
        arrayremovevalue(level.actor_damage_callbacks, &range_check, 0);
    }
}

// Namespace zm_trial_close_quarters/zm_trial_close_quarters
// Params 0, eflags: 0x0
// Checksum 0xf1bf767b, Offset: 0x200
// Size: 0x32
function is_active() {
    challenge = zm_trial::function_a36e8c38(#"close_quarters");
    return isdefined(challenge);
}

// Namespace zm_trial_close_quarters/zm_trial_close_quarters
// Params 13, eflags: 0x4
// Checksum 0x3e5ed2f0, Offset: 0x240
// Size: 0x122
function private range_check(inflictor, attacker, damage, *flags, *meansofdeath, *weapon, *var_fd90b0bb, *vpoint, *vdir, *shitloc, *psoffsettime, *boneindex, *surfacetype) {
    if (!isplayer(boneindex) && !isplayer(psoffsettime)) {
        return -1;
    }
    if (is_true(self.aat_turned)) {
        return surfacetype;
    }
    if (isdefined(boneindex.origin) && isdefined(self.origin) && distance2dsquared(boneindex.origin, self.origin) <= 122500) {
        return surfacetype;
    }
    return 0;
}

// Namespace zm_trial_close_quarters/zm_trial_close_quarters
// Params 1, eflags: 0x0
// Checksum 0xe7706dab, Offset: 0x370
// Size: 0x5a
function function_23d15bf3(var_f85889ce) {
    if (isplayer(var_f85889ce) && distance2dsquared(var_f85889ce.origin, self.origin) <= 122500) {
        return true;
    }
    return false;
}

