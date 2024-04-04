// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_trial_util.gsc;
#using scripts\zm_common\zm_trial.gsc;
#using scripts\zm_common\zm_traps.gsc;
#using scripts\zm_common\zm_loadout.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace zm_trial_headshots_only;

// Namespace zm_trial_headshots_only/zm_trial_headshots_only
// Params 0, eflags: 0x5
// Checksum 0x8f00bf35, Offset: 0xf0
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_trial_headshots_only", &preinit, undefined, undefined, undefined);
}

// Namespace zm_trial_headshots_only/zm_trial_headshots_only
// Params 0, eflags: 0x6 linked
// Checksum 0xbdaa25d, Offset: 0x138
// Size: 0x5c
function private preinit() {
    if (!zm_trial::is_trial_mode()) {
        return;
    }
    zm_trial::register_challenge(#"headshots_only", &on_begin, &on_end);
}

// Namespace zm_trial_headshots_only/zm_trial_headshots_only
// Params 1, eflags: 0x6 linked
// Checksum 0x44981bea, Offset: 0x1a0
// Size: 0x234
function private on_begin(*weapon_name) {
    level.var_b38bb71 = 1;
    level.var_ef0aada0 = 1;
    zm_traps::function_6966417b();
    foreach (player in getplayers()) {
        foreach (var_5a1e3e5b in level.hero_weapon) {
            foreach (w_hero in var_5a1e3e5b) {
                player lockweapon(w_hero, 1, 1);
            }
        }
        player zm_trial_util::function_9bf8e274();
        player zm_trial_util::function_dc9ab223(1);
    }
    callback::function_33f0ddd3(&function_33f0ddd3);
    level zm_trial::function_44200d07(1);
    level zm_trial::function_cd75b690(1);
}

// Namespace zm_trial_headshots_only/zm_trial_headshots_only
// Params 1, eflags: 0x6 linked
// Checksum 0x71a525dc, Offset: 0x3e0
// Size: 0x2cc
function private on_end(*round_reset) {
    level.var_b38bb71 = 0;
    level.var_ef0aada0 = 0;
    zm_traps::function_9d0c9706();
    foreach (player in getplayers()) {
        foreach (var_5a1e3e5b in level.hero_weapon) {
            foreach (w_hero in var_5a1e3e5b) {
                player unlockweapon(w_hero);
            }
        }
        player zm_trial_util::function_73ff0096();
        foreach (w_equip in level.zombie_weapons) {
            if (w_equip.weapon_classname === "equipment") {
                player unlockweapon(w_equip.weapon);
            }
        }
        player zm_trial_util::function_dc9ab223(0);
    }
    callback::function_824d206(&function_33f0ddd3);
    level zm_trial::function_44200d07(0);
    level zm_trial::function_cd75b690(0);
}

// Namespace zm_trial_headshots_only/zm_trial_headshots_only
// Params 0, eflags: 0x2 linked
// Checksum 0x5fe6b073, Offset: 0x6b8
// Size: 0x32
function is_active() {
    challenge = zm_trial::function_a36e8c38(#"headshots_only");
    return isdefined(challenge);
}

// Namespace zm_trial_headshots_only/zm_trial_headshots_only
// Params 1, eflags: 0x6 linked
// Checksum 0xc5e78d69, Offset: 0x6f8
// Size: 0x6c
function private function_33f0ddd3(s_event) {
    if (s_event.event === "give_weapon") {
        if (zm_loadout::function_59b0ef71("lethal_grenade", s_event.weapon)) {
            self lockweapon(s_event.weapon, 1, 1);
        }
    }
}

