// Atian COD Tools GSC CW decompiler test
#using scripts\weapons\weapons.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\killstreaks\killstreaks_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\loadout_shared.gsc;
#using script_471b31bd963b388e;
#using scripts\core_common\item_world.gsc;
#using script_1caf36ff04a85ff6;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\item_drop.gsc;
#using scripts\core_common\hud_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace namespace_1d9319e5;

// Namespace namespace_1d9319e5/namespace_1d9319e5
// Params 0, eflags: 0x5
// Checksum 0x18052c5a, Offset: 0x138
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_f11f051d1c7994a", &preinit, undefined, undefined, #"item_world");
}

// Namespace namespace_1d9319e5/namespace_1d9319e5
// Params 0, eflags: 0x6 linked
// Checksum 0x2be22625, Offset: 0x188
// Size: 0x3c
function private preinit() {
    if (!item_inventory::function_7d5553ac()) {
        return;
    }
    level.var_174c7c61 = 1;
    function_116fd9a7();
}

// Namespace namespace_1d9319e5/namespace_1d9319e5
// Params 0, eflags: 0x6 linked
// Checksum 0xc473f2ac, Offset: 0x1d0
// Size: 0x124
function private function_116fd9a7() {
    item_world::function_861f348d(#"hash_1f0d729dc6dd1202", &function_898628ef);
    item_world::function_861f348d(#"hash_50375e5de228e9fc", &function_a712496a);
    item_world::function_861f348d(#"hash_2cbf15cbb314c93e", &function_2eebeff5);
    item_world::function_861f348d(#"hash_20ffbe34a3390916", &function_6598f0a0);
    item_world::function_861f348d(#"hash_9ed0c30684ca35a", &function_d045e83b);
    item_world::function_861f348d(#"hash_3a90f48f62134d29", &function_8c369ecb);
}

// Namespace namespace_1d9319e5/namespace_1d9319e5
// Params 2, eflags: 0x6 linked
// Checksum 0x6e2a20b5, Offset: 0x300
// Size: 0x154
function private function_77512b90(killstreakbundle, hasscorestreak = 0) {
    assert(isplayer(self));
    self notify(#"hash_5cd53481d07fa89c");
    self endon(#"death", #"disconnect", #"hash_5cd53481d07fa89c");
    if (isdefined(self.var_48590990)) {
        waittime = int(3 * 1000) - gettime() - self.var_48590990;
        if (waittime > 0) {
            wait(float(waittime) / 1000);
        }
    }
    if (hasscorestreak) {
        wait(1);
    }
    self.var_48590990 = gettime();
    self killstreaks::add_to_notification_queue(level.killstreaks[killstreakbundle.var_d3413870].menuname, undefined, killstreakbundle.var_d3413870, undefined, 1);
}

// Namespace namespace_1d9319e5/namespace_1d9319e5
// Params 7, eflags: 0x6 linked
// Checksum 0x28577106, Offset: 0x460
// Size: 0x534
function private function_898628ef(item, player, *networkid, *itemid, itemcount, var_aec6fa7f, *slotid) {
    if (itemcount isswitchingweapons()) {
        return var_aec6fa7f;
    }
    killstreakbundle = getscriptbundle(itemid.itementry.killstreak);
    result = 0;
    killstreakname = undefined;
    if (isdefined(killstreakbundle) && isdefined(killstreakbundle.var_fc0c8eae) && isdefined(killstreakbundle.var_fc0c8eae.name)) {
        killstreakname = killstreakbundle.var_fc0c8eae.name;
    } else if (isdefined(killstreakbundle.var_d3413870)) {
        killstreakname = killstreakbundle.var_d3413870;
    }
    if (isdefined(killstreakname)) {
        hasscorestreak = 0;
        weapons = itemcount getweaponslist();
        foreach (weapon in weapons) {
            var_16f12c31 = item_world_util::function_3531b9ba(weapon.name);
            if (!isdefined(var_16f12c31)) {
                continue;
            }
            ammo = itemcount getweaponammoclip(weapon);
            if (!weapon.iscliponly) {
                ammo += itemcount getweaponammostock(weapon);
            }
            hasammo = ammo > 0;
            if (hasammo) {
                itempoint = function_4ba8fde(var_16f12c31);
                var_390fc2d8 = getscriptbundle(itempoint.itementry.killstreak);
                if (var_390fc2d8.var_fc0c8eae.name == #"inventory_planemortar") {
                    ammo = isdefined(itemcount.pers[#"hash_1aaccfe69e328d6e"][3]) ? itemcount.pers[#"hash_1aaccfe69e328d6e"][3] : 3;
                }
                level thread item_drop::drop_item(0, undefined, 1, ammo, itempoint.id, itemcount.origin + anglestoforward(itemcount.angles) * randomfloatrange(10, 30), itemcount.angles, 2);
                hasscorestreak = 1;
            }
            itemcount takeweapon(weapon);
        }
        itemcount.pers[#"killstreaks"] = [];
        itemcount.pers[#"hash_1aaccfe69e328d6e"] = [];
        result = killstreaks::give(killstreakname, undefined, undefined, undefined, undefined);
        if (isdefined(slotid) && slotid > 0 && isdefined(killstreakbundle.var_fc0c8eae)) {
            if (killstreakbundle.var_fc0c8eae.name == #"inventory_planemortar") {
                itemcount.pers[#"hash_1aaccfe69e328d6e"][3] = slotid;
                clientfield::set_player_uimodel("hudItems.planeMortarShotsRemaining", slotid);
                itemcount loadout::function_3ba6ee5d(killstreakbundle.var_fc0c8eae, 1);
                itemcount.pers[#"held_killstreak_ammo_count"][killstreakbundle.var_fc0c8eae] = 1;
            } else {
                itemcount loadout::function_3ba6ee5d(killstreakbundle.var_fc0c8eae, slotid);
                itemcount.pers[#"held_killstreak_ammo_count"][killstreakbundle.var_fc0c8eae] = slotid;
            }
        }
        itemcount thread function_77512b90(killstreakbundle, hasscorestreak);
    }
    if (result) {
        return (var_aec6fa7f - 1);
    }
    return var_aec6fa7f;
}

// Namespace namespace_1d9319e5/namespace_1d9319e5
// Params 7, eflags: 0x6 linked
// Checksum 0x9a36ae66, Offset: 0x9a0
// Size: 0x446
function private function_a712496a(item, player, *networkid, *itemid, itemcount, *var_aec6fa7f, *slotid) {
    if (is_true(var_aec6fa7f.var_8c9cccf2)) {
        return slotid;
    }
    primaryweapons = var_aec6fa7f getweaponslistprimaries();
    primaryweapon = isdefined(primaryweapons[0]) ? primaryweapons[0] : level.weaponnone;
    stowedweapon = isdefined(primaryweapons[1]) ? primaryweapons[1] : level.weaponnone;
    if (primaryweapon != var_aec6fa7f getcurrentweapon() || stowedweapon == getweapon(#"bare_hands")) {
        tempweapon = stowedweapon;
        stowedweapon = primaryweapon;
        primaryweapon = tempweapon;
    }
    var_4f3ed40 = function_9f1cc9a9(primaryweapon) != 0;
    var_8b94e68d = function_9f1cc9a9(stowedweapon) != 0;
    assert(!(var_4f3ed40 && var_8b94e68d));
    weapon = namespace_a0d533d1::function_2b83d3ff(itemcount);
    if (var_4f3ed40 || !var_8b94e68d) {
        weapon = function_eeddea9a(weapon, 1);
    } else {
        weapon = function_eeddea9a(weapon, 0);
    }
    var_24835ffe = primaryweapon == weapon && (isdefined(itemcount.var_e91aba42) ? itemcount.var_e91aba42 : 0) === var_aec6fa7f function_8cbd254d(primaryweapon);
    var_aec6fa7f drop_weapon(0, primaryweapon);
    if (var_24835ffe) {
        if (isdefined(itemcount.stockammo)) {
            var_aec6fa7f setweaponammoclip(primaryweapon, itemcount.amount);
            var_aec6fa7f setweaponammostock(primaryweapon, itemcount.stockammo);
        } else {
            clipsize = var_aec6fa7f getweaponammoclipsize(primaryweapon);
            var_aec6fa7f setweaponammoclip(primaryweapon, clipsize);
            var_aec6fa7f setweaponammostock(primaryweapon, var_aec6fa7f function_5d951520(primaryweapon));
        }
    } else {
        var_aec6fa7f replaceweapon(primaryweapon, 0, weapon, itemcount.weaponoptions, itemcount.var_e91aba42);
        var_aec6fa7f takeweapon(primaryweapon);
        if (isdefined(itemcount.stockammo)) {
            var_aec6fa7f setweaponammoclip(weapon, itemcount.amount);
            var_aec6fa7f setweaponammostock(weapon, itemcount.stockammo);
        } else {
            var_aec6fa7f setweaponammostock(weapon, var_aec6fa7f function_5d951520(weapon));
        }
    }
    var_aec6fa7f shoulddoinitialweaponraise(weapon, 1);
    var_aec6fa7f switchtoweaponimmediate(weapon, 1);
    return slotid - 1;
}

// Namespace namespace_1d9319e5/namespace_1d9319e5
// Params 2, eflags: 0x2 linked
// Checksum 0xb68437db, Offset: 0xdf0
// Size: 0x164
function drop_weapon(var_4c42f7cf, weapon) {
    ammo = self getweaponammoclip(weapon) + self getweaponammostock(weapon);
    weaponitem = item_world_util::function_86cb6f2(weapon.name);
    if (isdefined(weaponitem)) {
        itempoint = function_4ba8fde(weaponitem);
        if (isdefined(itempoint)) {
            self thread item_drop::function_fd9026e4(var_4c42f7cf, weapon, 1, self getweaponammoclip(weapon), itempoint.id, self.origin + anglestoforward(self.angles) * randomfloatrange(10, 30), self.angles, 2, 0, 0, undefined, undefined, weapon.attachments, undefined, undefined, undefined, undefined, undefined, self getweaponammostock(weapon));
            return (var_4c42f7cf + 1);
        }
    }
    return var_4c42f7cf;
}

// Namespace namespace_1d9319e5/namespace_1d9319e5
// Params 7, eflags: 0x6 linked
// Checksum 0xe361743, Offset: 0xf60
// Size: 0x2d2
function private function_2eebeff5(item, player, *networkid, *itemid, itemcount, *var_aec6fa7f, *slotid) {
    heldweapons = var_aec6fa7f getweaponslist();
    weapon = namespace_a0d533d1::function_2b83d3ff(itemcount);
    heldweapon = level.var_34d27b26;
    if (itemcount.itementry.itemtype == #"equipment") {
        heldweapon = isdefined(heldweapons[2]) ? heldweapons[2] : level.var_34d27b26;
    } else if (itemcount.itementry.itemtype == #"tactical") {
        heldweapon = isdefined(heldweapons[3]) ? heldweapons[3] : level.var_6388e216;
    } else {
        return slotid;
    }
    ammo = var_aec6fa7f getweaponammoclip(heldweapon);
    if (heldweapon == weapon) {
        ammo = int(min(ammo + slotid, 5));
        var_aec6fa7f setweaponammoclip(heldweapon, ammo);
        return int(max(ammo - 5, 0));
    } else if (heldweapon != level.var_34d27b26 && heldweapon != level.var_6388e216 && ammo > 0) {
        var_aec6fa7f function_79270eec(0, heldweapon);
    }
    var_aec6fa7f replaceweapon(heldweapon, 0, weapon);
    var_aec6fa7f takeweapon(heldweapon);
    var_aec6fa7f setweaponammoclip(weapon, int(min(slotid, 5)));
    return int(max(slotid - 5, 0));
}

// Namespace namespace_1d9319e5/namespace_1d9319e5
// Params 2, eflags: 0x2 linked
// Checksum 0xb1a9709b, Offset: 0x1240
// Size: 0x10c
function function_79270eec(var_4c42f7cf, weapon) {
    ammo = self getweaponammoclip(weapon);
    equipmentitem = item_world_util::function_5340375f(weapon.name);
    if (isdefined(equipmentitem)) {
        itempoint = function_4ba8fde(equipmentitem);
        if (isdefined(itempoint)) {
            level thread item_drop::drop_item(var_4c42f7cf, weapon, 1, ammo, itempoint.id, self.origin + anglestoforward(self.angles) * randomfloatrange(10, 30), self.angles, 2);
            return (var_4c42f7cf + 1);
        }
    }
    return var_4c42f7cf;
}

// Namespace namespace_1d9319e5/namespace_1d9319e5
// Params 7, eflags: 0x6 linked
// Checksum 0x53171a8f, Offset: 0x1358
// Size: 0x1c6
function private function_8c369ecb(item, player, *networkid, *itemid, itemcount, *var_aec6fa7f, *slotid) {
    heldweapons = var_aec6fa7f getweaponslist();
    weapon = namespace_a0d533d1::function_2b83d3ff(itemcount);
    heldweapon = isdefined(heldweapons[4]) ? heldweapons[4] : level.var_43a51921;
    ammo = var_aec6fa7f getweaponammoclip(heldweapon);
    if (heldweapon != level.var_43a51921 && ammo > 0) {
        var_aec6fa7f function_3af40ef4(0, heldweapon);
        if (heldweapon == weapon) {
            return (slotid - 1);
        }
    }
    if (heldweapon != weapon) {
        var_aec6fa7f replaceweapon(heldweapon, 0, weapon);
        var_aec6fa7f takeweapon(heldweapon);
    }
    var_aec6fa7f setweaponammoclip(weapon, 1);
    weaponindex = getitemindexfromref(weapon.name);
    self luinotifyevent(#"hash_14ebcb39234f4126", 1, weaponindex);
    return slotid - 1;
}

// Namespace namespace_1d9319e5/namespace_1d9319e5
// Params 2, eflags: 0x2 linked
// Checksum 0xd4ad147, Offset: 0x1528
// Size: 0x10c
function function_3af40ef4(var_4c42f7cf, weapon) {
    ammo = self getweaponammoclip(weapon);
    equipmentitem = item_world_util::function_58020907(weapon.name);
    if (isdefined(equipmentitem)) {
        itempoint = function_4ba8fde(equipmentitem);
        if (isdefined(itempoint)) {
            level thread item_drop::drop_item(var_4c42f7cf, weapon, 1, ammo, itempoint.id, self.origin + anglestoforward(self.angles) * randomfloatrange(10, 30), self.angles, 2);
            return (var_4c42f7cf + 1);
        }
    }
    return var_4c42f7cf;
}

// Namespace namespace_1d9319e5/namespace_1d9319e5
// Params 7, eflags: 0x6 linked
// Checksum 0xe43a7741, Offset: 0x1640
// Size: 0x9e
function private function_6598f0a0(*item, player, *networkid, *itemid, itemcount, *var_aec6fa7f, *slotid) {
    var_6a4efe8e = var_aec6fa7f clientfield::get_player_uimodel("hud_items.selfReviveAvailable");
    if (var_6a4efe8e) {
        return slotid;
    }
    var_aec6fa7f clientfield::set_player_uimodel("hud_items.selfReviveAvailable", 1);
    return slotid - 1;
}

// Namespace namespace_1d9319e5/namespace_1d9319e5
// Params 7, eflags: 0x6 linked
// Checksum 0x339d5c13, Offset: 0x16e8
// Size: 0x174
function private function_d045e83b(*item, player, *networkid, *itemid, itemcount, *var_aec6fa7f, *slotid) {
    weaponslist = var_aec6fa7f getweaponslist();
    var_c20b09e1 = 0;
    for (i = 0; i < min(weaponslist.size, 2); i++) {
        weapon = weaponslist[i];
        currentammostock = var_aec6fa7f getweaponammostock(weapon);
        if (currentammostock >= var_aec6fa7f function_5d951520(weapon)) {
            continue;
        }
        var_c20b09e1 = 1;
        clipsize = var_aec6fa7f function_b7f1fd2c(weapon);
        var_aec6fa7f setweaponammostock(weapon, currentammostock + clipsize);
    }
    if (var_c20b09e1) {
        self hud::function_4a4de0de();
        return 0;
    }
    return slotid;
}

