// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\gametypes\globallogic_utils.gsc;
#using scripts\zm_common\trials\zm_trial_reset_loadout.gsc;
#using script_5f261a5d57de5f7c;
#using script_19367cd29a4485db;
#using scripts\zm_common\zm_wallbuy.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_unitrigger.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_placeable_mine.gsc;
#using scripts\zm_common\zm_pack_a_punch_util.gsc;
#using scripts\zm_common\zm_melee_weapon.gsc;
#using scripts\zm_common\zm_magicbox.gsc;
#using scripts\zm_common\zm_loadout.gsc;
#using scripts\zm_common\zm_equipment.gsc;
#using scripts\zm_common\zm_devgui.gsc;
#using scripts\zm_common\zm_customgame.gsc;
#using scripts\zm_common\zm_camos.gsc;
#using scripts\zm_common\zm_bgb.gsc;
#using scripts\zm_common\zm_audio.gsc;
#using scripts\zm_common\util.gsc;
#using scripts\zm_common\bb.gsc;
#using scripts\weapons\weapons.gsc;
#using scripts\abilities\ability_util.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using script_67c87580908a0a00;
#using scripts\zm_common\aats\zm_aat.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\throttle_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\popups_shared.gsc;
#using script_471b31bd963b388e;
#using scripts\core_common\item_world.gsc;
#using script_340a2e805e35f7a2;
#using script_1caf36ff04a85ff6;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\item_drop.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\bb_shared.gsc;
#using scripts\core_common\activecamo_shared.gsc;
#using scripts\core_common\aat_shared.gsc;

#namespace zm_weapons;

// Namespace zm_weapons/zm_weapons
// Params 0, eflags: 0x5
// Checksum 0xbef88b90, Offset: 0x400
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"zm_weapons", &preinit, &postinit, undefined, undefined);
}

