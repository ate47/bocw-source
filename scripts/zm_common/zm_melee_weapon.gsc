// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\trials\zm_trial_disable_buys.gsc;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_loadout.gsc;
#using scripts\zm_common\zm_laststand.gsc;
#using scripts\zm_common\zm_equipment.gsc;
#using scripts\zm_common\zm_contracts.gsc;
#using scripts\zm_common\zm_bgb.gsc;
#using scripts\zm_common\zm_audio.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\activecamo_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace zm_melee_weapon;

// Namespace zm_melee_weapon/zm_melee_weapon
// Params 0, eflags: 0x5
// Checksum 0xa0ac0519, Offset: 0x180
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"melee_weapon", &preinit, &postinit, undefined, undefined);
}

// Namespace zm_melee_weapon/zm_melee_weapon
// Params 0, eflags: 0x6 linked
// Checksum 0x5ad62296, Offset: 0x1d8
// Size: 0x20
function private preinit() {
    if (!isdefined(level._melee_weapons)) {
        level._melee_weapons = [];
    }
}

// Namespace zm_melee_weapon/zm_melee_weapon
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x200
// Size: 0x4
function private postinit() {
    
}

// Namespace zm_melee_weapon/zm_melee_weapon
// Params 9, eflags: 0x2 linked
// Checksum 0xac0f4fcf, Offset: 0x210
// Size: 0x2f8
function init(weapon_name, flourish_weapon_name, cost, wallbuy_targetname, hint_string, vo_dialog_id, flourish_fn, is_ee = 0, in_box = 0) {
    weapon = getweapon(weapon_name);
    flourish_weapon = getweapon(flourish_weapon_name);
    add_melee_weapon(weapon, flourish_weapon, cost, wallbuy_targetname, hint_string, vo_dialog_id, flourish_fn);
    melee_weapon_triggers = getentarray(wallbuy_targetname, "targetname");
    for (i = 0; i < melee_weapon_triggers.size; i++) {
        knife_model = getent(melee_weapon_triggers[i].target, "targetname");
        if (isdefined(knife_model)) {
            knife_model hide();
        }
        melee_weapon_triggers[i] thread melee_weapon_think(weapon, cost, flourish_fn, vo_dialog_id, flourish_weapon);
        melee_weapon_triggers[i] sethintstring(hint_string, cost);
        cursor_hint = "HINT_WEAPON";
        cursor_hint_weapon = weapon;
        melee_weapon_triggers[i] setcursorhint(cursor_hint, cursor_hint_weapon);
        melee_weapon_triggers[i] usetriggerrequirelookat();
    }
    melee_weapon_structs = struct::get_array(wallbuy_targetname, "targetname");
    for (i = 0; i < melee_weapon_structs.size; i++) {
        prepare_stub(melee_weapon_structs[i].trigger_stub, weapon, flourish_weapon, cost, wallbuy_targetname, hint_string, vo_dialog_id, flourish_fn);
    }
    zm_loadout::register_melee_weapon_for_level(weapon.name);
    /#
        if (!isdefined(level.zombie_weapons[weapon]) && (!is_ee || getdvarint(#"zm_debug_ee", 0))) {
            if (isdefined(level.devgui_add_weapon)) {
                level thread [[ level.devgui_add_weapon ]](weapon, undefined, in_box, cost);
            }
        }
    #/
}

// Namespace zm_melee_weapon/zm_melee_weapon
// Params 8, eflags: 0x2 linked
// Checksum 0xb2af3bd6, Offset: 0x510
// Size: 0xde
function prepare_stub(stub, weapon, flourish_weapon, cost, *wallbuy_targetname, hint_string, vo_dialog_id, flourish_fn) {
    if (isdefined(weapon)) {
        weapon.hint_string = hint_string;
        weapon.cursor_hint = "HINT_WEAPON";
        weapon.cursor_hint_weapon = flourish_weapon;
        weapon.cost = wallbuy_targetname;
        weapon.weapon = flourish_weapon;
        weapon.vo_dialog_id = vo_dialog_id;
        weapon.flourish_weapon = cost;
        weapon.trigger_func = &melee_weapon_think;
        weapon.prompt_and_visibility_func = &function_e5bf8f08;
        weapon.flourish_fn = flourish_fn;
    }
}

// Namespace zm_melee_weapon/zm_melee_weapon
// Params 1, eflags: 0x2 linked
// Checksum 0x87e15988, Offset: 0x5f8
// Size: 0x78
function find_melee_weapon(weapon) {
    melee_weapon = undefined;
    for (i = 0; i < level._melee_weapons.size; i++) {
        if (level._melee_weapons[i].weapon == weapon) {
            return level._melee_weapons[i];
        }
    }
    return undefined;
}

// Namespace zm_melee_weapon/zm_melee_weapon
// Params 2, eflags: 0x2 linked
// Checksum 0x898624ac, Offset: 0x678
// Size: 0x94
function add_stub(stub, weapon) {
    melee_weapon = find_melee_weapon(weapon);
    if (isdefined(stub) && isdefined(melee_weapon)) {
        prepare_stub(stub, melee_weapon.weapon, melee_weapon.flourish_weapon, melee_weapon.cost, melee_weapon.wallbuy_targetname, melee_weapon.hint_string, melee_weapon.vo_dialog_id, melee_weapon.flourish_fn);
    }
}

// Namespace zm_melee_weapon/zm_melee_weapon
// Params 7, eflags: 0x2 linked
// Checksum 0xd6526252, Offset: 0x718
// Size: 0xe0
function add_melee_weapon(weapon, flourish_weapon, cost, wallbuy_targetname, hint_string, vo_dialog_id, flourish_fn) {
    melee_weapon = spawnstruct();
    melee_weapon.weapon = weapon;
    melee_weapon.flourish_weapon = flourish_weapon;
    melee_weapon.cost = cost;
    melee_weapon.wallbuy_targetname = wallbuy_targetname;
    melee_weapon.hint_string = hint_string;
    melee_weapon.vo_dialog_id = vo_dialog_id;
    melee_weapon.flourish_fn = flourish_fn;
    if (!isdefined(level._melee_weapons)) {
        level._melee_weapons = [];
    }
    level._melee_weapons[level._melee_weapons.size] = melee_weapon;
}

// Namespace zm_melee_weapon/zm_melee_weapon
// Params 2, eflags: 0x2 linked
// Checksum 0x545b6a7c, Offset: 0x800
// Size: 0x6a
function set_fallback_weapon(weapon_name, fallback_weapon_name) {
    melee_weapon = find_melee_weapon(getweapon(weapon_name));
    if (isdefined(melee_weapon)) {
        melee_weapon.fallback_weapon = getweapon(fallback_weapon_name);
    }
}

// Namespace zm_melee_weapon/zm_melee_weapon
// Params 0, eflags: 0x2 linked
// Checksum 0xde7efd63, Offset: 0x878
// Size: 0xac
function determine_fallback_weapon() {
    fallback_weapon = level.weaponzmfists;
    if (isdefined(self zm_loadout::get_player_melee_weapon()) && self hasweapon(self zm_loadout::get_player_melee_weapon())) {
        melee_weapon = find_melee_weapon(self zm_loadout::get_player_melee_weapon());
        if (isdefined(melee_weapon) && isdefined(melee_weapon.fallback_weapon)) {
            return melee_weapon.fallback_weapon;
        }
    }
    return fallback_weapon;
}

// Namespace zm_melee_weapon/zm_melee_weapon
// Params 1, eflags: 0x2 linked
// Checksum 0x120e2e5, Offset: 0x930
// Size: 0x4e
function give_fallback_weapon(*immediate) {
    fallback_weapon = self determine_fallback_weapon();
    had_weapon = self hasweapon(fallback_weapon);
}

// Namespace zm_melee_weapon/zm_melee_weapon
// Params 0, eflags: 0x2 linked
// Checksum 0xb86315a9, Offset: 0x988
// Size: 0x4a
function take_fallback_weapon() {
    fallback_weapon = self determine_fallback_weapon();
    had_weapon = self hasweapon(fallback_weapon);
    return had_weapon;
}

// Namespace zm_melee_weapon/zm_melee_weapon
// Params 0, eflags: 0x2 linked
// Checksum 0x8b5eaa33, Offset: 0x9e0
// Size: 0x70
function player_can_see_weapon_prompt() {
    if (is_true(level._allow_melee_weapon_switching)) {
        return true;
    }
    if (isdefined(self zm_loadout::get_player_melee_weapon()) && self hasweapon(self zm_loadout::get_player_melee_weapon())) {
        return false;
    }
    return true;
}

// Namespace zm_melee_weapon/zm_melee_weapon
// Params 1, eflags: 0x2 linked
// Checksum 0x2060e3b9, Offset: 0xa58
// Size: 0x360
function function_e5bf8f08(player) {
    weapon = self.stub.weapon;
    player_has_weapon = player zm_weapons::has_weapon_or_upgrade(weapon);
    if (isdefined(level.func_override_wallbuy_prompt)) {
        if (!self [[ level.func_override_wallbuy_prompt ]](player, player_has_weapon)) {
            return false;
        }
    } else if (zm_trial_disable_buys::is_active()) {
        return false;
    } else if (!player_has_weapon && !player zm_utility::is_drinking()) {
        self.stub.cursor_hint = "HINT_WEAPON";
        cost = zm_weapons::get_weapon_cost(weapon);
        if (player bgb::is_enabled(#"zm_bgb_wall_to_wall_clearance")) {
            if (player function_8b1a219a()) {
                self.stub.hint_string = #"hash_7a24a147b8f09767";
            } else {
                self.stub.hint_string = #"hash_791fe9da17cf7059";
            }
            if (self.stub.var_8d306e51) {
                self sethintstringforplayer(player, self.stub.hint_string);
            } else {
                self sethintstring(self.stub.hint_string);
            }
        } else {
            if (player function_8b1a219a()) {
                self.stub.hint_string = #"hash_2791ecebb85142c4";
            } else {
                self.stub.hint_string = #"hash_60606b68e93a29c8";
            }
            if (self.stub.var_8d306e51) {
                self sethintstringforplayer(player, self.stub.hint_string);
            } else {
                self sethintstring(self.stub.hint_string);
            }
        }
    } else {
        self.stub.hint_string = "";
        if (self.stub.var_8d306e51) {
            self sethintstringforplayer(player, self.stub.hint_string);
        } else {
            self sethintstring(self.stub.hint_string);
        }
        return false;
    }
    self.stub.cursor_hint = "HINT_WEAPON";
    self.stub.cursor_hint_weapon = weapon;
    self setcursorhint(self.stub.cursor_hint, self.stub.cursor_hint_weapon);
    return true;
}

// Namespace zm_melee_weapon/zm_melee_weapon
// Params 0, eflags: 0x2 linked
// Checksum 0x8e8fb163, Offset: 0xdc0
// Size: 0x6c
function spectator_respawn_all() {
    for (i = 0; i < level._melee_weapons.size; i++) {
        self spectator_respawn(level._melee_weapons[i].wallbuy_targetname, level._melee_weapons[i].weapon);
    }
}

// Namespace zm_melee_weapon/zm_melee_weapon
// Params 2, eflags: 0x2 linked
// Checksum 0x77888b70, Offset: 0xe38
// Size: 0x104
function spectator_respawn(wallbuy_targetname, *weapon) {
    melee_triggers = getentarray(weapon, "targetname");
    players = getplayers();
    for (i = 0; i < melee_triggers.size; i++) {
        melee_triggers[i] setvisibletoall();
        if (!is_true(level._allow_melee_weapon_switching)) {
            for (j = 0; j < players.size; j++) {
                if (!players[j] player_can_see_weapon_prompt()) {
                    melee_triggers[i] setinvisibletoplayer(players[j]);
                }
            }
        }
    }
}

// Namespace zm_melee_weapon/zm_melee_weapon
// Params 0, eflags: 0x2 linked
// Checksum 0xc52cb2bb, Offset: 0xf48
// Size: 0x54
function trigger_hide_all() {
    for (i = 0; i < level._melee_weapons.size; i++) {
        self trigger_hide(level._melee_weapons[i].wallbuy_targetname);
    }
}

// Namespace zm_melee_weapon/zm_melee_weapon
// Params 1, eflags: 0x2 linked
// Checksum 0x3dbf249a, Offset: 0xfa8
// Size: 0x74
function trigger_hide(wallbuy_targetname) {
    melee_triggers = getentarray(wallbuy_targetname, "targetname");
    for (i = 0; i < melee_triggers.size; i++) {
        melee_triggers[i] setinvisibletoplayer(self);
    }
}

// Namespace zm_melee_weapon/zm_melee_weapon
// Params 2, eflags: 0x2 linked
// Checksum 0x30da5b00, Offset: 0x1028
// Size: 0xa0
function change_melee_weapon(weapon, current_weapon) {
    current_melee_weapon = self zm_loadout::get_player_melee_weapon();
    self zm_loadout::set_player_melee_weapon(weapon);
    if (current_melee_weapon != level.weaponnone && current_melee_weapon != weapon && self hasweapon(current_melee_weapon)) {
        self takeweapon(current_melee_weapon);
    }
    return current_weapon;
}

// Namespace zm_melee_weapon/zm_melee_weapon
// Params 5, eflags: 0x2 linked
// Checksum 0xe2bb1cf0, Offset: 0x10d0
// Size: 0x800
function melee_weapon_think(weapon, cost, flourish_fn, vo_dialog_id, flourish_weapon) {
    self.first_time_triggered = 0;
    if (isdefined(self.stub)) {
        self endon(#"kill_trigger");
        if (isdefined(self.stub.first_time_triggered)) {
            self.first_time_triggered = self.stub.first_time_triggered;
        }
        weapon = self.stub.weapon;
        cost = self.stub.cost;
        flourish_fn = self.stub.flourish_fn;
        vo_dialog_id = self.stub.vo_dialog_id;
        flourish_weapon = self.stub.flourish_weapon;
        players = getplayers();
        if (!is_true(level._allow_melee_weapon_switching)) {
            for (i = 0; i < players.size; i++) {
                if (!players[i] player_can_see_weapon_prompt()) {
                    self setinvisibletoplayer(players[i]);
                }
            }
        }
    }
    for (;;) {
        waitresult = self waittill(#"trigger");
        player = waitresult.activator;
        if (!zm_utility::is_player_valid(player)) {
            player thread zm_utility::ignore_triggers(0.5);
            continue;
        }
        if (player zm_utility::in_revive_trigger()) {
            wait(0.1);
            continue;
        }
        if (player isthrowinggrenade()) {
            wait(0.1);
            continue;
        }
        if (player zm_utility::is_drinking()) {
            wait(0.1);
            continue;
        }
        if (zm_trial_disable_buys::is_active()) {
            wait(0.1);
            continue;
        }
        player_has_weapon = player hasweapon(weapon);
        if (player_has_weapon || player zm_loadout::has_powerup_weapon()) {
            wait(0.1);
            continue;
        }
        if (player isswitchingweapons()) {
            wait(0.1);
            continue;
        }
        current_weapon = player getcurrentweapon();
        if (zm_loadout::is_placeable_mine(current_weapon) || zm_equipment::is_equipment(current_weapon)) {
            wait(0.1);
            continue;
        }
        if (player laststand::player_is_in_laststand() || is_true(player.intermission)) {
            wait(0.1);
            continue;
        }
        if (isdefined(player.check_override_melee_wallbuy_purchase)) {
            if (player [[ player.check_override_melee_wallbuy_purchase ]](vo_dialog_id, flourish_weapon, weapon, flourish_fn, self)) {
                continue;
            }
        }
        if (!player_has_weapon) {
            cost = self.stub.cost;
            if (isdefined(player.var_dc25727a)) {
                foreach (func_override in player.var_dc25727a) {
                    n_cost = player [[ func_override ]](weapon, self);
                    if (isdefined(n_cost)) {
                        if (n_cost < cost) {
                            cost = n_cost;
                        }
                    }
                }
            }
            if (player zm_score::can_player_purchase(cost)) {
                if (self.first_time_triggered == 0) {
                    model = getent(self.target, "targetname");
                    if (isdefined(model)) {
                        model thread melee_weapon_show(player);
                    } else if (isdefined(self.clientfieldname)) {
                        level clientfield::set(self.clientfieldname, 1);
                    }
                    if (zm_utility::get_story() != 1 && !isdefined(model)) {
                        var_6ff4b667 = struct::get(self.target, "targetname");
                        if (isdefined(var_6ff4b667) && isdefined(var_6ff4b667.target)) {
                            var_8d0ce13b = getent(var_6ff4b667.target, "targetname");
                            var_8d0ce13b clientfield::set("wallbuy_reveal_fx", 1);
                            var_8d0ce13b clientfield::set("wallbuy_ambient_fx", 0);
                        }
                    }
                    self.first_time_triggered = 1;
                    if (isdefined(self.stub)) {
                        self.stub.first_time_triggered = 1;
                    }
                }
                level notify(#"weapon_bought", {#player:player, #weapon:weapon});
                player zm_score::minus_to_player_score(cost);
                player zm_stats::function_c0c6ab19(#"wallbuys", 1, 1);
                player zm_stats::function_c0c6ab19(#"weapons_bought", 1, 1);
                player contracts::increment_zm_contract(#"contract_zm_weapons_bought", 1, #"zstandard");
                player contracts::increment_zm_contract(#"contract_zm_wallbuys", 1, #"zstandard");
                player thread give_melee_weapon(vo_dialog_id, flourish_weapon, weapon, flourish_fn, self);
            } else {
                zm_utility::play_sound_on_ent("no_purchase");
                player zm_audio::create_and_play_dialog(#"general", #"outofmoney", 1);
            }
            continue;
        }
        if (!is_true(level._allow_melee_weapon_switching)) {
            self setinvisibletoplayer(player);
        }
    }
}

// Namespace zm_melee_weapon/zm_melee_weapon
// Params 1, eflags: 0x2 linked
// Checksum 0xea820b3c, Offset: 0x18d8
// Size: 0x16c
function melee_weapon_show(player) {
    player_angles = vectortoangles(player.origin - self.origin);
    player_yaw = player_angles[1];
    weapon_yaw = self.angles[1];
    yaw_diff = angleclamp180(player_yaw - weapon_yaw);
    if (yaw_diff > 0) {
        yaw = weapon_yaw - 90;
    } else {
        yaw = weapon_yaw + 90;
    }
    self.og_origin = self.origin;
    self.origin += anglestoforward((0, yaw, 0)) * 8;
    waitframe(1);
    self show();
    zm_utility::play_sound_at_pos("weapon_show", self.origin, self);
    time = 1;
    self moveto(self.og_origin, time);
}

// Namespace zm_melee_weapon/zm_melee_weapon
// Params 1, eflags: 0x0
// Checksum 0x3dc79b2, Offset: 0x1a50
// Size: 0x8c
function award_melee_weapon(weapon_name) {
    weapon = getweapon(weapon_name);
    melee_weapon = find_melee_weapon(weapon);
    if (isdefined(melee_weapon)) {
        self give_melee_weapon(melee_weapon.vo_dialog_id, melee_weapon.flourish_weapon, melee_weapon.weapon, melee_weapon.flourish_fn, undefined);
    }
}

// Namespace zm_melee_weapon/zm_melee_weapon
// Params 5, eflags: 0x2 linked
// Checksum 0x2822a42b, Offset: 0x1ae8
// Size: 0x1b4
function give_melee_weapon(vo_dialog_id, flourish_weapon, weapon, flourish_fn, trigger) {
    self activecamo::function_8d3b94ea(weapon, 1, 0);
    if (isdefined(flourish_fn)) {
        self thread [[ flourish_fn ]]();
    }
    original_weapon = self do_melee_weapon_flourish_begin(flourish_weapon);
    if (isdefined(vo_dialog_id)) {
        self zm_audio::create_and_play_dialog(#"weapon_pickup", vo_dialog_id);
    }
    self endon(#"disconnect");
    self waittill(#"fake_death", #"death", #"player_downed", #"weapon_change_complete");
    if (!isdefined(self)) {
        return;
    }
    self do_melee_weapon_flourish_end(original_weapon, flourish_weapon, weapon);
    if (self laststand::player_is_in_laststand() || is_true(self.intermission)) {
        return;
    }
    if (!is_true(level._allow_melee_weapon_switching)) {
        if (isdefined(trigger)) {
            trigger setinvisibletoplayer(self);
        }
        self trigger_hide_all();
    }
}

// Namespace zm_melee_weapon/zm_melee_weapon
// Params 1, eflags: 0x2 linked
// Checksum 0xf03f7fed, Offset: 0x1ca8
// Size: 0xa0
function do_melee_weapon_flourish_begin(flourish_weapon) {
    self zm_utility::increment_is_drinking();
    self zm_utility::disable_player_move_states(1);
    original_weapon = self getcurrentweapon();
    weapon = flourish_weapon;
    self zm_weapons::give_build_kit_weapon(weapon);
    self switchtoweapon(weapon);
    return original_weapon;
}

// Namespace zm_melee_weapon/zm_melee_weapon
// Params 3, eflags: 0x2 linked
// Checksum 0x37e1782d, Offset: 0x1d50
// Size: 0x294
function do_melee_weapon_flourish_end(original_weapon, flourish_weapon, weapon) {
    assert(!original_weapon.isperkbottle);
    if (!isdefined(self)) {
        return;
    }
    self zm_utility::enable_player_move_states();
    self takeweapon(flourish_weapon);
    self zm_weapons::give_build_kit_weapon(weapon);
    original_weapon = change_melee_weapon(weapon, original_weapon);
    if (self laststand::player_is_in_laststand() || is_true(self.intermission)) {
        self.lastactiveweapon = level.weaponnone;
        return;
    }
    if (self hasweapon(level.weaponbasemelee)) {
        self takeweapon(level.weaponbasemelee);
    }
    if (self zm_utility::is_multiple_drinking()) {
        self zm_utility::decrement_is_drinking();
        return;
    } else if (original_weapon == level.weaponbasemelee) {
        self switchtoweapon(weapon);
        self zm_utility::decrement_is_drinking();
        return;
    } else if (original_weapon != level.weaponbasemelee && !zm_loadout::is_placeable_mine(original_weapon) && !zm_equipment::is_equipment(original_weapon)) {
        self zm_weapons::switch_back_primary_weapon(original_weapon);
    } else {
        self zm_weapons::switch_back_primary_weapon();
    }
    while (self isswitchingweapons()) {
        waitframe(1);
    }
    if (!self laststand::player_is_in_laststand() && !is_true(self.intermission)) {
        self zm_utility::decrement_is_drinking();
    }
}

