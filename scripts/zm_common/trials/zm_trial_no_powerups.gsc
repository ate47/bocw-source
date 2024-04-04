// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\zm_common\zm_powerups.gsc;
#using scripts\zm_common\zm_spawner.gsc;
#using scripts\zm_common\zm_round_logic.gsc;
#using scripts\zm_common\zm_trial.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace zm_trial_no_powerups;

// Namespace zm_trial_no_powerups/zm_trial_no_powerups
// Params 0, eflags: 0x5
// Checksum 0x2eb75383, Offset: 0xb8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_trial_no_powerups", &preinit, undefined, undefined, undefined);
}

// Namespace zm_trial_no_powerups/zm_trial_no_powerups
// Params 0, eflags: 0x6 linked
// Checksum 0xac3bdc6f, Offset: 0x100
// Size: 0x5c
function private preinit() {
    if (!zm_trial::is_trial_mode()) {
        return;
    }
    zm_trial::register_challenge(#"no_powerups", &on_begin, &on_end);
}

// Namespace zm_trial_no_powerups/zm_trial_no_powerups
// Params 0, eflags: 0x6 linked
// Checksum 0x3de33f9c, Offset: 0x168
// Size: 0xb0
function private on_begin() {
    self.active = 1;
    self.enemies_killed = 0;
    zombie_utility::set_zombie_var(#"zombie_powerup_drop_max_per_round", 80);
    zm_spawner::register_zombie_death_event_callback(&function_138aec8e);
    kill_count = zm_powerups::function_2ff352cc();
    if (!isdefined(level.var_1dce56cc) || kill_count < level.var_1dce56cc) {
        level.var_1dce56cc = kill_count;
    }
}

// Namespace zm_trial_no_powerups/zm_trial_no_powerups
// Params 1, eflags: 0x6 linked
// Checksum 0xbb04ef05, Offset: 0x220
// Size: 0xb4
function private on_end(*round_reset) {
    self.active = 0;
    zombie_utility::set_zombie_var(#"zombie_powerup_drop_max_per_round", 4);
    level.var_1dce56cc = level.n_total_kills + randomintrangeinclusive(15, 25);
    zombie_utility::set_zombie_var(#"zombie_drop_item", 0);
    zm_spawner::deregister_zombie_death_event_callback(&function_138aec8e);
}

// Namespace zm_trial_no_powerups/zm_trial_no_powerups
// Params 0, eflags: 0x2 linked
// Checksum 0xce5508f8, Offset: 0x2e0
// Size: 0x54
function is_active() {
    challenge = zm_trial::function_a36e8c38(#"no_powerups");
    return isdefined(challenge) && is_true(challenge.active);
}

// Namespace zm_trial_no_powerups/zm_trial_no_powerups
// Params 0, eflags: 0x2 linked
// Checksum 0xa329c57c, Offset: 0x340
// Size: 0xf2
function function_2fc5f13() {
    challenge = zm_trial::function_a36e8c38(#"no_powerups");
    assert(isdefined(challenge));
    var_5843af96 = zm_round_logic::get_zombie_count_for_round(level.round_number, getplayers().size);
    frac = math::clamp(challenge.enemies_killed / var_5843af96, 0, 1);
    modifier = lerpfloat(25, 40, frac);
    return modifier;
}

// Namespace zm_trial_no_powerups/zm_trial_no_powerups
// Params 1, eflags: 0x6 linked
// Checksum 0x4f0e4ad0, Offset: 0x440
// Size: 0xa0
function private function_138aec8e(attacker) {
    if (!isplayer(attacker) && !is_true(self.nuked)) {
        return;
    }
    challenge = zm_trial::function_a36e8c38(#"no_powerups");
    assert(isdefined(challenge));
    challenge.enemies_killed++;
}