// Namespace zm_weapons/zm_weapons
// Params 0, eflags: 0x6 linked
// Checksum 0x45a61601, Offset: 0x458
// Size: 0x354
function private preinit() {
    level flag::init("zm_weapons_table_loaded");
    level.weaponnone = getweapon(#"none");
    level.weaponnull = getweapon(#"weapon_null");
    level.weapondefault = getweapon(#"defaultweapon");
    level.weaponbasemelee = getweapon(#"knife");
    if (!isdefined(level.zombie_weapons)) {
        level.zombie_weapons = [];
    }
    if (!isdefined(level.zombie_weapons_upgraded)) {
        level.zombie_weapons_upgraded = [];
    }
    if (!isdefined(level.var_69acf721)) {
        level.var_69acf721 = [];
    }
    if (!isdefined(level.var_cb55e72e)) {
        level.var_cb55e72e = [];
    }
    if (!isdefined(level.var_8e3edeb9)) {
        level.var_8e3edeb9 = [];
    }
    level.limited_weapons = [];
    function_ec38915a();
    level.var_51443ce5 = &get_player_weapondata;
    level.var_bfbdc0cd = &weapondata_give;
    level.var_6ab033f1 = &function_98776900;
    level.var_1b68ae98 = &function_b0ab2d41;
    level.var_ee5c0b6e = &function_93cd8e76;
    level.var_6476d5c6 = [];
    level.var_60387857 = [];
    level.var_6476d5c6[1] = new class_c6c0e94();
    [[ level.var_6476d5c6[1] ]]->initialize(#"radius", 2, float(function_60d95f53()) / 1000);
    level.var_f96e7a56 = [];
    level.var_d2895b5f = [];
    level.var_66c53c7e = [];
    level.var_37c36b82 = &function_f4e096e4;
    callback::on_weapon_change(&on_weapon_change);
    callback::on_item_pickup(&on_item_pickup);
    callback::on_connect(&on_player_connect);
    function_30b08f95();
    function_cf3f5b23();
    weapons::init_shared();
    /#
        level.var_800654fc = &function_800654fc;
    #/
}

// Namespace zm_weapons/zm_weapons
// Params 0, eflags: 0x6 linked
// Checksum 0xfe80b649, Offset: 0x7b8
// Size: 0x8fc
function private postinit() {
    init();
    function_8389c033(#"ray_gun", #"ray_gun");
    function_8389c033(#"ray_gun", #"ray_gun_upgraded");
    function_8389c033(#"ww_ray_rifle_t9", #"ww_ray_rifle_t9_upgraded");
    function_8389c033(#"ray_gun_upgraded", #"ww_ray_rifle_t9_upgraded");
    function_8389c033(#"ww_ray_rifle_t9", #"ray_gun");
    function_8389c033(#"ww_ray_rifle_t9", #"ray_gun_upgraded");
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
    function_dd02fe13(#"knife_loadout");
    function_dd02fe13(#"knife_loadout_upgraded");
    function_dd02fe13(#"melee_sledgehammer_t9");
    function_dd02fe13(#"melee_sledgehammer_t9_upgraded");
    function_dd02fe13(#"melee_wakizashi_t9");
    function_dd02fe13(#"melee_wakizashi_t9_upgraded");
    function_dd02fe13(#"melee_etool_t9");
    function_dd02fe13(#"melee_etool_t9_upgraded");
    function_dd02fe13(#"melee_machete_t9");
    function_dd02fe13(#"melee_machete_t9_upgraded");
    function_dd02fe13(#"special_ballisticknife_t9_dw");
    function_dd02fe13(#"special_ballisticknife_t9_lh");
    function_dd02fe13(#"special_ballisticknife_t9_dw_upgraded");
    function_dd02fe13(#"special_ballisticknife_t9_lh_upgraded");
    function_dd02fe13(#"melee_baseballbat_t9");
    function_dd02fe13(#"melee_baseballbat_t9_upgraded");
    function_dd02fe13(#"melee_mace_t9");
    function_dd02fe13(#"melee_mace_t9_upgraded");
    function_dd02fe13(#"melee_cane_t9");
    function_dd02fe13(#"melee_cane_t9_upgraded");
    function_dd02fe13(#"melee_sai_t9_dw");
    function_dd02fe13(#"melee_sai_t9_dw_upgraded");
    function_dd02fe13(#"melee_coldwar_t9_dw");
    function_dd02fe13(#"hash_7c9376e0e68e89db");
    function_dd02fe13(#"melee_battleaxe_t9");
    function_dd02fe13(#"melee_battleaxe_t9_upgraded");
    function_dd02fe13(#"melee_scythe_t9");
    function_dd02fe13(#"melee_scythe_t9_upgraded");
    function_90953640(getweapon(#"shotgun_pump_t9"), 4, float(function_60d95f53()) / 1000, 1);
    function_e2bcbf46(#"hero_flamethrower");
    function_283a8d38(#"ar_soviet_t9");
    function_283a8d38(#"ar_soviet_t9_upgraded");
    function_283a8d38(#"smg_flechette_t9");
    function_283a8d38(#"smg_flechette_t9_upgraded");
    function_283a8d38(#"melee_scythe_t9");
    function_283a8d38(#"melee_scythe_t9_upgraded");
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x32c5c521, Offset: 0x10c0
// Size: 0xc8
function function_283a8d38(weapon_name) {
    weapon = getweapon(weapon_name);
    if (!isdefined(level.var_cb55e72e)) {
        level.var_cb55e72e = [];
    } else if (!isarray(level.var_cb55e72e)) {
        level.var_cb55e72e = array(level.var_cb55e72e);
    }
    if (!isinarray(level.var_cb55e72e, weapon)) {
        level.var_cb55e72e[level.var_cb55e72e.size] = weapon;
    }
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0xba99a4f4, Offset: 0x1190
// Size: 0x60
function function_f4e096e4(weapon) {
    weapon = get_base_weapon(weapon);
    if (isdefined(level.var_69acf721) && isinarray(level.var_69acf721, weapon)) {
        return true;
    }
    return false;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0xdde736e9, Offset: 0x11f8
// Size: 0xa8
function function_e2bcbf46(weapon_name) {
    if (!isdefined(level.var_66c53c7e)) {
        level.var_66c53c7e = [];
    } else if (!isarray(level.var_66c53c7e)) {
        level.var_66c53c7e = array(level.var_66c53c7e);
    }
    if (!isinarray(level.var_66c53c7e, weapon_name)) {
        level.var_66c53c7e[level.var_66c53c7e.size] = weapon_name;
    }
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0xe2936fd1, Offset: 0x12a8
// Size: 0xc8
function function_dd02fe13(weapon_name) {
    weapon = getweapon(weapon_name);
    if (!isdefined(level.var_69acf721)) {
        level.var_69acf721 = [];
    } else if (!isarray(level.var_69acf721)) {
        level.var_69acf721 = array(level.var_69acf721);
    }
    if (!isinarray(level.var_69acf721, weapon)) {
        level.var_69acf721[level.var_69acf721.size] = weapon;
    }
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x2 linked
// Checksum 0x82aed209, Offset: 0x1378
// Size: 0x134
function function_8389c033(weapon_name, var_b72e8856) {
    weapon = getweapon(weapon_name);
    var_6ae93843 = getweapon(var_b72e8856);
    if (isdefined(level.zombie_weapons[weapon])) {
        if (!isdefined(level.zombie_weapons[weapon].var_51344511)) {
            level.zombie_weapons[weapon].var_51344511 = [];
        } else if (!isarray(level.zombie_weapons[weapon].var_51344511)) {
            level.zombie_weapons[weapon].var_51344511 = array(level.zombie_weapons[weapon].var_51344511);
        }
        level.zombie_weapons[weapon].var_51344511[level.zombie_weapons[weapon].var_51344511.size] = var_6ae93843;
    }
}

// Namespace zm_weapons/zm_weapons
// Params 0, eflags: 0x2 linked
// Checksum 0xc422c0e7, Offset: 0x14b8
// Size: 0xbc
function init() {
    if (!isdefined(level.pack_a_punch_camo_index)) {
        level.pack_a_punch_camo_index = 42;
    }
    level.primary_weapon_array = [];
    level.side_arm_array = [];
    level.grenade_array = [];
    level.inventory_array = [];
    init_weapons();
    level._zombiemode_check_firesale_loc_valid_func = &default_check_firesale_loc_valid_func;
    callback::on_spawned(&on_player_spawned);
    callback::function_adff8850(&function_adff8850);
}

// Namespace zm_weapons/zm_weapons
// Params 0, eflags: 0x2 linked
// Checksum 0x745f2ae1, Offset: 0x1580
// Size: 0x56
function on_player_spawned() {
    self thread watchforgrenadeduds();
    self thread watchforgrenadelauncherduds();
    self.staticweaponsstarttime = gettime();
    if (!isdefined(self.var_f6d3c3)) {
        self.var_f6d3c3 = [];
    }
}

// Namespace zm_weapons/zm_weapons
// Params 0, eflags: 0x2 linked
// Checksum 0xeaed973d, Offset: 0x15e0
// Size: 0x380
function function_cf3f5b23() {
    level.var_ec04a8a4 = [];
    level.var_c1f1b29a = [];
    itemspawnlist = getscriptbundle(#"weapon_rarity_map_list");
    foreach (item in itemspawnlist.itemlist) {
        point = getscriptbundle(item.itementry);
        if (isdefined(point.weapon)) {
            parentweapon = point.weapon.name;
            if (isdefined(item.var_7b0c7fe3) && isdefined(item.var_8261a18) && isdefined(item.var_3f8c08e3) && isdefined(parentweapon) && isdefined(item.var_23a1d10f)) {
                level.var_ec04a8a4[parentweapon] = [#"white":item.var_3f8c08e3, #"green":item.var_8261a18, #"blue":item.var_7b0c7fe3, #"purple":item.var_23a1d10f, #"orange":item.var_168e36e8];
            }
        }
    }
    var_24435603 = getscriptbundle(#"weapon_upgraded_rarity_map_list");
    foreach (item in var_24435603.itemlist) {
        point = getscriptbundle(item.itementry);
        if (isdefined(point.weapon)) {
            parentweapon = point.weapon.name;
            if (isdefined(item.var_7b0c7fe3) && isdefined(item.var_8261a18) && isdefined(item.var_3f8c08e3) && isdefined(parentweapon) && isdefined(item.var_23a1d10f)) {
                level.var_c1f1b29a[parentweapon] = [#"white":item.var_3f8c08e3, #"green":item.var_8261a18, #"blue":item.var_7b0c7fe3, #"purple":item.var_23a1d10f, #"orange":item.var_168e36e8];
            }
        }
    }
}

// Namespace zm_weapons/zm_weapons
// Params 7, eflags: 0x2 linked
// Checksum 0x3a2c97e7, Offset: 0x1968
// Size: 0x1254
function function_8fdfe5e4(weapon, item, var_d97184db, rarity = #"white", clipsize, var_9839b3b1, var_7fa2b50b) {
    self endoncallback(&function_898c65a1, #"death");
    if (isstring(var_d97184db) || ishash(var_d97184db)) {
        var_927c0921 = var_d97184db;
        if (weapon.weapclass === "pistol" && !is_true(weapon.isdualwield)) {
            if (math::cointoss(15)) {
                var_d97184db = function_c69910e2(weapon.name, rarity);
                if (!isdefined(var_d97184db)) {
                    var_d97184db = var_927c0921;
                }
            }
        }
        point = function_4ba8fde(var_d97184db);
    }
    self val::set(#"hash_55af237178580523", "disable_weapon_cycling");
    util::wait_network_frame();
    if (isplayer(self) && isalive(self) && isdefined(point) && isdefined(item)) {
        var_a0cc02cf = 0;
        var_96c71057 = 0;
        chest_weapon = 0;
        var_604af0c7 = 0;
        var_65cfac4a = 0;
        var_5302a1ef = 0;
        if (is_true(item.var_b3546c09)) {
            var_5302a1ef = 1;
        }
        if (isdefined(item.var_d688ad29)) {
            var_65cfac4a = 1;
        }
        if (isdefined(item.var_387e74f4)) {
            chest_weapon = 1;
        }
        if (isdefined(item.var_569199b9)) {
            var_604af0c7 = 1;
        }
        if (isdefined(item.var_a0cc02cf)) {
            var_a0cc02cf = 1;
        }
        if (isdefined(item.var_96c71057)) {
            var_96c71057 = 1;
        }
        if (isdefined(item.paplv)) {
            paplv = item.paplv;
        }
        if (isdefined(item.aat)) {
            aat_name = item.aat;
        }
        weaponoptions = item.weaponoptions;
        var_908f65ca = item.var_908f65ca;
        var_f879230e = self function_8cbd254d(weapon);
        var_c5bee8b6 = self function_ade49959(weapon);
        var_51fbc989 = getcamoindex(var_c5bee8b6);
        if (isdefined(point.itementry.var_a53e9db0)) {
            new_weapon = namespace_65181344::function_67456242(point.itementry);
            if (!isdefined(new_weapon)) {
                self val::reset(#"hash_55af237178580523", "disable_weapon_cycling");
                return;
            }
            if (isdefined(paplv) && isdefined(level.var_c1f1b29a)) {
                rootweapon = weapon.rootweapon;
                var_8114384d = level.var_c1f1b29a[rootweapon.name][rarity];
                if (!isdefined(var_8114384d)) {
                    self val::reset(#"hash_55af237178580523", "disable_weapon_cycling");
                    return;
                }
                var_27dbfbd7 = function_4ba8fde(var_8114384d);
                if (!isdefined(var_27dbfbd7)) {
                    self val::reset(#"hash_55af237178580523", "disable_weapon_cycling");
                    return;
                }
                var_f70c2a55 = item_drop::drop_item(0, var_27dbfbd7.itementry.weapon, 1, var_27dbfbd7.itementry.weapon.maxammo, var_27dbfbd7.id, self.origin, self.angles, 1);
                if (!isdefined(var_f70c2a55)) {
                    self val::reset(#"hash_55af237178580523", "disable_weapon_cycling");
                    return;
                }
                var_f70c2a55.hidetime = 1;
                var_f70c2a55 hide();
                var_f70c2a55.var_864ea466 = 1;
                drop_item = item_drop::drop_item(0, new_weapon, 1, new_weapon.maxammo, point.id, self.origin, self.angles, 1);
                if (!isdefined(drop_item)) {
                    self val::reset(#"hash_55af237178580523", "disable_weapon_cycling");
                    return;
                }
                drop_item.hidetime = 1;
                drop_item hide();
                drop_item.var_864ea466 = 1;
                if (isdefined(clipsize) && isdefined(var_9839b3b1)) {
                    var_f70c2a55.amount = clipsize;
                    var_f70c2a55.stockammo = var_9839b3b1;
                    if (isdefined(var_7fa2b50b)) {
                        var_f70c2a55.var_bce3d77a = var_7fa2b50b;
                    }
                }
                if (isentity(var_f70c2a55) && isentity(drop_item) && isdefined(drop_item.var_627c698b.attachments) && !isdefined(var_f70c2a55.attachments)) {
                    attachments = drop_item.var_627c698b.attachments;
                    foreach (attachment in attachments) {
                        var_41ade915 = item_world_util::function_6a0ee21a(attachment);
                        if (ishash(var_41ade915) || isstring(var_41ade915)) {
                            attachmentitem = function_4ba8fde(var_41ade915);
                            if (isdefined(attachmentitem)) {
                                namespace_a0d533d1::function_8b7b98f(var_f70c2a55, attachmentitem);
                            }
                        }
                    }
                } else {
                    self val::reset(#"hash_55af237178580523", "disable_weapon_cycling");
                    return;
                }
                item_world::consume_item(drop_item);
                var_f70c2a55.hidetime = 0;
                dropweapon = self item_inventory::get_current_weapon();
                var_5c695210 = function_9f1cc9a9(dropweapon);
                var_9f4fdf9c = item_world_util::function_f4a8d375(var_f70c2a55.id);
                self function_7df0d6b2(var_f70c2a55, var_9f4fdf9c, weaponoptions, undefined, var_908f65ca);
                var_bd31d7b2 = item_inventory::function_ec087745();
                while (var_bd31d7b2 == 32767) {
                    var_bd31d7b2 = item_inventory::function_ec087745();
                    util::wait_network_frame();
                }
                if (!isdefined(var_9f4fdf9c) || !isdefined(var_f70c2a55)) {
                    self val::reset(#"hash_55af237178580523", "disable_weapon_cycling");
                    return;
                }
                dropweapon = self item_inventory::function_b76f46a0(var_f70c2a55, var_bd31d7b2, 1);
                currentweapon = self item_inventory::function_6f73f57d(var_9f4fdf9c.rootweapon.name, var_5c695210);
                if (!is_true(isweapon(currentweapon))) {
                    currentweapon = self getcurrentweapon();
                    if (!is_true(isweapon(currentweapon))) {
                        self val::reset(#"hash_55af237178580523", "disable_weapon_cycling");
                        return;
                    }
                }
                var_ec0c35ac = item_inventory::function_230ceec4(currentweapon);
                if (!isdefined(var_ec0c35ac)) {
                    var_ec0c35ac = function_2aa19d13();
                }
                if (!isdefined(var_ec0c35ac) || !self hasweapon(currentweapon) || !isweapon(currentweapon)) {
                    self val::reset(#"hash_55af237178580523", "disable_weapon_cycling");
                    return;
                }
                if (isdefined(var_f879230e) && var_f879230e > 0) {
                    if (isweapon(currentweapon) && self hasweapon(currentweapon)) {
                        self function_40d6838f(currentweapon, 0);
                    }
                    if (isdefined(paplv) && isweapon(currentweapon)) {
                        self item_inventory::function_d92c6b5b(currentweapon, undefined, paplv);
                    }
                } else if (isdefined(var_51fbc989) && isweapon(currentweapon)) {
                    self setcamo(currentweapon, var_51fbc989);
                } else if (isdefined(paplv) && isweapon(currentweapon)) {
                    self item_inventory::function_d92c6b5b(currentweapon, undefined, paplv);
                }
                if (isdefined(var_ec0c35ac)) {
                    var_ec0c35ac function_9aaa198a(var_5302a1ef, var_a0cc02cf, var_96c71057, var_65cfac4a, chest_weapon, var_604af0c7);
                    if (isdefined(paplv)) {
                        var_ec0c35ac.paplv = paplv;
                    }
                    if (isdefined(aat_name)) {
                        function_37e9e0cb(var_ec0c35ac, var_ec0c35ac.itementry.weapon, aat_name, 0);
                    }
                }
            } else {
                drop_item = item_drop::drop_item(0, new_weapon, 1, new_weapon.maxammo, point.id, self.origin, self.angles, 1);
                if (!isdefined(drop_item)) {
                    self val::reset(#"hash_55af237178580523", "disable_weapon_cycling");
                    return;
                }
                drop_item.hidetime = 1;
                drop_item hide();
                drop_item.var_864ea466 = 1;
                drop_item.var_99628f67 = 1;
                if (isdefined(clipsize) && isdefined(var_9839b3b1)) {
                    drop_item.amount = clipsize;
                    drop_item.stockammo = var_9839b3b1;
                    if (isdefined(var_7fa2b50b)) {
                        drop_item.var_bce3d77a = var_7fa2b50b;
                    }
                }
                if (isentity(drop_item) && isdefined(drop_item.var_627c698b.attachments) && !isdefined(drop_item.attachments)) {
                    attachments = drop_item.var_627c698b.attachments;
                    foreach (attachment in attachments) {
                        var_41ade915 = item_world_util::function_6a0ee21a(attachment);
                        if (ishash(var_41ade915) || isstring(var_41ade915)) {
                            attachmentitem = function_4ba8fde(var_41ade915);
                            if (isdefined(attachmentitem)) {
                                namespace_a0d533d1::function_8b7b98f(drop_item, attachmentitem);
                            }
                        }
                    }
                } else {
                    self val::reset(#"hash_55af237178580523", "disable_weapon_cycling");
                    return;
                }
                drop_item.hidetime = 0;
                dropweapon = self item_inventory::get_current_weapon();
                var_5c695210 = function_9f1cc9a9(dropweapon);
                var_9f4fdf9c = item_world_util::function_f4a8d375(drop_item.id);
                self function_7df0d6b2(drop_item, var_9f4fdf9c, weaponoptions, undefined, var_908f65ca);
                var_bd31d7b2 = item_inventory::function_ec087745();
                while (var_bd31d7b2 == 32767) {
                    var_bd31d7b2 = item_inventory::function_ec087745();
                    util::wait_network_frame();
                }
                if (!isdefined(drop_item) || !isdefined(var_9f4fdf9c)) {
                    self val::reset(#"hash_55af237178580523", "disable_weapon_cycling");
                    return;
                }
                dropweapon = self item_inventory::function_b76f46a0(drop_item, var_bd31d7b2, 1);
                currentweapon = self item_inventory::function_6f73f57d(var_9f4fdf9c.rootweapon.name, var_5c695210);
                if (!isdefined(currentweapon)) {
                    self val::reset(#"hash_55af237178580523", "disable_weapon_cycling");
                    return;
                }
                var_ec0c35ac = item_inventory::function_230ceec4(currentweapon);
                if (!isdefined(var_ec0c35ac)) {
                    var_ec0c35ac = function_2aa19d13();
                }
                if (!isdefined(currentweapon)) {
                    self val::reset(#"hash_55af237178580523", "disable_weapon_cycling");
                    return;
                }
                if (!isweapon(currentweapon)) {
                    self val::reset(#"hash_55af237178580523", "disable_weapon_cycling");
                    return;
                }
                if (!isdefined(var_ec0c35ac) || !self hasweapon(currentweapon)) {
                    self val::reset(#"hash_55af237178580523", "disable_weapon_cycling");
                    return;
                }
                if (isdefined(var_ec0c35ac)) {
                    var_ec0c35ac function_9aaa198a(var_5302a1ef, var_a0cc02cf, var_96c71057, var_65cfac4a, chest_weapon, var_604af0c7);
                }
                if (isdefined(var_f879230e) && var_f879230e > 0 && self hasweapon(currentweapon)) {
                    self function_40d6838f(currentweapon, 0);
                }
                if (isdefined(aat_name) && isdefined(var_ec0c35ac)) {
                    function_37e9e0cb(var_ec0c35ac, var_ec0c35ac.itementry.weapon, aat_name, 0);
                }
            }
        }
        self val::reset(#"hash_55af237178580523", "disable_weapon_cycling");
        self notify(#"hash_5cd57762f792396b");
        return;
    }
    self val::reset(#"hash_55af237178580523", "disable_weapon_cycling");
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0xcab98322, Offset: 0x2bc8
// Size: 0x11e
function function_d4f870ec(item_rarity) {
    switch (item_rarity) {
    case #"resource":
    case #"loadout":
        rarity = #"white";
        break;
    case #"uncommon":
        rarity = #"green";
        break;
    case #"rare":
        rarity = #"blue";
        break;
    case #"epic":
        rarity = #"purple";
        break;
    case #"legendary":
        rarity = #"orange";
        break;
    default:
        rarity = item_rarity;
        break;
    }
    return rarity;
}

// Namespace zm_weapons/zm_weapons
// Params 5, eflags: 0x2 linked
// Checksum 0x56fabd40, Offset: 0x2cf0
// Size: 0x854
function function_17e9ed37(rarity = #"white", clipsize, var_9839b3b1, var_7fa2b50b, var_7b1ab4e4 = 0) {
    self endoncallback(&function_898c65a1, #"death");
    weapon = self getcurrentweapon();
    rarity = function_d4f870ec(rarity);
    self val::set(#"hash_55af237178580523", "disable_weapon_cycling");
    waitframe(1);
    if (isdefined(weapon) && isdefined(weapon.rootweapon)) {
        item = self item_inventory::function_230ceec4(weapon);
        weaponoptions = self function_ade49959(weapon);
        var_51fbc989 = getcamoindex(weaponoptions);
        if (isdefined(item)) {
            if (is_true(item.var_b3546c09) && rarity === #"orange") {
                self zm_stats::increment_challenge_stat(#"hash_4568ec6d243eafa1");
            }
            var_a0cc02cf = 0;
            var_96c71057 = 0;
            chest_weapon = 0;
            var_604af0c7 = 0;
            var_65cfac4a = 0;
            var_5302a1ef = 0;
            if (isdefined(item.var_d688ad29)) {
                var_65cfac4a = 1;
            }
            if (isdefined(item.var_387e74f4)) {
                chest_weapon = 1;
            }
            if (isdefined(item.var_569199b9)) {
                var_604af0c7 = 1;
            }
            if (isdefined(item.var_a0cc02cf)) {
                var_a0cc02cf = 1;
            }
            if (isdefined(item.var_96c71057)) {
                var_96c71057 = 1;
            }
            if (isdefined(item.paplv)) {
                paplv = item.paplv;
            }
            if (isdefined(item.aat)) {
                aat_name = item.aat;
            }
            if (is_true(item.var_b3546c09) || item.itementry.rarity === #"loadout") {
                var_5302a1ef = 1;
            }
            rootweapon = weapon.rootweapon;
            if (isdefined(level.var_c1f1b29a[rootweapon.name]) && isdefined(level.var_c1f1b29a[rootweapon.name][rarity]) || isdefined(level.var_ec04a8a4[rootweapon.name]) && isdefined(level.var_ec04a8a4[rootweapon.name][rarity])) {
                if (isdefined(paplv)) {
                    var_8114384d = level.var_c1f1b29a[rootweapon.name][rarity];
                } else {
                    var_8114384d = level.var_ec04a8a4[rootweapon.name][rarity];
                }
                if (!isdefined(var_8114384d)) {
                    self val::reset(#"hash_55af237178580523", "disable_weapon_cycling");
                    return;
                }
                point = function_4ba8fde(var_8114384d);
                if (!isdefined(point)) {
                    self val::reset(#"hash_55af237178580523", "disable_weapon_cycling");
                    return;
                }
                var_bd31d7b2 = item_inventory::function_ec087745();
                point.hidetime = 0;
                dropweapon = self item_inventory::get_current_weapon();
                var_5c695210 = function_9f1cc9a9(dropweapon);
                if (isdefined(clipsize) && isdefined(var_9839b3b1)) {
                    point.amount = clipsize;
                    point.stockammo = var_9839b3b1;
                    if (isdefined(var_7fa2b50b)) {
                        point.var_bce3d77a = var_7fa2b50b;
                    }
                }
                point.var_99628f67 = 1;
                weaponoptions = item.weaponoptions;
                var_e91aba42 = item.var_e91aba42;
                var_908f65ca = item.var_908f65ca;
                self function_7df0d6b2(point, weapon, weaponoptions, var_e91aba42, var_908f65ca);
                dropweapon = item_inventory::function_9d102bbd(point, var_bd31d7b2, 1);
                currentweapon = self item_inventory::function_6f73f57d(point.var_627c698b.rootweapon.name, var_5c695210);
                if (isdefined(var_51fbc989) && isdefined(currentweapon) && isplayer(self)) {
                    self setcamo(currentweapon, var_51fbc989);
                }
                var_ec0c35ac = item_inventory::function_230ceec4(currentweapon);
                if (isdefined(var_ec0c35ac)) {
                    var_ec0c35ac function_9aaa198a(var_5302a1ef, var_a0cc02cf, var_96c71057, var_65cfac4a, chest_weapon, var_604af0c7);
                    if (isdefined(paplv)) {
                        var_ec0c35ac.paplv = paplv;
                    }
                    if (isdefined(aat_name)) {
                        function_37e9e0cb(var_ec0c35ac, var_ec0c35ac.itementry.weapon, aat_name, 0);
                    }
                }
                if (!is_true(var_7b1ab4e4)) {
                    switch (rarity) {
                    case #"white":
                        break;
                    case #"green":
                        var_ee3c60e = #"hash_393b11eaff09fb94";
                        break;
                    case #"blue":
                        var_ee3c60e = #"hash_77e066ee890f14fe";
                        break;
                    case #"purple":
                        var_ee3c60e = #"hash_1973a95f411b3bdf";
                        break;
                    case #"orange":
                        var_ee3c60e = #"hash_5a8770083150213";
                        break;
                    default:
                        assert(0, "<unknown string>");
                        break;
                    }
                    if (isdefined(var_ee3c60e)) {
                        level thread popups::displayteammessagetoteam(var_ee3c60e, self, self.team, currentweapon.displayname);
                    }
                }
                self notify(#"hash_3713641b67661d30");
            }
        }
        self val::reset(#"hash_55af237178580523", "disable_weapon_cycling");
        return;
    }
    self val::reset(#"hash_55af237178580523", "disable_weapon_cycling");
}

// Namespace zm_weapons/zm_weapons
// Params 0, eflags: 0x2 linked
// Checksum 0x6ba382ab, Offset: 0x3550
// Size: 0x308
function function_30b08f95() {
    level.var_29d88fe5 = [];
    var_a559259f = [];
    itemspawnlist = getscriptbundle(#"random_attachment_weapons_list");
    var_70f9bc79 = getscriptbundle(#"random_attachment_weapons_common_list");
    foreach (item in var_70f9bc79.itemlist) {
        point = getscriptbundle(item.itementry);
        if (isdefined(point.weapon)) {
            parentweapon = point.weapon.name;
            if (isdefined(parentweapon) && isdefined(item.var_3f8c08e3)) {
                var_a559259f[parentweapon] = item.var_3f8c08e3;
            }
        }
    }
    foreach (item in itemspawnlist.itemlist) {
        point = getscriptbundle(item.itementry);
        if (isdefined(point.weapon)) {
            parentweapon = point.weapon.name;
            if (isdefined(item.var_23a1d10f) && isdefined(item.var_7b0c7fe3) && isdefined(item.var_8261a18) && isdefined(item.var_3f8c08e3) && isdefined(var_a559259f[parentweapon]) && isdefined(parentweapon) && isdefined(item.var_168e36e8)) {
                level.var_29d88fe5[parentweapon] = [#"white":var_a559259f[parentweapon], #"green":item.var_3f8c08e3, #"blue":item.var_8261a18, #"purple":item.var_7b0c7fe3, #"orange":item.var_23a1d10f, #"gold":item.var_168e36e8];
            }
        }
    }
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x53753620, Offset: 0x3860
// Size: 0x34
function function_898c65a1(*params) {
    self val::reset(#"hash_55af237178580523", "disable_weapon_cycling");
}

// Namespace zm_weapons/zm_weapons
// Params 0, eflags: 0x2 linked
// Checksum 0xcbdf2abe, Offset: 0x38a0
// Size: 0x17c
function function_ec38915a() {
    if (!isdefined(level.var_5a069e6)) {
        level.var_5a069e6 = [];
    }
    if (!isdefined(level.var_44e0d625)) {
        level.var_44e0d625 = [];
    }
    function_8005e7f3(getweapon(#"smg_handling_t8"), getweapon(#"smg_handling_t8_dw"));
    function_8005e7f3(getweapon(#"smg_handling_t8_upgraded"), getweapon(#"smg_handling_t8_upgraded_dw"));
    function_8005e7f3(getweapon(#"special_ballisticknife_t8_dw"), getweapon(#"special_ballisticknife_t8_dw_dw"));
    function_8005e7f3(getweapon(#"special_ballisticknife_t8_dw_upgraded"), getweapon(#"special_ballisticknife_t8_dw_upgraded_dw"));
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x2 linked
// Checksum 0x8ec09bfa, Offset: 0x3a28
// Size: 0x5c
function function_8005e7f3(w_base, var_ebc2aad) {
    if (w_base != level.weaponnone && var_ebc2aad != level.weaponnone) {
        level.var_5a069e6[w_base] = var_ebc2aad;
        level.var_44e0d625[var_ebc2aad] = w_base;
    }
}

// Namespace zm_weapons/player_gunchallengecomplete
// Params 1, eflags: 0x20
// Checksum 0x5341b0d9, Offset: 0x3a90
// Size: 0x1d4
function event_handler[player_gunchallengecomplete] player_gunchallengecomplete(s_event) {
    if (s_event.is_lastrank) {
        var_8e617ca1 = 0;
        a_w_guns = get_guns();
        foreach (weapon in a_w_guns) {
            str_weapon = weapon.name;
            n_item_index = getbaseweaponitemindex(weapon);
            var_cc074f5b = stats::get_stat(#"ranked_item_stats", str_weapon, #"xp");
            if (isdefined(var_cc074f5b)) {
                var_6b792d1d = function_33cc663e(str_weapon);
                var_56ccc9fe = stats::get_stat(#"ranked_item_stats", str_weapon, #"plevel");
                if (isdefined(var_6b792d1d) && isdefined(var_56ccc9fe)) {
                    if (var_cc074f5b >= var_6b792d1d || var_56ccc9fe >= 1) {
                        var_8e617ca1++;
                    }
                }
            }
        }
        if (var_8e617ca1 >= 25) {
            zm_utility::function_659819fa(#"zm_trophy_gold");
        }
    }
}

// Namespace zm_weapons/zm_weapons
// Params 0, eflags: 0x2 linked
// Checksum 0xd96a5672, Offset: 0x3c70
// Size: 0x15a
function get_guns() {
    a_w_guns = [];
    foreach (s_weapon in level.zombie_weapons) {
        switch (s_weapon.weapon_classname) {
        case 0:
        case #"equipment":
        case #"shield":
        case #"melee":
            continue;
        }
        if (is_wonder_weapon(s_weapon.weapon)) {
            continue;
        }
        if (!isdefined(a_w_guns)) {
            a_w_guns = [];
        } else if (!isarray(a_w_guns)) {
            a_w_guns = array(a_w_guns);
        }
        a_w_guns[a_w_guns.size] = s_weapon.weapon;
    }
    return a_w_guns;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0xa7914968, Offset: 0x3dd8
// Size: 0xb0
function function_14590040(str_weapon) {
    var_9bea1b6 = [];
    for (i = 0; i < 16; i++) {
        var_4a3def14 = tablelookup(#"gamedata/weapons/zm/zm_gunlevels.csv", 2, str_weapon, 0, i, 1);
        if ("" == var_4a3def14) {
            break;
        }
        var_9bea1b6[i] = int(var_4a3def14);
    }
    return var_9bea1b6;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x4afb9e7f, Offset: 0x3e90
// Size: 0x3e
function function_33cc663e(str_weapon) {
    var_9bea1b6 = function_14590040(str_weapon);
    return var_9bea1b6[var_9bea1b6.size - 1];
}

// Namespace zm_weapons/zm_weapons
// Params 0, eflags: 0x2 linked
// Checksum 0x611331b7, Offset: 0x3ed8
// Size: 0xd0
function watchforgrenadeduds() {
    self endon(#"death", #"disconnect");
    while (true) {
        waitresult = self waittill(#"grenade_fire");
        grenade = waitresult.projectile;
        weapon = waitresult.weapon;
        if (!zm_equipment::is_equipment(weapon) && !zm_loadout::is_placeable_mine(weapon)) {
            grenade thread checkgrenadefordud(weapon, 1, self);
        }
    }
}

// Namespace zm_weapons/zm_weapons
// Params 0, eflags: 0x2 linked
// Checksum 0x4c5fb3b3, Offset: 0x3fb0
// Size: 0xa0
function watchforgrenadelauncherduds() {
    self endon(#"death", #"disconnect");
    while (true) {
        waitresult = self waittill(#"grenade_launcher_fire");
        grenade = waitresult.projectile;
        weapon = waitresult.weapon;
        grenade thread checkgrenadefordud(weapon, 0, self);
    }
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x2 linked
// Checksum 0x91988ec6, Offset: 0x4058
// Size: 0x40
function grenade_safe_to_throw(player, weapon) {
    if (isdefined(level.grenade_safe_to_throw)) {
        return self [[ level.grenade_safe_to_throw ]](player, weapon);
    }
    return 1;
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x2 linked
// Checksum 0x45f2a228, Offset: 0x40a0
// Size: 0x40
function grenade_safe_to_bounce(player, weapon) {
    if (isdefined(level.grenade_safe_to_bounce)) {
        return self [[ level.grenade_safe_to_bounce ]](player, weapon);
    }
    return 1;
}

// Namespace zm_weapons/zm_weapons
// Params 0, eflags: 0x2 linked
// Checksum 0x25c0b57, Offset: 0x40e8
// Size: 0x64
function makegrenadedudanddestroy() {
    self endon(#"death");
    self notify(#"grenade_dud");
    self makegrenadedud();
    wait(3);
    if (isdefined(self)) {
        self delete();
    }
}

// Namespace zm_weapons/zm_weapons
// Params 3, eflags: 0x2 linked
// Checksum 0x45fa4788, Offset: 0x4158
// Size: 0x102
function checkgrenadefordud(weapon, *isthrowngrenade, player) {
    self endon(#"death");
    player endon(#"zombify");
    if (!isdefined(self)) {
        return;
    }
    if (!self grenade_safe_to_throw(player, isthrowngrenade)) {
        self thread makegrenadedudanddestroy();
        return;
    }
    for (;;) {
        self waittilltimeout(0.25, #"grenade_bounce", #"stationary", #"death", #"zombify");
        if (!self grenade_safe_to_bounce(player, isthrowngrenade)) {
            self thread makegrenadedudanddestroy();
            return;
        }
    }
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0xffa61382, Offset: 0x4268
// Size: 0x34
function get_nonalternate_weapon(weapon) {
    if (is_true(weapon.isaltmode)) {
        return weapon.altweapon;
    }
    return weapon;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x0
// Checksum 0xddfc071, Offset: 0x42a8
// Size: 0x4a
function function_af29d744(weapon) {
    if (isdefined(weapon)) {
        if (weapon.isaltmode) {
            weapon = weapon.altweapon;
        }
        weapon = function_386dacbc(weapon);
    }
    return weapon;
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x2 linked
// Checksum 0xedbf42cc, Offset: 0x4300
// Size: 0xce
function function_93cd8e76(weapon, var_1011fc73 = 0) {
    if (weapon.inventorytype === "dwlefthand") {
        weapon = weapon.dualwieldweapon;
    }
    if (isdefined(weapon)) {
        if (weapon.isaltmode) {
            weapon = weapon.altweapon;
        }
        weapon = weapon.rootweapon;
        if (isdefined(level.var_44e0d625[weapon])) {
            weapon = level.var_44e0d625[weapon];
        }
    }
    if (var_1011fc73 && isdefined(level.zombie_weapons_upgraded[weapon])) {
        return level.zombie_weapons_upgraded[weapon];
    }
    return weapon;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x5cf6ec63, Offset: 0x43d8
// Size: 0xa0
function switch_from_alt_weapon(weapon) {
    if (weapon.ischargeshot) {
        return weapon;
    }
    alt = get_nonalternate_weapon(weapon);
    if (alt != weapon) {
        if (!weaponhasattachment(weapon, "dualoptic")) {
            self switchtoweaponimmediate(alt);
            self waittilltimeout(1, #"weapon_change_complete");
        }
        return alt;
    }
    return weapon;
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x2 linked
// Checksum 0x374cf51e, Offset: 0x4480
// Size: 0x44
function give_start_weapons(*takeallweapons, *alreadyspawned) {
    self zm_loadout::init_player_offhand_weapons();
    self zm_loadout::give_start_weapon(1);
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x5cb23f55, Offset: 0x44d0
// Size: 0x2c
function give_fallback_weapon(immediate = 0) {
    zm_melee_weapon::give_fallback_weapon(immediate);
}

// Namespace zm_weapons/zm_weapons
// Params 0, eflags: 0x2 linked
// Checksum 0x9bf210e5, Offset: 0x4508
// Size: 0x14
function take_fallback_weapon() {
    zm_melee_weapon::take_fallback_weapon();
}

// Namespace zm_weapons/zm_weapons
// Params 3, eflags: 0x2 linked
// Checksum 0x1dacd441, Offset: 0x4528
// Size: 0x244
function switch_back_primary_weapon(oldprimary, immediate = 0, var_6d4494f9 = 0) {
    if (is_true(self.laststand)) {
        return;
    }
    if (!isdefined(oldprimary) || oldprimary == level.weaponnone || oldprimary.isflourishweapon || zm_loadout::is_melee_weapon(oldprimary) || zm_loadout::is_placeable_mine(oldprimary) || zm_loadout::is_lethal_grenade(oldprimary) || zm_loadout::is_tactical_grenade(oldprimary, !var_6d4494f9) || !self hasweapon(oldprimary)) {
        oldprimary = undefined;
    } else if ((oldprimary.isheroweapon || oldprimary.isgadget) && (!isdefined(self.hero_power) || self.hero_power <= 0)) {
        oldprimary = undefined;
    }
    primaryweapons = self getweaponslistprimaries();
    if (isdefined(oldprimary) && (isinarray(primaryweapons, oldprimary) || oldprimary.isriotshield && var_6d4494f9)) {
        if (immediate) {
            self switchtoweaponimmediate(oldprimary);
        } else {
            self switchtoweapon(oldprimary);
        }
        return;
    }
    if (primaryweapons.size > 0) {
        if (immediate) {
            self switchtoweaponimmediate();
        } else {
            self switchtoweapon();
        }
        return;
    }
    give_fallback_weapon(immediate);
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0xef45f072, Offset: 0x4778
// Size: 0x9c
function updatelastheldweapontimingszm(newtime) {
    if (isdefined(self.currentweapon) && isdefined(self.currenttime)) {
        curweapon = self.currentweapon;
        totaltime = int((newtime - self.currenttime) / 1000);
        if (totaltime > 0) {
            self stats::function_e24eec31(curweapon, #"timeused", totaltime);
        }
    }
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x7599c2f0, Offset: 0x4820
// Size: 0x8e
function updateweapontimingszm(newtime) {
    if (isbot(self)) {
        return;
    }
    updatelastheldweapontimingszm(newtime);
    if (!isdefined(self.staticweaponsstarttime)) {
        return;
    }
    totaltime = int((newtime - self.staticweaponsstarttime) / 1000);
    if (totaltime < 0) {
        return;
    }
    self.staticweaponsstarttime = newtime;
}

// Namespace zm_weapons/zm_weapons
// Params 0, eflags: 0x2 linked
// Checksum 0xe907e896, Offset: 0x48b8
// Size: 0x8
function default_check_firesale_loc_valid_func() {
    return true;
}

// Namespace zm_weapons/zm_weapons
// Params 13, eflags: 0x2 linked
// Checksum 0xecbf99da, Offset: 0x48c8
// Size: 0x39c
function add_zombie_weapon(weapon_name, upgrade_name, is_ee, cost, weaponvo, weaponvoresp, ammo_cost, create_vox, weapon_class, is_wonder_weapon, tier = 0, in_box, element) {
    weapon = getweapon(weapon_name);
    upgrade = undefined;
    if (isdefined(upgrade_name)) {
        upgrade = getweapon(upgrade_name);
    }
    if (isdefined(level.zombie_include_weapons) && !isdefined(level.zombie_include_weapons[weapon])) {
        return;
    }
    struct = spawnstruct();
    if (!isdefined(level.zombie_weapons)) {
        level.zombie_weapons = [];
    }
    if (!isdefined(level.zombie_weapons_upgraded)) {
        level.zombie_weapons_upgraded = [];
    }
    if (isdefined(upgrade_name)) {
        level.zombie_weapons_upgraded[upgrade] = weapon;
    }
    struct.weapon = weapon;
    struct.upgrade = upgrade;
    struct.weapon_classname = weapon_class;
    struct.hint = #"hash_60606b68e93a29c8";
    struct.cost = cost;
    struct.vox = weaponvo;
    struct.vox_response = weaponvoresp;
    struct.is_wonder_weapon = is_wonder_weapon;
    struct.tier = tier;
    struct.item_entry = weapon_name + "_item_sr";
    struct.element = isdefined(element) && element != #"" ? element : undefined;
    if (is_true(is_wonder_weapon)) {
        struct.var_51344511 = [];
    }
    println("<unknown string>" + function_9e72a96(weapon_name));
    struct.is_in_box = level.zombie_include_weapons[weapon];
    if (!isdefined(ammo_cost) || ammo_cost == 0) {
        ammo_cost = zm_utility::round_up_to_ten(int(cost * 0.5));
    }
    struct.ammo_cost = ammo_cost;
    if (weapon.isemp || isdefined(upgrade) && upgrade.isemp) {
        level.should_watch_for_emp = 1;
    }
    level.zombie_weapons[weapon] = struct;
    if (isdefined(create_vox)) {
    }
    /#
        if (isdefined(level.devgui_add_weapon) && (!is_ee || getdvarint(#"zm_debug_ee", 0))) {
            level thread [[ level.devgui_add_weapon ]](weapon, upgrade, in_box, cost, weaponvo, weaponvoresp, ammo_cost);
        }
    #/
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x7a645ebf, Offset: 0x4c70
// Size: 0x56
function is_weapon_included(weapon) {
    if (!isdefined(level.zombie_weapons)) {
        return false;
    }
    weapon = get_nonalternate_weapon(weapon);
    return isdefined(level.zombie_weapons[function_386dacbc(weapon)]);
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x6be3d1c3, Offset: 0x4cd0
// Size: 0x68
function is_weapon_or_base_included(weapon) {
    weapon = get_nonalternate_weapon(weapon);
    return isdefined(level.zombie_weapons[function_386dacbc(weapon)]) || isdefined(level.zombie_weapons[get_base_weapon(weapon)]);
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x2 linked
// Checksum 0xe54611a6, Offset: 0x4d40
// Size: 0x94
function include_zombie_weapon(weapon_name, in_box) {
    if (!isdefined(level.zombie_include_weapons)) {
        level.zombie_include_weapons = [];
    }
    if (!isdefined(in_box)) {
        in_box = 1;
    }
    println("<unknown string>" + function_9e72a96(weapon_name));
    level.zombie_include_weapons[getweapon(weapon_name)] = in_box;
}

// Namespace zm_weapons/zm_weapons
// Params 0, eflags: 0x2 linked
// Checksum 0x5c4d8353, Offset: 0x4de0
// Size: 0x10e
function init_weapons() {
    level.var_c60359dc = [];
    var_8e01336 = getdvarint(#"hash_4fdf506c770b343", 0);
    switch (var_8e01336) {
    default:
        var_4ef031c9 = #"hash_2298893b58cc2885";
        break;
    }
    load_weapon_spec_from_table(var_4ef031c9, 0);
    if (isdefined(level.var_d0ab70a2)) {
        load_weapon_spec_from_table(level.var_d0ab70a2, 0);
    }
    level thread function_350ee41();
    level flag::set("zm_weapons_table_loaded");
    level.var_c60359dc = undefined;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x6 linked
// Checksum 0x1754487a, Offset: 0x4ef8
// Size: 0x1a0
function private function_a2ce802c(list) {
    var_ecce48b5 = [];
    if (isdefined(level.var_ee110db8[list])) {
        list = level.var_ee110db8[list];
    }
    s_bundle = getscriptbundle(list);
    foreach (s_item in s_bundle.itemlist) {
        itementry = s_item.itementry;
        if (isdefined(level.var_ee110db8[itementry])) {
            itementry = level.var_ee110db8[itementry];
        } else if (isdefined(level.itemreplacement[itementry])) {
            itementry = level.itemreplacement[itementry];
        }
        if (!isdefined(var_ecce48b5)) {
            var_ecce48b5 = [];
        } else if (!isarray(var_ecce48b5)) {
            var_ecce48b5 = array(var_ecce48b5);
        }
        var_ecce48b5[var_ecce48b5.size] = itementry;
    }
    level.var_4da246c[list] = arraycopy(var_ecce48b5);
}

// Namespace zm_weapons/zm_weapons
// Params 0, eflags: 0x6 linked
// Checksum 0x7b15651d, Offset: 0x50a0
// Size: 0x6c4
function private function_350ee41() {
    if (!isdefined(level.var_4da246c)) {
        level.var_4da246c = [];
    }
    if (!isdefined(level.str_magicbox_weapon_itemspawnlist)) {
        level.str_magicbox_weapon_itemspawnlist = #"zm_magicbox_weapons_list";
    }
    if (!isdefined(level.var_e2f02558)) {
        level.var_e2f02558 = #"zm_magicbox_weapon_pistols_list";
    }
    if (!isdefined(level.var_430d4cfe)) {
        level.var_430d4cfe = #"zm_magicbox_weapon_shotgun_list";
    }
    if (!isdefined(level.var_3d802d78)) {
        level.var_3d802d78 = #"zm_magicbox_weapon_lmg_list";
    }
    if (!isdefined(level.var_5793d07d)) {
        level.var_5793d07d = #"zm_magicbox_weapon_smg_list";
    }
    if (!isdefined(level.var_5396aa34)) {
        level.var_5396aa34 = #"zm_magicbox_weapon_ar_list";
    }
    if (!isdefined(level.var_887d12df)) {
        level.var_887d12df = #"zm_magicbox_weapon_tr_list";
    }
    if (!isdefined(level.var_5cf89c5c)) {
        level.var_5cf89c5c = #"zm_magicbox_weapon_sniper_list";
    }
    if (!isdefined(level.var_95f4d593)) {
        level.var_95f4d593 = #"zm_magicbox_weapon_misc_list";
    }
    function_a2ce802c(level.var_e2f02558);
    function_a2ce802c(level.var_430d4cfe);
    function_a2ce802c(level.var_3d802d78);
    function_a2ce802c(level.var_5793d07d);
    function_a2ce802c(level.var_5396aa34);
    function_a2ce802c(level.var_887d12df);
    function_a2ce802c(level.var_5cf89c5c);
    function_a2ce802c(level.var_95f4d593);
    if (!isdefined(level.var_c0c63390)) {
        level.var_c0c63390 = [];
    }
    s_bundle = getscriptbundle(level.str_magicbox_weapon_itemspawnlist);
    totalweight = 0;
    foreach (s_item in s_bundle.itemlist) {
        totalweight += s_item.minweight;
        level.var_c0c63390[s_item.itementry] = totalweight;
    }
    if (!isdefined(level.str_magicbox_named_itemspawnlist)) {
        level.str_magicbox_named_itemspawnlist = "zm_magicbox_named_weapons_parent";
    }
    if (isdefined(level.var_ee110db8[#"zm_magicbox_named_weapons_parent"])) {
        level.str_magicbox_named_itemspawnlist = level.var_ee110db8[#"zm_magicbox_named_weapons_parent"];
    }
    s_bundle = getscriptbundle(level.str_magicbox_named_itemspawnlist);
    foreach (s_item in s_bundle.itemlist) {
        itementry = s_item.itementry;
        if (isdefined(level.var_ee110db8[itementry])) {
            itementry = level.var_ee110db8[itementry];
        } else if (isdefined(level.itemreplacement[itementry])) {
            itementry = level.itemreplacement[itementry];
        }
        if (!isdefined(level.var_597e3b64)) {
            level.var_597e3b64 = [];
        } else if (!isarray(level.var_597e3b64)) {
            level.var_597e3b64 = array(level.var_597e3b64);
        }
        level.var_597e3b64[level.var_597e3b64.size] = itementry;
    }
    if (!isdefined(level.str_magicbox_support_itemspawnlist)) {
        level.str_magicbox_support_itemspawnlist = "zm_magicbox_scorestreak_list";
    }
    if (isdefined(level.var_ee110db8[#"zm_magicbox_scorestreak_list"])) {
        level.str_magicbox_support_itemspawnlist = level.var_ee110db8[#"zm_magicbox_scorestreak_list"];
    }
    s_bundle = getscriptbundle(level.str_magicbox_support_itemspawnlist);
    foreach (s_item in s_bundle.itemlist) {
        itementry = s_item.itementry;
        if (isdefined(level.var_ee110db8[itementry])) {
            itementry = level.var_ee110db8[itementry];
        } else if (isdefined(level.itemreplacement[itementry])) {
            itementry = level.itemreplacement[itementry];
        }
        if (!isdefined(level.var_e5067476)) {
            level.var_e5067476 = [];
        } else if (!isarray(level.var_e5067476)) {
            level.var_e5067476 = array(level.var_e5067476);
        }
        level.var_e5067476[level.var_e5067476.size] = itementry;
    }
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x2 linked
// Checksum 0x8bfa3ad0, Offset: 0x5770
// Size: 0x44
function add_limited_weapon(weapon_name, amount) {
    if (amount == 0) {
        return;
    }
    level.limited_weapons[getweapon(weapon_name)] = amount;
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x2 linked
// Checksum 0xd124cebb, Offset: 0x57c0
// Size: 0x480
function limited_weapon_below_quota(weapon, ignore_player) {
    if (isdefined(level.limited_weapons[weapon])) {
        pap_machines = undefined;
        if (!isdefined(pap_machines)) {
            pap_machines = getentarray("zm_pack_a_punch", "targetname");
        }
        if (is_true(level.no_limited_weapons)) {
            return false;
        }
        upgradedweapon = weapon;
        if (isdefined(level.zombie_weapons[weapon]) && isdefined(level.zombie_weapons[weapon].upgrade)) {
            upgradedweapon = level.zombie_weapons[weapon].upgrade;
        }
        players = getplayers();
        count = 0;
        limit = level.limited_weapons[weapon];
        for (i = 0; i < players.size; i++) {
            if (isdefined(ignore_player) && ignore_player == players[i]) {
                continue;
            }
            if (players[i] has_weapon_or_upgrade(weapon)) {
                count++;
                if (count >= limit) {
                    return false;
                }
            }
        }
        foreach (machine in pap_machines) {
            if (!isdefined(machine)) {
                continue;
            }
            if (!isdefined(machine.unitrigger_stub)) {
                continue;
            }
            if (isdefined(machine.unitrigger_stub.current_weapon) && (machine.unitrigger_stub.current_weapon == weapon || machine.unitrigger_stub.current_weapon == upgradedweapon)) {
                count++;
                if (count >= limit) {
                    return false;
                }
            }
        }
        foreach (chest in level.chests) {
            if (!isdefined(chest)) {
                continue;
            }
            if (!isdefined(chest.zbarrier)) {
                continue;
            }
            if (isdefined(chest.zbarrier.weapon) && chest.zbarrier.weapon == weapon) {
                count++;
                if (count >= limit) {
                    return false;
                }
            }
        }
        if (isdefined(level.custom_limited_weapon_checks)) {
            foreach (check in level.custom_limited_weapon_checks) {
                count += [[ check ]](weapon);
            }
            if (count >= limit) {
                return false;
            }
        }
        if (isdefined(level.random_weapon_powerups)) {
            for (powerupindex = 0; powerupindex < level.random_weapon_powerups.size; powerupindex++) {
                if (isdefined(level.random_weapon_powerups[powerupindex]) && level.random_weapon_powerups[powerupindex].base_weapon == weapon) {
                    count++;
                    if (count >= limit) {
                        return false;
                    }
                }
            }
        }
    }
    return true;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x0
// Checksum 0x659262fe, Offset: 0x5c48
// Size: 0x44
function add_custom_limited_weapon_check(callback) {
    if (!isdefined(level.custom_limited_weapon_checks)) {
        level.custom_limited_weapon_checks = [];
    }
    level.custom_limited_weapon_checks[level.custom_limited_weapon_checks.size] = callback;
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x0
// Checksum 0x179b5178, Offset: 0x5c98
// Size: 0x54
function add_weapon_to_content(weapon_name, package) {
    if (!isdefined(level.content_weapons)) {
        level.content_weapons = [];
    }
    level.content_weapons[getweapon(weapon_name)] = package;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0xdcb2d6df, Offset: 0x5cf8
// Size: 0x58
function player_can_use_content(weapon) {
    if (isdefined(level.content_weapons)) {
        if (isdefined(level.content_weapons[weapon])) {
            return self hasdlcavailable(level.content_weapons[weapon]);
        }
    }
    return 1;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x71097c16, Offset: 0x5d58
// Size: 0x72
function get_weapon_hint(weapon) {
    assert(isdefined(level.zombie_weapons[weapon]), function_9e72a96(weapon.name) + "<unknown string>");
    return level.zombie_weapons[weapon].hint;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x2dc4d77a, Offset: 0x5dd8
// Size: 0x72
function get_weapon_cost(weapon) {
    assert(isdefined(level.zombie_weapons[weapon]), function_9e72a96(weapon.name) + "<unknown string>");
    return level.zombie_weapons[weapon].cost;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x6e34fde2, Offset: 0x5e58
// Size: 0x154
function function_5d47055e(str_rarity) {
    switch (str_rarity) {
    case #"resource":
    case #"none":
    case #"white":
    case #"loadout":
        return 0;
    case #"green":
    case #"uncommon":
        return 500;
    case #"blue":
    case #"rare":
        return 1500;
    case #"purple":
    case #"epic":
        return 2500;
    case #"yellow":
    case #"ultra":
    case #"gold":
    case #"orange":
    case #"named":
    case #"legendary":
        return 3500;
    }
    return 0;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x1ee48530, Offset: 0x5fb8
// Size: 0x72
function get_ammo_cost(weapon) {
    assert(isdefined(level.zombie_weapons[weapon]), function_9e72a96(weapon.name) + "<unknown string>");
    return level.zombie_weapons[weapon].ammo_cost;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x0
// Checksum 0xbe5b6408, Offset: 0x6038
// Size: 0x94
function get_upgraded_ammo_cost(weapon) {
    assert(isdefined(level.zombie_weapons[weapon]), function_9e72a96(weapon.name) + "<unknown string>");
    if (isdefined(level.zombie_weapons[weapon].upgraded_ammo_cost)) {
        return level.zombie_weapons[weapon].upgraded_ammo_cost;
    }
    return 4500;
}

// Namespace zm_weapons/zm_weapons
// Params 3, eflags: 0x0
// Checksum 0xc266fe53, Offset: 0x60d8
// Size: 0x13e
function get_ammo_cost_for_weapon(w_current, n_base_non_wallbuy_cost = 750, n_upgraded_non_wallbuy_cost = 5000) {
    w_root = function_386dacbc(w_current);
    if (is_weapon_upgraded(w_root)) {
        w_root = get_base_weapon(w_root);
    }
    if (self has_upgrade(w_root)) {
        if (zm_wallbuy::is_wallbuy(w_root)) {
            n_ammo_cost = 4000;
        } else {
            n_ammo_cost = n_upgraded_non_wallbuy_cost;
        }
    } else if (zm_wallbuy::is_wallbuy(w_root)) {
        n_ammo_cost = get_ammo_cost(w_root);
        n_ammo_cost = zm_utility::halve_score(n_ammo_cost);
    } else {
        n_ammo_cost = n_base_non_wallbuy_cost;
    }
    return n_ammo_cost;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x0
// Checksum 0xdb907544, Offset: 0x6220
// Size: 0x5a
function get_is_in_box(weapon) {
    assert(isdefined(level.zombie_weapons[weapon]), weapon.name + "<unknown string>");
    return level.zombie_weapons[weapon].is_in_box;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0xa3401729, Offset: 0x6288
// Size: 0x74
function function_603af7a8(weapon) {
    if (isdefined(level.zombie_weapons[weapon])) {
        level.zombie_weapons[weapon].is_in_box = 1;
    }
    /#
        level thread zm_devgui::function_bcc8843e(getweaponname(weapon), "<unknown string>", "<unknown string>");
    #/
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x0
// Checksum 0x7172208d, Offset: 0x6308
// Size: 0x3e
function function_f1114209(weapon) {
    if (isdefined(level.zombie_weapons[weapon])) {
        level.zombie_weapons[weapon].is_in_box = 0;
    }
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x0
// Checksum 0x51eb6bd, Offset: 0x6350
// Size: 0x4a
function weapon_supports_default_attachment(weapon) {
    weapon = get_base_weapon(weapon);
    attachment = level.zombie_weapons[weapon].default_attachment;
    return isdefined(attachment);
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x0
// Checksum 0xffdc0b7a, Offset: 0x63a8
// Size: 0x60
function default_attachment(weapon) {
    weapon = get_base_weapon(weapon);
    attachment = level.zombie_weapons[weapon].default_attachment;
    if (isdefined(attachment)) {
        return attachment;
    }
    return "none";
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x0
// Checksum 0x777cfd18, Offset: 0x6410
// Size: 0x5c
function weapon_supports_attachments(weapon) {
    weapon = get_base_weapon(weapon);
    attachments = level.zombie_weapons[weapon].addon_attachments;
    return isdefined(attachments) && attachments.size > 1;
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x0
// Checksum 0xa842df19, Offset: 0x6478
// Size: 0x142
function random_attachment(weapon, exclude) {
    lo = 0;
    if (isdefined(level.zombie_weapons[weapon].addon_attachments) && level.zombie_weapons[weapon].addon_attachments.size > 0) {
        attachments = level.zombie_weapons[weapon].addon_attachments;
    } else {
        attachments = weapon.supportedattachments;
        lo = 1;
    }
    minatt = lo;
    if (isdefined(exclude) && exclude != "none") {
        minatt = lo + 1;
    }
    if (attachments.size > minatt) {
        while (true) {
            idx = randomint(attachments.size - lo) + lo;
            if (!isdefined(exclude) || attachments[idx] != exclude) {
                return attachments[idx];
            }
        }
    }
    return "none";
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x0
// Checksum 0x44e40b61, Offset: 0x65c8
// Size: 0x138
function get_attachment_index(weapon) {
    attachments = weapon.attachments;
    if (!attachments.size) {
        return -1;
    }
    weapon = get_nonalternate_weapon(weapon);
    base = function_386dacbc(weapon);
    if (attachments[0] === level.zombie_weapons[base].default_attachment) {
        return 0;
    }
    if (isdefined(level.zombie_weapons[base].addon_attachments)) {
        for (i = 0; i < level.zombie_weapons[base].addon_attachments.size; i++) {
            if (level.zombie_weapons[base].addon_attachments[i] == attachments[0]) {
                return (i + 1);
            }
        }
    }
    println("<unknown string>" + weapon.name);
    return -1;
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x0
// Checksum 0x3e6a14cf, Offset: 0x6708
// Size: 0xe2
function weapon_supports_this_attachment(weapon, att) {
    weapon = get_nonalternate_weapon(weapon);
    base = function_386dacbc(weapon);
    if (att == level.zombie_weapons[base].default_attachment) {
        return true;
    }
    if (isdefined(level.zombie_weapons[base].addon_attachments)) {
        for (i = 0; i < level.zombie_weapons[base].addon_attachments.size; i++) {
            if (level.zombie_weapons[base].addon_attachments[i] == att) {
                return true;
            }
        }
    }
    return false;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0xd9a51e68, Offset: 0x67f8
// Size: 0x9e
function get_base_weapon(upgradedweapon) {
    upgradedweapon = get_nonalternate_weapon(upgradedweapon);
    upgradedweapon = function_386dacbc(upgradedweapon);
    if (isdefined(upgradedweapon.dualwieldweapon) && is_true(upgradedweapon.var_bf0eb41)) {
        upgradedweapon = upgradedweapon.dualwieldweapon;
    }
    if (isdefined(level.zombie_weapons_upgraded[upgradedweapon])) {
        return level.zombie_weapons_upgraded[upgradedweapon];
    }
    return upgradedweapon;
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x2 linked
// Checksum 0xc1a4d0be, Offset: 0x68a0
// Size: 0x1d2
function get_upgrade_weapon(weapon, *add_attachment) {
    add_attachment = get_nonalternate_weapon(add_attachment);
    rootweapon = function_386dacbc(add_attachment);
    newweapon = rootweapon;
    baseweapon = get_base_weapon(add_attachment);
    if (!is_weapon_upgraded(rootweapon) && isdefined(level.zombie_weapons[rootweapon])) {
        newweapon = level.zombie_weapons[rootweapon].upgrade;
    } else if (!zm_custom::function_901b751c(#"zmsuperpapenabled")) {
        return add_attachment;
    }
    /#
        if (isdefined(self.var_8d5839f4) && isinarray(self.var_8d5839f4, add_attachment) && add_attachment.attachments.size) {
            newweapon = getweapon(newweapon.name, add_attachment.attachments);
            return newweapon;
        }
    #/
    if (isdefined(level.zombie_weapons[rootweapon]) && isdefined(level.zombie_weapons[rootweapon].default_attachment)) {
        att = level.zombie_weapons[rootweapon].default_attachment;
        newweapon = getweapon(newweapon.name, att);
    }
    return newweapon;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x157bf3cd, Offset: 0x6a80
// Size: 0xe2
function can_upgrade_weapon(weapon) {
    if (weapon == level.weaponnone || weapon == level.weaponzmfists || !is_weapon_included(weapon)) {
        return false;
    }
    weapon = get_nonalternate_weapon(weapon);
    rootweapon = function_386dacbc(weapon);
    if (!is_weapon_upgraded(rootweapon)) {
        upgraded_weapon = level.zombie_weapons[rootweapon].upgrade;
        return (isdefined(upgraded_weapon) && upgraded_weapon != level.weaponnone);
    }
    return false;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0xd2b56710, Offset: 0x6b70
// Size: 0xa6
function weapon_supports_aat(weapon) {
    if (!zm_custom::function_901b751c(#"zmsuperpapenabled")) {
        return false;
    }
    if (!isdefined(weapon)) {
        return false;
    }
    if (weapon == level.weaponnone || weapon == level.weaponzmfists) {
        return false;
    }
    weapontopack = get_nonalternate_weapon(weapon);
    if (!aat::is_exempt_weapon(weapontopack)) {
        return true;
    }
    return false;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x605cde07, Offset: 0x6c20
// Size: 0x9a
function is_weapon_upgraded(weapon) {
    if (!isdefined(weapon)) {
        return false;
    }
    if (weapon == level.weaponnone || weapon == level.weaponzmfists) {
        return false;
    }
    weapon = get_nonalternate_weapon(weapon);
    rootweapon = function_386dacbc(weapon);
    if (isdefined(level.zombie_weapons_upgraded[rootweapon])) {
        return true;
    }
    return false;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0xe89dae94, Offset: 0x6cc8
// Size: 0xbe
function get_weapon_with_attachments(weapon) {
    weapon = get_nonalternate_weapon(weapon);
    rootweapon = function_386dacbc(weapon);
    if (self has_weapon_or_attachments(rootweapon)) {
        /#
            if (isdefined(self.var_8d5839f4) && isinarray(self.var_8d5839f4, weapon) && weapon.attachments.size) {
                return weapon;
            }
        #/
        return self getbuildkitweapon(rootweapon);
    }
    return undefined;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0xbc41a07f, Offset: 0x6d90
// Size: 0x146
function has_weapon_or_attachments(weapon) {
    primaryweapon = self namespace_a0d533d1::function_2b83d3ff(self item_inventory::function_2e711614(17 + 1));
    secondaryweapon = self namespace_a0d533d1::function_2b83d3ff(self item_inventory::function_2e711614(17 + 1 + 8 + 1));
    var_27d163f4 = self namespace_a0d533d1::function_2b83d3ff(self item_inventory::function_2e711614(17 + 1 + 8 + 1 + 8 + 1));
    primaryweapon = primaryweapon.rootweapon;
    secondaryweapon = secondaryweapon.rootweapon;
    var_27d163f4 = var_27d163f4.rootweapon;
    if (weapon.rootweapon === primaryweapon || weapon.rootweapon === secondaryweapon || weapon.rootweapon === var_27d163f4) {
        return true;
    }
    return false;
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x0
// Checksum 0xcc9630a0, Offset: 0x6ee0
// Size: 0x34
function function_40d216ce(currentweapon, weapon) {
    if (currentweapon.rootweapon === weapon.rootweapon) {
        return true;
    }
    return false;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x1f737981, Offset: 0x6f20
// Size: 0x4c
function function_386dacbc(weapon) {
    rootweapon = weapon.rootweapon;
    if (isdefined(level.var_44e0d625[rootweapon])) {
        rootweapon = level.var_44e0d625[rootweapon];
    }
    return rootweapon;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0xc38445fc, Offset: 0x6f78
// Size: 0xb2
function has_upgrade(weapon) {
    weapon = get_nonalternate_weapon(weapon);
    rootweapon = function_386dacbc(weapon);
    has_upgrade = 0;
    if (isdefined(level.zombie_weapons[rootweapon]) && isdefined(level.zombie_weapons[rootweapon].upgrade)) {
        has_upgrade = self has_weapon_or_attachments(level.zombie_weapons[rootweapon].upgrade);
    }
    return has_upgrade;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x60c79fdc, Offset: 0x7038
// Size: 0x132
function has_weapon_or_upgrade(weapon) {
    weapon = get_nonalternate_weapon(weapon);
    rootweapon = function_386dacbc(weapon);
    upgradedweaponname = rootweapon;
    if (isdefined(level.zombie_weapons[rootweapon]) && isdefined(level.zombie_weapons[rootweapon].upgrade)) {
        upgradedweaponname = level.zombie_weapons[rootweapon].upgrade;
    }
    has_weapon = 0;
    if (isdefined(level.zombie_weapons[rootweapon])) {
        has_weapon = self has_weapon_or_attachments(rootweapon) || self has_upgrade(rootweapon);
    }
    if (!has_weapon && zm_equipment::is_equipment(rootweapon)) {
        has_weapon = self zm_equipment::is_active(rootweapon);
    }
    return has_weapon;
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x0
// Checksum 0x42c94919, Offset: 0x7178
// Size: 0x2e
function add_shared_ammo_weapon(weapon, base_weapon) {
    level.zombie_weapons[weapon].shared_ammo_weapon = base_weapon;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0xe85ac413, Offset: 0x71b0
// Size: 0x186
function get_shared_ammo_weapon(weapon) {
    weapon = get_nonalternate_weapon(weapon);
    rootweapon = function_386dacbc(weapon);
    weapons = self getweaponslist(1);
    foreach (w in weapons) {
        w = function_386dacbc(w);
        if (!isdefined(level.zombie_weapons[w]) && isdefined(level.zombie_weapons_upgraded[w])) {
            w = level.zombie_weapons_upgraded[w];
        }
        if (isdefined(level.zombie_weapons[w]) && isdefined(level.zombie_weapons[w].shared_ammo_weapon) && level.zombie_weapons[w].shared_ammo_weapon == rootweapon) {
            return w;
        }
    }
    return undefined;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x15bd5908, Offset: 0x7340
// Size: 0x132
function get_player_weapon_with_same_base(weapon) {
    if (isdefined(level.var_ee565b3f)) {
        retweapon = [[ level.var_ee565b3f ]](weapon);
        if (isdefined(retweapon)) {
            return retweapon;
        }
    }
    weapon = get_nonalternate_weapon(weapon);
    rootweapon = function_386dacbc(weapon);
    retweapon = self get_weapon_with_attachments(rootweapon);
    if (!isdefined(retweapon)) {
        if (isdefined(level.zombie_weapons[rootweapon])) {
            if (isdefined(level.zombie_weapons[rootweapon].upgrade)) {
                retweapon = self get_weapon_with_attachments(level.zombie_weapons[rootweapon].upgrade);
            }
        } else if (isdefined(level.zombie_weapons_upgraded[rootweapon])) {
            retweapon = self get_weapon_with_attachments(level.zombie_weapons_upgraded[rootweapon]);
        }
    }
    return retweapon;
}

// Namespace zm_weapons/zm_weapons
// Params 0, eflags: 0x2 linked
// Checksum 0x9ef27fba, Offset: 0x7480
// Size: 0x12
function get_weapon_hint_ammo() {
    return #"hash_60606b68e93a29c8";
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x0
// Checksum 0xf266d5b4, Offset: 0x74a0
// Size: 0x3c
function weapon_set_first_time_hint(*cost, *ammo_cost) {
    self sethintstring(get_weapon_hint_ammo());
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x0
// Checksum 0xea6c0933, Offset: 0x74e8
// Size: 0x184
function get_pack_a_punch_weapon_options(weapon) {
    if (!isdefined(self.pack_a_punch_weapon_options)) {
        self.pack_a_punch_weapon_options = [];
    }
    if (!is_weapon_upgraded(weapon)) {
        return self function_6eff28b5(0, 0, 0);
    }
    if (isdefined(self.pack_a_punch_weapon_options[weapon])) {
        return self.pack_a_punch_weapon_options[weapon];
    }
    camo_index = self zm_camos::function_4f727cf5(weapon);
    reticle_index = randomintrange(0, 16);
    plain_reticle_index = 16;
    use_plain = randomint(10) < 1;
    if (use_plain) {
        reticle_index = plain_reticle_index;
    }
    /#
        if (getdvarint(#"scr_force_reticle_index", 0) >= 0) {
            reticle_index = getdvarint(#"scr_force_reticle_index", 0);
        }
    #/
    self.pack_a_punch_weapon_options[weapon] = self function_6eff28b5(camo_index, reticle_index, 0);
    return self.pack_a_punch_weapon_options[weapon];
}

// Namespace zm_weapons/zm_weapons
// Params 0, eflags: 0x0
// Checksum 0x7373d73d, Offset: 0x7678
// Size: 0x10c
function function_17512fb3() {
    lethal_grenade = self zm_loadout::get_player_lethal_grenade();
    if (!self hasweapon(lethal_grenade)) {
        self giveweapon(lethal_grenade);
        self setweaponammoclip(lethal_grenade, 0);
    }
    frac = self getfractionmaxammo(lethal_grenade);
    if (frac < 0.25) {
        self setweaponammoclip(lethal_grenade, 2);
        return;
    }
    if (frac < 0.5) {
        self setweaponammoclip(lethal_grenade, 3);
        return;
    }
    self setweaponammoclip(lethal_grenade, 4);
}

// Namespace zm_weapons/zm_weapons
// Params 4, eflags: 0x2 linked
// Checksum 0x3fc2efe8, Offset: 0x7790
// Size: 0x52
function give_build_kit_weapon(weapon, var_51ec4e93, var_bd5d43c6, b_switch_weapon = 1) {
    return weapon_give(weapon, 0, b_switch_weapon, var_51ec4e93, var_bd5d43c6);
}

// Namespace zm_weapons/zm_weapons
// Params 4, eflags: 0x2 linked
// Checksum 0x9f8667a5, Offset: 0x77f0
// Size: 0x43c
function function_98776900(item, nosound = 0, var_ac6e9818 = 0, var_d29fef1 = 0) {
    if (item.itementry.itemtype !== #"weapon") {
        return;
    }
    if (!item_world_util::function_d9648161(item.networkid)) {
        println("<unknown string>" + (isdefined(item.itementry.name) ? item.itementry.name : "<unknown string>"));
        return;
    }
    if (!function_2bcaec6f(item.itementry.weapon)) {
        if (isentity(item) && var_d29fef1) {
            item_drop::drop_item(0, item.itementry.weapon, 1, item.itementry.weapon.maxammo, item.id, self.origin, self.angles, 3);
        }
        return;
    }
    if (!is_true(nosound)) {
        self zm_utility::play_sound_on_ent("purchase");
    }
    if (isentity(item) && isdefined(item.var_627c698b.attachments) && !isdefined(item.attachments)) {
        attachments = item.var_627c698b.attachments;
        foreach (attachment in attachments) {
            var_41ade915 = item_world_util::function_6a0ee21a(attachment);
            if (level.itemreplacement[var_41ade915] === #"") {
                continue;
            }
            if (ishash(var_41ade915) || isstring(var_41ade915)) {
                attachmentitem = function_4ba8fde(var_41ade915);
                if (isdefined(attachmentitem)) {
                    namespace_a0d533d1::function_8b7b98f(item, attachmentitem);
                }
            }
        }
    }
    if (var_ac6e9818) {
        var_db0dca92 = self item_inventory::get_weapon_count();
        w_current = self getcurrentweapon();
        if (var_db0dca92 == zm_utility::get_player_weapon_limit(self)) {
            self weapon_take(w_current);
        }
    }
    var_fa3df96 = self item_inventory::function_e66dcff5(item);
    if (isdefined(var_fa3df96)) {
        if (!item_world_util::function_db35e94f(item.networkid)) {
            item.networkid = item_world_util::function_970b8d86(var_fa3df96);
        }
        self item_world::function_de2018e3(item, self, var_fa3df96);
    }
}

// Namespace zm_weapons/zm_weapons
// Params 0, eflags: 0x2 linked
// Checksum 0xccd96310, Offset: 0x7c38
// Size: 0x1aa
function function_cab9277e() {
    if (zm_utility::is_classic() || zm_utility::function_c4b020f8()) {
        round = level.round_number;
        if (round >= 10 && round < 20) {
            return #"green";
        } else if (round >= 20 && round < 25) {
            return #"blue";
        } else if (round >= 25 && round < 30) {
            return #"purple";
        } else if (round >= 30) {
            return #"orange";
        }
    } else if (zm_utility::is_survival()) {
        star_level = level.var_b48509f9;
        if (star_level >= 2 && star_level < 3) {
            return #"blue";
        } else if (star_level >= 3 && star_level < 4) {
            return #"purple";
        } else if (star_level >= 4) {
            return #"orange";
        }
    }
    return #"white";
}

// Namespace zm_weapons/zm_weapons
// Params 5, eflags: 0x2 linked
// Checksum 0xcc4c8c23, Offset: 0x7df0
// Size: 0x9a
function function_7df0d6b2(item, weapon, weaponoptions, var_e91aba42, var_908f65ca) {
    if (isdefined(weaponoptions)) {
        item.weaponoptions = weaponoptions;
    }
    if (isdefined(var_e91aba42)) {
        item.var_e91aba42 = var_e91aba42;
    }
    if (isdefined(var_908f65ca)) {
        item.var_908f65ca = var_908f65ca;
    }
    if (isdefined(weaponoptions)) {
        item.weaponoptions = self item_inventory::function_fc04b237(weapon, item.weaponoptions);
    }
}

// Namespace zm_weapons/zm_weapons
// Params 8, eflags: 0x2 linked
// Checksum 0xe957c48e, Offset: 0x7e98
// Size: 0x16c
function function_b0ab2d41(itemid, networkid, var_5302a1ef, var_a0cc02cf, var_96c71057, var_65cfac4a, chest_weapon, var_604af0c7) {
    self endon(#"death");
    while (self item_inventory::function_4d426f94(self item_inventory::get_current_weapon())) {
        waitframe(1);
    }
    var_a6d31447 = undefined;
    foreach (inventory_item in self.inventory.items) {
        if (inventory_item.id === itemid && inventory_item.networkid === networkid) {
            var_a6d31447 = inventory_item;
            break;
        }
    }
    if (isdefined(var_a6d31447)) {
        var_a6d31447 function_9aaa198a(var_5302a1ef, var_a0cc02cf, var_96c71057, var_65cfac4a, chest_weapon, var_604af0c7);
    }
}

// Namespace zm_weapons/zm_weapons
// Params 8, eflags: 0x2 linked
// Checksum 0x21b804ab, Offset: 0x8010
// Size: 0x2f2
function function_943eabd9(item_struct, nosound = 1, var_8e917f9b = 0, var_8f608a31 = 0, var_1b46b4cb = undefined, weaponoptions = undefined, var_e91aba42 = undefined, var_908f65ca = undefined) {
    if (isdefined(item_struct)) {
        if (var_8e917f9b || var_8f608a31) {
            item_struct.var_b3546c09 = 1;
        }
        self function_7df0d6b2(item_struct, item_struct.itementry.weapon, weaponoptions, var_e91aba42, var_908f65ca);
        if (isarray(var_1b46b4cb)) {
            foreach (var_b0f63180 in var_1b46b4cb) {
                var_67419ad4 = item_world_util::function_6a0ee21a(var_b0f63180);
                if (level.itemreplacement[var_67419ad4] === #"") {
                    continue;
                }
                if (ishash(var_67419ad4) || isstring(var_67419ad4)) {
                    var_5b788df2 = function_4ba8fde(var_67419ad4);
                    if (isdefined(var_5b788df2)) {
                        namespace_a0d533d1::function_9e9c82a6(item_struct, var_5b788df2, 1);
                    }
                }
            }
        }
        if (is_true(nosound)) {
            item_struct.var_99628f67 = 1;
        }
        var_fa3df96 = self item_inventory::function_e66dcff5(item_struct);
        if (isdefined(var_fa3df96)) {
            if (!item_world_util::function_db35e94f(item_struct.networkid)) {
                item_struct.networkid = item_world_util::function_970b8d86(var_fa3df96);
            }
            self item_world::function_de2018e3(item_struct, self, var_fa3df96);
        }
        return item_struct.var_627c698b;
    }
    return undefined;
}

// Namespace zm_weapons/zm_weapons
// Params 9, eflags: 0x2 linked
// Checksum 0x8358a7fb, Offset: 0x8310
// Size: 0x818
function weapon_give(weapon, nosound, *b_switch_weapon = 0, var_bc218695 = 0, var_8f608a31 = 0, var_823339c8 = #"none", var_1b46b4cb, var_8e917f9b = 0, var_e6a8f11f) {
    if (!is_true(b_switch_weapon)) {
        self zm_utility::play_sound_on_ent("purchase");
    }
    if (isweapon(nosound)) {
        if (!function_2bcaec6f(nosound)) {
            return;
        }
        if (var_8f608a31 && !is_true(getgametypesetting(#"hash_1e8998fd7f271bb7"))) {
            weaponoptions = self function_6eff28b5(self.class_num, var_bc218695);
            var_e91aba42 = self function_e601ff48(self.class_num, var_bc218695);
            var_908f65ca = self function_1c228d69(self.class_num, var_bc218695);
        }
        if (is_weapon_upgraded(nosound)) {
            if (nosound.name == #"knife_loadout_upgraded") {
                str_item = "knife_loadout" + "_t9_upgraded" + "_item_sr";
            } else {
                str_item = nosound.name + "_item_sr";
            }
        } else if (var_823339c8 != #"none" && isdefined(level.var_29d88fe5[nosound.name][var_823339c8])) {
            str_item = level.var_29d88fe5[nosound.name][var_823339c8];
        } else if (var_8e917f9b) {
            rarity = function_cab9277e();
            if (rarity == #"white") {
                if (nosound.name == #"knife_loadout") {
                    str_item = nosound.name + "_t9" + "_item_sr";
                } else {
                    str_item = nosound.name + "_item_sr";
                }
            } else {
                str_item = level.var_ec04a8a4[nosound.name][rarity];
            }
        } else if (nosound.name == #"knife_loadout") {
            str_item = nosound.name + "_t9" + "_item_sr";
        } else {
            str_item = nosound.name + "_item_sr";
        }
        if (isdefined(var_e6a8f11f)) {
            if (isdefined(rarity)) {
                switch (rarity) {
                case #"green":
                case #"white":
                    var_62cd846 = var_e6a8f11f;
                    break;
                case #"blue":
                    if (var_e6a8f11f != #"green") {
                        var_62cd846 = var_e6a8f11f;
                    }
                    break;
                default:
                    break;
                }
                if (!isdefined(var_62cd846)) {
                    var_62cd846 = rarity;
                }
            } else {
                var_62cd846 = var_e6a8f11f;
            }
            str_item = level.var_ec04a8a4[nosound.name][var_62cd846];
        }
    }
    if (!isdefined(str_item) || !isstring(str_item) && !ishash(str_item)) {
        if (isdefined(nosound)) {
            self giveweapon(nosound);
            self switchtoweapon(nosound);
            return;
        }
        assert(0, "<unknown string>");
        return;
    }
    var_3383cd4e = function_4ba8fde(str_item);
    if (isdefined(var_3383cd4e)) {
        if (var_8e917f9b || var_8f608a31) {
            var_3383cd4e.var_b3546c09 = 1;
        }
        self function_7df0d6b2(var_3383cd4e, nosound, weaponoptions, var_e91aba42, var_908f65ca);
        if (isarray(var_1b46b4cb)) {
            foreach (var_b0f63180 in var_1b46b4cb) {
                var_67419ad4 = item_world_util::function_6a0ee21a(var_b0f63180);
                if (level.itemreplacement[var_67419ad4] === #"") {
                    continue;
                }
                if (ishash(var_67419ad4) || isstring(var_67419ad4)) {
                    var_5b788df2 = function_4ba8fde(var_67419ad4);
                    if (isdefined(var_5b788df2)) {
                        namespace_a0d533d1::function_9e9c82a6(var_3383cd4e, var_5b788df2, 1);
                    }
                }
            }
        }
        if (is_true(b_switch_weapon)) {
            var_3383cd4e.var_99628f67 = 1;
        }
        var_fa3df96 = self item_inventory::function_e66dcff5(var_3383cd4e);
        if (isdefined(var_fa3df96)) {
            if (!item_world_util::function_db35e94f(var_3383cd4e.networkid)) {
                var_3383cd4e.networkid = item_world_util::function_970b8d86(var_fa3df96);
            }
            self item_world::function_de2018e3(var_3383cd4e, self, var_fa3df96);
            item = self item_inventory::function_2e711614(var_fa3df96);
            if (is_true(var_3383cd4e.var_b3546c09) && item_world_util::function_db35e94f(item.networkid)) {
                item.var_b3546c09 = 1;
            }
        }
    } else {
        self giveweapon(nosound);
        self switchtoweapon(nosound);
    }
    return nosound;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x4b254940, Offset: 0x8b30
// Size: 0x31e
function function_2bcaec6f(weapon) {
    if (!isdefined(weapon)) {
        return;
    }
    current_weapon = self getcurrentweapon();
    current_weapon = get_base_weapon(current_weapon);
    var_3ccb716f = get_base_weapon(weapon);
    weapon1 = self namespace_a0d533d1::function_2b83d3ff(self item_inventory::function_2e711614(17 + 1));
    weapon2 = self namespace_a0d533d1::function_2b83d3ff(self item_inventory::function_2e711614(17 + 1 + 8 + 1));
    var_5df29481 = self namespace_a0d533d1::function_2b83d3ff(self item_inventory::function_2e711614(17 + 1 + 8 + 1 + 8 + 1));
    if (!(isdefined(weapon1) && isdefined(weapon2))) {
        return 1;
    }
    weapon1 = get_base_weapon(weapon1);
    weapon2 = get_base_weapon(weapon2);
    if (isdefined(var_5df29481)) {
        var_5df29481 = get_base_weapon(var_5df29481);
    }
    if (isdefined(level.zombie_weapons[var_3ccb716f]) && isdefined(level.zombie_weapons[var_3ccb716f].var_51344511)) {
        foreach (var_6ae93843 in level.zombie_weapons[var_3ccb716f].var_51344511) {
            if (weapon1 == var_6ae93843 && weapon1 != current_weapon) {
                return 0;
            } else if (weapon1 == var_6ae93843 && !isdefined(var_5df29481) && self namespace_e86ffa8::function_30a8ed81(0)) {
                return 0;
            }
            if (weapon2 == var_6ae93843 && weapon2 != current_weapon) {
                return 0;
            } else if (weapon2 == var_6ae93843 && !isdefined(var_5df29481) && self namespace_e86ffa8::function_30a8ed81(0)) {
                return 0;
            }
            if (isdefined(var_5df29481)) {
                if (var_5df29481 == var_6ae93843 && var_5df29481 != current_weapon) {
                    return 0;
                }
            }
        }
    }
    return 1;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x8d0ee501, Offset: 0x8e58
// Size: 0xcc
function weapon_take(weapon) {
    if (!isdefined(weapon)) {
        return;
    }
    if (self hasweapon(weapon)) {
        var_8a83ec7a = item_inventory::function_a33744de(weapon);
        if (isdefined(var_8a83ec7a)) {
            if (var_8a83ec7a != 32767) {
                var_f9f12a82 = item_inventory::drop_inventory_item(var_8a83ec7a);
                if (isentity(var_f9f12a82)) {
                    item_world::consume_item(var_f9f12a82);
                }
            }
            return;
        }
        self takeweapon(weapon);
    }
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x0
// Checksum 0x7381f47e, Offset: 0x8f30
// Size: 0xcc
function weapon_type_check(weapon) {
    if (!isdefined(self.entity_num)) {
        return "crappy";
    }
    weapon = get_nonalternate_weapon(weapon);
    weapon = function_386dacbc(weapon);
    if (is_weapon_upgraded(weapon) && !self bgb::is_enabled(#"zm_bgb_wall_power")) {
        return "upgrade";
    }
    if (isdefined(level.zombie_weapons[weapon])) {
        return level.zombie_weapons[weapon].vox;
    }
    return "crappy";
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x2 linked
// Checksum 0xf5c792d7, Offset: 0x9008
// Size: 0x2a6
function ammo_give(weapon, b_purchased = 1) {
    var_cd9d17e0 = 0;
    if (!zm_loadout::is_offhand_weapon(weapon) || weapon.isriotshield) {
        weapon = self get_weapon_with_attachments(weapon);
        if (isdefined(weapon)) {
            var_cb48c3c9 = weapon.maxammo;
            var_ef0714fa = weapon.startammo;
            var_98f6dae8 = self getweaponammoclip(weapon);
            n_clip_size = weapon.clipsize;
            if (var_98f6dae8 < n_clip_size) {
                var_cd9d17e0 = 1;
            }
            var_4052eae0 = 0;
            if (!var_cd9d17e0 && weapon.dualwieldweapon != level.weaponnone) {
                var_4052eae0 = self getweaponammoclip(weapon.dualwieldweapon);
                var_5916b9ab = weapon.dualwieldweapon.clipsize;
                if (var_4052eae0 < var_5916b9ab) {
                    var_cd9d17e0 = 1;
                }
            }
            if (!var_cd9d17e0) {
                var_b8624c26 = self getammocount(weapon);
                if (self hasperk(#"specialty_extraammo")) {
                    n_ammo_max = var_cb48c3c9;
                } else {
                    n_ammo_max = var_ef0714fa;
                }
                if (weapon.isdualwield) {
                    n_ammo_max *= 2;
                }
                if (var_b8624c26 >= n_ammo_max + var_98f6dae8 + var_4052eae0) {
                    var_cd9d17e0 = 0;
                } else {
                    var_cd9d17e0 = 1;
                }
            }
        }
    } else if (self has_weapon_or_upgrade(weapon)) {
        if (self getammocount(weapon) < weapon.maxammo) {
            var_cd9d17e0 = 1;
        }
    }
    if (var_cd9d17e0) {
        if (b_purchased) {
            self zm_utility::play_sound_on_ent("purchase");
        }
        self function_7c5dd4bd(weapon);
        return 1;
    }
    if (!var_cd9d17e0) {
        return 0;
    }
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0xdf0ee504, Offset: 0x92b8
// Size: 0x1f4
function get_default_weapondata(weapon) {
    weapondata = [];
    weapondata[#"weapon"] = weapon;
    dw_weapon = weapon.dualwieldweapon;
    alt_weapon = weapon.altweapon;
    weaponnone = getweapon(#"none");
    if (isdefined(level.weaponnone)) {
        weaponnone = level.weaponnone;
    }
    if (weapon != weaponnone) {
        weapondata[#"clip"] = weapon.clipsize;
        weapondata[#"stock"] = weapon.maxammo;
        weapondata[#"fuel"] = weapon.fuellife;
        weapondata[#"heat"] = 0;
        weapondata[#"overheat"] = 0;
    }
    if (dw_weapon != weaponnone) {
        weapondata[#"lh_clip"] = dw_weapon.clipsize;
    } else {
        weapondata[#"lh_clip"] = 0;
    }
    if (alt_weapon != weaponnone) {
        weapondata[#"alt_clip"] = alt_weapon.clipsize;
        weapondata[#"alt_stock"] = alt_weapon.maxammo;
    } else {
        weapondata[#"alt_clip"] = 0;
        weapondata[#"alt_stock"] = 0;
    }
    return weapondata;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x6fa754ff, Offset: 0x94b8
// Size: 0x3d4
function get_player_weapondata(weapon) {
    weapondata = [];
    if (!isdefined(weapon)) {
        weapon = self getcurrentweapon();
    }
    weapondata[#"weapon"] = weapon;
    if (weapondata[#"weapon"] != level.weaponnone) {
        weapondata[#"clip"] = self getweaponammoclip(weapon);
        weapondata[#"stock"] = self getweaponammostock(weapon);
        weapondata[#"fuel"] = self getweaponammofuel(weapon);
        weapondata[#"heat"] = self isweaponoverheating(1, weapon);
        weapondata[#"overheat"] = self isweaponoverheating(0, weapon);
        if (weapon.isgadget) {
            slot = self gadgetgetslot(weapon);
            weapondata[#"power"] = self gadgetpowerget(slot);
        }
        if (weapon.isriotshield) {
            weapondata[#"health"] = self.weaponhealth;
        }
    } else {
        weapondata[#"clip"] = 0;
        weapondata[#"stock"] = 0;
        weapondata[#"fuel"] = 0;
        weapondata[#"heat"] = 0;
        weapondata[#"overheat"] = 0;
        weapondata[#"power"] = undefined;
    }
    dw_weapon = weapon.dualwieldweapon;
    if (dw_weapon != level.weaponnone) {
        weapondata[#"lh_clip"] = self getweaponammoclip(dw_weapon);
    } else {
        weapondata[#"lh_clip"] = 0;
    }
    alt_weapon = weapon.altweapon;
    if (alt_weapon != level.weaponnone) {
        weapondata[#"alt_clip"] = self getweaponammoclip(alt_weapon);
        weapondata[#"alt_stock"] = self getweaponammostock(alt_weapon);
    } else {
        weapondata[#"alt_clip"] = 0;
        weapondata[#"alt_stock"] = 0;
    }
    if (self aat::has_aat(weapon)) {
        weapondata[#"aat"] = self aat::getaatonweapon(weapon, 1);
    }
    weapondata[#"repacks"] = self zm_pap_util::function_83c29ddb(weapon);
    return weapondata;
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x2 linked
// Checksum 0x565f221, Offset: 0x9898
// Size: 0x6e
function weapon_is_better(left, right) {
    if (left != right) {
        left_upgraded = is_weapon_upgraded(left);
        right_upgraded = is_weapon_upgraded(right);
        if (left_upgraded) {
            return true;
        }
    }
    return false;
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x2 linked
// Checksum 0xad39681a, Offset: 0x9910
// Size: 0x5ac
function merge_weapons(oldweapondata, newweapondata) {
    weapondata = [];
    if (isdefined(level.var_bb2323e4)) {
        weapondata = [[ level.var_bb2323e4 ]](oldweapondata, newweapondata);
        if (isdefined(weapondata)) {
            return weapondata;
        }
    }
    if (weapon_is_better(oldweapondata[#"weapon"], newweapondata[#"weapon"])) {
        weapondata[#"weapon"] = oldweapondata[#"weapon"];
    } else {
        weapondata[#"weapon"] = newweapondata[#"weapon"];
    }
    weapon = weapondata[#"weapon"];
    dw_weapon = weapon.dualwieldweapon;
    alt_weapon = weapon.altweapon;
    if (weapon != level.weaponnone) {
        weapondata[#"clip"] = newweapondata[#"clip"] + oldweapondata[#"clip"];
        weapondata[#"clip"] = int(min(weapondata[#"clip"], weapon.clipsize));
        weapondata[#"stock"] = newweapondata[#"stock"] + oldweapondata[#"stock"];
        weapondata[#"stock"] = int(min(weapondata[#"stock"], weapon.maxammo));
        weapondata[#"fuel"] = newweapondata[#"fuel"] + oldweapondata[#"fuel"];
        weapondata[#"fuel"] = int(min(weapondata[#"fuel"], weapon.fuellife));
        weapondata[#"heat"] = int(min(newweapondata[#"heat"], oldweapondata[#"heat"]));
        weapondata[#"overheat"] = int(min(newweapondata[#"overheat"], oldweapondata[#"overheat"]));
        weapondata[#"power"] = int(max(isdefined(newweapondata[#"power"]) ? newweapondata[#"power"] : 0, isdefined(oldweapondata[#"power"]) ? oldweapondata[#"power"] : 0));
    }
    if (dw_weapon != level.weaponnone) {
        weapondata[#"lh_clip"] = newweapondata[#"lh_clip"] + oldweapondata[#"lh_clip"];
        weapondata[#"lh_clip"] = int(min(weapondata[#"lh_clip"], dw_weapon.clipsize));
    }
    if (alt_weapon != level.weaponnone) {
        weapondata[#"alt_clip"] = newweapondata[#"alt_clip"] + oldweapondata[#"alt_clip"];
        weapondata[#"alt_clip"] = int(min(weapondata[#"alt_clip"], alt_weapon.clipsize));
        weapondata[#"alt_stock"] = newweapondata[#"alt_stock"] + oldweapondata[#"alt_stock"];
        weapondata[#"alt_stock"] = int(min(weapondata[#"alt_stock"], alt_weapon.maxammo));
    }
    return weapondata;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0xe224f0b8, Offset: 0x9ec8
// Size: 0x508
function weapondata_give(weapondata) {
    current = self get_player_weapon_with_same_base(weapondata[#"weapon"]);
    if (isdefined(current)) {
        curweapondata = self get_player_weapondata(current);
        self weapon_take(current);
        weapondata = merge_weapons(curweapondata, weapondata);
    }
    weapon = weapondata[#"weapon"];
    weapon_give(weapon, 1);
    if (weapon != level.weaponnone && self hasweapon(weapon)) {
        if (weapondata[#"clip"] + weapondata[#"stock"] <= weapon.clipsize) {
            self setweaponammoclip(weapon, weapon.clipsize);
            self setweaponammostock(weapon, 0);
        } else {
            self setweaponammoclip(weapon, weapondata[#"clip"]);
            self setweaponammostock(weapon, weapondata[#"stock"]);
        }
        if (isdefined(weapondata[#"fuel"])) {
            self setweaponammofuel(weapon, weapondata[#"fuel"]);
        }
        if (isdefined(weapondata[#"heat"]) && isdefined(weapondata[#"overheat"])) {
            self setweaponoverheating(weapondata[#"overheat"], weapondata[#"heat"], weapon);
        }
        if (weapon.isgadget && isdefined(weapondata[#"power"])) {
            slot = self gadgetgetslot(weapon);
            if (slot >= 0) {
                self gadgetpowerset(slot, weapondata[#"power"]);
            }
        }
        if (weapon.isriotshield && isdefined(weapondata[#"health"])) {
            self.weaponhealth = weapondata[#"health"];
        }
    }
    dw_weapon = weapon.dualwieldweapon;
    if (function_386dacbc(dw_weapon) != level.weaponnone) {
        if (!self hasweapon(dw_weapon)) {
            self giveweapon(dw_weapon);
        }
        self setweaponammoclip(dw_weapon, weapondata[#"lh_clip"]);
    }
    alt_weapon = weapon.altweapon;
    if (function_386dacbc(alt_weapon) != level.weaponnone) {
        if (!self hasweapon(alt_weapon)) {
            self giveweapon(alt_weapon);
        }
        self setweaponammoclip(alt_weapon, weapondata[#"alt_clip"]);
        self setweaponammostock(alt_weapon, weapondata[#"alt_stock"]);
    }
    if (isdefined(weapondata[#"aat"])) {
        self aat::acquire(weapon, weapondata[#"aat"]);
    }
    if (isdefined(weapondata[#"repacks"]) && weapondata[#"repacks"] > 0) {
        self zm_pap_util::repack_weapon(weapon, weapondata[#"repacks"]);
    }
    return weapon;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x29f6af77, Offset: 0xa3d8
// Size: 0x204
function weapondata_take(weapondata) {
    weapon = weapondata[#"weapon"];
    if (weapon != level.weaponnone) {
        if (self hasweapon(weapon)) {
            self weapon_take(weapon);
        }
    }
    dw_weapon = weapon.dualwieldweapon;
    if (dw_weapon != level.weaponnone) {
        if (self hasweapon(dw_weapon)) {
            self weapon_take(dw_weapon);
        }
    }
    alt_weapon = weapon.altweapon;
    a_alt_weapons = [];
    while (alt_weapon != level.weaponnone) {
        if (!isdefined(a_alt_weapons)) {
            a_alt_weapons = [];
        } else if (!isarray(a_alt_weapons)) {
            a_alt_weapons = array(a_alt_weapons);
        }
        if (!isinarray(a_alt_weapons, alt_weapon)) {
            a_alt_weapons[a_alt_weapons.size] = alt_weapon;
        }
        if (self hasweapon(alt_weapon)) {
            self weapon_take(alt_weapon);
        }
        alt_weapon = alt_weapon.altweapon;
        if (isinarray(a_alt_weapons, alt_weapon)) {
            println("<unknown string>" + function_9e72a96(alt_weapon.name) + "<unknown string>");
            break;
        }
    }
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x0
// Checksum 0x70266f83, Offset: 0xa5e8
// Size: 0x192
function create_loadout(weapons) {
    weaponnone = getweapon(#"none");
    if (isdefined(level.weaponnone)) {
        weaponnone = level.weaponnone;
    }
    loadout = spawnstruct();
    loadout.weapons = [];
    foreach (weapon in weapons) {
        if (isstring(weapon)) {
            weapon = getweapon(weapon);
        }
        if (weapon == weaponnone) {
            println("<unknown string>" + weapon.name);
        }
        loadout.weapons[weapon.name] = get_default_weapondata(weapon);
        if (!isdefined(loadout.current)) {
            loadout.current = weapon;
        }
    }
    return loadout;
}

// Namespace zm_weapons/zm_weapons
// Params 0, eflags: 0x2 linked
// Checksum 0x140bb0c5, Offset: 0xa788
// Size: 0x104
function player_get_loadout() {
    loadout = spawnstruct();
    loadout.current = self getcurrentweapon();
    loadout.stowed = self getstowedweapon();
    loadout.weapons = [];
    foreach (weapon in self getweaponslist()) {
        loadout.weapons[weapon.name] = self get_player_weapondata(weapon);
    }
    return loadout;
}

// Namespace zm_weapons/zm_weapons
// Params 3, eflags: 0x2 linked
// Checksum 0xc21f1dd4, Offset: 0xa898
// Size: 0x204
function player_give_loadout(loadout, replace_existing = 1, immediate_switch = 0) {
    if (replace_existing) {
        self takeallweapons();
    }
    foreach (weapondata in loadout.weapons) {
        if (!is_true(weapondata[#"weapon"].isheroweapon)) {
            self weapondata_give(weapondata);
        }
    }
    if (self getweaponslistprimaries().size == 0) {
        self zm_loadout::give_start_weapon(1);
    }
    if (!zm_loadout::is_offhand_weapon(loadout.current)) {
        if (immediate_switch) {
            self switchtoweaponimmediate(loadout.current);
        } else {
            self switchtoweapon(loadout.current);
        }
    } else if (immediate_switch) {
        self switchtoweaponimmediate();
    } else {
        self switchtoweapon();
    }
    if (isdefined(loadout.stowed)) {
        self setstowedweapon(loadout.stowed);
    }
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x0
// Checksum 0x24cc4fb3, Offset: 0xaaa8
// Size: 0x98
function player_take_loadout(loadout) {
    foreach (weapondata in loadout.weapons) {
        self weapondata_take(weapondata);
    }
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x0
// Checksum 0xf7eb0d3f, Offset: 0xab48
// Size: 0x54
function register_zombie_weapon_callback(weapon, func) {
    if (!isdefined(level.zombie_weapons_callbacks)) {
        level.zombie_weapons_callbacks = [];
    }
    if (!isdefined(level.zombie_weapons_callbacks[weapon])) {
        level.zombie_weapons_callbacks[weapon] = func;
    }
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x0
// Checksum 0xd8e81a12, Offset: 0xaba8
// Size: 0x54
function set_stowed_weapon(weapon) {
    self.weapon_stowed = weapon;
    if (!is_true(self.stowed_weapon_suppressed)) {
        self setstowedweapon(self.weapon_stowed);
    }
}

// Namespace zm_weapons/zm_weapons
// Params 0, eflags: 0x0
// Checksum 0xd955b0f9, Offset: 0xac08
// Size: 0x34
function clear_stowed_weapon() {
    self notify(#"hash_70957a1035bda74b");
    self.weapon_stowed = undefined;
    self clearstowedweapon();
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x0
// Checksum 0x89fc6a02, Offset: 0xac48
// Size: 0x6c
function suppress_stowed_weapon(onoff) {
    self.stowed_weapon_suppressed = onoff;
    if (onoff || !isdefined(self.weapon_stowed)) {
        self clearstowedweapon();
        return;
    }
    self setstowedweapon(self.weapon_stowed);
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x2f549923, Offset: 0xacc0
// Size: 0x24
function checkstringvalid(hash_or_str) {
    if (hash_or_str != "") {
        return hash_or_str;
    }
    return undefined;
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x2 linked
// Checksum 0x6f339864, Offset: 0xacf0
// Size: 0x52a
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
        is_ee = row[2];
        cost = row[3];
        weaponvo = checkstringvalid(row[4]);
        weaponvoresp = checkstringvalid(row[5]);
        ammo_cost = row[6];
        create_vox = row[7];
        is_zcleansed = row[8];
        in_box = row[9];
        upgrade_in_box = row[10];
        is_limited = row[11];
        var_ddca6652 = row[17];
        limit = row[12];
        upgrade_limit = row[13];
        content_restrict = row[14];
        wallbuy_autospawn = row[15];
        weapon_class = checkstringvalid(row[16]);
        is_wonder_weapon = row[18];
        tier = row[19];
        element = row[20];
        if (is_true(wallbuy_autospawn)) {
            if (!isdefined(level.var_8e3edeb9)) {
                level.var_8e3edeb9 = [];
            } else if (!isarray(level.var_8e3edeb9)) {
                level.var_8e3edeb9 = array(level.var_8e3edeb9);
            }
            if (!isinarray(level.var_8e3edeb9, weapon_name)) {
                level.var_8e3edeb9[level.var_8e3edeb9.size] = weapon_name;
            }
        }
        zm_utility::include_weapon(weapon_name, in_box);
        if (isdefined(upgrade_name)) {
            zm_utility::include_weapon(upgrade_name, upgrade_in_box);
        }
        add_zombie_weapon(weapon_name, upgrade_name, is_ee, cost, weaponvo, weaponvoresp, ammo_cost, create_vox, weapon_class, is_wonder_weapon, tier, in_box, element);
        if (is_limited) {
            if (isdefined(limit)) {
                add_limited_weapon(weapon_name, limit);
            }
            if (isdefined(upgrade_limit) && isdefined(upgrade_name)) {
                add_limited_weapon(upgrade_name, upgrade_limit);
            }
        }
        if (!var_ddca6652 && weapon_class !== "equipment") {
            aat::register_aat_exemption(getweapon(weapon_name));
            if (isdefined(upgrade_name)) {
                aat::register_aat_exemption(getweapon(upgrade_name));
            }
        }
        index++;
    }
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x43de35fd, Offset: 0xb228
// Size: 0x1b4
function is_wonder_weapon(w_to_check) {
    w_base = get_base_weapon(w_to_check);
    if (isdefined(level.zombie_weapons[w_base]) && level.zombie_weapons[w_base].is_wonder_weapon) {
        return true;
    }
    if (isdefined(w_to_check.name)) {
        switch (w_to_check.name) {
        case #"ww_mega_barrel_fullauto_blazer_beam_t9":
        case #"ww_ieu_gas_t9_upgraded":
        case #"ww_mega_barrel_fullauto_diffusion_beam_t9_upgraded":
        case #"ww_ieu_plasma_t9_upgraded":
        case #"ww_mega_barrel_fullauto_diffusion_beam_t9":
        case #"ww_mega_barrel_fullauto_blazer_beam_t9_upgraded":
        case #"ww_ieu_acid_t9_upgraded":
        case #"ww_mega_barrel_fullauto_micro_missile_t9_upgraded":
        case #"ww_ieu_shockwave_t9_upgraded":
        case #"ww_mega_barrel_fullauto_copycat_t9_upgraded":
        case #"ww_mega_barrel_fullauto_copycat_t9":
        case #"ww_ieu_shockwave_t9":
        case #"ww_ieu_electric_t9_upgraded":
        case #"ww_ieu_electric_t9":
        case #"ww_ieu_acid_t9":
        case #"ww_ieu_gas_t9":
        case #"ww_ieu_plasma_t9":
        case #"ww_mega_barrel_fullauto_micro_missile_t9":
            return true;
        }
    }
    return false;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x5b58e79a, Offset: 0xb3e8
// Size: 0xfe
function is_tactical_rifle(w_to_check) {
    var_6351a511 = array(getweapon(#"tr_longburst_t9"), getweapon(#"tr_damagesemi_t9"), getweapon(#"tr_fastburst_t9"), getweapon(#"tr_powerburst_t9"), getweapon(#"tr_precisionsemi_t9"));
    w_to_check = get_base_weapon(w_to_check);
    if (isinarray(var_6351a511, w_to_check)) {
        return true;
    }
    return false;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0xbfd8b839, Offset: 0xb4f0
// Size: 0x66
function is_explosive_weapon(weapon) {
    if ((isdefined(weapon.explosioninnerdamage) ? weapon.explosioninnerdamage : 0) > 0 || (isdefined(weapon.explosionouterdamage) ? weapon.explosionouterdamage : 0) > 0) {
        return true;
    }
    return false;
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x2 linked
// Checksum 0x79deb5be, Offset: 0xb560
// Size: 0x96
function function_f5a0899d(weapon, var_d921715f = 1) {
    if (isdefined(weapon)) {
        if (!var_d921715f && is_wonder_weapon(weapon)) {
            return false;
        }
        var_3ba4bf7d = self getweaponslistprimaries();
        if (isinarray(var_3ba4bf7d, weapon)) {
            return true;
        }
    }
    return false;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0xc0b6f975, Offset: 0xb600
// Size: 0xf4
function function_7c5dd4bd(w_weapon) {
    if (zm_loadout::function_2ff6913(w_weapon)) {
        return;
    }
    if (!self hasweapon(w_weapon)) {
        return;
    }
    self setweaponammoclip(w_weapon, w_weapon.clipsize);
    self notify(#"hash_278526d0bbdb4ce7");
    if (zm_trial_reset_loadout::is_active(1)) {
        self function_7f7c1226(w_weapon);
        return;
    }
    if (self hasperk(#"specialty_extraammo")) {
        self givemaxammo(w_weapon);
        return;
    }
    self givestartammo(w_weapon);
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x506dd5b7, Offset: 0xb700
// Size: 0x3a
function function_ec62a449(weapon) {
    if (isdefined(level.var_6e197241[weapon.name])) {
        return weapon.altweapon;
    }
    return weapon;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0xff570ded, Offset: 0xb748
// Size: 0x176
function function_51aa5813(n_slot) {
    if (isdefined(n_slot)) {
        weapon = self namespace_a0d533d1::function_2b83d3ff(self item_inventory::function_2e711614(n_slot));
        weapon = function_ec62a449(weapon);
        if (isdefined(weapon) && self hasweapon(weapon)) {
            if (weapon != level.weaponnone && weapon != level.weaponbasemeleeheld) {
                self setweaponammoclip(weapon, weapon.clipsize);
                maxammo = weapon.maxammo;
                self setweaponammostock(weapon, maxammo);
                if (is_true(weapon.isdualwield) && isdefined(weapon.dualwieldweapon) && weapon.dualwieldweapon != level.weaponnone) {
                    self setweaponammoclip(weapon.dualwieldweapon, weapon.dualwieldweapon.clipsize);
                }
                self.var_b6cd4a03 = gettime();
            }
        }
    }
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x6 linked
// Checksum 0x3429a5c0, Offset: 0xb8c8
// Size: 0x64
function private function_7f7c1226(weapon) {
    waittillframeend();
    if (is_true(weapon.isriotshield)) {
        n_stock = weapon.clipsize;
    } else {
        n_stock = 0;
    }
    self setweaponammostock(weapon, n_stock);
}

// Namespace zm_weapons/zm_weapons
// Params 3, eflags: 0x2 linked
// Checksum 0xc053f6f8, Offset: 0xb938
// Size: 0x53a
function function_ed29dde5(var_947d01ee, var_ccd1bc81 = 0, var_609a8d33 = 0) {
    a_weapons = [];
    foreach (s_weapon in level.zombie_weapons) {
        if (s_weapon.weapon_classname === var_947d01ee) {
            if (var_609a8d33) {
                if (!isdefined(a_weapons)) {
                    a_weapons = [];
                } else if (!isarray(a_weapons)) {
                    a_weapons = array(a_weapons);
                }
                a_weapons[a_weapons.size] = s_weapon.weapon.name;
            } else {
                if (!isdefined(a_weapons)) {
                    a_weapons = [];
                } else if (!isarray(a_weapons)) {
                    a_weapons = array(a_weapons);
                }
                a_weapons[a_weapons.size] = s_weapon.weapon;
            }
            if (var_ccd1bc81) {
                if (var_609a8d33) {
                    if (!isdefined(a_weapons)) {
                        a_weapons = [];
                    } else if (!isarray(a_weapons)) {
                        a_weapons = array(a_weapons);
                    }
                    a_weapons[a_weapons.size] = s_weapon.upgrade.name;
                } else {
                    if (!isdefined(a_weapons)) {
                        a_weapons = [];
                    } else if (!isarray(a_weapons)) {
                        a_weapons = array(a_weapons);
                    }
                    a_weapons[a_weapons.size] = s_weapon.upgrade;
                }
            }
        }
        if (s_weapon.weapon_classname === "shield" && var_947d01ee != "shield") {
            if (s_weapon.weapon.weapclass === var_947d01ee) {
                if (var_609a8d33) {
                    if (!isdefined(a_weapons)) {
                        a_weapons = [];
                    } else if (!isarray(a_weapons)) {
                        a_weapons = array(a_weapons);
                    }
                    a_weapons[a_weapons.size] = s_weapon.weapon.name;
                    if (s_weapon.weapon.dualwieldweapon != level.weaponnone) {
                        if (!isdefined(a_weapons)) {
                            a_weapons = [];
                        } else if (!isarray(a_weapons)) {
                            a_weapons = array(a_weapons);
                        }
                        a_weapons[a_weapons.size] = s_weapon.weapon.dualwieldweapon.name;
                    }
                } else {
                    if (!isdefined(a_weapons)) {
                        a_weapons = [];
                    } else if (!isarray(a_weapons)) {
                        a_weapons = array(a_weapons);
                    }
                    a_weapons[a_weapons.size] = s_weapon.weapon;
                    if (s_weapon.weapon.dualwieldweapon != level.weaponnone) {
                        if (!isdefined(a_weapons)) {
                            a_weapons = [];
                        } else if (!isarray(a_weapons)) {
                            a_weapons = array(a_weapons);
                        }
                        a_weapons[a_weapons.size] = s_weapon.weapon.dualwieldweapon;
                    }
                }
            }
            if (s_weapon.weapon.altweapon.weapclass === var_947d01ee) {
                if (var_609a8d33) {
                    if (!isdefined(a_weapons)) {
                        a_weapons = [];
                    } else if (!isarray(a_weapons)) {
                        a_weapons = array(a_weapons);
                    }
                    a_weapons[a_weapons.size] = s_weapon.weapon.altweapon.name;
                    continue;
                }
                if (!isdefined(a_weapons)) {
                    a_weapons = [];
                } else if (!isarray(a_weapons)) {
                    a_weapons = array(a_weapons);
                }
                a_weapons[a_weapons.size] = s_weapon.weapon.altweapon;
            }
        }
    }
    return a_weapons;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x2929e1a4, Offset: 0xbe80
// Size: 0x93a
function on_item_pickup(params) {
    self endon(#"death");
    item = params.item;
    if (isplayer(self) && isdefined(item) && item.itementry.itemtype == #"weapon") {
        weapon = namespace_a0d533d1::function_2b83d3ff(item);
        if (isdefined(item) && isdefined(weapon)) {
            weapon = weapon.rootweapon;
            if (isdefined(item.paplv)) {
                inventoryitem = item_inventory::get_inventory_item(item.networkid);
                if (isdefined(inventoryitem)) {
                    inventoryitem.paplv = item.paplv;
                }
                self item_inventory::function_d92c6b5b(undefined, undefined, item.paplv);
            }
            if (isdefined(item.aat)) {
                inventoryitem = item_inventory::get_inventory_item(item.networkid);
                if (isdefined(inventoryitem)) {
                    self item_inventory::function_b579540e(inventoryitem, item.aat);
                }
                self function_e1fd87b0(weapon, item.aat);
            } else {
                self function_51897592(weapon);
            }
        }
        return;
    }
    if (isplayer(self) && isdefined(item) && isdefined(item.itementry.name) && item.itementry.itemtype === #"survival_upgrade_item") {
        currentweapon = self getcurrentweapon();
        var_4657c1e0 = self item_inventory::function_230ceec4(currentweapon);
        if (!isdefined(var_4657c1e0)) {
            var_4657c1e0 = function_2aa19d13();
        }
        if (isdefined(item) && isdefined(var_4657c1e0) && isdefined(item.itementry.name)) {
            switch (item.itementry.name) {
            case #"aether_tool_item_sr":
                var_b8a9c6d9 = function_137f88c6(var_4657c1e0.itementry.rarity, 1);
                clipsize = self getweaponammoclip(currentweapon);
                var_9839b3b1 = self getweaponammostock(currentweapon);
                if (is_true(weapon.isdualwield) && isdefined(weapon.dualwieldweapon) && weapon.dualwieldweapon != level.weaponnone) {
                    var_7fa2b50b = self getweaponammoclip(weapon.dualwieldweapon);
                }
                self function_17e9ed37(var_b8a9c6d9, clipsize, var_9839b3b1, var_7fa2b50b);
                break;
            case #"bronze_chalice_item_sr":
                if (!isdefined(var_4657c1e0.paplv)) {
                    self item_inventory::function_73ae3380(var_4657c1e0, 1);
                }
                break;
            case #"silver_chalice_item_sr":
                if (isdefined(var_4657c1e0.paplv)) {
                    self item_inventory::function_73ae3380(var_4657c1e0, 2);
                } else {
                    self item_inventory::function_73ae3380(var_4657c1e0, 1);
                    waitframe(1);
                    currentweapon = self getcurrentweapon();
                    var_4657c1e0 = self item_inventory::function_230ceec4(currentweapon);
                    if (!isdefined(var_4657c1e0)) {
                        var_4657c1e0 = function_2aa19d13();
                    }
                    if (isdefined(var_4657c1e0)) {
                        var_4657c1e0.paplv = 2;
                        self notify(#"hash_75ec9942d2d5fd0f");
                        callback::callback(#"hash_75ec9942d2d5fd0f", {#paplv:2, #var_ca3e1138:currentweapon.name});
                        self setcamo(currentweapon, isdefined(level.var_5b8c6c9b) ? level.var_5b8c6c9b : 68);
                    }
                }
                break;
            case #"gold_chalice_item_sr":
                if (isdefined(var_4657c1e0.paplv)) {
                    self item_inventory::function_73ae3380(var_4657c1e0, 3);
                } else {
                    self item_inventory::function_73ae3380(var_4657c1e0, 1);
                    waitframe(1);
                    currentweapon = self getcurrentweapon();
                    var_4657c1e0 = self item_inventory::function_230ceec4(currentweapon);
                    if (!isdefined(var_4657c1e0)) {
                        var_4657c1e0 = function_2aa19d13();
                    }
                    if (isdefined(var_4657c1e0)) {
                        var_4657c1e0.paplv = 3;
                        self notify(#"hash_75ec9942d2d5fd0f");
                        callback::callback(#"hash_75ec9942d2d5fd0f", {#paplv:3, #var_ca3e1138:currentweapon.name});
                        self setcamo(currentweapon, isdefined(level.var_f1662fe9) ? level.var_f1662fe9 : 69);
                    }
                }
                break;
            case #"brainrot_item_sr":
                var_d4f8d4e = zm_aat::function_f4f4730f("ammomod_brainrot");
                self function_37e9e0cb(var_4657c1e0, currentweapon, var_d4f8d4e, 1);
                if (!isdefined(var_4657c1e0)) {
                    var_4657c1e0 = function_2aa19d13();
                }
                if (isdefined(var_4657c1e0)) {
                    var_4657c1e0.aat = var_d4f8d4e;
                }
                break;
            case #"cryofreeze_item_sr":
                var_d4f8d4e = zm_aat::function_f4f4730f("ammomod_cryofreeze");
                self function_37e9e0cb(var_4657c1e0, currentweapon, var_d4f8d4e, 1);
                if (!isdefined(var_4657c1e0)) {
                    var_4657c1e0 = function_2aa19d13();
                }
                if (isdefined(var_4657c1e0)) {
                    var_4657c1e0.aat = var_d4f8d4e;
                }
                break;
            case #"deadwire_item_sr":
                var_d4f8d4e = zm_aat::function_f4f4730f("ammomod_deadwire");
                self function_37e9e0cb(var_4657c1e0, currentweapon, var_d4f8d4e, 1);
                if (!isdefined(var_4657c1e0)) {
                    var_4657c1e0 = function_2aa19d13();
                }
                if (isdefined(var_4657c1e0)) {
                    var_4657c1e0.aat = var_d4f8d4e;
                }
                break;
            case #"napalmburst_item_sr":
                var_d4f8d4e = zm_aat::function_f4f4730f("ammomod_napalmburst");
                self function_37e9e0cb(var_4657c1e0, currentweapon, var_d4f8d4e, 1);
                if (!isdefined(var_4657c1e0)) {
                    var_4657c1e0 = function_2aa19d13();
                }
                if (isdefined(var_4657c1e0)) {
                    var_4657c1e0.aat = var_d4f8d4e;
                }
                break;
            case #"shatterblast_item_sr":
                var_d4f8d4e = zm_aat::function_f4f4730f("ammomod_shatterblast");
                self function_37e9e0cb(var_4657c1e0, currentweapon, var_d4f8d4e, 1);
                if (!isdefined(var_4657c1e0)) {
                    var_4657c1e0 = function_2aa19d13();
                }
                if (isdefined(var_4657c1e0)) {
                    var_4657c1e0.aat = var_d4f8d4e;
                }
                break;
            }
        }
    }
}

// Namespace zm_weapons/zm_weapons
// Params 0, eflags: 0x2 linked
// Checksum 0x55cf3c1b, Offset: 0xc7c8
// Size: 0xc6
function function_2aa19d13() {
    self endon(#"death");
    currentweapon = self getcurrentweapon();
    var_4657c1e0 = self item_inventory::function_230ceec4(currentweapon);
    start_time = gettime();
    while (gettime() - start_time < 5000 && !isdefined(var_4657c1e0)) {
        waitframe(1);
        currentweapon = self getcurrentweapon();
        var_4657c1e0 = self item_inventory::function_230ceec4(currentweapon);
    }
    return var_4657c1e0;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0xd09eb53a, Offset: 0xc898
// Size: 0x676
function function_106ff01d(item) {
    currentweapon = self getcurrentweapon();
    var_4657c1e0 = self item_inventory::function_230ceec4(currentweapon);
    rarity = function_137f88c6(var_4657c1e0.itementry.rarity);
    if (isdefined(var_4657c1e0.var_e91aba42)) {
        var_e91aba42 = var_4657c1e0.var_e91aba42;
        var_c3317960 = gibserverutils::function_de4d9d(currentweapon, var_e91aba42);
    }
    if (self item_inventory::function_4d426f94(currentweapon) || self killstreaks::is_killstreak_weapon(currentweapon)) {
        return false;
    }
    switch (item.itementry.name) {
    case #"aether_tool_item_sr":
        if (rarity == "orange" || is_wonder_weapon(currentweapon)) {
            return false;
        } else {
            return true;
        }
        break;
    case #"bronze_chalice_item_sr":
        if (isdefined(var_4657c1e0.paplv)) {
            return false;
        } else {
            return true;
        }
        break;
    case #"silver_chalice_item_sr":
        if (isdefined(var_4657c1e0.paplv) && var_4657c1e0.paplv >= 2) {
            return false;
        } else {
            return true;
        }
        break;
    case #"gold_chalice_item_sr":
        if (isdefined(var_4657c1e0.paplv) && var_4657c1e0.paplv >= 3) {
            return false;
        } else {
            return true;
        }
        break;
    case #"brainrot_item_sr":
        if (is_wonder_weapon(currentweapon)) {
            return false;
        } else if (isdefined(var_c3317960)) {
            if (function_d2b370d7("ammomod_brainrot", var_c3317960)) {
                return false;
            } else if (isdefined(var_4657c1e0.aat) && zm_aat::function_296cde87(var_4657c1e0.aat) === "ammomod_brainrot") {
                return false;
            }
        } else if (isdefined(var_4657c1e0.aat) && zm_aat::function_296cde87(var_4657c1e0.aat) === "ammomod_brainrot") {
            return false;
        }
        break;
    case #"cryofreeze_item_sr":
        if (is_wonder_weapon(currentweapon)) {
            return false;
        } else if (isdefined(var_c3317960)) {
            if (function_d2b370d7("ammomod_cryofreeze", var_c3317960)) {
                return false;
            } else if (isdefined(var_4657c1e0.aat) && zm_aat::function_296cde87(var_4657c1e0.aat) === "ammomod_cryofreeze") {
                return false;
            }
        } else if (isdefined(var_4657c1e0.aat) && zm_aat::function_296cde87(var_4657c1e0.aat) === "ammomod_cryofreeze") {
            return false;
        }
        break;
    case #"deadwire_item_sr":
        if (is_wonder_weapon(currentweapon)) {
            return false;
        } else if (isdefined(var_c3317960)) {
            if (function_d2b370d7("ammomod_deadwire", var_c3317960)) {
                return false;
            } else if (isdefined(var_4657c1e0.aat) && zm_aat::function_296cde87(var_4657c1e0.aat) === "ammomod_deadwire") {
                return false;
            }
        } else if (isdefined(var_4657c1e0.aat) && zm_aat::function_296cde87(var_4657c1e0.aat) === "ammomod_deadwire") {
            return false;
        }
        break;
    case #"napalmburst_item_sr":
        if (is_wonder_weapon(currentweapon)) {
            return false;
        } else if (isdefined(var_c3317960)) {
            if (function_d2b370d7("ammomod_napalmburst", var_c3317960)) {
                return false;
            } else if (isdefined(var_4657c1e0.aat) && zm_aat::function_296cde87(var_4657c1e0.aat) === "ammomod_napalmburst") {
                return false;
            }
        } else if (isdefined(var_4657c1e0.aat) && zm_aat::function_296cde87(var_4657c1e0.aat) === "ammomod_napalmburst") {
            return false;
        }
        break;
    case #"shatterblast_item_sr":
        if (is_wonder_weapon(currentweapon)) {
            return false;
        } else if (isdefined(var_c3317960)) {
            if (function_d2b370d7("ammomod_shatterblast", var_c3317960)) {
                return false;
            } else if (isdefined(var_4657c1e0.aat) && zm_aat::function_296cde87(var_4657c1e0.aat) === "ammomod_shatterblast") {
                return false;
            } else {
                return true;
            }
        } else if (isdefined(var_4657c1e0.aat) && zm_aat::function_296cde87(var_4657c1e0.aat) === "ammomod_shatterblast") {
            return false;
        } else {
            return true;
        }
        break;
    }
    return true;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x380fdde0, Offset: 0xcf18
// Size: 0x5c
function function_a157e6a(*str_notify) {
    self val::reset(#"hash_51adda24c1794e27", "disable_weapons");
    self val::reset(#"hash_51adda24c1794e27", "disable_weapon_cycling");
}

// Namespace zm_weapons/zm_weapons
// Params 7, eflags: 0x2 linked
// Checksum 0x74dbcf0b, Offset: 0xcf80
// Size: 0x764
function function_52b3c7ca(weapon, item, var_b2e08916, clipsize, var_9839b3b1, var_7fa2b50b, var_6bcacc0c) {
    if (isdefined(item)) {
        rootweapon = weapon.rootweapon;
        rarity = function_137f88c6(item.itementry.rarity);
        var_ecf677cd = 0;
        if (isdefined(var_b2e08916) && !isdefined(var_6bcacc0c)) {
            weaponstatname = weapon.statname;
            var_c4af33 = function_f62a996b(weaponstatname, var_b2e08916);
            blueprint_weapon = var_c4af33.weapon;
            attachments = blueprint_weapon.attachments;
            var_e91aba42 = var_c4af33.var_fd90b0bb;
            rootweapon = blueprint_weapon.rootweapon;
        } else if (isdefined(var_6bcacc0c)) {
            var_ecf677cd = 1;
            blueprint_weapon = var_6bcacc0c.weapon;
            attachments = blueprint_weapon.attachments;
            weaponoptions = var_6bcacc0c.renderoptionsweapon;
            var_e91aba42 = var_6bcacc0c.var_fd90b0bb;
            var_908f65ca = var_6bcacc0c.var_b23a1a88;
            rootweapon = blueprint_weapon.rootweapon;
        }
        var_a0cc02cf = 0;
        var_96c71057 = 0;
        chest_weapon = 0;
        var_604af0c7 = 0;
        var_65cfac4a = 0;
        var_5302a1ef = 0;
        if (is_true(item.var_b3546c09)) {
            var_5302a1ef = 1;
        }
        if (isdefined(item.var_d688ad29)) {
            var_65cfac4a = 1;
        }
        if (isdefined(item.var_387e74f4)) {
            chest_weapon = 1;
        }
        if (isdefined(item.var_569199b9)) {
            var_604af0c7 = 1;
        }
        if (isdefined(item.var_a0cc02cf)) {
            var_a0cc02cf = 1;
        }
        if (isdefined(item.var_96c71057)) {
            var_96c71057 = 1;
        }
        if (isdefined(item.paplv)) {
            paplv = item.paplv;
            var_ab07847c = rootweapon.name;
            var_ab07847c = rootweapon.name + "_upgraded";
            var_8114384d = level.var_c1f1b29a[var_ab07847c][rarity];
        } else {
            var_8114384d = level.var_ec04a8a4[rootweapon.name][rarity];
        }
        if (isdefined(item.aat)) {
            aat_name = item.aat;
        }
        if (ishash(var_8114384d) || isstring(var_8114384d)) {
            point = function_4ba8fde(var_8114384d);
            if (isdefined(point)) {
                if (isdefined(clipsize) && isdefined(var_9839b3b1)) {
                    point.amount = clipsize;
                    point.stockammo = var_9839b3b1;
                    if (isdefined(var_7fa2b50b)) {
                        point.var_bce3d77a = var_7fa2b50b;
                    }
                }
                for (n_timeout = 0; n_timeout <= 3; n_timeout += float(function_60d95f53()) / 1000) {
                    dropweapon = self item_inventory::drop_inventory_item(item.networkid);
                    if (isdefined(dropweapon)) {
                        break;
                    }
                    waitframe(1);
                }
                if (!isdefined(dropweapon)) {
                    self val::reset(#"hash_51adda24c1794e27", "disable_weapon_cycling");
                    self val::reset(#"hash_51adda24c1794e27", "disable_weapons");
                    return;
                }
                dropweapon.hidetime = 1;
                dropweapon hide();
                dropweapon.var_864ea466 = 1;
                item_world::consume_item(dropweapon);
                waitframes = 1;
                if (rootweapon.weapclass === #"melee") {
                    waitframes = 2;
                }
                util::wait_network_frame(waitframes);
                if (var_ecf677cd) {
                    newweapon = self function_943eabd9(point, 1, 0, 0, attachments, weaponoptions, var_e91aba42, var_908f65ca);
                } else {
                    newweapon = self function_943eabd9(point, 1, 0, 0, attachments, undefined, var_e91aba42, undefined);
                }
                while (self item_inventory::function_4d426f94(self item_inventory::get_current_weapon())) {
                    waitframe(1);
                }
                var_c3317960 = gibserverutils::function_de4d9d(blueprint_weapon, var_e91aba42);
                var_a6d31447 = undefined;
                foreach (inventory_item in self.inventory.items) {
                    if (inventory_item.id === point.id && inventory_item.networkid === point.networkid) {
                        var_a6d31447 = inventory_item;
                        break;
                    }
                }
                if (isdefined(var_a6d31447)) {
                    if (!function_d2b370d7(aat_name, var_c3317960)) {
                        self function_37e9e0cb(point, newweapon, aat_name, 0);
                        var_a6d31447.aat = aat_name;
                    }
                    if (isdefined(paplv)) {
                        var_a6d31447.paplv = paplv;
                        self item_inventory::function_d92c6b5b(undefined, undefined, paplv);
                    }
                    var_a6d31447 function_9aaa198a(var_5302a1ef, var_a0cc02cf, var_96c71057, var_65cfac4a, chest_weapon, var_604af0c7);
                }
            }
        }
    }
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0xdb35ad6c, Offset: 0xd6f0
// Size: 0x274
function function_6173b981(var_b2e08916) {
    self endoncallback(&function_a157e6a, #"death");
    if (self function_104d7b4d() || self isswitchingweapons() || isdefined(self.laststandpistol) || is_true(self.var_b895a3ff) || self function_b2ec14ab()) {
        return;
    }
    self notify("22dae52f1aaf98a0");
    self endon("22dae52f1aaf98a0");
    self val::set(#"hash_51adda24c1794e27", "disable_weapons");
    self val::set(#"hash_51adda24c1794e27", "disable_weapon_cycling");
    waitframe(1);
    weapon = self getcurrentweapon();
    clipsize = self getweaponammoclip(weapon);
    var_9839b3b1 = self getweaponammostock(weapon);
    if (is_true(weapon.isdualwield) && isdefined(weapon.dualwieldweapon) && weapon.dualwieldweapon != level.weaponnone) {
        var_7fa2b50b = self getweaponammoclip(weapon.dualwieldweapon);
    }
    item = self item_inventory::function_230ceec4(weapon);
    self function_52b3c7ca(weapon, item, var_b2e08916, clipsize, var_9839b3b1, var_7fa2b50b);
    self val::reset(#"hash_51adda24c1794e27", "disable_weapon_cycling");
    self val::reset(#"hash_51adda24c1794e27", "disable_weapons");
}

// Namespace zm_weapons/zm_weapons
// Params 0, eflags: 0x2 linked
// Checksum 0x51f1e68a, Offset: 0xd970
// Size: 0x2cc
function function_56c9bbd4() {
    self endoncallback(&function_a157e6a, #"death");
    if (self function_104d7b4d() || self isswitchingweapons() || isdefined(self.laststandpistol) || is_true(self.var_b895a3ff) || self function_b2ec14ab()) {
        return;
    }
    self notify("4896eb4173b0ea95");
    self endon("4896eb4173b0ea95");
    self val::set(#"hash_51adda24c1794e27", "disable_weapons");
    self val::set(#"hash_51adda24c1794e27", "disable_weapon_cycling");
    waitframe(1);
    weapon = self getcurrentweapon();
    clipsize = self getweaponammoclip(weapon);
    var_9839b3b1 = self getweaponammostock(weapon);
    if (is_true(weapon.isdualwield) && isdefined(weapon.dualwieldweapon) && weapon.dualwieldweapon != level.weaponnone) {
        var_7fa2b50b = self getweaponammoclip(weapon.dualwieldweapon);
    }
    item = self item_inventory::function_230ceec4(weapon);
    waitresult = self waittilltimeout(1, #"hash_1e7eaffac0fda4d4");
    var_6bcacc0c = self function_446b181e(weapon.statname);
    if (isdefined(var_6bcacc0c)) {
        self function_52b3c7ca(weapon, item, undefined, clipsize, var_9839b3b1, var_7fa2b50b, var_6bcacc0c);
    }
    self val::reset(#"hash_51adda24c1794e27", "disable_weapons");
    self val::reset(#"hash_51adda24c1794e27", "disable_weapon_cycling");
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x6 linked
// Checksum 0x9d68f627, Offset: 0xdc48
// Size: 0x36
function private function_adff8850(*params) {
    if (!isplayer(self)) {
        self notify(#"hash_1e7eaffac0fda4d4");
    }
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x2 linked
// Checksum 0xefff8a10, Offset: 0xdc88
// Size: 0x1a6
function function_137f88c6(var_a0abda6 = #"resource", var_9a8a7d26 = 0) {
    rarity = #"white";
    switch (var_a0abda6) {
    case #"resource":
    case #"loadout":
        rarity = #"white";
        if (var_9a8a7d26) {
            rarity = #"green";
        }
        break;
    case #"uncommon":
        rarity = #"green";
        if (var_9a8a7d26) {
            rarity = #"blue";
        }
        break;
    case #"rare":
        rarity = #"blue";
        if (var_9a8a7d26) {
            rarity = #"purple";
        }
        break;
    case #"epic":
        rarity = #"purple";
        if (var_9a8a7d26) {
            rarity = #"legendary";
        }
        break;
    case #"legendary":
        rarity = #"orange";
        break;
    }
    return rarity;
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x2 linked
// Checksum 0x1c0f7068, Offset: 0xde38
// Size: 0x1a4
function function_d2b370d7(aat_name, var_c3317960) {
    var_4f0c684c = zm_aat::function_296cde87(aat_name);
    if (isdefined(var_c3317960)) {
        switch (var_c3317960) {
        case 1:
            if (var_4f0c684c != "ammomod_cryofreeze") {
                return true;
            }
            break;
        case 3:
        case 10:
        case 12:
            if (var_4f0c684c != "ammomod_napalmburst") {
                return true;
            }
            break;
        case 4:
        case 14:
        case 15:
            if (var_4f0c684c != "ammomod_deadwire") {
                return true;
            }
            break;
        case 7:
        case 9:
            if (var_4f0c684c != "ammomod_shatterblast") {
                return true;
            }
            break;
        case 6:
        case 8:
        case 16:
            if (var_4f0c684c != "ammomod_brainrot") {
                return true;
            }
            break;
        }
    }
    return false;
}

// Namespace zm_weapons/zm_weapons
// Params 0, eflags: 0x6 linked
// Checksum 0xf06c5d26, Offset: 0xdfe8
// Size: 0x118
function private function_9b75e4aa() {
    self endon(#"disconnect");
    while (true) {
        waitresult = self waittill(#"menuresponse");
        menu = waitresult.menu;
        response = waitresult.response;
        intval = waitresult.intpayload;
        if (menu == #"hash_622989972bff8eae" && response == #"hash_f501dc3a5854d86") {
            self thread function_6173b981(intval);
            continue;
        }
        if (menu == #"hash_622989972bff8eae" && response == #"hash_2ab01373ffdd165c") {
            self thread function_56c9bbd4();
        }
    }
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0xa74c1e64, Offset: 0xe108
// Size: 0x24
function on_player_connect(*params) {
    self thread function_9b75e4aa();
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x8bb4d7d7, Offset: 0xe138
// Size: 0xec
function on_weapon_change(params) {
    self endon(#"disconnect");
    weapon = params.weapon;
    if (weapon === level.weaponnone) {
        return;
    }
    waitframe(1);
    networkid = self item_inventory::function_ec087745();
    if (networkid != 32767) {
        item = self item_inventory::get_inventory_item(networkid);
        if (isdefined(item)) {
            if (isdefined(item.aat)) {
                self function_e1fd87b0(weapon, item.aat);
                return;
            }
            self function_51897592(weapon);
        }
    }
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0xcbffc83c, Offset: 0xe230
// Size: 0x206
function function_89e5e7dd(var_d393ba53) {
    switch (var_d393ba53) {
    case #"ammomod_napalmburst":
        if (!is_true(getgametypesetting(#"hash_10de3b1cea667398"))) {
            return false;
        }
        break;
    case #"ammomod_cryofreeze":
        if (!is_true(getgametypesetting(#"hash_54537cc749c2001d"))) {
            return false;
        }
        break;
    case #"ammomod_brainrot":
        if (!is_true(getgametypesetting(#"hash_7ead02dd6721f46a"))) {
            return false;
        }
        break;
    case #"ammomod_deadwire":
        if (!is_true(getgametypesetting(#"hash_66cad2a554f4d928"))) {
            return false;
        }
        break;
    case #"ammomod_electriccherry":
        if (!is_true(getgametypesetting(#"hash_87dd6c14b668b1d"))) {
            return false;
        }
        break;
    case #"ammomod_shatterblast":
        if (!is_true(getgametypesetting(#"hash_2537d92585f4fce2"))) {
            return false;
        }
        break;
    }
    return true;
}

// Namespace zm_weapons/zm_weapons
// Params 4, eflags: 0x2 linked
// Checksum 0xdcd791fd, Offset: 0xe440
// Size: 0x13c
function function_37e9e0cb(item, weapon, aat_name, var_9f36d483 = 1) {
    var_4f0c684c = zm_aat::function_296cde87(aat_name);
    if (function_89e5e7dd(var_4f0c684c)) {
        self notify(#"hash_30e4242806b5da87");
        self item_inventory::function_b579540e(item, aat_name);
        self function_e1fd87b0(weapon, aat_name);
        if (is_true(var_9f36d483) && isdefined(level.aat[self.aat[weapon]].var_68a3f665)) {
            level thread popups::displayteammessagetoteam(level.aat[self.aat[weapon]].var_68a3f665, self, self.team, weapon.displayname);
        }
    }
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x2 linked
// Checksum 0xda16821, Offset: 0xe588
// Size: 0x6c
function function_e1fd87b0(weapon, aat_name) {
    if (isdefined(weapon) && !aat::is_exempt_weapon(weapon) && weapon != level.weaponnone) {
        self aat::acquire(weapon, aat_name);
    }
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0xef6af7cc, Offset: 0xe600
// Size: 0x3c
function function_51897592(weapon) {
    if (self aat::has_aat(weapon)) {
        self aat::remove(weapon);
    }
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x2 linked
// Checksum 0x1813443f, Offset: 0xe648
// Size: 0x5e
function function_896671d5(weapon, paplv) {
    switch (paplv) {
    case 2:
        return weapon.var_40134867;
    case 3:
        return weapon.var_3267ad10;
    }
    return 1;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x9b9f7bd7, Offset: 0xe6b0
// Size: 0x15e
function function_d85e6c3a(itementry) {
    var_bc61fcdc = "none";
    if (isdefined(itementry.rarity)) {
        var_bc61fcdc = itementry.rarity;
    }
    switch (var_bc61fcdc) {
    case #"uncommon":
        if (isdefined(itementry.weapon.var_f9a85dad)) {
            return itementry.weapon.var_f9a85dad;
        }
        break;
    case #"rare":
        if (isdefined(itementry.weapon.var_7993dd86)) {
            return itementry.weapon.var_7993dd86;
        }
        break;
    case #"epic":
        if (isdefined(itementry.weapon.var_2751b903)) {
            return itementry.weapon.var_2751b903;
        }
        break;
    case #"ultra":
    case #"legendary":
        if (isdefined(itementry.weapon.var_3d17e48f)) {
            return itementry.weapon.var_3d17e48f;
        }
        break;
    }
    return 1;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x40e7686d, Offset: 0xe818
// Size: 0x40
function function_f066796f(weapon) {
    if (isdefined(weapon) && isdefined(level.zombie_weapons[weapon])) {
        return level.zombie_weapons[weapon].element;
    }
}

// Namespace zm_weapons/zm_weapons
// Params 5, eflags: 0x2 linked
// Checksum 0x1afcb249, Offset: 0xe860
// Size: 0x190
function function_90953640(weapon, var_d792c587 = 1, update_rate = float(function_60d95f53()) / 1000, var_e4055132 = 0, var_a0f8ba0e) {
    if (isdefined(var_a0f8ba0e)) {
    }
    if (!isdefined(weapon) || isdefined(weapon) && isdefined(level.var_6476d5c6[weapon])) {
        return;
    }
    if (var_e4055132) {
        for (clientnum = 0; clientnum < 5; clientnum++) {
            level.var_6476d5c6[weapon][clientnum] = new class_c6c0e94();
            [[ level.var_6476d5c6[weapon][clientnum] ]]->initialize(weapon.name + clientnum, var_d792c587, update_rate, var_a0f8ba0e);
        }
        return;
    }
    level.var_6476d5c6[weapon] = new class_c6c0e94();
    [[ level.var_6476d5c6[weapon] ]]->initialize(weapon.name, var_d792c587, update_rate, var_a0f8ba0e);
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x2 linked
// Checksum 0xcf38998c, Offset: 0xe9f8
// Size: 0x9c
function function_a76ab7f7(var_98a67ca5, attacker) {
    if (isclass(level.var_6476d5c6[var_98a67ca5])) {
        [[ level.var_6476d5c6[var_98a67ca5] ]]->waitinqueue({});
        return;
    }
    if (isplayer(attacker)) {
        [[ level.var_6476d5c6[var_98a67ca5][attacker getentitynumber()] ]]->waitinqueue({});
    }
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x0
// Checksum 0x1c9607d3, Offset: 0xeaa0
// Size: 0x64
function function_8a74b35c(weapon) {
    if (!isdefined(weapon) || isdefined(weapon) && isdefined(level.var_b6bda274[weapon])) {
        return;
    }
    if (!isdefined(level.var_1d1a594e)) {
        level.var_1d1a594e = [];
    }
    level.var_b6bda274[weapon] = 1;
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x8b2a7d8e, Offset: 0xeb10
// Size: 0x20
function function_be9d79c3(weapon) {
    level.var_f96e7a56[weapon] = 1;
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x2 linked
// Checksum 0xabff3278, Offset: 0xeb38
// Size: 0xb2
function function_404c3ad5(weapon, callback) {
    if (!isdefined(level.var_60387857[weapon])) {
        level.var_60387857[weapon] = [];
    } else if (!isarray(level.var_60387857[weapon])) {
        level.var_60387857[weapon] = array(level.var_60387857[weapon]);
    }
    level.var_60387857[weapon][level.var_60387857[weapon].size] = callback;
}

// Namespace zm_weapons/zm_weapons
// Params 2, eflags: 0x2 linked
// Checksum 0x3c05b0a1, Offset: 0xebf8
// Size: 0xda
function function_c69910e2(weapon_name, rarity) {
    switch (weapon_name) {
    case #"pistol_burst_t9":
        item_name = level.var_29d88fe5[#"pistol_burst_t9_dw"][rarity];
        return item_name;
    case #"pistol_revolver_t9":
        item_name = level.var_29d88fe5[#"pistol_revolver_t9_dw"][rarity];
        return item_name;
    case #"pistol_semiauto_t9":
        item_name = level.var_29d88fe5[#"pistol_semiauto_t9_dw"][rarity];
        return item_name;
    }
}

// Namespace zm_weapons/zm_weapons
// Params 1, eflags: 0x2 linked
// Checksum 0x42d51d1b, Offset: 0xece0
// Size: 0x20
function function_76403f51(weapon) {
    level.var_d2895b5f[weapon] = 1;
}

// Namespace zm_weapons/zm_weapons
// Params 6, eflags: 0x2 linked
// Checksum 0x7108311, Offset: 0xed08
// Size: 0x102
function function_9aaa198a(var_5302a1ef = 0, var_a0cc02cf = 0, var_96c71057 = 0, var_65cfac4a = 0, chest_weapon = 0, var_604af0c7 = 0) {
    if (var_5302a1ef) {
        self.var_b3546c09 = 1;
    }
    if (var_a0cc02cf) {
        self.var_a0cc02cf = 1;
    }
    if (var_96c71057) {
        self.var_96c71057 = 1;
    }
    if (var_65cfac4a) {
        self.var_d688ad29 = 1;
    }
    if (chest_weapon) {
        self.var_387e74f4 = 1;
    }
    if (var_604af0c7) {
        self.var_569199b9 = 1;
    }
}

/#

    // Namespace zm_weapons/zm_weapons
    // Params 0, eflags: 0x0
    // Checksum 0x33fdc268, Offset: 0xee18
    // Size: 0x7c
    function function_800654fc() {
        level endon(#"game_ended");
        adddebugcommand("<unknown string>" + function_9e72a96(#"ray_gun_item_sr") + "<unknown string>");
        namespace_420b39d3::function_d8ef0f00(&function_8610a5cc);
    }

    // Namespace zm_weapons/zm_weapons
    // Params 1, eflags: 0x0
    // Checksum 0xd078fe6d, Offset: 0xeea0
    // Size: 0x130
    function function_8610a5cc(params) {
        tokens = strtok(params.value, "<unknown string>");
        if (!tokens.size || tokens[0] != "<unknown string>") {
            return;
        }
        foreach (player in getplayers()) {
            item = function_4ba8fde(hash(tokens[1]));
            if (isdefined(item)) {
                player function_98776900(item);
            }
        }
    }

#/
