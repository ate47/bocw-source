// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\gametypes\globallogic.gsc;
#using scripts\zm_common\zm_power.gsc;
#using script_3ddf84b7bb3bf47d;
#using scripts\zm_common\zm_weapons.gsc;
#using script_18077945bb84ede7;
#using scripts\zm_common\zm_utility.gsc;
#using script_1caf36ff04a85ff6;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\item_world.gsc;
#using scripts\core_common\armor.gsc;
#using script_5fb26eef020f9958;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using script_471b31bd963b388e;
#using script_340a2e805e35f7a2;
#using scripts\core_common\item_drop.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\zm_common\zm_utility_zsurvival.gsc;
#using script_3751b21462a54a7d;
#using scripts\core_common\player\player_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\fx_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\content_manager.gsc;
#using scripts\core_common\struct.gsc;

#namespace namespace_dd7e54e3;

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 0, eflags: 0x5
// Checksum 0xcf023dd9, Offset: 0x2c8
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"hash_7da9887a9375293", &preinit, &postinit, undefined, undefined);
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 0, eflags: 0x2 linked
// Checksum 0x27bef3ad, Offset: 0x320
// Size: 0x20c
function preinit() {
    level.var_2a994cc0 = sr_armor_menu::register();
    level.var_ade77b07 = array(#"hash_6c055e078965b4e3", #"armor_item_lv1_t9_sr", #"armor_item_lv2_t9_sr", #"armor_item_lv3_t9_sr");
    level.var_3a2e321c = array(250, 500, 1000, 250);
    level.weaponrarities = array(#"hash_1bce1d027595650f", #"green", #"blue", #"purple", #"orange");
    level.var_9d209b60 = array(250, 500, 1000, 500, 1000);
    level.var_1b95a5be = array(0, 0, 0, 1, 1);
    if (!isdefined(level.var_1b57c9ca)) {
        level.var_1b57c9ca = 0;
    }
    namespace_52c8f34d::preinit();
    callback::on_spawned(&function_ef39f61b);
    callback::on_item_pickup(&on_item_pickup);
    clientfield::register("scriptmover", "" + #"hash_7dfc37315a4eff0", 1, 1, "int");
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 0, eflags: 0x2 linked
// Checksum 0x42ee5ac4, Offset: 0x538
// Size: 0x9c
function postinit() {
    mapdestinations = struct::get_array(#"hash_313be7fccc870cdd", "variantname");
    if ((zm_utility::is_classic() || zm_utility::function_c4b020f8()) && isdefined(mapdestinations) && mapdestinations.size > 0) {
        level thread function_68649d54(mapdestinations[0]);
    }
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 1, eflags: 0x2 linked
// Checksum 0xc16917ef, Offset: 0x5e0
// Size: 0x90
function function_1cbc3614(var_beee4994) {
    foreach (struct in var_beee4994) {
        function_93a99046(struct);
    }
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 1, eflags: 0x2 linked
// Checksum 0xb1bbb7f8, Offset: 0x678
// Size: 0x43c
function function_93a99046(struct) {
    assert(isstruct(struct), "<unknown string>");
    if (zm_utility::is_survival() || is_true(level.var_1b57c9ca)) {
        model = #"hash_6847db4bdfca2dc8";
        if (zm_utility::is_survival()) {
            var_c6d25878 = &zm_utility::function_f5a222a8;
        } else {
            var_c6d25878 = &zm_utility::function_4a4cf79a;
        }
    } else {
        model = #"hash_74c59e8a4df12e7f";
        var_c6d25878 = &zm_utility::function_4a4cf79a;
    }
    scriptmodel = content_manager::spawn_script_model(struct, model, 1);
    zm_utility::function_ca960904(scriptmodel);
    if (struct.parent.content_script_name !== #"safehouse") {
        objid = [[ var_c6d25878 ]](#"hash_25a19901af9e8467", scriptmodel);
        struct.objectiveid = objid;
        scriptmodel.objectiveid = objid;
    }
    forward = anglestoforward(scriptmodel.angles);
    forward = vectornormalize(forward);
    offset = forward * 24;
    offset = (offset[0], offset[1], offset[2] + 50);
    if (scriptmodel.script_noteworthy === "power") {
        trigger = content_manager::spawn_interact(struct, &function_fe5f8894, #"zombie/need_power", undefined, 64, 128, undefined, offset);
        scriptmodel.var_49d94d8a = &function_38ac8b73;
        scriptmodel.var_7cf0a191 = &function_e255b251;
        scriptmodel thread zm_power::function_da4a8c05(#"hash_614130df578d98f0", struct.script_int);
    } else {
        trigger = content_manager::spawn_interact(struct, &function_fe5f8894, #"hash_614130df578d98f0", undefined, 64, 128, undefined, offset);
        scriptmodel function_38ac8b73();
        if (is_true(level.var_53bc31ad)) {
            scriptmodel.var_7cf0a191 = &function_e255b251;
        }
    }
    trigger.scriptmodel = scriptmodel;
    trigger thread function_ab8eee07();
    scriptmodel.trigger = trigger;
    if (zm_utility::is_survival()) {
        level thread zm_utility::clear_vehicles(scriptmodel);
    }
    scriptmodel clientfield::set("item_machine_spawn_rob", 1);
    if (is_true(level.var_53bc31ad)) {
        scriptmodel fx::play("sr/fx9_safehouse_mchn_upgrades_spawn", struct.origin, undefined, #"hash_6088c0a8269c8f8b");
        return;
    }
    playfx("sr/fx9_safehouse_mchn_upgrades_spawn", struct.origin);
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 0, eflags: 0x2 linked
// Checksum 0xa6e96f41, Offset: 0xac0
// Size: 0xea
function function_ab8eee07() {
    self endon(#"death");
    while (true) {
        players = function_a1ef346b();
        foreach (player in players) {
            if (istouching(player.origin, self)) {
                player globallogic::function_d96c031e();
            }
        }
        waitframe(1);
    }
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 0, eflags: 0x2 linked
// Checksum 0x18e9751f, Offset: 0xbb8
// Size: 0x9c
function function_38ac8b73() {
    if (!self flag::get(#"hash_1fdaddc50f1d62c5")) {
        self flag::set(#"hash_1fdaddc50f1d62c5");
        self thread scene::play("p9_fxanim_zm_gp_armor_station_bundle", "Shot 1", self);
    }
    self clientfield::set("" + #"hash_7dfc37315a4eff0", 1);
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 0, eflags: 0x2 linked
// Checksum 0x95b42528, Offset: 0xc60
// Size: 0x2c
function function_e255b251() {
    self clientfield::set("" + #"hash_7dfc37315a4eff0", 0);
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 1, eflags: 0x2 linked
// Checksum 0x67ede1f4, Offset: 0xc98
// Size: 0x134
function function_fe5f8894(eventstruct) {
    player = eventstruct.activator;
    machine = self.scriptmodel;
    assert(isdefined(machine), "<unknown string>");
    if (isplayer(player)) {
        if (!level.var_2a994cc0 sr_armor_menu::is_open(player) && !player clientfield::get_player_uimodel("hudItems.srOverlayOpen") && machine.script_noteworthy !== "power") {
            player notify(#"hash_5f178db4550eeae9");
            level.var_2a994cc0 sr_armor_menu::open(player, 0);
            player thread function_cb2d9b9b(machine, self);
            player namespace_553954de::function_14bada94();
        }
    }
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 2, eflags: 0x2 linked
// Checksum 0x5eb481b4, Offset: 0xdd8
// Size: 0x1b6
function function_6c71e778(machine, trigger) {
    if (!isplayer(self) || !isdefined(level.var_2a994cc0)) {
        return;
    }
    self val::reset(#"hash_55af237178580523", "disable_weapon_cycling");
    if (isdefined(machine) && isdefined(trigger)) {
        str_hint = #"hash_614130df578d98f0";
        if (machine.script_noteworthy === "power") {
            str_hint = #"zombie/need_power";
        }
        trigger sethintstringforplayer(self, str_hint);
        if (isdefined(machine.objectiveid)) {
            objective_setvisibletoplayer(machine.objectiveid, self);
            zm_utility::function_e8f4d47b(self, machine.objectiveid, 0);
        }
    }
    if (level.var_2a994cc0 sr_armor_menu::is_open(self) && self clientfield::get_player_uimodel("hudItems.srOverlayOpen")) {
        level.var_2a994cc0 sr_armor_menu::close(self);
        self namespace_553954de::function_548f282();
    }
    self notify(#"hash_5e4c1bf6d3ef5df0");
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 0, eflags: 0x2 linked
// Checksum 0x4306993e, Offset: 0xf98
// Size: 0x9e
function function_ef39f61b() {
    level endon(#"game_ended");
    self endon(#"disconnect");
    while (true) {
        if ((isdefined(self.armortier) ? self.armortier : 0) != 0 && self.maxarmor != 0) {
            self clientfield::set_player_uimodel("hudItems.armorPercent", self.armor / self.maxarmor);
        }
        waitframe(1);
    }
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 2, eflags: 0x2 linked
// Checksum 0x6a9c2fcf, Offset: 0x1040
// Size: 0x194
function function_620db6a4(machine, trigger) {
    self endon(#"disconnect", #"death", #"hash_5e4c1bf6d3ef5df0");
    var_f9c2bece = distance2d(machine.origin, self.origin);
    start_origin = self.origin;
    while ((distance2d(machine.origin, self.origin) <= var_f9c2bece || distance2d(self.origin, start_origin) < 32) && !self laststand::player_is_in_laststand() && !self isinvehicle() && machine.script_noteworthy !== "power") {
        waitframe(1);
        if (!isdefined(machine)) {
            break;
        }
    }
    if (level.var_2a994cc0 sr_armor_menu::is_open(self) && self clientfield::get_player_uimodel("hudItems.srOverlayOpen")) {
        self function_6c71e778(machine, trigger);
    }
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 1, eflags: 0x2 linked
// Checksum 0xb36723a, Offset: 0x11e0
// Size: 0x12e
function function_137f88c6(var_a0abda6 = #"resource") {
    rarity = #"white";
    switch (var_a0abda6) {
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
    }
    return rarity;
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 2, eflags: 0x2 linked
// Checksum 0xd90fe30c, Offset: 0x1318
// Size: 0x17a
function function_44368952(weapon, rarity = #"white") {
    switch (rarity) {
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
    }
    if (zm_weapons::is_weapon_upgraded(weapon)) {
        weapon = zm_weapons::get_base_weapon(weapon);
    }
    weapon_name = weapon.name;
    item_name = level.var_29d88fe5[weapon_name][rarity];
    return item_name;
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 1, eflags: 0x2 linked
// Checksum 0x2f8c8a50, Offset: 0x14a0
// Size: 0x216
function function_1490abe2(weapon) {
    var_78c4a705 = getweapon(#"bare_hands");
    item = item_inventory::function_230ceec4(weapon);
    if (!isdefined(weapon.name)) {
        return false;
    }
    if (killstreaks::is_killstreak_weapon(weapon)) {
        return false;
    }
    if (zm_weapons::is_wonder_weapon(weapon)) {
        return false;
    }
    if (weapon == level.weaponnone || weapon == var_78c4a705) {
        return false;
    }
    if (isdefined(item.itementry.name)) {
        switch (item.itementry.name) {
        case #"ww_ieu_shockwave_t9_upgraded_item_sr":
        case #"ww_ieu_gas_t9_item_sr":
        case #"ww_ieu_plasma_t9_item_sr":
        case #"ww_ieu_gas_t9_upgraded_item_sr":
        case #"ww_ieu_acid_t9_upgraded_item_sr":
        case #"ww_ieu_shockwave_t9_item_sr":
        case #"ww_ieu_electric_t9_item_sr":
        case #"hash_3dff7d94b9ae5c97":
        case #"ww_ieu_acid_t9_item_sr":
        case #"ww_ieu_electric_t9_upgraded_item_sr":
        case #"ww_ieu_plasma_t9_upgraded_item_sr":
            return false;
        }
    }
    switch (weapon.name) {
    case #"ray_gun_mk2":
    case #"ray_gun_upgraded":
    case #"ray_gun":
    case #"ray_gun_mk2_upgraded":
        return false;
    }
    return true;
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 0, eflags: 0x2 linked
// Checksum 0x2500aedd, Offset: 0x16c0
// Size: 0x3e
function function_5aad4a79() {
    if (!is_true(getgametypesetting(#"hash_48d605c9ac0d9395"))) {
        return false;
    }
    return true;
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 2, eflags: 0x2 linked
// Checksum 0x5495aaeb, Offset: 0x1708
// Size: 0xc6e
function function_cb2d9b9b(machine, trigger) {
    self endon(#"hash_5f178db4550eeae9");
    trigger sethintstringforplayer(self, "");
    if (isdefined(machine.objectiveid)) {
        zm_utility::function_e8f4d47b(self, machine.objectiveid, 1);
        objective_setinvisibletoplayer(machine.objectiveid, self);
    }
    self endoncallback(&function_6c71e778, #"death");
    self thread function_620db6a4(machine, trigger);
    while (true) {
        while (isplayer(self) && self isswitchingweapons() || isplayer(self) && self getcurrentweapon() == level.weaponnone) {
            waitframe(1);
        }
        waitresult = self waittill(#"menuresponse");
        menu = waitresult.menu;
        response = waitresult.response;
        intpayload = waitresult.intpayload;
        if (menu == #"sr_armor_menu") {
            weapon = self getcurrentweapon();
            item = item_inventory::function_230ceec4(weapon);
            var_bfd531ce = item_inventory::function_d768ea30();
            switch (waitresult.response) {
            case #"hash_1028a1675bc987fe":
                var_1a988176 = level.var_ade77b07[intpayload];
                var_1d1d4a2a = level.var_3a2e321c[intpayload];
                if (var_1a988176 == #"armor_item_lv3_t9_sr") {
                    var_3069fe3 = self namespace_2a9f256a::function_415b1e(var_1d1d4a2a);
                } else {
                    var_3069fe3 = self namespace_2a9f256a::function_c29a8aa1(var_1d1d4a2a);
                }
                if (var_3069fe3 && isdefined(var_1a988176) && isdefined(var_1d1d4a2a)) {
                    if (function_5aad4a79()) {
                        self playlocalsound(#"hash_500cfba1d8f28c89");
                        if (var_1a988176 == #"hash_6c055e078965b4e3") {
                            self.armor = self.maxarmor;
                        } else {
                            self give_armor(var_1a988176);
                        }
                        self playrumbleonentity(#"zm_interact_rumble");
                        machine scene::stop("p9_fxanim_zm_gp_armor_station_bundle");
                        machine animation::stop();
                        waitframe(1);
                        machine thread scene::play("p9_fxanim_zm_gp_armor_station_bundle", "Shot 2", machine);
                        if (var_1a988176 == #"armor_item_lv3_t9_sr") {
                            self namespace_2a9f256a::function_8bfa3267(var_1d1d4a2a);
                        } else {
                            self namespace_2a9f256a::function_3610299b(var_1d1d4a2a);
                        }
                    } else {
                        machine playsoundtoplayer(#"uin_default_action_denied", self);
                    }
                } else {
                    machine playsoundtoplayer(#"uin_default_action_denied", self);
                }
                break;
            case #"tier_upgrade":
                if (!function_1490abe2(weapon) || self isswitchingweapons()) {
                    machine playsoundtoplayer(#"uin_default_action_denied", self);
                } else {
                    var_35d31714 = level.weaponrarities[intpayload];
                    var_9b05d455 = level.var_9d209b60[intpayload];
                    var_372067dc = level.var_1b95a5be[intpayload];
                    if (isdefined(var_35d31714) && isdefined(var_9b05d455)) {
                        if (var_35d31714 === #"hash_1bce1d027595650f") {
                            if (weapon.weapclass === "melee" || weapon.weapclass === "rocketlauncher" || weapon.weapclass === "grenade" || weapon.name === #"special_ballisticknife_t9_dw" || weapon.name === #"special_ballisticknife_t9_dw_upgraded" || weapon.name === #"special_nailgun_t9" || weapon.name === #"special_nailgun_t9_upgraded") {
                                machine playsoundtoplayer(#"uin_default_action_denied", self);
                            } else {
                                item_weapon = function_44368952(weapon, item.itementry.rarity);
                                var_79770f09 = function_137f88c6(item.itementry.rarity);
                                var_3069fe3 = self namespace_2a9f256a::function_c29a8aa1(250);
                                if (var_3069fe3) {
                                    currentweapon = self getcurrentweapon();
                                    clipsize = self getweaponammoclip(currentweapon);
                                    var_9839b3b1 = self getweaponammostock(currentweapon);
                                    if (is_true(currentweapon.isdualwield) && isdefined(currentweapon.dualwieldweapon) && currentweapon.dualwieldweapon != level.weaponnone) {
                                        var_7fa2b50b = self getweaponammoclip(currentweapon.dualwieldweapon);
                                    }
                                    weaponoptions = self function_ade49959(currentweapon);
                                    self zm_weapons::function_8fdfe5e4(weapon, item, item_weapon, var_79770f09, clipsize, var_9839b3b1, var_7fa2b50b);
                                    if (isplayer(self)) {
                                        var_cedbe5e5 = item_inventory::function_d768ea30();
                                        while (isdefined(var_bfd531ce) && isdefined(var_cedbe5e5) && var_bfd531ce != var_cedbe5e5 || isplayer(self) && self isswitchingweapons()) {
                                            var_cedbe5e5 = item_inventory::function_d768ea30();
                                            waitframe(1);
                                        }
                                        if (isplayer(self)) {
                                            self notify(#"hash_5cd57762f792396b");
                                            if (isdefined(item.paplv)) {
                                                weapon = namespace_a0d533d1::function_2b83d3ff(item);
                                                self item_inventory::function_d92c6b5b(weapon, undefined, item.paplv);
                                            }
                                            self playrumbleonentity(#"zm_interact_rumble");
                                            machine scene::stop("p9_fxanim_zm_gp_armor_station_bundle");
                                            machine animation::stop();
                                            waitframe(1);
                                            machine thread scene::play("p9_fxanim_zm_gp_armor_station_bundle", "Shot 3", machine);
                                            self namespace_2a9f256a::function_3610299b(250);
                                        }
                                    }
                                } else {
                                    machine playsoundtoplayer(#"uin_default_action_denied", self);
                                }
                            }
                        } else {
                            if (var_372067dc) {
                                var_3069fe3 = self namespace_2a9f256a::function_415b1e(var_9b05d455);
                            } else {
                                var_3069fe3 = self namespace_2a9f256a::function_c29a8aa1(var_9b05d455);
                            }
                            if (var_3069fe3) {
                                self playrumbleonentity(#"zm_interact_rumble");
                                currentweapon = self getcurrentweapon();
                                clipsize = self getweaponammoclip(currentweapon);
                                var_9839b3b1 = self getweaponammostock(currentweapon);
                                if (is_true(currentweapon.isdualwield) && isdefined(currentweapon.dualwieldweapon) && currentweapon.dualwieldweapon != level.weaponnone) {
                                    var_7fa2b50b = self getweaponammoclip(currentweapon.dualwieldweapon);
                                }
                                self zm_weapons::function_17e9ed37(var_35d31714, clipsize, var_9839b3b1, var_7fa2b50b);
                                if (isplayer(self)) {
                                    machine scene::stop("p9_fxanim_zm_gp_armor_station_bundle");
                                    machine animation::stop();
                                    waitframe(1);
                                    machine thread scene::play("p9_fxanim_zm_gp_armor_station_bundle", "Shot 3", machine);
                                    if (var_372067dc) {
                                        self namespace_2a9f256a::function_8bfa3267(var_9b05d455);
                                    } else {
                                        self namespace_2a9f256a::function_3610299b(var_9b05d455);
                                    }
                                }
                            } else {
                                machine playsoundtoplayer(#"uin_default_action_denied", self);
                            }
                        }
                    } else {
                        machine playsoundtoplayer(#"uin_default_action_denied", self);
                    }
                }
                break;
            case #"hash_383c519d3bdac984":
                self notify(#"hash_5e4c1bf6d3ef5df0");
                self function_6c71e778(machine, trigger);
                return;
            }
        }
    }
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 1, eflags: 0x2 linked
// Checksum 0x21724d73, Offset: 0x2380
// Size: 0xe4
function function_f3ce6afc(var_cc87b623) {
    if (isplayer(self)) {
        var_bb1797ae = {#var_7ebcde3b:hash(var_cc87b623), #var_7d003586:function_f8d53445(), #var_159283d5:zm_utility::get_round_number(), #var_500db157:zm_utility::function_e3025ca5()};
        self function_678f57c8(#"hash_653ddf74d3ce14d0", var_bb1797ae);
    }
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 1, eflags: 0x6 linked
// Checksum 0xe69694da, Offset: 0x2470
// Size: 0xb4
function private on_item_pickup(params) {
    var_abf29e5c = params.item.itementry.name;
    if (isplayer(self) && isdefined(var_abf29e5c) && (isinarray(level.var_ade77b07, hash(var_abf29e5c)) || var_abf29e5c === #"armor_shard_item_sr")) {
        self function_f3ce6afc(var_abf29e5c);
    }
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 1, eflags: 0x2 linked
// Checksum 0xd98a3deb, Offset: 0x2530
// Size: 0xea
function give_armor(var_cc87b623) {
    point = function_4ba8fde(var_cc87b623);
    if (isdefined(point) && isdefined(point.itementry)) {
        self function_b2f69241();
        var_fa3df96 = self item_inventory::function_e66dcff5(point);
        self item_inventory::give_inventory_item(point, 1, point.itementry.amount, var_fa3df96);
        self item_inventory::equip_armor(point);
        self function_f3ce6afc(var_cc87b623);
    }
    self.armor = self.maxarmor;
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 0, eflags: 0x2 linked
// Checksum 0xf1d3c4e4, Offset: 0x2628
// Size: 0x7c
function function_b2f69241() {
    var_416640e8 = self.inventory.items[6];
    if (var_416640e8.networkid != 32767) {
        var_4d7e11d8 = self item_inventory::drop_inventory_item(var_416640e8.networkid);
        if (isdefined(var_4d7e11d8)) {
            item_world::consume_item(var_4d7e11d8);
        }
    }
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 1, eflags: 0x2 linked
// Checksum 0x980cfabc, Offset: 0x26b0
// Size: 0x44
function function_68649d54(destination) {
    level flag::wait_till("start_zombie_round_logic");
    waittillframeend();
    function_85834b2c(destination);
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 1, eflags: 0x2 linked
// Checksum 0xa072f678, Offset: 0x2700
// Size: 0x14c
function function_85834b2c(destination) {
    foreach (location in destination.locations) {
        var_55a59069 = location.instances[#"hash_629e563c2ebf707a"];
        if (isdefined(var_55a59069)) {
            children = content_manager::get_children(var_55a59069);
            foreach (child in children) {
                function_93a99046(child);
            }
        }
    }
}

