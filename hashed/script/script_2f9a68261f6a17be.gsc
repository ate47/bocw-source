// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_traps.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_trial_util.gsc;
#using scripts\zm_common\zm_trial.gsc;
#using scripts\zm_common\zm_loadout.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace namespace_b28d86fd;

// Namespace namespace_b28d86fd/namespace_b28d86fd
// Params 0, eflags: 0x5
// Checksum 0x506e2165, Offset: 0x100
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_41cb195ec280085c", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_b28d86fd/namespace_b28d86fd
// Params 0, eflags: 0x6 linked
// Checksum 0xb6da1c97, Offset: 0x148
// Size: 0x5c
function private preinit() {
    if (!zm_trial::is_trial_mode()) {
        return;
    }
    zm_trial::register_challenge(#"hash_149b9c514fee8fc3", &on_begin, &on_end);
}

// Namespace namespace_b28d86fd/namespace_b28d86fd
// Params 0, eflags: 0x6 linked
// Checksum 0x4b5acd78, Offset: 0x1b0
// Size: 0x344
function private on_begin() {
    callback::function_33f0ddd3(&function_33f0ddd3);
    foreach (player in getplayers()) {
        player thread zm_trial_util::function_bf710271();
        player zm_trial_util::function_7dbb1712(1);
    }
    a_t_traps = getentarray("zombie_trap", "targetname");
    str_text = #"hash_24a438482954901";
    foreach (t_trap in a_t_traps) {
        if (!is_true(t_trap._trap_in_use) && is_true(t_trap.var_b3166dc1)) {
            t_trap zm_traps::trap_set_string(str_text, t_trap.zombie_cost);
        }
    }
    a_ai = getaiteamarray(level.zombie_team);
    foreach (ai in a_ai) {
        if (isalive(ai) && (ai.var_6f84b820 === #"elite" || ai.var_6f84b820 === #"special")) {
            ai.takedamage = 1;
            ai.allowdeath = 1;
            ai kill();
        }
    }
    level.var_b38bb71 = 1;
    level.var_ef0aada0 = 1;
    level zm_trial::function_25ee130(1);
    level thread function_70594057();
}

// Namespace namespace_b28d86fd/namespace_b28d86fd
// Params 1, eflags: 0x6 linked
// Checksum 0x53b72fa9, Offset: 0x500
// Size: 0x210
function private on_end(*round_reset) {
    callback::function_824d206(&function_33f0ddd3);
    level.var_b38bb71 = undefined;
    level.var_ef0aada0 = undefined;
    level zm_trial::function_25ee130(0);
    foreach (player in getplayers()) {
        player thread zm_trial_util::function_dc0859e();
        player zm_trial_util::function_7dbb1712(1);
    }
    a_t_traps = getentarray("zombie_trap", "targetname");
    str_text = #"hash_23c1c09e94181fdb";
    foreach (t_trap in a_t_traps) {
        if (!is_true(t_trap._trap_in_use) && is_true(t_trap.var_b3166dc1)) {
            t_trap zm_traps::trap_set_string(str_text, t_trap.zombie_cost);
        }
    }
}

// Namespace namespace_b28d86fd/namespace_b28d86fd
// Params 1, eflags: 0x6 linked
// Checksum 0x8dfb9b96, Offset: 0x718
// Size: 0x10c
function private function_33f0ddd3(s_event) {
    if (s_event.event === "give_weapon" && !zm_loadout::function_2ff6913(s_event.weapon)) {
        self lockweapon(s_event.weapon, 1, 1);
        if (s_event.weapon.dualwieldweapon != level.weaponnone) {
            self lockweapon(s_event.weapon.dualwieldweapon, 1, 1);
        }
        if (s_event.weapon.altweapon != level.weaponnone) {
            self lockweapon(s_event.weapon.altweapon, 1, 1);
        }
    }
}

// Namespace namespace_b28d86fd/namespace_b28d86fd
// Params 0, eflags: 0x2 linked
// Checksum 0xdc8feb07, Offset: 0x830
// Size: 0x32
function is_active() {
    s_challenge = zm_trial::function_a36e8c38(#"hash_149b9c514fee8fc3");
    return isdefined(s_challenge);
}

// Namespace namespace_b28d86fd/namespace_b28d86fd
// Params 0, eflags: 0x2 linked
// Checksum 0x3a19db3d, Offset: 0x870
// Size: 0xac
function function_70594057() {
    level endon(#"hash_7646638df88a3656", #"end_game");
    level waittill(#"zombie_total_set");
    for (n_kills = 0; true; n_kills++) {
        level waittill(#"trap_kill", #"hash_528d7b7f7d6c51a1", #"hash_317f58ba0d580c27", #"hash_148b3ce521088846");
    }
}

