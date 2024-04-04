// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_trial.gsc;
#using scripts\zm_common\zm_round_spawning.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace zm_trial_add_special;

// Namespace zm_trial_add_special/zm_trial_add_special
// Params 0, eflags: 0x5
// Checksum 0xb9cbd7ad, Offset: 0x98
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_trial_add_special", &preinit, undefined, undefined, undefined);
}

// Namespace zm_trial_add_special/zm_trial_add_special
// Params 0, eflags: 0x4
// Checksum 0x8da3b6e3, Offset: 0xe0
// Size: 0x5c
function private preinit() {
    if (!zm_trial::is_trial_mode()) {
        return;
    }
    zm_trial::register_challenge(#"add_special", &on_begin, &on_end);
}

// Namespace zm_trial_add_special/zm_trial_add_special
// Params 5, eflags: 0x4
// Checksum 0xe68252c3, Offset: 0x148
// Size: 0x184
function private on_begin(enemy_type, var_1f950d4d, var_81dcf087, var_d631185a, var_fe1bdf31) {
    level.var_1c7412f9 = enemy_type;
    switch (getplayers().size) {
    case 1:
        level.var_e34a018e = zm_trial::function_5769f26a(var_1f950d4d);
        break;
    case 2:
        level.var_e34a018e = zm_trial::function_5769f26a(var_81dcf087);
        break;
    case 3:
        level.var_e34a018e = zm_trial::function_5769f26a(var_d631185a);
        break;
    case 4:
        level.var_e34a018e = zm_trial::function_5769f26a(var_fe1bdf31);
        break;
    }
    zm_round_spawning::function_c1571721(&function_51ec9e09);
    zm_round_spawning::function_54fee373(&function_1b1d71e7);
    zm_round_spawning::function_2876740e(level.var_1c7412f9, &function_a7c00976);
}

// Namespace zm_trial_add_special/zm_trial_add_special
// Params 1, eflags: 0x4
// Checksum 0xc30aabf, Offset: 0x2d8
// Size: 0x8a
function private on_end(*round_reset) {
    zm_round_spawning::function_9bf14a10(level.var_1c7412f9, &function_a7c00976);
    zm_round_spawning::function_510039c1(&function_51ec9e09);
    zm_round_spawning::function_375519eb(&function_1b1d71e7);
    level.var_1c7412f9 = undefined;
    level.var_e34a018e = undefined;
}

// Namespace zm_trial_add_special/zm_trial_add_special
// Params 1, eflags: 0x0
// Checksum 0xbe1ee7db, Offset: 0x370
// Size: 0x62
function is_active(str_archetype) {
    challenge = zm_trial::function_a36e8c38(#"add_special");
    if (isdefined(str_archetype)) {
        return (isdefined(challenge) && level.var_1c7412f9 === str_archetype);
    }
    return isdefined(challenge);
}

// Namespace zm_trial_add_special/zm_trial_add_special
// Params 1, eflags: 0x0
// Checksum 0xbfd4afa, Offset: 0x3e0
// Size: 0x10
function function_a7c00976(*n_max) {
    return 999;
}

// Namespace zm_trial_add_special/zm_trial_add_special
// Params 1, eflags: 0x0
// Checksum 0xb61440d8, Offset: 0x3f8
// Size: 0x6c
function function_51ec9e09(*n_points) {
    if (isdefined(level.var_819e7dfd[level.var_1c7412f9].var_f6a3b5b0)) {
        var_dbce0c44 = level.var_819e7dfd[level.var_1c7412f9].var_f6a3b5b0 * level.var_e34a018e;
    } else {
        var_dbce0c44 = 1600;
    }
    return var_dbce0c44;
}

// Namespace zm_trial_add_special/zm_trial_add_special
// Params 1, eflags: 0x0
// Checksum 0xa43caa0b, Offset: 0x470
// Size: 0xd4
function function_1b1d71e7(var_8997f0f2) {
    a_str_archetypes = getarraykeys(var_8997f0f2);
    foreach (str_archetype in a_str_archetypes) {
        if (str_archetype === level.var_1c7412f9) {
            var_8997f0f2[str_archetype] = level.var_e34a018e;
            continue;
        }
        var_8997f0f2[str_archetype] = 0;
    }
    return var_8997f0f2;
}

