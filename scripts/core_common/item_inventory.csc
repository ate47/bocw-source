// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\killstreaks_shared.csc;
#using scripts\core_common\item_world.csc;
#using script_3d35e2ff167b3a82;
#using scripts\core_common\player\player_stats.csc;
#using script_2358831c5878ace3;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using script_7ebad89114ecedb1;
#using script_680dddbda86931fa;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;

#namespace item_inventory;

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x5
// Checksum 0xdb97b632, Offset: 0xa18
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"item_inventory", &preinit, undefined, undefined, #"item_world");
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x6 linked
// Checksum 0x5b9a3e9c, Offset: 0xa68
// Size: 0x154
function private preinit() {
    if (!item_world_util::use_item_spawns()) {
        return;
    }
    if (function_7d5553ac()) {
        return;
    }
    clientfield::register("toplayer", "inventoryThirdWeapon", 8000, 1, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.healthItemstackCount", #"hash_6f4b11a0bee9b73d", #"healthitemstackcount", 1, 8, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.equipmentStackCount", #"hash_6f4b11a0bee9b73d", #"equipmentstackcount", 1, 8, "int", undefined, 0, 0);
    callback::on_localplayer_spawned(&_on_localplayer_spawned);
    level thread function_d2f05352();
    level.var_53854c4 = &function_53854c4;
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x2 linked
// Checksum 0x21dd2935, Offset: 0xbc8
// Size: 0x50
function function_7d5553ac() {
    return isdefined(getgametypesetting(#"hash_1cc3f98086d6f5dd")) ? getgametypesetting(#"hash_1cc3f98086d6f5dd") : 0;
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0x2b6264fb, Offset: 0xc20
// Size: 0xcc
function private _on_localplayer_spawned(localclientnum) {
    if (self function_da43934d()) {
        self thread function_3e624606(localclientnum);
        self thread function_ac4df751(localclientnum);
        self thread function_ca87f318(localclientnum);
        self thread function_7f35a045(localclientnum);
        self thread function_2ae9881d(localclientnum);
        self thread function_9b83c65d(localclientnum);
        self thread function_6636af5c(localclientnum);
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0x40534b94, Offset: 0xcf8
// Size: 0x23e
function private function_6636af5c(localclientnum) {
    self endon(#"shutdown", #"death");
    self notify("211a0f196d3adf38");
    self endon("211a0f196d3adf38");
    function_534dcb9c(localclientnum);
    while (true) {
        item = undefined;
        weapon = getcurrentweapon(localclientnum);
        data = item_world::function_a7e98a1a(localclientnum);
        if (isdefined(weapon) && isdefined(data)) {
            var_16f12c31 = data.inventory.items[17];
            if (isdefined(var_16f12c31) && weapon.rootweapon === var_16f12c31.itementry.weapon) {
                item = var_16f12c31;
            }
        }
        if (!isdefined(item)) {
            var_a4250c2b = function_d768ea30(localclientnum);
            if (isdefined(var_a4250c2b)) {
                networkid = item_world_util::function_970b8d86(var_a4250c2b);
                item = function_15d578f4(localclientnum, networkid);
            }
        }
        if (isdefined(item) && isdefined(item.itementry) && isdefined(item.itementry.rarity) && item.itementry.rarity != "") {
            setuimodelvalue(level.var_830a8516[localclientnum], item.itementry.rarity);
        } else {
            setuimodelvalue(level.var_830a8516[localclientnum], "Loadout");
        }
        waitframe(1);
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0x78ee4c80, Offset: 0xf40
// Size: 0xfe
function private function_3fe6ef04(localclientnum) {
    data = item_world::function_a7e98a1a(localclientnum);
    var_cfa0e915 = [];
    foreach (consumeditem in data.inventory.consumed.items) {
        if (isdefined(var_cfa0e915[consumeditem.itementry.name])) {
            continue;
        }
        var_cfa0e915[consumeditem.itementry.name] = 1;
    }
    return var_cfa0e915.size;
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0xae235d16, Offset: 0x1048
// Size: 0x4e
function private function_88da0c8e(localclientnum) {
    paintcans = stats::get_stat_global(localclientnum, #"items_paint_cans_collected");
    return (isdefined(paintcans) ? paintcans : 0) >= 150;
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0xb544fff2, Offset: 0x10a0
// Size: 0x5e
function private function_99b22bbc(localclientnum) {
    if (function_96d4f30e(localclientnum)) {
        return false;
    }
    if (isgrappling(localclientnum)) {
        return false;
    }
    if (function_d5f07a6e(localclientnum)) {
        return false;
    }
    return true;
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0x5298b701, Offset: 0x1108
// Size: 0x3ea
function private function_ca87f318(localclientnum) {
    self endon(#"shutdown", #"death");
    self notify("6a753029433f7f10");
    self endon("6a753029433f7f10");
    for (clientdata = item_world::function_a7e98a1a(localclientnum); !isdefined(clientdata); clientdata = item_world::function_a7e98a1a(localclientnum)) {
        waitframe(1);
    }
    var_790695cc = "inventory_equip" + localclientnum;
    var_6e7b39bc = "inventory_detach" + localclientnum;
    clientdata.var_b9730e2b = gettime();
    while (true) {
        waitresult = level waittill(var_790695cc, var_6e7b39bc);
        if (gettime() - clientdata.var_b9730e2b < 300) {
            continue;
        }
        if (waitresult._notify === var_790695cc) {
            networkid = waitresult.id;
            quickequip = isdefined(waitresult.extraarg) ? waitresult.extraarg : 0;
            if (quickequip) {
                var_ed98a5fe = function_15d578f4(localclientnum, networkid);
                if (isdefined(var_ed98a5fe)) {
                    itementry = var_ed98a5fe.itementry;
                }
                if (isdefined(itementry) && (itementry.itemtype == #"generic" || itementry.itemtype == #"killstreak")) {
                    data = item_world::function_a7e98a1a(localclientnum);
                    name = isdefined(itementry.parentname) ? itementry.parentname : itementry.name;
                    for (index = 0; index < data.inventory.items.size && index < 17 + 1; index++) {
                        inventoryitem = data.inventory.items[index];
                        if (!isdefined(inventoryitem.itementry) || isdefined(inventoryitem.endtime)) {
                            continue;
                        }
                        if (inventoryitem.networkid == networkid) {
                            continue;
                        }
                        if (name == (isdefined(inventoryitem.itementry.parentname) ? inventoryitem.itementry.parentname : inventoryitem.itementry.name)) {
                            networkid = inventoryitem.networkid;
                            break;
                        }
                    }
                }
            }
            if (isdefined(waitresult.extraarg2)) {
                function_97fedb0d(localclientnum, 11, networkid, quickequip);
            } else {
                function_97fedb0d(localclientnum, 4, networkid, quickequip);
            }
        } else if (waitresult._notify === var_6e7b39bc) {
            networkid = waitresult.id;
            function_97fedb0d(localclientnum, 6, networkid);
        }
        clientdata.var_b9730e2b = gettime();
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0x3243d02f, Offset: 0x1500
// Size: 0x8c
function private function_10861362(localclientnum) {
    vehicle = getplayervehicle(self);
    if (!isdefined(vehicle)) {
        return true;
    }
    var_88fa0205 = vehicle getoccupantseat(localclientnum, self);
    if (isdefined(var_88fa0205) && (var_88fa0205 == 0 || var_88fa0205 == 4)) {
        return false;
    }
    return true;
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x6 linked
// Checksum 0x81648d2e, Offset: 0x1598
// Size: 0x98
function private function_ee44351a(localclientnum, inventoryitem) {
    weapon = item_world_util::function_35e06774(inventoryitem.itementry);
    if (!isdefined(weapon)) {
        return 1;
    }
    if (weapon == getcurrentweapon(localclientnum) || weapon == function_e9fe14ee(localclientnum)) {
        return function_99b22bbc(localclientnum);
    }
    return 1;
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0xff98f6b9, Offset: 0x1638
// Size: 0x1ca
function private function_e23e5e85(localclientnum) {
    clientdata = item_world::function_a7e98a1a(localclientnum);
    if (!isdefined(clientdata) || !isdefined(clientdata.inventory) || !isdefined(clientdata.inventory.items)) {
        return false;
    }
    armoritem = clientdata.inventory.items[6];
    if (!isdefined(armoritem) || armoritem.networkid === 32767 || armoritem.itementry.itemtype !== #"armor") {
        return false;
    }
    clientmodel = getuimodelvalue(getuimodel(function_1df4c3b0(localclientnum, #"hash_6f4b11a0bee9b73d"), "predictedClientModel"));
    armormodel = getuimodel(clientmodel, "armor");
    var_15663411 = getuimodel(armoritem.itemuimodel, "armorMax");
    if (!isdefined(armormodel) || !isdefined(var_15663411) || getuimodelvalue(armormodel) == getuimodelvalue(var_15663411)) {
        return false;
    }
    return true;
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0x37f5c8d4, Offset: 0x1810
// Size: 0x96
function private function_e094fd92(item) {
    if (!isdefined(item) || !isdefined(item.networkid) || item.networkid == 32767 || !isdefined(item.quickequip) || item.quickequip != 1 || !isdefined(item.consumable) || item.consumable != 1) {
        return false;
    }
    return true;
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0xbced4667, Offset: 0x18b0
// Size: 0xde
function private function_f3ef5269(localclientnum) {
    perksarray = [];
    clientdata = item_world::function_a7e98a1a(localclientnum);
    for (i = 0; i < 5; i++) {
        currentitem = clientdata.inventory.items[i];
        if (function_e094fd92(currentitem)) {
            if (!isdefined(perksarray)) {
                perksarray = [];
            } else if (!isarray(perksarray)) {
                perksarray = array(perksarray);
            }
            perksarray[perksarray.size] = currentitem;
        }
    }
    return perksarray;
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x6 linked
// Checksum 0x8321b784, Offset: 0x1998
// Size: 0xbe
function private function_e090a831(localclientnum, networkid) {
    clientdata = item_world::function_a7e98a1a(localclientnum);
    perkindex = 0;
    for (i = 0; i < 5; i++) {
        currentitem = clientdata.inventory.items[i];
        if (function_e094fd92(currentitem)) {
            if (currentitem.networkid == networkid) {
                return perkindex;
            }
            perkindex++;
        }
    }
    return -1;
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x6 linked
// Checksum 0xd77cef54, Offset: 0x1a60
// Size: 0x170
function private function_535a5a06(localclientnum, var_6e51c00) {
    assert(var_6e51c00 >= -1 && var_6e51c00 <= 1);
    inventoryuimodel = function_1df4c3b0(localclientnum, #"hash_159966ba825013a2");
    var_f99434b1 = createuimodel(inventoryuimodel, "quickConsumeIndex");
    perksarray = function_f3ef5269(localclientnum);
    var_be32fa6d = perksarray.size;
    if (var_be32fa6d < 2) {
        setuimodelvalue(var_f99434b1, 0);
        return 0;
    }
    quickconsumeindex = getuimodelvalue(var_f99434b1);
    if (!isdefined(quickconsumeindex)) {
        quickconsumeindex = 0;
    }
    quickconsumeindex += var_6e51c00;
    if (quickconsumeindex >= var_be32fa6d) {
        quickconsumeindex = 0;
    } else if (quickconsumeindex < 0) {
        quickconsumeindex = var_be32fa6d - 1;
    }
    setuimodelvalue(var_f99434b1, quickconsumeindex);
    return quickconsumeindex;
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0x872d8fc8, Offset: 0x1bd8
// Size: 0x22
function private function_91483494(localclientnum) {
    return function_1606ff3(localclientnum, 1);
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0xed3efa8a, Offset: 0x1c08
// Size: 0x22
function private function_9f5d2dc8(localclientnum) {
    return function_1606ff3(localclientnum, 0);
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x6 linked
// Checksum 0x7fc572a8, Offset: 0x1c38
// Size: 0x124
function private function_1606ff3(localclientnum, var_6e51c00) {
    perksarray = function_f3ef5269(localclientnum);
    currentindex = function_535a5a06(localclientnum, var_6e51c00);
    inventoryuimodel = function_1df4c3b0(localclientnum, #"hash_159966ba825013a2");
    var_98d32f1c = createuimodel(inventoryuimodel, "quickConsumeNetworkId");
    if (isdefined(perksarray[currentindex])) {
        setuimodelvalue(var_98d32f1c, perksarray[currentindex].networkid);
    } else {
        setuimodelvalue(var_98d32f1c, 32767);
    }
    if (perksarray.size > 1) {
        playsound(localclientnum, #"hash_4d31bd9927d823c3");
    }
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x6 linked
// Checksum 0xdb9204af, Offset: 0x1d68
// Size: 0x104
function private function_22759012(localclientnum, networkid) {
    perkindex = function_e090a831(localclientnum, networkid);
    if (perkindex > -1) {
        inventoryuimodel = function_1df4c3b0(localclientnum, #"hash_159966ba825013a2");
        var_f99434b1 = createuimodel(inventoryuimodel, "quickConsumeIndex");
        setuimodelvalue(var_f99434b1, perkindex);
        var_98d32f1c = createuimodel(inventoryuimodel, "quickConsumeNetworkId");
        setuimodelvalue(var_98d32f1c, networkid);
        return;
    }
    function_9f5d2dc8(localclientnum);
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x6 linked
// Checksum 0x71ffdfa5, Offset: 0x1e78
// Size: 0xee
function private function_1470ccfe(localclientnum, item) {
    clientdata = item_world::function_a7e98a1a(localclientnum);
    for (i = 0; i < 5; i++) {
        currentitem = clientdata.inventory.items[i];
        if (currentitem.networkid == 32767 || !namespace_a0d533d1::function_73593286(item.itementry, currentitem.itementry) || !isdefined(currentitem.availableaction) || item.availableaction != currentitem.availableaction) {
            continue;
        }
        return currentitem.networkid;
    }
    return undefined;
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0xc7a39450, Offset: 0x1f70
// Size: 0xba2
function private function_9b83c65d(localclientnum) {
    self endon(#"shutdown", #"death");
    self notify("2049c21bf5f628e2");
    self endon("2049c21bf5f628e2");
    clientdata = item_world::function_a7e98a1a(localclientnum);
    var_ca4fc719 = "inventory_consume" + localclientnum;
    var_e2d1f454 = "inventory_armor_repair_pressed" + localclientnum;
    var_3731e165 = "inventory_armor_repair_released" + localclientnum;
    var_6a10d173 = "inventory_quick_consume" + localclientnum;
    var_ce5c0b10 = "inventory_cycle_quick_consumable" + localclientnum;
    var_17bdd1c3 = "inventory_equip_quick_consumable" + localclientnum;
    while (true) {
        waitresult = level waittill(var_ca4fc719, var_e2d1f454, var_3731e165, var_6a10d173, var_ce5c0b10, var_17bdd1c3);
        if (waitresult._notify === var_ca4fc719) {
            if (!function_10861362(localclientnum)) {
                self playsound(localclientnum, #"uin_default_action_denied");
                continue;
            }
            inventoryitem = function_15d578f4(localclientnum, waitresult.id);
            function_22759012(localclientnum, inventoryitem.networkid);
        } else if (waitresult._notify === var_17bdd1c3) {
            inventoryitem = function_15d578f4(localclientnum, waitresult.id);
            networkid = function_1470ccfe(localclientnum, inventoryitem);
            function_22759012(localclientnum, isdefined(networkid) ? networkid : inventoryitem.networkid);
            continue;
        } else if (waitresult._notify === var_6a10d173) {
            currentindex = function_535a5a06(localclientnum, 0);
            perksarray = function_f3ef5269(localclientnum);
            if (isdefined(perksarray[currentindex])) {
                inventoryitem = perksarray[currentindex];
            } else {
                continue;
            }
        } else if (waitresult._notify === var_ce5c0b10) {
            function_91483494(localclientnum);
            continue;
        } else {
            inventoryitem = clientdata.inventory.items[11];
            if (!isdefined(inventoryitem) || inventoryitem.networkid === 32767 || inventoryitem.itementry.itemtype !== #"armor_shard") {
                if (waitresult._notify === var_e2d1f454) {
                    inventoryuimodel = function_1df4c3b0(localclientnum, #"hash_159966ba825013a2");
                    var_3ea10284 = createuimodel(inventoryuimodel, "armorShardNotAvailable");
                    forcenotifyuimodel(var_3ea10284);
                }
                continue;
            }
            var_a3162739 = isdefined(clientdata.inventory.var_f3518190) && inventoryitem == clientdata.inventory.var_f3518190.item;
            if (waitresult._notify === var_e2d1f454) {
                if (!function_e23e5e85(localclientnum) || inventoryitem.count == 0 || !function_10861362(localclientnum)) {
                    self playsound(localclientnum, #"uin_default_action_denied");
                    inventoryuimodel = function_1df4c3b0(localclientnum, #"hash_159966ba825013a2");
                    var_3ea10284 = createuimodel(inventoryuimodel, "armorShardNotAvailable");
                    forcenotifyuimodel(var_3ea10284);
                    continue;
                }
            } else if (!var_a3162739) {
                continue;
            }
        }
        if (!isdefined(inventoryitem.itementry.casttime) || inventoryitem.itementry.casttime <= 0) {
            function_97fedb0d(localclientnum, 4, inventoryitem.networkid);
            continue;
        }
        var_eaae8ced = 0;
        if (isdefined(clientdata.inventory.consumed.items) && isarray(clientdata.inventory.consumed.items)) {
            foreach (consumeditem in clientdata.inventory.consumed.items) {
                if (isdefined(consumeditem.itementry.talents) && isarray(consumeditem.itementry.talents)) {
                    foreach (talent in consumeditem.itementry.talents) {
                        if (talent.talent == #"talent_consumer_wz") {
                            var_eaae8ced = 1;
                            break;
                        }
                    }
                }
                if (var_eaae8ced) {
                    break;
                }
            }
        }
        if (isdefined(clientdata.inventory.var_f3518190)) {
            if (inventoryitem != clientdata.inventory.var_f3518190.item) {
                setuimodelvalue(createuimodel(clientdata.inventory.var_f3518190.item.itemuimodel, "castTimeFraction"), 0, 0);
                playsound(localclientnum, #"hash_4d31bd9927d823c3");
                var_f3518190 = spawnstruct();
                var_f3518190.item = inventoryitem;
                var_f3518190.caststart = gettime();
                var_f3518190.castend = var_f3518190.caststart + int((isdefined(var_eaae8ced ? var_f3518190.item.itementry.casttime * 0.5 : var_f3518190.item.itementry.casttime) ? var_eaae8ced ? var_f3518190.item.itementry.casttime * 0.5 : var_f3518190.item.itementry.casttime : 0) * 1000);
                clientdata.inventory.var_f3518190 = var_f3518190;
                function_de74158f(localclientnum, var_f3518190.item.networkid);
                clientdata.inventory.var_4d4ec560 = inventoryitem.networkid;
            } else {
                setuimodelvalue(createuimodel(clientdata.inventory.var_f3518190.item.itemuimodel, "castTimeFraction"), 0, 0);
                setuimodelvalue(clientdata.inventory.consumed.var_a25538fb, function_3fe6ef04(localclientnum));
                clientdata.inventory.var_f3518190 = undefined;
                clientdata.inventory.var_4d4ec560 = undefined;
            }
            continue;
        }
        if (!isdefined(clientdata.inventory.var_4d4ec560) || clientdata.inventory.var_4d4ec560 != inventoryitem.networkid) {
            playsound(localclientnum, #"hash_4d31bd9927d823c3");
            var_f3518190 = spawnstruct();
            var_f3518190.item = inventoryitem;
            var_f3518190.caststart = gettime();
            var_f3518190.castend = var_f3518190.caststart + int((isdefined(var_eaae8ced ? var_f3518190.item.itementry.casttime * 0.5 : var_f3518190.item.itementry.casttime) ? var_eaae8ced ? var_f3518190.item.itementry.casttime * 0.5 : var_f3518190.item.itementry.casttime : 0) * 1000);
            clientdata.inventory.var_f3518190 = var_f3518190;
            function_de74158f(localclientnum, var_f3518190.item.networkid);
            clientdata.inventory.var_4d4ec560 = inventoryitem.networkid;
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0xe4020a95, Offset: 0x2b20
// Size: 0x4a0
function private function_ac4df751(localclientnum) {
    self endon(#"shutdown", #"death");
    self notify("3c10dd21ef915244");
    self endon("3c10dd21ef915244");
    clientdata = item_world::function_a7e98a1a(localclientnum);
    var_5054e2f7 = "inventory_drop" + localclientnum;
    var_ffec0c46 = "inventory_drop_current_weapon" + localclientnum;
    var_46a7a0e3 = "inventory_drop_current_weapon_and_detach" + localclientnum;
    var_fcd005cc = "inventory_drop_weapon_in_slot" + localclientnum;
    var_3d759450 = "inventory_drop_weapon_in_slot_and_detach" + localclientnum;
    while (true) {
        waitresult = level waittill(var_5054e2f7, var_ffec0c46, var_46a7a0e3, var_fcd005cc, var_3d759450);
        if (waitresult._notify === var_5054e2f7) {
            networkid = waitresult.id;
            count = waitresult.extraarg;
            itemid = item_world::function_28b42f1c(localclientnum, networkid);
            if (itemid != 32767) {
                if (function_6d9d9cd7(waitresult.selectedindex)) {
                    inventoryitem = clientdata.inventory.items[waitresult.selectedindex];
                    if (isdefined(inventoryitem) && !function_ee44351a(localclientnum, inventoryitem)) {
                        continue;
                    }
                }
                if (isdefined(clientdata.inventory.var_f3518190) && clientdata.inventory.var_f3518190.item.id == itemid) {
                    clientdata.inventory.var_f3518190 = undefined;
                    clientdata.inventory.var_4d4ec560 = undefined;
                    setuimodelvalue(clientdata.inventory.consumed.var_a25538fb, function_3fe6ef04(localclientnum));
                }
                function_97fedb0d(localclientnum, 5, networkid, count);
            }
            continue;
        }
        if (waitresult._notify === var_ffec0c46 || waitresult._notify === var_fcd005cc) {
            weaponslotid = isdefined(waitresult.slotid) ? array(17 + 1, 17 + 1 + 8 + 1, 17 + 1 + 8 + 1 + 8 + 1)[waitresult.slotid] : function_d768ea30(localclientnum);
            if (isdefined(weaponslotid)) {
                networkid = item_world_util::function_970b8d86(weaponslotid);
                function_97fedb0d(localclientnum, 5, networkid);
            }
            continue;
        }
        if (waitresult._notify === var_46a7a0e3 || waitresult._notify === var_3d759450) {
            weaponslotid = isdefined(waitresult.slotid) ? array(17 + 1, 17 + 1 + 8 + 1, 17 + 1 + 8 + 1 + 8 + 1)[waitresult.slotid] : function_d768ea30(localclientnum);
            if (isdefined(weaponslotid)) {
                networkid = item_world_util::function_970b8d86(weaponslotid);
                function_97fedb0d(localclientnum, 8, networkid);
            }
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x6 linked
// Checksum 0x243ae3be, Offset: 0x2fc8
// Size: 0x1d0
function private function_8edef5cc(localclientnum, inventoryitem) {
    data = item_world::function_a7e98a1a(localclientnum);
    slot = function_daf3ebda(localclientnum, inventoryitem.itementry);
    if (!isdefined(slot)) {
        slot = self function_78ed4455(localclientnum, inventoryitem.itementry);
    }
    if (isdefined(slot)) {
        if (inventoryitem.itementry.type != #"attachment") {
            item = data.inventory.items[slot];
            setuimodelvalue(createuimodel(item.itemuimodel, "focusTarget"), 1);
        }
        return;
    }
    if (function_ad4c6116(localclientnum, inventoryitem.itementry)) {
        for (i = 0; i < data.inventory.var_c212de25; i++) {
            if (data.inventory.items[i].networkid === 32767) {
                setuimodelvalue(createuimodel(data.inventory.items[i].itemuimodel, "focusTarget"), 1);
                break;
            }
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 4, eflags: 0x6 linked
// Checksum 0xe3ffac46, Offset: 0x31a0
// Size: 0x178
function private function_96ce9058(localclientnum, var_6c2b2289, inventoryitem, item) {
    level endon(var_6c2b2289);
    self notify("50c7fcd42d6fe4c7");
    self endon("50c7fcd42d6fe4c7");
    if (isdefined(item.itementry.unlockableitemref)) {
        var_1ce96a13 = array(0, 0, 0, 0, 0);
        while (true) {
            waitframe(1);
            for (i = 0; i < 5; i++) {
                if (isdefined(item.itementry.objectives[i]) && isdefined(item.itementry.objectives[i].var_7e835304)) {
                    value = stats::get_stat_global(localclientnum, item.itementry.objectives[i].var_7e835304);
                    if (isdefined(value) && value != var_1ce96a13[i]) {
                        var_1ce96a13[i] = value;
                        function_39b663b7(localclientnum, inventoryitem, item);
                    }
                }
            }
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0xd9c91e5a, Offset: 0x3320
// Size: 0x99c
function private function_7f35a045(localclientnum) {
    self endon(#"shutdown", #"death");
    self notify("4e3028d4f47b06d6");
    self endon("4e3028d4f47b06d6");
    clientdata = item_world::function_a7e98a1a(localclientnum);
    var_6c2b2289 = "inventory_item_focus" + localclientnum;
    while (true) {
        waitresult = level waittill(var_6c2b2289);
        data = item_world::function_a7e98a1a(localclientnum);
        function_534dcb9c(localclientnum);
        if (isdefined(level.var_6d21daaf[localclientnum])) {
            setuimodelvalue(level.var_6d21daaf[localclientnum], 0);
        }
        foreach (weaponslotid in array(17 + 1, 17 + 1 + 8 + 1, 17 + 1 + 8 + 1 + 8 + 1)) {
            foreach (attachmentoffset in array(1, 2, 3, 4, 5, 6, 7, 8)) {
                var_f9f8c0b5 = weaponslotid + attachmentoffset;
                item = data.inventory.items[var_f9f8c0b5];
                setuimodelvalue(createuimodel(item.itemuimodel, "focusTarget"), 0);
                setuimodelvalue(createuimodel(item.itemuimodel, "notAvailable"), 0);
            }
        }
        setuimodelvalue(createuimodel(data.inventory.items[6].itemuimodel, "focusTarget"), 0);
        setuimodelvalue(createuimodel(data.inventory.items[8].itemuimodel, "focusTarget"), 0);
        setuimodelvalue(createuimodel(data.inventory.items[7].itemuimodel, "focusTarget"), 0);
        setuimodelvalue(createuimodel(data.inventory.items[5].itemuimodel, "focusTarget"), 0);
        for (i = 0; i < 5; i++) {
            setuimodelvalue(createuimodel(data.inventory.items[i].itemuimodel, "focusTarget"), 0);
        }
        if (waitresult._notify !== var_6c2b2289) {
            continue;
        }
        networkid = waitresult.id;
        data.inventory.var_9d51958c = networkid;
        if (networkid === 32767) {
            continue;
        }
        inventoryitem = function_15d578f4(localclientnum, networkid);
        if (isdefined(inventoryitem) && 32767 != inventoryitem.id) {
            item = function_b1702735(inventoryitem.id);
            if (isdefined(item) && isdefined(item.itementry)) {
                self thread function_96ce9058(localclientnum, var_6c2b2289, inventoryitem, item);
            }
        }
        if (!isdefined(inventoryitem) && item_world::function_a5c2a6b8(localclientnum) && self clientfield::get_player_uimodel("hudItems.multiItemPickup.status") == 2) {
            arrayremovevalue(data.groupitems, undefined, 0);
            for (index = 0; index < data.groupitems.size; index++) {
                var_81bb13f5 = data.groupitems[index];
                if (var_81bb13f5.networkid === networkid) {
                    if (var_81bb13f5.itementry.itemtype != #"ammo" && var_81bb13f5.itementry.itemtype != #"weapon") {
                        inventoryitem = var_81bb13f5;
                        function_8edef5cc(localclientnum, inventoryitem);
                    }
                    break;
                }
            }
        }
        if (!isdefined(inventoryitem) || !isdefined(inventoryitem.itementry) || inventoryitem.itementry.itemtype !== #"attachment") {
            continue;
        }
        var_a4250c2b = function_d768ea30(localclientnum);
        foreach (weaponslotid in array(17 + 1, 17 + 1 + 8 + 1, 17 + 1 + 8 + 1 + 8 + 1)) {
            weaponitem = data.inventory.items[weaponslotid];
            if (weaponitem.id === 32767) {
                continue;
            }
            var_ceefbd10 = namespace_a0d533d1::function_837f4a57(inventoryitem.itementry);
            var_f9f8c0b5 = namespace_a0d533d1::function_dfaca25e(weaponslotid, var_ceefbd10);
            attachmentname = namespace_a0d533d1::function_2ced1d34(weaponitem, inventoryitem.itementry);
            var_86364446 = data.inventory.items[var_f9f8c0b5];
            if (isdefined(attachmentname)) {
                if (networkid != var_86364446.networkid) {
                    setuimodelvalue(createuimodel(var_86364446.itemuimodel, "focusTarget"), 1);
                }
                var_fdc9fcff = isdefined(var_a4250c2b) && var_a4250c2b == 17 + 1 ? 17 + 1 + 8 + 1 : 17 + 1;
                if (var_fdc9fcff == weaponslotid) {
                    setuimodelvalue(level.var_6d21daaf[localclientnum], 1);
                }
                continue;
            }
            setuimodelvalue(createuimodel(var_86364446.itemuimodel, "notAvailable"), 1);
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0xe4581d6d, Offset: 0x3cc8
// Size: 0x212
function private function_2ae9881d(localclientnum) {
    self endon(#"shutdown", #"death");
    self notify("36ac09a69c17cb00");
    self endon("36ac09a69c17cb00");
    for (clientdata = item_world::function_a7e98a1a(localclientnum); !isdefined(clientdata); clientdata = item_world::function_a7e98a1a(localclientnum)) {
        waitframe(1);
    }
    var_f3efb06b = "cycle_health" + localclientnum;
    var_db83305d = "cycle_equipment" + localclientnum;
    var_d991a20a = "cycle_scorestreak" + localclientnum;
    var_58ea832 = "cycle_field_upgrade" + localclientnum;
    clientdata.var_cb55ac3c = gettime();
    while (true) {
        waitresult = level waittill(var_f3efb06b, var_db83305d, var_d991a20a, var_58ea832);
        if (gettime() - clientdata.var_cb55ac3c < 200) {
            continue;
        }
        if (waitresult._notify === var_f3efb06b) {
            function_97fedb0d(localclientnum, 10);
        } else if (waitresult._notify === var_db83305d) {
            function_97fedb0d(localclientnum, 9);
        } else if (waitresult._notify === var_d991a20a) {
            function_97fedb0d(localclientnum, 14);
        } else if (waitresult._notify === var_58ea832) {
            function_97fedb0d(localclientnum, 15);
        }
        clientdata.var_cb55ac3c = gettime();
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0x9eb0a5eb, Offset: 0x3ee8
// Size: 0x3d8
function private function_53854c4(localclientnum) {
    if (!isalive(self)) {
        return;
    }
    clientdata = item_world::function_a7e98a1a(localclientnum);
    currentitem = self.var_9b882d22;
    if (!isdefined(currentitem) || !isdefined(currentitem.itementry)) {
        return 0;
    }
    var_512ddf16 = self clientfield::get_player_uimodel("hudItems.multiItemPickup.status") == 2;
    if (item_world_util::function_83c20f83(self.var_9b882d22) && !var_512ddf16) {
        return 0;
    }
    if (var_512ddf16 && self.var_54d9f4a6) {
        return 0;
    }
    origin = getlocalclienteyepos(localclientnum);
    if (distance2dsquared(origin, currentitem.origin) > sqr(128) || abs(origin[2] - currentitem.origin[2]) > 128) {
        return 0;
    }
    if (!isdefined(currentitem.itementry)) {
        return 0;
    }
    var_fc7876fd = 0;
    if (!function_ad4c6116(localclientnum, currentitem.itementry)) {
        swap = 0;
        data = item_world::function_a7e98a1a(localclientnum);
        switch (currentitem.itementry.itemtype) {
        case #"tactical":
        case #"scorestreak":
        case #"equipment":
        case #"field_upgrade":
        case #"perk_tier_3":
        case #"perk_tier_2":
        case #"perk_tier_1":
        case #"health":
            swap = 1;
            break;
        default:
            break;
        }
        if (!swap) {
            return 0;
        }
        function_97fedb0d(localclientnum, 7, currentitem.networkid, 2);
        return 1;
    } else {
        switch (currentitem.itementry.itemtype) {
        case #"tactical":
        case #"weapon":
        case #"scorestreak":
        case #"equipment":
        case #"field_upgrade":
        case #"perk_tier_3":
        case #"perk_tier_2":
        case #"perk_tier_1":
        case #"health":
            var_fc7876fd = 1;
            break;
        }
    }
    function_97fedb0d(localclientnum, 7, currentitem.networkid, var_fc7876fd);
    return 1;
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0xa4a90f26, Offset: 0x42c8
// Size: 0x12c
function private function_6d9d9cd7(slotid) {
    assert(isint(slotid));
    foreach (slot in array(5, 6, 12, 7, 13, 8, 17 + 1, 17 + 1 + 8 + 1, 17 + 1 + 8 + 1 + 8 + 1, 14, 15, 16, 17)) {
        if (slot == slotid) {
            return true;
        }
    }
    return false;
}

// Namespace item_inventory/item_inventory
// Params 0, eflags: 0x6 linked
// Checksum 0x3135af48, Offset: 0x4400
// Size: 0x740
function private function_d2f05352() {
    level endon(#"shutdown");
    waitframe(1);
    while (true) {
        players = getlocalplayers();
        time = gettime();
        foreach (player in players) {
            if (!isalive(player)) {
                continue;
            }
            localclientnum = player getlocalclientnumber();
            if (!isdefined(localclientnum)) {
                continue;
            }
            data = item_world::function_a7e98a1a(localclientnum);
            if (!isdefined(data) || !isdefined(data.inventory) || !isdefined(data.inventory.items)) {
                continue;
            }
            consumed = data.inventory.consumed;
            var_3ef517e = data.inventory.consumed.items;
            var_95dcc077 = 0;
            for (i = 0; i < var_3ef517e.size; i++) {
                item = var_3ef517e[i];
                if (item.endtime <= time) {
                    var_95dcc077 = 1;
                    arrayremoveindex(var_3ef517e, i);
                    playsound(localclientnum, #"hash_4c7a6e162e2f26a0");
                    continue;
                }
            }
            var_cfa0e915 = [];
            for (i = 0; i < var_3ef517e.size; i++) {
                item = var_3ef517e[i];
                if (isdefined(var_cfa0e915[item.itementry.name])) {
                    continue;
                }
                var_cfa0e915[item.itementry.name] = 1;
                duration = item.endtime - item.starttime;
                timeremaining = item.endtime - time;
                if (var_95dcc077) {
                    item.itemuimodel = createuimodel(consumed.uimodel, "item" + var_cfa0e915.size - 1);
                    function_1a99656a(localclientnum, item, item.networkid, item.id, 0, 0, 0, 0);
                }
                frac = 1;
                if (duration > 0) {
                    frac = 1 - timeremaining / duration;
                }
                setuimodelvalue(createuimodel(item.itemuimodel, "endStartFraction"), frac, 0);
            }
            var_f3518190 = data.inventory.var_f3518190;
            if (isdefined(var_f3518190) && var_f3518190.item.id != 32767) {
                duration = var_f3518190.castend - var_f3518190.caststart;
                timeremaining = var_f3518190.castend - time;
                if (timeremaining <= 0) {
                    function_97fedb0d(localclientnum, 4, var_f3518190.item.networkid);
                    setuimodelvalue(createuimodel(var_f3518190.item.itemuimodel, "castTimeFraction"), 0, 0);
                    data.inventory.var_f3518190 = undefined;
                    if (var_f3518190.item.networkid == data.inventory.items[11].networkid) {
                        var_95dcc077 = 1;
                        if (!function_e23e5e85(localclientnum)) {
                            data.inventory.var_4d4ec560 = undefined;
                        }
                    }
                } else {
                    setuimodelvalue(createuimodel(var_f3518190.item.itemuimodel, "castTimeFraction"), 1 - timeremaining / duration, 0);
                    uimodel = getuimodel(data.inventory.consumed.uimodel, "item" + function_3fe6ef04(localclientnum));
                    if (isdefined(uimodel)) {
                        setuimodelvalue(createuimodel(uimodel, "castTimeFraction"), 1 - timeremaining / duration, 0);
                    }
                }
            }
            for (index = 0; index < 5; index++) {
                item = data.inventory.items[index];
                if (!isdefined(item.endtime)) {
                    continue;
                }
                duration = item.endtime - item.starttime;
                timeremaining = item.endtime - time;
                frac = 1;
                if (duration > 0) {
                    frac = 1 - timeremaining / duration;
                }
                setuimodelvalue(createuimodel(item.itemuimodel, "endStartFraction"), frac, 0);
            }
            if (var_95dcc077) {
                setuimodelvalue(consumed.var_a25538fb, var_cfa0e915.size);
                function_9f5d2dc8(localclientnum);
            }
        }
        players = undefined;
        waitframe(1);
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0x1cb32a2c, Offset: 0x4b48
// Size: 0x72
function private function_fe189514(itementry) {
    if (isdefined(itementry) && isdefined(itementry.weapon)) {
        return (isdefined(itementry.weapon.name) ? itementry.weapon.name : #"");
    }
    return #"";
}

// Namespace item_inventory/item_inventory
// Params 10, eflags: 0x6 linked
// Checksum 0x9c8647b2, Offset: 0x4bc8
// Size: 0x1fcc
function private function_1a99656a(localclientnum, inventoryitem, networkid, itemid, count, totalcount, availableaction, var_e35261f6 = 1, var_189fcf49 = 0, var_1204dfe9 = 1) {
    data = undefined;
    if (itemid == 32767 && isdefined(inventoryitem.networkid) && inventoryitem.networkid != 32767) {
        data = level.var_d342a3fd[localclientnum];
    } else if (itemid != 32767 && inventoryitem.networkid === 32767) {
        data = level.var_d342a3fd[localclientnum];
    } else if (isdefined(inventoryitem.itementry) && (inventoryitem.itementry.itemtype === #"armor_shard" || inventoryitem.itementry.itemtype === #"scorestreak" || item_world_util::function_a57773a4(inventoryitem.itementry))) {
        data = level.var_d342a3fd[localclientnum];
    }
    var_dbce1e30 = 0;
    if (inventoryitem.id === itemid && isdefined(inventoryitem.count) && inventoryitem.count > count) {
        var_dbce1e30 = 1;
        if (isdefined(inventoryitem.itementry) && inventoryitem.itementry.itemtype === #"armor_shard") {
            clientdata = item_world::function_a7e98a1a(localclientnum);
            if (isdefined(clientdata) && isdefined(clientdata.inventory) && networkid === clientdata.inventory.var_4d4ec560) {
                clientdata.inventory.var_4d4ec560 = undefined;
            }
        }
    }
    player = function_27673a7(localclientnum);
    var_1bd87f37 = 1;
    if (isdefined(inventoryitem.itementry) && inventoryitem.itementry.itemtype == #"armor_shard" && networkid == 32767 && var_1204dfe9 == 0) {
        var_1bd87f37 = 0;
    }
    var_e3f9d92b = item_world_util::function_a57773a4(inventoryitem.itementry);
    var_75b43169 = isdefined(inventoryitem.itementry) && inventoryitem.itementry.itemtype === #"scorestreak";
    var_d5042302 = isdefined(inventoryitem.itementry) && inventoryitem.itementry.itemtype === #"attachment";
    var_1c54cff7 = inventoryitem.itementry;
    if (var_1bd87f37) {
        inventoryitem.id = itemid;
        inventoryitem.networkid = networkid;
    } else {
        itemid = inventoryitem.id;
        networkid = inventoryitem.networkid;
    }
    inventoryitem.count = count;
    inventoryitem.itementry = 32767 == itemid ? undefined : function_b1702735(itemid).itementry;
    inventoryitem.availableaction = availableaction;
    inventoryitem.consumable = isdefined(inventoryitem.itementry) ? inventoryitem.itementry.consumable : undefined;
    inventoryitem.quickequip = 0;
    if (var_e35261f6) {
        inventoryitem.starttime = undefined;
        inventoryitem.endtime = undefined;
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "endStartFraction"), 0, 0);
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "castTimeFraction"), 0, 0);
    }
    setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "id"), inventoryitem.networkid);
    setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "realId"), inventoryitem.id);
    setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "stackCount"), count);
    if (isdefined(inventoryitem.itementry) && inventoryitem.itementry.itemtype == #"armor_shard") {
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "totalCount"), count);
    } else {
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "totalCount"), totalcount);
    }
    item = undefined;
    if (itemid != 32767) {
        item = function_b1702735(itemid);
    }
    if (itemid == 32767 || !isdefined(item.itementry)) {
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "name"), #"");
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "icon"), #"blacktransparent");
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "rarity"), "None");
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "availableAction"), availableaction);
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "stowedAvailableAction"), 0);
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "canTransferAttachment"), 0);
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "consumable"), 0);
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "assetName"), #"");
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "description"), #"");
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "castTime"), 0);
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "type"), "");
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "equipped"), 0);
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "endStartFraction"), 0, 0);
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "castTimeFraction"), 0, 0);
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "notAvailable"), 0);
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "notAccessible"), 0);
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "focusTarget"), 0);
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "quickEquip"), 0);
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "cycle"), 0);
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "armorMax"), 0);
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "hasAttachments"), 0);
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "supportsAttachments"), 0);
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "unlockableItemRef"), #"");
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "quote"), #"");
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "rewardName"), #"");
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "ammoType"), #"");
        function_442857e2(localclientnum, var_1c54cff7);
    } else {
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "name"), item_world::get_item_name(item.itementry));
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "icon"), isdefined(item.itementry.icon) ? item.itementry.icon : #"blacktransparent");
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "rarity"), isdefined(item.itementry.rarity) ? item.itementry.rarity : "None");
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "assetName"), function_fe189514(item.itementry));
        armormax = 0;
        if (isdefined(item.itementry) && item.itementry.itemtype == #"armor") {
            armormax = isdefined(item.itementry.amount) ? item.itementry.amount : 0;
        }
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "armorMax"), armormax);
        description = isdefined(item.itementry.description) ? item.itementry.description : #"";
        if (getdvar(#"hash_4a5fd7d94cfc9dfd", 0) == 1) {
            if (isdefined(item.itementry.unlockableitemref)) {
                if (isdefined(item.itementry.var_a51bc1f7)) {
                    description = isdefined(item.itementry.var_a51bc1f7) ? item.itementry.var_a51bc1f7 : #"";
                }
            }
        }
        if (description == #"" && isdefined(item.itementry.weapon)) {
            itemindex = getitemindexfromref(item.itementry.weapon.name);
            var_97dcd0a5 = getunlockableiteminfofromindex(itemindex);
            if (isdefined(var_97dcd0a5) && isdefined(var_97dcd0a5.description)) {
                description = var_97dcd0a5.description;
            }
        }
        if (isdefined(item.itementry) && item.itementry.itemtype === #"resource") {
            if (function_88da0c8e(localclientnum)) {
                setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "notAccessible"), 1);
                description = isdefined(item.itementry.var_3b8219fd) ? item.itementry.var_3b8219fd : description;
            }
        }
        if (isdefined(item.itementry) && item.itementry.itemtype === #"weapon") {
            supportsattachments = namespace_a0d533d1::function_4bd83c04(item);
            setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "supportsAttachments"), supportsattachments);
            var_754fe8c5 = getweaponammotype(item.itementry.weapon);
            if (isdefined(level.var_c53d118f) && isdefined(level.var_c53d118f[var_754fe8c5])) {
                setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "ammoType"), level.var_c53d118f[var_754fe8c5]);
            } else {
                setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "ammoType"), #"");
            }
        }
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "description"), description);
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "castTime"), isdefined(item.itementry.casttime) ? item.itementry.casttime : 0);
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "type"), item.itementry.itemtype);
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "equipped"), isdefined(inventoryitem.endtime));
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "availableAction"), availableaction);
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "stowedAvailableAction"), 0);
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "consumable"), 0);
        if (isdefined(item.itementry.unlockableitemref)) {
            function_39b663b7(localclientnum, inventoryitem, item);
        } else {
            setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "unlockableItemRef"), #"");
            setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "quote"), #"");
            setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "rewardName"), #"");
        }
        if (!var_189fcf49) {
            function_442857e2(localclientnum, isdefined(inventoryitem.itementry) ? inventoryitem.itementry : var_1c54cff7);
        }
        if (count != 0 && !var_dbce1e30) {
            function_8ffee46f(localclientnum, inventoryitem);
        }
    }
    if (isdefined(data)) {
        canusequickinventory = 0;
        filledslots = 0;
        for (i = 0; i < data.inventory.var_c212de25; i++) {
            if (data.inventory.items[i].networkid != 32767) {
                if (data.inventory.items[i].availableaction == 1 || data.inventory.items[i].availableaction == 4 || data.inventory.items[i].availableaction == 2 || data.inventory.items[i].availableaction == 6) {
                    if (is_true(data.inventory.items[i].quickequip)) {
                        canusequickinventory |= 1;
                    }
                }
                filledslots++;
            }
        }
        shardcount = 0;
        if (data.inventory.items[11].networkid != 32767 && data.inventory.items[11].count > 0) {
            filledslots++;
            canusequickinventory |= 1;
        }
        if (isdefined(level.var_37076fe8)) {
            shoulddisable = [[ level.var_37076fe8 ]](player);
            if (shoulddisable) {
                canusequickinventory = 0;
            }
        }
        inventoryuimodel = function_1df4c3b0(localclientnum, #"hash_159966ba825013a2");
        setuimodelvalue(createuimodel(inventoryuimodel, "filledSlots"), filledslots);
        setuimodelvalue(createuimodel(inventoryuimodel, "canUseQuickInventory"), canusequickinventory);
        var_a966c73b = data.inventory.items[10];
        if (var_a966c73b.networkid != 32767) {
            setuimodelvalue(createuimodel(inventoryuimodel, "resourceCount"), 2);
        } else {
            setuimodelvalue(createuimodel(inventoryuimodel, "resourceCount"), 1);
        }
        if (var_e3f9d92b) {
            function_950ae846(localclientnum);
        }
        if (var_75b43169) {
            function_b5b6a9a4(localclientnum);
        }
        if (itemid !== 32767 && isdefined(inventoryitem.itementry) && inventoryitem.itementry.itemtype === #"weapon") {
            foreach (weaponslotid in array(17 + 1, 17 + 1 + 8 + 1, 17 + 1 + 8 + 1 + 8 + 1)) {
                if (data.inventory.items[weaponslotid].networkid === networkid) {
                    attachmentslots = array("attachSlotOptics", "attachSlotMuzzle", "attachSlotBarrel", "attachSlotUnderbarrel", "attachSlotBody", "attachSlotMagazine", "attachSlotHandle", "attachSlotStock");
                    foreach (index, attachmentoffset in array(1, 2, 3, 4, 5, 6, 7, 8)) {
                        slot = attachmentslots[index];
                        var_f9f8c0b5 = namespace_a0d533d1::function_dfaca25e(weaponslotid, attachmentoffset);
                        attachmentitem = data.inventory.items[var_f9f8c0b5];
                        if (!isdefined(inventoryitem.itementry.(slot))) {
                            setuimodelvalue(createuimodel(attachmentitem.itemuimodel, "disabled"), 1);
                            continue;
                        }
                        setuimodelvalue(createuimodel(attachmentitem.itemuimodel, "disabled"), 0);
                    }
                    break;
                }
            }
        }
        if (itemid !== 32767 && isdefined(inventoryitem.itementry) && inventoryitem.itementry.itemtype === #"attachment") {
            var_f9f8c0b5 = item_world_util::function_808be9a3(inventoryitem.networkid);
            var_2cf6fb05 = undefined;
            foreach (weaponslotid in array(17 + 1, 17 + 1 + 8 + 1, 17 + 1 + 8 + 1 + 8 + 1)) {
                if (namespace_a0d533d1::function_398b9770(weaponslotid, var_f9f8c0b5)) {
                    var_2cf6fb05 = weaponslotid;
                    break;
                }
            }
            if (isdefined(var_2cf6fb05)) {
                function_cb7cfe5b(localclientnum, var_2cf6fb05, inventoryitem);
                hasattachments = has_attachments(localclientnum, var_2cf6fb05);
                var_508262d4 = data.inventory.items[var_2cf6fb05];
                if (hasattachments) {
                    setuimodelvalue(createuimodel(var_508262d4.itemuimodel, "hasAttachments"), 1);
                } else {
                    setuimodelvalue(createuimodel(var_508262d4.itemuimodel, "hasAttachments"), 0);
                }
            } else {
                var_a4250c2b = player function_d768ea30(localclientnum);
                function_cb7cfe5b(localclientnum, var_a4250c2b, inventoryitem);
            }
            function_ce628f27(localclientnum);
            return;
        }
        if (var_d5042302) {
            var_a4250c2b = player function_d768ea30(localclientnum);
            hasattachments = has_attachments(localclientnum, var_a4250c2b);
            if (isdefined(var_a4250c2b)) {
                var_508262d4 = data.inventory.items[var_a4250c2b];
                if (hasattachments) {
                    setuimodelvalue(createuimodel(var_508262d4.itemuimodel, "hasAttachments"), 1);
                } else {
                    setuimodelvalue(createuimodel(var_508262d4.itemuimodel, "hasAttachments"), 0);
                }
            }
            function_deddbdf0(localclientnum, var_a4250c2b);
            function_ce628f27(localclientnum);
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 6, eflags: 0x6 linked
// Checksum 0x31bf784b, Offset: 0x6ba0
// Size: 0x264
function private function_2ecc089c(localclientnum, var_67bed85d, type, var_bd4c63f1, var_9286261, var_a3a763a3) {
    data = item_world::function_a7e98a1a(localclientnum);
    if (!isdefined(data)) {
        return;
    }
    currentitem = data.inventory.items[var_67bed85d];
    var_7007b688 = [];
    if (isdefined(currentitem.itementry)) {
        var_7007b688 = item_world_util::function_4cbb6617(data.inventory, type, var_bd4c63f1, currentitem.itementry);
    }
    for (index = 0; index < var_7007b688.size && index < var_9286261; index++) {
        item = var_a3a763a3[index];
        inventoryitem = var_7007b688[index];
        function_1a99656a(localclientnum, item, inventoryitem.networkid, inventoryitem.id, inventoryitem.count, function_bba770de(localclientnum, inventoryitem.itementry), inventoryitem.availableaction, undefined, 1);
        setuimodelvalue(createuimodel(item.itemuimodel, "cycle"), 1);
        forcenotifyuimodel(createuimodel(item.itemuimodel, "totalCount"));
    }
    for (index = var_7007b688.size; index < var_9286261; index++) {
        item = var_a3a763a3[index];
        function_1a99656a(localclientnum, item, 32767, 32767, 0, 0, 0, undefined, 1);
        setuimodelvalue(createuimodel(item.itemuimodel, "cycle"), 0);
    }
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x6 linked
// Checksum 0x6140b662, Offset: 0x6e10
// Size: 0xc7c
function private function_442857e2(localclientnum, itementry) {
    if (!isdefined(itementry)) {
        return;
    }
    if (itementry.itemtype !== #"equipment" && itementry.itemtype !== #"field_upgrade" && itementry.itemtype !== #"tactical" && itementry.itemtype !== #"generic" && itementry.itemtype !== #"health" && itementry.itemtype !== #"killstreak" && itementry.itemtype !== #"scorestreak" && itementry.itemtype !== #"attachment" && itementry.itemtype !== #"armor_shard") {
        return;
    }
    data = item_world::function_a7e98a1a(localclientnum);
    if (!isdefined(data)) {
        return;
    }
    var_6962e967 = 0;
    if (itementry.itemtype == #"attachment") {
        player = function_27673a7(localclientnum);
        var_a4250c2b = player function_d768ea30(localclientnum);
        if (isdefined(var_a4250c2b)) {
            var_55022c4f = array(1, 2, 3, 4, 5, 6, 7, 8);
            for (attachmentindex = 0; attachmentindex < var_55022c4f.size; attachmentindex++) {
                attachmentoffset = var_55022c4f[attachmentindex];
                var_f9f8c0b5 = namespace_a0d533d1::function_dfaca25e(var_a4250c2b, attachmentoffset);
                inventoryitem = data.inventory.items[var_f9f8c0b5];
                if (inventoryitem.networkid != 32767 && namespace_a0d533d1::function_73593286(itementry, inventoryitem.itementry)) {
                    var_6962e967 = 1;
                    break;
                }
            }
        }
    } else if (itementry.itemtype == #"armor_shard") {
        inventoryitem = data.inventory.items[11];
    } else {
        foreach (slot in array(5, 6, 12, 7, 13, 8, 17 + 1, 17 + 1 + 8 + 1, 17 + 1 + 8 + 1 + 8 + 1, 14, 15, 16, 17)) {
            inventoryitem = data.inventory.items[slot];
            if (inventoryitem.networkid != 32767 && namespace_a0d533d1::function_73593286(itementry, inventoryitem.itementry)) {
                var_6962e967 = 1;
                break;
            }
        }
    }
    totalcount = function_bba770de(localclientnum, itementry);
    if (itementry.itemtype == #"armor_shard") {
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "quickEquip"), totalcount > 0);
    } else {
        var_6d4bb070 = 0;
        for (index = 0; index < 5; index++) {
            inventoryitem = data.inventory.items[index];
            if (inventoryitem.networkid == 32767 || !namespace_a0d533d1::function_73593286(itementry, inventoryitem.itementry)) {
                continue;
            }
            if (var_6962e967 || var_6d4bb070 || isdefined(inventoryitem.endtime)) {
                setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "quickEquip"), 0);
                inventoryitem.quickequip = 0;
            } else if (!var_6d4bb070) {
                setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "quickEquip"), 1);
                inventoryitem.quickequip = 1;
                var_6d4bb070 = 1;
            }
            setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "totalCount"), totalcount);
        }
    }
    if (itementry.itemtype === #"health") {
        function_2ecc089c(localclientnum, 5, #"health", array(#"health_item_small", #"health_item_medium", #"health_item_large", #"health_item_squad", #"hash_20699a922abaf2e1"), 2, data.inventory.healthitems);
        return;
    }
    if (itementry.itemtype === #"equipment") {
        function_2ecc089c(localclientnum, 7, #"equipment", array(#"frag_grenade_wz_item", #"frag_t9_item", #"frag_t9_item_sr", #"cluster_semtex_wz_item", #"semtex_t9_item", #"semtex_t9_item_sr", #"acid_bomb_wz_item", #"molotov_wz_item", #"molotov_t9_item", #"molotov_t9_item_sr", #"wraithfire_wz_item", #"hatchet_wz_item", #"hatchet_t9_item", #"hatchet_t9_item_sr", #"tomahawk_t8_wz_item", #"seeker_mine_wz_item", #"dart_wz_item", #"hawk_wz_item", #"ultimate_turret_wz_item", #"hash_49bb95f2912e68ad", #"hash_3c9430c4ac7d082e", #"hash_6a5294b915f32d32", #"hash_6cd8041bb6cd21b1", #"hash_6a07ccefe7f84985", #"hash_17f8849a56eba20f", #"satchel_charge_t9_item", #"satchel_charge_t9_item_sr", #"hash_2c9b75b17410f2de", #"grapple_wz_item", #"hash_12fde8b0da04d262", #"barricade_wz_item", #"spiked_barrier_wz_item", #"trophy_system_wz_item", #"concertina_wire_wz_item", #"sensor_dart_wz_item", #"supply_pod_wz_item", #"trip_wire_wz_item", #"cymbal_monkey_wz_item", #"homunculus_wz_item", #"vision_pulse_wz_item", #"flare_gun_wz_item", #"wz_snowball", #"wz_waterballoon", #"hash_1ae9ade20084359f"), 2, data.inventory.equipmentitems);
        return;
    }
    if (itementry.itemtype === #"field_upgrade") {
        function_2ecc089c(localclientnum, 12, #"field_upgrade", array(#"hash_3f154f45479130ed", #"hash_2c9b75b17410f2de", #"field_upgrade_frost_blast_item_sr", #"field_upgrade_frost_blast_2_item_sr", #"field_upgrade_frost_blast_3_item_sr", #"field_upgrade_frost_blast_4_item_sr", #"field_upgrade_frost_blast_5_item_sr"), 2, data.inventory.var_d4de469a);
        return;
    }
    if (itementry.itemtype === #"tactical") {
        function_2ecc089c(localclientnum, 13, #"tactical", array(), 2, data.inventory.var_d4de469a);
        return;
    }
    if (itementry.itemtype === #"scorestreak") {
        function_2ecc089c(localclientnum, 17, #"scorestreak", array(#"hash_6eb09ea5da35e18f", #"hash_654445f6cc7a7e1c", #"item_survival_scorestreak_pineapple_gun", #"item_survival_scorestreak_deathmachine", #"item_survival_scorestreak_flamethrower", #"item_survival_scorestreak_hand_cannon", #"item_survival_scorestreak_ultimate_turret", #"hash_18fa1f3e4e43437c"), 2, data.inventory.var_cb8b68cf);
    }
}

// Namespace item_inventory/item_inventory
// Params 3, eflags: 0x6 linked
// Checksum 0x1104d0a8, Offset: 0x7a98
// Size: 0x56c
function private function_39b663b7(localclientnum, inventoryitem, item) {
    var_409a5960 = function_1df4c3b0(localclientnum, #"quest_info");
    itemindex = getitemindexfromref(item.itementry.unlockableitemref);
    if (itemindex !== 0) {
        var_10d25c94 = createuimodel(var_409a5960, itemindex);
        if (!isdefined(getuimodel(var_10d25c94, "completed"))) {
            setuimodelvalue(createuimodel(var_10d25c94, "completed"), 0);
        }
        for (i = 0; i < 5; i++) {
            description = undefined;
            objectivemodel = createuimodel(var_10d25c94, "objective" + i + 1);
            if (!isdefined(objectivemodel)) {
                continue;
            }
            if (!isdefined(getuimodel(objectivemodel, "state"))) {
                setuimodelvalue(createuimodel(objectivemodel, "state"), 0);
            }
            if (isdefined(item.itementry.objectives[i])) {
                if (isdefined(item.itementry.objectives[i].teamsizedescriptions) && item.itementry.objectives[i].teamsizedescriptions.size > 0) {
                    numplayers = getgametypesetting("maxTeamPlayers");
                    foreach (objectivestruct in item.itementry.objectives[i].teamsizedescriptions) {
                        if (objectivestruct.teamsize == numplayers) {
                            description = objectivestruct.description;
                            break;
                        }
                    }
                }
                if (!isdefined(description)) {
                    description = item.itementry.objectives[i].description;
                }
                var_2571317b = 0;
                if (isdefined(item.itementry.objectives[i].var_7e835304)) {
                    var_2571317b = setuimodelvalue(createuimodel(objectivemodel, "unlockProgress"), stats::get_stat_global(localclientnum, item.itementry.objectives[i].var_7e835304));
                } else {
                    setuimodelvalue(createuimodel(objectivemodel, "unlockProgress"), -1);
                }
                if (!setuimodelvalue(createuimodel(objectivemodel, "description"), description) && var_2571317b) {
                    forcenotifyuimodel(createuimodel(objectivemodel, "description"));
                }
                continue;
            }
            setuimodelvalue(createuimodel(objectivemodel, "unlockProgress"), -1);
            setuimodelvalue(createuimodel(objectivemodel, "description"), #"");
        }
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "unlockableItemRef"), item.itementry.unlockableitemref);
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "quote"), item.itementry.var_e8b98a8a);
        setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "rewardName"), item.itementry.rewardname);
    }
}

