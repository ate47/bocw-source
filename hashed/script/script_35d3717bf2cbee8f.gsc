// Atian COD Tools GSC CW decompiler test
#using script_698dd790cdc4965f;
#using scripts\zm_common\zm_trial_util.gsc;
#using scripts\zm_common\zm_trial.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace namespace_fc5170d1;

// Namespace namespace_fc5170d1/namespace_fc5170d1
// Params 0, eflags: 0x5
// Checksum 0xdc9f5fc1, Offset: 0xa8
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_388ce832b10c2f83", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_fc5170d1/namespace_fc5170d1
// Params 0, eflags: 0x6 linked
// Checksum 0x502e1f03, Offset: 0xf0
// Size: 0x5c
function private preinit() {
    if (!zm_trial::is_trial_mode()) {
        return;
    }
    zm_trial::register_challenge(#"hash_c2ef6223096d3ca", &on_begin, &on_end);
}

// Namespace namespace_fc5170d1/namespace_fc5170d1
// Params 0, eflags: 0x6 linked
// Checksum 0xade2660e, Offset: 0x158
// Size: 0x31c
function private on_begin() {
    weapon_names = array(#"hero_chakram_lv1", #"hero_chakram_lv2", #"hero_chakram_lv3", #"hero_chakram_lh_lv1", #"hero_chakram_lh_lv2", #"hero_chakram_lh_lv3", #"hero_hammer_lv1", #"hero_hammer_lv2", #"hero_hammer_lv3", #"hero_katana_t8_lv1", #"hero_katana_t8_lv2", #"hero_katana_t8_lv3", #"hero_scepter_lv1", #"hero_scepter_lv2", #"hero_scepter_lv3", #"hero_sword_pistol_lv1", #"hero_sword_pistol_lv2", #"hero_sword_pistol_lv3", #"hero_sword_pistol_lh_lv1", #"hero_sword_pistol_lh_lv2", #"hero_sword_pistol_lh_lv3");
    level.var_3e2ac3b6 = [];
    foreach (weapon_name in weapon_names) {
        weapon = getweapon(weapon_name);
        if (isdefined(weapon) && weapon != level.weaponnone) {
            level.var_3e2ac3b6[weapon.name] = weapon;
        }
    }
    foreach (player in getplayers()) {
        player function_6a8979c9();
        player callback::function_33f0ddd3(&function_33f0ddd3);
        player zm_trial_util::function_9bf8e274();
    }
    level zm_trial::function_44200d07(1);
}

// Namespace namespace_fc5170d1/namespace_fc5170d1
// Params 1, eflags: 0x6 linked
// Checksum 0x3bd279c, Offset: 0x480
// Size: 0x1b4
function private on_end(*round_reset) {
    foreach (player in getplayers()) {
        player callback::function_824d206(&function_33f0ddd3);
        foreach (weapon in player getweaponslist(1)) {
            player unlockweapon(weapon);
            if (weapon.isdualwield && weapon.dualwieldweapon != level.weaponnone) {
                player unlockweapon(weapon.dualwieldweapon);
            }
        }
        player zm_trial_util::function_73ff0096();
    }
    level.var_3e2ac3b6 = undefined;
    level zm_trial::function_44200d07(0);
}

// Namespace namespace_fc5170d1/namespace_fc5170d1
// Params 0, eflags: 0x2 linked
// Checksum 0x51c10a59, Offset: 0x640
// Size: 0x32
function is_active() {
    challenge = zm_trial::function_a36e8c38(#"hash_c2ef6223096d3ca");
    return isdefined(challenge);
}

// Namespace namespace_fc5170d1/namespace_fc5170d1
// Params 1, eflags: 0x6 linked
// Checksum 0x77cb2875, Offset: 0x680
// Size: 0x24
function private function_33f0ddd3(*eventstruct) {
    self function_6a8979c9();
}

// Namespace namespace_fc5170d1/namespace_fc5170d1
// Params 0, eflags: 0x6 linked
// Checksum 0xe599028, Offset: 0x6b0
// Size: 0x1c0
function private function_6a8979c9() {
    assert(isdefined(level.var_3e2ac3b6));
    foreach (weapon in self getweaponslist(1)) {
        if (isdefined(level.var_3e2ac3b6[weapon.name])) {
            self lockweapon(weapon);
        } else if (!namespace_83dc3729::is_active() || !isarray(level.var_af806901) || !isdefined(level.var_af806901[weapon.name])) {
            self unlockweapon(weapon);
        }
        if (weapon.isdualwield && weapon.dualwieldweapon != level.weaponnone) {
            if (self function_635f9c02(weapon)) {
                self lockweapon(weapon.dualwieldweapon);
                continue;
            }
            self unlockweapon(weapon.dualwieldweapon);
        }
    }
}

