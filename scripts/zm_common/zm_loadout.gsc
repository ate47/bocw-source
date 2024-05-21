// Atian COD Tools GSC CW decompiler test
#using script_18077945bb84ede7;
#using script_72401f526ba71638;
#using scripts\zm_common\zm_maptable.gsc;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_unitrigger.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_player.gsc;
#using scripts\zm_common\zm_placeable_mine.gsc;
#using scripts\zm_common\zm_pack_a_punch_util.gsc;
#using scripts\zm_common\zm_melee_weapon.gsc;
#using script_437ce686d29bb81b;
#using scripts\zm_common\zm_magicbox.gsc;
#using scripts\zm_common\zm_items.gsc;
#using script_dc49265d9886946;
#using scripts\zm_common\zm_equipment.gsc;
#using scripts\zm_common\zm_customgame.gsc;
#using scripts\zm_common\zm_bgb.gsc;
#using scripts\zm_common\zm_audio.gsc;
#using scripts\zm_common\gametypes\globallogic_ui.gsc;
#using scripts\zm_common\bb.gsc;
#using scripts\zm_common\util.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using script_7a8059ca02b7b09e;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\player\player_loadout.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\item_world.gsc;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\gamestate_util.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\aat_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\abilities\ability_util.gsc;

#namespace zm_loadout;

// Namespace zm_loadout/zm_loadout
// Params 0, eflags: 0x5
// Checksum 0xfe37101b, Offset: 0x468
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"zm_loadout", &preinit, undefined, undefined, undefined);
}

