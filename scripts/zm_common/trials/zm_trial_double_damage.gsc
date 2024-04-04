// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm.gsc;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm_trial_util.gsc;
#using scripts\zm_common\zm_trial.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace zm_trial_double_damage;

// Namespace zm_trial_double_damage/zm_trial_double_damage
// Params 0, eflags: 0x5
// Checksum 0x28c55a0c, Offset: 0xb0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_trial_double_damage", &preinit, undefined, undefined, undefined);
}

// Namespace zm_trial_double_damage/zm_trial_double_damage
// Params 0, eflags: 0x4
// Checksum 0x3844b6da, Offset: 0xf8
// Size: 0x5c
function private preinit() {
    if (!zm_trial::is_trial_mode()) {
        return;
    }
    zm_trial::register_challenge(#"double_damage", &on_begin, &on_end);
}

// Namespace zm_trial_double_damage/zm_trial_double_damage
// Params 0, eflags: 0x4
// Checksum 0xd9aa34b9, Offset: 0x160
// Size: 0x84
function private on_begin() {
    self.var_42fe565a = level.var_c739ead9;
    self.var_c98099cd = level.var_cfbc34ae;
    self.var_3ab281b2 = level.var_5a59b382;
    self.var_c7f3b69b = level.var_97850f30;
    level.var_c739ead9 = 2;
    level.var_cfbc34ae = 2;
    level.var_5a59b382 = 2;
    level.var_97850f30 = 2;
}

// Namespace zm_trial_double_damage/zm_trial_double_damage
// Params 1, eflags: 0x4
// Checksum 0xc4d9c763, Offset: 0x1f0
// Size: 0x4c
function private on_end(*round_reset) {
    level.var_c739ead9 = self.var_42fe565a;
    level.var_cfbc34ae = self.var_c98099cd;
    level.var_5a59b382 = self.var_3ab281b2;
    level.var_97850f30 = self.var_c7f3b69b;
}

// Namespace zm_trial_double_damage/zm_trial_double_damage
// Params 0, eflags: 0x0
// Checksum 0x7f4bd3ea, Offset: 0x248
// Size: 0x32
function is_active() {
    challenge = zm_trial::function_a36e8c38(#"double_damage");
    return isdefined(challenge);
}

