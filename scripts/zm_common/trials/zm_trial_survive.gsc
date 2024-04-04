// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_trial.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace zm_trial_survive;

// Namespace zm_trial_survive/zm_trial_survive
// Params 0, eflags: 0x5
// Checksum 0x3795a9b0, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_trial_survive", &preinit, undefined, undefined, undefined);
}

// Namespace zm_trial_survive/zm_trial_survive
// Params 0, eflags: 0x4
// Checksum 0xbcb952cc, Offset: 0xd8
// Size: 0x5c
function private preinit() {
    if (!zm_trial::is_trial_mode()) {
        return;
    }
    zm_trial::register_challenge(#"survive", &on_begin, &on_end);
}

// Namespace zm_trial_survive/zm_trial_survive
// Params 0, eflags: 0x4
// Checksum 0x80f724d1, Offset: 0x140
// Size: 0x4
function private on_begin() {
    
}

// Namespace zm_trial_survive/zm_trial_survive
// Params 1, eflags: 0x4
// Checksum 0x69c59d6f, Offset: 0x150
// Size: 0xc
function private on_end(*round_reset) {
    
}