// Namespace zm_loadout/zm_loadout
// Params 0, eflags: 0x6 linked
// Checksum 0xaa2ddafa, Offset: 0x4b0
// Size: 0x46c
function private preinit() {
    level.var_928a7cf1 = 1;
    callback::on_connect(&on_player_connect);
    callback::on_spawned(&on_player_spawned);
    level.defaultclass = "CLASS_CUSTOM1";
    level.classmap[#"class_smg"] = "CLASS_SMG";
    level.classmap[#"class_cqb"] = "CLASS_CQB";
    level.classmap[#"class_assault"] = "CLASS_ASSAULT";
    level.classmap[#"class_lmg"] = "CLASS_LMG";
    level.classmap[#"class_sniper"] = "CLASS_SNIPER";
    level.classmap[#"custom0"] = "CLASS_CUSTOM1";
    level.classmap[#"custom1"] = "CLASS_CUSTOM2";
    level.classmap[#"custom2"] = "CLASS_CUSTOM3";
    level.classmap[#"custom3"] = "CLASS_CUSTOM4";
    level.classmap[#"custom4"] = "CLASS_CUSTOM5";
    level.classmap[#"custom5"] = "CLASS_CUSTOM6";
    level.classmap[#"custom6"] = "CLASS_CUSTOM7";
    level.classmap[#"custom7"] = "CLASS_CUSTOM8";
    level.classmap[#"custom8"] = "CLASS_CUSTOM9";
    level.classmap[#"custom9"] = "CLASS_CUSTOM10";
    level.classmap[#"custom10"] = "CLASS_CUSTOM_BONUS1";
    level.classmap[#"custom11"] = "CLASS_CUSTOM_BONUS2";
    level.classmap[#"custom12"] = level.classmap[#"class_smg"];
    level.classmap[#"custom13"] = level.classmap[#"class_cqb"];
    level.classmap[#"custom14"] = level.classmap[#"class_assault"];
    level.classmap[#"custom15"] = level.classmap[#"class_lmg"];
    level.classmap[#"custom16"] = level.classmap[#"class_sniper"];
    function_445ac5cc("CLASS_CUSTOM_BONUS1", 10);
    function_445ac5cc("CLASS_CUSTOM_BONUS2", 11);
    load_default_loadout("CLASS_SMG", 12);
    load_default_loadout("CLASS_CQB", 13);
    load_default_loadout("CLASS_ASSAULT", 14);
    load_default_loadout("CLASS_LMG", 15);
    load_default_loadout("CLASS_SNIPER", 16);
    level.var_54cacb7e = namespace_cf6efd05::function_85b812c9();
}

// Namespace zm_loadout/zm_loadout
// Params 0, eflags: 0x2 linked
// Checksum 0x6cdaa0f6, Offset: 0x928
// Size: 0x144
function on_player_connect() {
    self.currentweaponstarttime = gettime();
    self.currentweapon = level.weaponnone;
    self.previousweapon = level.weaponnone;
    if (!isdefined(self.var_57c1d146)) {
        self.var_57c1d146 = [];
    }
    self.pers[#"loadoutindex"] = 0;
    if (loadout::function_87bcb1b()) {
        if (!isdefined(self.pers[#"class"])) {
            self.pers[#"class"] = "";
        }
        self.curclass = self.pers[#"class"];
        self.lastclass = "";
        self loadout::function_c67222df();
        self function_d7c205b9(self.curclass);
        if (!is_true(level.var_54cacb7e)) {
            self thread function_7a169290();
        }
    }
}

// Namespace zm_loadout/zm_loadout
// Params 0, eflags: 0x2 linked
// Checksum 0xd6a1f91d, Offset: 0xa78
// Size: 0x22
function on_player_spawned() {
    self.class_num = self function_cc90c352();
}

// Namespace zm_loadout/weapon_change
// Params 1, eflags: 0x20
// Checksum 0xa3f79e12, Offset: 0xaa8
// Size: 0x62
function event_handler[weapon_change] weapon_changed(eventstruct) {
    if (!is_true(level.var_928a7cf1)) {
        return;
    }
    if (!isplayer(self)) {
        return;
    }
    self.currentweapon = eventstruct.weapon;
    self.previousweapon = eventstruct.last_weapon;
}

// Namespace zm_loadout/player_loadoutchanged
// Params 1, eflags: 0x20
// Checksum 0xb1eb73e7, Offset: 0xb18
// Size: 0x54
function event_handler[player_loadoutchanged] loadout_changed(eventstruct) {
    if (!is_true(level.var_928a7cf1)) {
        return;
    }
    if (isdefined(self)) {
        self callback::callback(#"hash_39bf72fd97e248a0", eventstruct);
    }
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x0
// Checksum 0x4a218a26, Offset: 0xb78
// Size: 0x22c
function function_ad4c1664(weapon) {
    self notify(#"weapon_take", weapon);
    primaryweapons = self getweaponslistprimaries();
    current_weapon = self getcurrentweapon();
    if (zm_equipment::is_equipment(weapon)) {
        self zm_equipment::take(weapon);
    }
    if (function_59b0ef71("melee_weapon", weapon)) {
        self function_6519eea8("melee_weapon", level.weaponnone);
    } else if (function_59b0ef71("hero_weapon", weapon)) {
        self function_6519eea8("hero_weapon", level.weaponnone);
    } else if (function_59b0ef71("lethal_grenade", weapon)) {
        self function_6519eea8("lethal_grenade", level.weaponnone);
    } else if (function_59b0ef71("tactical_grenade", weapon)) {
        self function_6519eea8("tactical_grenade", level.weaponnone);
    } else if (function_59b0ef71("placeable_mine", weapon)) {
        self function_6519eea8("placeable_mine", level.weaponnone);
    }
    if (!is_offhand_weapon(weapon) && primaryweapons.size < 1) {
        self zm_weapons::give_fallback_weapon();
    }
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x0
// Checksum 0x52a25ca3, Offset: 0xdb0
// Size: 0x58c
function function_54cb37a4(weapon) {
    self notify(#"weapon_give", weapon);
    self endon(#"disconnect");
    if (weapon == getweapon(#"hash_788c96e19cc7a46e")) {
        return;
    }
    primaryweapons = self getweaponslistprimaries();
    initial_current_weapon = self getcurrentweapon();
    current_weapon = self zm_weapons::switch_from_alt_weapon(initial_current_weapon);
    assert(self zm_weapons::player_can_use_content(weapon));
    weapon_limit = zm_utility::get_player_weapon_limit(self);
    if (is_true(weapon.craftitem)) {
        zm_items::player_pick_up(self, weapon);
        return;
    }
    if (zm_equipment::is_equipment(weapon)) {
        self zm_equipment::give(weapon);
    }
    if (weapon.isriotshield) {
        if (isdefined(self.player_shield_reset_health)) {
            self [[ self.player_shield_reset_health ]](weapon);
        }
    }
    if (function_59b0ef71("melee_weapon", weapon)) {
        had_fallback_weapon = self zm_melee_weapon::take_fallback_weapon();
        self function_6519eea8("melee_weapon", weapon);
        if (had_fallback_weapon) {
            self zm_melee_weapon::give_fallback_weapon();
        }
    } else if (function_59b0ef71("hero_weapon", weapon)) {
        self function_6519eea8("hero_weapon", weapon);
    } else if (function_59b0ef71("lethal_grenade", weapon)) {
        self function_6519eea8("lethal_grenade", weapon);
    } else if (function_59b0ef71("tactical_grenade", weapon)) {
        self function_6519eea8("tactical_grenade", weapon);
    } else if (function_59b0ef71("placeable_mine", weapon)) {
        self function_6519eea8("placeable_mine", weapon);
    }
    if (!is_offhand_weapon(weapon) && !function_2ff6913(weapon) && weapon != self zm_melee_weapon::determine_fallback_weapon()) {
        self zm_weapons::take_fallback_weapon();
    }
    if (primaryweapons.size > weapon_limit) {
        if (is_placeable_mine(current_weapon) || zm_equipment::is_equipment(current_weapon) || self.laststandpistol === weapon) {
            current_weapon = undefined;
        }
        if (isdefined(current_weapon)) {
            if (!is_offhand_weapon(weapon)) {
                self zm_weapons::weapon_take(current_weapon);
                if (isdefined(initial_current_weapon) && current_weapon != initial_current_weapon) {
                    self zm_weapons::weapon_take(initial_current_weapon);
                }
            }
        }
    }
    if (isdefined(level.zombiemode_offhand_weapon_give_override)) {
        if (self [[ level.zombiemode_offhand_weapon_give_override ]](weapon)) {
            return;
        }
    }
    if (is_placeable_mine(weapon)) {
        self thread zm_placeable_mine::setup_for_player(weapon);
        return weapon;
    }
    if (isdefined(level.zombie_weapons_callbacks) && isdefined(level.zombie_weapons_callbacks[weapon])) {
        self thread [[ level.zombie_weapons_callbacks[weapon] ]]();
    }
    self zm_weapons::function_7c5dd4bd(weapon);
    if (is_true(self.var_57c1d146[weapon])) {
        self.var_57c1d146[weapon] = undefined;
        return;
    }
    if (!is_offhand_weapon(weapon) && !is_hero_weapon(weapon)) {
        if (!is_melee_weapon(weapon)) {
            self switchtoweapon(weapon);
            return;
        }
        self switchtoweapon(current_weapon);
    }
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x2 linked
// Checksum 0x2d53443, Offset: 0x1348
// Size: 0x60
function function_5a5a742a(slot) {
    if (!isdefined(level.var_d5f9c1d2)) {
        level.var_d5f9c1d2 = [];
    }
    if (!isdefined(level.var_d5f9c1d2[slot])) {
        level.var_d5f9c1d2[slot] = [];
    }
    return level.var_d5f9c1d2[slot];
}

// Namespace zm_loadout/zm_loadout
// Params 2, eflags: 0x2 linked
// Checksum 0x620f7c, Offset: 0x13b0
// Size: 0xfa
function function_e884e095(slot, weapon) {
    if (!isdefined(weapon)) {
        return;
    }
    if (isstring(weapon) || ishash(weapon)) {
        weapon = getweapon(weapon);
    }
    if (weapon.name == #"none") {
        return;
    }
    if (function_59b0ef71(slot, weapon)) {
        return;
    }
    if (!isdefined(level.var_d5f9c1d2)) {
        level.var_d5f9c1d2 = [];
    }
    if (!isdefined(level.var_d5f9c1d2[slot])) {
        level.var_d5f9c1d2[slot] = [];
    }
    level.var_d5f9c1d2[slot][weapon] = weapon;
}

// Namespace zm_loadout/zm_loadout
// Params 2, eflags: 0x2 linked
// Checksum 0xe7258cfd, Offset: 0x14b8
// Size: 0x60
function function_59b0ef71(slot, weapon) {
    if (!isdefined(weapon) || !isdefined(level.var_d5f9c1d2) || !isdefined(level.var_d5f9c1d2[slot])) {
        return false;
    }
    return isdefined(level.var_d5f9c1d2[slot][weapon]);
}

// Namespace zm_loadout/zm_loadout
// Params 2, eflags: 0x2 linked
// Checksum 0x90aaaf0f, Offset: 0x1520
// Size: 0x72
function function_393977df(slot, weapon) {
    if (!isdefined(weapon) || weapon == level.weaponnone || !isdefined(self.slot_weapons) || !isdefined(self.slot_weapons[slot])) {
        return false;
    }
    return self.slot_weapons[slot] == weapon;
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x2 linked
// Checksum 0xc60c5c30, Offset: 0x15a0
// Size: 0x98
function function_8f85096(slot) {
    if (!isdefined(self.slot_weapons)) {
        self.slot_weapons = [];
    }
    if (!isdefined(self.slot_weapons[slot])) {
        self.slot_weapons[slot] = level.weaponnone;
    }
    w_ret = level.weaponnone;
    if (isdefined(self.slot_weapons) && isdefined(self.slot_weapons[slot])) {
        w_ret = self.slot_weapons[slot];
    }
    return w_ret;
}

// Namespace zm_loadout/zm_loadout
// Params 2, eflags: 0x2 linked
// Checksum 0x599b0c65, Offset: 0x1640
// Size: 0x164
function function_6519eea8(slot, weapon) {
    if (!isdefined(self.slot_weapons)) {
        self.slot_weapons = [];
    }
    if (!isdefined(self.slot_weapons[slot])) {
        self.slot_weapons[slot] = level.weaponnone;
    }
    if (!isdefined(weapon)) {
        weapon = level.weaponnone;
    }
    old_weapon = self function_8f85096(slot);
    self notify(#"hash_4078956b159dd0f3", {#slot:slot, #weapon:weapon});
    self notify("new_" + slot, {#weapon:weapon});
    self.slot_weapons[slot] = level.weaponnone;
    if (old_weapon != level.weaponnone && old_weapon != weapon) {
        if (self hasweapon(old_weapon)) {
            self takeweapon(old_weapon);
        }
    }
    self.slot_weapons[slot] = weapon;
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x2 linked
// Checksum 0xc9de6ec0, Offset: 0x17b0
// Size: 0x24
function register_lethal_grenade_for_level(weaponname) {
    function_e884e095("lethal_grenade", weaponname);
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x2 linked
// Checksum 0xfa18cd00, Offset: 0x17e0
// Size: 0x22
function is_lethal_grenade(weapon) {
    return is_true(weapon.islethalgrenade);
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x2 linked
// Checksum 0x3368375c, Offset: 0x1810
// Size: 0x2a
function is_player_lethal_grenade(weapon) {
    return self function_393977df("lethal_grenade", weapon);
}

// Namespace zm_loadout/zm_loadout
// Params 0, eflags: 0x2 linked
// Checksum 0xc6a6b85, Offset: 0x1848
// Size: 0x22
function get_player_lethal_grenade() {
    return self function_8f85096("lethal_grenade");
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x2 linked
// Checksum 0x1cc6bb58, Offset: 0x1878
// Size: 0x2c
function set_player_lethal_grenade(weapon) {
    self function_6519eea8("lethal_grenade", weapon);
}

// Namespace zm_loadout/zm_loadout
// Params 2, eflags: 0x0
// Checksum 0x465c2a54, Offset: 0x18b0
// Size: 0x74
function register_tactical_grenade_for_level(weaponname, var_b1830d98 = 0) {
    function_e884e095("tactical_grenade", weaponname);
    if (var_b1830d98) {
        w_shield = getweapon(weaponname);
        level.var_b115fab2 = w_shield;
    }
}

// Namespace zm_loadout/zm_loadout
// Params 2, eflags: 0x2 linked
// Checksum 0x54988a49, Offset: 0x1930
// Size: 0x6a
function is_tactical_grenade(weapon, var_9f428637 = 1) {
    if (!var_9f428637 && is_true(weapon.isriotshield)) {
        return 0;
    }
    return function_59b0ef71("tactical_grenade", weapon);
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x2 linked
// Checksum 0xd9c81c10, Offset: 0x19a8
// Size: 0x2a
function is_player_tactical_grenade(weapon) {
    return self function_393977df("tactical_grenade", weapon);
}

// Namespace zm_loadout/zm_loadout
// Params 0, eflags: 0x0
// Checksum 0x51622ada, Offset: 0x19e0
// Size: 0x22
function get_player_tactical_grenade() {
    return self function_8f85096("tactical_grenade");
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x0
// Checksum 0x8f7f27a1, Offset: 0x1a10
// Size: 0x2c
function set_player_tactical_grenade(weapon) {
    self function_6519eea8("tactical_grenade", weapon);
}

// Namespace zm_loadout/zm_loadout
// Params 0, eflags: 0x0
// Checksum 0x6644adc8, Offset: 0x1a48
// Size: 0x2c
function init_player_tactical_grenade() {
    self function_6519eea8("tactical_grenade", level.zombie_tactical_grenade_player_init);
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x2 linked
// Checksum 0xfc01b5dc, Offset: 0x1a80
// Size: 0x22
function is_placeable_mine(weapon) {
    return function_59b0ef71("placeable_mine", weapon);
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x2 linked
// Checksum 0x8c16a1f3, Offset: 0x1ab0
// Size: 0x2a
function is_player_placeable_mine(weapon) {
    return self function_393977df("placeable_mine", weapon);
}

// Namespace zm_loadout/zm_loadout
// Params 0, eflags: 0x2 linked
// Checksum 0xc4b2a36c, Offset: 0x1ae8
// Size: 0x22
function get_player_placeable_mine() {
    return self function_8f85096("placeable_mine");
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x2 linked
// Checksum 0x33631d0e, Offset: 0x1b18
// Size: 0x2c
function set_player_placeable_mine(weapon) {
    self function_6519eea8("placeable_mine", weapon);
}

// Namespace zm_loadout/zm_loadout
// Params 0, eflags: 0x0
// Checksum 0xa5c8dc75, Offset: 0x1b50
// Size: 0x2c
function init_player_placeable_mine() {
    self function_6519eea8("placeable_mine", level.zombie_placeable_mine_player_init);
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x2 linked
// Checksum 0xa196e1f4, Offset: 0x1b88
// Size: 0x24
function register_melee_weapon_for_level(weaponname) {
    function_e884e095("melee_weapon", weaponname);
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x2 linked
// Checksum 0xc95a4051, Offset: 0x1bb8
// Size: 0x22
function is_melee_weapon(weapon) {
    return function_59b0ef71("melee_weapon", weapon);
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x2 linked
// Checksum 0x6f5ff88f, Offset: 0x1be8
// Size: 0x2a
function is_player_melee_weapon(weapon) {
    return self function_393977df("melee_weapon", weapon);
}

// Namespace zm_loadout/zm_loadout
// Params 0, eflags: 0x2 linked
// Checksum 0x7b7f6e8, Offset: 0x1c20
// Size: 0x22
function get_player_melee_weapon() {
    return self function_8f85096("melee_weapon");
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x2 linked
// Checksum 0xe4f0d956, Offset: 0x1c50
// Size: 0x6c
function set_player_melee_weapon(weapon) {
    had_fallback_weapon = self zm_melee_weapon::take_fallback_weapon();
    self function_6519eea8("melee_weapon", weapon);
    if (had_fallback_weapon) {
        self zm_melee_weapon::give_fallback_weapon();
    }
}

// Namespace zm_loadout/zm_loadout
// Params 0, eflags: 0x0
// Checksum 0x566cd768, Offset: 0x1cc8
// Size: 0x2c
function init_player_melee_weapon() {
    self zm_weapons::weapon_give(level.zombie_melee_weapon_player_init, 1, 0);
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x0
// Checksum 0xb57c0352, Offset: 0x1d00
// Size: 0x24
function register_hero_weapon_for_level(weaponname) {
    function_e884e095("hero_weapon", weaponname);
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x2 linked
// Checksum 0xd698d5e5, Offset: 0x1d30
// Size: 0x22
function is_hero_weapon(weapon) {
    return function_59b0ef71("hero_weapon", weapon);
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x2 linked
// Checksum 0x12c05d15, Offset: 0x1d60
// Size: 0x2a
function is_player_hero_weapon(weapon) {
    return self function_393977df("hero_weapon", weapon);
}

// Namespace zm_loadout/zm_loadout
// Params 0, eflags: 0x2 linked
// Checksum 0xedc19dcf, Offset: 0x1d98
// Size: 0x22
function get_player_hero_weapon() {
    return self function_8f85096("hero_weapon");
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x0
// Checksum 0xecec7d81, Offset: 0x1dc8
// Size: 0x2c
function set_player_hero_weapon(weapon) {
    self function_6519eea8("hero_weapon", weapon);
}

// Namespace zm_loadout/zm_loadout
// Params 0, eflags: 0x0
// Checksum 0x979f7346, Offset: 0x1e00
// Size: 0x36
function has_player_hero_weapon() {
    current_hero_weapon = get_player_hero_weapon();
    return isdefined(current_hero_weapon) && current_hero_weapon != level.weaponnone;
}

// Namespace zm_loadout/zm_loadout
// Params 0, eflags: 0x2 linked
// Checksum 0xe3e97f43, Offset: 0x1e40
// Size: 0xe2
function register_offhand_weapons_for_level_defaults() {
    if (isdefined(level.var_54f1e174)) {
        [[ level.var_54f1e174 ]]();
        return;
    }
    if (isdefined(level.var_22fda912)) {
        [[ level.var_22fda912 ]]();
    }
    register_melee_weapon_for_level(level.weaponbasemelee.name);
    if (zm_maptable::get_story() == 1) {
        register_melee_weapon_for_level(#"bowie_knife_story_1");
    } else {
        register_melee_weapon_for_level(#"bowie_knife");
    }
    level.zombie_melee_weapon_player_init = level.weaponbasemelee;
    level.zombie_equipment_player_init = undefined;
}

// Namespace zm_loadout/zm_loadout
// Params 0, eflags: 0x2 linked
// Checksum 0x5982814e, Offset: 0x1f30
// Size: 0xec
function init_player_offhand_weapons() {
    nullprimary = getweapon(#"null_offhand_primary");
    self giveweapon(nullprimary);
    self setweaponammoclip(nullprimary, 0);
    self switchtooffhand(nullprimary);
    bare_hands = getweapon(#"bare_hands");
    self giveweapon(bare_hands);
    self function_c9a111a(bare_hands);
    self switchtoweapon(bare_hands, 1);
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x2 linked
// Checksum 0x78437dfc, Offset: 0x2028
// Size: 0x24
function function_2ff6913(weapon) {
    return weapon.isperkbottle || weapon.isflourishweapon;
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x2 linked
// Checksum 0x16028349, Offset: 0x2058
// Size: 0x9c
function is_offhand_weapon(weapon) {
    return is_lethal_grenade(weapon) || is_tactical_grenade(weapon) || is_placeable_mine(weapon) || is_melee_weapon(weapon) || is_hero_weapon(weapon) || zm_equipment::is_equipment(weapon);
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x0
// Checksum 0xc2e3e670, Offset: 0x2100
// Size: 0x9c
function is_player_offhand_weapon(weapon) {
    return self is_player_lethal_grenade(weapon) || self is_player_tactical_grenade(weapon) || self is_player_placeable_mine(weapon) || self is_player_melee_weapon(weapon) || self is_player_hero_weapon(weapon) || self zm_equipment::is_player_equipment(weapon);
}

// Namespace zm_loadout/zm_loadout
// Params 0, eflags: 0x2 linked
// Checksum 0xd3f1172d, Offset: 0x21a8
// Size: 0x1a
function has_powerup_weapon() {
    return is_true(self.has_powerup_weapon);
}

// Namespace zm_loadout/zm_loadout
// Params 0, eflags: 0x2 linked
// Checksum 0x75635d5f, Offset: 0x21d0
// Size: 0x42
function has_hero_weapon() {
    weapon = self getcurrentweapon();
    return is_true(weapon.isheroweapon);
}

// Namespace zm_loadout/zm_loadout
// Params 0, eflags: 0x2 linked
// Checksum 0x32f70c52, Offset: 0x2220
// Size: 0xcc
function function_3e5c3a27() {
    if (zm_utility::is_survival()) {
        if (level.var_b48509f9 === 1) {
            self zm_score::function_c1f146ff(500);
            return;
        }
    }
    var_4ba090b7 = function_fc8ff147();
    score = self zm_score::function_ffc2d0bc();
    if (score < var_4ba090b7) {
        diff = var_4ba090b7 - score;
        self zm_score::add_to_player_score(diff);
        return;
    }
    self zm_score::function_c1f146ff(var_4ba090b7);
}

// Namespace zm_loadout/zm_loadout
// Params 0, eflags: 0x2 linked
// Checksum 0x2451f8d9, Offset: 0x22f8
// Size: 0xd2
function function_fc8ff147() {
    if (zm_utility::is_survival()) {
        star_level = isdefined(level.var_b48509f9) ? level.var_b48509f9 : 0;
        var_4ba090b7 = star_level * 5000;
        var_4ba090b7 = math::clamp(var_4ba090b7, 0, 25000);
    } else {
        rounds = isdefined(level.round_number) ? level.round_number : 0;
        var_4ba090b7 = rounds * 1000;
        var_4ba090b7 = math::clamp(var_4ba090b7, 0, 25000);
    }
    return var_4ba090b7;
}

// Namespace zm_loadout/zm_loadout
// Params 0, eflags: 0x2 linked
// Checksum 0x67bcb6f, Offset: 0x23d8
// Size: 0x7a
function function_cdcea3fd() {
    itemname = self.var_6e3cb3d1;
    itemcount = self.var_a4be9abe;
    count = 0;
    while (count < itemcount) {
        if (isplayer(self)) {
            self namespace_1b527536::function_6457e4cd(itemname);
        }
        count++;
        waitframe(1);
    }
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x2 linked
// Checksum 0x59cf7971, Offset: 0x2460
// Size: 0x734
function give_start_weapon(b_switch_weapon) {
    /#
        level namespace_cdc318b3::function_b8a3efea();
    #/
    primary_weapon = self function_439b009a("primary");
    if (isweapon(level.var_a9ebf2c6)) {
        primary_weapon = self getbuildkitweapon(level.var_a9ebf2c6);
        if (!isdefined(primary_weapon)) {
            primary_weapon = level.var_a9ebf2c6;
        }
    }
    var_c6eea9c1 = isdefined(zm_stats::function_12b698fa(#"hash_265dfd25205ffba8")) ? zm_stats::function_12b698fa(#"hash_265dfd25205ffba8") : 0;
    /#
        var_df6f833b = getdvarint(#"hash_31933df32887a98b", 0);
        if (var_df6f833b > 0) {
            var_c6eea9c1 = var_df6f833b;
        }
    #/
    var_8c590502 = isdefined(getgametypesetting(#"hash_3c2c78e639bfd3c6")) ? getgametypesetting(#"hash_3c2c78e639bfd3c6") : 0;
    if (var_8c590502 > 0) {
        var_c6eea9c1 = var_8c590502;
    }
    if (var_c6eea9c1 >= 1 && var_c6eea9c1 < 3) {
        self zm_weapons::weapon_give(getweapon(#"knife"));
    } else if (var_c6eea9c1 >= 3) {
        self zm_weapons::weapon_give(getweapon(#"bowie_knife"));
    }
    s_weapon = getunlockableiteminfofromindex(primary_weapon.statindex, 1);
    if (isdefined(s_weapon) && isdefined(s_weapon.namehash) && zm_custom::function_bce642a1(s_weapon) && zm_custom::function_901b751c(#"zmstartingweaponenabled")) {
        var_9e4954fa = (isdefined(self.var_3b511a7c) ? self.var_3b511a7c : 0) < 0 ? 0 : 1;
        if (zm_utility::is_survival()) {
            var_88cf3317 = isdefined(self.is_hotjoining) || !namespace_cf6efd05::function_99df13e0(self);
        } else {
            var_88cf3317 = isdefined(self.is_hotjoining);
        }
        if (var_9e4954fa || var_88cf3317) {
            var_91f1878f = var_9e4954fa || var_88cf3317;
            self function_3e5c3a27();
            if (zm_utility::is_survival() && !var_9e4954fa && level.var_b48509f9 === 1) {
                self zm_score::function_c1f146ff(level.player_starting_points);
            }
            self.var_595a11bc = 0;
            self.var_72d64cfd = 0;
            self namespace_2a9f256a::function_b802c7fc();
            if (isdefined(self.var_6e3cb3d1) && self.var_87f72f8 === self.var_6e3cb3d1) {
                self thread function_cdcea3fd();
            }
        }
        var_e6a8f11f = undefined;
        if (!namespace_cf6efd05::function_99df13e0(self)) {
            var_e6a8f11f = self namespace_cdc318b3::function_f2eab818();
        }
        if (!is_true(level.var_b0f1ddbc)) {
            if (isdefined(primary_weapon.attachments) && primary_weapon.attachments.size > 0) {
                self zm_weapons::weapon_give(primary_weapon, 1, b_switch_weapon, 0, 1, undefined, primary_weapon.attachments, var_91f1878f, var_e6a8f11f);
            } else {
                self zm_weapons::weapon_give(primary_weapon, 1, b_switch_weapon, 0, 1, undefined, undefined, var_91f1878f, var_e6a8f11f);
            }
        }
        if (zm_custom::function_901b751c(#"zmstartingweaponenabled") && isdefined(self.talisman_weapon_start)) {
            self thread function_d9153457(b_switch_weapon);
        }
        return;
    }
    var_9e4954fa = (isdefined(self.var_3b511a7c) ? self.var_3b511a7c : 0) < 0 ? 0 : 1;
    var_88cf3317 = isdefined(self.is_hotjoining) || !namespace_cf6efd05::function_99df13e0(self);
    if (var_9e4954fa || var_88cf3317) {
        var_91f1878f = var_9e4954fa || var_88cf3317;
        self function_3e5c3a27();
        self.var_595a11bc = 0;
        self.var_72d64cfd = 0;
        if (isdefined(self.var_6e3cb3d1) && self.var_87f72f8 === self.var_6e3cb3d1) {
            self thread function_cdcea3fd();
        }
    }
    var_abb79409 = getweapon(getdvarstring(#"hash_35d047ae6d3ad4a", "pistol_semiauto_t9"));
    self zm_weapons::weapon_give(var_abb79409, 1, b_switch_weapon, 0, 1, undefined, undefined, var_91f1878f);
    if (isdefined(s_weapon) && (!zm_custom::function_bce642a1(s_weapon) || !zm_custom::function_901b751c(#"zmstartingweaponenabled"))) {
        self thread zm_custom::function_343353f8();
    }
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x2 linked
// Checksum 0x2faa1b95, Offset: 0x2ba0
// Size: 0x6a
function get_loadout_item(slot) {
    if (!isdefined(self.class_num)) {
        self.class_num = self function_cc90c352();
    }
    if (!isdefined(self.class_num)) {
        self.class_num = 0;
    }
    return self getloadoutitem(self.class_num, slot);
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x2 linked
// Checksum 0x8f025321, Offset: 0x2c18
// Size: 0x6a
function function_439b009a(slot) {
    if (!isdefined(self.class_num)) {
        self.class_num = self function_cc90c352();
    }
    if (!isdefined(self.class_num)) {
        self.class_num = 0;
    }
    return self getloadoutweapon(self.class_num, slot);
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x2 linked
// Checksum 0x27efc7da, Offset: 0x2c90
// Size: 0x228
function get_class_num(weaponclass) {
    assert(isdefined(weaponclass));
    prefixstring = "CLASS_CUSTOM";
    var_8bba14bc = self getcustomclasscount();
    var_8bba14bc = max(var_8bba14bc, 0);
    if (isstring(weaponclass) && issubstr(weaponclass, "CLASS_CUSTOM_BONUS")) {
        class_num = level.var_f9f569c2[weaponclass];
    } else if (isstring(weaponclass) && issubstr(weaponclass, prefixstring)) {
        var_3858e4e = getsubstr(weaponclass, prefixstring.size);
        class_num = int(var_3858e4e) - 1;
        if (class_num == -1) {
            class_num = var_8bba14bc;
        }
        assert(isdefined(class_num));
        if (class_num < 0 || class_num > var_8bba14bc) {
            class_num = 0;
        }
        assert(class_num >= 0 && class_num <= var_8bba14bc);
    } else {
        class_num = level.classtoclassnum[weaponclass];
    }
    if (!isdefined(class_num)) {
        class_num = self stats::get_stat(#"selectedcustomclass");
        if (!isdefined(class_num)) {
            class_num = 0;
        }
    }
    assert(isdefined(class_num));
    return class_num;
}

// Namespace zm_loadout/zm_loadout
// Params 2, eflags: 0x2 linked
// Checksum 0x156c3872, Offset: 0x2ec0
// Size: 0x1b4
function function_d7c205b9(newclass, calledfrom = #"unspecified") {
    loadoutindex = isdefined(newclass) ? get_class_num(newclass) : undefined;
    self.pers[#"loadoutindex"] = loadoutindex;
    var_45843e9a = calledfrom == #"give_loadout";
    var_7f8c24df = 0;
    if (!var_45843e9a) {
        var_7f8c24df = isdefined(game) && isdefined(game.state) && game.state == #"playing" && isalive(self);
        if (var_7f8c24df && self.sessionstate == "playing") {
            var_25b0cd7 = self.usingsupplystation === 1;
            if (is_true(level.ingraceperiod) && !is_true(self.hasdonecombat) || var_25b0cd7) {
                var_7f8c24df = 0;
            }
        }
    }
    if (var_7f8c24df) {
        return;
    }
    self setloadoutindex(loadoutindex);
    self setplayerstateloadoutweapons(loadoutindex);
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x2 linked
// Checksum 0x6c815ca, Offset: 0x3080
// Size: 0x44
function function_97d216fa(response) {
    assert(isdefined(level.classmap[response]));
    return level.classmap[response];
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x0
// Checksum 0xd55a562b, Offset: 0x30d0
// Size: 0xc
function function_a7079aac(*attachments) {
    
}

// Namespace zm_loadout/zm_loadout
// Params 4, eflags: 0x2 linked
// Checksum 0xf0600f30, Offset: 0x30e8
// Size: 0x808
function menuclass(response, forcedclass, *updatecharacterindex, var_632376a3) {
    if (!isdefined(self.pers[#"team"]) || !isdefined(level.teams[self.pers[#"team"]])) {
        return 0;
    }
    if (!loadout::function_87bcb1b()) {
        if ((game.state == #"pregame" || game.state == #"playing") && self.sessionstate != "playing") {
            self thread [[ level.spawnclient ]](0);
        }
        return;
    }
    if (!isdefined(updatecharacterindex)) {
        playerclass = self function_97d216fa(forcedclass);
    } else {
        playerclass = updatecharacterindex;
    }
    if (is_true(level.disablecustomcac) && issubstr(playerclass, "CLASS_CUSTOM") && isarray(level.classtoclassnum) && level.classtoclassnum.size > 0) {
        defaultclasses = getarraykeys(level.var_8e1db8ee);
        playerclass = level.var_8e1db8ee[defaultclasses[randomint(defaultclasses.size)]];
    }
    self function_d7c205b9(playerclass);
    var_96b1ace = 0;
    if (isdefined(self.pers[#"class"]) && self.pers[#"class"] == playerclass) {
        primary_weapon = self function_439b009a("primary");
        current_weapon = self getcurrentweapon();
        if (isdefined(primary_weapon.attachments) && isdefined(current_weapon.attachments) && primary_weapon.rootweapon === current_weapon.rootweapon) {
            if (primary_weapon.attachments.size != current_weapon.attachments.size) {
                var_96b1ace = 1;
            } else {
                foreach (attachment in primary_weapon.attachments) {
                    var_c27e271b = isinarray(current_weapon.attachments, attachment);
                    if (!var_c27e271b) {
                        var_96b1ace = 1;
                        break;
                    }
                }
            }
        }
        if (primary_weapon.rootweapon != current_weapon.rootweapon) {
            var_96b1ace = 1;
        }
        loadoutindex = self get_class_num(playerclass);
        var_d07d57b2 = self function_b958b70d(loadoutindex, "specialgrenade");
        if (isdefined(self.var_87f72f8) && isdefined(var_d07d57b2) && !(namespace_1b527536::function_53ca9662(self.var_87f72f8) === var_d07d57b2)) {
            var_96b1ace = 1;
        }
        if (!var_96b1ace) {
            return 1;
        }
    }
    self.pers[#"changed_class"] = !isdefined(self.curclass) || self.curclass != playerclass || var_96b1ace;
    var_8d7a946 = !isdefined(self.curclass) || self.curclass == "";
    self.pers[#"class"] = playerclass;
    self.curclass = playerclass;
    self function_d7c205b9(playerclass);
    self.pers[#"weapon"] = undefined;
    if (namespace_cf6efd05::function_85b812c9() && namespace_cf6efd05::function_99df13e0(self)) {
        return;
    }
    self notify(#"changed_class");
    if (gamestate::is_game_over()) {
        return 0;
    }
    if (self.sessionstate != "playing") {
        if (self.sessionstate != "spectator") {
            if (self isinvehicle()) {
                return 0;
            }
            if (self isremotecontrolling()) {
                return 0;
            }
            if (self isweaponviewonlylinked()) {
                return 0;
            }
        }
    }
    if (self.sessionstate == "playing") {
        supplystationclasschange = isdefined(self.usingsupplystation) && self.usingsupplystation;
        self.usingsupplystation = 0;
        if (is_true(self.var_12d4c9e8) || is_true(level.ingraceperiod) && !is_true(self.hasdonecombat) && !is_true(level.var_54cacb7e) || is_true(supplystationclasschange) || var_632376a3 === 1) {
            self.curclass = self.pers[#"class"];
            self.tag_stowed_back = undefined;
            self.tag_stowed_hip = undefined;
            self give_loadout();
            loadoutindex = self get_class_num(playerclass);
            self namespace_1b527536::function_1067f94c(loadoutindex);
        } else if (!var_8d7a946 && self.pers[#"changed_class"] && !is_true(level.var_f46d16f0)) {
            loadoutindex = self get_class_num(playerclass);
            self namespace_1b527536::function_1067f94c(loadoutindex);
            self luinotifyevent(#"hash_6b67aa04e378d681", 2, 6, loadoutindex);
        }
    }
    return 1;
}

// Namespace zm_loadout/zm_loadout
// Params 2, eflags: 0x6 linked
// Checksum 0xde6c5fcc, Offset: 0x38f8
// Size: 0x24
function private function_445ac5cc(weaponclass, classnum) {
    level.var_f9f569c2[weaponclass] = classnum;
}

// Namespace zm_loadout/zm_loadout
// Params 2, eflags: 0x6 linked
// Checksum 0x24e32210, Offset: 0x3928
// Size: 0x34
function private load_default_loadout(weaponclass, classnum) {
    level.classtoclassnum[weaponclass] = classnum;
    level.var_8e1db8ee[classnum] = weaponclass;
}

// Namespace zm_loadout/zm_loadout
// Params 0, eflags: 0x2 linked
// Checksum 0xafd1b406, Offset: 0x3968
// Size: 0x364
function give_loadout() {
    if (loadout::function_87bcb1b()) {
        actionslot3 = getdvarint(#"hash_449fa75f87a4b5b4", 0) < 0 ? "flourish_callouts" : "ping_callouts";
        self setactionslot(3, actionslot3);
        actionslot4 = getdvarint(#"hash_23270ec9008cb656", 0) < 0 ? "scorestreak_wheel" : "sprays_boasts";
        self setactionslot(4, actionslot4);
    }
    if (namespace_cf6efd05::function_85b812c9() && namespace_cf6efd05::function_99df13e0(self) && !is_true(self.uspawn_already_spawned)) {
        return;
    }
    if (!is_true(level.var_928a7cf1)) {
        return;
    }
    if (self.var_1fa95cc === gettime() && isdefined(self.curclass) && get_class_num(self.curclass) === self.pers[#"loadoutindex"]) {
        return;
    }
    if (loadout::function_87bcb1b()) {
        assert(isdefined(self.curclass));
        self function_d7c205b9(self.curclass, #"give_loadout");
        if (isdefined(level.givecustomloadout)) {
            self [[ level.givecustomloadout ]]();
        } else {
            init_player(isdefined(self.var_1fa95cc));
            function_f436358b(self.curclass);
            zm_weapons::give_start_weapons();
            telemetry::function_18135b72(#"hash_27cccc0731de1722", {#player:self});
        }
    } else if (isdefined(level.givecustomloadout)) {
        self [[ level.givecustomloadout ]]();
    }
    self.var_1fa95cc = gettime();
    self flag::set("loadout_given");
    usedweapons = [];
    usedweapons[0] = self function_439b009a("primary").name;
    self function_bfb53a23(usedweapons);
    callback::callback(#"on_loadout");
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x2 linked
// Checksum 0x9bf06cf4, Offset: 0x3cd8
// Size: 0x4e
function init_player(takeallweapons) {
    if (takeallweapons) {
        item_inventory::reset_inventory(0);
        self takeallweapons();
    }
    self.specialty = [];
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x2 linked
// Checksum 0x2aba360a, Offset: 0x3d30
// Size: 0xcc
function function_f436358b(weaponclass) {
    self.class_num = get_class_num(weaponclass);
    if (issubstr(weaponclass, "CLASS_CUSTOM")) {
        profileNamedStart(#"");
        self.class_num_for_global_weapons = self.class_num;
        profileNamedStop();
    } else {
        profileNamedStart(#"");
        assert(isdefined(self.pers[#"class"]), "<unknown string>");
        self.class_num_for_global_weapons = 0;
        profileNamedStop();
    }
    self recordloadoutindex(self.class_num);
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x2 linked
// Checksum 0x56a93128, Offset: 0x3e08
// Size: 0xc4
function function_d9153457(b_switch_weapon = 1) {
    self endon(#"death");
    var_19673a84 = getweapon(self.talisman_weapon_start);
    if (var_19673a84 !== level.weaponnone) {
        self zm_weapons::weapon_give(var_19673a84, 1, 0);
        if (b_switch_weapon) {
            level waittill(#"start_zombie_round_logic");
            self switchtoweaponimmediate(var_19673a84, 1);
        }
    }
}

// Namespace zm_loadout/zm_loadout
// Params 0, eflags: 0x6 linked
// Checksum 0xe3b08ffb, Offset: 0x3ed8
// Size: 0x26c
function private function_7a169290() {
    self endoncallback(&function_ff646bfc, #"death", #"end_game", #"disconnect");
    var_e9c7076a = isdefined(getgametypesetting("zmMaxClassLoadoutTime")) ? getgametypesetting("zmMaxClassLoadoutTime") : 30;
    if (isbot(self)) {
        return;
    }
    self waittill(#"show_class_select_slideout");
    if (!isdefined(level.var_48bad54e)) {
        level.var_48bad54e = 0;
    }
    if (!isdefined(level.var_cf6387d8)) {
        level.var_cf6387d8 = 1;
    }
    if (is_false(level.var_48bad54e) && level.var_cf6387d8) {
        level.var_cf6387d8 = 0;
        level flag::increment("world_is_paused");
    }
    self.var_12d4c9e8 = 1;
    self val::set(#"hash_4746015172ea9af0", "ignoreme", 1);
    self waittilltimeout(var_e9c7076a, #"hide_class_select_slideout");
    self val::reset(#"hash_4746015172ea9af0", "ignoreme");
    self.var_12d4c9e8 = 0;
    if (is_false(level.var_48bad54e)) {
        level flag::decrement("world_is_paused");
        level.var_48bad54e = 1;
    }
    self globallogic_ui::function_f8f38932();
    telemetry::function_18135b72(#"hash_4481df211c9d18aa", {#player:self});
}

// Namespace zm_loadout/zm_loadout
// Params 1, eflags: 0x6 linked
// Checksum 0xa50a4679, Offset: 0x4150
// Size: 0x74
function private function_ff646bfc(*notifyhash) {
    if (isbot(self)) {
        return;
    }
    if (is_false(level.var_48bad54e)) {
        level flag::decrement("world_is_paused");
        level.var_48bad54e = 1;
    }
}

