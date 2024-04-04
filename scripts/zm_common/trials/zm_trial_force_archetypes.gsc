// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_trial.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace zm_trial_force_archetypes;

// Namespace zm_trial_force_archetypes/zm_trial_force_archetypes
// Params 0, eflags: 0x5
// Checksum 0xfd174b5e, Offset: 0x98
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_trial_force_archetypes", &preinit, undefined, undefined, undefined);
}

// Namespace zm_trial_force_archetypes/zm_trial_force_archetypes
// Params 0, eflags: 0x4
// Checksum 0x98e4d814, Offset: 0xe0
// Size: 0x5c
function private preinit() {
    if (!zm_trial::is_trial_mode()) {
        return;
    }
    zm_trial::register_challenge(#"force_archetypes", &on_begin, &on_end);
}

// Namespace zm_trial_force_archetypes/zm_trial_force_archetypes
// Params 4, eflags: 0x4
// Checksum 0xcad7ecbf, Offset: 0x148
// Size: 0x104
function private on_begin(var_34259a50, var_1d00ec07, var_10cad39b, var_f9ab255c) {
    archetypes = [var_34259a50, var_1d00ec07, var_10cad39b, var_f9ab255c];
    arrayremovevalue(archetypes, undefined, 0);
    self.var_c54c0d81 = [];
    foreach (archetype in archetypes) {
        self.var_c54c0d81[archetype] = 1;
    }
}

// Namespace zm_trial_force_archetypes/zm_trial_force_archetypes
// Params 1, eflags: 0x4
// Checksum 0xed06e10c, Offset: 0x258
// Size: 0x16
function private on_end(*round_reset) {
    self.var_c54c0d81 = undefined;
}

// Namespace zm_trial_force_archetypes/zm_trial_force_archetypes
// Params 1, eflags: 0x0
// Checksum 0x67c806b4, Offset: 0x278
// Size: 0x52
function function_ff2a74e7(archetype) {
    challenge = zm_trial::function_a36e8c38(#"force_archetypes");
    if (!isdefined(challenge)) {
        return false;
    }
    return isdefined(challenge.var_c54c0d81[archetype]);
}

