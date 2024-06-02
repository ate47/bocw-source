// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\armor.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using script_471b31bd963b388e;
#using scripts\core_common\item_world.gsc;
#using script_1caf36ff04a85ff6;
#using scripts\core_common\item_drop.gsc;
#using scripts\core_common\values_shared.gsc;
#using script_7f6cd71c43c45c57;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\player\player_shared.gsc;
#using script_1f41849126bfc83d;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using script_67c87580908a0a00;
#using scripts\abilities\gadgets\gadget_health_regen.gsc;
#using scripts\abilities\ability_player.gsc;
#using scripts\core_common\aat_shared.gsc;

#namespace item_inventory;

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x5
// Checksum 0xff528034, Offset: 0x628
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"item_inventory", &preinit, undefined, undefined, #"item_world");
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x6 linked
// Checksum 0x20d9741c, Offset: 0x678
// Size: 0x2ac
function private preinit() {
    if (!item_world_util::use_item_spawns()) {
        return;
    }
    if (function_7d5553ac()) {
        return;
    }
    clientfield::register("toplayer", "inventoryThirdWeapon", 8000, 1, "int");
    clientfield::register_clientuimodel("hudItems.healthItemstackCount", 1, 8, "int", 0);
    clientfield::register_clientuimodel("hudItems.equipmentStackCount", 1, 8, "int", 0);
    level.var_67f4fd41 = &function_38d1ea04;
    level.var_dea62998 = &function_bdc03d88;
    level.var_cf16ff75 = &function_a2162b3b;
    level.var_6ec46eeb = &function_d85c5382;
    level.sensor_darts = [];
    level.var_c3a003ad = &function_ce3288cf;
    ability_player::register_gadget_activation_callbacks(23, &_gadget_health_regen_on, &_gadget_health_regen_off);
    ability_player::register_gadget_primed_callbacks(23, &function_d116a346);
    level.var_d3b4a4db = &function_64d3e50;
    level thread function_d2f05352();
    level.var_b398b662 = &function_f58e80e2;
    if (!isdefined(level.var_5c14d2e6)) {
        level.var_5c14d2e6 = &function_3f7ef88;
    }
    if (!isdefined(level.var_317fb13c)) {
        level.var_317fb13c = &function_3f7ef88;
    }
    if (!isdefined(level.var_4cf92425)) {
        level.var_4cf92425 = [];
    }
    callback::on_connect(&_on_player_connect);
    callback::on_spawned(&_on_player_spawned);
    callback::add_callback(#"hash_4a1cdf56005f9fb3", &function_7b39c6f9);
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x6 linked
// Checksum 0x81810e06, Offset: 0x930
// Size: 0x1c
function private _on_player_connect() {
    self init_inventory();
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x6 linked
// Checksum 0x1b9e8033, Offset: 0x958
// Size: 0x3c
function private _on_player_spawned() {
    if (!isdefined(self.inventory)) {
        self init_inventory();
    }
    /#
        self thread function_76eb9bd7();
    #/
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0x9064c2f0, Offset: 0x9a0
// Size: 0x6a
function function_7d5553ac() {
    return currentsessionmode() == 4 || (isdefined(getgametypesetting(#"hash_1cc3f98086d6f5dd")) ? getgametypesetting(#"hash_1cc3f98086d6f5dd") : 0);
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0xf546fa28, Offset: 0xa18
// Size: 0x124
function function_64d3e50(var_b4d5813c) {
    if (!isdefined(self) || !isdefined(self.inventory) || !isdefined(self.inventory.items) || !isdefined(self.inventory.items[5])) {
        return;
    }
    networkid = self.inventory.items[5].networkid;
    if (isdefined(networkid) && networkid != 32767) {
        item = get_inventory_item(networkid);
        if (item.itementry.name == #"hash_6d9b83e07c57fb35") {
            if (var_b4d5813c) {
                self thread use_inventory_item(networkid, 1, 0);
            }
            return;
        }
        self thread use_inventory_item(networkid, 1, 0);
    }
}

// Namespace item_inventory/item_inventory
// Params 3, eflags: 0x2 linked
// Checksum 0xd6bff468, Offset: 0xb48
// Size: 0x124
function function_299d2131(maxhealth, var_5af5a1bf, var_4465ef1e) {
    self endon(#"death");
    while (self.heal.enabled) {
        waitframe(1);
    }
    if (!isdefined(self)) {
        return;
    }
    self.var_44d52546 = 1;
    self player::function_9080887a(maxhealth);
    self.heal.var_bc840360 = math::clamp(var_5af5a1bf + self.health, 0, maxhealth);
    self.heal.rate = var_5af5a1bf / var_4465ef1e;
    self gadget_health_regen::function_ddfdddb1();
    self gadget_health_regen::function_1e02d458();
    self callback::function_d8abfc3d(#"done_healing", &function_4a257174);
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0x5838ba47, Offset: 0xc78
// Size: 0x5c
function function_4a257174() {
    if (isdefined(self)) {
        self callback::function_52ac9652(#"done_healing", &function_4a257174);
        self.var_44d52546 = undefined;
        gadget_health_regen::function_7993d50e();
    }
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0xf1d56b3a, Offset: 0xce0
// Size: 0x24a
function function_fc04b237(weapon, weaponoptions) {
    assert(isplayer(self));
    assert(isdefined(weapon));
    if (!isdefined(weaponoptions)) {
        return;
    }
    if (!isdefined(self.pers) || !isdefined(self.pers[#"activecamo"])) {
        return weaponoptions;
    }
    camoindex = getcamoindex(weaponoptions);
    activecamoname = getactivecamo(camoindex);
    if (!isdefined(activecamoname) || !isdefined(self.pers[#"activecamo"][activecamoname])) {
        return weaponoptions;
    }
    activecamo = self.pers[#"activecamo"][activecamoname];
    if (!isdefined(activecamo) || !isdefined(activecamo.var_dd54a13b)) {
        return weaponoptions;
    }
    var_28c04c49 = activecamo::function_c14cb514(weapon);
    weaponstate = activecamo.var_dd54a13b[var_28c04c49];
    if (!isdefined(weaponstate)) {
        return weaponoptions;
    }
    stagenum = weaponstate.stagenum;
    if (!isdefined(stagenum)) {
        return weaponoptions;
    }
    stage = activecamo.stages[stagenum];
    var_7df02232 = stage.var_19b6044e;
    if (!isdefined(var_7df02232)) {
        return weaponoptions;
    }
    buildkitweapon = activecamo::function_b259f3e0(weapon);
    weaponoptions = self getbuildkitweaponoptions(buildkitweapon, var_7df02232, stagenum);
    return weaponoptions;
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0x70e25f0c, Offset: 0xf38
// Size: 0xb2
function private function_a2162b3b(deployableweapon) {
    if (isplayer(self)) {
        if (deployableweapon === self.var_cc111ddc) {
            self.var_cc111ddc = undefined;
        }
        if (deployableweapon === self.var_8181d952) {
            self.var_8181d952 = undefined;
        }
        if (deployableweapon === self.var_cd3bc45b) {
            self.var_cd3bc45b = undefined;
        }
        if (deployableweapon === self.var_d0015cb3) {
            self.var_d0015cb3 = undefined;
        }
        if (deployableweapon === self.var_14c391cc) {
            self.var_14c391cc = undefined;
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x6 linked
// Checksum 0x1e961a81, Offset: 0xff8
// Size: 0x2e
function private function_d62822d5() {
    self.var_cc111ddc = undefined;
    self.var_8181d952 = undefined;
    self.var_cd3bc45b = undefined;
    self.var_d0015cb3 = undefined;
    self.var_14c391cc = undefined;
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0xad6c97c1, Offset: 0x1030
// Size: 0x186
function private function_76646dad(weapon) {
    if (util::get_game_type() === #"spy" && weapon.name == #"hash_44678c77a1fa37b0") {
        return true;
    }
    if (weapon.name == #"basketball" || weapon.name == #"cymbal_monkey" || weapon.name == #"hash_364914e1708cb629" || weapon.name == #"snowball" || weapon.name == #"eq_grapple") {
        return true;
    }
    if (weapon.gadget_type != 0) {
        slot = self gadgetgetslot(weapon);
        return (slot == 0);
    }
    return weapon.inventorytype === "offhand" || weapon.inventorytype === "offhand_primary" || weapon.inventorytype === "ability";
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x6 linked
// Checksum 0x36bb8137, Offset: 0x11c0
// Size: 0x17c
function private function_e72d56f9(weapon, usecount) {
    assert(isdefined(weapon));
    if (isplayer(self) && isalive(self)) {
        self function_d62822d5();
        if (isdefined(level.var_ce82b9ae)) {
            if (!self [[ level.var_ce82b9ae ]](weapon)) {
                return;
            }
        }
        networkid = self function_a33744de(weapon);
        if (networkid != 32767) {
            self use_inventory_item(networkid, usecount, 0);
            item = self get_inventory_item(networkid);
            if (isdefined(item) && item.count > 0) {
                if (weapon.gadget_type == 0) {
                    self setweaponammoclip(weapon, item.count);
                    return;
                }
                self function_c6be9f7f(weapon, item.count);
            }
        }
    }
}

// Namespace item_inventory/event_1294e3a7
// Params 1, eflags: 0x24
// Checksum 0x3c299293, Offset: 0x1348
// Size: 0x82
function private event_handler[event_1294e3a7] function_9e4c68e2(eventstruct) {
    if (function_7d5553ac()) {
        return;
    }
    if (isplayer(self) && isalive(self) && self function_76646dad(eventstruct.weapon)) {
        self.var_cd3bc45b = eventstruct.weapon;
    }
}

// Namespace item_inventory/event_eb7e11e4
// Params 1, eflags: 0x20
// Checksum 0x5aa87a63, Offset: 0x13d8
// Size: 0x82
function event_handler[event_eb7e11e4] function_2f677e9d(eventstruct) {
    if (function_7d5553ac()) {
        return;
    }
    if (isplayer(self) && isalive(self) && self function_76646dad(eventstruct.weapon)) {
        self.var_d0015cb3 = eventstruct.weapon;
    }
}

// Namespace item_inventory/grenade_fire
// Params 1, eflags: 0x24
// Checksum 0xc2db7c91, Offset: 0x1468
// Size: 0x734
function private event_handler[grenade_fire] function_4776caf4(eventstruct) {
    if (function_7d5553ac()) {
        return;
    }
    if (isplayer(self) && isalive(self) && self function_76646dad(eventstruct.weapon)) {
        self.var_8181d952 = eventstruct.weapon;
        var_994e5c9a = 0;
        equipments = array(#"ability_smart_cover", #"eq_concertina_wire", #"eq_grapple", #"dart", #"eq_hawk", #"ultimate_turret");
        arrayremovevalue(equipments, #"eq_concertina_wire", 0);
        foreach (equipmentname in equipments) {
            if (eventstruct.weapon.name == equipmentname) {
                var_994e5c9a = 1;
                break;
            }
        }
        var_aec6fa7f = undefined;
        if (!var_994e5c9a) {
            weapon = eventstruct.weapon;
            networkid = self function_a33744de(weapon);
            if (networkid != 32767) {
                item = self get_inventory_item(networkid);
                if (isdefined(item) && item.amount > 0) {
                    var_aec6fa7f = item.amount;
                }
            }
            var_6918532 = 0;
            var_acddd81e = isdefined(weapon.var_7d4c12af) && weapon.var_7d4c12af != "None";
            var_62c1bfaa = is_true(weapon.var_62c1bfaa);
            if (isdefined(level.var_bec232ae) && !var_acddd81e && !var_62c1bfaa) {
                var_6918532 = self [[ level.var_bec232ae ]]();
            }
            if (!var_6918532) {
                self function_e72d56f9(weapon, 1);
            } else {
                self function_e72d56f9(weapon, 0);
            }
        }
        weaponname = eventstruct.weapon.name;
        var_8efce1dc = 0;
        var_5ac24c15 = 0;
        foreach (pickupname in array(#"trophy_system", #"hatchet", #"tomahawk_t8", #"basketball", #"gadget_jammer", #"satchel_charge")) {
            if (pickupname == weaponname) {
                var_8efce1dc = 1;
                break;
            }
        }
        if (!var_8efce1dc && isarray(level.var_d385a742)) {
            foreach (var_10add516 in level.var_d385a742) {
                if (var_10add516.weapon_name == weaponname) {
                    var_5ac24c15 = 1;
                    var_4a908873 = var_10add516.item_name;
                    break;
                }
            }
        }
        if (var_8efce1dc || var_5ac24c15) {
            if (isdefined(eventstruct.projectile)) {
                dropitem = eventstruct.projectile;
                dropitem endon(#"death");
                if (weaponname == #"basketball") {
                    dropitem setinvisibletoplayer(self);
                    wait(0.25);
                    if (isdefined(self)) {
                        dropitem setvisibletoplayer(self);
                    }
                }
                if (weaponname == #"trophy_system") {
                    if (isdefined(item)) {
                        self._trophy_system_ammo1 = var_aec6fa7f;
                    }
                }
                wait(0.5);
                if (!isdefined(dropitem)) {
                    return;
                }
                if (var_8efce1dc) {
                    itemspawnpoint = function_d08934c6(weaponname);
                } else if (isdefined(var_4a908873)) {
                    itemspawnpoint = function_4ba8fde(var_4a908873);
                }
                if (!isdefined(itemspawnpoint)) {
                    return;
                }
                assert(itemspawnpoint.id < 2048);
                dropitem.id = itemspawnpoint.id;
                dropitem.networkid = item_world_util::function_1f0def85(dropitem);
                dropitem.itementry = itemspawnpoint.itementry;
                dropitem.amount = eventstruct.weapon.name == #"basketball" ? 1 : 0;
                dropitem.count = 1;
                level thread function_804737ca(dropitem);
            }
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0xc5d4fa05, Offset: 0x1ba8
// Size: 0xa0
function private function_804737ca(dropitem) {
    level endon(#"game_ended");
    dropitem endon(#"death");
    wait(1);
    dropitem.hidetime = 0;
    dropitem clientfield::set("dynamic_item_drop", 1);
    dropitem function_46d7f921(dropitem.id);
    level.item_spawn_drops[dropitem.networkid] = dropitem;
}

// Namespace item_inventory/weapon_switch_started
// Params 1, eflags: 0x24
// Checksum 0xefb13a50, Offset: 0x1c50
// Size: 0x96
function private event_handler[weapon_switch_started] function_f5883bb1(eventstruct) {
    if (function_7d5553ac()) {
        return;
    }
    self.next_weapon = undefined;
    if (isplayer(self) && isalive(self)) {
        if (eventstruct.weapon.isprimary && eventstruct.weapon != eventstruct.last_weapon) {
            self.next_weapon = eventstruct.weapon;
        }
    }
}

// Namespace item_inventory/weapon_change
// Params 1, eflags: 0x24
// Checksum 0x4a5dabd9, Offset: 0x1cf0
// Size: 0x222
function private event_handler[weapon_change] function_a8c42ee4(*eventstruct) {
    if (function_7d5553ac()) {
        return;
    }
    if (isplayer(self) && isalive(self)) {
        if (isdefined(self.var_8181d952)) {
            weapon = self.var_8181d952;
            equipments = array(#"ability_smart_cover");
            foreach (equipmentname in equipments) {
                if (weapon.name == equipmentname) {
                    self function_e72d56f9(weapon, 1);
                    return;
                }
            }
        }
        if (isdefined(self.var_d0015cb3)) {
            weapon = self.var_d0015cb3;
            equipments = array(#"ability_smart_cover", #"eq_concertina_wire", #"ultimate_turret");
            foreach (equipmentname in equipments) {
                if (weapon.name == equipmentname) {
                    self function_e72d56f9(weapon, 1);
                    return;
                }
            }
        }
    }
}

// Namespace item_inventory/gadget_primed
// Params 1, eflags: 0x20
// Checksum 0x49c2fa5f, Offset: 0x1f20
// Size: 0xae
function event_handler[gadget_primed] gadget_primed_callback(eventstruct) {
    if (function_7d5553ac()) {
        return;
    }
    player = eventstruct.entity;
    if (isplayer(player) && isalive(player) && player function_76646dad(eventstruct.weapon)) {
        function_d62822d5();
        player.var_cc111ddc = eventstruct.weapon;
    }
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0xf4a4805c, Offset: 0x1fd8
// Size: 0x42
function function_af6bdeb() {
    self notify("6ce165e0ada6afaf");
    self endon("6ce165e0ada6afaf");
    self endon(#"disconnect");
    wait(3);
    self.var_b0b3c4df = undefined;
}

// Namespace item_inventory/gadget_on
// Params 1, eflags: 0x20
// Checksum 0x561a1e73, Offset: 0x2028
// Size: 0x2d8
function event_handler[gadget_on] gadget_on_callback(eventstruct) {
    if (function_7d5553ac()) {
        return;
    }
    player = eventstruct.entity;
    if (isplayer(player) && isalive(player) && player function_76646dad(eventstruct.weapon)) {
        equipments = array(#"eq_grapple", #"dart", #"eq_hawk", #"hash_364914e1708cb629");
        if (util::get_game_type() === #"spy") {
            if (!isdefined(equipments)) {
                equipments = [];
            } else if (!isarray(equipments)) {
                equipments = array(equipments);
            }
            equipments[equipments.size] = #"hash_44678c77a1fa37b0";
        }
        if (eventstruct.weapon.name === #"eq_grapple") {
            player.var_b0b3c4df = 1;
            player thread function_af6bdeb();
        }
        foreach (equipmentname in equipments) {
            if (eventstruct.weapon.name == equipmentname) {
                weapon = eventstruct.weapon;
                var_6918532 = 0;
                if (isdefined(level.var_bec232ae)) {
                    var_6918532 = player [[ level.var_bec232ae ]]();
                }
                if (!var_6918532) {
                    player.var_9e3339e2 = undefined;
                    player function_e72d56f9(weapon, 1);
                    continue;
                }
                player.var_9e3339e2 = 1;
                player function_e72d56f9(weapon, 0);
            }
        }
    }
}

// Namespace item_inventory/event_dfabd488
// Params 1, eflags: 0x20
// Checksum 0x73ea3326, Offset: 0x2308
// Size: 0x9a
function event_handler[event_dfabd488] function_40d8d1ec(eventstruct) {
    if (function_7d5553ac()) {
        return;
    }
    player = eventstruct.entity;
    if (isplayer(player) && isalive(player) && player function_76646dad(eventstruct.weapon)) {
        player.var_14c391cc = eventstruct.weapon;
    }
}

// Namespace item_inventory/change_seat
// Params 1, eflags: 0x20
// Checksum 0xdc71d40, Offset: 0x23b0
// Size: 0x9c
function event_handler[change_seat] function_2aa4e6cf(eventstruct) {
    if (function_7d5553ac()) {
        return;
    }
    player = self;
    if (isplayer(player) && isalive(player)) {
        if (eventstruct.seat_index == 0 && player function_2cceca7b()) {
            player forceoffhandend();
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0x391c524, Offset: 0x2458
// Size: 0x1d4
function private function_ce3288cf(damage) {
    if (!isdefined(self.inventory)) {
        return damage;
    }
    originaldamage = damage;
    var_e67d2721 = 0;
    foreach (item in self.inventory.items) {
        if (item.id == 32767) {
            continue;
        }
        if (!isdefined(item.itementry.var_dba54111) || item.itementry.var_dba54111 == 0) {
            continue;
        }
        var_babbb09b = item.itementry.var_dba54111;
        var_e67d2721 += var_babbb09b;
        if (var_e67d2721 > originaldamage) {
            var_babbb09b = var_e67d2721 - originaldamage;
        }
        var_e67d2721 = min(var_e67d2721, originaldamage);
        if (isdefined(item.var_1181c08b) && item.var_1181c08b > 0) {
            item.var_1181c08b -= var_babbb09b;
            if (item.var_1181c08b <= 0) {
                remove_inventory_item(item.networkid, 0, 1);
            }
        }
        if (var_e67d2721 >= damage) {
            break;
        }
    }
    return damage - var_e67d2721;
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x6 linked
// Checksum 0x7ecfbe09, Offset: 0x2638
// Size: 0x1a4
function private function_38d1ea04() {
    if (isplayer(self) && isdefined(self.inventory)) {
        inventoryitem = self.inventory.items[6];
        if (!is_true(inventoryitem.itementry.var_b5b2485b)) {
            return;
        }
        if (isdefined(inventoryitem) && isdefined(inventoryitem.itementry)) {
            armorshards = inventoryitem.itementry.armorshards;
        }
        if (isdefined(armorshards) && armorshards > 0) {
            armorshard = function_4ba8fde(#"hash_fb37841b0d2d7e7");
            if (isdefined(armorshard)) {
                var_7841fe31 = self give_inventory_item(armorshard, armorshards, undefined, 11);
                if (var_7841fe31 > 0) {
                    function_d7944517(armorshard.id, undefined, var_7841fe31);
                }
            }
        }
        if (inventoryitem.networkid != 32767 && inventoryitem.itementry.itemtype == #"armor") {
            self remove_inventory_item(inventoryitem.networkid);
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x6 linked
// Checksum 0xf0be3e43, Offset: 0x27e8
// Size: 0xd4
function private function_bdc03d88() {
    if (isplayer(self) && isdefined(self.inventory)) {
        inventoryitem = self.inventory.items[6];
        if (inventoryitem.networkid != 32767 && inventoryitem.itementry.itemtype == #"armor") {
            inventoryitem.amount = armor::get_armor();
            if (function_27cd171b(inventoryitem)) {
                self setperk(#"hash_4df21972dd2a3a87");
            }
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 3, eflags: 0x6 linked
// Checksum 0x6c7943eb, Offset: 0x28c8
// Size: 0x2d4
function private function_434d0c2b(itemtype, prioritylist, var_ab9610ad = undefined) {
    assert(isplayer(self));
    assert(ishash(itemtype));
    assert(isarray(prioritylist));
    items = [];
    var_e3c48c83 = item_world_util::get_itemtype(var_ab9610ad);
    foreach (item in self.inventory.items) {
        if (item.id == 32767) {
            continue;
        }
        var_b74300d3 = item_world_util::get_itemtype(item.itementry);
        if (var_e3c48c83 === var_b74300d3) {
            return item;
        }
        if (item.itementry.itemtype == itemtype) {
            if (isdefined(items[var_b74300d3])) {
                if (item.count > items[var_b74300d3].count) {
                    items[var_b74300d3] = item;
                }
                continue;
            }
            items[var_b74300d3] = item;
        }
    }
    foreach (var_b74300d3 in prioritylist) {
        if (isdefined(items[var_b74300d3])) {
            return items[var_b74300d3];
        }
    }
    foreach (item in items) {
        if (isdefined(item)) {
            return item;
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 3, eflags: 0x6 linked
// Checksum 0x290c8249, Offset: 0x2ba8
// Size: 0x292
function private _cycle_item(itemtype, prioritylist, var_bcc2655a) {
    assert(isplayer(self));
    assert(ishash(itemtype));
    assert(isarray(prioritylist));
    if (!isdefined(var_bcc2655a)) {
        return;
    }
    items = [];
    var_c7837092 = item_world_util::get_itemtype(var_bcc2655a);
    foreach (item in self.inventory.items) {
        if (item.id == 32767) {
            continue;
        }
        var_b74300d3 = item_world_util::get_itemtype(item.itementry);
        if (item.itementry.itemtype == itemtype) {
            if (isdefined(items[var_b74300d3])) {
                if (item.count > items[var_b74300d3].count) {
                    items[var_b74300d3] = item;
                }
                continue;
            }
            items[var_b74300d3] = item;
        }
    }
    for (currentindex = 0; currentindex < prioritylist.size; currentindex++) {
        if (prioritylist[currentindex] == var_c7837092) {
            break;
        }
    }
    for (index = currentindex + 1; index < prioritylist.size; index++) {
        var_b74300d3 = prioritylist[index];
        if (isdefined(items[var_b74300d3])) {
            return items[var_b74300d3];
        }
    }
    if (currentindex < prioritylist.size) {
        for (index = 0; index < currentindex; index++) {
            var_b74300d3 = prioritylist[index];
            if (isdefined(items[var_b74300d3])) {
                return items[var_b74300d3];
            }
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0x10d578f1, Offset: 0x2e48
// Size: 0x1de
function private function_9da31874(itemtype) {
    assert(isplayer(self));
    assert(ishash(itemtype));
    items = [];
    foreach (index, item in self.inventory.items) {
        if (index >= 5) {
            break;
        }
        if (item.id == 32767 || item.itementry.itemtype != itemtype) {
            continue;
        }
        items[items.size] = item;
    }
    currentindex = isdefined(self.inventory.var_a0290b96[itemtype]) ? self.inventory.var_a0290b96[itemtype] : 0;
    if (currentindex < 0) {
        currentindex = 0;
    } else if (currentindex > items.size) {
        currentindex = items.size;
    }
    if (items.size > 0) {
        currentindex = (currentindex + 1) % items.size;
        self.inventory.var_a0290b96[itemtype] = currentindex;
    }
    return items[currentindex];
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0x6f6af056, Offset: 0x3030
// Size: 0x374
function private function_283a29c8(var_ab9610ad = undefined) {
    assert(isplayer(self));
    if (function_fe402108()) {
        return;
    }
    item = function_434d0c2b(#"equipment", array(#"frag_grenade_wz_item", #"frag_t9_item", #"frag_t9_item_sr", #"cluster_semtex_wz_item", #"semtex_t9_item", #"semtex_t9_item_sr", #"acid_bomb_wz_item", #"molotov_wz_item", #"molotov_t9_item", #"molotov_t9_item_sr", #"wraithfire_wz_item", #"hatchet_wz_item", #"hatchet_t9_item", #"hatchet_t9_item_sr", #"tomahawk_t8_wz_item", #"seeker_mine_wz_item", #"dart_wz_item", #"hawk_wz_item", #"ultimate_turret_wz_item", #"hash_49bb95f2912e68ad", #"hash_3c9430c4ac7d082e", #"hash_6a5294b915f32d32", #"hash_6cd8041bb6cd21b1", #"hash_6a07ccefe7f84985", #"hash_17f8849a56eba20f", #"satchel_charge_t9_item", #"satchel_charge_t9_item_sr", #"hash_2c9b75b17410f2de", #"grapple_wz_item", #"hash_12fde8b0da04d262", #"barricade_wz_item", #"spiked_barrier_wz_item", #"trophy_system_wz_item", #"concertina_wire_wz_item", #"sensor_dart_wz_item", #"supply_pod_wz_item", #"trip_wire_wz_item", #"cymbal_monkey_wz_item", #"homunculus_wz_item", #"vision_pulse_wz_item", #"flare_gun_wz_item", #"wz_snowball", #"wz_waterballoon", #"hash_1ae9ade20084359f"), var_ab9610ad);
    if (isdefined(item)) {
        equip_equipment(item);
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0x7c062f0c, Offset: 0x33b0
// Size: 0x374
function private function_bf956054(var_ab9610ad = undefined) {
    assert(isplayer(self));
    if (function_fe402108()) {
        return;
    }
    item = function_434d0c2b(#"field_upgrade", array(#"frag_grenade_wz_item", #"frag_t9_item", #"frag_t9_item_sr", #"cluster_semtex_wz_item", #"semtex_t9_item", #"semtex_t9_item_sr", #"acid_bomb_wz_item", #"molotov_wz_item", #"molotov_t9_item", #"molotov_t9_item_sr", #"wraithfire_wz_item", #"hatchet_wz_item", #"hatchet_t9_item", #"hatchet_t9_item_sr", #"tomahawk_t8_wz_item", #"seeker_mine_wz_item", #"dart_wz_item", #"hawk_wz_item", #"ultimate_turret_wz_item", #"hash_49bb95f2912e68ad", #"hash_3c9430c4ac7d082e", #"hash_6a5294b915f32d32", #"hash_6cd8041bb6cd21b1", #"hash_6a07ccefe7f84985", #"hash_17f8849a56eba20f", #"satchel_charge_t9_item", #"satchel_charge_t9_item_sr", #"hash_2c9b75b17410f2de", #"grapple_wz_item", #"hash_12fde8b0da04d262", #"barricade_wz_item", #"spiked_barrier_wz_item", #"trophy_system_wz_item", #"concertina_wire_wz_item", #"sensor_dart_wz_item", #"supply_pod_wz_item", #"trip_wire_wz_item", #"cymbal_monkey_wz_item", #"homunculus_wz_item", #"vision_pulse_wz_item", #"flare_gun_wz_item", #"wz_snowball", #"wz_waterballoon", #"hash_1ae9ade20084359f"), var_ab9610ad);
    if (isdefined(item)) {
        equip_equipment(item);
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0x7b388033, Offset: 0x3730
// Size: 0x374
function private function_cd5393a9(var_ab9610ad = undefined) {
    assert(isplayer(self));
    if (function_fe402108()) {
        return;
    }
    item = function_434d0c2b(#"tactical", array(#"frag_grenade_wz_item", #"frag_t9_item", #"frag_t9_item_sr", #"cluster_semtex_wz_item", #"semtex_t9_item", #"semtex_t9_item_sr", #"acid_bomb_wz_item", #"molotov_wz_item", #"molotov_t9_item", #"molotov_t9_item_sr", #"wraithfire_wz_item", #"hatchet_wz_item", #"hatchet_t9_item", #"hatchet_t9_item_sr", #"tomahawk_t8_wz_item", #"seeker_mine_wz_item", #"dart_wz_item", #"hawk_wz_item", #"ultimate_turret_wz_item", #"hash_49bb95f2912e68ad", #"hash_3c9430c4ac7d082e", #"hash_6a5294b915f32d32", #"hash_6cd8041bb6cd21b1", #"hash_6a07ccefe7f84985", #"hash_17f8849a56eba20f", #"satchel_charge_t9_item", #"satchel_charge_t9_item_sr", #"hash_2c9b75b17410f2de", #"grapple_wz_item", #"hash_12fde8b0da04d262", #"barricade_wz_item", #"spiked_barrier_wz_item", #"trophy_system_wz_item", #"concertina_wire_wz_item", #"sensor_dart_wz_item", #"supply_pod_wz_item", #"trip_wire_wz_item", #"cymbal_monkey_wz_item", #"homunculus_wz_item", #"vision_pulse_wz_item", #"flare_gun_wz_item", #"wz_snowball", #"wz_waterballoon", #"hash_1ae9ade20084359f"), var_ab9610ad);
    if (isdefined(item)) {
        equip_equipment(item);
    }
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x6 linked
// Checksum 0xa895a004, Offset: 0x3ab0
// Size: 0x12c
function private function_714fce55(itemtype, var_ab9610ad = undefined) {
    assert(isplayer(self));
    if (function_fe402108()) {
        return;
    }
    item = function_434d0c2b(itemtype, array(#"hash_6eb09ea5da35e18f", #"hash_654445f6cc7a7e1c", #"item_survival_scorestreak_pineapple_gun", #"item_survival_scorestreak_deathmachine", #"item_survival_scorestreak_flamethrower", #"item_survival_scorestreak_hand_cannon", #"item_survival_scorestreak_ultimate_turret", #"hash_18fa1f3e4e43437c"), var_ab9610ad);
    if (isdefined(item)) {
        function_854cf2c3(item);
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0x233bccf9, Offset: 0x3be8
// Size: 0x134
function private function_986801b8(var_ab9610ad = undefined) {
    assert(isplayer(self));
    if (function_fe402108()) {
        return;
    }
    item = function_434d0c2b(#"scorestreak", array(#"hash_6eb09ea5da35e18f", #"hash_654445f6cc7a7e1c", #"item_survival_scorestreak_pineapple_gun", #"item_survival_scorestreak_deathmachine", #"item_survival_scorestreak_flamethrower", #"item_survival_scorestreak_hand_cannon", #"item_survival_scorestreak_ultimate_turret", #"hash_18fa1f3e4e43437c"), var_ab9610ad);
    if (isdefined(item)) {
        function_1ac37022(item);
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0x93419188, Offset: 0x3d28
// Size: 0xc4
function private function_2e10e66e(var_ab9610ad = undefined) {
    assert(isplayer(self));
    if (function_fe402108()) {
        return;
    }
    item = function_434d0c2b(#"backpack", array(#"hash_7c3701ba5f0879c2"), var_ab9610ad);
    if (isdefined(item)) {
        equip_backpack(item);
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0xac2943a5, Offset: 0x3df8
// Size: 0x104
function private function_a7d62e18(var_ab9610ad = undefined) {
    assert(isplayer(self));
    if (function_fe402108()) {
        return;
    }
    item = function_434d0c2b(#"health", array(#"health_item_small", #"health_item_medium", #"health_item_large", #"health_item_squad", #"hash_20699a922abaf2e1"), var_ab9610ad);
    if (isdefined(item)) {
        equip_health(item);
    }
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x6 linked
// Checksum 0x45bc8e02, Offset: 0x3f08
// Size: 0x212
function private function_9d805044(itemtype, var_ab9610ad = undefined) {
    assert(isplayer(self));
    assert(isstring(itemtype) || ishash(itemtype));
    if (function_fe402108()) {
        return;
    }
    switch (itemtype) {
    case #"backpack":
        function_2e10e66e(var_ab9610ad);
        break;
    case #"equipment":
        function_283a29c8(var_ab9610ad);
        break;
    case #"field_upgrade":
        function_bf956054(var_ab9610ad);
        break;
    case #"tactical":
        function_cd5393a9(var_ab9610ad);
        break;
    case #"health":
        function_a7d62e18(var_ab9610ad);
        break;
    case #"scorestreak":
        function_986801b8(var_ab9610ad);
        break;
    case #"perk_tier_3":
    case #"perk_tier_2":
    case #"perk_tier_1":
        function_714fce55(hash(itemtype), var_ab9610ad);
        break;
    default:
        break;
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0xf6fb4ce2, Offset: 0x4128
// Size: 0x224
function private function_d08934c6(equipment) {
    var_b74300d3 = undefined;
    switch (equipment) {
    case #"satchel_charge":
        var_b74300d3 = sessionmodeiszombiesgame() ? #"satchel_charge_t9_item_sr" : #"satchel_charge_t9_item";
        break;
    case #"hatchet":
        var_b74300d3 = #"hatchet_t9_item";
        if (sessionmodeiszombiesgame()) {
            var_b74300d3 = #"hatchet_t9_item_sr";
        } else if (util::get_game_type() === #"spy") {
            var_b74300d3 = #"hash_1d0dbe683c82e321";
        }
        break;
    case #"tomahawk_t8":
        var_b74300d3 = #"tomahawk_t8_wz_item";
        break;
    case #"basketball":
        var_b74300d3 = #"wz_ball";
        break;
    case #"cymbal_monkey":
        var_b74300d3 = sessionmodeiszombiesgame() ? #"cymbal_monkey_t9_item_sr" : #"cymbal_monkey_wz_item";
        break;
    case #"trophy_system":
        var_b74300d3 = #"trophy_system_wz_item";
        break;
    case #"gadget_jammer":
        var_b74300d3 = sessionmodeiszombiesgame() ? #"hash_5aeb970e93a31c17" : #"hash_3f154f45479130ed";
        break;
    }
    if (isdefined(var_b74300d3)) {
        return function_4ba8fde(var_b74300d3);
    }
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0x62b89ba0, Offset: 0x4358
// Size: 0x82
function function_520b16d6() {
    item = spawnstruct();
    item.amount = 0;
    item.count = 0;
    item.id = 32767;
    item.networkid = 32767;
    item.itementry = undefined;
    item.var_627c698b = undefined;
    item.weaponoptions = undefined;
    item.var_e91aba42 = undefined;
    return item;
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0x4d4c9aba, Offset: 0x43e8
// Size: 0x5c
function private function_27cd171b(inventoryitem) {
    if (!isdefined(inventoryitem.amount)) {
        return false;
    }
    if (inventoryitem.amount <= 0) {
        return true;
    }
    return inventoryitem.amount / inventoryitem.itementry.amount <= 0.5;
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0xe64a61a7, Offset: 0x4450
// Size: 0x4c
function function_d85c5382(sensordart, *player) {
    level.sensor_darts[level.sensor_darts.size] = player;
    arrayremovevalue(level.sensor_darts, undefined);
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x6 linked
// Checksum 0xf2526436, Offset: 0x44a8
// Size: 0x254
function private function_d2f05352() {
    level endon(#"game_ended");
    while (true) {
        players = getplayers();
        time = gettime();
        for (playerindex = 0; playerindex < players.size; playerindex++) {
            if ((playerindex + 1) % 15 == 0) {
                waitframe(1);
            }
            player = players[playerindex];
            if (!isdefined(player) || player.sessionstate != "playing" || !isalive(player) || !isdefined(player.inventory) || player.inventory.consumed.size <= 0) {
                continue;
            }
            consumed = player.inventory.consumed;
            var_1bc7a1b2 = 0;
            for (i = 0; i < consumed.size; i++) {
                item = consumed[i];
                if (item.endtime <= time) {
                    arrayremoveindex(consumed, i);
                    var_1bc7a1b2 = 1;
                    continue;
                }
            }
            if (var_1bc7a1b2) {
                player function_6c36ab6b();
            }
            for (index = 0; index < 5; index++) {
                item = player.inventory.items[index];
                if (isdefined(item.endtime) && item.endtime <= time) {
                    player use_inventory_item(item.networkid, 1, 0);
                }
            }
        }
        players = undefined;
        waitframe(1);
    }
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x6 linked
// Checksum 0xfacbda55, Offset: 0x4708
// Size: 0xcc
function private function_755a35c5() {
    assert(isplayer(self));
    stimcount = 0;
    healthitem = self.inventory.items[5];
    if (healthitem.networkid !== 32767) {
        if (healthitem.itementry.name == #"hash_6d9b83e07c57fb35") {
            stimcount = function_bba770de(healthitem.itementry);
        }
    }
    gadget_health_regen::function_6eef7f4f(stimcount);
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x6 linked
// Checksum 0x349dad1d, Offset: 0x47e0
// Size: 0xfc
function private function_a4413333() {
    assert(isplayer(self));
    healthitem = self.inventory.items[5];
    if (healthitem.networkid !== 32767) {
        self clientfield::set_player_uimodel("hudItems.healthItemstackCount", function_bba770de(healthitem.itementry));
    }
    equipmentitem = self.inventory.items[7];
    if (equipmentitem.networkid !== 32767) {
        self clientfield::set_player_uimodel("hudItems.equipmentStackCount", function_bba770de(equipmentitem.itementry));
    }
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x6 linked
// Checksum 0x7c316a4e, Offset: 0x48e8
// Size: 0x534
function private function_6c36ab6b() {
    self function_e6f9e3cd();
    foreach (slotid, item in self.inventory.items) {
        itementry = item.itementry;
        if (isdefined(itementry) && !is_true(itementry.consumable) && isarray(itementry.talents)) {
            if (is_true(itementry.var_97c5ead1) && slotid < 5) {
                continue;
            }
            foreach (var_9de7969b in itementry.talents) {
                self function_b5feff95(var_9de7969b.talent);
            }
        }
    }
    foreach (item in self.inventory.consumed) {
        itementry = item.itementry;
        if (isdefined(itementry) && isarray(itementry.talents)) {
            foreach (var_9de7969b in itementry.talents) {
                self function_b5feff95(var_9de7969b.talent);
            }
        }
    }
    if (isdefined(self.var_7341f980)) {
        foreach (talent in self.var_7341f980) {
            self function_b5feff95(talent);
        }
    }
    if (isdefined(self.var_7ec4f7d7)) {
        foreach (talent in self.var_7ec4f7d7) {
            self function_b5feff95(talent);
        }
    }
    if (isdefined(self.class_num)) {
        self.specialty = self getloadoutperks(self.class_num);
    } else {
        self.specialty = [];
    }
    if (isdefined(level.var_74b10e67)) {
        self [[ level.var_74b10e67 ]]();
    }
    armoritem = self.inventory.items[6];
    if (armoritem.networkid != 32767 && armoritem.itementry.itemtype == #"armor") {
        if (function_27cd171b(armoritem)) {
            self setperk(#"hash_4df21972dd2a3a87");
        }
    }
    self.var_66cb03ad = isdefined(self.var_66cb03ad) ? self.var_66cb03ad : self.spawnhealth;
    self player::function_9080887a();
    self player::function_b2b139e6();
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0x8a01f9e4, Offset: 0x4e28
// Size: 0xe2
function private function_60706bdb(networkid) {
    assert(isplayer(self));
    item = get_inventory_item(networkid);
    if (!isdefined(item) || !isdefined(item.itementry)) {
        return;
    }
    if (item.itementry.itemtype == #"weapon") {
        weapon = namespace_a0d533d1::function_2b83d3ff(item);
        ammoclip = self getweaponammoclip(weapon);
        item.amount = ammoclip;
    }
}

// Namespace item_inventory/item_inventory
// Params 15, eflags: 0x6 linked
// Checksum 0xa0ce5e8f, Offset: 0x4f18
// Size: 0x24c
function private function_d7944517(itemid, weapon, count, amount, stashitem = 0, var_7cab8e12 = undefined, targetname = undefined, attachments = undefined, stockammo = undefined, aat = undefined, paplv = undefined, immediately = 0, weaponoptions = undefined, var_e91aba42 = undefined, var_908f65ca = undefined) {
    assert(isplayer(self));
    assert(item_world_util::function_2c7fc531(itemid));
    self endon(#"death");
    droppos = var_7cab8e12;
    if (!stashitem) {
        droppos = self.origin;
    }
    if (!immediately) {
        return self item_drop::function_fd9026e4(0, weapon, count, amount, itemid, droppos, self.angles, 2, stashitem, 0, targetname, undefined, attachments, undefined, weaponoptions, var_e91aba42, var_908f65ca, undefined, stockammo, aat, paplv);
    }
    self thread item_drop::function_fd9026e4(0, weapon, count, amount, itemid, droppos, self.angles, 2, stashitem, 0, targetname, undefined, attachments, undefined, weaponoptions, var_e91aba42, var_908f65ca, undefined, stockammo, aat, paplv);
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x6 linked
// Checksum 0x32003422, Offset: 0x5170
// Size: 0x3a
function private function_d116a346(*slot, weapon) {
    if (isplayer(self)) {
        self.var_e42fb511 = weapon;
    }
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x6 linked
// Checksum 0xab935d69, Offset: 0x51b8
// Size: 0x3a
function private _gadget_health_regen_on(*slot, weapon) {
    if (isplayer(self)) {
        self.var_d6cd7d80 = weapon;
    }
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x6 linked
// Checksum 0x2183e5b4, Offset: 0x5200
// Size: 0x3e
function private _gadget_health_regen_off(*slot, *weapon) {
    if (isplayer(self)) {
        self.var_d6cd7d80 = undefined;
        self.var_e42fb511 = undefined;
    }
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x6 linked
// Checksum 0x6ee20478, Offset: 0x5248
// Size: 0x54
function private function_2cceca7b() {
    return self isgrappling() || self isusingoffhand() || self function_55acff10(1);
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0xa2fcf647, Offset: 0x52a8
// Size: 0x42
function private function_c1cef1ec(weapon) {
    if (weapon != self getcurrentoffhand()) {
        return 0;
    }
    return self function_2cceca7b();
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x6 linked
// Checksum 0x73bb2165, Offset: 0x52f8
// Size: 0x1cc
function private function_c6be9f7f(weapon, ammo) {
    assert(isplayer(self));
    assert(isdefined(weapon));
    slot = self gadgetgetslot(weapon);
    if (slot >= 0 && slot < 3) {
        if ("ammo" != weapon.gadget_powerusetype) {
            return;
        }
        if (weapon.name == #"eq_tripwire") {
            newpower = weapon.gadget_powermax;
            ammo = weapon.clipsize;
        } else {
            if (!weapon.clipsize) {
                var_35935a45 = weapon.gadget_powermax;
            } else {
                var_35935a45 = weapon.gadget_powermax / weapon.clipsize;
            }
            newammo = ammo;
            if (newammo > weapon.clipsize) {
                newammo = weapon.clipsize;
            }
            newpower = newammo * var_35935a45;
        }
        power = self gadgetpowerset(slot, newpower);
        self setweaponammoclip(weapon, ammo);
        debug_print("set_gadget_power: " + power + ", ammo: " + ammo, weapon);
    }
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x6 linked
// Checksum 0x7973814, Offset: 0x54d0
// Size: 0xee
function private function_ee9ce1c4(itementry, *var_dfe6c7e5) {
    self endon(#"death");
    self.var_10abd91d = 1;
    var_cbdeb265 = level.nullprimaryoffhand;
    switch (var_dfe6c7e5.itemtype) {
    case #"tactical":
        var_cbdeb265 = level.nullsecondaryoffhand;
        break;
    case #"field_upgrade":
        var_cbdeb265 = level.var_3488e988;
        break;
    }
    self replace_weapon(item_world_util::function_35e06774(var_dfe6c7e5), var_cbdeb265);
    self function_c6be9f7f(var_cbdeb265, 0);
    self.var_10abd91d = 0;
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x6 linked
// Checksum 0x123da8ee, Offset: 0x55c8
// Size: 0xfe
function private function_8214f1b6(itementry, *var_dfe6c7e5) {
    self endon(#"death");
    self.var_10abd91d = 1;
    weapon = item_world_util::function_35e06774(var_dfe6c7e5);
    slot = self gadgetgetslot(weapon);
    if (slot >= 0 && slot < 3) {
        while (self function_af359de(slot)) {
            waitframe(1);
        }
    }
    self replace_weapon(weapon, level.var_ef61b4b5);
    self function_755a35c5();
    self.var_10abd91d = 0;
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0x2e7f4145, Offset: 0x56d0
// Size: 0x1b0
function function_bba770de(itementry) {
    assert(isplayer(self));
    count = 0;
    if (!isdefined(itementry)) {
        return count;
    }
    if (!isdefined(self) || !isdefined(self.inventory) || !isdefined(self.inventory.items)) {
        return count;
    }
    if (is_true(itementry.unlimited)) {
        return count;
    }
    name = isdefined(itementry.parentname) ? itementry.parentname : itementry.name;
    for (index = 0; index < self.inventory.items.size && index < 17 + 1; index++) {
        inventoryitem = self.inventory.items[index];
        if (!isdefined(inventoryitem.itementry)) {
            continue;
        }
        if (name == (isdefined(inventoryitem.itementry.parentname) ? inventoryitem.itementry.parentname : inventoryitem.itementry.name)) {
            count += inventoryitem.count;
        }
    }
    return count;
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0x99bfdd96, Offset: 0x5888
// Size: 0x146
function can_pickup_ammo(item, var_1326fcc7 = undefined) {
    assert(isplayer(self));
    itementry = item.itementry;
    ammoweapon = itementry.weapon;
    var_1326fcc7 = isdefined(itementry.amount) ? itementry.amount : isdefined(var_1326fcc7) ? var_1326fcc7 : 1;
    maxstockammo = namespace_a0d533d1::function_2879cbe0(self.inventory.var_7658cbec, ammoweapon);
    currentammostock = self getweaponammostock(ammoweapon);
    var_9b9ba643 = maxstockammo - currentammostock;
    addammo = int(min(var_1326fcc7, var_9b9ba643));
    return addammo > 0;
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0xf5d0e67e, Offset: 0x59d8
// Size: 0x15e
function function_550fcb41(item) {
    assert(isplayer(self));
    if (!is_true(item.itementry.stackable)) {
        return false;
    }
    maxstack = namespace_a0d533d1::function_cfa794ca(self.inventory.var_7658cbec, item.itementry);
    if (maxstack <= 1) {
        return false;
    }
    for (i = 0; i < self.inventory.items.size; i++) {
        if (self.inventory.items[i].id == 32767) {
            continue;
        }
        if (self.inventory.items[i].itementry.name != item.itementry.name) {
            continue;
        }
        if (self.inventory.items[i].count < maxstack) {
            return true;
        }
    }
    return false;
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0xa1cc9116, Offset: 0x5b40
// Size: 0xd2
function private function_85645978(item) {
    currtime = gettime();
    foreach (consumeditem in self.inventory.consumed) {
        if (item.itementry.name == consumeditem.itementry.name && currtime < consumeditem.endtime) {
            return consumeditem;
        }
    }
    return undefined;
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x6 linked
// Checksum 0xe8072061, Offset: 0x5c20
// Size: 0xf2
function private function_3fe6ef04() {
    assert(isplayer(self));
    var_cfa0e915 = [];
    foreach (consumeditem in self.inventory.consumed) {
        if (isdefined(var_cfa0e915[consumeditem.itementry.name])) {
            continue;
        }
        var_cfa0e915[consumeditem.itementry.name] = 1;
    }
    return var_cfa0e915.size;
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0xb0fc6944, Offset: 0x5d20
// Size: 0x570
function consume_item(item) {
    assert(isplayer(self));
    assert(isdefined(item));
    if (!isdefined(item) || !isdefined(item.itementry)) {
        return 0;
    }
    if (isdefined(item.starttime)) {
        return 0;
    }
    if (self isinvehicle()) {
        vehicle = self getvehicleoccupied();
        if (vehicle getoccupantseat(self) == 0) {
            self playsoundtoplayer(#"uin_default_action_denied", self);
            return 0;
        }
        currentweapon = self getcurrentweapon();
        if (isdefined(currentweapon) && is_true(currentweapon.var_29d24e37)) {
            self playsoundtoplayer(#"uin_default_action_denied", self);
            return 0;
        }
    }
    if (item.itementry.itemtype == #"armor_shard") {
        return function_6d647220(item);
    }
    consumeditem = self function_85645978(item);
    if (!isdefined(consumeditem) && self function_3fe6ef04() >= 10) {
        self playsoundtoplayer(#"uin_default_action_denied", self);
        return 0;
    }
    self callback::callback(#"hash_5775ae80fc576ea6", item);
    duration = int((isdefined(item.itementry.duration) ? item.itementry.duration : 0) * 1000);
    starttime = gettime();
    endtime = starttime + duration;
    item.starttime = starttime;
    item.endtime = endtime;
    if (isdefined(consumeditem)) {
        consumeditem.endtime += duration;
        for (index = 0; index < 5; index++) {
            inventoryitem = self.inventory.items[index];
            if (!isdefined(inventoryitem.endtime)) {
                continue;
            }
            if (inventoryitem.itementry.name == item.itementry.name) {
                inventoryitem.starttime = consumeditem.starttime;
                inventoryitem.endtime = consumeditem.endtime;
            }
        }
    } else {
        consumeditem = spawnstruct();
        consumeditem.id = item.id;
        consumeditem.itementry = item.itementry;
        consumeditem.starttime = gettime();
        consumeditem.endtime = consumeditem.starttime + duration;
    }
    self.inventory.consumed[self.inventory.consumed.size] = consumeditem;
    self function_b00db06(11, item.networkid);
    self function_db2abc4(item);
    self function_6c36ab6b();
    if (isdefined(consumeditem.itementry) && isdefined(consumeditem.itementry.talents) && isarray(consumeditem.itementry.talents)) {
        foreach (talent in consumeditem.itementry.talents) {
            if (talent.talent == #"hash_6b4f1f8c0c22026f") {
                self thread function_299d2131(300, 100, 0.1);
                break;
            }
        }
    }
    return 1;
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0x737c397a, Offset: 0x6298
// Size: 0x2d0
function function_6d647220(item) {
    assert(isplayer(self));
    assert(isdefined(item));
    if (!isdefined(item) || item.networkid == 32767) {
        return false;
    }
    if (!has_armor()) {
        return false;
    }
    if (!isdefined(self.armor) || !isdefined(self.maxarmor)) {
        return false;
    }
    if (self.armor == self.maxarmor) {
        return false;
    }
    self use_inventory_item(item.networkid, 1);
    armoritem = undefined;
    if (isplayer(self) && isdefined(self.inventory)) {
        armoritem = self.inventory.items[6];
        if (!isdefined(armoritem) || armoritem.networkid == 32767 || armoritem.itementry.itemtype != #"armor") {
            return false;
        }
    }
    if (isdefined(self.var_3f1410dd)) {
        self.var_3f1410dd.var_2b021e34 += int(min(isdefined(armoritem.itementry.var_a3aa1ca2) ? armoritem.itementry.var_a3aa1ca2 : 0, self.maxarmor - self.armor));
        self.var_3f1410dd.var_7352c057++;
    }
    self.armor = int(min(self.armor + (isdefined(armoritem.itementry.var_a3aa1ca2) ? armoritem.itementry.var_a3aa1ca2 : 0), self.maxarmor));
    function_bdc03d88();
    self function_6c36ab6b();
    self function_db2abc4(item);
    return true;
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0x96abe145, Offset: 0x6570
// Size: 0x414
function cycle_equipment_item() {
    assert(isplayer(self));
    var_bcc2655a = undefined;
    equipmentitem = self.inventory.items[7];
    if (equipmentitem.networkid !== 32767) {
        var_bcc2655a = equipmentitem.itementry;
    }
    if (getdvarint(#"hash_4cd4e3d15cf4ee7e", 1)) {
        item = _cycle_item(#"equipment", array(#"frag_grenade_wz_item", #"frag_t9_item", #"frag_t9_item_sr", #"cluster_semtex_wz_item", #"semtex_t9_item", #"semtex_t9_item_sr", #"acid_bomb_wz_item", #"molotov_wz_item", #"molotov_t9_item", #"molotov_t9_item_sr", #"wraithfire_wz_item", #"hatchet_wz_item", #"hatchet_t9_item", #"hatchet_t9_item_sr", #"tomahawk_t8_wz_item", #"seeker_mine_wz_item", #"dart_wz_item", #"hawk_wz_item", #"ultimate_turret_wz_item", #"hash_49bb95f2912e68ad", #"hash_3c9430c4ac7d082e", #"hash_6a5294b915f32d32", #"hash_6cd8041bb6cd21b1", #"hash_6a07ccefe7f84985", #"hash_17f8849a56eba20f", #"satchel_charge_t9_item", #"satchel_charge_t9_item_sr", #"hash_2c9b75b17410f2de", #"grapple_wz_item", #"hash_12fde8b0da04d262", #"barricade_wz_item", #"spiked_barrier_wz_item", #"trophy_system_wz_item", #"concertina_wire_wz_item", #"sensor_dart_wz_item", #"supply_pod_wz_item", #"trip_wire_wz_item", #"cymbal_monkey_wz_item", #"homunculus_wz_item", #"vision_pulse_wz_item", #"flare_gun_wz_item", #"wz_snowball", #"wz_waterballoon", #"hash_1ae9ade20084359f"), var_bcc2655a);
    } else {
        item = function_9da31874(#"equipment");
    }
    if (isdefined(item)) {
        equip_equipment(item);
        return;
    }
    self playsoundtoplayer(#"uin_default_action_denied", self);
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0x4605fc91, Offset: 0x6990
// Size: 0x1a4
function cycle_health_item() {
    assert(isplayer(self));
    var_bcc2655a = undefined;
    healthitem = self.inventory.items[5];
    if (healthitem.networkid !== 32767) {
        var_bcc2655a = healthitem.itementry;
    }
    if (getdvarint(#"hash_4cd4e3d15cf4ee7e", 1)) {
        item = _cycle_item(#"health", array(#"health_item_small", #"health_item_medium", #"health_item_large", #"health_item_squad", #"hash_20699a922abaf2e1"), var_bcc2655a);
    } else {
        item = function_9da31874(#"health");
    }
    if (isdefined(item)) {
        equip_health(item);
        return;
    }
    self playsoundtoplayer(#"uin_default_action_denied", self);
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0xa8020c83, Offset: 0x6b40
// Size: 0x1d4
function function_fa4bb600() {
    assert(isplayer(self));
    var_bcc2655a = undefined;
    var_16f12c31 = self.inventory.items[17];
    if (var_16f12c31.networkid !== 32767) {
        var_bcc2655a = var_16f12c31.itementry;
    }
    if (getdvarint(#"hash_4cd4e3d15cf4ee7e", 1)) {
        item = _cycle_item(#"scorestreak", array(#"hash_6eb09ea5da35e18f", #"hash_654445f6cc7a7e1c", #"item_survival_scorestreak_pineapple_gun", #"item_survival_scorestreak_deathmachine", #"item_survival_scorestreak_flamethrower", #"item_survival_scorestreak_hand_cannon", #"item_survival_scorestreak_ultimate_turret", #"hash_18fa1f3e4e43437c"), var_bcc2655a);
    } else {
        item = function_9da31874(#"scorestreak");
    }
    if (isdefined(item)) {
        function_1ac37022(item);
        return;
    }
    self playsoundtoplayer(#"uin_default_action_denied", self);
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0x5e19b83c, Offset: 0x6d20
// Size: 0x1c4
function function_a50547af() {
    assert(isplayer(self));
    var_bcc2655a = undefined;
    var_16f12c31 = self.inventory.items[12];
    if (var_16f12c31.networkid !== 32767) {
        var_bcc2655a = var_16f12c31.itementry;
    }
    if (getdvarint(#"hash_4cd4e3d15cf4ee7e", 1)) {
        item = _cycle_item(#"field_upgrade", array(#"hash_3f154f45479130ed", #"hash_2c9b75b17410f2de", #"field_upgrade_frost_blast_item_sr", #"field_upgrade_frost_blast_2_item_sr", #"field_upgrade_frost_blast_3_item_sr", #"field_upgrade_frost_blast_4_item_sr", #"field_upgrade_frost_blast_5_item_sr"), var_bcc2655a);
    } else {
        item = function_9da31874(#"field_upgrade");
    }
    if (isdefined(item)) {
        equip_equipment(item);
        return;
    }
    self playsoundtoplayer(#"uin_default_action_denied", self);
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0x5e28a57, Offset: 0x6ef0
// Size: 0x244
function function_9ba10b94(networkid) {
    assert(isplayer(self));
    self endon(#"death");
    slotid = function_b246c573(networkid);
    if (!isdefined(slotid)) {
        return;
    }
    attachmentweapons = [];
    attachmentids = [];
    foreach (attachmentoffset in array(1, 2, 3, 4, 5, 6, 7, 8)) {
        var_f9f8c0b5 = namespace_a0d533d1::function_dfaca25e(slotid, attachmentoffset);
        item = self.inventory.items[var_f9f8c0b5];
        if (item.networkid != 32767) {
            attachmentweapons[attachmentweapons.size] = item_world_util::function_f4a8d375(item.id);
            attachmentids[attachmentids.size] = item.id;
            remove_inventory_item(item.networkid, 0, 1);
        }
    }
    drop_inventory_item(self.inventory.items[slotid].networkid);
    for (index = 0; index < attachmentids.size; index++) {
        self thread function_d7944517(attachmentids[index], attachmentweapons[index], 1, 1);
    }
}

// Namespace item_inventory/item_inventory
// Params 3, eflags: 0x2 linked
// Checksum 0x275d5f7b, Offset: 0x7140
// Size: 0x81a
function function_9d102bbd(var_b72297c2, networkid, var_f73fa0a8 = 0) {
    assert(isplayer(self));
    self endon(#"death");
    if (!item_world_util::can_pick_up(var_b72297c2)) {
        return 0;
    }
    if (!isdefined(var_b72297c2) || !isdefined(var_b72297c2.itementry) || var_b72297c2.itementry.itemtype !== #"weapon") {
        return 0;
    }
    weaponitem = get_inventory_item(networkid);
    if (!isdefined(weaponitem)) {
        return 0;
    }
    if (!isdefined(weaponitem.itementry) || weaponitem.itementry.itemtype != #"weapon") {
        return 0;
    }
    slotid = function_b246c573(networkid);
    if (!isdefined(slotid)) {
        return 0;
    }
    weapon = namespace_a0d533d1::function_2b83d3ff(weaponitem);
    if (isdefined(self) && isdefined(weapon) && (self function_c1cef1ec(weapon) || !self function_bf2312f1(weapon))) {
        return 0;
    }
    if (isentity(var_b72297c2)) {
        var_b72297c2.hidetime = gettime();
    } else {
        function_54ca5536(var_b72297c2.id, gettime());
    }
    dropweapons = [];
    dropids = [];
    var_cc9e34fb = [];
    var_14174938 = [];
    if (namespace_a0d533d1::function_4bd83c04(var_b72297c2)) {
        foreach (attachmentoffset in array(1, 2, 3, 4, 5, 6, 7, 8)) {
            var_f9f8c0b5 = namespace_a0d533d1::function_dfaca25e(slotid, attachmentoffset);
            item = self.inventory.items[var_f9f8c0b5];
            if (item.networkid != 32767) {
                attachmentname = namespace_a0d533d1::function_2ced1d34(var_b72297c2, item.itementry, 1);
                assert(!isdefined(var_cc9e34fb[attachmentoffset]));
                if (isdefined(attachmentname) && !isdefined(var_cc9e34fb[attachmentoffset])) {
                    var_cc9e34fb[attachmentoffset] = item.itementry;
                } else {
                    dropweapons[dropweapons.size] = item_world_util::function_f4a8d375(item.id);
                    dropids[dropids.size] = item.id;
                }
                var_14174938[var_14174938.size] = item.networkid;
            }
        }
    }
    if (isdefined(var_b72297c2.attachments) || isdefined(var_b72297c2.itementry.attachments)) {
        attachments = isdefined(var_b72297c2.attachments) ? var_b72297c2.attachments : var_b72297c2.itementry.attachments;
        foreach (attachment in attachments) {
            attachmentitem = attachment;
            if (!isdefined(attachmentitem)) {
                continue;
            }
            if (!isdefined(attachmentitem.itementry)) {
                if (!item_world_util::function_7363384a(attachment.var_6be1bec7)) {
                    continue;
                }
                attachmentitem = function_4ba8fde(attachment.var_6be1bec7);
                if (!isdefined(attachmentitem)) {
                    continue;
                }
            }
            attachmentoffset = namespace_a0d533d1::function_837f4a57(attachmentitem.itementry);
            if (!isdefined(attachmentoffset)) {
                continue;
            }
            if (!isdefined(var_cc9e34fb[attachmentoffset])) {
                var_cc9e34fb[attachmentoffset] = attachmentitem.itementry;
                continue;
            }
            dropweapons[dropweapons.size] = item_world_util::function_f4a8d375(attachmentitem.id);
            dropids[dropids.size] = attachmentitem.id;
        }
    }
    var_b72297c2.attachments = [];
    foreach (var_fe35755b in var_cc9e34fb) {
        if (isdefined(var_fe35755b.name)) {
            attachmentitem = function_4ba8fde(var_fe35755b.name);
            var_e38a0464 = function_520b16d6();
            var_e38a0464.count = 1;
            var_e38a0464.id = attachmentitem.id;
            var_e38a0464.networkid = var_e38a0464.id;
            var_e38a0464.itementry = attachmentitem.itementry;
            var_b72297c2.attachments[var_b72297c2.attachments.size] = var_e38a0464;
        }
    }
    for (index = 0; index < var_14174938.size; index++) {
        var_ddd377f2 = var_14174938[index];
        remove_inventory_item(var_ddd377f2, 0, 1);
    }
    dropweapon = self drop_inventory_item(networkid);
    for (index = 0; index < dropids.size; index++) {
        self thread function_d7944517(dropids[index], dropweapons[index], 1, 1);
    }
    if (var_f73fa0a8 && isdefined(dropweapon)) {
        dropweapon.var_864ea466 = 1;
        if (isentity(dropweapon)) {
            item_world::consume_item(dropweapon);
        }
    }
    item_world::function_de2018e3(var_b72297c2, self, slotid);
    item_world::consume_item(var_b72297c2);
    if (isdefined(dropweapon)) {
        return dropweapon;
    }
}

// Namespace item_inventory/item_inventory
// Params 3, eflags: 0x0
// Checksum 0x532dd646, Offset: 0x7968
// Size: 0x332
function function_b76f46a0(var_b72297c2, networkid, var_f73fa0a8 = 0) {
    assert(isplayer(self));
    self endon(#"death");
    if (!item_world_util::can_pick_up(var_b72297c2)) {
        return 0;
    }
    if (!isdefined(var_b72297c2) || !isdefined(var_b72297c2.itementry) || var_b72297c2.itementry.itemtype !== #"weapon") {
        return 0;
    }
    weaponitem = get_inventory_item(networkid);
    if (!isdefined(weaponitem)) {
        return 0;
    }
    if (!isdefined(weaponitem.itementry) || weaponitem.itementry.itemtype != #"weapon") {
        return 0;
    }
    slotid = function_b246c573(networkid);
    if (!isdefined(slotid)) {
        return 0;
    }
    weapon = namespace_a0d533d1::function_2b83d3ff(weaponitem);
    if (isdefined(self) && isdefined(weapon) && (self function_c1cef1ec(weapon) || !self function_bf2312f1(weapon))) {
        return 0;
    }
    if (isentity(var_b72297c2)) {
        var_b72297c2.hidetime = gettime();
    } else {
        function_54ca5536(var_b72297c2.id, gettime());
    }
    dropweapons = [];
    dropids = [];
    var_cc9e34fb = [];
    var_14174938 = [];
    dropweapon = self drop_inventory_item(networkid);
    for (index = 0; index < dropids.size; index++) {
        self thread function_d7944517(dropids[index], dropweapons[index], 1, 1);
    }
    if (var_f73fa0a8 && isdefined(dropweapon)) {
        dropweapon.var_864ea466 = 1;
        if (isentity(dropweapon)) {
            item_world::consume_item(dropweapon);
        }
    }
    item_world::function_de2018e3(var_b72297c2, self, slotid);
    item_world::consume_item(var_b72297c2);
    if (isdefined(dropweapon)) {
        return dropweapon;
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0xef636af0, Offset: 0x7ca8
// Size: 0x1b0
function function_fba40e6c(item) {
    assert(isplayer(self));
    self endon(#"death");
    if (!item_world_util::can_pick_up(item)) {
        return 0;
    }
    itemslot = self function_e66dcff5(item, 1);
    dropitem = self.inventory.items[itemslot];
    self function_85287396(1);
    self drop_inventory_item(dropitem.networkid);
    slotid = function_e66dcff5(item, 1);
    itementry = item.itementry;
    self item_world::function_de2018e3(item, self, slotid);
    inventoryitem = self function_8babc9f9(itementry);
    item_world::consume_item(item);
    if (isdefined(inventoryitem)) {
        self equip_item(inventoryitem.networkid);
    }
    self function_85287396(0);
    return dropitem;
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0x155e698c, Offset: 0x7e60
// Size: 0x848
function function_e66dcff5(item, var_662e1704 = 0) {
    assert(isplayer(self));
    if (!isdefined(self.inventory)) {
        return undefined;
    }
    if (!isdefined(item) || !isdefined(item.itementry)) {
        return undefined;
    }
    if (namespace_a0d533d1::function_819781bf()) {
        var_662e1704 = 1;
    }
    switch (item.itementry.itemtype) {
    case #"ammo":
        return undefined;
    case #"armor_shard":
        return 11;
    case #"weapon":
        foreach (slotid in namespace_a0d533d1::function_4905dddf()) {
            if (self.inventory.items[slotid].networkid === 32767) {
                return slotid;
            }
        }
        weaponitem = function_230ceec4(get_current_weapon());
        if (!isdefined(weaponitem)) {
            return;
        }
        return function_b246c573(weaponitem.networkid);
    case #"backpack":
        return 8;
    case #"armor":
        return 6;
    case #"resource":
        if (item_world_util::function_41f06d9d(item.itementry)) {
            return 9;
        }
        return 10;
    case #"equipment":
        if (var_662e1704 || self.inventory.items[7].networkid === 32767) {
            return 7;
        }
        break;
    case #"field_upgrade":
        if (var_662e1704 || self.inventory.items[12].networkid === 32767) {
            return 12;
        }
        break;
    case #"tactical":
        if (var_662e1704 || self.inventory.items[13].networkid === 32767) {
            return 13;
        }
        break;
    case #"health":
        if (var_662e1704 || self.inventory.items[5].networkid === 32767) {
            return 5;
        }
        break;
    case #"perk_tier_1":
        if (var_662e1704 || self.inventory.items[14].networkid === 32767) {
            return 14;
        }
        break;
    case #"perk_tier_2":
        if (var_662e1704 || self.inventory.items[15].networkid === 32767) {
            return 15;
        }
        break;
    case #"perk_tier_3":
        if (var_662e1704 || self.inventory.items[16].networkid === 32767) {
            return 16;
        }
        break;
    case #"scorestreak":
        if (var_662e1704 || self.inventory.items[17].networkid === 32767) {
            return 17;
        }
        break;
    }
    if (item.itementry.itemtype == #"attachment") {
        weaponslotid = function_d768ea30();
        if (var_662e1704) {
            weaponslotid = isdefined(weaponslotid) && weaponslotid == 17 + 1 ? 17 + 1 + 8 + 1 : 17 + 1;
        }
        if (isdefined(weaponslotid)) {
            var_f0dc4e93 = item_world_util::function_970b8d86(weaponslotid);
            if (self.inventory.items[weaponslotid].networkid != 32767 && self.inventory.items[weaponslotid].itementry.itemtype != #"scorestreak") {
                var_ceefbd10 = namespace_a0d533d1::function_837f4a57(item.itementry);
                var_f9f8c0b5 = namespace_a0d533d1::function_dfaca25e(weaponslotid, var_ceefbd10);
                weaponitem = self get_inventory_item(var_f0dc4e93);
                attachmentname = namespace_a0d533d1::function_2ced1d34(weaponitem, item.itementry, 1);
                if (isdefined(attachmentname)) {
                    return var_f9f8c0b5;
                }
            }
        }
    }
    if (is_true(item.itementry.stackable)) {
        weapon = item_world_util::function_35e06774(item.itementry);
        if (isdefined(weapon)) {
            maxstack = namespace_a0d533d1::function_cfa794ca(self.inventory.var_7658cbec, item.itementry);
            if (maxstack > 1) {
                foreach (i, spawnitem in self.inventory.items) {
                    if (spawnitem.id == 32767) {
                        continue;
                    }
                    inventoryitem = function_b1702735(spawnitem.id);
                    if (inventoryitem.itementry.name != item.itementry.name) {
                        continue;
                    }
                    if (self.inventory.items[i].count < maxstack) {
                        return i;
                    }
                }
            }
        }
    }
    if (!namespace_a0d533d1::function_819781bf()) {
        for (index = 0; index < self.inventory.var_c212de25; index++) {
            if (self.inventory.items[index].id == 32767) {
                return index;
            }
        }
    }
    return undefined;
}

// Namespace item_inventory/item_inventory
// Params 3, eflags: 0x2 linked
// Checksum 0xb7f2fbd9, Offset: 0x86b0
// Size: 0xdc
function drop_armor(stashitem = 0, var_7cab8e12 = undefined, targetname = undefined) {
    assert(isplayer(self));
    if (self has_armor()) {
        item = self.inventory.items[6];
        self thread drop_inventory_item(item.networkid, stashitem, var_7cab8e12, targetname);
        return true;
    }
    return false;
}

// Namespace item_inventory/item_inventory
// Params 3, eflags: 0x2 linked
// Checksum 0x2e6291e6, Offset: 0x8798
// Size: 0xfc
function function_d86d7ac7(stashitem = 0, var_7cab8e12 = undefined, targetname = undefined) {
    assert(isplayer(self));
    for (index = self.inventory.var_c212de25; index < 5; index++) {
        inventoryitem = self.inventory.items[index];
        if (inventoryitem.networkid != 32767) {
            self thread drop_inventory_item(inventoryitem.networkid, stashitem, var_7cab8e12, targetname);
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 6, eflags: 0x2 linked
// Checksum 0xa03257e7, Offset: 0x88a0
// Size: 0x81a
function drop_inventory_item(networkid, stashitem = 0, var_7cab8e12 = undefined, targetname = undefined, var_4a6f595d = 1, immediately = 0) {
    assert(isplayer(self));
    self endon(#"death");
    dropitem = undefined;
    item = get_inventory_item(networkid);
    if (!isdefined(item)) {
        return dropitem;
    }
    weapon = namespace_a0d533d1::function_2b83d3ff(item);
    stockammo = 0;
    var_4f8a16ec = getgametypesetting(#"hash_b76e50c1202aa23");
    if (!var_4f8a16ec && isdefined(weapon) && (item.itementry.itemtype === #"weapon" || item.itementry.itemtype === #"scorestreak")) {
        stockammo = self getweaponammostock(weapon);
        if (stockammo == 0 && item.itementry.itemtype === #"scorestreak") {
            stockammo = self getweaponammoclip(weapon);
        }
    }
    if (!immediately && isdefined(self) && isdefined(weapon) && get_current_weapon() == weapon && self isfiring()) {
        waitframe(1);
    }
    if (!isdefined(self) || isdefined(weapon) && get_current_weapon() == weapon && self isfiring()) {
        return dropitem;
    }
    /#
        if (!isdefined(var_7cab8e12) && getdvarint(#"hash_5f50ef95773c29b5", 0)) {
            for (i = getdvarint(#"hash_5f50ef95773c29b5", 0); i > 0; i--) {
                dropitem = self function_d7944517(item.id, weapon, item.count, item.amount, stashitem, var_7cab8e12, targetname, isdefined(item.attachments) ? item.attachments : array());
            }
            return dropitem;
        }
    #/
    function_60706bdb(networkid);
    count = isdefined(item.count) ? item.count : 1;
    amount = isdefined(item.amount) ? item.amount : 0;
    removeonly = isdefined(item.endtime);
    var_337ff88 = self.inventory.items[8].networkid === networkid;
    if (self function_23335063(networkid, 0)) {
        if (var_337ff88 && var_4a6f595d) {
            function_d86d7ac7(stashitem, var_7cab8e12, targetname);
            function_ec238da8();
        }
        if (count > 0) {
            item.var_59361ab4 = 0;
            namespace_a0d533d1::function_6e9e7169(item);
            if (!removeonly) {
                weapon = namespace_a0d533d1::function_2b83d3ff(item);
                if (isdefined(level.var_fe1dd361) && isdefined(level.var_b059ce9e)) {
                    weaponoptions = [[ level.var_fe1dd361 ]](item);
                    var_e91aba42 = [[ level.var_b059ce9e ]](item);
                }
                if (isdefined(level.var_8822a6d5)) {
                    var_908f65ca = [[ level.var_8822a6d5 ]](item);
                }
                dropitem = self function_d7944517(item.id, weapon, count, amount, stashitem, var_7cab8e12, targetname, isdefined(item.attachments) ? item.attachments : array(), stockammo, item.aat, item.paplv, immediately, weaponoptions, var_e91aba42, var_908f65ca);
            } else {
                consumeditem = function_85645978(item);
                if (isdefined(consumeditem)) {
                    var_ee0e9af9 = [];
                    for (index = 0; index < 5; index++) {
                        inventoryitem = self.inventory.items[index];
                        if (!isdefined(inventoryitem.endtime)) {
                            continue;
                        }
                        if (inventoryitem.itementry.name == item.itementry.name) {
                            var_ee0e9af9[var_ee0e9af9.size] = inventoryitem;
                        }
                    }
                    remaining = consumeditem.endtime - gettime();
                    consumeditem.endtime -= remaining / (var_ee0e9af9.size + 1);
                    for (index = 0; index < var_ee0e9af9.size; index++) {
                        inventoryitem = var_ee0e9af9[index];
                        inventoryitem.starttime = consumeditem.starttime;
                        inventoryitem.endtime = consumeditem.endtime;
                    }
                }
            }
            if (isdefined(item.attachments)) {
                attachments = arraycopy(item.attachments);
                foreach (attachment in attachments) {
                    if (!isdefined(attachment)) {
                        continue;
                    }
                    remove_inventory_item(attachment.networkid);
                }
            }
            return dropitem;
        }
    }
    return dropitem;
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0xee719e8b, Offset: 0x90c8
// Size: 0x20a
function equip_ammo(item, var_aec6fa7f) {
    assert(isplayer(self));
    assert(isdefined(item));
    self function_db2abc4(item);
    itementry = item.itementry;
    ammoweapon = itementry.weapon;
    var_1326fcc7 = isdefined(itementry.amount) ? itementry.amount : isdefined(var_aec6fa7f) ? var_aec6fa7f : 1;
    maxstockammo = namespace_a0d533d1::function_2879cbe0(self.inventory.var_7658cbec, ammoweapon);
    currentammostock = self getweaponammostock(ammoweapon);
    var_9b9ba643 = maxstockammo - currentammostock;
    addammo = int(min(var_1326fcc7, var_9b9ba643));
    if (isdefined(ammoweapon) && ammoweapon != level.weaponnone) {
        self.inventory.ammo[ammoweapon.name] = item.id;
        self function_fc9f8b05(ammoweapon, addammo);
        if (isdefined(var_aec6fa7f)) {
            return (var_1326fcc7 - addammo);
        }
        return 0;
    }
    assertmsg("<unknown string>" + itementry.name + "<unknown string>");
    return var_1326fcc7 - addammo;
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0x5d9a3e80, Offset: 0x92e0
// Size: 0x196
function function_4cde30fa(inventoryitem, itementry) {
    if (game.state == #"pregame" || !isplayer(self) || isdefined(self.var_3f1410dd) || !isdefined(inventoryitem) || !isdefined(itementry)) {
        return;
    }
    self.var_3f1410dd = {#player_xuid:int(self getxuid(1)), #start_time:function_f8d53445(), #end_time:0, #var_4550558c:isdefined(inventoryitem.amount) ? inventoryitem.amount : 0, #tier:isdefined(itementry.armortier) ? itementry.armortier : 1, #damage_taken:0, #var_7352c057:0, #var_2b021e34:0, #broken:0, #died:0};
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0x55dcb1f1, Offset: 0x9480
// Size: 0xf6
function function_bef83dc6() {
    if (game.state == #"pregame" || !isplayer(self) || !isdefined(self.var_3f1410dd)) {
        return;
    }
    self.var_3f1410dd.broken = isdefined(self.armor) && self.armor <= 0;
    self.var_3f1410dd.died = isdefined(self.health) && self.health <= 0;
    self.var_3f1410dd.end_time = function_f8d53445();
    function_92d1707f(#"hash_3d5d9b3e2bc86b28", self.var_3f1410dd);
    self.var_3f1410dd = undefined;
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0x2a0df154, Offset: 0x9580
// Size: 0x2d4
function equip_armor(item) {
    itementry = item.itementry;
    inventoryitem = get_inventory_item(item.networkid);
    if (!isdefined(inventoryitem)) {
        return;
    }
    self function_db2abc4(item);
    self armor::set_armor(inventoryitem.amount, isdefined(itementry.amount) ? itementry.amount : 0, isdefined(itementry.armortier) ? itementry.armortier : 1, isdefined(itementry.var_99c0cb08) ? itementry.var_99c0cb08 : 1, isdefined(itementry.var_2ee21ae6) ? itementry.var_2ee21ae6 : 1, isdefined(itementry.var_c690c73d) ? itementry.var_c690c73d : 1, isdefined(itementry.var_99edb6a3) ? itementry.var_99edb6a3 : 1, isdefined(itementry.var_22c3ab38) ? itementry.var_22c3ab38 : 1, isdefined(itementry.var_9f307988) ? itementry.var_9f307988 : 1, isdefined(itementry.var_7a80f06e) ? itementry.var_7a80f06e : 1, isdefined(itementry.explosivedamagescale) ? itementry.explosivedamagescale : 1, isdefined(itementry.var_f2902d7b) ? itementry.var_f2902d7b : 1, itementry.var_19f48bbe);
    self function_4cde30fa(inventoryitem, itementry);
    self.inventory.items[6] = inventoryitem;
    self function_b00db06(6, item.networkid);
    self clientfield::set_player_uimodel("hudItems.armorType", isdefined(itementry.armortier) ? itementry.armortier : 1);
    self callback::callback("equip_armor", {#tier:itementry.armortier});
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0x15977df4, Offset: 0x9860
// Size: 0x8a
function function_e258cef5(networkid, itemtype) {
    if (networkid == 32767) {
        return undefined;
    }
    item = get_inventory_item(networkid);
    if (!isdefined(item) || !isdefined(item.itementry) || item.itementry.itemtype != itemtype) {
        return undefined;
    }
    return item;
}

// Namespace item_inventory/item_inventory
// Params 5, eflags: 0x2 linked
// Checksum 0x11ef844a, Offset: 0x98f8
// Size: 0x464
function equip_attachment(item, var_610add8d, var_d6f68de7, var_a3a17c55 = 1, switchweapon = 1) {
    assert(isplayer(self));
    assert(isstruct(item));
    var_4e2a1ed8 = function_e258cef5(var_610add8d, #"weapon");
    if (!isdefined(var_4e2a1ed8)) {
        return;
    }
    if (namespace_a0d533d1::function_9e9c82a6(var_4e2a1ed8, item, 0)) {
        function_b3342af3(item, undefined, var_4e2a1ed8);
        offset = namespace_a0d533d1::function_837f4a57(item.itementry);
        var_ac396b2f = get_weapon_slot(var_4e2a1ed8);
        if (!isdefined(var_ac396b2f)) {
            return;
        }
        var_dd6937a8 = namespace_a0d533d1::function_dfaca25e(var_ac396b2f, offset);
        var_2134bf0d = self.inventory.items[var_dd6937a8];
        itemslotid = function_b246c573(item.networkid);
        if (!isdefined(itemslotid)) {
            return;
        }
        var_97cc940d = 0;
        if (isdefined(var_d6f68de7)) {
            var_3f6f5f3c = function_e258cef5(var_d6f68de7, #"weapon");
            var_2134bf0d = self.inventory.items[var_dd6937a8];
            if (isdefined(var_3f6f5f3c) && isdefined(var_2134bf0d) && isdefined(function_e258cef5(var_2134bf0d.networkid, #"attachment")) && function_f3195b3d(var_2134bf0d.networkid)) {
                var_97cc940d = 1;
            }
        }
        if (!var_97cc940d) {
            function_26c87da8(itemslotid, var_dd6937a8);
        }
        self function_b00db06(6, item.networkid);
        foreach (slot in array("attachSlotOptics", "attachSlotMuzzle", "attachSlotBarrel", "attachSlotUnderbarrel", "attachSlotBody", "attachSlotMagazine", "attachSlotHandle", "attachSlotStock")) {
            if (is_true(item.itementry.(slot))) {
                function_41a57271(var_4e2a1ed8, slot, undefined, item);
            }
        }
        function_d019bf1d(var_610add8d, undefined, undefined, 0);
        namespace_a0d533d1::function_6e9e7169(var_4e2a1ed8);
        equip_weapon(var_4e2a1ed8, switchweapon, undefined, var_a3a17c55, 0);
        self function_db2abc4(item);
        if (var_97cc940d) {
            equip_attachment(var_2134bf0d, var_d6f68de7, undefined, var_a3a17c55, 1);
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0x9fcb8bbf, Offset: 0x9d68
// Size: 0x14c
function equip_backpack(item) {
    assert(isplayer(self));
    inventoryitem = get_inventory_item(item.networkid);
    if (!isdefined(inventoryitem)) {
        return;
    }
    slotid = function_b246c573(item.networkid);
    if (!isdefined(slotid)) {
        return;
    }
    self function_db2abc4(item);
    function_26c87da8(slotid, 8);
    self.inventory.var_7658cbec = namespace_a0d533d1::function_d8cebda3(item.itementry);
    if (self.inventory.var_7658cbec & 1) {
        self.inventory.var_c212de25 = 5;
    }
    self.inventory.items[8] = inventoryitem;
    self function_b00db06(6, item.networkid);
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0x9998b9ea, Offset: 0x9ec0
// Size: 0xe4
function debug_print(message, weapon) {
    /#
        if (getdvarint(#"inventory_debug", 0) > 0) {
            weaponname = "<unknown string>";
            if (isdefined(weapon)) {
                weaponname = "<unknown string>" + function_9e72a96(weapon.name);
            }
            self iprintlnbold("<unknown string>" + message + weaponname);
            println("<unknown string>" + self.playername + "<unknown string>" + message + weaponname);
        }
    #/
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0x7299e842, Offset: 0x9fb0
// Size: 0x624
function equip_equipment(item) {
    self notify("1eb2413c83e8e00a");
    self endon("1eb2413c83e8e00a");
    assert(isplayer(self));
    while (isdefined(self) && is_true(self.var_10abd91d)) {
        waitframe(1);
    }
    if (!isdefined(self)) {
        return;
    }
    if (!isdefined(item) || !isdefined(item.itementry)) {
        return;
    }
    itemslotid = 7;
    switch (item.itementry.itemtype) {
    case #"field_upgrade":
        itemslotid = 12;
        break;
    case #"tactical":
        itemslotid = 13;
        break;
    }
    itementry = item.itementry;
    weapon = itementry.weapon;
    debug_print("equip_equipment:", weapon);
    equipmentitem = self.inventory.items[itemslotid];
    if (equipmentitem.id != 32767) {
        equippedweapon = function_b1702735(equipmentitem.id).itementry.weapon;
        if (isdefined(equippedweapon)) {
            slot = self gadgetgetslot(equippedweapon);
            if (slot >= 0 && slot < 3) {
                if (self gadgetisprimed(slot)) {
                    debug_print("equip_equipment: fail: GadgetIsPrimed", equippedweapon);
                    return;
                }
            }
            if (self function_c1cef1ec(equippedweapon)) {
                debug_print("equip_equipment: fail: offhand equipment in use", equippedweapon);
                return;
            }
            if (isdefined(self.var_6d2ad74f) && self.var_6d2ad74f === equippedweapon) {
                debug_print("equip_equipment: fail: equipment waiting for removal", equippedweapon);
                return;
            }
            if (equipmentitem.networkid != item.networkid) {
                if (namespace_a0d533d1::function_819781bf()) {
                    drop_inventory_item(equipmentitem.networkid);
                } else {
                    function_d019bf1d(equipmentitem.networkid);
                }
            }
        }
    }
    if (isdefined(weapon) && weapon != level.weaponnone) {
        self function_db2abc4(item);
        slotid = function_b246c573(item.networkid);
        if (isdefined(slotid) && slotid < self.inventory.var_c212de25) {
            function_26c87da8(slotid, itemslotid);
        }
        weaponoptions = undefined;
        var_e91aba42 = undefined;
        var_908f65ca = undefined;
        var_cbdeb265 = level.nullprimaryoffhand;
        switch (item.itementry.itemtype) {
        case #"tactical":
            var_cbdeb265 = level.nullsecondaryoffhand;
            break;
        case #"field_upgrade":
            var_cbdeb265 = level.var_3488e988;
            break;
        }
        self replace_weapon(var_cbdeb265, weapon, undefined, undefined, undefined, weaponoptions, var_e91aba42, var_908f65ca);
        self function_b00db06(6, item.networkid);
        for (i = 0; i < self.inventory.items.size; i++) {
            if (self.inventory.items[i].networkid === item.networkid) {
                if (weapon.gadget_type == 0) {
                    if (self hasweapon(weapon)) {
                        self setweaponammoclip(weapon, self.inventory.items[i].count);
                    }
                } else {
                    self function_c6be9f7f(weapon, self.inventory.items[i].count);
                }
                break;
            }
        }
        debug_print("equip_equipment: success", weapon);
        if (itemslotid == 7) {
            self clientfield::set_player_uimodel("hudItems.equipmentStackCount", function_bba770de(self.inventory.items[itemslotid].itementry));
        }
        return;
    }
    assertmsg("<unknown string>" + itementry.name + "<unknown string>");
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0x779732a5, Offset: 0xa5e0
// Size: 0x50c
function equip_health(item) {
    self notify("462ea00ced44f6e9");
    self endon("462ea00ced44f6e9");
    assert(isplayer(self));
    while (isdefined(self) && is_true(self.var_10abd91d)) {
        waitframe(1);
    }
    if (!isdefined(item) || !isdefined(self)) {
        return;
    }
    itementry = item.itementry;
    weapon = itementry.weapon;
    debug_print("equip_health:", weapon);
    if (isdefined(self.var_d6cd7d80)) {
        debug_print("equip_health: fail: offhand equipment casting", self.var_d6cd7d80);
        return;
    }
    if (isdefined(self.var_e42fb511)) {
        debug_print("equip_health: fail: offhand equipment primed", self.var_e42fb511);
        return;
    }
    if (isdefined(self.inventory) && isdefined(self.inventory.items[5])) {
        var_b6edb3b2 = self.inventory.items[5].networkid;
    }
    if (isdefined(var_b6edb3b2) && var_b6edb3b2 != 32767) {
        var_2337367a = get_inventory_item(var_b6edb3b2);
        if (isdefined(var_2337367a)) {
            equippedweapon = namespace_a0d533d1::function_2b83d3ff(var_2337367a);
            if (isdefined(equippedweapon)) {
                slot = self gadgetgetslot(equippedweapon);
                if (slot >= 0 && slot < 3) {
                    if (self gadgetisprimed(slot)) {
                        debug_print("equip_health: fail: GadgetIsPrimed", equippedweapon);
                        return;
                    }
                    if (self gadgetisactive(slot)) {
                        debug_print("equip_health: fail: GadgetIsActive", equippedweapon);
                        return;
                    }
                }
                if (self function_c1cef1ec(equippedweapon)) {
                    debug_print("equip_health: fail: offhand equipment in use", equippedweapon);
                    return;
                }
                if (isdefined(self.var_6d2ad74f) && self.var_6d2ad74f === equippedweapon) {
                    debug_print("equip_health: fail: equipment waiting for removal", equippedweapon);
                    return;
                }
            }
        }
        if (var_2337367a.networkid != item.networkid) {
            function_d019bf1d(var_b6edb3b2);
        }
    }
    if (isdefined(weapon) && weapon != level.weaponnone) {
        self function_db2abc4(item);
        slotid = function_b246c573(item.networkid);
        if (isdefined(slotid) && slotid < self.inventory.var_c212de25) {
            function_26c87da8(slotid, 5);
        }
        self replace_weapon(level.var_ef61b4b5, weapon);
        self function_b00db06(6, item.networkid);
        self clientfield::set_player_uimodel("hudItems.healthItemstackCount", function_bba770de(item.itementry));
        slot = self gadgetgetslot(weapon);
        if (slot >= 0 && slot < 3) {
            self function_19ed70ca(slot, 0);
        }
        debug_print("equip_health: success", weapon);
        self function_755a35c5();
        return;
    }
    assertmsg("<unknown string>" + itementry.name + "<unknown string>");
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0x5edb37e3, Offset: 0xaaf8
// Size: 0x224
function function_854cf2c3(item) {
    self notify("7d6f9ea5686b1f51");
    self endon("7d6f9ea5686b1f51");
    assert(isplayer(self));
    if (!isdefined(self)) {
        return;
    }
    if (!isdefined(item) || !isdefined(item.itementry)) {
        return;
    }
    inventoryitem = get_inventory_item(item.networkid);
    if (!isdefined(inventoryitem)) {
        return;
    }
    itementry = item.itementry;
    weapon = itementry.weapon;
    slotid = function_b246c573(item.networkid);
    if (!isdefined(slotid)) {
        return;
    }
    perkslot = namespace_a0d533d1::function_417ec8b9(itementry);
    if (!isdefined(perkslot)) {
        return;
    }
    self function_db2abc4(item);
    function_26c87da8(slotid, perkslot);
    if (item.itementry.name == #"hash_6ac2848a2f6492ac") {
        backpack = item_world_util::function_49ce7663(#"hash_6a677bcb21d4432b");
        var_fa3df96 = self function_e66dcff5(backpack);
        self item_world::function_de2018e3(backpack, self, var_fa3df96);
    }
    self.inventory.items[perkslot] = inventoryitem;
    self function_b00db06(6, item.networkid);
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0x10c67180, Offset: 0xad28
// Size: 0x30e
function function_1ac37022(item, ammo) {
    self notify("4deb32c815b616f8");
    self endon("4deb32c815b616f8");
    assert(isplayer(self));
    if (!isdefined(self)) {
        return;
    }
    if (!isdefined(item) || !isdefined(item.itementry)) {
        return;
    }
    inventoryitem = get_inventory_item(item.networkid);
    if (!isdefined(inventoryitem)) {
        return;
    }
    itementry = item.itementry;
    weapon = itementry.weapon;
    slotid = function_b246c573(item.networkid);
    if (!isdefined(slotid)) {
        return;
    }
    var_f4cc972d = 17;
    self function_db2abc4(item);
    function_26c87da8(slotid, var_f4cc972d);
    self.inventory.items[var_f4cc972d] = inventoryitem;
    self function_b00db06(6, item.networkid);
    var_4fead4c7 = undefined;
    killstreakbundle = getscriptbundle(item.itementry.killstreak);
    if (is_true(item.itementry.var_ef70c5b3)) {
        var_4fead4c7 = killstreakbundle.var_fc0c8eae.name;
    } else {
        var_4fead4c7 = killstreakbundle.var_d3413870;
    }
    if (isdefined(var_4fead4c7)) {
        killstreaks::give(var_4fead4c7);
        if (isdefined(ammo) && isdefined(weapon) && weapon.name != #"ultimate_turret" && weapon.name != #"sig_lmg") {
            self setweaponammostock(weapon, ammo);
            self.pers[#"held_killstreak_ammo_count"][weapon] = ammo;
            return;
        }
        if (isdefined(ammo) && isdefined(weapon) && weapon.name == #"sig_lmg") {
            self setweaponammoclip(weapon, ammo);
            self.pers[#"held_killstreak_ammo_count"][weapon] = ammo;
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 3, eflags: 0x2 linked
// Checksum 0x3921db4e, Offset: 0xb040
// Size: 0x402
function equip_item(networkid, quickequip = 0, weaponid = 0) {
    assert(isplayer(self));
    item = get_inventory_item(networkid);
    if (isdefined(item) && isdefined(item.itementry)) {
        if (is_true(item.itementry.consumable)) {
            return self consume_item(item);
        }
        itemtype = item.itementry.itemtype;
        switch (itemtype) {
        case #"ammo":
            self equip_ammo(item);
            break;
        case #"armor":
            self equip_armor(item);
            break;
        case #"attachment":
            if (weaponid == 0) {
                self equip_attachment(item, function_ec087745(), undefined, !quickequip, 1);
            } else {
                self equip_attachment(item, function_c3fb7a6e(), function_ec087745(), !quickequip, 0);
            }
            break;
        case #"backpack":
            self equip_backpack(item);
            break;
        case #"tactical":
        case #"equipment":
        case #"field_upgrade":
            self equip_equipment(item);
            break;
        case #"perk_tier_3":
        case #"perk_tier_2":
        case #"perk_tier_1":
            self function_854cf2c3(item);
            break;
        case #"scorestreak":
            self function_1ac37022(item);
            break;
        case #"generic":
        case #"cash":
            break;
        case #"health":
            self equip_health(item);
            break;
        case #"killstreak":
            self use_killstreak(networkid, item);
            break;
        case #"weapon":
            self equip_weapon(item);
            break;
        default:
            assertmsg("<unknown string>" + (isdefined(item.itementry.itemtype) ? item.itementry.itemtype : "<unknown string>") + "<unknown string>");
            return 0;
        }
        return 1;
    }
    return 0;
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x6 linked
// Checksum 0x7991aeb6, Offset: 0xb450
// Size: 0x26
function private can_switch_weapons() {
    if (self function_2cceca7b()) {
        return false;
    }
    return true;
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0xfd71c7fd, Offset: 0xb480
// Size: 0x8e
function private function_bf2312f1(weapon) {
    currentweapon = self getcurrentweapon();
    if (isdefined(currentweapon) && currentweapon != level.weaponnone && currentweapon == weapon) {
        if (self function_55acff10()) {
            return false;
        }
        if (self isfiring()) {
            return false;
        }
    }
    return true;
}

// Namespace item_inventory/item_inventory
// Params 6, eflags: 0x2 linked
// Checksum 0x73175acf, Offset: 0xb518
// Size: 0xb7c
function equip_weapon(item, switchweapon = 1, var_9fa01da8 = 0, var_a3a17c55 = 0, initialweaponraise = 0, stockammo) {
    assert(isplayer(self));
    itementry = item.itementry;
    itemtype = itementry.itemtype;
    assert(itemtype == #"weapon");
    currentweapon = level.weaponbasemeleeheld;
    var_68dc9720 = 17 + 1;
    var_6073ab7b = 0;
    var_954e19c7 = function_bad4a3a5();
    if (var_954e19c7 == namespace_a0d533d1::function_80fb4b76()) {
        if (var_9fa01da8) {
            currentweapon = self getstowedweapon();
        } else {
            currentweapon = get_current_weapon();
        }
        foreach (slotid in namespace_a0d533d1::function_4905dddf()) {
            var_b8c2759f = self.inventory.items[slotid];
            if (var_b8c2759f.networkid === 32767) {
                continue;
            }
            equippedweapon = namespace_a0d533d1::function_2b83d3ff(var_b8c2759f);
            if (currentweapon == equippedweapon) {
                var_68dc9720 = slotid;
                function_60706bdb(var_b8c2759f.networkid);
                function_d019bf1d(var_b8c2759f.networkid);
                break;
            }
        }
        currentweapon = level.weaponbasemeleeheld;
    } else {
        if (var_954e19c7 == 0) {
            if (self getcurrentweapon() != level.weaponnone || self getcurrentweapon() != level.weaponbasemeleeheld) {
                var_6073ab7b = 1;
            } else {
                currentweapon = level.weaponnone;
            }
        }
        var_68dc9720 = undefined;
        foreach (slotid in namespace_a0d533d1::function_4905dddf()) {
            if (self.inventory.items[slotid].networkid === item.networkid) {
                var_68dc9720 = slotid;
                break;
            }
        }
        if (!isdefined(var_68dc9720)) {
            foreach (slotid in namespace_a0d533d1::function_4905dddf()) {
                if (self.inventory.items[slotid].networkid === 32767) {
                    var_68dc9720 = slotid;
                    break;
                }
            }
        }
    }
    weapon = namespace_a0d533d1::function_2b83d3ff(item);
    if (isdefined(weapon) && weapon != level.weaponnone) {
        var_346dc077 = self getweaponammostock(weapon);
        item.var_59361ab4 = namespace_a0d533d1::function_8746cad9(slotid);
        namespace_a0d533d1::function_6e9e7169(item);
        weapon = namespace_a0d533d1::function_2b83d3ff(item);
        slotid = function_b246c573(item.networkid);
        if (!isdefined(slotid)) {
            return;
        }
        self function_26c87da8(slotid, var_68dc9720);
        if (initialweaponraise && !isdefined(item.weaponoptions) && !isdefined(item.var_e91aba42)) {
            weaponoptions = undefined;
            var_e91aba42 = undefined;
            var_908f65ca = undefined;
            if (isdefined(getgametypesetting(#"wzrandomcamo")) ? getgametypesetting(#"wzrandomcamo") : 0) {
                renderoptions = function_ea647602("camo", weapon);
                if (renderoptions.size > 0) {
                    var_9412af4a = randomint(renderoptions.size);
                    weaponoptions = self function_6eff28b5(renderoptions[var_9412af4a].item_index, 0, 0);
                }
            } else {
                buildkitweapon = activecamo::function_b259f3e0(weapon);
                weaponoptions = self getbuildkitweaponoptions(buildkitweapon);
                var_e91aba42 = self function_1744e243(buildkitweapon);
                var_908f65ca = self function_54cc4c36(buildkitweapon);
            }
            if (weaponoptions != self getbuildkitweaponoptions(level.weaponnone)) {
                item.weaponoptions = weaponoptions;
            }
            if (var_e91aba42 != self function_1744e243(level.weaponnone)) {
                item.var_e91aba42 = var_e91aba42;
            }
            if (var_908f65ca != self function_54cc4c36(level.weaponnone)) {
                item.var_908f65ca = var_908f65ca;
            }
        }
        item.weaponoptions = self function_fc04b237(weapon, item.weaponoptions);
        self replace_weapon(currentweapon, weapon, 1, initialweaponraise, var_a3a17c55, item.weaponoptions, item.var_e91aba42, item.var_908f65ca);
        if (var_6073ab7b) {
            self replace_weapon(level.weaponnone, level.weaponbasemeleeheld);
        }
        self function_b00db06(6, item.networkid);
        inventoryitem = get_inventory_item(item.networkid);
        if (!isdefined(inventoryitem)) {
            return;
        }
        if (weapon !== currentweapon) {
            var_b917b36f = int(min(var_346dc077, weapon.clipsize));
            self function_fc9f8b05(weapon, var_b917b36f);
        }
        var_954e19c7 = get_weapon_count();
        if (var_a3a17c55) {
            self function_c9a111a(weapon);
        } else {
            self shoulddoinitialweaponraise(weapon, initialweaponraise);
        }
        self setweaponammoclip(weapon, int(inventoryitem.amount));
        if (is_true(weapon.isdualwield) && isdefined(weapon.dualwieldweapon) && weapon.dualwieldweapon != level.weaponnone) {
            if (isdefined(inventoryitem.var_bce3d77a)) {
                self setweaponammoclip(weapon.dualwieldweapon, int(inventoryitem.var_bce3d77a));
            } else {
                self setweaponammoclip(weapon.dualwieldweapon, int(inventoryitem.amount));
            }
        }
        if (switchweapon || var_954e19c7 == 1) {
            if (self can_switch_weapons()) {
                self switchtoweapon(weapon, 1);
                self.currentweapon = weapons::function_251ec78c(weapon, 0);
            }
        }
        var_4f8a16ec = getgametypesetting(#"hash_b76e50c1202aa23");
        if (!is_true(var_4f8a16ec)) {
            if (!isdefined(stockammo)) {
                self setweaponammostock(weapon, weapon.maxammo);
            } else {
                self setweaponammostock(weapon, stockammo);
            }
        }
        self function_db2abc4(item);
        return;
    }
    assertmsg("<unknown string>" + itementry.name + "<unknown string>");
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0x7a68a42a, Offset: 0xc0a0
// Size: 0x162
function function_ec087745(var_75e3ca7a = 0) {
    assert(isplayer(self));
    if (!isdefined(self) || !isplayer(self)) {
        return 32767;
    }
    weapon = get_current_weapon();
    if (!var_75e3ca7a && self isswitchingweapons() && isdefined(self.next_weapon) && self.next_weapon != level.weaponnone && self.next_weapon != level.weaponbasemeleeheld) {
    }
    networkid = function_a33744de(weapon);
    if (self isswitchingweapons() && networkid == 32767) {
        networkid = function_a33744de(get_current_weapon());
    }
    return networkid;
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0x69d9009f, Offset: 0xc210
// Size: 0x130
function function_c3fb7a6e() {
    assert(isplayer(self));
    var_53c16cb = self function_ec087745();
    foreach (weaponslot in namespace_a0d533d1::function_4905dddf()) {
        item = self.inventory.items[weaponslot];
        if (!isdefined(item) || item.networkid === 32767 || var_53c16cb === item.networkid) {
            continue;
        }
        return item.networkid;
    }
    return 32767;
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0x6dbdc986, Offset: 0xc348
// Size: 0x1a
function get_current_weapon() {
    return weapons::function_251ec78c(self.currentweapon, 0);
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x0
// Checksum 0xc1392198, Offset: 0xc370
// Size: 0xfe
function function_6f73f57d(rootweaponname, var_5c695210) {
    self endon(#"death");
    currentweapon = self get_current_weapon();
    if (!isdefined(var_5c695210)) {
        var_5c695210 = function_9f1cc9a9(currentweapon);
    }
    start_time = gettime();
    while (gettime() - start_time < 5000 && (var_5c695210 != function_9f1cc9a9(currentweapon) || rootweaponname !== currentweapon.rootweapon.name)) {
        waitframe(1);
        currentweapon = self get_current_weapon();
    }
    return gettime() - start_time >= 5000 ? undefined : currentweapon;
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0xfc300142, Offset: 0xc478
// Size: 0x72
function function_d768ea30() {
    assert(isplayer(self));
    networkid = self function_ec087745();
    if (networkid === 32767) {
        return;
    }
    return item_world_util::function_808be9a3(networkid);
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0x91e56269, Offset: 0xc4f8
// Size: 0x116
function function_bad4a3a5() {
    assert(isplayer(self));
    weaponcount = 0;
    weapons = self getweaponslistprimaries();
    foreach (weapon in weapons) {
        if (is_true(weapon.var_29d24e37)) {
            continue;
        }
        if (weapon != level.weaponnone && weapon != level.weaponbasemeleeheld) {
            weaponcount++;
        }
    }
    return weaponcount;
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0x3dbd598e, Offset: 0xc618
// Size: 0x9a
function function_777cc133() {
    assert(isplayer(self));
    if (namespace_a0d533d1::function_819781bf()) {
        return;
    }
    for (index = 0; index < self.inventory.var_c212de25; index++) {
        if (self.inventory.items[index].networkid == 32767) {
            return index;
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0x2002e542, Offset: 0xc6c0
// Size: 0x7c
function function_2e711614(slotid) {
    assert(isplayer(self));
    if (!isdefined(self)) {
        return;
    }
    if (!isdefined(self.inventory)) {
        return;
    }
    if (!isdefined(self.inventory.items)) {
        return;
    }
    return self.inventory.items[slotid];
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0x4ffd4262, Offset: 0xc748
// Size: 0x23e
function function_230ceec4(weapon) {
    assert(isplayer(self));
    assert(isweapon(weapon));
    if (!isdefined(self)) {
        return;
    }
    if (!isdefined(self.inventory)) {
        return;
    }
    if (!isdefined(self.inventory.items)) {
        return;
    }
    if (isdefined(weapon.dualwieldweapon) && is_true(weapon.var_bf0eb41)) {
        weapon = weapon.dualwieldweapon;
    }
    if (is_true(weapon.isaltmode)) {
        weapon = weapon.altweapon;
    }
    foreach (weaponslot in array(5, 6, 12, 7, 13, 8, 17 + 1, 17 + 1 + 8 + 1, 17 + 1 + 8 + 1 + 8 + 1, 14, 15, 16, 17)) {
        item = self.inventory.items[weaponslot];
        if (!isdefined(item)) {
            continue;
        }
        if (item.networkid === 32767) {
            continue;
        }
        if (namespace_a0d533d1::function_2b83d3ff(item) === weapon) {
            return item;
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0x1214c54, Offset: 0xc990
// Size: 0x96
function function_a33744de(weapon) {
    assert(isplayer(self));
    assert(isweapon(weapon));
    weaponitem = function_230ceec4(weapon);
    return isdefined(weaponitem) ? weaponitem.networkid : 32767;
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0xd992e85d, Offset: 0xca30
// Size: 0xb6
function function_b246c573(networkid) {
    assert(isplayer(self));
    assert(item_world_util::function_db35e94f(networkid));
    for (i = 0; i < self.inventory.items.size; i++) {
        if (self.inventory.items[i].networkid === networkid) {
            return i;
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0xb4c7153a, Offset: 0xcaf0
// Size: 0xde
function get_inventory_item(networkid) {
    assert(isint(networkid) && networkid != 32767);
    if (!isdefined(self)) {
        return;
    }
    if (!isdefined(self.inventory)) {
        return;
    }
    if (!isdefined(self.inventory.items)) {
        return;
    }
    for (i = 0; i < self.inventory.items.size; i++) {
        if (self.inventory.items[i].networkid === networkid) {
            return self.inventory.items[i];
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0xbe42171f, Offset: 0xcbd8
// Size: 0x162
function function_8babc9f9(itementry) {
    assert(isplayer(self));
    name = isdefined(itementry.parentname) ? itementry.parentname : itementry.name;
    if (!isdefined(self) || !isdefined(self.inventory) || !isdefined(self.inventory.items)) {
        return undefined;
    }
    for (index = 0; index < self.inventory.items.size && index < 17 + 1; index++) {
        inventoryitem = self.inventory.items[index];
        if (!isdefined(inventoryitem.itementry)) {
            continue;
        }
        if (name == (isdefined(inventoryitem.itementry.parentname) ? inventoryitem.itementry.parentname : inventoryitem.itementry.name)) {
            return inventoryitem;
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0x1d06a976, Offset: 0xcd48
// Size: 0x94
function function_c48cd17f(networkid) {
    assert(isplayer(self));
    assert(item_world_util::function_d9648161(networkid));
    item = get_inventory_item(networkid);
    if (isdefined(item)) {
        return item.id;
    }
    return 32767;
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x0
// Checksum 0xdbf0cc20, Offset: 0xcde8
// Size: 0x94
function function_189a93f8(weapon) {
    assert(isplayer(self));
    assert(isweapon(weapon));
    item = function_230ceec4(weapon);
    if (isdefined(item)) {
        return item.id;
    }
    return 32767;
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0x42b8fef5, Offset: 0xce88
// Size: 0x130
function get_weapon_count() {
    assert(isplayer(self));
    if (!isdefined(self.inventory)) {
        return 0;
    }
    weaponcount = 0;
    foreach (slotid in array(17 + 1, 17 + 1 + 8 + 1, 17 + 1 + 8 + 1 + 8 + 1)) {
        if (self.inventory.items[slotid].networkid != 32767) {
            weaponcount++;
        }
    }
    return weaponcount;
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0xf6df4d2b, Offset: 0xcfc0
// Size: 0x10a
function get_weapon_slot(item) {
    if (item.networkid === 32767) {
        return;
    }
    foreach (slotid in array(17 + 1, 17 + 1 + 8 + 1, 17 + 1 + 8 + 1 + 8 + 1)) {
        if (self.inventory.items[slotid].networkid == item.networkid) {
            return slotid;
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0xef5b001e, Offset: 0xd0d8
// Size: 0x356
function function_3f7ef88() {
    assert(isplayer(self));
    if (!isplayer(self) || !isalive(self)) {
        return;
    }
    item_world::function_1b11e73c();
    while (isdefined(self) && !isdefined(self.inventory)) {
        waitframe(1);
    }
    if (!isdefined(self)) {
        return;
    }
    pistol = function_4ba8fde(#"pistol_standard_t8_item");
    var_fa3df96 = self function_e66dcff5(pistol);
    if (!isdefined(pistol)) {
        return;
    }
    pistol.attachments = [];
    attachment = function_4ba8fde(#"fastmag_wz_item");
    var_e38a0464 = function_520b16d6();
    var_e38a0464.count = 1;
    var_e38a0464.id = attachment.id;
    var_e38a0464.networkid = var_e38a0464.id;
    var_e38a0464.itementry = attachment.itementry;
    namespace_a0d533d1::function_9e9c82a6(pistol, attachment);
    attachment = function_4ba8fde(#"reflex_wz_item");
    var_e38a0464 = function_520b16d6();
    var_e38a0464.count = 1;
    var_e38a0464.id = attachment.id;
    var_e38a0464.networkid = var_e38a0464.id;
    var_e38a0464.itementry = attachment.itementry;
    namespace_a0d533d1::function_9e9c82a6(pistol, attachment);
    pistol.amount = self getweaponammoclipsize(namespace_a0d533d1::function_2b83d3ff(pistol));
    self item_world::function_de2018e3(pistol, self, var_fa3df96);
    ammo = function_4ba8fde(#"ammo_small_caliber_item_t9");
    var_fa3df96 = self function_e66dcff5(ammo);
    self item_world::function_de2018e3(ammo, self, var_fa3df96);
    health = function_4ba8fde(#"health_item_small");
    health.count = 5;
    var_fa3df96 = self function_e66dcff5(health);
    self item_world::function_de2018e3(health, self, var_fa3df96);
    self.var_554ec2e2 = undefined;
}

// Namespace item_inventory/item_inventory
// Params 5, eflags: 0x2 linked
// Checksum 0x9e1be8f, Offset: 0xd438
// Size: 0x10b8
function give_inventory_item(item, itemcount = 1, var_aec6fa7f = 0, slotid = undefined, var_cea91b33 = 0) {
    if (!isplayer(self) || !isdefined(self.inventory)) {
        assert(0, "<unknown string>");
        return 0;
    }
    if (!isdefined(item)) {
        assert(0, "<unknown string>");
        return 0;
    }
    itementry = item.itementry;
    itemid = item.id;
    if (isdefined(item.itementry.actionregisterweapon)) {
        actionregisterweapon = getscriptbundle(item.itementry.actionregisterweapon);
        if (isdefined(actionregisterweapon)) {
            itementry = actionregisterweapon;
        }
        var_8c36ae16 = function_4ba8fde(item.itementry.actionregisterweapon);
        if (isdefined(var_8c36ae16)) {
            itemid = var_8c36ae16.id;
        }
    }
    maxstacksize = namespace_a0d533d1::function_cfa794ca(self.inventory.var_7658cbec, item.itementry);
    var_1393d318 = maxstacksize > 1;
    if (item.itementry.itemtype == #"resource" && item_world_util::function_41f06d9d(item.itementry)) {
        var_92d652f2 = self.inventory.items[slotid];
        var_b41045b2 = int(max(150 - self stats::get_stat_global(#"items_paint_cans_collected"), 0));
        maxstacksize = var_b41045b2 + (isdefined(var_92d652f2.count) ? var_92d652f2.count : 0);
    }
    if (isdefined(itementry.name) && var_1393d318) {
        for (i = 0; i < self.inventory.items.size; i++) {
            if (self.inventory.items[i].id != 32767) {
                if (self.inventory.items[i].itementry.name != itementry.name) {
                    continue;
                }
                var_35f34839 = maxstacksize - self.inventory.items[i].count;
                if (var_35f34839 <= 0) {
                    continue;
                }
                var_8c6165fc = int(min(itemcount, var_35f34839));
                self.inventory.items[i].count = self.inventory.items[i].count + var_8c6165fc;
                item.networkid = self.inventory.items[i].networkid;
                self function_b00db06(9, self.inventory.items[i].networkid, self.inventory.items[i].count);
                if (i == 5) {
                    self clientfield::set_player_uimodel("hudItems.healthItemstackCount", function_bba770de(self.inventory.items[i].itementry));
                } else if (i == 7) {
                    self clientfield::set_player_uimodel("hudItems.equipmentStackCount", function_bba770de(self.inventory.items[i].itementry));
                }
                inventoryweapon = namespace_a0d533d1::function_2b83d3ff(self.inventory.items[i]);
                if (isdefined(inventoryweapon)) {
                    self function_c6be9f7f(inventoryweapon, self.inventory.items[i].count);
                }
                itemcount -= var_8c6165fc;
                assert(itemcount >= 0);
                if (itemcount <= 0) {
                    self function_b00db06(4, itemid, 0);
                    self function_755a35c5();
                    self function_6c36ab6b();
                    self function_a4413333();
                    self function_1caf5c88();
                    return 0;
                }
            }
        }
    }
    if (isdefined(slotid)) {
        var_92d652f2 = undefined;
        if (slotid < self.inventory.items.size) {
            var_92d652f2 = self.inventory.items[slotid];
        }
        assert(isdefined(var_92d652f2));
        if (var_92d652f2.networkid == 32767) {
            var_8c6165fc = int(min(itemcount, maxstacksize));
            item.networkid = item_world_util::function_970b8d86(slotid);
            namespace_a0d533d1::function_6e9e7169(item);
            var_92d652f2.amount = var_aec6fa7f;
            var_92d652f2.count = var_8c6165fc;
            var_92d652f2.id = itemid;
            var_92d652f2.networkid = item.networkid;
            var_92d652f2.itementry = itementry;
            var_92d652f2.starttime = undefined;
            var_92d652f2.endtime = undefined;
            var_92d652f2.weaponoptions = undefined;
            var_92d652f2.var_e91aba42 = undefined;
            self function_b00db06(4, item.id, var_8c6165fc, slotid + 1);
            itemcount -= var_8c6165fc;
            assert(itemcount >= 0);
            if (itemcount <= 0) {
                if (isdefined(item.attachments)) {
                    foreach (attachmentitem in item.attachments) {
                        if (!isdefined(attachmentitem)) {
                            continue;
                        }
                        var_769a94ae = namespace_a0d533d1::function_837f4a57(attachmentitem.itementry);
                        if (!isdefined(var_769a94ae)) {
                            continue;
                        }
                        var_f9f8c0b5 = namespace_a0d533d1::function_dfaca25e(slotid, var_769a94ae);
                        give_inventory_item(attachmentitem, undefined, undefined, var_f9f8c0b5, 1);
                        attachmentitem = get_inventory_item(attachmentitem.networkid);
                        if (!isdefined(attachmentitem)) {
                            continue;
                        }
                        namespace_a0d533d1::function_9e9c82a6(var_92d652f2, attachmentitem, 0);
                    }
                    namespace_a0d533d1::function_6e9e7169(var_92d652f2);
                } else if (isdefined(itementry.attachments)) {
                    if (namespace_a0d533d1::function_4bd83c04(item)) {
                        foreach (attachment in itementry.attachments) {
                            if (!item_world_util::function_7363384a(attachment.var_6be1bec7)) {
                                continue;
                            }
                            attachmentitem = function_4ba8fde(attachment.var_6be1bec7);
                            if (!isdefined(attachmentitem)) {
                                continue;
                            }
                            var_769a94ae = namespace_a0d533d1::function_837f4a57(attachmentitem.itementry);
                            if (!isdefined(var_769a94ae)) {
                                continue;
                            }
                            var_f9f8c0b5 = namespace_a0d533d1::function_dfaca25e(slotid, var_769a94ae);
                            give_inventory_item(attachmentitem, undefined, undefined, var_f9f8c0b5, 1);
                            attachmentitem = get_inventory_item(attachmentitem.networkid);
                            if (!isdefined(attachmentitem)) {
                                continue;
                            }
                            namespace_a0d533d1::function_9e9c82a6(var_92d652f2, attachmentitem, 0);
                        }
                        namespace_a0d533d1::function_6e9e7169(var_92d652f2);
                        weapon = namespace_a0d533d1::function_2b83d3ff(var_92d652f2);
                        if (isdefined(weapon)) {
                            var_92d652f2.amount = self getweaponammoclipsize(namespace_a0d533d1::function_2b83d3ff(var_92d652f2));
                        }
                    }
                }
                var_92d652f2.weaponoptions = item.weaponoptions;
                var_92d652f2.var_e91aba42 = item.var_e91aba42;
                var_92d652f2.var_908f65ca = item.var_908f65ca;
                var_92d652f2.var_1181c08b = item.var_1181c08b;
                self function_755a35c5();
                self function_6c36ab6b();
                self function_a4413333();
                self function_1caf5c88();
                return 0;
            }
        }
        if ((slotid === 9 || slotid === 10 || slotid == 11) && var_92d652f2.networkid != 32767) {
            return itemcount;
        }
    }
    if (!namespace_a0d533d1::function_819781bf()) {
        for (i = 0; i < self.inventory.var_c212de25; i++) {
            if (self.inventory.items[i].networkid === 32767) {
                var_8c6165fc = int(min(itemcount, maxstacksize));
                item.networkid = item_world_util::function_970b8d86(i);
                self.inventory.items[i].amount = var_aec6fa7f;
                self.inventory.items[i].count = var_8c6165fc;
                self.inventory.items[i].id = itemid;
                self.inventory.items[i].networkid = item.networkid;
                self.inventory.items[i].itementry = itementry;
                self.inventory.items[i].starttime = undefined;
                self.inventory.items[i].endtime = undefined;
                self.inventory.items[i].var_1181c08b = item.var_1181c08b;
                namespace_a0d533d1::function_6e9e7169(self.inventory.items[i]);
                self function_b00db06(4, item.id, var_8c6165fc, i + 1);
                itemcount -= var_8c6165fc;
                assert(itemcount >= 0);
                if (itemcount <= 0) {
                    break;
                }
            }
        }
    } else if (sessionmodeiszombiesgame() && var_cea91b33) {
        var_319b917b = self.inventory.items[slotid];
        remove_inventory_item(var_319b917b.networkid);
        item_world::consume_item(var_319b917b);
        item.networkid = item_world_util::function_970b8d86(slotid);
        self.inventory.items[slotid].amount = var_aec6fa7f;
        self.inventory.items[slotid].count = var_8c6165fc;
        self.inventory.items[slotid].id = itemid;
        self.inventory.items[slotid].networkid = item.networkid;
        self.inventory.items[slotid].itementry = itementry;
        self.inventory.items[slotid].starttime = undefined;
        self.inventory.items[slotid].endtime = undefined;
        self.inventory.items[slotid].var_1181c08b = item.var_1181c08b;
        namespace_a0d533d1::function_6e9e7169(self.inventory.items[slotid]);
    }
    self function_755a35c5();
    self function_6c36ab6b();
    self function_a4413333();
    self function_1caf5c88();
    return itemcount;
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0x75a71ffe, Offset: 0xe4f8
// Size: 0x134
function function_461de298() {
    assert(isplayer(self));
    if (!(isdefined(getgametypesetting(#"wzlootlockers")) ? getgametypesetting(#"wzlootlockers") : 0)) {
        return;
    }
    if (!isplayer(self)) {
        return;
    }
    var_73869e24 = function_4ba8fde(#"resource_item_loot_locker_key");
    lootweapons = self namespace_a0d533d1::get_loot_weapons();
    var_51c5992 = min(lootweapons.size, 2);
    if (var_51c5992 > 0) {
        self give_inventory_item(var_73869e24, var_51c5992, 0, 10);
    }
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0x4bcf836a, Offset: 0xe638
// Size: 0x5c
function function_44f1ab43() {
    assert(isplayer(self));
    self function_461de298();
    /#
        self thread function_76eb9bd7();
    #/
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0x76a9e43f, Offset: 0xe6a0
// Size: 0xe6
function has_armor() {
    assert(isplayer(self));
    if (!isdefined(self)) {
        return 0;
    }
    if (!isdefined(self.inventory)) {
        return 0;
    }
    if (!isdefined(self.inventory.items)) {
        return 0;
    }
    if (!isdefined(self.inventory.items[6])) {
        return 0;
    }
    hasarmor = self.inventory.items[6].networkid != 32767 && self.inventory.items[6].itementry.itemtype == #"armor";
    return hasarmor;
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0x24f4e6ce, Offset: 0xe790
// Size: 0xd6
function has_backpack() {
    assert(isplayer(self));
    hasbackpack = isdefined(self.inventory) && isdefined(self.inventory.items) && isdefined(self.inventory.items[8]) && isdefined(self.inventory.items[8].itementry) && self.inventory.items[8].itementry.itemtype == #"backpack";
    return hasbackpack;
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0xa7d84ca0, Offset: 0xe870
// Size: 0x10e
function function_471897e2() {
    assert(isplayer(self));
    var_22939dc4 = isdefined(self.inventory) && isdefined(self.inventory.items) && isdefined(self.inventory.items[10]) && isdefined(self.inventory.items[10].itementry) && self.inventory.items[10].itementry.itemtype == #"resource" && self.inventory.items[10].itementry.name == #"resource_item_loot_locker_key";
    return var_22939dc4;
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0xc5bb8ad4, Offset: 0xe988
// Size: 0x102
function function_7fe4ce88(item_name) {
    assert(isplayer(self));
    if (!isdefined(self.inventory)) {
        return undefined;
    }
    foreach (item in self.inventory.items) {
        if (item.id == 32767) {
            continue;
        }
        var_b74300d3 = item_world_util::get_itemtype(item.itementry);
        if (item_name == var_b74300d3) {
            return item;
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0x5ad604dd, Offset: 0xea98
// Size: 0x72
function has_inventory_item(slotid) {
    assert(isplayer(self));
    return isdefined(self.inventory.items[slotid]) && self.inventory.items[slotid].networkid != 32767;
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0xbd7a32d6, Offset: 0xeb18
// Size: 0x14c
function init_inventory() {
    if (function_7d5553ac()) {
        return;
    }
    assert(isplayer(self));
    self.inventory = spawnstruct();
    self.inventory.items = [];
    for (i = 0; i < 17 + 1 + 8 + 1 + 8 + 1 + 8 + 1; i++) {
        self.inventory.items[i] = function_520b16d6();
    }
    self.inventory.ammo = [];
    self.inventory.consumed = [];
    self.inventory.var_c212de25 = 3;
    self.inventory.var_7658cbec = 0;
    self.inventory.var_a0290b96 = [];
    self function_85287396(0);
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0x5157b933, Offset: 0xec70
// Size: 0x1a
function function_fe402108() {
    return is_true(self.var_11921c74);
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x0
// Checksum 0x5ca1caad, Offset: 0xec98
// Size: 0xac
function function_e7af31c6(slotid) {
    assert(isplayer(self));
    assert(slotid >= 0 && slotid < 17 + 1 + 8 + 1 + 8 + 1 + 8 + 1);
    return self.inventory.items[slotid].networkid != 32767;
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0xda33bc73, Offset: 0xed50
// Size: 0x324
function function_f3195b3d(networkid) {
    assert(isplayer(self));
    assert(isint(networkid) && networkid != 32767);
    foreach (slot in array(5, 6, 12, 7, 13, 8, 17 + 1, 17 + 1 + 8 + 1, 17 + 1 + 8 + 1 + 8 + 1, 14, 15, 16, 17)) {
        if (self.inventory.items[slot].networkid === networkid) {
            return true;
        }
    }
    foreach (weaponid in array(17 + 1, 17 + 1 + 8 + 1, 17 + 1 + 8 + 1 + 8 + 1)) {
        foreach (attachmentoffset in array(1, 2, 3, 4, 5, 6, 7, 8)) {
            attachmentid = namespace_a0d533d1::function_dfaca25e(weaponid, attachmentoffset);
            if (self.inventory.items[attachmentid].networkid === networkid) {
                return true;
            }
        }
    }
    return false;
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0x41c007cc, Offset: 0xf080
// Size: 0xfc
function function_7b39c6f9(params) {
    if (!isdefined(params) || !isdefined(params.player)) {
        return;
    }
    if (!isdefined(params.player.inventory)) {
        return;
    }
    item = params.player.inventory.items[17];
    if (item.networkid == 32767) {
        return;
    }
    if (!isdefined(item.itementry.killstreak)) {
        return;
    }
    killstreakbundle = getscriptbundle(item.itementry.killstreak);
    if (killstreakbundle.var_d3413870 == params.killstreaktype) {
        use_inventory_item(item.networkid, 1);
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0xac3dd0b2, Offset: 0xf188
// Size: 0x1f2
function function_db2abc4(item) {
    assert(isplayer(self));
    assert(isdefined(item));
    if (isdefined(item) && isdefined(item.itementry)) {
        if (is_true(item.itementry.consumable)) {
            if (isdefined(item.itementry.equipsound)) {
                self playsoundtoplayer(item.itementry.equipsound, self);
                return;
            }
        }
        switch (item.itementry.itemtype) {
        case #"weapon":
            break;
        case #"ammo":
            break;
        case #"health":
            break;
        case #"equipment":
            break;
        case #"field_upgrade":
            break;
        case #"tactical":
            break;
        case #"armor":
            break;
        case #"backpack":
            break;
        case #"attachment":
            if (isdefined(item.itementry.equipsound)) {
                self playsoundtoplayer(item.itementry.equipsound, self);
            }
            break;
        case #"generic":
            break;
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 3, eflags: 0x2 linked
// Checksum 0x5f65d530, Offset: 0xf388
// Size: 0x284
function function_a24d6e36(networkid, notifyclient = 1, var_cda2ff12 = 1) {
    assert(isplayer(self));
    assert(isint(networkid) && networkid != 32767);
    self endon(#"death");
    itemid = function_c48cd17f(networkid);
    if (itemid == 32767) {
        return 0;
    }
    item = get_inventory_item(networkid);
    weapon = namespace_a0d533d1::function_2b83d3ff(item);
    if (isdefined(weapon)) {
        self.var_6d2ad74f = weapon;
        slot = self gadgetgetslot(weapon);
        if (slot >= 0 && slot < 3) {
            self function_19ed70ca(slot, 1);
            self gadgetpowerset(slot, 0);
        }
        while (isdefined(self) && (self function_c1cef1ec(weapon) || !self function_bf2312f1(weapon) || self isremotecontrolling())) {
            waitframe(1);
        }
    }
    if (item.count > 0 && isdefined(weapon)) {
        self function_19ed70ca(slot, 0);
        self gadgetpowerset(slot, weapon.gadget_powermax);
        return;
    }
    self remove_inventory_item(networkid, 0, notifyclient, var_cda2ff12);
}

// Namespace item_inventory/item_inventory
// Params 3, eflags: 0x6 linked
// Checksum 0x792cbe52, Offset: 0xf618
// Size: 0x1e4
function private function_eb70ad46(networkid, notifyclient = 1, var_cda2ff12 = 1) {
    item = get_inventory_item(networkid);
    weapon = namespace_a0d533d1::function_2b83d3ff(item);
    itementry = item.itementry;
    self.inventory.items[8] = function_520b16d6();
    self.inventory.var_c212de25 = 3;
    self.inventory.var_7658cbec = 0;
    if (notifyclient) {
        self function_b00db06(5, networkid);
    }
    function_9d805044(itementry.itemtype, itementry);
    if (var_cda2ff12) {
        for (index = self.inventory.var_c212de25; index < 5; index++) {
            inventoryitem = self.inventory.items[index];
            if (inventoryitem.networkid != 32767) {
                remove_inventory_item(inventoryitem.networkid);
            }
        }
    }
    if (isdefined(self.var_6d2ad74f) && self.var_6d2ad74f === weapon) {
        self.var_6d2ad74f = undefined;
    }
    debug_print("remove_inventory_item: Success!", weapon);
}

// Namespace item_inventory/item_inventory
// Params 5, eflags: 0x2 linked
// Checksum 0xae0cf97c, Offset: 0xf808
// Size: 0x51e
function remove_inventory_item(networkid, var_dfe6c7e5 = 0, notifyclient = 1, var_cda2ff12 = 1, var_1bdeec9 = 0) {
    assert(isplayer(self));
    assert(isint(networkid) && networkid != 32767);
    itemid = function_c48cd17f(networkid);
    if (itemid == 32767) {
        debug_print("remove_inventory_item: failed! No ItemId");
        return false;
    }
    item = get_inventory_item(networkid);
    weapon = namespace_a0d533d1::function_2b83d3ff(item);
    itementry = item.itementry;
    if (isdefined(self) && isdefined(weapon) && !var_1bdeec9 && (self function_c1cef1ec(weapon) || !self function_bf2312f1(weapon))) {
        debug_print("remove_inventory_item: failed! Weapon in Use");
        return false;
    }
    if (self.inventory.items[8].networkid === networkid) {
        function_eb70ad46(networkid, notifyclient, var_cda2ff12);
        return true;
    }
    for (i = 0; i < self.inventory.items.size; i++) {
        if (self.inventory.items[i].networkid === networkid) {
            unequipped = self function_d019bf1d(networkid, var_dfe6c7e5, notifyclient, var_cda2ff12, var_1bdeec9);
            self.inventory.items[i] = function_520b16d6();
            if (self function_8b1a219a()) {
                if (isdefined(array::find(array(17 + 1, 17 + 1 + 8 + 1, 17 + 1 + 8 + 1 + 8 + 1), i)) && get_weapon_count() == 0) {
                    self sortheldweapons();
                }
            }
            self function_755a35c5();
            self function_6c36ab6b();
            self function_a4413333();
            self function_1caf5c88();
            if (notifyclient) {
                self function_b00db06(5, networkid);
            }
            if (i == 5) {
                self clientfield::set_player_uimodel("hudItems.healthItemstackCount", 0);
            } else if (i == 7) {
                self clientfield::set_player_uimodel("hudItems.equipmentStackCount", 0);
            }
            if (unequipped) {
                function_9d805044(itementry.itemtype, itementry);
            }
            if (isdefined(self.var_6d2ad74f) && self.var_6d2ad74f === weapon) {
                self.var_6d2ad74f = undefined;
            }
            if (itementry.itemtype == #"cash") {
                self function_3d113bfb();
            }
            debug_print("remove_inventory_item: Success!", weapon);
            return true;
        }
        if (!isdefined(self.inventory)) {
            return false;
        }
    }
    debug_print("remove_inventory_item: Failed!", weapon);
    return false;
}

// Namespace item_inventory/item_inventory
// Params 8, eflags: 0x2 linked
// Checksum 0x4ae3468f, Offset: 0xfd30
// Size: 0x28e
function replace_weapon(old_weapon, new_weapon, primary_weapon = 0, var_e47b0bf = 1, var_6086c488 = 0, options = undefined, var_f879230e = undefined, var_cf5d5d60 = undefined) {
    assert(isdefined(old_weapon));
    assert(isdefined(new_weapon));
    if (isdefined(old_weapon) && old_weapon != level.weaponnone) {
        var_6ac5075d = 1;
        if (old_weapon == level.nullprimaryoffhand || old_weapon == level.nullsecondaryoffhand || old_weapon == level.var_3488e988) {
            if (new_weapon.gadget_type == 0 && (new_weapon.inventorytype == "offhand" || new_weapon.inventorytype == "offhand_primary" || new_weapon.inventorytype == "ability")) {
                var_6ac5075d = 0;
            }
        }
        if (var_6ac5075d) {
            self replaceweapon(old_weapon, 0, new_weapon, options, var_f879230e, var_cf5d5d60);
            self takeweapon(old_weapon);
        } else {
            self giveweapon(new_weapon, options, var_f879230e, var_cf5d5d60);
        }
    } else {
        self giveweapon(new_weapon, options, var_f879230e, var_cf5d5d60);
    }
    if (var_6086c488) {
        self function_c9a111a(new_weapon);
    } else {
        self shoulddoinitialweaponraise(new_weapon, var_e47b0bf);
    }
    if (primary_weapon && self isinvehicle()) {
        self.currentweapon = new_weapon;
    }
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x0
// Checksum 0xba022ab4, Offset: 0xffc8
// Size: 0x47e
function function_61b8a91f(allow, var_cae8fb37 = 0) {
    if (!isplayer(self)) {
        assert(0);
        return;
    }
    if (!allow) {
        inventoryitem = self.inventory.items[17 + 1 + 8 + 1 + 8 + 1];
        if (inventoryitem.networkid != 32767) {
            if (var_cae8fb37) {
                var_6a59c435 = structcopy(self.inventory.items[17 + 1 + 8 + 1 + 8 + 1]);
                var_6a59c435.hidetime = 1;
                var_6a59c435.var_864ea466 = 1;
                self.var_3e8da229 = var_6a59c435;
            }
            remove_inventory_item(inventoryitem.networkid, undefined, undefined, undefined, 1);
        }
        self clientfield::set_to_player("inventoryThirdWeapon", allow);
        return;
    }
    self clientfield::set_to_player("inventoryThirdWeapon", allow);
    if (var_cae8fb37) {
        if (isdefined(self.var_3e8da229)) {
            var_32036c21 = is_true(self.var_3e8da229.var_b3546c09);
            var_7c526605 = is_true(self.var_3e8da229.var_a0cc02cf);
            var_11deda7f = is_true(self.var_3e8da229.var_96c71057);
            var_c1abe9d0 = is_true(self.var_3e8da229.var_d688ad29);
            var_5c5229e2 = is_true(self.var_3e8da229.var_387e74f4);
            var_14e87440 = is_true(self.var_3e8da229.var_569199b9);
            if (isdefined(self.var_3e8da229.paplv)) {
                paplv = self.var_3e8da229.paplv;
            }
            self.var_3e8da229.hidetime = 0;
            self.var_3e8da229.var_864ea466 = 0;
            var_8c4a2753 = 1;
            if (isdefined(level.var_767a6421)) {
                var_8c4a2753 = [[ level.var_767a6421 ]](self.var_3e8da229);
            }
            if (var_8c4a2753) {
                if (isdefined(level.var_6ab033f1)) {
                    self [[ level.var_6ab033f1 ]](self.var_3e8da229, 0, 0, 1);
                } else {
                    self item_world::function_de2018e3(self.var_3e8da229, self, 17 + 1 + 8 + 1 + 8 + 1);
                }
            } else {
                dropped_item = item_drop::drop_item(0, self.var_3e8da229.var_627c698b, 1, self.var_3e8da229.var_627c698b.clipsize, self.var_3e8da229.id, self.origin, self.angles, 1);
                if (isdefined(paplv)) {
                    dropped_item.paplv = self.var_3e8da229.paplv;
                }
            }
            if (isdefined(level.var_1b68ae98)) {
                self thread [[ level.var_1b68ae98 ]](self.var_3e8da229.id, self.var_3e8da229.networkid, var_32036c21, var_7c526605, var_11deda7f, var_c1abe9d0, var_5c5229e2, var_14e87440);
            }
            self.var_3e8da229 = undefined;
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0xd419087d, Offset: 0x10450
// Size: 0x22
function function_85287396(enabled) {
    if (isdefined(self)) {
        self.var_11921c74 = enabled;
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0xe62a4264, Offset: 0x10480
// Size: 0x37e
function function_fba4a353(item) {
    if (!isplayer(self) || !isdefined(self.inventory)) {
        assert(0, "<unknown string>");
        return;
    }
    assert(isdefined(item));
    if (namespace_a0d533d1::function_819781bf()) {
        return 1;
    }
    if (1 && isdefined(item) && isdefined(item.itementry)) {
        slotid = undefined;
        switch (item.itementry.itemtype) {
        case #"armor":
            slotid = 6;
            break;
        case #"backpack":
            slotid = 8;
            break;
        case #"equipment":
            slotid = 7;
            break;
        case #"field_upgrade":
            slotid = 12;
            break;
        case #"tactical":
            slotid = 13;
            break;
        case #"health":
            slotid = 5;
            break;
        case #"weapon":
            slotid = namespace_a0d533d1::function_4905dddf();
            break;
        case #"perk_tier_1":
            slotid = 14;
            break;
        case #"perk_tier_2":
            slotid = 15;
            break;
        case #"perk_tier_3":
            slotid = 16;
            break;
        case #"scorestreak":
            slotid = 17;
            break;
        }
        if (isarray(slotid)) {
            emptyslot = 0;
            foreach (id in slotid) {
                if (self.inventory.items[id].networkid === 32767 || self.inventory.items[id].networkid === item.networkid) {
                    emptyslot = 1;
                    break;
                }
            }
            if (!emptyslot) {
                return 0;
            }
        } else if (self.inventory.items[slotid].networkid !== 32767 && self.inventory.items[slotid].networkid !== item.networkid) {
            return 0;
        }
        return 1;
    }
    return 0;
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0xbb026fda, Offset: 0x10808
// Size: 0x1b4
function function_ecd1c667(itemid, count) {
    assert(isplayer(self));
    assert(item_world_util::function_2c7fc531(itemid));
    self endon(#"death");
    item = function_b1702735(itemid);
    assert(item.itementry.itemtype == #"ammo");
    weapon = item.itementry.weapon;
    maxammo = self getweaponammostock(weapon);
    count = int(min(isdefined(count) ? count : maxammo, maxammo));
    if (count <= 0) {
        return;
    }
    self function_fc9f8b05(weapon, count * -1);
    self function_d7944517(item.id, item.itementry.weapon, 1, count);
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0xd964735, Offset: 0x109c8
// Size: 0x20c
function function_cfe0e919(networkid, count) {
    assert(isplayer(self));
    assert(isint(count) && count > 0);
    self endon(#"death");
    item = get_inventory_item(networkid);
    if (!isdefined(item) || !isdefined(item.itementry)) {
        return;
    }
    var_aa3af497 = self.inventory.items[7].networkid == networkid || self.inventory.items[12].networkid == networkid;
    if (var_aa3af497 && isdefined(self.var_8181d952) && self.var_8181d952 == item.itementry.weapon) {
        if (item.count == count) {
            count--;
        }
    }
    count = int(min(item.count, count));
    if (count <= 0) {
        return;
    }
    weapon = item.itementry.weapon;
    self function_d7944517(item.id, item.itementry.weapon, count, 0);
    self use_inventory_item(networkid, count);
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0x8855780d, Offset: 0x10be0
// Size: 0x4e
function function_23335063(networkid, var_cda2ff12 = 1) {
    if (!self remove_inventory_item(networkid, undefined, undefined, var_cda2ff12)) {
        return false;
    }
    return true;
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0x3e8d1b42, Offset: 0x10c38
// Size: 0x134
function function_c4468806(player, item) {
    if (game.state == #"pregame" || !isdefined(item)) {
        return;
    }
    data = {#game_time:function_f8d53445(), #player_xuid:int(player getxuid(1)), #item:hash(item.itementry.name)};
    println("<unknown string>" + item.itementry.name);
    function_92d1707f(#"hash_50be59ef12074ce", data);
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0xf37e6bef, Offset: 0x10d78
// Size: 0x244
function function_394d85cd() {
    assert(isplayer(self));
    var_13339abf = isdefined(level.var_13339abf) ? level.var_13339abf : array(#"ammo_small_caliber_item_t9", #"ammo_large_caliber_item_t9", #"ammo_ar_item_t9", #"ammo_sniper_item_t9", #"ammo_shotgun_item_t9", #"ammo_special_item_t9");
    var_c2043143 = array(2, 4, 8, 16, 32, 64);
    for (index = 0; index < var_13339abf.size; index++) {
        if (self.inventory.var_7658cbec & var_c2043143[index]) {
            continue;
        }
        ammoitem = var_13339abf[index];
        var_f415ce36 = getscriptbundle(ammoitem);
        weapon = var_f415ce36.weapon;
        assert(isdefined(weapon));
        if (!isdefined(weapon)) {
            continue;
        }
        maxammo = namespace_a0d533d1::function_2879cbe0(self.inventory.var_7658cbec, weapon);
        var_346dc077 = self getweaponammostock(weapon);
        if (var_346dc077 > maxammo) {
            var_f580278d = function_4ba8fde(ammoitem).id;
            function_ecd1c667(var_f580278d, var_346dc077 - maxammo);
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0x35a373c, Offset: 0x10fc8
// Size: 0x73c
function function_a2c7ce35() {
    assert(isplayer(self));
    var_3e9ef0a1 = array(array(#"frag_grenade_wz_item", #"frag_t9_item", #"frag_t9_item_sr", #"cluster_semtex_wz_item", #"semtex_t9_item", #"semtex_t9_item_sr", #"acid_bomb_wz_item", #"molotov_wz_item", #"molotov_t9_item", #"molotov_t9_item_sr", #"wraithfire_wz_item", #"hatchet_wz_item", #"hatchet_t9_item", #"hatchet_t9_item_sr", #"tomahawk_t8_wz_item", #"seeker_mine_wz_item", #"dart_wz_item", #"hawk_wz_item", #"ultimate_turret_wz_item", #"hash_49bb95f2912e68ad", #"hash_3c9430c4ac7d082e", #"hash_6a5294b915f32d32", #"hash_6cd8041bb6cd21b1", #"hash_6a07ccefe7f84985", #"hash_17f8849a56eba20f", #"satchel_charge_t9_item", #"satchel_charge_t9_item_sr", #"hash_2c9b75b17410f2de"), array(#"swat_grenade_wz_item", #"hash_676aa70930960427", #"concussion_wz_item", #"concussion_t9_item", #"smoke_grenade_wz_item", #"smoke_grenade_wz_item_spring_holiday", #"smoke_t9_item", #"emp_grenade_wz_item", #"spectre_grenade_wz_item", #"hash_5f67f7b32b01ae53", #"hash_725e305ff465e73d", #"concussion_t9_item_sr", #"cymbal_monkey_t9_item_sr", #"hash_76ebb51bb24696a1", #"hash_51f70aff8a2ad330", #"stimshot_t9_item_sr", #"snowball_item", #"snowball_item_sr", #"hash_2b5201a6ed00b120", #"grapple_t9_item_sr", #"hash_7c7d437280e992b"), array(#"grapple_wz_item", #"hash_12fde8b0da04d262", #"barricade_wz_item", #"spiked_barrier_wz_item", #"trophy_system_wz_item", #"concertina_wire_wz_item", #"sensor_dart_wz_item", #"supply_pod_wz_item", #"trip_wire_wz_item", #"cymbal_monkey_wz_item", #"homunculus_wz_item", #"vision_pulse_wz_item", #"flare_gun_wz_item", #"wz_snowball", #"wz_waterballoon", #"hash_1ae9ade20084359f"));
    var_c77511ea = array(2048, 4096, 8192);
    var_710be50e = array(7);
    for (itemindex = 0; itemindex < 5; itemindex++) {
        var_710be50e[var_710be50e.size] = itemindex;
    }
    for (equipmenttype = 0; equipmenttype < var_3e9ef0a1.size; equipmenttype++) {
        if (self.inventory.var_7658cbec & var_c77511ea[equipmenttype]) {
            continue;
        }
        equipmentitems = var_3e9ef0a1[equipmenttype];
        for (index = 0; index < equipmentitems.size; index++) {
            equipmentitem = equipmentitems[index];
            itemspawnpoint = function_4ba8fde(equipmentitem);
            if (!isdefined(itemspawnpoint)) {
                continue;
            }
            maxstack = namespace_a0d533d1::function_cfa794ca(self.inventory.var_7658cbec, itemspawnpoint.itementry);
            for (itemindex = 0; itemindex < var_710be50e.size; itemindex++) {
                item = self.inventory.items[var_710be50e[itemindex]];
                if (item.networkid == 32767) {
                    continue;
                }
                if (item.itementry.name != equipmentitem) {
                    continue;
                }
                if (item.count <= maxstack) {
                    continue;
                }
                var_9311e423 = item.count - maxstack;
                self use_inventory_item(item.networkid, var_9311e423);
                newitem = spawnstruct();
                newitem.id = item.id;
                newitem.itementry = item.itementry;
                remainingitems = give_inventory_item(newitem, var_9311e423);
                if (remainingitems > 0) {
                    self function_d7944517(newitem.id, newitem.itementry.weapon, remainingitems, 0);
                }
            }
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0xa012a26c, Offset: 0x11710
// Size: 0x32c
function function_2bb3a825() {
    assert(isplayer(self));
    var_9b624be0 = array(#"health_item_small", #"health_item_medium", #"health_item_large", #"health_item_squad", #"hash_20699a922abaf2e1");
    var_448bc079 = array(128, 256, 512, 1024, 256);
    var_5675add1 = array(5);
    for (itemindex = 0; itemindex < 5; itemindex++) {
        var_5675add1[var_5675add1.size] = itemindex;
    }
    for (index = var_9b624be0.size - 1; index >= 0; index--) {
        if (self.inventory.var_7658cbec & var_448bc079[index]) {
            continue;
        }
        healthitem = var_9b624be0[index];
        itemspawnpoint = function_4ba8fde(healthitem);
        if (!isdefined(itemspawnpoint)) {
            continue;
        }
        maxstack = namespace_a0d533d1::function_cfa794ca(self.inventory.var_7658cbec, itemspawnpoint.itementry);
        for (itemindex = 0; itemindex < var_5675add1.size; itemindex++) {
            item = self.inventory.items[var_5675add1[itemindex]];
            if (item.networkid == 32767) {
                continue;
            }
            if (item.itementry.name != healthitem) {
                continue;
            }
            if (item.count <= maxstack) {
                continue;
            }
            var_9311e423 = item.count - maxstack;
            self use_inventory_item(item.networkid, var_9311e423);
            newitem = spawnstruct();
            newitem.id = item.id;
            newitem.itementry = item.itementry;
            remainingitems = give_inventory_item(newitem, var_9311e423);
            if (remainingitems > 0) {
                self function_d7944517(newitem.id, newitem.itementry.weapon, remainingitems, 0);
            }
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0x1c0f1bc4, Offset: 0x11a48
// Size: 0x144
function function_2521e90f() {
    for (index = self.inventory.var_c212de25; index < 5; index++) {
        item = self.inventory.items[index];
        if (item.networkid == 32767) {
            continue;
        }
        newitem = spawnstruct();
        newitem.id = item.id;
        newitem.itementry = item.itementry;
        newitem.count = item.count;
        remove_inventory_item(item.networkid, 0, 1, 1);
        remainingitems = give_inventory_item(newitem, newitem.count);
        if (remainingitems > 0) {
            self function_d7944517(newitem.id, newitem.itementry.weapon, remainingitems, 0);
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0xc3e69364, Offset: 0x11b98
// Size: 0x44
function function_ec238da8() {
    function_394d85cd();
    function_a2c7ce35();
    function_2bb3a825();
    function_2521e90f();
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0x1c9ace85, Offset: 0x11be8
// Size: 0x3cc
function reset_inventory(givecustomloadout = 1) {
    if (function_7d5553ac()) {
        return;
    }
    self endon(#"death", #"disconnect");
    assert(isplayer(self));
    self.var_7bba6210 = 1;
    self disableoffhandspecial();
    self disableoffhandweapons();
    while (self function_2cceca7b()) {
        waitframe(1);
    }
    if (!isdefined(self) || !isdefined(self.inventory)) {
        return;
    }
    self function_d62822d5();
    foreach (inventoryitem in self.inventory.items) {
        if (inventoryitem.networkid != 32767) {
            remove_inventory_item(inventoryitem.networkid, 0, 0);
        }
    }
    foreach (ammoweapon, itemid in self.inventory.ammo) {
        weapon = getweapon(ammoweapon);
        self setweaponammostock(weapon, 0);
    }
    if (is_true(givecustomloadout) && isdefined(level.givecustomloadout)) {
        self [[ level.givecustomloadout ]](1);
    }
    self init_inventory();
    self function_6c36ab6b();
    self function_755a35c5();
    self function_1caf5c88();
    self function_b00db06(10);
    self clientfield::set_player_uimodel("hudItems.armorType", 0);
    self clientfield::set_player_uimodel("hudItems.healthItemstackCount", 0);
    self clientfield::set_player_uimodel("hudItems.equipmentStackCount", 0);
    self.var_7bba6210 = undefined;
    self enableoffhandspecial();
    self enableoffhandweapons();
    self callback::callback(#"inventory_reset");
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0xc8644a41, Offset: 0x11fc0
// Size: 0x1ec
function function_26c87da8(var_c9293a27, var_8f194e5a) {
    assert(isplayer(self));
    assert(isdefined(var_c9293a27) && isdefined(var_8f194e5a));
    if (!isdefined(var_c9293a27) || !isdefined(var_8f194e5a)) {
        return;
    }
    if (var_c9293a27 == var_8f194e5a) {
        return;
    }
    fromitem = self.inventory.items[var_c9293a27];
    toitem = self.inventory.items[var_8f194e5a];
    self.inventory.items[var_c9293a27] = toitem;
    self.inventory.items[var_8f194e5a] = fromitem;
    if (isdefined(fromitem.itementry)) {
        fromitem.networkid = item_world_util::function_970b8d86(var_8f194e5a);
    }
    if (isdefined(toitem.itementry)) {
        toitem.networkid = item_world_util::function_970b8d86(var_c9293a27);
    }
    if (var_8f194e5a == 5) {
        self clientfield::set_player_uimodel("hudItems.healthItemstackCount", function_bba770de(toitem.itementry));
    } else if (var_8f194e5a == 7) {
        self clientfield::set_player_uimodel("hudItems.equipmentStackCount", function_bba770de(toitem.itementry));
    }
    self function_b00db06(12, var_c9293a27, var_8f194e5a);
}

// Namespace item_inventory/item_inventory
// Params 3, eflags: 0x2 linked
// Checksum 0xc0c89bcc, Offset: 0x121b8
// Size: 0x3c8
function function_b3342af3(item, notifyclient = 1, ignoreweapon = undefined) {
    assert(isplayer(self));
    assert(isstruct(item));
    foreach (slotid in array(17 + 1, 17 + 1 + 8 + 1, 17 + 1 + 8 + 1 + 8 + 1)) {
        var_f0dc4e93 = self.inventory.items[slotid].networkid;
        if (var_f0dc4e93 == 32767) {
            continue;
        }
        if (isdefined(ignoreweapon) && ignoreweapon.networkid === var_f0dc4e93) {
            continue;
        }
        weaponitem = get_inventory_item(var_f0dc4e93);
        if (!isdefined(weaponitem) || !isdefined(weaponitem.itementry) || weaponitem.itementry.itemtype != #"weapon") {
            assert(0);
            continue;
        }
        currentammo = self getweaponammoclip(namespace_a0d533d1::function_2b83d3ff(weaponitem));
        if (namespace_a0d533d1::function_31a0b1ef(weaponitem, item, 0)) {
            itemtype = item.itementry.itemtype;
            networkid = item.networkid;
            if (notifyclient) {
                self function_b00db06(7, networkid);
            }
            weapon = namespace_a0d533d1::function_2b83d3ff(weaponitem);
            iscurrentweapon = weapon == get_current_weapon();
            function_d019bf1d(var_f0dc4e93, undefined, notifyclient, 0);
            namespace_a0d533d1::function_6e9e7169(weaponitem);
            equip_weapon(weaponitem, iscurrentweapon, undefined, 1, 0);
            newammo = self getweaponammoclipsize(namespace_a0d533d1::function_2b83d3ff(weaponitem));
            var_b917b36f = currentammo - newammo;
            if (var_b917b36f > 0) {
                self function_fc9f8b05(weapon, var_b917b36f);
            }
            return true;
        }
    }
    return false;
}

// Namespace item_inventory/item_inventory
// Params 4, eflags: 0x2 linked
// Checksum 0x21b8ac16, Offset: 0x12588
// Size: 0x1d8
function function_41a57271(item, slot, notifyclient = 1, ignoreattachment = undefined) {
    assert(isplayer(self));
    assert(isstruct(item));
    if (!isdefined(item.attachments)) {
        return 0;
    }
    attachments = arraycopy(item.attachments);
    foreach (attachment in attachments) {
        if (!isdefined(attachment) || !isdefined(attachment.itementry)) {
            continue;
        }
        if (isdefined(ignoreattachment) && ignoreattachment.networkid == attachment.networkid) {
            continue;
        }
        if (is_true(attachment.itementry.(slot))) {
            function_b3342af3(get_inventory_item(attachment.networkid), notifyclient);
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 5, eflags: 0x2 linked
// Checksum 0x2ab41684, Offset: 0x12768
// Size: 0x444
function function_d019bf1d(networkid, var_dfe6c7e5 = 0, notifyclient = 1, var_8eb4edca = 1, var_1bdeec9 = 0) {
    assert(isplayer(self));
    assert(isint(networkid) && networkid != 32767);
    if (!function_f3195b3d(networkid)) {
        return 0;
    }
    item = get_inventory_item(networkid);
    if (!isdefined(item)) {
        return 0;
    }
    itementry = item.itementry;
    itemtype = itementry.itemtype;
    if (itemtype == #"weapon") {
        return function_3f5b2e2e(item, notifyclient, var_8eb4edca, var_1bdeec9);
    }
    if (itemtype == #"attachment") {
        return function_b3342af3(item, notifyclient);
    } else {
        if (itemtype == #"armor") {
            self function_bef83dc6();
            self armor::set_armor(0, 0, 0, 1, 0);
            self clientfield::set_player_uimodel("hudItems.armorType", 0);
        } else if (namespace_a0d533d1::function_1507e6f0(itementry)) {
            self thread function_ee9ce1c4(itementry, var_dfe6c7e5);
        } else if (itemtype == #"health") {
            self thread function_8214f1b6(itementry, var_dfe6c7e5);
        } else if (itemtype == #"perk_tier_1" || itemtype == #"perk_tier_2" || itemtype == #"perk_tier_3") {
            if (itementry.name == #"hash_6ac2848a2f6492ac") {
                remove_inventory_item(item_world_util::function_970b8d86(8), undefined, undefined, 0);
                function_d86d7ac7();
                function_ec238da8();
            }
        } else if (itemtype == #"scorestreak") {
            slotid = function_b246c573(item.networkid);
            killstreakbundle = getscriptbundle(item.itementry.killstreak);
            if (isdefined(killstreakbundle)) {
                self thread killstreaks::take(killstreakbundle.var_d3413870);
                self.pers[#"killstreaks"] = [];
                if (isdefined(killstreakbundle.ksweapon)) {
                    self takeweapon(killstreakbundle.ksweapon);
                }
            }
        }
        if (notifyclient) {
            self function_b00db06(7, networkid);
        }
        return 1;
    }
    return 0;
}

// Namespace item_inventory/item_inventory
// Params 4, eflags: 0x2 linked
// Checksum 0x235601ba, Offset: 0x12bb8
// Size: 0x598
function function_3f5b2e2e(item, notifyclient = 1, var_8eb4edca = 1, var_1bdeec9 = 0) {
    assert(isplayer(self));
    assert(isstruct(item));
    itemtype = item.itementry.itemtype;
    networkid = item.networkid;
    function_60706bdb(networkid);
    if (isdefined(item.attachments) && var_8eb4edca) {
        attachmentitems = [];
        foreach (attachment in item.attachments) {
            if (!isdefined(attachment)) {
                continue;
            }
            attachmentitem = get_inventory_item(attachment.networkid);
            attachmentitems[attachmentitems.size] = attachmentitem;
        }
        foreach (attachmentitem in attachmentitems) {
            function_b3342af3(attachmentitem, 1);
        }
    }
    weapon = namespace_a0d533d1::function_2b83d3ff(item);
    item.weaponoptions = self function_fc04b237(weapon, item.weaponoptions);
    if (get_weapon_count() > 1) {
        if (var_1bdeec9) {
            self replace_weapon(weapon, level.weaponnone, 1);
        } else {
            self replace_weapon(weapon, level.weaponbasemeleeheld, 1);
        }
        foreach (slotid in array(17 + 1, 17 + 1 + 8 + 1, 17 + 1 + 8 + 1 + 8 + 1)) {
            if (self.inventory.items[slotid].networkid != 32767 && self.inventory.items[slotid].networkid != item.networkid) {
                altweapon = namespace_a0d533d1::function_2b83d3ff(self.inventory.items[slotid]);
                if (isdefined(altweapon) && isweapon(altweapon)) {
                    currentweapon = self getcurrentweapon();
                    if (altweapon != currentweapon) {
                        self switchtoweapon(altweapon, 1);
                    }
                    self.currentweapon = altweapon;
                }
                break;
            }
        }
    } else {
        self replace_weapon(weapon, level.weaponbasemeleeheld, 1);
        if (weapon == get_current_weapon()) {
            currentweapon = self getcurrentweapon();
            if (level.weaponbasemeleeheld != currentweapon) {
                self switchtoweapon(level.weaponbasemeleeheld, 1);
            }
            self.currentweapon = level.weaponbasemeleeheld;
        }
    }
    self clearstowedweapon();
    if (notifyclient) {
        self function_b00db06(7, networkid);
    }
    return true;
}

// Namespace item_inventory/item_inventory
// Params 3, eflags: 0x2 linked
// Checksum 0x2527c629, Offset: 0x13158
// Size: 0x2d0
function use_inventory_item(networkid, usecount, *var_dfe6c7e5 = 1) {
    self endon(#"death");
    assert(isplayer(self));
    assert(isint(usecount) && usecount != 32767);
    for (i = 0; i < self.inventory.items.size; i++) {
        if (self.inventory.items[i].networkid === usecount) {
            if (is_true(self.inventory.items[i].itementry.unlimited)) {
                break;
            }
            self.inventory.items[i].count = self.inventory.items[i].count - var_dfe6c7e5;
            if (self.inventory.items[i].count < 0) {
                self.inventory.items[i].count = 0;
                break;
            }
            var_641929a7 = {#item:self.inventory.items[i]};
            self callback::callback(#"on_item_use", var_641929a7);
            self function_b00db06(9, usecount, self.inventory.items[i].count);
            function_755a35c5();
            function_a4413333();
            function_c4468806(self, self.inventory.items[i]);
            if (self.inventory.items[i].count <= 0) {
                self thread function_a24d6e36(usecount, 1);
            }
            break;
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0x9a6b76ec, Offset: 0x13430
// Size: 0x364
function function_956a8ecd() {
    assert(isentity(self));
    if (!isentity(self)) {
        return;
    }
    self waittill(#"hash_363004a4e0ccc1f", #"hawk_settled", #"death", #"stationary");
    var_d783088e = [];
    foreach (sensordart in level.sensor_darts) {
        if (!isdefined(sensordart)) {
            continue;
        }
        parentent = sensordart getlinkedent();
        if (isdefined(parentent) && parentent == self) {
            var_d783088e[var_d783088e.size] = sensordart;
        }
    }
    if (isdefined(level.var_9911d36f)) {
        if (!isdefined(self) || self.health <= 0) {
            foreach (sensordart in var_d783088e) {
                sensordart thread [[ level.var_9911d36f ]]();
            }
            return;
        }
    }
    angles = self.angles;
    origin = self.origin;
    dropitem = item_drop::drop_item(0, undefined, 1, 0, self.id, origin, angles);
    if (isdefined(dropitem) && item_world_util::function_74e1e547(origin)) {
        dropitem.var_d783088e = var_d783088e;
    } else if (isdefined(level.var_9911d36f)) {
        foreach (sensordart in var_d783088e) {
            sensordart thread [[ level.var_9911d36f ]]();
        }
    }
    util::wait_network_frame(1);
    if (isdefined(self)) {
        self delete();
        arrayremovevalue(level.item_vehicles, undefined, 0);
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0x72f966c0, Offset: 0x137a0
// Size: 0x34
function private function_d8ceeeec(*notifyhash) {
    self val::reset(#"item_killstreak", "freezecontrols_allowlook");
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0xe8f132b5, Offset: 0x137e0
// Size: 0x85c
function use_killstreak(networkid, item) {
    assert(isplayer(self));
    assert(isdefined(item));
    self endoncallback(&function_d8ceeeec, #"death");
    if (self isinvehicle()) {
        return;
    }
    if (self function_2cceca7b()) {
        return;
    }
    if (self inlaststand()) {
        return;
    }
    if (self isonladder() || self function_b4813488() || self isziplining()) {
        return;
    }
    vehicletype = item.itementry.vehicle;
    if (item.itementry.weapon.deployable) {
        traceresults = self function_242060b9(item.itementry.weapon);
        if (traceresults.isvalid) {
            if (isdefined(level.var_1f020f16) && isdefined(vehicletype) && isdefined(level.var_1f020f16[vehicletype])) {
                traceresults.isvalid = self [[ level.var_1f020f16[vehicletype] ]](item.itementry.vehicle, item.itementry.weapon, traceresults);
            }
        }
    } else if (isdefined(level.var_4cf92425[vehicletype])) {
        traceresults = self [[ level.var_4cf92425[vehicletype] ]](item.itementry.vehicle);
    } else {
        eyeangle = self getplayerangles();
        forward = anglestoforward(eyeangle);
        eyepos = self getplayercamerapos();
        endpos = eyepos + forward * 50;
        var_f45df727 = eyepos + forward * 100;
        traceresults = {};
        traceresults.trace = bullettrace(eyepos, var_f45df727, 1, self, 1, 1);
        traceresults.isvalid = traceresults.trace[#"fraction"] >= 1;
        traceresults.waterdepth = 0;
        traceresults.origin = endpos;
        traceresults.angles = eyeangle;
    }
    if (traceresults.isvalid) {
        remoteweapon = getweapon(#"killstreak_remote");
        if (self hasweapon(remoteweapon)) {
            return;
        }
        if (self isswitchingweapons()) {
            self waittilltimeout(2, #"weapon_change");
        }
        self val::set(#"item_killstreak", "freezecontrols_allowlook", 1);
        self giveweapon(remoteweapon);
        self switchtoweapon(remoteweapon, 1);
        self waittilltimeout(2, #"weapon_change");
        if (self getcurrentweapon() != remoteweapon) {
            self takeweapon(remoteweapon);
            self val::reset(#"item_killstreak", "freezecontrols_allowlook");
            return;
        }
        remove_inventory_item(networkid);
        self closeingamemenu();
        relativeorigin = undefined;
        var_2e2dbfa3 = undefined;
        if (isdefined(traceresults.hitent)) {
            relativeorigin = traceresults.origin - traceresults.hitent.origin;
            var_2e2dbfa3 = traceresults.hitent.angles;
        }
        spawnorigin = traceresults.origin;
        if (isdefined(traceresults.hitent) && isdefined(relativeorigin)) {
            anglesdelta = traceresults.hitent.angles - var_2e2dbfa3;
            spawnorigin = traceresults.hitent.origin + rotatepoint(relativeorigin, anglesdelta);
        }
        vehicle = spawnvehicle(vehicletype, spawnorigin, traceresults.angles);
        if (isdefined(vehicle)) {
            if (isdefined(vehicle.vehicleclass) && vehicle.vehicleclass == #"helicopter") {
                vehicle.origin += (0, 0, vehicle.height);
            }
            level.item_vehicles[level.item_vehicles.size] = vehicle;
        }
        util::wait_network_frame(1);
        if (isdefined(vehicle)) {
            vehicle.id = item.id;
            if (isdefined(vehicle.vehicleclass) && vehicle.vehicleclass != #"helicopter") {
                vehicle thread function_956a8ecd();
            }
            vehicle setteam(self.team);
            vehicle.team = self.team;
            if (!isai(vehicle)) {
                vehicle setowner(self);
            }
            vehicle.owner = self;
            vehicle.ownerentnum = self.entnum;
            if (vehicle isremotecontrol()) {
                self val::reset(#"item_killstreak", "freezecontrols_allowlook");
                vehicle usevehicle(self, 0);
                self waittill(#"exit_vehicle");
            } else if (isdefined(vehicle.var_7feead71)) {
                vehicle [[ vehicle.var_7feead71 ]](self);
            }
        }
        self val::reset(#"item_killstreak", "freezecontrols_allowlook");
        self takeweapon(remoteweapon);
        return;
    }
    self sethintstring(#"hash_37605398dce96965");
    wait(1.5);
    if (isdefined(self)) {
        self sethintstring(#"");
    }
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0x268cacad, Offset: 0x14048
// Size: 0x1ec
function function_3d113bfb() {
    if (!isplayer(self)) {
        return;
    }
    if (!isdefined(self.var_a097ccb7)) {
        self.var_a097ccb7 = 0;
    }
    if (!isstruct(self.inventory) || !isarray(self.inventory.items)) {
        return;
    }
    cash = 0;
    foreach (item in self.inventory.items) {
        if (!isdefined(item) || !isstruct(item.itementry) || item.itementry.itemtype !== #"cash") {
            continue;
        }
        cash += isdefined(item.itementry.amount) ? item.itementry.amount : 0;
    }
    self.var_a097ccb7 = cash;
    if (self.var_a097ccb7 > 0) {
        self clientfield::set("wz_cash_carrying", 1);
        return;
    }
    self clientfield::set("wz_cash_carrying", 0);
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x0
// Checksum 0xe23e2a1d, Offset: 0x14240
// Size: 0x1c
function function_9f438f15() {
    self function_6c36ab6b();
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0x5eb61383, Offset: 0x14268
// Size: 0x114
function function_1caf5c88() {
    if (!isdefined(self.inventory)) {
        return;
    }
    reduction = 0;
    foreach (item in self.inventory.items) {
        if (item.id == 32767) {
            continue;
        }
        if (!isdefined(item.itementry.var_dba54111) || item.itementry.var_dba54111 == 0) {
            continue;
        }
        reduction += item.itementry.var_dba54111;
    }
    namespace_6615ea91::function_cca7424d(self, reduction);
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0x6ecd3f0e, Offset: 0x14388
// Size: 0xa2
function function_b579540e(item, aat_name) {
    assert(isstruct(item));
    if (!isdefined(item) || !isdefined(item.itementry) || item.itementry.itemtype != #"weapon") {
        return false;
    }
    if (!isdefined(aat_name)) {
        return false;
    }
    item.aat = aat_name;
    return true;
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0xa9cd5a37, Offset: 0x14438
// Size: 0x194
function function_6af1ccad() {
    weapon = self getcurrentweapon();
    maxammo = weapon.maxammo;
    maxclip = self function_b7f1fd2c(weapon);
    self setweaponammoclip(weapon, maxclip);
    self setweaponammostock(weapon, maxammo);
    if (is_true(weapon.isdualwield) && isdefined(weapon.dualwieldweapon) && weapon.dualwieldweapon != level.weaponnone) {
        var_c6eb5dd0 = self function_b7f1fd2c(weapon.dualwieldweapon);
        self setweaponammoclip(weapon.dualwieldweapon, var_c6eb5dd0);
    }
    if (isdefined(weapon.altweapon)) {
        self setweaponammoclip(weapon.altweapon, self function_b7f1fd2c(weapon.altweapon));
        self setweaponammostock(weapon.altweapon, weapon.altweapon.maxammo);
    }
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x0
// Checksum 0xfef4f79d, Offset: 0x145d8
// Size: 0x6c0
function function_73ae3380(item, paplv) {
    self endon(#"death");
    assert(isstruct(item));
    if (!isdefined(item) || !isdefined(item.itementry) || item.itementry.itemtype != #"weapon") {
        return 0;
    }
    if (!isdefined(paplv)) {
        return 0;
    }
    var_b72ef6d2 = item.itementry.weapon.displayname;
    originalweapon = item_world_util::function_f4a8d375(item.id);
    if (item.itementry.rarity === #"loadout" || is_true(item.var_b3546c09)) {
        var_beeb02d3 = 1;
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
    if (isdefined(level.var_fee1eaaf) && paplv < 2) {
        if (isdefined(item.aat)) {
            aat_name = item.aat;
        }
        new_item = [[ level.var_fee1eaaf ]](item);
        if (isdefined(new_item)) {
            if (is_true(var_beeb02d3)) {
                new_item.var_b3546c09 = 1;
            }
            new_item.weaponoptions = item.weaponoptions;
            new_item.var_e91aba42 = item.var_e91aba42;
            new_item.var_908f65ca = item.var_908f65ca;
            new_item.weaponoptions = self function_fc04b237(originalweapon, new_item.weaponoptions);
            var_bd31d7b2 = function_ec087745();
            new_item.hidetime = 0;
            new_item.var_5b4ae99d = 1;
            dropweapon = function_9d102bbd(new_item, var_bd31d7b2);
            if (isentity(dropweapon)) {
                item_world::consume_item(dropweapon);
            }
            for (currentweapon = self get_current_weapon(); function_4d426f94(currentweapon); currentweapon = self get_current_weapon()) {
                waitframe(1);
            }
            var_ec0c35ac = function_230ceec4(currentweapon);
            if (isdefined(var_ec0c35ac)) {
                var_ec0c35ac.paplv = paplv;
            }
            self function_d92c6b5b(currentweapon, undefined, paplv, var_ec0c35ac);
            if (isdefined(aat_name) && isdefined(var_ec0c35ac)) {
                var_ec0c35ac.aat = aat_name;
                if (currentweapon.weapclass != "melee" && currentweapon.name != #"special_ballisticknife_t9_dw" && currentweapon.name != #"special_ballisticknife_t9_dw_upgraded") {
                    self function_bf3044dc(currentweapon, 1);
                }
                self aat::acquire(currentweapon, aat_name);
            }
            if (isdefined(var_ec0c35ac)) {
                if (is_true(var_beeb02d3)) {
                    var_ec0c35ac.var_b3546c09 = 1;
                }
                if (is_true(var_65cfac4a)) {
                    var_ec0c35ac.var_d688ad29 = 1;
                }
                if (is_true(chest_weapon)) {
                    var_ec0c35ac.var_387e74f4 = 1;
                }
                if (is_true(var_604af0c7)) {
                    var_ec0c35ac.var_569199b9 = 1;
                }
                if (is_true(var_a0cc02cf)) {
                    var_ec0c35ac.var_a0cc02cf = 1;
                }
                if (is_true(var_96c71057)) {
                    var_ec0c35ac.var_96c71057 = 1;
                }
            } else {
                println("<unknown string>");
            }
            self notify(#"hash_75ec9942d2d5fd0f");
            callback::callback(#"hash_75ec9942d2d5fd0f", {#paplv:paplv, #var_ca3e1138:var_b72ef6d2});
            self function_6af1ccad();
            return var_ec0c35ac;
        }
    } else if (paplv >= 2) {
        item.paplv = paplv;
    } else {
        return 0;
    }
    self function_d92c6b5b(undefined, undefined, paplv);
    self notify(#"hash_75ec9942d2d5fd0f");
    callback::callback(#"hash_75ec9942d2d5fd0f", {#paplv:paplv, #var_ca3e1138:var_b72ef6d2});
    self function_6af1ccad();
    return 1;
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0xd08c464, Offset: 0x14ca0
// Size: 0x3e
function function_4d426f94(weapon) {
    return weapon === level.weaponnone || weapon === level.weaponbasemeleeheld || !isdefined(weapon);
}

// Namespace item_inventory/item_inventory
// Params 4, eflags: 0x2 linked
// Checksum 0x10b6fec6, Offset: 0x14ce8
// Size: 0x34c
function function_d92c6b5b(currentweapon, var_b681f360, var_27751b99, item) {
    self endon(#"death");
    if (!isdefined(currentweapon)) {
        for (currentweapon = self get_current_weapon(); function_4d426f94(currentweapon); currentweapon = self get_current_weapon()) {
            waitframe(1);
        }
    }
    weaponoptions = self function_ade49959(currentweapon);
    camoindex = getcamoindex(weaponoptions);
    var_3fa812e = isdefined(level.var_88672174) ? level.var_88672174 : 67;
    var_18bdaab4 = isdefined(level.var_5b8c6c9b) ? level.var_5b8c6c9b : 68;
    var_98932a5d = isdefined(level.var_f1662fe9) ? level.var_f1662fe9 : 69;
    if (weaponoptions != 0 && camoindex != 0 && camoindex != var_3fa812e && camoindex != var_18bdaab4 && camoindex != var_98932a5d) {
        return;
    }
    if (is_true(self.var_54c2b211)) {
        return;
    }
    if (isdefined(var_27751b99)) {
        switch (var_27751b99) {
        case 1:
            self setcamo(currentweapon, var_3fa812e);
            return;
        case 2:
            self setcamo(currentweapon, var_18bdaab4);
            return;
        case 3:
            self setcamo(currentweapon, var_98932a5d);
            return;
        }
    }
    if (weaponoptions === 0 && isdefined(item.weaponoptions) && item.weaponoptions !== 0) {
        weaponoptions = item.weaponoptions;
    }
    var_51fbc989 = getcamoindex(weaponoptions);
    if (isdefined(var_b681f360)) {
        var_51fbc989 = var_b681f360;
    }
    if (!isdefined(var_51fbc989)) {
        return;
    }
    if (var_51fbc989 == 0) {
        self setcamo(currentweapon, var_3fa812e);
        return;
    }
    if (var_51fbc989 == var_3fa812e) {
        self setcamo(currentweapon, var_18bdaab4);
        return;
    }
    if (var_51fbc989 == var_18bdaab4) {
        self setcamo(currentweapon, var_98932a5d);
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x0
// Checksum 0x62792c2a, Offset: 0x15040
// Size: 0xfc
function function_dc5d31be(w_item) {
    a_items = self.inventory.items;
    n_count = 0;
    if (isdefined(a_items)) {
        foreach (item in a_items) {
            if (isdefined(item.itementry) && isdefined(item.count) && w_item === item.itementry.name) {
                n_count += item.count;
            }
        }
    }
    return n_count;
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x6 linked
// Checksum 0xd4421cda, Offset: 0x15148
// Size: 0xfc
function private function_eb0c9b9c() {
    players = getplayers();
    var_7bba6210 = 1;
    while (var_7bba6210) {
        waitframe(1);
        var_7bba6210 = 0;
        foreach (player in players) {
            if (isdefined(player) && isalive(player) && is_true(player.var_7bba6210)) {
                var_7bba6210 = 1;
                break;
            }
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x6 linked
// Checksum 0x21df5b1c, Offset: 0x15250
// Size: 0xc4
function private function_f58e80e2() {
    players = getplayers();
    for (index = 0; index < players.size; index++) {
        player = players[index];
        if (isalive(player)) {
            if (!function_7d5553ac()) {
                player thread reset_inventory();
            }
        }
        if ((index + 1) % 3 == 0) {
            waitframe(1);
        }
    }
    function_eb0c9b9c();
}

/#

    // Namespace item_inventory/item_inventory
    // Params 0, eflags: 0x0
    // Checksum 0x6eaf8490, Offset: 0x15320
    // Size: 0x1b8
    function function_76eb9bd7() {
        item_world::function_1b11e73c();
        if (!isdefined(self) || !isplayer(self) || !isalive(self)) {
            return;
        }
        while (isdefined(self) && !isdefined(self.inventory)) {
            waitframe(1);
        }
        if (!isdefined(self)) {
            return;
        }
        inventorystr = getdvarstring(#"hash_7b2be9e03d9785f3", "<unknown string>");
        tokens = strtok(inventorystr, "<unknown string>");
        foreach (token in tokens) {
            item = function_4ba8fde(token);
            if (isdefined(item)) {
                var_fa3df96 = self function_e66dcff5(item);
                self item_world::function_de2018e3(item, self, var_fa3df96);
            }
        }
    }

#/
