// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\armor.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using script_471b31bd963b388e;
#using scripts\core_common\item_world.gsc;
#using script_1caf36ff04a85ff6;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\item_drop.gsc;
#using scripts\core_common\hud_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\aat_shared.gsc;

#namespace namespace_efff98ec;

// Namespace namespace_efff98ec/namespace_efff98ec
// Params 0, eflags: 0x5
// Checksum 0xc815cd49, Offset: 0xe8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_fd2ea50703c7073", &function_70a657d8, undefined, undefined, #"item_world");
}

// Namespace namespace_efff98ec/namespace_efff98ec
// Params 0, eflags: 0x6 linked
// Checksum 0x97f38e17, Offset: 0x138
// Size: 0x2c
function private function_70a657d8() {
    if (item_inventory::function_7d5553ac()) {
        return;
    }
    function_116fd9a7();
}

// Namespace namespace_efff98ec/namespace_efff98ec
// Params 0, eflags: 0x6 linked
// Checksum 0x81afddb6, Offset: 0x170
// Size: 0x3f4
function private function_116fd9a7() {
    item_world::function_861f348d(#"hash_9ed0c30684ca35a", &function_d045e83b);
    item_world::function_861f348d(#"hash_76a324a4d6073913", &function_2e5b5858);
    item_world::function_861f348d(#"hash_3bfb97e39d67e5f9", &function_cb9b4dd7);
    item_world::function_861f348d(#"hash_788c59214ead02af", &function_14b2eddf);
    item_world::function_861f348d(#"hash_6247ea34d3b1ddb6", &function_42ffe9b2);
    item_world::function_861f348d(#"hash_2cbf15cbb314c93e", &function_2eebeff5);
    item_world::function_861f348d(#"hash_51b30f6e7331e136", &function_349d4c26);
    item_world::function_861f348d(#"hash_2b4dff2e0db72d06", &function_670cce3f);
    item_world::function_861f348d(#"generic_pickup", &function_41a52251);
    item_world::function_861f348d(#"hash_5c844f5c1207159c", &function_2b2e9302);
    item_world::function_861f348d(#"hash_57df81951e3bc37c", &function_7de52ecc);
    item_world::function_861f348d(#"hash_1f0d729dc6dd1202", &function_898628ef);
    item_world::function_861f348d(#"hash_31380667bf69d3a0", &function_a240798a);
    item_world::function_861f348d(#"hash_29f7ad396d214a52", &function_d46c2559);
    item_world::function_861f348d(#"hash_50375e5de228e9fc", &function_a712496a);
    item_world::function_861f348d(#"hash_ff2bc61e2c18f43", &function_80ef3ea5);
    item_world::function_861f348d(#"hash_4213c4725d9f115", &function_753fb11f);
    item_world::function_861f348d(#"hash_68c089ceb01f806b", &function_2650d5c6);
    item_world::function_861f348d(#"hash_3115e37ace8310b1", &function_c3f4d281);
    item_world::function_861f348d(#"hash_292f5be0001274a4", &function_24dc1d12);
    item_world::function_861f348d(#"hash_1002a9af0882010e", &function_88803841);
}

// Namespace namespace_efff98ec/namespace_efff98ec
// Params 7, eflags: 0x6 linked
// Checksum 0x75ab8c7f, Offset: 0x570
// Size: 0x122
function private function_d045e83b(item, player, *var_bd027dd9, itemid, *itemcount, var_aec6fa7f, *slot) {
    if (itemid.var_a6762160.itemtype !== #"ammo") {
        /#
            assertmsg("<unknown string>" + itemid.name + "<unknown string>");
        #/
        return 0;
    }
    if (!self item_inventory::can_pickup_ammo(itemid)) {
        return (isdefined(itemid.var_a6762160.amount) ? itemid.var_a6762160.amount : isdefined(slot) ? slot : 1);
    }
    itemcount function_b00db06(8, var_aec6fa7f);
    return itemcount item_inventory::equip_ammo(itemid, slot);
}

// Namespace namespace_efff98ec/namespace_efff98ec
// Params 7, eflags: 0x6 linked
// Checksum 0x57acbac5, Offset: 0x6a0
// Size: 0x3d8
function private function_2e5b5858(item, player, *var_bd027dd9, *itemid, itemcount, var_aec6fa7f, slotid) {
    droppeditem = undefined;
    var_3d1f9df4 = 0;
    var_b0938bd7 = undefined;
    var_381f3b39 = 0;
    var_77e61fc6 = 0;
    if (var_bd027dd9.var_a6762160.var_4a1a4613 === #"armor_swap") {
        if (itemid armor::has_armor()) {
            inventoryitem = itemid.inventory.items[6];
            if (inventoryitem.var_bd027dd9 != 32767) {
                droppeditem = inventoryitem.var_a6762160;
                var_3d1f9df4 = droppeditem.amount;
            }
        }
        itemid item_inventory::drop_armor();
        var_77e61fc6 = itemid item_inventory::give_inventory_item(var_bd027dd9, 1, var_aec6fa7f, slotid);
        if (var_77e61fc6 < itemcount) {
            if (isdefined(var_bd027dd9.var_bd027dd9) && item_world_util::function_db35e94f(var_bd027dd9.var_bd027dd9)) {
                var_bd027dd9 = item_inventory::get_inventory_item(var_bd027dd9.var_bd027dd9);
            }
            if (itemid item_inventory::function_fba4a353(var_bd027dd9)) {
                itemid item_inventory::equip_armor(var_bd027dd9);
                var_b0938bd7 = var_bd027dd9.var_a6762160;
                var_381f3b39 = var_bd027dd9.var_a6762160.amount;
            }
        }
    } else if (var_bd027dd9.var_a6762160.var_4a1a4613 === #"armor_heal") {
        var_ffd5d55f = 1;
        if (itemid.armortier > 0) {
            if (var_bd027dd9.var_a6762160.armortier > itemid.armortier) {
                inventoryitem = itemid.inventory.items[6];
                itemid thread function_bcaf2ad1(inventoryitem.var_bd027dd9);
                var_ffd5d55f = 1;
            } else {
                var_ffd5d55f = 0;
                if (isdefined(itemid.armor) && isdefined(itemid.maxarmor)) {
                    inventoryitem = itemid.inventory.items[6];
                    inventoryitem.amount.inventoryitem = itemid.maxarmor;
                    itemid.armor.itemid = itemid.maxarmor;
                }
            }
        }
        if (var_ffd5d55f) {
            itemid item_inventory::give_inventory_item(var_bd027dd9, 1, var_aec6fa7f, slotid);
            if (isdefined(var_bd027dd9.var_bd027dd9) && item_world_util::function_db35e94f(var_bd027dd9.var_bd027dd9)) {
                var_bd027dd9 = item_inventory::get_inventory_item(var_bd027dd9.var_bd027dd9);
            }
            if (itemid item_inventory::function_fba4a353(var_bd027dd9)) {
                itemid item_inventory::equip_armor(var_bd027dd9);
                var_b0938bd7 = var_bd027dd9.var_a6762160;
                var_381f3b39 = var_bd027dd9.var_a6762160.amount;
            }
        }
    }
    item_world::function_1a46c8ae(itemid, droppeditem, var_3d1f9df4, var_b0938bd7, var_381f3b39);
    return var_77e61fc6;
}

// Namespace namespace_efff98ec/namespace_efff98ec
// Params 1, eflags: 0x2 linked
// Checksum 0xa9aff0f9, Offset: 0xa80
// Size: 0x44
function function_bcaf2ad1(var_6ead57c0) {
    var_4d7e11d8 = self item_inventory::drop_inventory_item(var_6ead57c0);
    item_world::consume_item(var_4d7e11d8);
}

// Namespace namespace_efff98ec/namespace_efff98ec
// Params 7, eflags: 0x6 linked
// Checksum 0x2368a4e1, Offset: 0xad0
// Size: 0x80
function private function_cb9b4dd7(item, player, *var_bd027dd9, *itemid, itemcount, *var_aec6fa7f, slotid) {
    var_77e61fc6 = itemcount item_inventory::give_inventory_item(itemid, var_aec6fa7f, undefined, slotid);
    itemcount item_inventory::function_3d113bfb();
    return var_77e61fc6;
}

// Namespace namespace_efff98ec/namespace_efff98ec
// Params 7, eflags: 0x6 linked
// Checksum 0xfdf6b3b5, Offset: 0xb58
// Size: 0x168
function private function_14b2eddf(item, player, *var_bd027dd9, *itemid, itemcount, *var_aec6fa7f, slotid) {
    var_f0dc4e93 = itemcount item_inventory::function_ec087745();
    var_4838b749 = undefined;
    if (isdefined(var_f0dc4e93) && var_f0dc4e93 != 32767) {
        var_4838b749 = itemcount item_inventory::function_b246c573(var_f0dc4e93);
    }
    var_77e61fc6 = itemcount item_inventory::give_inventory_item(itemid, var_aec6fa7f, undefined, slotid);
    if (isdefined(var_4838b749) && isdefined(slotid) && namespace_a0d533d1::function_398b9770(var_4838b749, slotid)) {
        if (isdefined(itemid.var_bd027dd9) && item_world_util::function_db35e94f(itemid.var_bd027dd9)) {
            itemid = item_inventory::get_inventory_item(itemid.var_bd027dd9);
        }
        itemcount item_inventory::equip_attachment(itemid, var_f0dc4e93, undefined, 0);
    }
    return var_77e61fc6;
}

// Namespace namespace_efff98ec/namespace_efff98ec
// Params 7, eflags: 0x6 linked
// Checksum 0xd02e78d2, Offset: 0xcc8
// Size: 0x108
function private function_42ffe9b2(item, player, *var_bd027dd9, *itemid, itemcount, *var_aec6fa7f, slotid) {
    if (itemcount item_inventory::function_fba4a353(itemid)) {
        slotid = 8;
    }
    var_77e61fc6 = itemcount item_inventory::give_inventory_item(itemid, var_aec6fa7f, undefined, slotid);
    if (var_77e61fc6 < var_aec6fa7f && slotid === 8) {
        if (isdefined(itemid.var_bd027dd9) && item_world_util::function_db35e94f(itemid.var_bd027dd9)) {
            itemid = item_inventory::get_inventory_item(itemid.var_bd027dd9);
        }
        itemcount item_inventory::equip_backpack(itemid);
    }
    return var_77e61fc6;
}

// Namespace namespace_efff98ec/namespace_efff98ec
// Params 7, eflags: 0x6 linked
// Checksum 0x14976da6, Offset: 0xdd8
// Size: 0xe8
function private function_2eebeff5(item, player, *var_bd027dd9, *itemid, itemcount, var_aec6fa7f, slotid) {
    var_77e61fc6 = itemid item_inventory::give_inventory_item(var_bd027dd9, itemcount, var_aec6fa7f, slotid);
    if (var_77e61fc6 < itemcount) {
        if (isdefined(var_bd027dd9.var_bd027dd9) && item_world_util::function_db35e94f(var_bd027dd9.var_bd027dd9)) {
            var_bd027dd9 = item_inventory::get_inventory_item(var_bd027dd9.var_bd027dd9);
        }
        if (itemid item_inventory::function_fba4a353(var_bd027dd9)) {
            itemid thread item_inventory::equip_equipment(var_bd027dd9);
        }
    }
    return var_77e61fc6;
}

// Namespace namespace_efff98ec/namespace_efff98ec
// Params 7, eflags: 0x6 linked
// Checksum 0x1e76710d, Offset: 0xec8
// Size: 0xe8
function private function_349d4c26(item, player, *var_bd027dd9, *itemid, itemcount, *var_aec6fa7f, slotid) {
    var_77e61fc6 = itemcount item_inventory::give_inventory_item(itemid, var_aec6fa7f, undefined, slotid);
    if (var_77e61fc6 < var_aec6fa7f) {
        if (isdefined(itemid.var_bd027dd9) && item_world_util::function_db35e94f(itemid.var_bd027dd9)) {
            itemid = item_inventory::get_inventory_item(itemid.var_bd027dd9);
        }
        if (itemcount item_inventory::function_fba4a353(itemid)) {
            itemcount thread item_inventory::equip_health(itemid);
        }
    }
    return var_77e61fc6;
}

// Namespace namespace_efff98ec/namespace_efff98ec
// Params 7, eflags: 0x6 linked
// Checksum 0xe85b93bc, Offset: 0xfb8
// Size: 0x6a
function private function_670cce3f(item, player, *var_bd027dd9, *itemid, itemcount, *var_aec6fa7f, slotid) {
    var_77e61fc6 = itemcount item_inventory::give_inventory_item(itemid, var_aec6fa7f, undefined, slotid);
    return var_77e61fc6;
}

// Namespace namespace_efff98ec/namespace_efff98ec
// Params 7, eflags: 0x6 linked
// Checksum 0x34390122, Offset: 0x1030
// Size: 0x6a
function private function_41a52251(item, player, *var_bd027dd9, *itemid, itemcount, *var_aec6fa7f, slotid) {
    var_77e61fc6 = itemcount item_inventory::give_inventory_item(itemid, var_aec6fa7f, undefined, slotid);
    return var_77e61fc6;
}

// Namespace namespace_efff98ec/namespace_efff98ec
// Params 7, eflags: 0x6 linked
// Checksum 0xf6c50fcc, Offset: 0x10a8
// Size: 0x90
function private function_2b2e9302(item, player, *var_bd027dd9, *itemid, itemcount, *var_aec6fa7f, slotid) {
    var_77e61fc6 = itemcount item_inventory::give_inventory_item(itemid, var_aec6fa7f, undefined, slotid);
    itemcount callback::callback(#"hash_3b891b6daa75c782", itemid);
    return var_77e61fc6;
}

// Namespace namespace_efff98ec/namespace_efff98ec
// Params 7, eflags: 0x6 linked
// Checksum 0xbb4ae33c, Offset: 0x1140
// Size: 0xe8
function private function_7de52ecc(item, player, *var_bd027dd9, *itemid, itemcount, var_aec6fa7f, slotid) {
    var_77e61fc6 = itemid item_inventory::give_inventory_item(var_bd027dd9, itemcount, var_aec6fa7f, slotid);
    if (var_77e61fc6 < itemcount) {
        if (isdefined(var_bd027dd9.var_bd027dd9) && item_world_util::function_db35e94f(var_bd027dd9.var_bd027dd9)) {
            var_bd027dd9 = item_inventory::get_inventory_item(var_bd027dd9.var_bd027dd9);
        }
        if (itemid item_inventory::function_fba4a353(var_bd027dd9)) {
            itemid thread item_inventory::function_854cf2c3(var_bd027dd9);
        }
    }
    return var_77e61fc6;
}

// Namespace namespace_efff98ec/namespace_efff98ec
// Params 7, eflags: 0x6 linked
// Checksum 0xfd1c9a2c, Offset: 0x1230
// Size: 0x100
function private function_898628ef(item, player, *var_bd027dd9, *itemid, itemcount, var_aec6fa7f, slotid) {
    var_77e61fc6 = itemid item_inventory::give_inventory_item(var_bd027dd9, itemcount, var_aec6fa7f, slotid);
    stockammo = var_bd027dd9.stockammo;
    if (var_77e61fc6 < itemcount) {
        if (isdefined(var_bd027dd9.var_bd027dd9) && item_world_util::function_db35e94f(var_bd027dd9.var_bd027dd9)) {
            var_bd027dd9 = item_inventory::get_inventory_item(var_bd027dd9.var_bd027dd9);
        }
        if (itemid item_inventory::function_fba4a353(var_bd027dd9)) {
            itemid thread item_inventory::function_1ac37022(var_bd027dd9, stockammo);
        }
    }
    return var_77e61fc6;
}

// Namespace namespace_efff98ec/namespace_efff98ec
// Params 7, eflags: 0x6 linked
// Checksum 0xa558853a, Offset: 0x1338
// Size: 0x6a
function private function_a240798a(item, player, *var_bd027dd9, *itemid, itemcount, *var_aec6fa7f, slotid) {
    var_77e61fc6 = itemcount item_inventory::give_inventory_item(itemid, var_aec6fa7f, undefined, slotid);
    return var_77e61fc6;
}

// Namespace namespace_efff98ec/namespace_efff98ec
// Params 7, eflags: 0x6 linked
// Checksum 0x8bcdf259, Offset: 0x13b0
// Size: 0x3e
function private function_24dc1d12(*item, *player, *var_bd027dd9, *itemid, *itemcount, *var_aec6fa7f, *slotid) {
    return 0;
}

// Namespace namespace_efff98ec/namespace_efff98ec
// Params 7, eflags: 0x6 linked
// Checksum 0x9c09b9f4, Offset: 0x13f8
// Size: 0x2ea
function private function_c3f4d281(item, *player, *var_bd027dd9, *itemid, *itemcount, *var_aec6fa7f, *slotid) {
    self hud::function_4a4de0de();
    var_a9bb683c = getweapon(#"none");
    var_f945fa92 = getweapon(#"bare_hands");
    var_f934814c = getweapon(#"hash_5dd5741f21fd680d");
    var_92587dd3 = getweapon(#"hash_4ee16eb0581e4646");
    foreach (weaponslot in namespace_a0d533d1::function_4905dddf()) {
        inventoryweapon = self namespace_a0d533d1::function_2b83d3ff(self item_inventory::function_2e711614(weaponslot));
        if (isdefined(inventoryweapon) && inventoryweapon != var_a9bb683c && inventoryweapon != var_f945fa92 && inventoryweapon.weapclass != "melee" && inventoryweapon.rootweapon != var_f934814c && inventoryweapon.rootweapon != var_92587dd3) {
            var_1326fcc7 = isdefined(slotid.var_a6762160.amount) ? slotid.var_a6762160.amount : 20;
            maxammo = inventoryweapon.maxammo;
            var_e6527384 = maxammo * var_1326fcc7 / 100;
            currentammostock = self getweaponammostock(inventoryweapon);
            var_e6527384 = currentammostock + var_e6527384;
            if (var_e6527384 < 0) {
                var_e6527384 = 0;
            } else if (var_e6527384 > maxammo) {
                var_e6527384 = maxammo;
            }
            self setweaponammostock(inventoryweapon, int(var_e6527384));
        }
    }
    return 0;
}

// Namespace namespace_efff98ec/namespace_efff98ec
// Params 7, eflags: 0x6 linked
// Checksum 0x85ef1bd8, Offset: 0x16f0
// Size: 0x3e
function private function_80ef3ea5(*item, *player, *var_bd027dd9, *itemid, *itemcount, *var_aec6fa7f, *slotid) {
    return 0;
}

// Namespace namespace_efff98ec/namespace_efff98ec
// Params 7, eflags: 0x6 linked
// Checksum 0x1482fc6d, Offset: 0x1738
// Size: 0x3e
function private function_753fb11f(*item, *player, *var_bd027dd9, *itemid, *itemcount, *var_aec6fa7f, *slotid) {
    return 0;
}

// Namespace namespace_efff98ec/namespace_efff98ec
// Params 7, eflags: 0x6 linked
// Checksum 0xdc2276b, Offset: 0x1780
// Size: 0x3e
function private function_88803841(*item, *player, *var_bd027dd9, *itemid, *itemcount, *var_aec6fa7f, *slotid) {
    return 0;
}

// Namespace namespace_efff98ec/namespace_efff98ec
// Params 7, eflags: 0x6 linked
// Checksum 0x6ff370fd, Offset: 0x17c8
// Size: 0x56
function private function_d46c2559(item, *player, *var_bd027dd9, *itemid, *itemcount, *var_aec6fa7f, *slotid) {
    item_drop::function_d8342646(slotid.var_25b21f27);
    return 0;
}

// Namespace namespace_efff98ec/namespace_efff98ec
// Params 7, eflags: 0x6 linked
// Checksum 0x3b00c9fd, Offset: 0x1828
// Size: 0x148
function private function_2650d5c6(*item, player, *var_bd027dd9, *itemid, *itemcount, *var_aec6fa7f, *slotid) {
    self hud::function_801bf40f();
    var_2cacdde7 = 50;
    inventoryitem = slotid.inventory.items[6];
    if (isdefined(inventoryitem)) {
        var_2cacdde7 = isdefined(inventoryitem.var_a6762160.var_a3aa1ca2) ? inventoryitem.var_a6762160.var_a3aa1ca2 : 50;
        if (isdefined(level.var_8cc294a7)) {
            var_2cacdde7 = [[ level.var_8cc294a7 ]](var_2cacdde7);
        }
        if (var_2cacdde7 == 0) {
            var_2cacdde7 = 50;
        }
    }
    var_2cacdde7 = int(var_2cacdde7);
    self.armor = self.armor + math::clamp(var_2cacdde7, 0, self.maxarmor);
    return 0;
}

// Namespace namespace_efff98ec/namespace_efff98ec
// Params 7, eflags: 0x6 linked
// Checksum 0x69877ca7, Offset: 0x1978
// Size: 0x3b0
function private function_a712496a(item, player, *var_bd027dd9, *itemid, itemcount, var_aec6fa7f, slotid) {
    /#
        assert(isplayer(self));
    #/
    stockammo = var_bd027dd9.stockammo;
    if (isdefined(var_bd027dd9.var_69d30864)) {
        foreach (attachment in var_bd027dd9.var_69d30864.attachments) {
            attachmentname = item_world_util::function_6a0ee21a(attachment);
            if (!isdefined(attachmentname)) {
                continue;
            }
            attachmentitem = item_world_util::function_49ce7663(attachmentname);
            if (!isdefined(attachmentitem)) {
                continue;
            }
            namespace_a0d533d1::function_9e9c82a6(var_bd027dd9, attachmentitem);
        }
    }
    if (item_inventory::get_weapon_count() == namespace_a0d533d1::function_80fb4b76()) {
        stashitem = item_world_util::function_83c20f83(var_bd027dd9);
        stashitem = stashitem & ~(isdefined(var_bd027dd9.deathstash) ? var_bd027dd9.deathstash : 0);
        weaponitem = item_inventory::function_230ceec4(itemid.currentweapon);
        if (!isdefined(weaponitem)) {
            itemid takeweapon(itemid.currentweapon);
        } else {
            itemid item_inventory::drop_inventory_item(weaponitem.var_bd027dd9, stashitem, itemid.origin, isdefined(var_bd027dd9.var_67169c0b) ? var_bd027dd9.var_67169c0b : var_bd027dd9.targetname, undefined, 1);
        }
    }
    var_77e61fc6 = itemid item_inventory::give_inventory_item(var_bd027dd9, itemcount, var_aec6fa7f, slotid);
    if (var_77e61fc6 < itemcount) {
        if (isdefined(var_bd027dd9.var_bd027dd9) && item_world_util::function_db35e94f(var_bd027dd9.var_bd027dd9)) {
            var_bd027dd9 = item_inventory::get_inventory_item(var_bd027dd9.var_bd027dd9);
        }
        if (isdefined(var_bd027dd9.var_a6762160.var_b079a6e6)) {
            itemid item_inventory::function_b579540e(var_bd027dd9, var_bd027dd9.var_a6762160.var_b079a6e6);
            weapon = namespace_a0d533d1::function_2b83d3ff(var_bd027dd9);
            itemid aat::acquire(weapon, var_bd027dd9.var_a6762160.var_b079a6e6);
        }
        itemid item_inventory::equip_weapon(var_bd027dd9, 1, 1, 0, 1, stockammo);
    }
    return var_77e61fc6;
}
