// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\gametypes\globallogic.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_loadout.gsc;
#using scripts\zm_common\zm_laststand.gsc;
#using scripts\zm_common\zm_equipment.gsc;
#using scripts\core_common\struct.gsc;
#using script_1caf36ff04a85ff6;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\content_manager.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace namespace_c09ae6c3;

// Namespace namespace_c09ae6c3/namespace_c09ae6c3
// Params 0, eflags: 0x5
// Checksum 0x5fcad040, Offset: 0x1a0
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"hash_50d62958d724dac2", &preinit, &postinit, undefined, undefined);
}

// Namespace namespace_c09ae6c3/namespace_c09ae6c3
// Params 0, eflags: 0x2 linked
// Checksum 0x96dcd7cd, Offset: 0x1f8
// Size: 0x2c
function preinit() {
    content_manager::register_script("ammo_cache", &function_9ed7339b);
}

// Namespace namespace_c09ae6c3/namespace_c09ae6c3
// Params 0, eflags: 0x2 linked
// Checksum 0xa3343413, Offset: 0x230
// Size: 0x84
function postinit() {
    mapdestinations = struct::get_array(#"hash_313be7fccc870cdd", "variantname");
    if (!zm_utility::is_survival() && isdefined(mapdestinations) && mapdestinations.size > 0) {
        level thread function_b99f518f(mapdestinations[0]);
    }
}

// Namespace namespace_c09ae6c3/namespace_c09ae6c3
// Params 1, eflags: 0x2 linked
// Checksum 0x5db187a8, Offset: 0x2c0
// Size: 0x2d0
function function_9ed7339b(struct) {
    assert(isstruct(struct), "<unknown string>");
    spawn_points = struct.contentgroups[#"hash_6873efb1dfa0ebea"];
    foreach (point in spawn_points) {
        spawn_struct = point;
        scriptmodel = content_manager::spawn_script_model(spawn_struct, #"hash_94b3a8b935248d0", 1);
        scriptmodel clientfield::set("set_compass_icon", 1);
        forward = anglestoforward(scriptmodel.angles);
        forward = vectornormalize(forward);
        forward = (forward[0] * 16, forward[1] * 16, forward[2] * 16);
        forward = (forward[0], forward[1], forward[2] + 48);
        trigger = content_manager::spawn_interact(spawn_struct, &function_e4ff673, #"hash_47f37dccf2dfd164", 250, isdefined(spawn_struct.radius) ? spawn_struct.radius : 80, isdefined(spawn_struct.height) ? spawn_struct.height : 48, undefined, forward);
        trigger.scriptmodel = scriptmodel;
        trigger thread function_5eeaa168();
        scriptmodel.trigger = trigger;
        struct.trigger = trigger;
        struct.scriptmodel = scriptmodel;
        playfx(#"sr/fx9_safehouse_mchn_upgrades_spawn", struct.origin);
        playsoundatposition(#"hash_20c4f0485930af2a", struct.origin);
    }
}

// Namespace namespace_c09ae6c3/namespace_c09ae6c3
// Params 1, eflags: 0x2 linked
// Checksum 0xa00631ec, Offset: 0x598
// Size: 0x106
function function_adb75323(item) {
    cost = 250;
    if (isdefined(item)) {
        if (isdefined(item.paplv)) {
            switch (item.paplv) {
            case 1:
                cost = 1000;
                break;
            case 2:
                cost = 2500;
                break;
            case 3:
                cost = 5000;
                break;
            }
        }
        if (isdefined(item.itementry.weapon) && (zm_weapons::is_wonder_weapon(item.itementry.weapon) || function_ef9d58d0(item))) {
            cost = 10000;
        }
    }
    return cost;
}

// Namespace namespace_c09ae6c3/namespace_c09ae6c3
// Params 2, eflags: 0x2 linked
// Checksum 0xb3e9802, Offset: 0x6a8
// Size: 0x148
function function_baef2915(player, currentweapon) {
    self setinvisibletoplayer(player);
    if (distancesquared(player.origin, self.origin) > sqr(160)) {
        return false;
    }
    if (player zm_utility::is_drinking() || player zm_equipment::hacker_active()) {
        return false;
    }
    if (player zm_utility::in_revive_trigger() || !player zm_laststand::laststand_has_players_weapons_returned()) {
        return false;
    }
    if (zm_loadout::is_placeable_mine(currentweapon) || zm_equipment::is_equipment_that_blocks_purchase(currentweapon)) {
        return false;
    }
    if (currentweapon.isgadget || currentweapon.isriotshield) {
        return false;
    }
    self setvisibletoplayer(player);
    return true;
}

// Namespace namespace_c09ae6c3/namespace_c09ae6c3
// Params 0, eflags: 0x2 linked
// Checksum 0x60b94633, Offset: 0x7f8
// Size: 0x1604
function function_5eeaa168() {
    level endon(#"game_ended");
    self endon(#"death");
    nullweapon = getweapon(#"none");
    var_f945fa92 = getweapon(#"bare_hands");
    while (true) {
        foreach (player in getplayers()) {
            if (!isdefined(player.var_b8783de6)) {
                player.var_b8783de6 = 0;
            }
            currentweapon = player getcurrentweapon();
            if (!self function_baef2915(player, currentweapon)) {
                if (isdefined(player.var_d30f56e4) && player.var_d30f56e4 == self) {
                    player.var_d30f56e4 = undefined;
                    player globallogic::function_d96c031e();
                }
                continue;
            }
            var_1c7e95e9 = 0;
            player.var_d30f56e4 = self;
            weapon1 = player namespace_a0d533d1::function_2b83d3ff(player item_inventory::function_2e711614(17 + 1));
            weapon1 = zm_weapons::function_ec62a449(weapon1);
            weapon2 = player namespace_a0d533d1::function_2b83d3ff(player item_inventory::function_2e711614(17 + 1 + 8 + 1));
            weapon2 = zm_weapons::function_ec62a449(weapon2);
            var_ae70df3a = player item_inventory::function_2e711614(17 + 1 + 8 + 1 + 8 + 1);
            if (isdefined(var_ae70df3a)) {
                var_5df29481 = player namespace_a0d533d1::function_2b83d3ff(var_ae70df3a);
                var_5df29481 = zm_weapons::function_ec62a449(var_5df29481);
            }
            if (!isdefined(weapon1)) {
                weapon1 = var_f945fa92;
            }
            if (!isdefined(weapon2)) {
                weapon2 = var_f945fa92;
            }
            if (isdefined(var_5df29481)) {
                if (killstreaks::is_killstreak_weapon(currentweapon)) {
                    player.var_b8783de6 = 3;
                    self sethintstringforplayer(player, #"hash_56425e74a921890d");
                } else if (weapon1.weapclass == "melee" && weapon2.weapclass == "melee" && var_5df29481.weapclass == "melee") {
                    player.var_b8783de6 = 3;
                    self sethintstringforplayer(player, #"hash_56425e74a921890d");
                } else if (var_5df29481.weapclass != "melee" && weapon1.weapclass == "melee" && weapon2.weapclass == "melee") {
                    cost = function_adb75323(var_ae70df3a);
                    if (player zm_score::can_player_purchase(cost) && !player function_f300168a(var_5df29481)) {
                        player.var_b8783de6 = 4;
                        self sethintstringforplayer(player, #"hash_47f37dccf2dfd164", cost, var_5df29481.displayname);
                    } else if (player zm_score::can_player_purchase(cost) && player function_f300168a(var_5df29481)) {
                        player.var_b8783de6 = 3;
                        self sethintstringforplayer(player, #"hash_36de8d628bb52fe9", var_5df29481.displayname);
                    } else {
                        player.var_b8783de6 = 3;
                        var_1c7e95e9 = 1;
                        self sethintstringforplayer(player, #"hash_56d6b70cf6595b1a", cost, var_5df29481.displayname);
                    }
                } else if (weapon1.weapclass != "melee" && weapon2.weapclass == "melee" && var_5df29481.weapclass == "melee") {
                    item = player item_inventory::function_230ceec4(weapon1);
                    cost = function_adb75323(item);
                    if (player zm_score::can_player_purchase(cost) && !player function_f300168a(weapon1)) {
                        player.var_b8783de6 = 1;
                        self sethintstringforplayer(player, #"hash_47f37dccf2dfd164", cost, weapon1.displayname);
                    } else if (player zm_score::can_player_purchase(cost) && player function_f300168a(weapon1)) {
                        player.var_b8783de6 = 3;
                        self sethintstringforplayer(player, #"hash_36de8d628bb52fe9", weapon1.displayname);
                    } else {
                        player.var_b8783de6 = 3;
                        var_1c7e95e9 = 1;
                        self sethintstringforplayer(player, #"hash_56d6b70cf6595b1a", cost, var_5df29481.displayname);
                    }
                } else if (weapon2.weapclass != "melee" && weapon1.weapclass == "melee" && var_5df29481.weapclass == "melee") {
                    item = player item_inventory::function_230ceec4(weapon2);
                    cost = function_adb75323(item);
                    if (player zm_score::can_player_purchase(cost) && !player function_f300168a(weapon2)) {
                        player.var_b8783de6 = 2;
                        self sethintstringforplayer(player, #"hash_47f37dccf2dfd164", cost, weapon2.displayname);
                    } else if (player zm_score::can_player_purchase(cost) && player function_f300168a(weapon2)) {
                        player.var_b8783de6 = 3;
                        self sethintstringforplayer(player, #"hash_36de8d628bb52fe9", weapon2.displayname);
                    } else {
                        player.var_b8783de6 = 3;
                        var_1c7e95e9 = 1;
                        self sethintstringforplayer(player, #"hash_56d6b70cf6595b1a", cost, weapon2.displayname);
                    }
                } else if ((weapon2.weapclass != "melee" || weapon1.weapclass != "melee") && var_5df29481.weapclass == "melee" && currentweapon == var_5df29481) {
                    if (weapon1.weapclass != "melee" && !player function_f300168a(weapon1)) {
                        item = player item_inventory::function_230ceec4(weapon1);
                        cost = function_adb75323(item);
                        if (player zm_score::can_player_purchase(cost) && !player function_f300168a(weapon1)) {
                            player.var_b8783de6 = 1;
                            self sethintstringforplayer(player, #"hash_47f37dccf2dfd164", cost, weapon1.displayname);
                        } else if (player zm_score::can_player_purchase(cost) && player function_f300168a(weapon1)) {
                            player.var_b8783de6 = 3;
                            self sethintstringforplayer(player, #"hash_36de8d628bb52fe9", weapon1.displayname);
                        } else {
                            player.var_b8783de6 = 3;
                            var_1c7e95e9 = 1;
                            self sethintstringforplayer(player, #"hash_56d6b70cf6595b1a", cost, weapon1.displayname);
                        }
                    } else if (weapon2.weapclass != "melee") {
                        item = player item_inventory::function_230ceec4(weapon2);
                        cost = function_adb75323(item);
                        if (player zm_score::can_player_purchase(cost) && !player function_f300168a(weapon2)) {
                            player.var_b8783de6 = 2;
                            self sethintstringforplayer(player, #"hash_47f37dccf2dfd164", cost, weapon2.displayname);
                        } else if (player zm_score::can_player_purchase(cost) && player function_f300168a(weapon2)) {
                            player.var_b8783de6 = 3;
                            self sethintstringforplayer(player, #"hash_36de8d628bb52fe9", weapon2.displayname);
                        } else {
                            player.var_b8783de6 = 3;
                            var_1c7e95e9 = 1;
                            self sethintstringforplayer(player, #"hash_56d6b70cf6595b1a", cost, weapon2.displayname);
                        }
                    }
                } else {
                    item = player item_inventory::function_230ceec4(currentweapon);
                    cost = function_adb75323(item);
                    if (player zm_score::can_player_purchase(cost) && !player function_f300168a(currentweapon)) {
                        player.var_b8783de6 = 0;
                        self sethintstringforplayer(player, #"hash_47f37dccf2dfd164", cost, currentweapon.displayname);
                    } else if (player zm_score::can_player_purchase(cost) && player function_f300168a(currentweapon)) {
                        player.var_b8783de6 = 3;
                        self sethintstringforplayer(player, #"hash_36de8d628bb52fe9", currentweapon.displayname);
                    } else {
                        player.var_b8783de6 = 3;
                        var_1c7e95e9 = 1;
                        self sethintstringforplayer(player, #"hash_56d6b70cf6595b1a", cost, currentweapon.displayname);
                    }
                }
            } else if ((weapon1 == var_f945fa92 || weapon1 == nullweapon || weapon1.weapclass == "melee") && weapon2 != var_f945fa92 && weapon2 != nullweapon && weapon2.weapclass != "melee" || (weapon2 == var_f945fa92 || weapon2 == nullweapon || weapon2.weapclass == "melee") && weapon1 != var_f945fa92 && weapon1 != nullweapon && weapon1.weapclass != "melee") {
                if (killstreaks::is_killstreak_weapon(currentweapon)) {
                    player.var_b8783de6 = 3;
                    self sethintstringforplayer(player, #"hash_3f91b2cf51b00772");
                } else if ((weapon1 == var_f945fa92 || weapon1 == nullweapon || weapon1.weapclass == "melee") && weapon2 != var_f945fa92 && weapon2 != nullweapon && weapon2.weapclass != "melee") {
                    item = player item_inventory::function_230ceec4(weapon2);
                    cost = function_adb75323(item);
                    if (player zm_score::can_player_purchase(cost) && !player function_f300168a(weapon2)) {
                        player.var_b8783de6 = 2;
                        self sethintstringforplayer(player, #"hash_47f37dccf2dfd164", cost, weapon2.displayname);
                    } else if (player zm_score::can_player_purchase(cost) && player function_f300168a(weapon2)) {
                        player.var_b8783de6 = 3;
                        self sethintstringforplayer(player, #"hash_36de8d628bb52fe9", weapon2.displayname);
                    } else {
                        player.var_b8783de6 = 3;
                        var_1c7e95e9 = 1;
                        self sethintstringforplayer(player, #"hash_56d6b70cf6595b1a", cost, weapon2.displayname);
                    }
                } else if ((weapon2 == var_f945fa92 || weapon2 == nullweapon || weapon2.weapclass == "melee") && weapon1 != var_f945fa92 && weapon1 != nullweapon && weapon1.weapclass != "melee") {
                    item = player item_inventory::function_230ceec4(weapon1);
                    cost = function_adb75323(item);
                    if (player zm_score::can_player_purchase(cost) && !player function_f300168a(weapon1)) {
                        player.var_b8783de6 = 1;
                        self sethintstringforplayer(player, #"hash_47f37dccf2dfd164", cost, weapon1.displayname);
                    } else if (player zm_score::can_player_purchase(cost) && player function_f300168a(weapon1)) {
                        player.var_b8783de6 = 3;
                        self sethintstringforplayer(player, #"hash_36de8d628bb52fe9", weapon1.displayname);
                    } else {
                        player.var_b8783de6 = 3;
                        var_1c7e95e9 = 1;
                        self sethintstringforplayer(player, #"hash_56d6b70cf6595b1a", cost, weapon1.displayname);
                    }
                }
            } else if (weapon1 != var_f945fa92 && weapon1 != nullweapon && weapon1.weapclass != "melee" && weapon2 != var_f945fa92 && weapon2 != nullweapon && weapon2.weapclass != "melee") {
                if (killstreaks::is_killstreak_weapon(currentweapon)) {
                    player.var_b8783de6 = 3;
                    self sethintstringforplayer(player, #"hash_56425e74a921890d");
                } else {
                    item = player item_inventory::function_230ceec4(currentweapon);
                    cost = function_adb75323(item);
                    if (player zm_score::can_player_purchase(cost) && !player function_f300168a(currentweapon)) {
                        player.var_b8783de6 = 0;
                        self sethintstringforplayer(player, #"hash_47f37dccf2dfd164", cost, currentweapon.displayname);
                    } else if (player zm_score::can_player_purchase(cost) && player function_f300168a(currentweapon)) {
                        player.var_b8783de6 = 3;
                        self sethintstringforplayer(player, #"hash_36de8d628bb52fe9", currentweapon.displayname);
                    } else {
                        player.var_b8783de6 = 3;
                        var_1c7e95e9 = 1;
                        self sethintstringforplayer(player, #"hash_56d6b70cf6595b1a", cost, currentweapon.displayname);
                    }
                }
            } else {
                player.var_b8783de6 = 3;
                self sethintstringforplayer(player, #"hash_56425e74a921890d");
            }
            if (var_1c7e95e9) {
                if (self zm_utility::function_4f593819(player)) {
                    player globallogic::function_d1924f29(#"hash_6e3ae7967dc5d414");
                } else {
                    player globallogic::function_d96c031e();
                }
                continue;
            }
            player globallogic::function_d96c031e();
        }
        wait(1);
    }
}

// Namespace namespace_c09ae6c3/namespace_c09ae6c3
// Params 1, eflags: 0x2 linked
// Checksum 0x9d67743f, Offset: 0x1e08
// Size: 0x104
function function_ef9d58d0(item) {
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
            return true;
        }
    }
    return false;
}

// Namespace namespace_c09ae6c3/namespace_c09ae6c3
// Params 1, eflags: 0x2 linked
// Checksum 0xcd940356, Offset: 0x1f18
// Size: 0x39a
function function_e4ff673(eventstruct) {
    player = eventstruct.activator;
    model = self.scriptmodel;
    assert(isdefined(model), "<unknown string>");
    if (isplayer(player)) {
        nullweapon = getweapon(#"none");
        var_f945fa92 = getweapon(#"bare_hands");
        currentweapon = player getcurrentweapon();
        weapon1 = player namespace_a0d533d1::function_2b83d3ff(player item_inventory::function_2e711614(17 + 1));
        weapon2 = player namespace_a0d533d1::function_2b83d3ff(player item_inventory::function_2e711614(17 + 1 + 8 + 1));
        var_ae70df3a = player item_inventory::function_2e711614(17 + 1 + 8 + 1 + 8 + 1);
        if (isdefined(var_ae70df3a)) {
            var_5df29481 = player namespace_a0d533d1::function_2b83d3ff(var_ae70df3a);
        }
        if (!isdefined(weapon1)) {
            weapon1 = var_f945fa92;
        }
        if (!isdefined(weapon2)) {
            weapon2 = var_f945fa92;
        }
        if (isdefined(player.var_b8783de6)) {
            switch (player.var_b8783de6) {
            case 3:
                player playsoundtoplayer(#"zmb_no_cha_ching", player);
                return;
            case 0:
                self function_7c1cc13c(player, currentweapon, model);
                return;
            case 1:
                self function_7c1cc13c(player, weapon1, model);
                if (currentweapon == weapon2) {
                    player switchtoweapon(weapon1);
                }
                return;
            case 2:
                self function_7c1cc13c(player, weapon2, model);
                if (currentweapon == weapon1) {
                    player switchtoweapon(weapon2);
                }
                return;
            case 4:
                if (isdefined(var_5df29481.weapclass)) {
                    if (var_5df29481.weapclass != "melee") {
                        self function_7c1cc13c(player, var_5df29481, model);
                        if (currentweapon != var_5df29481) {
                            player switchtoweapon(var_5df29481);
                        }
                    }
                }
                return;
            }
        }
    }
}

// Namespace namespace_c09ae6c3/namespace_c09ae6c3
// Params 3, eflags: 0x2 linked
// Checksum 0x39bea639, Offset: 0x22c0
// Size: 0x39c
function function_7c1cc13c(player, weapon, model) {
    if (killstreaks::is_killstreak_weapon(weapon)) {
        return;
    }
    item = player item_inventory::function_230ceec4(weapon);
    cost = function_adb75323(item);
    var_3069fe3 = player zm_score::can_player_purchase(cost);
    var_cd27cff2 = player getweaponammoclip(weapon);
    maxammo = weapon.maxammo;
    maxclip = weapon.clipsize;
    player playrumbleonentity(#"zm_interact_rumble");
    if (var_cd27cff2 < weapon.clipsize && (maxammo == 0 || is_true(weapon.cliponly)) && var_3069fe3) {
        if (player hasweapon(weapon)) {
            player setweaponammoclip(weapon, maxclip);
            player playsoundtoplayer(#"hash_3d571b980c703675", player);
            player zm_score::minus_to_player_score(cost);
            if (zm_weapons::is_wonder_weapon(weapon)) {
                player zm_stats::increment_challenge_stat(#"hash_1a2bee1841f18a4");
            }
        }
    } else if (var_3069fe3 && !player function_f300168a(weapon)) {
        if (player hasweapon(weapon)) {
            if (isdefined(level.var_3216bc47[weapon.name])) {
                player [[ level.var_3216bc47[weapon.name] ]](weapon);
            } else {
                player setweaponammoclip(weapon, maxclip);
                player setweaponammostock(weapon, maxammo);
            }
            player.var_b6cd4a03 = gettime();
            player playsoundtoplayer(#"hash_3d571b980c703675", player);
            player zm_score::minus_to_player_score(cost);
            if (zm_weapons::is_wonder_weapon(weapon) || weapon.statname === #"ray_gun") {
                player zm_stats::increment_challenge_stat(#"hash_1a2bee1841f18a4");
            }
        }
    } else {
        player playsoundtoplayer(#"zmb_no_cha_ching", player);
    }
    if (isdefined(model)) {
        model thread scene::play("p9_usa_large_ammo_crate_01_bundle_zm", "open_close", model);
    }
}

// Namespace namespace_c09ae6c3/namespace_c09ae6c3
// Params 1, eflags: 0x6 linked
// Checksum 0xae2ef85f, Offset: 0x2668
// Size: 0x146
function private function_f300168a(weapon) {
    if (isdefined(level.var_299abeff[weapon.name])) {
        return [[ level.var_299abeff[weapon.name] ]](weapon);
    }
    var_e20637be = 1;
    nullweapon = getweapon(#"none");
    var_f945fa92 = getweapon(#"bare_hands");
    if (weapon != nullweapon && weapon != var_f945fa92) {
        maxammo = weapon.maxammo;
        maxclip = weapon.clipsize;
        currentammostock = self getweaponammostock(weapon);
        currentclipammo = self getweaponammoclip(weapon);
        if (currentammostock < maxammo || currentclipammo < maxclip) {
            var_e20637be = 0;
        }
    }
    return var_e20637be;
}

// Namespace namespace_c09ae6c3/namespace_c09ae6c3
// Params 1, eflags: 0x2 linked
// Checksum 0xc1138156, Offset: 0x27b8
// Size: 0x44
function function_b99f518f(destination) {
    level flag::wait_till("start_zombie_round_logic");
    waittillframeend();
    function_7b19802a(destination);
}

// Namespace namespace_c09ae6c3/namespace_c09ae6c3
// Params 1, eflags: 0x2 linked
// Checksum 0xf0eb950a, Offset: 0x2808
// Size: 0xc0
function function_7b19802a(destination) {
    foreach (location in destination.locations) {
        ammo_cache = location.instances[#"ammo_cache"];
        if (isdefined(ammo_cache)) {
            content_manager::spawn_instance(ammo_cache);
        }
    }
}

