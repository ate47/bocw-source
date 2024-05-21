// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_wallbuy.csc;
#using scripts\zm_common\zm_utility.csc;
#using scripts\zm_common\zm_loadout.csc;
#using scripts\weapons\weapons.csc;
#using script_680dddbda86931fa;
#using script_101d8280497ff416;
#using scripts\core_common\item_world.csc;
#using script_3d35e2ff167b3a82;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\struct.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\array_shared.csc;

#namespace zm_weapons;

// Namespace zm_weapons/zm_weapons
// Params 0, eflags: 0x5
// Checksum 0xbef88b90, Offset: 0x210
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"zm_weapons", &preinit, &postinit, undefined, undefined);
}

// Namespace zm_weapons/zm_weapons
// Params 0, eflags: 0x6 linked
// Checksum 0x58794312, Offset: 0x268
// Size: 0x12c
function private preinit() {
    level flag::init("weapon_table_loaded");
    callback::on_localclient_connect(&on_player_connect);
    level.weaponnone = getweapon(#"none");
    level.weaponnull = getweapon(#"weapon_null");
    level.weapondefault = getweapon(#"defaultweapon");
    level.weaponbasemelee = getweapon(#"knife");
    if (!isdefined(level.zombie_weapons_upgraded)) {
        level.zombie_weapons_upgraded = [];
    }
    if (!isdefined(level.var_11173af4)) {
        level.var_11173af4 = [];
    }
    weapons::init_shared();
}

// Namespace zm_weapons/zm_weapons
// Params 0, eflags: 0x6 linked
// Checksum 0x6672b0f9, Offset: 0x3a0
// Size: 0x62c
function private postinit() {
    init_weapons();
    function_8389c033(#"ray_gun", #"ray_gun");
    function_8389c033(#"ray_gun", #"ray_gun_upgraded");
    function_8389c033(#"ray_gun_upgraded", #"ray_gun");
    function_8389c033(#"ray_gun_upgraded", #"ray_gun_upgraded");
    function_8389c033(#"ww_ray_rifle_t9", #"ww_ray_rifle_t9");
    function_8389c033(#"ww_ray_rifle_t9", #"ww_ray_rifle_t9_upgraded");
    function_8389c033(#"ww_ray_rifle_t9_upgraded", #"ww_ray_rifle_t9");
    function_8389c033(#"ww_ray_rifle_t9_upgraded", #"ww_ray_rifle_t9_upgraded");
    function_8389c033(#"ray_gun", #"ww_ray_rifle_t9");
    function_8389c033(#"ray_gun_upgraded", #"ww_ray_rifle_t9");
    function_8389c033(#"ray_gun", #"ww_ray_rifle_t9_upgraded");
    function_8389c033(#"ray_gun_upgraded", #"ww_ray_rifle_t9_upgraded");
    function_8389c033(#"ww_ray_rifle_t9", #"ray_gun");
    function_8389c033(#"ww_ray_rifle_t9_upgraded", #"ray_gun");
    function_8389c033(#"ww_ray_rifle_t9", #"ray_gun_upgraded");
    function_8389c033(#"ww_ray_rifle_t9_upgraded", #"ray_gun_upgraded");
    function_8389c033(#"ww_mega_barrel_fullauto_copycat_t9", #"ww_mega_barrel_fullauto_copycat_t9");
    function_8389c033(#"ww_mega_barrel_fullauto_copycat_t9", #"ww_mega_barrel_fullauto_blazer_beam_t9");
    function_8389c033(#"ww_mega_barrel_fullauto_copycat_t9", #"ww_mega_barrel_fullauto_diffusion_beam_t9");
    function_8389c033(#"ww_mega_barrel_fullauto_copycat_t9", #"ww_mega_barrel_fullauto_micro_missile_t9");
    function_8389c033(#"ww_mega_barrel_fullauto_blazer_beam_t9", #"ww_mega_barrel_fullauto_copycat_t9");
    function_8389c033(#"ww_mega_barrel_fullauto_blazer_beam_t9", #"ww_mega_barrel_fullauto_blazer_beam_t9");
    function_8389c033(#"ww_mega_barrel_fullauto_blazer_beam_t9", #"ww_mega_barrel_fullauto_diffusion_beam_t9");
    function_8389c033(#"ww_mega_barrel_fullauto_blazer_beam_t9", #"ww_mega_barrel_fullauto_micro_missile_t9");
    function_8389c033(#"ww_mega_barrel_fullauto_diffusion_beam_t9", #"ww_mega_barrel_fullauto_copycat_t9");
    function_8389c033(#"ww_mega_barrel_fullauto_diffusion_beam_t9", #"ww_mega_barrel_fullauto_blazer_beam_t9");
    function_8389c033(#"ww_mega_barrel_fullauto_diffusion_beam_t9", #"ww_mega_barrel_fullauto_diffusion_beam_t9");
    function_8389c033(#"ww_mega_barrel_fullauto_diffusion_beam_t9", #"ww_mega_barrel_fullauto_micro_missile_t9");
    function_8389c033(#"ww_mega_barrel_fullauto_micro_missile_t9", #"ww_mega_barrel_fullauto_copycat_t9");
    function_8389c033(#"ww_mega_barrel_fullauto_micro_missile_t9", #"ww_mega_barrel_fullauto_blazer_beam_t9");
    function_8389c033(#"ww_mega_barrel_fullauto_micro_missile_t9", #"ww_mega_barrel_fullauto_diffusion_beam_t9");
    function_8389c033(#"ww_mega_barrel_fullauto_micro_missile_t9", #"ww_mega_barrel_fullauto_micro_missile_t9");
    level.var_69fa4969 = &function_2bcaec6f;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x0
// Checksum 0x83e875bf, Offset: 0x9d8
// Size: 0xa8
function function_2a207572(item_name) {
    if (!isdefined(level.var_3fd97ca3)) {
        level.var_3fd97ca3 = [];
    }
    if (!isdefined(level.var_3fd97ca3)) {
        level.var_3fd97ca3 = [];
    } else if (!isarray(level.var_3fd97ca3)) {
        level.var_3fd97ca3 = array(level.var_3fd97ca3);
    }
    level.var_3fd97ca3[level.var_3fd97ca3.size] = item_name;
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x2 linked
// Checksum 0xa72aa578, Offset: 0xa88
// Size: 0x11a
function function_8389c033(weapon_name, var_b72e8856) {
    weapon = getweapon(weapon_name);
    var_6ae93843 = getweapon(var_b72e8856);
    if (!isdefined(level.var_11173af4[weapon])) {
        level.var_11173af4[weapon] = [];
    }
    if (!isdefined(level.var_11173af4[weapon])) {
        level.var_11173af4[weapon] = [];
    } else if (!isarray(level.var_11173af4[weapon])) {
        level.var_11173af4[weapon] = array(level.var_11173af4[weapon]);
    }
    level.var_11173af4[weapon][level.var_11173af4[weapon].size] = var_6ae93843;
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x2 linked
// Checksum 0xe7911ef5, Offset: 0xbb0
// Size: 0x472
function function_2bcaec6f(localclientnum, itementry) {
    if (!(isdefined(itementry) && isdefined(itementry.weapon)) || !isdefined(localclientnum)) {
        return;
    }
    data = item_world::function_a7e98a1a(localclientnum);
    current_weapon = getcurrentweapon(localclientnum);
    current_weapon = get_base_weapon(current_weapon);
    var_3ccb716f = get_base_weapon(itementry.weapon);
    weapon1 = data.inventory.items[17 + 1];
    weapon2 = data.inventory.items[17 + 1 + 8 + 1];
    var_5df29481 = data.inventory.items[17 + 1 + 8 + 1 + 8 + 1];
    weapon1 = self namespace_a0d533d1::function_2b83d3ff(weapon1);
    weapon2 = self namespace_a0d533d1::function_2b83d3ff(weapon2);
    var_5df29481 = self namespace_a0d533d1::function_2b83d3ff(var_5df29481);
    if (!(isdefined(weapon1) && isdefined(weapon2))) {
        return 1;
    }
    weapon1 = get_base_weapon(weapon1);
    weapon2 = get_base_weapon(weapon2);
    if (isdefined(var_5df29481)) {
        var_5df29481 = get_base_weapon(var_5df29481);
    }
    if (isarray(level.var_11173af4[var_3ccb716f])) {
        var_36e0edce = 0;
        var_7bdcb52a = 0;
        foreach (var_6ae93843 in level.var_11173af4[var_3ccb716f]) {
            if (weapon1 == var_6ae93843 || weapon2 == var_6ae93843 || var_5df29481 === var_6ae93843) {
                var_36e0edce = 1;
                break;
            }
        }
        foreach (var_6ae93843 in level.var_11173af4[var_3ccb716f]) {
            if (self function_6c32d092(localclientnum, #"hash_2cb9513f0cf67fe7")) {
                if (current_weapon == var_6ae93843 && isdefined(var_5df29481)) {
                    var_7bdcb52a = 1;
                } else {
                    var_7bdcb52a = 0;
                }
                continue;
            }
            if (current_weapon == var_6ae93843) {
                var_7bdcb52a = 1;
            }
        }
        if (self function_6c32d092(localclientnum, #"hash_2cb9513f0cf67fe7")) {
            if (var_36e0edce && current_weapon == var_3ccb716f && !var_7bdcb52a && !isdefined(var_5df29481)) {
                return 0;
            } else if (var_36e0edce && current_weapon != var_3ccb716f && !var_7bdcb52a) {
                return 0;
            }
        } else if (var_36e0edce && current_weapon != var_3ccb716f && !var_7bdcb52a) {
            return 0;
        }
    }
    return 1;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x1135b3da, Offset: 0x1030
// Size: 0x52
function get_base_weapon(upgradedweapon) {
    if (isdefined(upgradedweapon.rootweapon)) {
        upgradedweapon = upgradedweapon.rootweapon;
    }
    if (isdefined(level.zombie_weapons_upgraded[upgradedweapon])) {
        return level.zombie_weapons_upgraded[upgradedweapon];
    }
    return upgradedweapon;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x6 linked
// Checksum 0x8fcea4c6, Offset: 0x1090
// Size: 0x190
function private on_player_connect(localclientnum) {
    if (getmigrationstatus(localclientnum)) {
        return;
    }
    resetweaponcosts(localclientnum);
    level flag::wait_till("weapon_table_loaded");
    if (getgametypesetting(#"zmwallbuysenabled")) {
        level flag::wait_till("weapon_wallbuys_created");
    }
    if (isdefined(level.weapon_costs)) {
        foreach (weaponcost in level.weapon_costs) {
            player_cost = compute_player_weapon_ammo_cost(weaponcost.weapon, weaponcost.ammo_cost, weaponcost.upgraded);
            setweaponcosts(localclientnum, weaponcost.weapon, weaponcost.cost, weaponcost.ammo_cost, player_cost, weaponcost.upgradedweapon);
        }
    }
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x0
// Checksum 0x511c28a5, Offset: 0x1228
// Size: 0x36
function is_weapon_included(weapon) {
    if (!isdefined(level._included_weapons)) {
        return false;
    }
    return isdefined(level._included_weapons[weapon.rootweapon]);
}

// Namespace zm_weapons/zm_weapons
// Params 5, eflags: 0x2 linked
// Checksum 0x3a63ada5, Offset: 0x1268
// Size: 0xfe
function compute_player_weapon_ammo_cost(weapon, cost, upgraded, n_base_non_wallbuy_cost = 750, n_upgraded_non_wallbuy_cost = 5000) {
    w_root = weapon.rootweapon;
    if (upgraded) {
        if (zm_wallbuy::is_wallbuy(level.zombie_weapons_upgraded[w_root])) {
            n_ammo_cost = 4000;
        } else {
            n_ammo_cost = n_upgraded_non_wallbuy_cost;
        }
    } else if (zm_wallbuy::is_wallbuy(w_root)) {
        n_ammo_cost = cost;
        n_ammo_cost = zm_utility::halve_score(n_ammo_cost);
    } else {
        n_ammo_cost = n_base_non_wallbuy_cost;
    }
    return n_ammo_cost;
}

// Namespace zm_weapons/zm_weapons
// Params 5, eflags: 0x2 linked
// Checksum 0x8412da0a, Offset: 0x1370
// Size: 0x236
function include_weapon(weapon_name, display_in_box, cost, ammo_cost, upgraded = 0) {
    if (!isdefined(level._included_weapons)) {
        level._included_weapons = [];
    }
    weapon = getweapon(weapon_name);
    level._included_weapons[weapon] = weapon;
    if (!isdefined(level.weapon_costs)) {
        level.weapon_costs = [];
    }
    if (!isdefined(level.weapon_costs[weapon_name])) {
        level.weapon_costs[weapon_name] = spawnstruct();
        level.weapon_costs[weapon_name].weapon = weapon;
        level.weapon_costs[weapon_name].upgradedweapon = level.weaponnone;
    }
    level.weapon_costs[weapon_name].cost = cost;
    if (!isdefined(ammo_cost) || ammo_cost == 0) {
        ammo_cost = zm_utility::round_up_to_ten(int(cost * 0.5));
    }
    level.weapon_costs[weapon_name].ammo_cost = ammo_cost;
    level.weapon_costs[weapon_name].upgraded = upgraded;
    if (isdefined(display_in_box) && !display_in_box) {
        return;
    }
    if (!isdefined(level._resetzombieboxweapons)) {
        level._resetzombieboxweapons = 1;
        resetzombieboxweapons();
    }
    if (!isdefined(weapon.worldmodel)) {
        /#
            thread util::error("<unknown string>" + function_9e72a96(weapon_name) + "<unknown string>");
        #/
        return;
    }
}

// Namespace zm_weapons/zm_weapons
// Params 5, eflags: 0x2 linked
// Checksum 0x5439c3a4, Offset: 0x15b0
// Size: 0xe2
function include_upgraded_weapon(weapon_name, upgrade_name, display_in_box, cost, ammo_cost) {
    include_weapon(upgrade_name, display_in_box, cost, ammo_cost, 1);
    if (!isdefined(level.zombie_weapons_upgraded)) {
        level.zombie_weapons_upgraded = [];
    }
    weapon = getweapon(weapon_name);
    upgrade = getweapon(upgrade_name);
    level.zombie_weapons_upgraded[upgrade] = weapon;
    if (isdefined(level.weapon_costs[weapon_name])) {
        level.weapon_costs[weapon_name].upgradedweapon = upgrade;
    }
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x0
// Checksum 0x98b0a0de, Offset: 0x16a0
// Size: 0x5a
function is_weapon_upgraded(weapon) {
    if (!isdefined(level.zombie_weapons_upgraded)) {
        level.zombie_weapons_upgraded = [];
    }
    rootweapon = weapon.rootweapon;
    if (isdefined(level.zombie_weapons_upgraded[rootweapon])) {
        return true;
    }
    return false;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x364b615e, Offset: 0x1708
// Size: 0x24
function checkstringvalid(str) {
    if (str != "") {
        return str;
    }
    return undefined;
}

// Namespace zm_weapons/zm_weapons
// Params 0, eflags: 0x2 linked
// Checksum 0xa4d7f5fc, Offset: 0x1738
// Size: 0xae
function init_weapons() {
    level.var_c60359dc = [];
    var_4ef031c9 = #"hash_2298893b58cc2885";
    load_weapon_spec_from_table(var_4ef031c9, 0);
    if (isdefined(level.var_d0ab70a2)) {
        load_weapon_spec_from_table(level.var_d0ab70a2, 0);
    }
    level thread function_350ee41();
    level flag::set("weapon_table_loaded");
    level.var_c60359dc = undefined;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0xa9b597da, Offset: 0x17f0
// Size: 0x1b8
function function_15827c82(var_904df15f) {
    if (var_904df15f.type === "itemspawnlist") {
        foreach (s_item in var_904df15f.itemlist) {
            var_89230090 = getscriptbundle(s_item.itementry);
            if (var_89230090.type === "itemspawnlist") {
                function_15827c82(var_89230090);
                continue;
            }
            if (isdefined(var_89230090.weapon.name)) {
                if (!isdefined(level.var_af500dbd)) {
                    level.var_af500dbd = [];
                } else if (!isarray(level.var_af500dbd)) {
                    level.var_af500dbd = array(level.var_af500dbd);
                }
                if (!isinarray(level.var_af500dbd, var_89230090.weapon.name)) {
                    level.var_af500dbd[level.var_af500dbd.size] = var_89230090.weapon.name;
                }
            }
        }
    }
}

// Namespace zm_weapons/zm_weapons
// Params 0, eflags: 0x6 linked
// Checksum 0x2d3ec21c, Offset: 0x19b0
// Size: 0x448
function private function_350ee41() {
    if (!isdefined(level.var_c8b5248e)) {
        level.var_c8b5248e = [];
    }
    if (!isdefined(level.var_1d1c6c28)) {
        level.var_1d1c6c28 = [];
    }
    if (!isdefined(level.var_af500dbd)) {
        level.var_af500dbd = [];
    }
    if (!isdefined(level.str_magicbox_weapon_itemspawnlist)) {
        level.str_magicbox_weapon_itemspawnlist = "zm_magicbox_weapons_list";
    }
    if (!isdefined(level.str_magicbox_support_itemspawnlist)) {
        level.str_magicbox_support_itemspawnlist = "zm_magicbox_scorestreak_list";
    }
    if (!isdefined(level.str_magicbox_named_itemspawnlist)) {
        level.str_magicbox_named_itemspawnlist = "zm_magicbox_named_weapons_parent";
    }
    resetzombieboxweapons();
    if (isdefined(level.var_ee110db8[#"zm_magicbox_named_weapons_parent"])) {
        level.str_magicbox_named_itemspawnlist = level.var_ee110db8[#"zm_magicbox_named_weapons_parent"];
    }
    function_bd6fcf62(level.str_magicbox_weapon_itemspawnlist, "str_magicbox_weapon_itemspawnlist");
    function_bd6fcf62(level.str_magicbox_support_itemspawnlist, "str_magicbox_support_itemspawnlist");
    function_bd6fcf62(level.str_magicbox_named_itemspawnlist, "str_magicbox_named_itemspawnlist");
    level.var_af500dbd = array::randomize(level.var_af500dbd);
    if (isinarray(level.var_af500dbd, #"ray_gun")) {
        arrayremovevalue(level.var_af500dbd, #"ray_gun");
        arrayinsert(level.var_af500dbd, #"ray_gun", 0);
    }
    arrayremovevalue(level.var_af500dbd, #"ultimate_turret");
    foreach (index, var_ff8843d4 in level.var_af500dbd) {
        weapon = getweapon(var_ff8843d4);
        if (isweapon(weapon)) {
            if (!isdefined(level.var_c8b5248e)) {
                level.var_c8b5248e = [];
            } else if (!isarray(level.var_c8b5248e)) {
                level.var_c8b5248e = array(level.var_c8b5248e);
            }
            if (!isinarray(level.var_c8b5248e, weapon)) {
                level.var_c8b5248e[level.var_c8b5248e.size] = weapon;
            }
            if (index < 32) {
                if (!isdefined(level.var_1d1c6c28)) {
                    level.var_1d1c6c28 = [];
                } else if (!isarray(level.var_1d1c6c28)) {
                    level.var_1d1c6c28 = array(level.var_1d1c6c28);
                }
                if (!isinarray(level.var_1d1c6c28, weapon.worldmodel)) {
                    level.var_1d1c6c28[level.var_1d1c6c28.size] = weapon.worldmodel;
                }
                addzombieboxweapon(weapon, weapon.worldmodel, weapon.isdualwield);
            }
        }
    }
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x6 linked
// Checksum 0x8825e60a, Offset: 0x1e00
// Size: 0x270
function private function_bd6fcf62(var_f8dfa2cf, var_3fbf56c8) {
    if (!isdefined(var_f8dfa2cf)) {
        return;
    }
    if (isdefined(level.var_ee110db8[var_f8dfa2cf])) {
        level.(var_3fbf56c8) = level.var_ee110db8[var_f8dfa2cf];
    }
    var_83b3038e = getscriptbundle(var_f8dfa2cf);
    if (!isdefined(var_83b3038e)) {
        return;
    }
    foreach (s_item in var_83b3038e.itemlist) {
        itementry = s_item.itementry;
        if (isdefined(level.var_ee110db8[itementry])) {
            itementry = level.var_ee110db8[itementry];
        } else if (isdefined(level.itemreplacement[itementry])) {
            itementry = level.itemreplacement[itementry];
        }
        var_89230090 = getscriptbundle(itementry);
        if (var_89230090.type === "itemspawnlist") {
            function_15827c82(var_89230090);
            continue;
        }
        if (isdefined(var_89230090.weapon.name)) {
            if (!isdefined(level.var_af500dbd)) {
                level.var_af500dbd = [];
            } else if (!isarray(level.var_af500dbd)) {
                level.var_af500dbd = array(level.var_af500dbd);
            }
            if (!isinarray(level.var_af500dbd, var_89230090.weapon.name)) {
                level.var_af500dbd[level.var_af500dbd.size] = var_89230090.weapon.name;
            }
        }
    }
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x2 linked
// Checksum 0x96cc5a51, Offset: 0x2078
// Size: 0x352
function load_weapon_spec_from_table(table, first_row) {
    gametype = util::get_game_type();
    index = first_row;
    for (row = tablelookuprow(table, index); isdefined(row); row = tablelookuprow(table, index)) {
        weapon_name = checkstringvalid(row[0]);
        if (isinarray(level.var_c60359dc, weapon_name)) {
            index++;
            row = tablelookuprow(table, index);
            continue;
        }
        if (!isdefined(level.var_c60359dc)) {
            level.var_c60359dc = [];
        } else if (!isarray(level.var_c60359dc)) {
            level.var_c60359dc = array(level.var_c60359dc);
        }
        level.var_c60359dc[level.var_c60359dc.size] = weapon_name;
        upgrade_name = checkstringvalid(row[1]);
        cost = row[3];
        weaponvo = checkstringvalid(row[4]);
        weaponvoresp = checkstringvalid(row[5]);
        ammo_cost = row[6];
        create_vox = row[7];
        is_zcleansed = row[8];
        in_box = row[9];
        upgrade_in_box = row[10];
        is_limited = row[11];
        limit = row[12];
        upgrade_limit = row[13];
        content_restrict = row[14];
        wallbuy_autospawn = row[15];
        weapon_class = checkstringvalid(row[16]);
        is_wonder_weapon = row[18];
        tier = row[19];
        include_weapon(weapon_name, in_box, cost, ammo_cost, 0);
        if (isdefined(upgrade_name)) {
            include_upgraded_weapon(weapon_name, upgrade_name, upgrade_in_box, cost, 4500);
        }
        index++;
    }
}

