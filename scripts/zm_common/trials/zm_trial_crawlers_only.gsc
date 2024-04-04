// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_trial.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace zm_trial_crawlers_only;

// Namespace zm_trial_crawlers_only/zm_trial_crawlers_only
// Params 0, eflags: 0x5
// Checksum 0x799d9da9, Offset: 0x90
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_trial_crawlers_only", &preinit, undefined, undefined, undefined);
}

// Namespace zm_trial_crawlers_only/zm_trial_crawlers_only
// Params 0, eflags: 0x4
// Checksum 0xbdadd78e, Offset: 0xd8
// Size: 0x5c
function private preinit() {
    if (!zm_trial::is_trial_mode()) {
        return;
    }
    zm_trial::register_challenge(#"crawlers_only", &on_begin, &on_end);
}

// Namespace zm_trial_crawlers_only/zm_trial_crawlers_only
// Params 0, eflags: 0x4
// Checksum 0x254725dd, Offset: 0x140
// Size: 0x52
function private on_begin() {
    level.var_6d8a8e47 = 1;
    level.var_b38bb71 = 1;
    level.var_ef0aada0 = 1;
    level.var_d1b3ec4e = level.var_9b91564e;
    level.var_9b91564e = undefined;
}

// Namespace zm_trial_crawlers_only/zm_trial_crawlers_only
// Params 1, eflags: 0x4
// Checksum 0xfa1ec527, Offset: 0x1a0
// Size: 0x4e
function private on_end(*round_reset) {
    level.var_6d8a8e47 = 0;
    level.var_b38bb71 = 0;
    level.var_ef0aada0 = 0;
    level.var_9b91564e = level.var_d1b3ec4e;
    level.var_d1b3ec4e = undefined;
}

