// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_trial_util.gsc;
#using scripts\zm_common\zm_trial.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace zm_trial_activate_hazards;

// Namespace zm_trial_activate_hazards/zm_trial_activate_hazards
// Params 0, eflags: 0x5
// Checksum 0x36f40f58, Offset: 0x98
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_trial_activate_hazards", &preinit, undefined, undefined, undefined);
}

// Namespace zm_trial_activate_hazards/zm_trial_activate_hazards
// Params 0, eflags: 0x4
// Checksum 0x8fb20f87, Offset: 0xe0
// Size: 0x5c
function private preinit() {
    if (!zm_trial::is_trial_mode()) {
        return;
    }
    zm_trial::register_challenge(#"activate_hazards", &on_begin, &on_end);
}

// Namespace zm_trial_activate_hazards/zm_trial_activate_hazards
// Params 0, eflags: 0x4
// Checksum 0xafc2d417, Offset: 0x148
// Size: 0x14
function private on_begin() {
    level.var_2d307e50 = 1;
}

// Namespace zm_trial_activate_hazards/zm_trial_activate_hazards
// Params 1, eflags: 0x4
// Checksum 0x27ec1289, Offset: 0x168
// Size: 0x16
function private on_end(*round_reset) {
    level.var_2d307e50 = undefined;
}

