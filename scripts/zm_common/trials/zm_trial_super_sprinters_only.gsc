// Atian COD Tools GSC CW decompiler test
#using script_444bc5b4fa0fe14f;
#using scripts\zm_common\zm_trial.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace zm_trial_super_sprinters_only;

// Namespace zm_trial_super_sprinters_only/zm_trial_super_sprinters_only
// Params 0, eflags: 0x5
// Checksum 0x805c8ec1, Offset: 0xa8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_trial_super_sprinters_only", &preinit, undefined, undefined, undefined);
}

// Namespace zm_trial_super_sprinters_only/zm_trial_super_sprinters_only
// Params 0, eflags: 0x4
// Checksum 0x1200cca9, Offset: 0xf0
// Size: 0x5c
function private preinit() {
    if (!zm_trial::is_trial_mode()) {
        return;
    }
    zm_trial::register_challenge(#"super_sprinters_only", &on_begin, &on_end);
}

// Namespace zm_trial_super_sprinters_only/zm_trial_super_sprinters_only
// Params 0, eflags: 0x4
// Checksum 0xcefe19ea, Offset: 0x158
// Size: 0x56
function private on_begin() {
    level.var_43fb4347 = "super_sprint";
    level.var_102b1301 = "super_sprint";
    level.var_b38bb71 = 1;
    level.var_ef0aada0 = 1;
    if (namespace_c56530a8::is_active()) {
    }
}

// Namespace zm_trial_super_sprinters_only/zm_trial_super_sprinters_only
// Params 1, eflags: 0x4
// Checksum 0xc3cd7754, Offset: 0x1b8
// Size: 0x3c
function private on_end(*round_reset) {
    level.var_43fb4347 = undefined;
    level.var_102b1301 = undefined;
    level.var_b38bb71 = 0;
    level.var_ef0aada0 = 0;
}

