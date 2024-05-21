// Atian COD Tools GSC CW decompiler test
#using script_2cb831533cab2794;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_unitrigger.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_spawner.gsc;
#using scripts\zm_common\zm_laststand.gsc;
#using scripts\zm_common\zm_audio.gsc;
#using scripts\zm_common\util.gsc;
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\abilities\ability_player.gsc;
#using scripts\core_common\struct.gsc;

#namespace zm_equipment;

// Namespace zm_equipment/zm_equipment
// Params 0, eflags: 0x5
// Checksum 0x9b49f37d, Offset: 0x218
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"zm_equipment", &preinit, &postinit, undefined, undefined);
}

// Namespace zm_equipment/zm_equipment
// Params 0, eflags: 0x6 linked
// Checksum 0x7892e54a, Offset: 0x270
// Size: 0x164
function private preinit() {
    level.buildable_piece_count = 24;
    /#
        level.abilities_devgui_add_gadgets_custom = &abilities_devgui_add_gadgets_custom;
    #/
    level.placeable_equipment_destroy_fn = [];
    level.var_569aec98 = [];
    function_4ae718c3(#"eq_sticky_grenade");
    function_4ae718c3(#"satchel_charge");
    function_4ae718c3(#"eq_slow_grenade");
    function_4ae718c3(#"frag_grenade");
    function_4ae718c3(#"nightingale_zm");
    function_4ae718c3(#"cymbal_monkey");
    function_4ae718c3(#"hash_6a4dd5ed56f6e3f6");
    level.zm_hint_text = zm_hint_text::register();
    level.var_1f5cc2b4 = &function_dfaf0bad;
    function_f1e8c2f7();
}

// Namespace zm_equipment/zm_equipment
// Params 0, eflags: 0x6 linked
// Checksum 0x35279f20, Offset: 0x3e0
// Size: 0x14
function private postinit() {
    init_upgrade();
}

// Namespace zm_equipment/zm_equipment
// Params 1, eflags: 0x2 linked
// Checksum 0x2026bd4d, Offset: 0x400
// Size: 0x88
function function_4ae718c3(weapon_name) {
    if (!isdefined(level.var_569aec98)) {
        level.var_569aec98 = [];
    } else if (!isarray(level.var_569aec98)) {
        level.var_569aec98 = array(level.var_569aec98);
    }
    level.var_569aec98[level.var_569aec98.size] = weapon_name;
}

// Namespace zm_equipment/zm_equipment
// Params 1, eflags: 0x2 linked
// Checksum 0x3444188d, Offset: 0x490
// Size: 0x24
function checkstringvalid(hash_or_str) {
    if (hash_or_str != "") {
        return hash_or_str;
    }
    return undefined;
}

// Namespace zm_equipment/zm_equipment
// Params 0, eflags: 0x2 linked
// Checksum 0x3cbe3553, Offset: 0x4c0
// Size: 0x31a
function function_f1e8c2f7() {
    level.var_df2ed8a5 = [];
    var_4ef031c9 = #"hash_684fbceddd1aace2";
    index = 0;
    for (row = tablelookuprow(var_4ef031c9, index); isdefined(row); row = tablelookuprow(var_4ef031c9, index)) {
        weapon_name = checkstringvalid(row[0]);
        var_68b4c58a = spawnstruct();
        var_68b4c58a.var_4321cafd = [];
        var_68b4c58a.var_909a6c96 = row[1];
        var_68b4c58a.var_aff13429 = row[9];
        var_68b4c58a.var_e9cf20bf = row[10];
        var_68b4c58a.var_867d16a0 = row[11];
        var_68b4c58a.var_e53a0e14 = row[12];
        bonus_damage = 0;
        var_74f162ea = row[2];
        var_81142c5 = row[3];
        var_b08480ed = row[4];
        var_70508332 = row[5];
        var_43523789 = row[6];
        var_72cb1191 = row[7];
        var_645ded9a = row[8];
        for (i = 1; i <= 55; i++) {
            if (i >= 1 && i <= 10) {
                bonus_damage += var_74f162ea;
            } else if (i >= 11 && i <= 16) {
                bonus_damage += var_81142c5;
            } else if (i >= 16 && i <= 21) {
                bonus_damage += var_b08480ed;
            } else if (i >= 21 && i <= 26) {
                bonus_damage += var_70508332;
            } else if (i >= 26 && i <= 31) {
                bonus_damage += var_43523789;
            } else if (i >= 31 && i <= 36) {
                bonus_damage += var_72cb1191;
            } else if (i >= 36) {
                bonus_damage += var_645ded9a;
            }
            var_68b4c58a.var_4321cafd[i] = bonus_damage;
        }
        level.var_df2ed8a5[weapon_name] = var_68b4c58a;
        index++;
    }
}

// Namespace zm_equipment/zm_equipment
// Params 0, eflags: 0x2 linked
// Checksum 0x7ea9f9c0, Offset: 0x7e8
// Size: 0xea
function function_dfaf0bad() {
    if (!isplayer(self)) {
        return;
    }
    if (isdefined(self.var_6489500a)) {
        if (gettime() - self.var_6489500a > int(10 * 1000)) {
            self show_hint_text(#"hash_46304d37db90bf5b");
            if (isplayer(self)) {
                self.var_6489500a = gettime();
            }
        }
        return;
    }
    self show_hint_text(#"hash_46304d37db90bf5b");
    if (isplayer(self)) {
        self.var_6489500a = gettime();
    }
}

/#

    // Namespace zm_equipment/zm_equipment
    // Params 4, eflags: 0x0
    // Checksum 0x96b2af3e, Offset: 0x8e0
    // Size: 0xd4a
    function abilities_devgui_add_gadgets_custom(*root, pname, pid, menu_index) {
        var_61b8f8fb = "<unknown string>";
        add_cmd_with_root = "<unknown string>" + var_61b8f8fb + pname + "<unknown string>";
        a_abilities = [];
        arrayinsert(a_abilities, getweapon(#"eq_frag_grenade"), 0);
        arrayinsert(a_abilities, getweapon(#"incendiary_grenade"), 0);
        arrayinsert(a_abilities, getweapon(#"sticky_grenade"), 0);
        arrayinsert(a_abilities, getweapon(#"proximity_grenade"), 0);
        arrayinsert(a_abilities, getweapon(#"incendiary_fire"), 0);
        arrayinsert(a_abilities, getweapon(#"concussion_grenade"), 0);
        arrayinsert(a_abilities, getweapon(#"flash_grenade"), 0);
        arrayinsert(a_abilities, getweapon(#"emp_grenade"), 0);
        arrayinsert(a_abilities, getweapon(#"cymbal_monkey"), 0);
        arrayinsert(a_abilities, getweapon(#"tesla_coil"), 0);
        arrayinsert(a_abilities, getweapon(#"tomahawk_t8"), 0);
        ability_player::function_174037fe(add_cmd_with_root, pid, a_abilities, "<unknown string>", menu_index);
        a_hero_weapons = [];
        arrayinsert(a_hero_weapons, getweapon(#"hero_gravityspikes"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_lightninggun"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_minigun"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_pineapplegun"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_chemicalgelgun"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_bowlauncher"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_armblade"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_annihilator"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_flamethrower"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_chakram_lv1"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_chakram_lv2"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_chakram_lv3"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_hammer_lv1"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_hammer_lv2"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_hammer_lv3"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_scepter_lv1"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_scepter_lv2"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_scepter_lv3"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_sword_pistol_lv1"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_sword_pistol_lv2"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_sword_pistol_lv3"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_chakram_lv1"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_chakram_lv2"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_chakram_lv3"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_hammer_lv1"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_hammer_lv2"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_hammer_lv3"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_scepter_lv1"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_scepter_lv2"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_scepter_lv3"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_sword_pistol_lv1"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_sword_pistol_lv2"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_sword_pistol_lv3"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_flamethrower_t8_lv1"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_flamethrower_t8_lv2"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_flamethrower_t8_lv3"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_gravityspikes_t8_lv1"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_gravityspikes_t8_lv2"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_gravityspikes_t8_lv3"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_katana_t8_lv1"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_katana_t8_lv2"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_katana_t8_lv3"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_minigun_t8_lv1"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_minigun_t8_lv2"), 0);
        arrayinsert(a_hero_weapons, getweapon(#"hero_minigun_t8_lv3"), 0);
        ability_player::function_a40d04ca(add_cmd_with_root, pid, a_hero_weapons, "<unknown string>", menu_index);
        menu_index++;
        menu_index = ability_player::abilities_devgui_add_power(add_cmd_with_root, pid, menu_index);
        menu_index = ability_player::function_2e0162e9(add_cmd_with_root, pid, menu_index);
        adddebugcommand("<unknown string>");
        return menu_index;
    }

#/

// Namespace zm_equipment/zm_equipment
// Params 1, eflags: 0x0
// Checksum 0x2421f5e2, Offset: 0x1638
// Size: 0xbc
function signal_activated(val = 1) {
    if (is_true(level._no_equipment_activated_clientfield)) {
        return;
    }
    self endon(#"death");
    self clientfield::set("equipment_activated", val);
    for (i = 0; i < 2; i++) {
        util::wait_network_frame();
    }
    self clientfield::set("equipment_activated", 0);
}

// Namespace zm_equipment/zm_equipment
// Params 5, eflags: 0x0
// Checksum 0x567c50af, Offset: 0x1700
// Size: 0x1b4
function register(equipment_name, hint, howto_hint, hint_icon, equipmentvo) {
    equipment = getweapon(equipment_name);
    struct = spawnstruct();
    if (!isdefined(level.zombie_equipment)) {
        level.zombie_equipment = [];
    }
    struct.equipment = equipment;
    struct.hint = hint;
    struct.howto_hint = howto_hint;
    struct.hint_icon = hint_icon;
    struct.vox = equipmentvo;
    struct.triggers = [];
    struct.models = [];
    struct.notify_strings = spawnstruct();
    struct.notify_strings.activate = equipment.name + "_activate";
    struct.notify_strings.deactivate = equipment.name + "_deactivate";
    struct.notify_strings.taken = equipment.name + "_taken";
    struct.notify_strings.pickup = equipment.name + "_pickup";
    level.zombie_equipment[equipment] = struct;
    /#
        level thread function_1d34b98d(equipment);
    #/
}

// Namespace zm_equipment/zm_equipment
// Params 2, eflags: 0x0
// Checksum 0x514cd151, Offset: 0x18c0
// Size: 0x24
function register_slot_watcher_override(str_equipment, func_slot_watcher_override) {
    level.a_func_equipment_slot_watcher_override[str_equipment] = func_slot_watcher_override;
}

// Namespace zm_equipment/zm_equipment
// Params 1, eflags: 0x0
// Checksum 0x349cdbb1, Offset: 0x18f0
// Size: 0x62
function is_included(equipment) {
    if (!isdefined(level.zombie_include_equipment)) {
        return false;
    }
    if (isstring(equipment)) {
        equipment = getweapon(equipment);
    }
    return isdefined(level.zombie_include_equipment[equipment.rootweapon]);
}

// Namespace zm_equipment/zm_equipment
// Params 1, eflags: 0x0
// Checksum 0xab3e9510, Offset: 0x1960
// Size: 0x4c
function include(equipment_name) {
    if (!isdefined(level.zombie_include_equipment)) {
        level.zombie_include_equipment = [];
    }
    level.zombie_include_equipment[getweapon(equipment_name)] = 1;
}

// Namespace zm_equipment/zm_equipment
// Params 3, eflags: 0x0
// Checksum 0xec5d84d, Offset: 0x19b8
// Size: 0xa6
function set_ammo_driven(equipment_name, start, refill_max_ammo = 0) {
    level.zombie_equipment[getweapon(equipment_name)].notake = 1;
    level.zombie_equipment[getweapon(equipment_name)].start_ammo = start;
    level.zombie_equipment[getweapon(equipment_name)].refill_max_ammo = refill_max_ammo;
}

// Namespace zm_equipment/zm_equipment
// Params 2, eflags: 0x0
// Checksum 0x718c4de6, Offset: 0x1a68
// Size: 0x94
function limit(equipment_name, limited) {
    if (!isdefined(level._limited_equipment)) {
        level._limited_equipment = [];
    }
    if (limited) {
        level._limited_equipment[level._limited_equipment.size] = getweapon(equipment_name);
        return;
    }
    arrayremovevalue(level._limited_equipment, getweapon(equipment_name), 0);
}

// Namespace zm_equipment/zm_equipment
// Params 0, eflags: 0x2 linked
// Checksum 0xa04473a6, Offset: 0x1b08
// Size: 0x144
function init_upgrade() {
    equipment_spawns = [];
    equipment_spawns = getentarray("zombie_equipment_upgrade", "targetname");
    for (i = 0; i < equipment_spawns.size; i++) {
        equipment_spawns[i].equipment = getweapon(equipment_spawns[i].zombie_equipment_upgrade);
        hint_string = get_hint(equipment_spawns[i].equipment);
        equipment_spawns[i] sethintstring(hint_string);
        equipment_spawns[i] setcursorhint("HINT_NOICON");
        equipment_spawns[i] usetriggerrequirelookat();
        equipment_spawns[i] add_to_trigger_list(equipment_spawns[i].equipment);
        equipment_spawns[i] thread equipment_spawn_think();
    }
}

// Namespace zm_equipment/zm_equipment
// Params 1, eflags: 0x2 linked
// Checksum 0xb24a7a70, Offset: 0x1c58
// Size: 0x5a
function get_hint(equipment) {
    assert(isdefined(level.zombie_equipment[equipment]), equipment.name + "<unknown string>");
    return level.zombie_equipment[equipment].hint;
}

// Namespace zm_equipment/zm_equipment
// Params 1, eflags: 0x2 linked
// Checksum 0xbdd64dc2, Offset: 0x1cc0
// Size: 0x5a
function get_howto_hint(equipment) {
    assert(isdefined(level.zombie_equipment[equipment]), equipment.name + "<unknown string>");
    return level.zombie_equipment[equipment].howto_hint;
}

// Namespace zm_equipment/zm_equipment
// Params 1, eflags: 0x0
// Checksum 0x822f9316, Offset: 0x1d28
// Size: 0x5a
function get_icon(equipment) {
    assert(isdefined(level.zombie_equipment[equipment]), equipment.name + "<unknown string>");
    return level.zombie_equipment[equipment].hint_icon;
}

// Namespace zm_equipment/zm_equipment
// Params 1, eflags: 0x2 linked
// Checksum 0x454ba64f, Offset: 0x1d90
// Size: 0x5a
function get_notify_strings(equipment) {
    assert(isdefined(level.zombie_equipment[equipment]), equipment.name + "<unknown string>");
    return level.zombie_equipment[equipment].notify_strings;
}

// Namespace zm_equipment/zm_equipment
// Params 1, eflags: 0x2 linked
// Checksum 0x3d945913, Offset: 0x1df8
// Size: 0xcc
function add_to_trigger_list(equipment) {
    assert(isdefined(level.zombie_equipment[equipment]), equipment.name + "<unknown string>");
    level.zombie_equipment[equipment].triggers[level.zombie_equipment[equipment].triggers.size] = self;
    level.zombie_equipment[equipment].models[level.zombie_equipment[equipment].models.size] = getent(self.target, "targetname");
}

// Namespace zm_equipment/zm_equipment
// Params 0, eflags: 0x2 linked
// Checksum 0xf770ed5d, Offset: 0x1ed0
// Size: 0x1ac
function equipment_spawn_think() {
    for (;;) {
        waitresult = self waittill(#"trigger");
        player = waitresult.activator;
        if (player zm_utility::in_revive_trigger() || player zm_utility::is_drinking()) {
            wait(0.1);
            continue;
        }
        if (!is_limited(self.equipment) || !limited_in_use(self.equipment)) {
            if (is_limited(self.equipment)) {
                player setup_limited(self.equipment);
                if (isdefined(level.hacker_tool_positions)) {
                    new_pos = array::random(level.hacker_tool_positions);
                    self.origin = new_pos.trigger_org;
                    model = getent(self.target, "targetname");
                    model.origin = new_pos.model_org;
                    model.angles = new_pos.model_ang;
                }
            }
            player give(self.equipment);
            continue;
        }
        wait(0.1);
    }
}

// Namespace zm_equipment/zm_equipment
// Params 2, eflags: 0x2 linked
// Checksum 0x20f22018, Offset: 0x2088
// Size: 0xdc
function set_equipment_invisibility_to_player(equipment, invisible) {
    triggers = level.zombie_equipment[equipment].triggers;
    for (i = 0; i < triggers.size; i++) {
        if (isdefined(triggers[i])) {
            triggers[i] setinvisibletoplayer(self, invisible);
        }
    }
    models = level.zombie_equipment[equipment].models;
    for (i = 0; i < models.size; i++) {
        if (isdefined(models[i])) {
            models[i] setinvisibletoplayer(self, invisible);
        }
    }
}

// Namespace zm_equipment/zm_equipment
// Params 1, eflags: 0x2 linked
// Checksum 0x5d91c006, Offset: 0x2170
// Size: 0x2cc
function take(equipment = self get_player_equipment()) {
    if (!isdefined(equipment)) {
        return;
    }
    if (equipment == level.weaponnone) {
        return;
    }
    if (!self has_player_equipment(equipment)) {
        return;
    }
    current = 0;
    current_weapon = 0;
    if (isdefined(self get_player_equipment()) && equipment == self get_player_equipment()) {
        current = 1;
    }
    if (equipment == self getcurrentweapon()) {
        current_weapon = 1;
    }
    println("<unknown string>" + self.name + "<unknown string>" + getweaponname(equipment) + "<unknown string>");
    notify_strings = get_notify_strings(equipment);
    if (is_true(self.current_equipment_active[equipment])) {
        self.current_equipment_active[equipment] = 0;
        self notify(notify_strings.deactivate);
    }
    self notify(notify_strings.taken);
    if (!is_limited(equipment) || is_limited(equipment) && !limited_in_use(equipment)) {
        self set_equipment_invisibility_to_player(equipment, 0);
    }
    if (current) {
        self set_player_equipment(level.weaponnone);
        self setactionslot(2, "");
    } else {
        arrayremovevalue(self.deployed_equipment, equipment);
    }
    if (self hasweapon(equipment)) {
        self takeweapon(equipment);
    }
    if (current_weapon) {
        self zm_weapons::switch_back_primary_weapon();
    }
}

// Namespace zm_equipment/zm_equipment
// Params 1, eflags: 0x2 linked
// Checksum 0x4a9a53b, Offset: 0x2448
// Size: 0x1ee
function give(equipment) {
    if (!isdefined(equipment)) {
        return;
    }
    if (!isdefined(level.zombie_equipment[equipment])) {
        return;
    }
    if (self has_player_equipment(equipment)) {
        return;
    }
    println("<unknown string>" + self.name + "<unknown string>" + getweaponname(equipment) + "<unknown string>");
    curr_weapon = self getcurrentweapon();
    curr_weapon_was_curr_equipment = self is_player_equipment(curr_weapon);
    self take();
    self set_player_equipment(equipment);
    self giveweapon(equipment);
    self start_ammo(equipment);
    self thread show_hint(equipment);
    self set_equipment_invisibility_to_player(equipment, 1);
    self setactionslot(2, "weapon", equipment);
    self thread slot_watcher(equipment);
    self zm_audio::create_and_play_dialog(#"weapon_pickup", level.zombie_equipment[equipment].vox);
    self notify(#"player_given", equipment);
}

// Namespace zm_equipment/zm_equipment
// Params 1, eflags: 0x0
// Checksum 0xb32248f3, Offset: 0x2640
// Size: 0x134
function buy(equipment) {
    if (isstring(equipment)) {
        equipment = getweapon(equipment);
    }
    println("<unknown string>" + self.name + "<unknown string>" + getweaponname(equipment) + "<unknown string>");
    if (isdefined(self.current_equipment) && equipment != self.current_equipment && self.current_equipment != level.weaponnone) {
        self take(self.current_equipment);
    }
    self notify(#"player_bought", equipment);
    self give(equipment);
    if (equipment.isriotshield && isdefined(self.player_shield_reset_health)) {
        self [[ self.player_shield_reset_health ]](equipment);
    }
}

// Namespace zm_equipment/zm_equipment
// Params 1, eflags: 0x2 linked
// Checksum 0x6f18ef49, Offset: 0x2780
// Size: 0x204
function slot_watcher(equipment) {
    self notify(#"kill_equipment_slot_watcher");
    self endon(#"kill_equipment_slot_watcher", #"disconnect");
    notify_strings = get_notify_strings(equipment);
    while (true) {
        waitresult = self waittill(#"weapon_change");
        prev_weapon = waitresult.last_weapon;
        curr_weapon = waitresult.weapon;
        self.prev_weapon_before_equipment_change = undefined;
        if (isdefined(prev_weapon) && level.weaponnone != prev_weapon) {
            prev_weapon_type = prev_weapon.inventorytype;
            if ("primary" == prev_weapon_type || "altmode" == prev_weapon_type) {
                self.prev_weapon_before_equipment_change = prev_weapon;
            }
        }
        if (!isdefined(level.a_func_equipment_slot_watcher_override)) {
            level.a_func_equipment_slot_watcher_override = [];
        }
        if (isdefined(level.a_func_equipment_slot_watcher_override[equipment.name])) {
            self [[ level.a_func_equipment_slot_watcher_override[equipment.name] ]](equipment, curr_weapon, prev_weapon, notify_strings);
            continue;
        }
        if (curr_weapon == equipment && !self.current_equipment_active[equipment]) {
            self notify(notify_strings.activate);
            self.current_equipment_active[equipment] = 1;
            continue;
        }
        if (curr_weapon != equipment && self.current_equipment_active[equipment]) {
            self notify(notify_strings.deactivate);
            self.current_equipment_active[equipment] = 0;
        }
    }
}

// Namespace zm_equipment/zm_equipment
// Params 1, eflags: 0x2 linked
// Checksum 0x5c913d61, Offset: 0x2990
// Size: 0x66
function is_limited(equipment) {
    if (isdefined(level._limited_equipment)) {
        for (i = 0; i < level._limited_equipment.size; i++) {
            if (level._limited_equipment[i] == equipment) {
                return true;
            }
        }
    }
    return false;
}

// Namespace zm_equipment/zm_equipment
// Params 1, eflags: 0x2 linked
// Checksum 0x8b4189b1, Offset: 0x2a00
// Size: 0xb0
function limited_in_use(equipment) {
    players = getplayers();
    for (i = 0; i < players.size; i++) {
        current_equipment = players[i] get_player_equipment();
        if (isdefined(current_equipment) && current_equipment == equipment) {
            return true;
        }
    }
    if (isdefined(level.dropped_equipment) && isdefined(level.dropped_equipment[equipment])) {
        return true;
    }
    return false;
}

// Namespace zm_equipment/zm_equipment
// Params 1, eflags: 0x2 linked
// Checksum 0x1824476f, Offset: 0x2ab8
// Size: 0x94
function setup_limited(equipment) {
    players = getplayers();
    for (i = 0; i < players.size; i++) {
        players[i] set_equipment_invisibility_to_player(equipment, 1);
    }
    self thread release_limited_on_disconnect(equipment);
    self thread release_limited_on_taken(equipment);
}

// Namespace zm_equipment/zm_equipment
// Params 1, eflags: 0x2 linked
// Checksum 0xf6e8e777, Offset: 0x2b58
// Size: 0xb4
function release_limited_on_taken(equipment) {
    self endon(#"disconnect");
    notify_strings = get_notify_strings(equipment);
    self waittill(notify_strings.taken, #"spawned_spectator");
    players = getplayers();
    for (i = 0; i < players.size; i++) {
        players[i] set_equipment_invisibility_to_player(equipment, 0);
    }
}

// Namespace zm_equipment/zm_equipment
// Params 1, eflags: 0x2 linked
// Checksum 0x9070037d, Offset: 0x2c18
// Size: 0xc4
function release_limited_on_disconnect(equipment) {
    notify_strings = get_notify_strings(equipment);
    self endon(notify_strings.taken);
    self waittill(#"disconnect");
    players = getplayers();
    for (i = 0; i < players.size; i++) {
        if (isalive(players[i])) {
            players[i] set_equipment_invisibility_to_player(equipment, 0);
        }
    }
}

// Namespace zm_equipment/zm_equipment
// Params 1, eflags: 0x2 linked
// Checksum 0xbb0ce4d8, Offset: 0x2ce8
// Size: 0x44
function is_active(equipment) {
    if (!isdefined(self.current_equipment_active) || !isdefined(self.current_equipment_active[equipment])) {
        return 0;
    }
    return self.current_equipment_active[equipment];
}

// Namespace zm_equipment/zm_equipment
// Params 6, eflags: 0x0
// Checksum 0x463bff9f, Offset: 0x2d38
// Size: 0x8a
function init_hint_hudelem(x, y, alignx, aligny, fontscale, alpha) {
    self.x = x;
    self.y = y;
    self.alignx = alignx;
    self.aligny = aligny;
    self.fontscale = fontscale;
    self.alpha = alpha;
    self.sort = 20;
}

/#

    // Namespace zm_equipment/zm_equipment
    // Params 2, eflags: 0x0
    // Checksum 0xb8000f17, Offset: 0x2dd0
    // Size: 0x184
    function setup_client_hintelem(ypos, font_scale) {
        if (!isdefined(ypos)) {
            ypos = 220;
        }
        if (!isdefined(font_scale)) {
            font_scale = 1.25;
        }
        self endon(#"death");
        if (!isdefined(self.hintelem)) {
            self.hintelem = newdebughudelem(self);
        }
        if (self issplitscreen()) {
            if (getdvarint(#"splitscreen_playercount", 0) >= 3) {
                self.hintelem init_hint_hudelem(160, 90, "<unknown string>", "<unknown string>", font_scale * 0.8, 1);
            } else {
                self.hintelem init_hint_hudelem(160, 90, "<unknown string>", "<unknown string>", font_scale, 1);
            }
            return;
        }
        self.hintelem init_hint_hudelem(320, ypos, "<unknown string>", "<unknown string>", font_scale, 1);
    }

#/

// Namespace zm_equipment/zm_equipment
// Params 1, eflags: 0x2 linked
// Checksum 0x6a5950e4, Offset: 0x2f60
// Size: 0x9c
function show_hint(equipment) {
    self notify(#"kill_previous_show_equipment_hint_thread");
    self endon(#"kill_previous_show_equipment_hint_thread", #"death");
    if (is_true(self.do_not_display_equipment_pickup_hint)) {
        return;
    }
    wait(0.5);
    text = get_howto_hint(equipment);
    self show_hint_text(text);
}

// Namespace zm_equipment/zm_equipment
// Params 5, eflags: 0x2 linked
// Checksum 0x2da886a, Offset: 0x3008
// Size: 0x254
function show_hint_text(text, show_for_time, *font_scale, *ypos = 3.2, var_28bccc8a) {
    if (!isdefined(self) || !isplayer(self)) {
        return;
    }
    self notify("64d39a8b3b582fc5");
    self endon("64d39a8b3b582fc5");
    self endon(#"disconnect");
    level endoncallback(&function_57fbff5c, #"end_game");
    if (!isdefined(var_28bccc8a)) {
        var_28bccc8a = font_scale;
    }
    if (!level.zm_hint_text zm_hint_text::is_open(self)) {
        level.zm_hint_text zm_hint_text::open(self);
    }
    level.zm_hint_text zm_hint_text::set_text(self, font_scale);
    level.zm_hint_text zm_hint_text::function_f2cb39c0(self, var_28bccc8a);
    level.zm_hint_text zm_hint_text::set_visible(self, 1);
    time = self waittilltimeout(ypos, #"hide_equipment_hint_text", #"death", #"disconnect");
    if (isdefined(time) && isdefined(self) && level.zm_hint_text zm_hint_text::is_open(self)) {
        level.zm_hint_text zm_hint_text::set_visible(self, 0);
        self waittilltimeout(1, #"hide_equipment_hint_text");
    }
    if (isdefined(self) && level.zm_hint_text zm_hint_text::is_open(self)) {
        level.zm_hint_text zm_hint_text::close(self);
    }
}

// Namespace zm_equipment/zm_equipment
// Params 1, eflags: 0x2 linked
// Checksum 0x76d4b6a4, Offset: 0x3268
// Size: 0xc0
function function_57fbff5c(*str_notify) {
    foreach (player in level.players) {
        if (isdefined(player) && level.zm_hint_text zm_hint_text::is_open(player)) {
            level.zm_hint_text zm_hint_text::close(player);
        }
    }
}

// Namespace zm_equipment/zm_equipment
// Params 1, eflags: 0x2 linked
// Checksum 0x3e84f05a, Offset: 0x3330
// Size: 0xc6
function start_ammo(equipment) {
    if (self hasweapon(equipment)) {
        maxammo = 1;
        if (is_true(level.zombie_equipment[equipment].notake)) {
            maxammo = level.zombie_equipment[equipment].start_ammo;
        }
        self setweaponammoclip(equipment, maxammo);
        self notify(#"equipment_ammo_changed", {#equipment:equipment});
        return maxammo;
    }
    return 0;
}

// Namespace zm_equipment/zm_equipment
// Params 2, eflags: 0x0
// Checksum 0x115f0f66, Offset: 0x3400
// Size: 0x136
function change_ammo(equipment, change) {
    if (self hasweapon(equipment)) {
        oldammo = self getweaponammoclip(equipment);
        maxammo = 1;
        if (is_true(level.zombie_equipment[equipment].notake)) {
            maxammo = level.zombie_equipment[equipment].start_ammo;
        }
        newammo = int(min(maxammo, max(0, oldammo + change)));
        self setweaponammoclip(equipment, newammo);
        self notify(#"equipment_ammo_changed", {#equipment:equipment});
        return newammo;
    }
    return 0;
}

// Namespace zm_equipment/zm_equipment
// Params 1, eflags: 0x0
// Checksum 0xf3d6b48a, Offset: 0x3540
// Size: 0x74
function register_for_level(weaponname) {
    weapon = getweapon(weaponname);
    if (is_equipment(weapon)) {
        return;
    }
    if (!isdefined(level.zombie_equipment_list)) {
        level.zombie_equipment_list = [];
    }
    level.zombie_equipment_list[weapon] = weapon;
}

// Namespace zm_equipment/zm_equipment
// Params 2, eflags: 0x2 linked
// Checksum 0xfcf64526, Offset: 0x35c0
// Size: 0x9e
function is_equipment(weapon, var_1a9b98ca = 0) {
    if (var_1a9b98ca) {
        return (weapon.offhandslot === "Tactical grenade" || weapon.offhandslot === "Lethal grenade" || weapon.offhandslot === "Special");
    }
    return weapon.offhandslot === "Tactical grenade" || weapon.offhandslot === "Lethal grenade";
}

// Namespace zm_equipment/zm_equipment
// Params 2, eflags: 0x2 linked
// Checksum 0xd634fcc8, Offset: 0x3668
// Size: 0x3a
function is_equipment_that_blocks_purchase(weapon, var_1a9b98ca = 0) {
    return is_equipment(weapon, var_1a9b98ca);
}

// Namespace zm_equipment/zm_equipment
// Params 1, eflags: 0x2 linked
// Checksum 0x4e58d1e5, Offset: 0x36b0
// Size: 0x38
function is_player_equipment(weapon) {
    if (!isdefined(weapon) || !isdefined(self.current_equipment)) {
        return false;
    }
    return self.current_equipment == weapon;
}

// Namespace zm_equipment/zm_equipment
// Params 1, eflags: 0x2 linked
// Checksum 0x52b67e7c, Offset: 0x36f0
// Size: 0x86
function has_deployed_equipment(weapon) {
    if (!isdefined(weapon) || !isdefined(self.deployed_equipment) || self.deployed_equipment.size < 1) {
        return false;
    }
    for (i = 0; i < self.deployed_equipment.size; i++) {
        if (self.deployed_equipment[i] == weapon) {
            return true;
        }
    }
    return false;
}

// Namespace zm_equipment/zm_equipment
// Params 1, eflags: 0x2 linked
// Checksum 0x6d2aece9, Offset: 0x3780
// Size: 0x3c
function has_player_equipment(weapon) {
    return self is_player_equipment(weapon) || self has_deployed_equipment(weapon);
}

// Namespace zm_equipment/zm_equipment
// Params 0, eflags: 0x2 linked
// Checksum 0xd2e59ec2, Offset: 0x37c8
// Size: 0x36
function get_player_equipment() {
    equipment = level.weaponnone;
    if (isdefined(self.current_equipment)) {
        equipment = self.current_equipment;
    }
    return equipment;
}

// Namespace zm_equipment/zm_equipment
// Params 0, eflags: 0x2 linked
// Checksum 0x9b762e5a, Offset: 0x3808
// Size: 0x32
function hacker_active() {
    return self is_active(getweapon(#"equip_hacker"));
}

// Namespace zm_equipment/zm_equipment
// Params 1, eflags: 0x2 linked
// Checksum 0x6a98042f, Offset: 0x3848
// Size: 0x92
function set_player_equipment(weapon) {
    if (!isdefined(self.current_equipment_active)) {
        self.current_equipment_active = [];
    }
    if (isdefined(weapon)) {
        self.current_equipment_active[weapon] = 0;
    }
    if (!isdefined(self.equipment_got_in_round)) {
        self.equipment_got_in_round = [];
    }
    if (isdefined(weapon)) {
        self.equipment_got_in_round[weapon] = level.round_number;
    }
    self notify(#"new_equipment", weapon);
    self.current_equipment = weapon;
}

// Namespace zm_equipment/zm_equipment
// Params 0, eflags: 0x0
// Checksum 0x863fa9dd, Offset: 0x38e8
// Size: 0x24
function init_player_equipment() {
    self set_player_equipment(level.zombie_equipment_player_init);
}

// Namespace zm_equipment/zm_equipment
// Params 4, eflags: 0x0
// Checksum 0xadeaed15, Offset: 0x3918
// Size: 0xfa
function function_7d948481(n_boss = 0.1, var_5765a72a = 0.25, n_special = 0.5, n_basic = 1) {
    if (!isdefined(self.var_6f84b820)) {
        return 1;
    }
    switch (self.var_6f84b820) {
    case #"boss":
        return n_boss;
    case #"elite":
        return var_5765a72a;
    case #"special":
        return n_special;
    default:
        return n_basic;
    }
}

// Namespace zm_equipment/zm_equipment
// Params 4, eflags: 0x2 linked
// Checksum 0xd4445a93, Offset: 0x3a20
// Size: 0x62
function function_739fbb72(n_base_damage, weapon, aicategory, maxhealth) {
    var_5d7b4163 = function_379f6b5d(n_base_damage, weapon, aicategory, maxhealth);
    return int(var_5d7b4163);
}

// Namespace zm_equipment/zm_equipment
// Params 4, eflags: 0x2 linked
// Checksum 0xfb8e13d6, Offset: 0x3a90
// Size: 0x272
function function_379f6b5d(n_base_damage, weapon, aicategory = #"normal", maxhealth) {
    var_b663540c = zm_utility::get_round_number();
    var_5d7b4163 = n_base_damage;
    damagestruct = undefined;
    if (isdefined(level.var_df2ed8a5[weapon.name])) {
        damagestruct = level.var_df2ed8a5[weapon.name];
    } else if (isdefined(level.var_df2ed8a5[#"default"])) {
        damagestruct = level.var_df2ed8a5[#"default"];
    }
    if (is_true(damagestruct.var_909a6c96)) {
        if (var_b663540c > 1) {
            if (var_b663540c > 55) {
                var_b663540c = 55;
            }
            bonus_damage = damagestruct.var_4321cafd[var_b663540c];
            var_5d7b4163 += bonus_damage;
        }
        if (isdefined(maxhealth)) {
            switch (aicategory) {
            case #"normal":
                var_2f5a8007 = maxhealth * damagestruct.var_aff13429 / 100;
                if (var_5d7b4163 > var_2f5a8007) {
                    var_5d7b4163 = var_2f5a8007;
                }
                break;
            case #"special":
                var_2f5a8007 = maxhealth * damagestruct.var_e9cf20bf / 100;
                if (var_5d7b4163 > var_2f5a8007) {
                    var_5d7b4163 = var_2f5a8007;
                }
                break;
            case #"elite":
                var_2f5a8007 = maxhealth * damagestruct.var_867d16a0 / 100;
                if (var_5d7b4163 > var_2f5a8007) {
                    var_5d7b4163 = var_2f5a8007;
                }
                break;
            case #"boss":
                var_2f5a8007 = maxhealth * damagestruct.var_e53a0e14 / 100;
                if (var_5d7b4163 > var_2f5a8007) {
                    var_5d7b4163 = var_2f5a8007;
                }
                break;
            }
        }
    }
    return int(var_5d7b4163);
}

// Namespace zm_equipment/zm_equipment
// Params 2, eflags: 0x2 linked
// Checksum 0x6bc34a95, Offset: 0x3d10
// Size: 0x100
function function_76beede2(str_weapon_name, str_means_of_death) {
    if (!isdefined(level.var_1b5a4d1)) {
        level.var_1b5a4d1 = [];
    }
    var_5ee1b234 = {#str_weapon_name:str_weapon_name, #str_means_of_death:str_means_of_death};
    if (!isdefined(level.var_1b5a4d1)) {
        level.var_1b5a4d1 = [];
    } else if (!isarray(level.var_1b5a4d1)) {
        level.var_1b5a4d1 = array(level.var_1b5a4d1);
    }
    if (!isinarray(level.var_1b5a4d1, var_5ee1b234)) {
        level.var_1b5a4d1[level.var_1b5a4d1.size] = var_5ee1b234;
    }
}

// Namespace zm_equipment/zm_equipment
// Params 2, eflags: 0x2 linked
// Checksum 0x8fc9355c, Offset: 0x3e18
// Size: 0x110
function function_4f51b6ea(weapon, str_means_of_death) {
    if (isarray(level.var_1b5a4d1)) {
        foreach (var_5ee1b234 in level.var_1b5a4d1) {
            if (weapon.name === var_5ee1b234.str_weapon_name && var_5ee1b234.str_means_of_death === str_means_of_death) {
                return true;
            }
        }
    }
    if (str_means_of_death === "MOD_IMPACT" && isinarray(level.var_569aec98, weapon.name)) {
        return true;
    }
    return false;
}

/#

    // Namespace zm_equipment/zm_equipment
    // Params 0, eflags: 0x0
    // Checksum 0x47121bdb, Offset: 0x3f30
    // Size: 0x1de
    function function_e418901e() {
        setdvar(#"give_equipment", "<unknown string>");
        waitframe(1);
        level flag::wait_till("<unknown string>");
        waitframe(1);
        str_cmd = "<unknown string>" + "<unknown string>" + "<unknown string>";
        adddebugcommand(str_cmd);
        while (true) {
            equipment_id = getdvarstring(#"give_equipment");
            if (equipment_id != "<unknown string>") {
                foreach (player in getplayers()) {
                    if (equipment_id == "<unknown string>") {
                        player take();
                        continue;
                    }
                    if (is_included(equipment_id)) {
                        player buy(equipment_id);
                    }
                }
                setdvar(#"give_equipment", "<unknown string>");
            }
            waitframe(1);
        }
    }

    // Namespace zm_equipment/zm_equipment
    // Params 1, eflags: 0x0
    // Checksum 0x2dfcdccf, Offset: 0x4118
    // Size: 0xa4
    function function_1d34b98d(equipment) {
        waitframe(1);
        level flag::wait_till("<unknown string>");
        waitframe(1);
        if (isdefined(equipment)) {
            equipment_id = getweaponname(equipment);
            str_cmd = "<unknown string>" + equipment_id + "<unknown string>" + equipment_id + "<unknown string>";
            adddebugcommand(str_cmd);
        }
    }

#/
