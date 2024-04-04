// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_loadout.gsc;
#using scripts\zm_common\zm_trial.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace zm_trial_kill_with_special;

// Namespace zm_trial_kill_with_special/zm_trial_kill_with_special
// Params 0, eflags: 0x5
// Checksum 0x1573f0f1, Offset: 0xa0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"kill_with_special", &preinit, undefined, undefined, undefined);
}

// Namespace zm_trial_kill_with_special/zm_trial_kill_with_special
// Params 0, eflags: 0x4
// Checksum 0x81a4ecf7, Offset: 0xe8
// Size: 0x5c
function private preinit() {
    if (!zm_trial::is_trial_mode()) {
        return;
    }
    zm_trial::register_challenge(#"kill_with_special", &on_begin, &on_end);
}

// Namespace zm_trial_kill_with_special/zm_trial_kill_with_special
// Params 0, eflags: 0x4
// Checksum 0x80f724d1, Offset: 0x150
// Size: 0x4
function private on_begin() {
    
}

// Namespace zm_trial_kill_with_special/zm_trial_kill_with_special
// Params 1, eflags: 0x4
// Checksum 0x8c4031d7, Offset: 0x160
// Size: 0xa8
function private on_end(round_reset) {
    if (round_reset) {
        foreach (e_player in level.players) {
            e_player gadgetpowerset(level.var_a53a05b5, 100);
        }
    }
}