// Namespace item_inventory/item_inventory
// Params 3, eflags: 0x6 linked
// Checksum 0x279ed4ce, Offset: 0x8010
// Size: 0x634
function private function_cb7cfe5b(localclientnum, var_a4250c2b, var_ac517de7) {
    if (var_ac517de7.networkid === 32767 || !isdefined(var_ac517de7.itementry) || var_ac517de7.itementry.itemtype !== #"attachment") {
        return;
    }
    if (!isdefined(var_a4250c2b)) {
        setuimodelvalue(createuimodel(var_ac517de7.itemuimodel, "availableAction"), 0);
        setuimodelvalue(createuimodel(var_ac517de7.itemuimodel, "notAvailable"), 1);
        return;
    }
    data = item_world::function_a7e98a1a(localclientnum);
    var_ac044d12 = undefined;
    var_fdc9fcff = undefined;
    var_ffd2f6e4 = undefined;
    var_ac044d12 = data.inventory.items[var_a4250c2b];
    var_fdc9fcff = var_a4250c2b == 17 + 1 ? 17 + 1 + 8 + 1 : 17 + 1;
    var_ffd2f6e4 = data.inventory.items[var_fdc9fcff];
    noweapon = !isdefined(var_ac044d12) || var_ac044d12.networkid === 32767 || !isdefined(var_ac044d12.itementry) || var_ac044d12.itementry.itemtype !== #"weapon";
    var_cdef462d = !isdefined(var_ffd2f6e4) || var_ffd2f6e4.networkid === 32767 || !isdefined(var_ffd2f6e4.itementry) || var_ffd2f6e4.itementry.itemtype !== #"weapon";
    if (noweapon) {
        setuimodelvalue(createuimodel(var_ac517de7.itemuimodel, "availableAction"), 0);
        setuimodelvalue(createuimodel(var_ac517de7.itemuimodel, "notAvailable"), 1);
        if (var_cdef462d) {
            setuimodelvalue(createuimodel(var_ac517de7.itemuimodel, "stowedAvailableAction"), 0);
            return;
        }
    }
    var_ceefbd10 = namespace_a0d533d1::function_837f4a57(var_ac517de7.itementry);
    if (isdefined(namespace_a0d533d1::function_2ced1d34(var_ac044d12, var_ac517de7.itementry))) {
        var_f9f8c0b5 = namespace_a0d533d1::function_dfaca25e(var_a4250c2b, var_ceefbd10);
        if (data.inventory.items[var_f9f8c0b5].networkid !== 32767) {
            setuimodelvalue(createuimodel(var_ac517de7.itemuimodel, "availableAction"), 3);
        } else {
            setuimodelvalue(createuimodel(var_ac517de7.itemuimodel, "availableAction"), 2);
        }
        setuimodelvalue(createuimodel(var_ac517de7.itemuimodel, "notAvailable"), 0);
        function_442857e2(localclientnum, var_ac517de7.itementry);
    } else {
        setuimodelvalue(createuimodel(var_ac517de7.itemuimodel, "availableAction"), 0);
        setuimodelvalue(createuimodel(var_ac517de7.itemuimodel, "notAvailable"), 1);
    }
    if (var_cdef462d) {
        setuimodelvalue(createuimodel(var_ac517de7.itemuimodel, "stowedAvailableAction"), 0);
        return;
    }
    if (isdefined(namespace_a0d533d1::function_2ced1d34(var_ffd2f6e4, var_ac517de7.itementry))) {
        var_50f8a92d = namespace_a0d533d1::function_dfaca25e(var_fdc9fcff, var_ceefbd10);
        if (data.inventory.items[var_50f8a92d].networkid !== 32767) {
            setuimodelvalue(createuimodel(var_ac517de7.itemuimodel, "stowedAvailableAction"), 3);
        } else {
            setuimodelvalue(createuimodel(var_ac517de7.itemuimodel, "stowedAvailableAction"), 2);
        }
        return;
    }
    setuimodelvalue(createuimodel(var_ac517de7.itemuimodel, "stowedAvailableAction"), 0);
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x6 linked
// Checksum 0xe8e0fe3f, Offset: 0x8650
// Size: 0x9c
function private function_deddbdf0(localclientnum, var_f7956021) {
    data = item_world::function_a7e98a1a(localclientnum);
    for (itemindex = 0; itemindex < data.inventory.var_c212de25; itemindex++) {
        inventoryitem = data.inventory.items[itemindex];
        function_cb7cfe5b(localclientnum, var_f7956021, inventoryitem);
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0xd36d2851, Offset: 0x86f8
// Size: 0x14c
function private function_950ae846(localclientnum) {
    data = item_world::function_a7e98a1a(localclientnum);
    for (itemindex = 0; itemindex < data.inventory.var_c212de25; itemindex++) {
        inventoryitem = data.inventory.items[itemindex];
        if (!isdefined(inventoryitem.itementry) || !item_world_util::function_a57773a4(inventoryitem.itementry)) {
            continue;
        }
        availableaction = function_30697356(localclientnum, inventoryitem.itementry);
        if (inventoryitem.availableaction != availableaction) {
            totalcount = function_bba770de(localclientnum, inventoryitem.itementry);
            function_1a99656a(localclientnum, inventoryitem, inventoryitem.networkid, inventoryitem.id, inventoryitem.count, totalcount, availableaction);
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0x83a86923, Offset: 0x8850
// Size: 0x14c
function private function_b5b6a9a4(localclientnum) {
    data = item_world::function_a7e98a1a(localclientnum);
    for (itemindex = 0; itemindex < data.inventory.var_c212de25; itemindex++) {
        inventoryitem = data.inventory.items[itemindex];
        if (!isdefined(inventoryitem.itementry) || inventoryitem.itementry.itemtype != #"scorestreak") {
            continue;
        }
        availableaction = function_30697356(localclientnum, inventoryitem.itementry);
        if (inventoryitem.availableaction != availableaction) {
            totalcount = function_bba770de(localclientnum, inventoryitem.itementry);
            function_1a99656a(localclientnum, inventoryitem, inventoryitem.networkid, inventoryitem.id, inventoryitem.count, totalcount, availableaction);
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0xdb5f5d47, Offset: 0x89a8
// Size: 0x42c
function private function_ce628f27(localclientnum) {
    data = item_world::function_a7e98a1a(localclientnum);
    foreach (var_a4250c2b in array(17 + 1, 17 + 1 + 8 + 1, 17 + 1 + 8 + 1 + 8 + 1)) {
        var_ac044d12 = data.inventory.items[var_a4250c2b];
        var_fdc9fcff = var_a4250c2b == 17 + 1 ? 17 + 1 + 8 + 1 : 17 + 1;
        var_ffd2f6e4 = data.inventory.items[var_fdc9fcff];
        foreach (attachmentoffset in array(1, 2, 3, 4, 5, 6, 7, 8)) {
            var_f9f8c0b5 = var_a4250c2b + attachmentoffset;
            var_50f8a92d = var_fdc9fcff + attachmentoffset;
            var_ac517de7 = data.inventory.items[var_f9f8c0b5];
            var_3c2da577 = data.inventory.items[var_50f8a92d];
            if (var_ac517de7.networkid === 32767 || !isdefined(var_ac517de7.itementry)) {
                continue;
            }
            if (var_3c2da577.networkid === 32767 || !isdefined(var_3c2da577.itementry)) {
                if (isdefined(var_ffd2f6e4) && isdefined(var_ffd2f6e4.itementry) && isdefined(namespace_a0d533d1::function_2ced1d34(var_ffd2f6e4, var_ac517de7.itementry))) {
                    setuimodelvalue(createuimodel(var_ac517de7.itemuimodel, "canTransferAttachment"), 2);
                    continue;
                }
                setuimodelvalue(createuimodel(var_ac517de7.itemuimodel, "canTransferAttachment"), 0);
                continue;
            }
            if (isdefined(namespace_a0d533d1::function_2ced1d34(var_ffd2f6e4, var_ac517de7.itementry)) && isdefined(namespace_a0d533d1::function_2ced1d34(var_ac044d12, var_3c2da577.itementry))) {
                setuimodelvalue(createuimodel(var_ac517de7.itemuimodel, "canTransferAttachment"), 3);
                continue;
            }
            setuimodelvalue(createuimodel(var_ac517de7.itemuimodel, "canTransferAttachment"), 0);
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0x31d7605a, Offset: 0x8de0
// Size: 0x58
function is_inventory_item(localclientnum, itementry) {
    data = item_world::function_a7e98a1a(localclientnum);
    if (itementry.itemtype == #"ammo") {
        return false;
    }
    return true;
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0x5342b6c9, Offset: 0x8e40
// Size: 0x2c
function function_a303c8ef(localclientnum, itementry) {
    return isdefined(function_daf3ebda(localclientnum, itementry));
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0xe7867b8e, Offset: 0x8e78
// Size: 0x336
function function_daf3ebda(localclientnum, itementry) {
    if (function_7d5553ac()) {
        return undefined;
    }
    if (!is_true(itementry.stackable)) {
        return undefined;
    }
    data = item_world::function_a7e98a1a(localclientnum);
    maxstack = namespace_a0d533d1::function_cfa794ca(data.inventory.var_7658cbec, itementry);
    if (maxstack <= 1) {
        return undefined;
    }
    clientdata = item_world::function_a7e98a1a(localclientnum);
    if (itementry.itemtype == #"resource") {
        if (item_world_util::function_41f06d9d(itementry) && isdefined(clientdata.inventory) && clientdata.inventory.items[9].count < maxstack) {
            return 9;
        }
        var_ee79c3a4 = clientdata.inventory.items[10];
        if (!isdefined(var_ee79c3a4.id) || var_ee79c3a4.id == 32767) {
            return 10;
        }
        if (var_ee79c3a4.itementry.name !== itementry.name) {
            return undefined;
        }
        if (var_ee79c3a4.count < maxstack) {
            return 10;
        }
        return undefined;
    }
    if (itementry.itemtype == #"armor_shard") {
        if (clientdata.inventory.items[11].count < maxstack) {
            return 11;
        }
        return undefined;
    }
    for (i = 0; i < clientdata.inventory.items.size; i++) {
        if (!isdefined(clientdata.inventory.items[i].id) || clientdata.inventory.items[i].id == 32767) {
            continue;
        }
        inventoryitem = function_b1702735(clientdata.inventory.items[i].id);
        if (!isdefined(inventoryitem) || !isdefined(inventoryitem.itementry)) {
            continue;
        }
        if (inventoryitem.itementry.name !== itementry.name) {
            continue;
        }
        if (clientdata.inventory.items[i].count < maxstack) {
            return i;
        }
    }
    return undefined;
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0x284d26a8, Offset: 0x91b8
// Size: 0x236
function private function_3e624606(localclientnum) {
    self endon(#"shutdown", #"death");
    self notify("72af4c13286edeed");
    self endon("72af4c13286edeed");
    clientdata = item_world::function_a7e98a1a(localclientnum);
    var_99fe8c78 = "multi_item_pickup" + localclientnum;
    var_dab12fb1 = "multi_item_pickup_stowed_weapon" + localclientnum;
    while (true) {
        waitresult = level waittill(var_99fe8c78, var_dab12fb1);
        if (self clientfield::get_player_uimodel("hudItems.multiItemPickup.status") == 2) {
            networkid = waitresult.id;
            index = item_world::function_73436347(clientdata.groupitems, networkid);
            itemid = item_world::function_28b42f1c(localclientnum, networkid);
            if (itemid == 32767) {
                continue;
            }
            if (isdefined(index)) {
                item = function_b1702735(itemid);
                if (!function_ad4c6116(localclientnum, item.itementry)) {
                    continue;
                }
                if (waitresult._notify === var_dab12fb1) {
                    function_97fedb0d(localclientnum, 12, networkid);
                } else {
                    function_97fedb0d(localclientnum, 3, networkid);
                }
                function_7f056944(localclientnum, index);
                if (!is_inventory_item(localclientnum, item.itementry)) {
                    continue;
                }
            }
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x6 linked
// Checksum 0xec53e3f0, Offset: 0x93f8
// Size: 0x172
function private function_30697356(*localclientnum, itementry) {
    if (!isdefined(itementry)) {
        return 0;
    }
    if (itementry.itemtype === #"armor_shard") {
        return 6;
    }
    if (is_true(itementry.consumable)) {
        return 4;
    }
    if (itementry.itemtype === #"generic") {
        return 0;
    }
    if (itementry.itemtype === #"cash") {
        return 0;
    }
    if (itementry.itemtype === #"killstreak") {
        return 4;
    }
    if (itementry.itemtype === #"armor") {
        return 0;
    }
    if (itementry.itemtype === #"ammo") {
        return 0;
    }
    if (itementry.itemtype == #"weapon") {
        return 0;
    }
    if (itementry.itemtype == #"quest") {
        return 0;
    }
    if (itementry.itemtype === #"attachment") {
        return 2;
    }
    return 1;
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0xb60ab49f, Offset: 0x9578
// Size: 0x700
function function_ad4c6116(localclientnum, itementry) {
    if (itementry.itemtype == #"weapon") {
        return true;
    }
    if (!is_inventory_item(localclientnum, itementry)) {
        return true;
    }
    if (itementry.itemtype == #"resource") {
        if (item_world_util::function_41f06d9d(itementry)) {
            return !function_88da0c8e(localclientnum);
        }
    }
    if (itementry.itemtype == #"armor") {
        if (itementry.var_4a1a4613 === #"armor_heal") {
            data = item_world::function_a7e98a1a(localclientnum);
            var_8b8faf32 = self getplayerarmor();
            maxarmor = self function_a07288ec();
            armortier = 0;
            var_fda5463f = data.inventory.items[6];
            if (isdefined(var_fda5463f) && var_fda5463f.networkid != 32767) {
                armortier = var_fda5463f.itementry.armortier;
            }
            armortier = isdefined(armortier) ? armortier : 0;
            if ((isdefined(itementry.armortier) ? itementry.armortier : 0) > armortier) {
                return true;
            }
            if ((isdefined(maxarmor) ? maxarmor : 0) != 0 && var_8b8faf32 == maxarmor) {
                return false;
            }
        }
        return true;
    }
    if (itementry.itemtype == #"attachment") {
        slotid = function_1415f8f1(localclientnum, itementry);
        if (isdefined(slotid)) {
            return true;
        }
    }
    if (function_a243ddd6(localclientnum, itementry)) {
        return true;
    }
    if (function_a303c8ef(localclientnum, itementry)) {
        return true;
    }
    if (itementry.itemtype == #"armor_shard") {
        return false;
    }
    data = item_world::function_a7e98a1a(localclientnum);
    if (itementry.itemtype == #"resource") {
        if (data.inventory.items[10].networkid === 32767) {
            return true;
        }
        return false;
    }
    if (itementry.name === #"self_revive_sr_item") {
        if (self clientfield::get_player_uimodel("ZMInventoryPersonal.self_revive_count") > 0) {
            return false;
        } else {
            return true;
        }
    }
    if (itementry.itemtype === #"survival_ammo") {
        var_50f64cdb = self function_6b087eb4(localclientnum);
        return !var_50f64cdb;
    }
    if (itementry.itemtype === #"survival_perk") {
        var_6c32d092 = 0;
        if (isdefined(itementry.talents)) {
            foreach (talent in itementry.talents) {
                if (self function_6c32d092(localclientnum, talent.talent)) {
                    var_6c32d092 = 1;
                    break;
                }
            }
        }
        return !var_6c32d092;
    }
    if (itementry.itemtype === #"survival_armor_shard") {
        var_8b8faf32 = self getplayerarmor();
        maxarmor = self function_a07288ec();
        if (maxarmor <= 0) {
            return false;
        }
        if (var_8b8faf32 == maxarmor) {
            return false;
        }
        return true;
    }
    if (itementry.itemtype == #"survival_scrap") {
        return true;
    }
    if (itementry.itemtype == #"survival_essence") {
        return true;
    }
    if (itementry.itemtype == #"hash_fc797c2a8f4d208") {
        data = item_world::function_a7e98a1a(localclientnum);
        ammoweapon = itementry.weapon;
        var_1326fcc7 = isdefined(itementry.amount) ? itementry.amount : isdefined(var_1326fcc7) ? var_1326fcc7 : 1;
        maxstockammo = namespace_a0d533d1::function_2879cbe0(data.inventory.var_7658cbec, ammoweapon);
        currentammostock = self getweaponammostock(localclientnum, ammoweapon);
        var_9b9ba643 = maxstockammo - currentammostock;
        addammo = int(min(var_1326fcc7, var_9b9ba643));
        return (addammo > 0);
    }
    if (itementry.itemtype == #"survival_upgrade_item") {
        return true;
    }
    if (!namespace_a0d533d1::function_819781bf()) {
        for (i = 0; i < data.inventory.var_c212de25; i++) {
            if (data.inventory.items[i].networkid === 32767) {
                return true;
            }
        }
    }
    return false;
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0x9cfbe565, Offset: 0x9c80
// Size: 0x4fc
function function_a243ddd6(localclientnum, itementry) {
    data = item_world::function_a7e98a1a(localclientnum);
    if (namespace_a0d533d1::function_819781bf()) {
        var_662e1704 = 1;
    } else {
        var_662e1704 = 0;
    }
    switch (itementry.itemtype) {
    case #"attachment":
        slotid = function_1415f8f1(localclientnum, itementry);
        if (!isdefined(slotid)) {
            return false;
        }
        return (data.inventory.items[slotid].networkid == 32767);
    case #"armor":
        return (data.inventory.items[6].networkid == 32767);
    case #"backpack":
        return (data.inventory.items[8].networkid == 32767);
    case #"equipment":
        return (var_662e1704 || data.inventory.items[7].networkid == 32767);
    case #"field_upgrade":
        return (var_662e1704 || data.inventory.items[12].networkid == 32767);
    case #"tactical":
        return (var_662e1704 || data.inventory.items[13].networkid == 32767);
    case #"health":
        return (var_662e1704 || data.inventory.items[5].networkid == 32767);
    case #"weapon":
        foreach (weaponslotid in namespace_a0d533d1::function_4905dddf()) {
            if (data.inventory.items[weaponslotid].networkid == 32767) {
                return true;
            }
        }
        return false;
    case #"perk_tier_1":
        point = function_4ba8fde(#"hash_383a1390efa15e8a");
        return (var_662e1704 || data.inventory.items[14].networkid == point.id);
    case #"perk_tier_2":
        point = function_4ba8fde(#"hash_383a1390efa15e8a");
        return (var_662e1704 || data.inventory.items[15].networkid == point.id);
    case #"perk_tier_3":
        point = function_4ba8fde(#"hash_383a1390efa15e8a");
        return (var_662e1704 || data.inventory.items[16].networkid == point.id);
    case #"scorestreak":
        point = function_4ba8fde(#"scorestreak_item_t9");
        return (var_662e1704 || data.inventory.items[17].networkid == point.id);
    case #"ammo":
    case #"generic":
    case #"killstreak":
    case #"cash":
    default:
        return false;
    }
    return false;
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0x7010f14b, Offset: 0xa188
// Size: 0x174
function function_d768ea30(localclientnum) {
    assert(isdefined(self));
    currentweapon = isdefined(self.currentweapon) ? weapons::function_251ec78c(self.currentweapon) : self.weapon;
    if (currentweapon == level.weaponbasemeleeheld) {
        data = item_world::function_a7e98a1a(localclientnum);
        return;
    }
    if (sessionmodeiszombiesgame() && killstreaks::is_killstreak_weapon(currentweapon)) {
        return 17;
    }
    switch (function_9f1cc9a9(currentweapon)) {
    case 1:
        return (17 + 1 + 8 + 1);
    case 2:
        return (17 + 1 + 8 + 1 + 8 + 1);
    default:
        break;
    }
    return 17 + 1;
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0xd4bc39ef, Offset: 0xa308
// Size: 0x394
function function_78ed4455(localclientnum, itementry) {
    assert(isplayer(self));
    data = item_world::function_a7e98a1a(localclientnum);
    switch (itementry.itemtype) {
    case #"armor":
        return 6;
    case #"backpack":
        return 8;
    case #"equipment":
        if (data.inventory.items[7].networkid == 32767) {
            return 7;
        }
        break;
    case #"field_upgrade":
        if (data.inventory.items[12].networkid == 32767) {
            return 12;
        }
        break;
    case #"tactical":
        if (data.inventory.items[13].networkid == 32767) {
            return 13;
        }
        break;
    case #"health":
        if (data.inventory.items[5].networkid == 32767) {
            return 5;
        }
        break;
    case #"weapon":
        foreach (weaponslotid in namespace_a0d533d1::function_4905dddf()) {
            if (data.inventory.items[weaponslotid].networkid == 32767) {
                return weaponslotid;
            }
        }
        break;
    case #"scorestreak":
        if (data.inventory.items[17].networkid == 32767) {
            return 17;
        }
        break;
    case #"perk_tier_1":
        if (data.inventory.items[14].networkid == 32767) {
            return 14;
        }
        break;
    case #"perk_tier_2":
        if (data.inventory.items[15].networkid == 32767) {
            return 15;
        }
        break;
    case #"perk_tier_3":
        if (data.inventory.items[16].networkid == 32767) {
            return 16;
        }
        break;
    }
    if (itementry.itemtype == #"attachment") {
        return function_1415f8f1(localclientnum, itementry);
    }
}

// Namespace item_inventory/item_inventory
// Params 4, eflags: 0x2 linked
// Checksum 0x588cc4c3, Offset: 0xa6a8
// Size: 0x27c
function function_9c4460e0(localclientnum, itemid, count = 1, slotid = undefined) {
    assert(isint(itemid));
    if (!isdefined(itemid)) {
        return;
    }
    point = function_b1702735(itemid);
    if (!isdefined(point)) {
        return;
    }
    itementry = point.itementry;
    availableaction = function_30697356(localclientnum, itementry);
    data = item_world::function_a7e98a1a(localclientnum);
    selectedindex = undefined;
    if (count == 0) {
        return;
    }
    if (!isdefined(selectedindex) && isdefined(slotid)) {
        selectedindex = slotid;
    }
    if (!isdefined(selectedindex)) {
        selectedindex = item_world::function_73436347(data.inventory.items, 32767);
        if (!isdefined(selectedindex)) {
            println("assetName" + itemid + "pickedUpItem");
            return;
        }
    }
    player = function_27673a7(localclientnum);
    networkid = item_world_util::function_970b8d86(selectedindex);
    inventoryitem = undefined;
    if (selectedindex < data.inventory.items.size) {
        inventoryitem = data.inventory.items[selectedindex];
    }
    assert(isdefined(inventoryitem));
    totalcount = function_bba770de(localclientnum, itementry);
    totalcount += count;
    player function_1a99656a(localclientnum, inventoryitem, networkid, itemid, count, totalcount, availableaction);
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0x3b454f1b, Offset: 0xa930
// Size: 0x17c
function function_1415f8f1(localclientnum, itementry) {
    assert(isplayer(self));
    data = item_world::function_a7e98a1a(localclientnum);
    if (itementry.itemtype == #"attachment") {
        weaponslotid = function_d768ea30(localclientnum);
        if (!isdefined(weaponslotid)) {
            return;
        }
        var_f0dc4e93 = item_world_util::function_970b8d86(weaponslotid);
        if (data.inventory.items[weaponslotid].networkid == 32767) {
            return;
        }
        var_ceefbd10 = namespace_a0d533d1::function_837f4a57(itementry);
        var_f9f8c0b5 = namespace_a0d533d1::function_dfaca25e(weaponslotid, var_ceefbd10);
        weaponitem = self function_15d578f4(localclientnum, var_f0dc4e93);
        attachmentname = namespace_a0d533d1::function_2ced1d34(weaponitem, itementry);
        if (isdefined(attachmentname)) {
            return var_f9f8c0b5;
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0xbae37a91, Offset: 0xaab8
// Size: 0x168
function function_bba770de(localclientnum, itementry) {
    data = item_world::function_a7e98a1a(localclientnum);
    count = 0;
    if (!isdefined(itementry)) {
        return count;
    }
    name = isdefined(itementry.parentname) ? itementry.parentname : itementry.name;
    for (index = 0; index < data.inventory.items.size && index < 17 + 1; index++) {
        inventoryitem = data.inventory.items[index];
        if (!isdefined(inventoryitem.itementry) || isdefined(inventoryitem.endtime)) {
            continue;
        }
        if (name == (isdefined(inventoryitem.itementry.parentname) ? inventoryitem.itementry.parentname : inventoryitem.itementry.name)) {
            count += inventoryitem.count;
        }
    }
    return count;
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0x9b1f856, Offset: 0xac28
// Size: 0x1c0
function function_6b087eb4(localclientnum) {
    var_e20637be = 1;
    data = item_world::function_a7e98a1a(localclientnum);
    weapon1 = data.inventory.items[17 + 1];
    weapon2 = data.inventory.items[17 + 1 + 8 + 1];
    if (isdefined(weapon1)) {
        weapon1 = item_world_util::function_35e06774(weapon1.itementry);
        if (isdefined(weapon1)) {
            if (weapon1 != level.weaponnone && weapon1 != level.weaponbasemeleeheld) {
                maxammo = weapon1.maxammo;
                currentammostock = self getweaponammostock(localclientnum, weapon1);
                if (currentammostock < maxammo) {
                    var_e20637be = 0;
                }
            }
        }
    }
    if (isdefined(weapon2)) {
        weapon2 = item_world_util::function_35e06774(weapon2.itementry);
        if (isdefined(weapon2)) {
            if (weapon2 != level.weaponnone && weapon2 != level.weaponbasemeleeheld) {
                maxammo = weapon2.maxammo;
                currentammostock = self getweaponammostock(localclientnum, weapon2);
                if (currentammostock < maxammo) {
                    var_e20637be = 0;
                }
            }
        }
    }
    return var_e20637be;
}

// Namespace item_inventory/item_inventory
// Params 3, eflags: 0x2 linked
// Checksum 0x48505918, Offset: 0xadf0
// Size: 0x176
function can_pickup_ammo(localclientnum, item, var_1326fcc7 = undefined) {
    assert(isplayer(self));
    data = item_world::function_a7e98a1a(localclientnum);
    itementry = item.itementry;
    ammoweapon = itementry.weapon;
    var_1326fcc7 = isdefined(itementry.amount) ? itementry.amount : isdefined(var_1326fcc7) ? var_1326fcc7 : 1;
    maxstockammo = namespace_a0d533d1::function_2879cbe0(data.inventory.var_7658cbec, ammoweapon);
    currentammostock = self getweaponammostock(localclientnum, ammoweapon);
    var_9b9ba643 = maxstockammo - currentammostock;
    addammo = int(min(var_1326fcc7, var_9b9ba643));
    return addammo > 0;
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x6 linked
// Checksum 0x2ad4facb, Offset: 0xaf70
// Size: 0xe2
function private function_85645978(data, item) {
    currtime = gettime();
    foreach (consumeditem in data.inventory.consumed.items) {
        if (item.itementry.name == consumeditem.itementry.name && currtime < consumeditem.endtime) {
            return consumeditem;
        }
    }
    return undefined;
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0x12583472, Offset: 0xb060
// Size: 0x126
function function_52e537be(localclientnum, networkid) {
    item = function_15d578f4(localclientnum, networkid);
    if (isdefined(item)) {
        setuimodelvalue(createuimodel(item.itemuimodel, "castTimeFraction"), 0, 0);
    }
    data = item_world::function_a7e98a1a(localclientnum);
    if (isdefined(data) && isdefined(data.inventory) && networkid === data.inventory.var_4d4ec560) {
        setuimodelvalue(data.inventory.consumed.var_a25538fb, function_3fe6ef04(localclientnum));
        data.inventory.var_4d4ec560 = undefined;
    }
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0xf563b4fd, Offset: 0xb190
// Size: 0x4fc
function consume_item(localclientnum, networkid) {
    assert(networkid != 32767);
    if (networkid == 32767) {
        return;
    }
    data = item_world::function_a7e98a1a(localclientnum);
    item = function_15d578f4(localclientnum, networkid);
    if (!isdefined(item) || !isdefined(item.itementry)) {
        return;
    }
    duration = int((isdefined(item.itementry.duration) ? item.itementry.duration : 0) * 1000);
    starttime = gettime();
    endtime = starttime + duration;
    item.starttime = starttime;
    item.endtime = endtime;
    totalcount = function_bba770de(localclientnum, item.itementry);
    function_1a99656a(localclientnum, item, networkid, item.id, 1, totalcount, 5, 0);
    var_3285d88f = data.inventory.consumed.items.size;
    var_cfa0e915 = [];
    foreach (consumeditem in data.inventory.consumed.items) {
        if (isdefined(var_cfa0e915[consumeditem.itementry.name])) {
            continue;
        }
        var_cfa0e915[consumeditem.itementry.name] = 1;
    }
    consumeditem = function_85645978(data, item);
    if (isdefined(consumeditem)) {
        consumeditem.endtime += duration;
        for (index = 0; index < 5; index++) {
            inventoryitem = data.inventory.items[index];
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
        consumeditem.itemuimodel = createuimodel(data.inventory.consumed.uimodel, "item" + var_cfa0e915.size);
        consumeditem.starttime = gettime();
        consumeditem.endtime = consumeditem.starttime + duration;
        var_cfa0e915[consumeditem.itementry.name] = 1;
    }
    data.inventory.consumed.items[var_3285d88f] = consumeditem;
    var_31c78e6f = consumeditem.itementry;
    function_1a99656a(localclientnum, consumeditem, 32767, 32767, 0, 0, 0, 0);
    function_1a99656a(localclientnum, consumeditem, networkid, item.id, 0, 0, 0, 0);
    setuimodelvalue(data.inventory.consumed.var_a25538fb, var_cfa0e915.size);
    function_442857e2(localclientnum, var_31c78e6f);
    level thread function_451ebd83(localclientnum, consumeditem.itementry, networkid);
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0x860a0132, Offset: 0xb698
// Size: 0x28c
function function_de74158f(localclientnum, networkid) {
    assert(networkid != 32767);
    if (networkid == 32767) {
        return;
    }
    data = item_world::function_a7e98a1a(localclientnum);
    item = function_15d578f4(localclientnum, networkid);
    if (!isdefined(item)) {
        return;
    }
    var_cfa0e915 = [];
    foreach (consumeditem in data.inventory.consumed.items) {
        if (isdefined(var_cfa0e915[consumeditem.itementry.name])) {
            continue;
        }
        var_cfa0e915[consumeditem.itementry.name] = 1;
    }
    consumeditem = spawnstruct();
    consumeditem.id = item.id;
    consumeditem.itementry = item.itementry;
    consumeditem.itemuimodel = createuimodel(data.inventory.consumed.uimodel, "item" + var_cfa0e915.size);
    var_cfa0e915[consumeditem.itementry.name] = 1;
    function_1a99656a(localclientnum, consumeditem, 32767, 32767, 0, 0, 0, 0);
    function_1a99656a(localclientnum, consumeditem, networkid, item.id, 0, 0, 0, 0);
    setuimodelvalue(data.inventory.consumed.var_a25538fb, var_cfa0e915.size);
    level thread function_451ebd83(localclientnum, item.itementry, undefined);
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0x5bc61039, Offset: 0xb930
// Size: 0x84
function function_7f056944(localclientnum, index) {
    var_6e2c91d0 = function_1df4c3b0(localclientnum, #"hash_23febb0b8f867ca1");
    setuimodelvalue(createuimodel(var_6e2c91d0, "item" + index + ".disabled"), 1);
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0xdf1c6c8d, Offset: 0xb9c0
// Size: 0x132
function function_3bd1836f(localclientnum, networkid) {
    if (networkid == item_world_util::function_970b8d86(8)) {
        give_backpack(localclientnum, networkid);
        return;
    }
    data = item_world::function_a7e98a1a(localclientnum);
    foreach (inventoryitem in data.inventory.items) {
        if (inventoryitem.networkid === networkid) {
            function_8063170(inventoryitem, 1);
            playsound(localclientnum, #"hash_4d31bd9927d823c3");
            return;
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0x11cf88a5, Offset: 0xbb00
// Size: 0x204
function give_backpack(localclientnum, networkid) {
    data = item_world::function_a7e98a1a(localclientnum);
    if (!isdefined(data)) {
        return;
    }
    item = function_15d578f4(localclientnum, networkid);
    if (!isdefined(item)) {
        waittillframeend();
        item = function_15d578f4(localclientnum, networkid);
        if (!isdefined(item)) {
            return;
        }
    }
    data.inventory.var_7658cbec = namespace_a0d533d1::function_d8cebda3(item.itementry);
    if (data.inventory.var_7658cbec & 1 && data.inventory.var_c212de25 != 5) {
        for (index = data.inventory.var_c212de25; index < 5; index++) {
            inventoryitem = data.inventory.items[index];
            setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "disabled"), 0);
        }
        data.inventory.var_c212de25 = 5;
        inventoryuimodel = function_1df4c3b0(localclientnum, #"hash_159966ba825013a2");
        setuimodelvalue(createuimodel(inventoryuimodel, "count"), data.inventory.var_c212de25);
    }
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0x5fa2ef68, Offset: 0xbd10
// Size: 0x13a
function function_15d578f4(localclientnum, networkid) {
    assert(isdefined(localclientnum));
    assert(item_world_util::function_d9648161(networkid));
    data = item_world::function_a7e98a1a(localclientnum);
    assert(isdefined(data));
    if (isdefined(data.inventory.items) && isarray(data.inventory.items)) {
        for (index = 0; index < data.inventory.items.size; index++) {
            inventoryitem = data.inventory.items[index];
            if (inventoryitem.networkid === networkid) {
                return inventoryitem;
            }
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0x178777d8, Offset: 0xbe58
// Size: 0x4c
function function_c48cd17f(localclientnum, networkid) {
    item = function_15d578f4(localclientnum, networkid);
    if (isdefined(item)) {
        return item.id;
    }
    return 32767;
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0x247d40dc, Offset: 0xbeb0
// Size: 0x140
function has_attachments(localclientnum, weaponslotid) {
    assert(isdefined(localclientnum));
    if (!isdefined(weaponslotid)) {
        return false;
    }
    data = item_world::function_a7e98a1a(localclientnum);
    foreach (attachmentoffset in array(1, 2, 3, 4, 5, 6, 7, 8)) {
        slotid = namespace_a0d533d1::function_dfaca25e(weaponslotid, attachmentoffset);
        if (data.inventory.items[slotid].networkid != 32767) {
            return true;
        }
    }
    return false;
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0x10a8ce08, Offset: 0xbff8
// Size: 0xfa4
function inventory_init(localclientnum) {
    data = item_world::function_a7e98a1a(localclientnum);
    inventoryuimodel = function_1df4c3b0(localclientnum, #"hash_159966ba825013a2");
    pickedupammotypes = createuimodel(inventoryuimodel, "pickedUpAmmoTypes");
    setuimodelvalue(createuimodel(pickedupammotypes, "count"), 0);
    data.inventory = spawnstruct();
    data.inventory.consumed = {};
    data.inventory.consumed.items = [];
    data.inventory.count = 17 + 1 + 8 + 1 + 8 + 1 + 8 + 1;
    data.inventory.items = [];
    data.inventory.var_a7a2b773 = 0;
    data.inventory.var_c212de25 = 3;
    data.inventory.var_7658cbec = 0;
    data.inventory.var_f3518190 = undefined;
    data.inventory.var_4d4ec560 = undefined;
    for (index = 0; index < data.inventory.count; index++) {
        data.inventory.items[index] = spawnstruct();
    }
    for (index = 0; index < 3; index++) {
        data.inventory.items[index].itemuimodel = createuimodel(inventoryuimodel, "item" + index);
        setuimodelvalue(createuimodel(data.inventory.items[index].itemuimodel, "backpackSlot"), 0);
        setuimodelvalue(createuimodel(data.inventory.items[index].itemuimodel, "disabled"), 0);
    }
    for (index = 3; index < 5; index++) {
        data.inventory.items[index].itemuimodel = createuimodel(inventoryuimodel, "item" + index);
        setuimodelvalue(createuimodel(data.inventory.items[index].itemuimodel, "backpackSlot"), 1);
        setuimodelvalue(createuimodel(data.inventory.items[index].itemuimodel, "disabled"), 1);
    }
    data.inventory.items[5].itemuimodel = createuimodel(inventoryuimodel, "health");
    data.inventory.items[6].itemuimodel = createuimodel(inventoryuimodel, "gear");
    data.inventory.items[8].itemuimodel = createuimodel(inventoryuimodel, "storage");
    data.inventory.items[7].itemuimodel = createuimodel(inventoryuimodel, "equipment");
    data.inventory.items[12].itemuimodel = createuimodel(inventoryuimodel, "fieldUpgrade");
    data.inventory.items[13].itemuimodel = createuimodel(inventoryuimodel, "tactical");
    data.inventory.items[9].itemuimodel = createuimodel(inventoryuimodel, "resource0");
    data.inventory.items[10].itemuimodel = createuimodel(inventoryuimodel, "resource1");
    data.inventory.items[11].itemuimodel = createuimodel(inventoryuimodel, "shard0");
    foreach (index, slotid in array(14, 15, 16)) {
        data.inventory.items[slotid].itemuimodel = createuimodel(inventoryuimodel, "perk" + index);
    }
    data.inventory.items[17].itemuimodel = createuimodel(inventoryuimodel, "scorestreak");
    weaponslots = array(17 + 1, 17 + 1 + 8 + 1, 17 + 1 + 8 + 1 + 8 + 1);
    for (index = 0; index < weaponslots.size; index++) {
        weaponslotid = weaponslots[index];
        data.inventory.items[weaponslotid].itemuimodel = createuimodel(inventoryuimodel, "weapon" + index);
        var_55022c4f = array(1, 2, 3, 4, 5, 6, 7, 8);
        for (attachmentindex = 0; attachmentindex < var_55022c4f.size; attachmentindex++) {
            attachmentoffset = var_55022c4f[attachmentindex];
            var_f9f8c0b5 = namespace_a0d533d1::function_dfaca25e(weaponslotid, attachmentoffset);
            uimodelindex = attachmentindex + index * var_55022c4f.size;
            data.inventory.items[var_f9f8c0b5].itemuimodel = createuimodel(inventoryuimodel, "attachment" + uimodelindex);
        }
    }
    for (index = 0; index < data.inventory.items.size; index++) {
        if (!isdefined(data.inventory.items[index].itemuimodel)) {
            continue;
        }
        function_1a99656a(localclientnum, data.inventory.items[index], 32767, 32767, 0, 0, 0);
    }
    data.inventory.healthitems = [];
    for (index = 0; index < 2; index++) {
        data.inventory.healthitems[index] = spawnstruct();
        data.inventory.healthitems[index].itemuimodel = createuimodel(inventoryuimodel, "health" + index);
        function_1a99656a(localclientnum, data.inventory.healthitems[index], 32767, 32767, 0, 0, 0);
    }
    data.inventory.equipmentitems = [];
    for (index = 0; index < 2; index++) {
        data.inventory.equipmentitems[index] = spawnstruct();
        data.inventory.equipmentitems[index].itemuimodel = createuimodel(inventoryuimodel, "equipment" + index);
        function_1a99656a(localclientnum, data.inventory.equipmentitems[index], 32767, 32767, 0, 0, 0);
    }
    data.inventory.var_d4de469a = [];
    for (index = 0; index < 2; index++) {
        data.inventory.var_d4de469a[index] = spawnstruct();
        data.inventory.var_d4de469a[index].itemuimodel = createuimodel(inventoryuimodel, "fieldUpgrade" + index);
        function_1a99656a(localclientnum, data.inventory.var_d4de469a[index], 32767, 32767, 0, 0, 0);
    }
    data.inventory.var_cb8b68cf = [];
    for (index = 0; index < 2; index++) {
        data.inventory.var_cb8b68cf[index] = spawnstruct();
        data.inventory.var_cb8b68cf[index].itemuimodel = createuimodel(inventoryuimodel, "scorestreak" + index);
        function_1a99656a(localclientnum, data.inventory.var_cb8b68cf[index], 32767, 32767, 0, 0, 0);
    }
    setuimodelvalue(createuimodel(inventoryuimodel, "count"), 3);
    setuimodelvalue(createuimodel(inventoryuimodel, "filledSlots"), 0);
    setuimodelvalue(createuimodel(inventoryuimodel, "attachmentCount"), 8);
    setuimodelvalue(createuimodel(inventoryuimodel, "resourceCount"), 1);
    setuimodelvalue(createuimodel(inventoryuimodel, "perkCount"), array(14, 15, 16).size);
    setuimodelvalue(createuimodel(inventoryuimodel, "scorestreakCount"), 1);
    setuimodelvalue(createuimodel(inventoryuimodel, "shardCount"), 1);
    setuimodelvalue(createuimodel(inventoryuimodel, "canUseQuickInventory"), 0);
    if (function_88da0c8e(localclientnum)) {
        setuimodelvalue(createuimodel(data.inventory.items[9].itemuimodel, "notAccessible"), 1);
    }
    data.inventory.consumed.uimodel = createuimodel(inventoryuimodel, "consumed");
    data.inventory.consumed.var_a25538fb = createuimodel(data.inventory.consumed.uimodel, "count");
    setuimodelvalue(data.inventory.consumed.var_a25538fb, 0);
    level thread function_dab42db1(localclientnum);
    level thread function_d7869556(localclientnum);
    level thread function_cf96d951(localclientnum);
    level thread function_3b3ad5c2(localclientnum);
    level thread function_99bb24f8(localclientnum);
    forcenotifyuimodel(createuimodel(inventoryuimodel, "initialize"));
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0x68f8b06, Offset: 0xcfa8
// Size: 0x1ec
function function_dab42db1(localclientnum) {
    level flag::wait_till(#"item_world_initialized");
    foreach (ammotype in array(#"ammo_small_caliber_item_t9", #"ammo_large_caliber_item_t9", #"ammo_ar_item_t9", #"ammo_sniper_item_t9", #"ammo_shotgun_item_t9", #"ammo_special_item_t9")) {
        point = function_4ba8fde(ammotype);
        if (isdefined(point) && isdefined(point.itementry) && point.itementry.itemtype == #"ammo") {
            function_4f16aa30(localclientnum, point.id);
        }
    }
    inventoryuimodel = function_1df4c3b0(localclientnum, #"hash_159966ba825013a2");
    pickedupammotypes = createuimodel(inventoryuimodel, "pickedUpAmmoTypes");
    forcenotifyuimodel(pickedupammotypes);
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0x541f3a2e, Offset: 0xd1a0
// Size: 0xf4
function function_cf96d951(localclientnum) {
    level flag::wait_till(#"item_world_initialized");
    data = item_world::function_a7e98a1a(localclientnum);
    point = function_4ba8fde(#"armor_shard_item");
    if (isdefined(point) && isdefined(point.itementry) && point.itementry.itemtype == #"armor_shard") {
        function_1a99656a(localclientnum, data.inventory.items[11], point.networkid, point.id, 0, 0, 0);
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0xb08528ca, Offset: 0xd2a0
// Size: 0xf4
function function_d7869556(localclientnum) {
    level flag::wait_till(#"item_world_initialized");
    data = item_world::function_a7e98a1a(localclientnum);
    point = function_4ba8fde(#"resource_item_paint");
    if (isdefined(point) && isdefined(point.itementry) && point.itementry.itemtype == #"resource") {
        function_1a99656a(localclientnum, data.inventory.items[9], point.networkid, point.id, 0, 0, 0);
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0x39a7ffe2, Offset: 0xd3a0
// Size: 0x178
function function_3b3ad5c2(localclientnum) {
    level flag::wait_till(#"item_world_initialized");
    data = item_world::function_a7e98a1a(localclientnum);
    point = function_4ba8fde(#"hash_383a1390efa15e8a");
    if (isdefined(point) && isdefined(point.itementry) && item_world_util::function_a57773a4(point.itementry)) {
        foreach (slotid in array(14, 15, 16)) {
            function_1a99656a(localclientnum, data.inventory.items[slotid], point.networkid, point.id, 0, 0, 0);
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0xe3f2497d, Offset: 0xd520
// Size: 0xf4
function function_99bb24f8(localclientnum) {
    level flag::wait_till(#"item_world_initialized");
    data = item_world::function_a7e98a1a(localclientnum);
    point = function_4ba8fde(#"scorestreak_item_t9");
    if (isdefined(point) && isdefined(point.itementry) && point.itementry.itemtype == #"scorestreak") {
        function_1a99656a(localclientnum, data.inventory.items[17], point.networkid, point.id, 0, 0, 0);
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x6 linked
// Checksum 0xec2f8bfb, Offset: 0xd620
// Size: 0x46c
function private function_534dcb9c(localclientnum) {
    if (!isdefined(level.var_af8f97c8) || !isdefined(level.var_af8f97c8[localclientnum])) {
        if (!isdefined(level.var_aa75d3e)) {
            level.var_aa75d3e = [];
        } else if (!isarray(level.var_aa75d3e)) {
            level.var_aa75d3e = array(level.var_aa75d3e);
        }
        if (!isdefined(level.var_af8f97c8)) {
            level.var_af8f97c8 = [];
        } else if (!isarray(level.var_af8f97c8)) {
            level.var_af8f97c8 = array(level.var_af8f97c8);
        }
        if (!isdefined(level.var_53cbbb33)) {
            level.var_53cbbb33 = [];
        } else if (!isarray(level.var_53cbbb33)) {
            level.var_53cbbb33 = array(level.var_53cbbb33);
        }
        if (!isdefined(level.var_3a0390dd)) {
            level.var_3a0390dd = [];
        } else if (!isarray(level.var_3a0390dd)) {
            level.var_3a0390dd = array(level.var_3a0390dd);
        }
        if (!isdefined(level.var_c8a5f79b)) {
            level.var_c8a5f79b = [];
        } else if (!isarray(level.var_c8a5f79b)) {
            level.var_c8a5f79b = array(level.var_c8a5f79b);
        }
        if (!isdefined(level.var_830a8516)) {
            level.var_830a8516 = [];
        } else if (!isarray(level.var_830a8516)) {
            level.var_830a8516 = array(level.var_830a8516);
        }
        if (!isdefined(level.var_7086ad4f)) {
            level.var_7086ad4f = [];
        } else if (!isarray(level.var_7086ad4f)) {
            level.var_7086ad4f = array(level.var_7086ad4f);
        }
        inventoryuimodel = function_1df4c3b0(localclientnum, #"hash_159966ba825013a2");
        level.var_aa75d3e[localclientnum] = createuimodel(inventoryuimodel, "currentWeaponIndex");
        level.var_af8f97c8[localclientnum] = createuimodel(inventoryuimodel, "currentWeapon.itemIndex");
        level.var_c8a5f79b[localclientnum] = createuimodel(inventoryuimodel, "currentWeapon.ammoType");
        level.var_53cbbb33[localclientnum] = createuimodel(inventoryuimodel, "currentWeapon.isOperator");
        level.var_3a0390dd[localclientnum] = createuimodel(inventoryuimodel, "currentWeapon.isTactical");
        level.var_830a8516[localclientnum] = createuimodel(inventoryuimodel, "currentWeapon.rarity");
        level.var_7086ad4f[localclientnum] = createuimodel(inventoryuimodel, "showAttachments");
        level.var_6d21daaf[localclientnum] = createuimodel(inventoryuimodel, "canTransferFromStash");
        setuimodelvalue(level.var_830a8516[localclientnum], "Loadout");
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0xe0d2a064, Offset: 0xda98
// Size: 0x9c4
function function_6231c19(params) {
    if (params.weapon.name == #"none") {
        return;
    }
    if (isstruct(self)) {
        return;
    }
    if (!self function_da43934d() || !isplayer(self) || !isalive(self)) {
        return;
    }
    function_534dcb9c(params.localclientnum);
    if (isdefined(params.weapon)) {
        data = item_world::function_a7e98a1a(params.localclientnum);
        if (!isdefined(data) || !isdefined(data.inventory) || !isdefined(data.inventory.items) || data.inventory.items.size == 0) {
            return;
        }
        self.currentweapon = params.weapon;
        if (params.weapon == level.weaponbasemeleeheld) {
            setuimodelvalue(level.var_7086ad4f[params.localclientnum], 0);
            itemindex = getbaseweaponitemindex(getweapon(#"none"));
            foreach (index, slot in array(17 + 1, 17 + 1 + 8 + 1, 17 + 1 + 8 + 1 + 8 + 1)) {
                if (data.inventory.items[slot].networkid == 32767) {
                    break;
                }
            }
            if (!isdefined(index)) {
                return;
            }
            setuimodelvalue(level.var_3a0390dd[params.localclientnum], 0);
            setuimodelvalue(level.var_53cbbb33[params.localclientnum], 0);
            if (!setuimodelvalue(level.var_aa75d3e[params.localclientnum], index)) {
                forcenotifyuimodel(level.var_aa75d3e[params.localclientnum]);
            }
            if (!setuimodelvalue(level.var_af8f97c8[params.localclientnum], itemindex)) {
                forcenotifyuimodel(level.var_af8f97c8[params.localclientnum]);
            }
            setuimodelvalue(level.var_830a8516[params.localclientnum], "Loadout");
            function_deddbdf0(params.localclientnum);
            function_ce628f27(params.localclientnum);
            return;
        }
        var_a4250c2b = self function_d768ea30(params.localclientnum);
        foreach (index, slot in array(17 + 1, 17 + 1 + 8 + 1, 17 + 1 + 8 + 1 + 8 + 1)) {
            if (slot === var_a4250c2b) {
                if (!setuimodelvalue(level.var_aa75d3e[params.localclientnum], index)) {
                    forcenotifyuimodel(level.var_aa75d3e[params.localclientnum]);
                }
                break;
            }
        }
        networkid = item_world_util::function_970b8d86(var_a4250c2b);
        item = function_15d578f4(params.localclientnum, networkid);
        if (isdefined(item) && isdefined(item.itementry) && is_true(item.itementry.var_340eac1f)) {
            setuimodelvalue(level.var_53cbbb33[params.localclientnum], 0);
            setuimodelvalue(level.var_3a0390dd[params.localclientnum], 1);
        } else if (isdefined(item) && isdefined(item.itementry) && is_true(item.itementry.var_dc6c5d3b)) {
            setuimodelvalue(level.var_3a0390dd[params.localclientnum], 0);
            setuimodelvalue(level.var_53cbbb33[params.localclientnum], 1);
        } else {
            setuimodelvalue(level.var_3a0390dd[params.localclientnum], 0);
            setuimodelvalue(level.var_53cbbb33[params.localclientnum], 0);
        }
        if (isdefined(params.weapon.statname) && params.weapon.statname != #"") {
            itemindex = getbaseweaponitemindex(getweapon(params.weapon.statname));
        } else {
            itemindex = getbaseweaponitemindex(params.weapon);
        }
        var_754fe8c5 = getweaponammotype(params.weapon);
        if (isdefined(level.var_c53d118f) && isdefined(level.var_c53d118f[var_754fe8c5])) {
            setuimodelvalue(level.var_c8a5f79b[params.localclientnum], level.var_c53d118f[var_754fe8c5]);
        } else {
            setuimodelvalue(level.var_c8a5f79b[params.localclientnum], #"");
        }
        if (isdefined(item.itementry.rarity) && item.itementry.rarity != "") {
            setuimodelvalue(level.var_830a8516[params.localclientnum], item.itementry.rarity);
        } else {
            setuimodelvalue(level.var_830a8516[params.localclientnum], "Loadout");
        }
        setuimodelvalue(level.var_af8f97c8[params.localclientnum], itemindex);
        forcenotifyuimodel(level.var_af8f97c8[params.localclientnum]);
        supportsattachments = 0;
        if (isdefined(item)) {
            supportsattachments = namespace_a0d533d1::function_4bd83c04(item);
        }
        setuimodelvalue(level.var_7086ad4f[params.localclientnum], supportsattachments);
        function_deddbdf0(params.localclientnum, var_a4250c2b);
        function_ce628f27(params.localclientnum);
    }
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0x49bbe6a7, Offset: 0xe468
// Size: 0x18c
function function_8ffee46f(localclientnum, item) {
    var_f9b70cae = createuimodel(function_1df4c3b0(localclientnum, #"hash_159966ba825013a2"), "pickedUpItem");
    itemname = item_world::get_item_name(item.itementry);
    if (!setuimodelvalue(var_f9b70cae, itemname)) {
        forcenotifyuimodel(var_f9b70cae);
    }
    if (item.itementry.itemtype == #"weapon") {
        var_d9659d2a = createuimodel(function_1df4c3b0(localclientnum, #"hash_159966ba825013a2"), "pickedUpWeapon");
        if (!setuimodelvalue(var_d9659d2a, itemname)) {
            forcenotifyuimodel(var_d9659d2a);
        }
        return;
    }
    if (item.itementry.itemtype == #"generic") {
        function_22759012(localclientnum, item.networkid);
    }
}

// Namespace item_inventory/item_inventory
// Params 1, eflags: 0x2 linked
// Checksum 0xcdadfbc4, Offset: 0xe600
// Size: 0x64
function function_c9764f6d(localclientnum) {
    var_80c295ff = createuimodel(function_1df4c3b0(localclientnum, #"hash_159966ba825013a2"), "droppedWeapon");
    forcenotifyuimodel(var_80c295ff);
}

// Namespace item_inventory/item_inventory
// Params 3, eflags: 0x2 linked
// Checksum 0x63062256, Offset: 0xe670
// Size: 0x12c
function function_451ebd83(localclientnum, item, networkid) {
    itemname = item_world::get_item_name(item);
    waittillframeend();
    var_e16dbee1 = createuimodel(function_1df4c3b0(localclientnum, #"hash_159966ba825013a2"), "consumedItem");
    if (!setuimodelvalue(var_e16dbee1, itemname)) {
        forcenotifyuimodel(var_e16dbee1);
    }
    data = item_world::function_a7e98a1a(localclientnum);
    if (isdefined(data) && isdefined(data.inventory) && networkid === data.inventory.var_4d4ec560) {
        data.inventory.var_4d4ec560 = undefined;
    }
    function_9f5d2dc8(localclientnum);
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0xad72e108, Offset: 0xe7a8
// Size: 0x4d4
function function_4f16aa30(localclientnum, itemid) {
    if (!isdefined(level.var_c53d118f)) {
        level.var_c53d118f = [];
    }
    assert(item_world_util::function_2c7fc531(itemid));
    item = function_b1702735(itemid);
    if (!isdefined(item.itementry)) {
        return;
    }
    var_754fe8c5 = getweaponammotype(item.itementry.weapon);
    if (!isdefined(var_754fe8c5) || item.itementry.itemtype !== #"ammo") {
        return;
    }
    var_f9b70cae = createuimodel(function_1df4c3b0(localclientnum, #"hash_159966ba825013a2"), "pickedUpItem");
    var_7268d07 = createuimodel(function_1df4c3b0(localclientnum, #"hash_159966ba825013a2"), "pickedUpAmmoTypes");
    var_5a2db7bb = createuimodel(var_7268d07, "count");
    var_b4676aed = getuimodelvalue(var_5a2db7bb);
    for (i = 0; i < var_b4676aed; i++) {
        var_acd2831f = createuimodel(var_7268d07, "" + i + 1);
        if (getuimodelvalue(createuimodel(var_acd2831f, "assetName")) == var_754fe8c5) {
            if (item.itementry.itemtype == #"ammo" && !getuimodelvalue(createuimodel(var_acd2831f, "canDrop"))) {
                setuimodelvalue(createuimodel(var_acd2831f, "id"), itemid);
                setuimodelvalue(createuimodel(var_acd2831f, "canDrop"), item.itementry.itemtype == #"ammo");
            }
            return;
        }
    }
    level.var_c53d118f[var_754fe8c5] = item.itementry.displayname;
    var_acd2831f = createuimodel(var_7268d07, "" + var_b4676aed + 1);
    setuimodelvalue(createuimodel(var_acd2831f, "assetName"), var_754fe8c5);
    setuimodelvalue(createuimodel(var_acd2831f, "id"), itemid);
    setuimodelvalue(createuimodel(var_acd2831f, "canDrop"), 1);
    setuimodelvalue(createuimodel(var_acd2831f, "name"), item.itementry.displayname);
    setuimodelvalue(createuimodel(var_acd2831f, "icon"), item.itementry.icon);
    setuimodelvalue(createuimodel(var_acd2831f, "description"), item.itementry.description);
    setuimodelvalue(var_5a2db7bb, var_b4676aed + 1);
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0x3e0c10be, Offset: 0xec88
// Size: 0x44a
function function_b1136fc8(localclientnum, item) {
    if (isdefined(item) && isdefined(item.origin) && isdefined(item.itementry)) {
        if (isdefined(item.itementry.var_36781d9f)) {
            playsound(localclientnum, item.itementry.var_36781d9f, item.origin);
            return;
        }
        switch (item.itementry.itemtype) {
        case #"weapon":
            playsound(localclientnum, #"hash_67fed8a52accbb23", item.origin);
            break;
        case #"ammo":
            playsound(localclientnum, #"fly_drop_generic", item.origin);
            break;
        case #"health":
            playsound(localclientnum, #"hash_4d393a136d0df945", item.origin);
            break;
        case #"equipment":
            playsound(localclientnum, #"fly_drop_generic", item.origin);
            break;
        case #"field_upgrade":
            playsound(localclientnum, #"fly_drop_generic", item.origin);
            break;
        case #"tactical":
            playsound(localclientnum, #"fly_drop_generic", item.origin);
            break;
        case #"armor":
            playsound(localclientnum, #"hash_6bd51d5a531ff32", item.origin);
            break;
        case #"backpack":
            playsound(localclientnum, #"hash_60e9138ddc9660ed", item.origin);
            break;
        case #"attachment":
            playsound(localclientnum, #"fly_drop_generic", item.origin);
            break;
        case #"quest":
            playsound(localclientnum, #"fly_drop_generic", item.origin);
            break;
        case #"generic":
            playsound(localclientnum, #"fly_drop_generic", item.origin);
            break;
        case #"cash":
            playsound(localclientnum, #"fly_drop_generic", item.origin);
            break;
        case #"perk_tier_3":
        case #"perk_tier_2":
        case #"perk_tier_1":
            playsound(localclientnum, #"fly_drop_generic", item.origin);
            break;
        case #"scorestreak":
            playsound(localclientnum, #"fly_drop_generic", item.origin);
            break;
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0x915a592a, Offset: 0xf0e0
// Size: 0xa4
function function_d1da833d(localclientnum, item) {
    if (isdefined(item) && isdefined(item.origin) && isdefined(item.itementry)) {
        if (isdefined(item.itementry.var_1b0b57d1)) {
            playsound(localclientnum, item.itementry.var_1b0b57d1, item.origin);
            return;
        }
        function_31868137(localclientnum, item);
    }
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0x6f97c24f, Offset: 0xf190
// Size: 0x44a
function function_31868137(localclientnum, item) {
    if (isdefined(item) && isdefined(item.origin) && isdefined(item.itementry)) {
        if (isdefined(item.itementry.pickupsound)) {
            playsound(localclientnum, item.itementry.pickupsound, item.origin);
            return;
        }
        switch (item.itementry.itemtype) {
        case #"weapon":
            playsound(localclientnum, #"hash_62fabedcce13774c", item.origin);
            break;
        case #"ammo":
            playsound(localclientnum, #"hash_36c9bf9c68a692f6", item.origin);
            break;
        case #"health":
            playsound(localclientnum, #"hash_7cb9f9cf7068ccee", item.origin);
            break;
        case #"equipment":
            playsound(localclientnum, #"fly_pickup_generic", item.origin);
            break;
        case #"field_upgrade":
            playsound(localclientnum, #"fly_pickup_generic", item.origin);
            break;
        case #"tactical":
            playsound(localclientnum, #"fly_pickup_generic", item.origin);
            break;
        case #"armor":
            playsound(localclientnum, #"hash_2d8e1c5a5387840f", item.origin);
            break;
        case #"backpack":
            playsound(localclientnum, #"hash_69949bb7db9ef21e", item.origin);
            break;
        case #"attachment":
            playsound(localclientnum, #"hash_48ae9b1190e79fc5", item.origin);
            break;
        case #"quest":
            playsound(localclientnum, #"hash_5738a0fcb2e4efca", item.origin);
            break;
        case #"generic":
            playsound(localclientnum, #"fly_pickup_generic", item.origin);
            break;
        case #"cash":
            playsound(localclientnum, #"fly_pickup_generic", item.origin);
            break;
        case #"perk_tier_3":
        case #"perk_tier_2":
        case #"perk_tier_1":
            playsound(localclientnum, #"fly_pickup_generic", item.origin);
            break;
        case #"scorestreak":
            playsound(localclientnum, #"fly_pickup_generic", item.origin);
            break;
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0xf44035e9, Offset: 0xf5e8
// Size: 0x70c
function function_c6ff0aa2(localclientnum, networkid) {
    data = item_world::function_a7e98a1a(localclientnum);
    index = item_world::function_73436347(data.inventory.items, networkid);
    if (!isdefined(index)) {
        println("<unknown string>" + networkid + "<unknown string>");
        return;
    }
    item = data.inventory.items[index];
    isweapon = isdefined(item.itementry) && item.itementry.itemtype == #"weapon";
    var_53aa3063 = isdefined(item.itementry) && item.itementry.itemtype == #"generic";
    var_ac3edb34 = item.itementry;
    if (isdefined(item.endtime)) {
        consumeditem = function_85645978(data, item);
        if (isdefined(consumeditem)) {
            var_ee0e9af9 = [];
            for (index = 0; index < 5; index++) {
                inventoryitem = data.inventory.items[index];
                if (!isdefined(inventoryitem.endtime)) {
                    continue;
                }
                if (inventoryitem.itementry.name == item.itementry.name) {
                    var_ee0e9af9[var_ee0e9af9.size] = inventoryitem;
                }
            }
            remaining = consumeditem.endtime - gettime();
            consumeditem.endtime -= remaining / var_ee0e9af9.size;
            for (index = 0; index < var_ee0e9af9.size; index++) {
                inventoryitem = var_ee0e9af9[index];
                inventoryitem.starttime = consumeditem.starttime;
                inventoryitem.endtime = consumeditem.endtime;
            }
        }
    }
    hasdefault = 0;
    if (item_world_util::function_a57773a4(item.itementry)) {
        slotid = item_world_util::function_808be9a3(networkid);
        foreach (var_204192a2 in array(14, 15, 16)) {
            if (slotid == var_204192a2) {
                hasdefault = 1;
                break;
            }
        }
        if (hasdefault) {
            point = function_4ba8fde(#"hash_383a1390efa15e8a");
            var_6fd9b15e = point.id;
            defaultid = point.id;
        }
    } else if (item.itementry.itemtype == #"scorestreak") {
        slotid = item_world_util::function_808be9a3(networkid);
        if (slotid == 17) {
            hasdefault = 1;
            point = function_4ba8fde(#"scorestreak_item_t9");
            var_6fd9b15e = point.id;
            defaultid = point.id;
        }
    }
    if (hasdefault) {
        function_1a99656a(localclientnum, item, var_6fd9b15e, defaultid, 0, 0, 0, 1, 0, 0);
    } else {
        function_1a99656a(localclientnum, item, 32767, 32767, 0, 0, 0, 1, 0, 0);
    }
    player = function_27673a7(localclientnum);
    if (player.weapon.name == #"none" || player.weapon.name == #"bare_hands") {
        var_a4250c2b = player function_d768ea30(localclientnum);
        if (isdefined(var_a4250c2b) && var_a4250c2b == index) {
            primaryweapons = player getweaponslistprimaries();
            nextweapon = level.weaponbasemeleeheld;
            foreach (weapon in primaryweapons) {
                if (weapon !== weapons::function_251ec78c(player.currentweapon)) {
                    nextweapon = weapon;
                    break;
                }
            }
            var_a3eec6f2 = spawnstruct();
            var_a3eec6f2.localclientnum = localclientnum;
            var_a3eec6f2.weapon = nextweapon;
            player function_6231c19(var_a3eec6f2);
        }
    }
    if (index == 8) {
        take_backpack(localclientnum, networkid);
    }
    if (isweapon) {
        function_c9764f6d(localclientnum);
        function_ce628f27(localclientnum);
        return;
    }
    if (var_53aa3063) {
        function_9f5d2dc8(localclientnum);
    }
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0x97f6602e, Offset: 0xfd00
// Size: 0x10c
function function_8063170(inventoryitem, equipped) {
    if (!isdefined(inventoryitem) || !isdefined(inventoryitem.itementry)) {
        return;
    }
    if (inventoryitem.itementry.itemtype === #"armor_shard") {
        return;
    }
    if (inventoryitem.itementry.itemtype === #"attachment" || inventoryitem.itementry.itemtype === #"weapon") {
        availableaction = inventoryitem.availableaction;
    } else {
        availableaction = inventoryitem.availableaction && !equipped;
    }
    setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "availableAction"), availableaction);
}

// Namespace item_inventory/item_inventory
// Params 3, eflags: 0x2 linked
// Checksum 0x66bf4fa3, Offset: 0xfe18
// Size: 0x314
function function_26c87da8(localclientnum, var_c9293a27, var_8f194e5a) {
    assert(isdefined(var_c9293a27) && isdefined(var_8f194e5a));
    if (var_c9293a27 == var_8f194e5a) {
        return;
    }
    data = item_world::function_a7e98a1a(localclientnum);
    fromitem = data.inventory.items[var_c9293a27];
    toitem = data.inventory.items[var_8f194e5a];
    var_23501832 = fromitem.networkid;
    var_a2dd129a = fromitem.id;
    var_b208c7e1 = fromitem.itementry;
    var_3907299e = fromitem.count;
    var_57b0c2f = fromitem.availableaction;
    var_9269cd0a = toitem.networkid;
    var_d3a45360 = toitem.id;
    var_ec763bb2 = toitem.itementry;
    var_532f304 = toitem.count;
    var_ad138826 = toitem.availableaction;
    player = function_27673a7(localclientnum);
    if (var_3907299e == 0) {
        var_23501832 = 32767;
    }
    player function_1a99656a(localclientnum, toitem, var_23501832 != 32767 ? item_world_util::function_970b8d86(var_8f194e5a) : 32767, var_a2dd129a, var_3907299e, function_bba770de(localclientnum, var_b208c7e1), var_57b0c2f, undefined, 1);
    if (var_532f304 == 0) {
        var_9269cd0a = 32767;
    }
    player function_1a99656a(localclientnum, fromitem, var_9269cd0a != 32767 ? item_world_util::function_970b8d86(var_c9293a27) : 32767, var_d3a45360, var_532f304, function_bba770de(localclientnum, var_ec763bb2), var_ad138826, undefined, 1);
    function_442857e2(localclientnum, var_ec763bb2);
    function_442857e2(localclientnum, var_b208c7e1);
    function_ce628f27(localclientnum);
    var_a4250c2b = player function_d768ea30(localclientnum);
    function_deddbdf0(localclientnum, var_a4250c2b);
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0x2a5bfa61, Offset: 0x10138
// Size: 0x15c
function take_backpack(localclientnum, *networkid) {
    data = item_world::function_a7e98a1a(networkid);
    data.inventory.var_7658cbec = 0;
    if (data.inventory.var_c212de25 == 5) {
        for (index = 3; index < 5; index++) {
            inventoryitem = data.inventory.items[index];
            setuimodelvalue(createuimodel(inventoryitem.itemuimodel, "disabled"), 1);
        }
        data.inventory.var_c212de25 = 3;
        inventoryuimodel = function_1df4c3b0(networkid, #"hash_159966ba825013a2");
        setuimodelvalue(createuimodel(inventoryuimodel, "count"), data.inventory.var_c212de25);
    }
}

// Namespace item_inventory/item_inventory
// Params 2, eflags: 0x2 linked
// Checksum 0xec087096, Offset: 0x102a0
// Size: 0xdc
function function_fa372100(localclientnum, networkid) {
    data = item_world::function_a7e98a1a(localclientnum);
    foreach (inventoryitem in data.inventory.items) {
        if (inventoryitem.networkid === networkid) {
            function_8063170(inventoryitem, 0);
            break;
        }
    }
}

// Namespace item_inventory/item_inventory
// Params 3, eflags: 0x2 linked
// Checksum 0xd9b0c792, Offset: 0x10388
// Size: 0x1ac
function update_inventory_item(localclientnum, networkid, count) {
    data = item_world::function_a7e98a1a(localclientnum);
    player = function_27673a7(localclientnum);
    foreach (inventoryslot, inventoryitem in data.inventory.items) {
        if (inventoryitem.networkid === networkid) {
            var_338e8597 = isdefined(inventoryitem.count) ? inventoryitem.count : 0;
            totalcount = function_bba770de(localclientnum, inventoryitem.itementry);
            totalcount += count - var_338e8597;
            function_1a99656a(localclientnum, inventoryitem, inventoryitem.networkid, inventoryitem.id, count, totalcount, inventoryitem.availableaction);
            function_8063170(inventoryitem, function_6d9d9cd7(inventoryslot));
            break;
        }
    }
}

