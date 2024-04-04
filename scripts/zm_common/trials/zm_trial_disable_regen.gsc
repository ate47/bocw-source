// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_trial_util.gsc;
#using scripts\zm_common\zm_trial.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\player\player_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace zm_trial_disable_regen;

// Namespace zm_trial_disable_regen/zm_trial_disable_regen
// Params 0, eflags: 0x5
// Checksum 0x7761cfa5, Offset: 0xd8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_trial_disable_regen", &preinit, undefined, undefined, undefined);
}

// Namespace zm_trial_disable_regen/zm_trial_disable_regen
// Params 0, eflags: 0x4
// Checksum 0x522981, Offset: 0x120
// Size: 0x5c
function private preinit() {
    if (!zm_trial::is_trial_mode()) {
        return;
    }
    zm_trial::register_challenge(#"disable_regen", &on_begin, &on_end);
}

// Namespace zm_trial_disable_regen/zm_trial_disable_regen
// Params 0, eflags: 0x4
// Checksum 0x8d68a70a, Offset: 0x188
// Size: 0xa0
function private on_begin() {
    foreach (player in getplayers()) {
        player val::set("trials_disable_regen", "health_regen", 0);
    }
}

// Namespace zm_trial_disable_regen/zm_trial_disable_regen
// Params 1, eflags: 0x4
// Checksum 0xfc2fdba8, Offset: 0x230
// Size: 0xa8
function private on_end(*round_reset) {
    foreach (player in getplayers()) {
        player val::reset("trials_disable_regen", "health_regen");
    }
}

// Namespace zm_trial_disable_regen/zm_trial_disable_regen
// Params 1, eflags: 0x0
// Checksum 0x1684c9de, Offset: 0x2e0
// Size: 0x3a
function is_active(*var_34f09024) {
    challenge = zm_trial::function_a36e8c38(#"disable_regen");
    return isdefined(challenge);
}

