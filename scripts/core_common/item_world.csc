// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\killstreaks_shared.csc;
#using script_101d8280497ff416;
#using script_6971dbf38c33bf47;
#using script_3d35e2ff167b3a82;
#using scripts\core_common\item_inventory.csc;
#using scripts\core_common\util_shared.csc;
#using scripts\core_common\system_shared.csc;
#using script_680dddbda86931fa;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using script_474309807eb94f34;
#using scripts\core_common\activecamo_shared.csc;
#using scripts\core_common\aat_shared.csc;

#namespace item_world;

// Namespace item_world/item_world
// Params 0, eflags: 0x5
// Checksum 0x8492b417, Offset: 0x558
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"item_world", &function_70a657d8, undefined, undefined, undefined);
}

// Namespace item_world/item_world
// Params 0, eflags: 0x6 linked
// Checksum 0xf58cbdd, Offset: 0x5a0
// Size: 0x116c
function private function_70a657d8() {
    if (!item_world_util::use_item_spawns()) {
        return;
    }
    function_2777823f();
    level.showpickuphintmodel = [];
    level.var_89f832ca = [];
    level.var_62c91473 = [];
    level.var_ce95aace = [];
    level.var_7e2f5883 = [];
    level.var_19cf0be9 = [];
    level.pickupcount = [];
    level.var_d42ffee1 = [];
    level.var_418d51ad = array(#"ammo_small_caliber_item_t9", #"ammo_large_caliber_item_t9", #"ammo_ar_item_t9", #"ammo_sniper_item_t9", #"ammo_shotgun_item_t9", #"ammo_special_item_t9");
    level.var_69ee9282 = array(#"armor_item_large", #"armor_item_medium", #"armor_item_small", #"hash_2661e6734ef7668", #"armor_item_medium_t9", #"hash_101c48eb461af954", #"armor_item_lv3_t9_sr", #"armor_item_lv2_t9_sr", #"armor_item_lv1_t9_sr");
    level.var_6cb314b1 = array(#"sniperscope_wz_item", #"acog_plus_wz_item", #"reddot_wz_item", #"acog_wz_item", #"dualoptic_wz_item", #"holo_wz_item", #"reflex_wz_item", #"tritium_wz_item", #"suppressor_wz_item", #"extbarrel_wz_item", #"advmag_wz_item", #"extmag_wz_item", #"fastmag_wz_item", #"foregrip_wz_item", #"laser_sight_wz_item", #"pistol_grip_wz_item", #"stock_wz_item", #"hash_74efc2f0523a1b43", #"acog_t9_item_sr", #"hash_28efceaacc63752f", #"reflex_t9_item_sr", #"hash_af064392d860f1f", #"scope4x_t9_item_sr", #"hash_62fe2eebac0f72a4", #"hash_52158dff02a348c", #"hash_2cdf0a02b981e7ea", #"hash_628946b7b73932f2", #"hash_4675294c5c3e11d4", #"hash_3ff4acf337c05bc", #"hash_347f02dfc677355a", #"hash_19f62bc8c271d062", #"hash_57d51fc4b72dcd7b", #"hash_6d40b7ae79307bad", #"hash_7212c9ac06e56bab", #"hash_2107d3747677659d", #"hash_2551991b0ce4278e", #"extclip_t9_item_sr", #"hash_43a7c00ebad019fc", #"extclip2_t9_item_sr", #"hash_8337602f5a165af", #"mixclip_t9_item_sr", #"hash_7ec532c309e0eef7", #"mixclip2_t9_item_sr", #"hash_780b6e02fd11b515", #"hash_1e87409dae378d95", #"grip_t9_item_sr", #"grip2_t9_item_sr", #"hash_72c4fa7a2b91b0b3", #"handle_t9_item_sr", #"hash_5e8e59ff7a020c33", #"handle2_t9_item_sr", #"hash_2b8002d0d1dd882a", #"quickdraw_t9_item_sr", #"hash_776efcf8d78c80", #"quickdraw2_t9_item_sr", #"hash_12aaf0a984a5418b", #"stalker_t9_item_sr", #"hash_767e2b6d5150883b", #"stalker2_t9_item_sr", #"hash_6cd8671e4bd51c28", #"hash_57d83338a5296980", #"hash_59f84dd254fda616", #"hash_66b9864ca183b4ae", #"hash_3bf739cbe86888f0", #"tactical_t9_item_sr");
    level.var_3fd5d8f0 = array(#"frag_grenade_wz_item", #"frag_t9_item", #"frag_t9_item_sr", #"cluster_semtex_wz_item", #"semtex_t9_item", #"semtex_t9_item_sr", #"acid_bomb_wz_item", #"molotov_wz_item", #"molotov_t9_item", #"molotov_t9_item_sr", #"wraithfire_wz_item", #"hatchet_wz_item", #"hatchet_t9_item", #"hatchet_t9_item_sr", #"tomahawk_t8_wz_item", #"seeker_mine_wz_item", #"dart_wz_item", #"hawk_wz_item", #"ultimate_turret_wz_item", #"hash_49bb95f2912e68ad", #"hash_3c9430c4ac7d082e", #"hash_6a5294b915f32d32", #"hash_6cd8041bb6cd21b1", #"hash_6a07ccefe7f84985", #"hash_17f8849a56eba20f", #"satchel_charge_t9_item", #"satchel_charge_t9_item_sr", #"hash_2c9b75b17410f2de", #"swat_grenade_wz_item", #"hash_676aa70930960427", #"concussion_wz_item", #"concussion_t9_item", #"smoke_grenade_wz_item", #"smoke_grenade_wz_item_spring_holiday", #"smoke_t9_item", #"emp_grenade_wz_item", #"spectre_grenade_wz_item", #"hash_5f67f7b32b01ae53", #"hash_725e305ff465e73d", #"concussion_t9_item_sr", #"cymbal_monkey_t9_item_sr", #"hash_76ebb51bb24696a1", #"hash_51f70aff8a2ad330", #"stimshot_t9_item_sr", #"snowball_item", #"snowball_item_sr", #"hash_2b5201a6ed00b120", #"grapple_t9_item_sr", #"hash_7c7d437280e992b", #"grapple_wz_item", #"hash_12fde8b0da04d262", #"barricade_wz_item", #"spiked_barrier_wz_item", #"trophy_system_wz_item", #"concertina_wire_wz_item", #"sensor_dart_wz_item", #"supply_pod_wz_item", #"trip_wire_wz_item", #"cymbal_monkey_wz_item", #"homunculus_wz_item", #"vision_pulse_wz_item", #"flare_gun_wz_item", #"wz_snowball", #"wz_waterballoon", #"hash_1ae9ade20084359f");
    level.var_9bc8c1bc = array(#"health_item_small", #"health_item_medium", #"health_item_large", #"health_item_squad", #"hash_20699a922abaf2e1");
    level.var_683c7e30 = array(#"perk_item_stimulant", #"perk_item_awareness", #"perk_item_deadsilence", #"perk_item_lightweight", #"perk_item_drifter", #"perk_item_engineer", #"perk_item_medic", #"perk_item_reinforced", #"perk_item_looter", #"perk_item_outlander", #"perk_item_paranoia", #"perk_item_ironlungs", #"perk_item_squadlink", #"perk_item_consumer", #"perk_item_brawler");
    level.var_e93e16b = array(#"annihilator_wz_item", #"warmachine_wz_item", #"flamethrower_wz_item", #"sniper_fastrechamber_t8_gold_item", #"sniper_powerbolt_t8_gold_item", #"sniper_powersemi_t8_gold_item", #"sniper_quickscope_t8_gold_item", #"tr_longburst_t8_gold_item", #"tr_midburst_t8_gold_item", #"tr_powersemi_t8_gold_item", #"ar_accurate_t8_gold_item", #"ar_damage_t8_gold_item", #"ar_fastfire_t8_gold_item", #"ar_modular_t8_gold_item", #"ar_stealth_t8_gold_item", #"lmg_heavy_t8_gold_item", #"lmg_spray_t8_gold_item", #"lmg_standard_t8_gold_item", #"smg_accurate_t8_gold_item", #"smg_capacity_t8_gold_item", #"smg_fastfire_t8_gold_item", #"smg_handling_t8_gold_item", #"smg_standard_t8_gold_item", #"shotgun_semiauto_t8_gold_item", #"shotgun_pump_t8_gold_item", #"pistol_burst_t8_gold_item", #"pistol_revolver_t8_gold_item", #"pistol_standard_t8_gold_item");
    level.var_b9917a92 = array(#"annihilator_wz_item", #"warmachine_wz_item", #"flamethrower_wz_item", #"ray_gun_t8_item", #"launcher_standard_t8_item", #"sniper_fastrechamber_t8_item", #"sniper_powerbolt_t8_item", #"sniper_powersemi_t8_item", #"sniper_quickscope_t8_item", #"tr_leveraction_t8_item", #"tr_longburst_t8_item", #"tr_midburst_t8_item", #"tr_powersemi_t8_item", #"ar_accurate_t8_item", #"ar_damage_t8_item", #"ar_fastfire_t8_item", #"ar_galil_t8_item", #"ar_mg1909_t8_item", #"ar_modular_t8_item", #"ar_stealth_t8_item", #"lmg_double_t8_item", #"lmg_heavy_t8_item", #"lmg_spray_t8_item", #"lmg_standard_t8_item", #"smg_accurate_t8_item", #"smg_capacity_t8_item", #"smg_drum_pistol_t8_item", #"smg_fastfire_t8_item", #"smg_handling_t8_item", #"smg_mp40_t8_item", #"smg_standard_t8_item", #"smg_thompson_t8_item", #"pistol_burst_t8_item", #"pistol_revolver_t8_item", #"pistol_standard_t8_item", #"pistol_topbreak_t8_item", #"shotgun_pump_t8_item", #"shotgun_semiauto_t8_item", #"shotgun_trenchgun_t8_item", #"melee_bowie_t8_item");
    level.var_be4583aa = spawnstruct();
    level.var_be4583aa.var_2e3efdda = &function_2e3efdda;
    level.var_be4583aa.var_9b71de90 = &function_9b71de90;
    level.var_d89ef54a = getgametypesetting(#"hash_2f0beae14bf17810");
    level.weaponbasemeleeheld = getweapon(#"bare_hands");
    callback::on_localclient_connect(&_on_localclient_connect);
    callback::on_localplayer_spawned(&_on_localplayer_spawned);
    level.var_45ca79e5 = &function_9160538;
    level.var_a6c75fcb = &function_9e4552fe;
    level.var_d342a3fd = [];
    if (!isdefined(level.item_spawn_stashes)) {
        level.item_spawn_stashes = [];
    }
    if (!isdefined(level.item_spawn_drops)) {
        level.item_spawn_drops = [];
    }
    if (!isdefined(level.var_624588d5)) {
        level.var_624588d5 = [];
    }
    level thread namespace_65181344::init_spawn_system();
}

// Namespace item_world/item_world
// Params 0, eflags: 0x6 linked
// Checksum 0x59b9f52a, Offset: 0x1718
// Size: 0x1fc
function private function_2777823f() {
    clientfield::register("world", "item_world_seed", 1, 31, "int", &function_4e9220ab, 1, 0);
    clientfield::register("world", "item_world_sanity_random", 1, 16, "int", &function_7e3cc2ff, 1, 0);
    clientfield::register("world", "item_world_disable", 1, 1, "int", &function_60386766, 0, 0);
    clientfield::register_clientuimodel("hudItems.pickupHintGold", #"hash_6f4b11a0bee9b73d", #"pickuphintgold", 1, 1, "int", undefined, 0, 0);
    clientfield::register("scriptmover", "item_world_attachments", 1, 1, "int", undefined, 0, 0);
    clientfield::register("toplayer", "disableItemPickup", 1, 1, "int", undefined, 0, 0);
    clientfield::register_clientuimodel("hudItems.multiItemPickup.status", #"hash_23febb0b8f867ca1", #"status", 1, 3, "int", &function_38ebb2a1, 0, 1);
}

// Namespace item_world/item_world
// Params 7, eflags: 0x6 linked
// Checksum 0xda86bfae, Offset: 0x1920
// Size: 0x320
function private function_38ebb2a1(localclientnum, oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    clientdata = function_a7e98a1a(binitialsnap);
    if (!isdefined(clientdata) || !isstruct(clientdata)) {
        return;
    }
    if (bwastimejump == 2) {
        clientdata.var_ff9e7e43.clientdata = 1;
        if (function_a5c2a6b8(binitialsnap)) {
            clientdata.groupitems.clientdata = [];
            if (is_true(level.tabbedmultiitempickup)) {
                setuimodelvalue(createuimodel(function_1df4c3b0(binitialsnap, #"hash_159966ba825013a2"), "canUseQuickInventory"), 0);
            }
        }
    } else {
        if (bwastimejump == 0) {
            clientdata.groupitems.clientdata = [];
            player = function_27673a7(binitialsnap);
            if (isplayer(player) && isalive(player)) {
                player function_9116bb0e(binitialsnap, 1);
            }
        }
        if (is_true(level.tabbedmultiitempickup) && fieldname == 2) {
            for (i = 0; i < clientdata.inventory.var_c212de25; i++) {
                if (clientdata.inventory.items[i].var_bd027dd9 != 32767) {
                    if (clientdata.inventory.items[i].availableaction == 1 || clientdata.inventory.items[i].availableaction == 4 || clientdata.inventory.items[i].availableaction == 2 || clientdata.inventory.items[i].availableaction == 6) {
                        setuimodelvalue(createuimodel(function_1df4c3b0(binitialsnap, #"hash_159966ba825013a2"), "canUseQuickInventory"), 1);
                        break;
                    }
                }
            }
        }
    }
}

// Namespace item_world/item_world
// Params 2, eflags: 0x2 linked
// Checksum 0xfb84bce9, Offset: 0x1c48
// Size: 0xe34
function function_9116bb0e(localclientnum, closed = 0) {
    /#
        assert(isplayer(self));
    #/
    clientdata = function_a7e98a1a(localclientnum);
    var_6e2c91d0 = function_1df4c3b0(localclientnum, #"hash_23febb0b8f867ca1");
    var_cc67e8b = createuimodel(var_6e2c91d0, "count");
    if (isdefined(clientdata.groupitems) && !closed) {
        arrayremovevalue(clientdata.groupitems, undefined, 0);
        foreach (i, itemdef in clientdata.groupitems) {
            itemmodel = createuimodel(var_6e2c91d0, "item" + i);
            setuimodelvalue(createuimodel(itemmodel, "id"), itemdef.var_bd027dd9);
            if (!isdefined(itemdef.var_a6762160)) {
                setuimodelvalue(createuimodel(itemmodel, "inventoryFull"), 0);
                setuimodelvalue(createuimodel(itemmodel, "icon"), #"blacktransparent");
                setuimodelvalue(createuimodel(itemmodel, "rarity"), "none");
                setuimodelvalue(createuimodel(itemmodel, "name"), #"");
                setuimodelvalue(createuimodel(itemmodel, "claimsInventorySlot"), 0);
                setuimodelvalue(createuimodel(itemmodel, "stackCount"), 0);
                setuimodelvalue(createuimodel(itemmodel, "stashStackSize"), 0);
                setuimodelvalue(createuimodel(itemmodel, "armorTier"), 1);
                setuimodelvalue(createuimodel(itemmodel, "armor"), 0);
                setuimodelvalue(createuimodel(itemmodel, "armorMax"), 1);
                setuimodelvalue(createuimodel(itemmodel, "itemtype"), "none");
                setuimodelvalue(createuimodel(itemmodel, "specialItem"), 0);
                setuimodelvalue(createuimodel(itemmodel, "description"), #"");
            } else {
                setuimodelvalue(createuimodel(itemmodel, "itemtype"), itemdef.var_a6762160.itemtype);
                if (itemdef.var_a6762160.itemtype === #"ammo") {
                    canpickup = self function_c199bcc6(localclientnum, itemdef);
                    setuimodelvalue(createuimodel(itemmodel, "inventoryFull"), !canpickup);
                } else if (itemdef.var_a6762160.itemtype === #"armor_shard") {
                    canpickup = self function_87e71bc0(localclientnum, itemdef.var_a6762160);
                    setuimodelvalue(createuimodel(itemmodel, "inventoryFull"), !canpickup);
                } else {
                    setuimodelvalue(createuimodel(itemmodel, "inventoryFull"), 0);
                }
                description = isdefined(itemdef.var_a6762160.description) ? itemdef.var_a6762160.description : #"";
                if (description == #"" && isdefined(itemdef.var_a6762160.weapon)) {
                    itemindex = getitemindexfromref(itemdef.var_a6762160.weapon.name);
                    var_97dcd0a5 = getunlockableiteminfofromindex(itemindex);
                    if (isdefined(var_97dcd0a5) && isdefined(var_97dcd0a5.description)) {
                        description = var_97dcd0a5.description;
                    }
                }
                setuimodelvalue(createuimodel(itemmodel, "description"), isdefined(description) ? description : #"");
                pickupicon = isdefined(itemdef.var_a6762160.pickupicon) ? itemdef.var_a6762160.pickupicon : itemdef.var_a6762160.icon;
                var_9507cf45 = isdefined(itemdef.var_a6762160.var_9507cf45) ? itemdef.var_a6762160.var_9507cf45 : pickupicon;
                setuimodelvalue(createuimodel(itemmodel, "icon"), isdefined(var_9507cf45) ? var_9507cf45 : #"blacktransparent");
                setuimodelvalue(createuimodel(itemmodel, "rarity"), itemdef.var_a6762160.rarity);
                setuimodelvalue(createuimodel(itemmodel, "name"), get_item_name(itemdef.var_a6762160));
                claimsinventoryslot = item_inventory::is_inventory_item(localclientnum, itemdef.var_a6762160) && !item_inventory::function_a303c8ef(localclientnum, itemdef.var_a6762160);
                setuimodelvalue(createuimodel(itemmodel, "claimsInventorySlot"), claimsinventoryslot);
                setuimodelvalue(createuimodel(itemmodel, "stackCount"), 0);
                setuimodelvalue(createuimodel(itemmodel, "stashStackSize"), 0);
                if (itemdef.var_a6762160.itemtype === #"armor") {
                    setuimodelvalue(createuimodel(itemmodel, "armorTier"), itemdef.var_a6762160.armortier);
                    setuimodelvalue(createuimodel(itemmodel, "armor"), isdefined(isdefined(itemdef.amount) ? itemdef.amount : itemdef.var_a6762160.amount) ? isdefined(itemdef.amount) ? itemdef.amount : itemdef.var_a6762160.amount : 0);
                    setuimodelvalue(createuimodel(itemmodel, "armorMax"), isdefined(itemdef.var_a6762160.amount) ? itemdef.var_a6762160.amount : 1);
                } else {
                    setuimodelvalue(createuimodel(itemmodel, "armorTier"), 1);
                    setuimodelvalue(createuimodel(itemmodel, "armor"), 0);
                    setuimodelvalue(createuimodel(itemmodel, "armorMax"), 1);
                }
                if (is_true(itemdef.var_a6762160.stackable) || itemdef.var_a6762160.itemtype === #"ammo") {
                    if ((itemdef.var_a6762160.itemtype === #"ammo" || isstruct(itemdef)) && !isdefined(itemdef.amount)) {
                        setuimodelvalue(createuimodel(itemmodel, "stackCount"), isdefined(itemdef.var_a6762160.amount) ? itemdef.var_a6762160.amount : 1);
                    } else {
                        setuimodelvalue(createuimodel(itemmodel, "stackCount"), int(max(isdefined(itemdef.amount) ? itemdef.amount : 1, isdefined(itemdef.count) ? itemdef.count : 1)));
                    }
                } else {
                    setuimodelvalue(createuimodel(itemmodel, "stashStackSize"), isdefined(itemdef.count) ? itemdef.count : 1);
                }
                if (is_true(itemdef.var_41f13734)) {
                    setuimodelvalue(createuimodel(itemmodel, "specialItem"), 1);
                }
            }
        }
        currentcount = getuimodelvalue(var_cc67e8b);
        setuimodelvalue(var_cc67e8b, clientdata.groupitems.size);
        if (currentcount === clientdata.groupitems.size) {
        }
        var_aaa1adcb = createuimodel(var_6e2c91d0, "forceNotifyAmmoList");
        forcenotifyuimodel(var_aaa1adcb);
    } else {
        setuimodelvalue(var_cc67e8b, 0);
    }
}

// Namespace item_world/item_world
// Params 1, eflags: 0x2 linked
// Checksum 0x4b3eae1f, Offset: 0x2a88
// Size: 0x3e
function function_a5c2a6b8(localclientnum) {
    return is_true(level.tabbedmultiitempickup) || !gamepadusedlast(localclientnum);
}

// Namespace item_world/item_world
// Params 2, eflags: 0x6 linked
// Checksum 0xaeae0a66, Offset: 0x2ad0
// Size: 0xf0
function private function_3d7c12a6(localclientnum, var_1bcc6d7e) {
    modellist = [];
    for (i = 1; i <= var_1bcc6d7e; i++) {
        model = spawn(localclientnum, vectorscale((0, 0, -1), 10000), "script_model");
        model function_e082e650(localclientnum, undefined, #"tag_origin", 1);
        model hide();
        model notsolid();
        modellist[i * -1] = model;
    }
    return modellist;
}

// Namespace item_world/item_world
// Params 1, eflags: 0x6 linked
// Checksum 0x19aedbcf, Offset: 0x2bc8
// Size: 0x104
function private function_37175e73(var_fee74908) {
    level endon(#"game_ended");
    if (var_fee74908.size <= 0) {
        return;
    }
    level flag::wait_till_clear(#"hash_2d3b2a4d082ba5ee");
    level flag::wait_till(#"item_world_initialized");
    for (var_5473c308 = 0; var_5473c308 < var_fee74908.size; var_5473c308++) {
        for (bitindex = 0; bitindex < 32; bitindex++) {
            if (var_fee74908[var_5473c308] & 1 << bitindex) {
                itemindex = var_5473c308 * 32 + bitindex;
                hide_item(-1, itemindex);
            }
        }
    }
}

// Namespace item_world/item_world
// Params 1, eflags: 0x6 linked
// Checksum 0x87ec505c, Offset: 0x2cd8
// Size: 0x34c
function private function_952d97dc(localclientnum) {
    if (isdefined(level.var_d342a3fd[localclientnum])) {
        return;
    }
    data = spawnstruct();
    data.modellist.data = function_3d7c12a6(localclientnum, 125);
    data.var_d58b471d.data = 0;
    data.var_79b15dd1.data = 0;
    data.var_ffc1c0e1.data = [];
    data.var_baf65690.data = [];
    level.var_d342a3fd[localclientnum] = data;
    if (!item_inventory::function_7d5553ac()) {
        item_inventory::inventory_init(localclientnum);
    }
    level.var_d9beffb9 = util::getnextobjid(localclientnum);
    objective_add(localclientnum, level.var_d9beffb9, "invisible", #"weapon_pickup");
    level.var_383edf80 = util::getnextobjid(localclientnum);
    objective_add(localclientnum, level.var_383edf80, "invisible", #"multi_item_pickup");
    var_acc39f5a = function_1df4c3b0(localclientnum, #"hash_6f4b11a0bee9b73d");
    level.showpickuphintmodel[localclientnum] = createuimodel(var_acc39f5a, "showPickupHint");
    level.var_89f832ca[localclientnum] = createuimodel(var_acc39f5a, "pickupHintText");
    level.var_62c91473[localclientnum] = createuimodel(var_acc39f5a, "pickupHintTextOverride");
    level.var_ce95aace[localclientnum] = createuimodel(var_acc39f5a, "weapon3dHintState");
    level.var_7e2f5883[localclientnum] = createuimodel(var_acc39f5a, "weapon3dForcedHintItem");
    level.var_19cf0be9[localclientnum] = createuimodel(var_acc39f5a, "pickupHintImage");
    level.var_d42ffee1[localclientnum] = createuimodel(var_acc39f5a, "cursorHintIcon");
    level.var_437da950[localclientnum] = createuimodel(var_acc39f5a, "pickupRarity");
    level.var_d2215e8f[localclientnum] = createuimodel(var_acc39f5a, "pickupType");
    level.pickupcount[localclientnum] = createuimodel(var_acc39f5a, "pickupCount");
    callback::callback(#"hash_2127e02e6728950d", localclientnum);
}

// Namespace item_world/item_world
// Params 0, eflags: 0x4
// Checksum 0x4c36726a, Offset: 0x3030
// Size: 0x1b4
function private function_cdd9b388() {
    /#
        self notify("zmui/zm_ammomod_brainrot");
        self endon("zmui/zm_ammomod_brainrot");
        self endon(#"shutdown");
        while (1) {
            waitframe(1);
            if (getdvarint(#"hash_3fdd3b60f349d462", 0)) {
                if (isdefined(self)) {
                    origin = self.origin;
                    var_f4b807cb = function_2e3efdda(origin, undefined, 128, 2000);
                    foreach (item in var_f4b807cb) {
                        hidden = item.hidetime < 0 ? "<unknown string>" : "<unknown string>";
                        print3d(item.origin, "<unknown string>" + item.var_bd027dd9 + hidden + "<unknown string>" + item.var_a6762160.name, (0, 0, 1), 1, 0.4);
                    }
                }
            }
        }
    #/
}

// Namespace item_world/item_world
// Params 2, eflags: 0x6 linked
// Checksum 0x17dc85f4, Offset: 0x31f0
// Size: 0x6c
function private function_3ee12d25(localclientnum, model) {
    if (!isdefined(model)) {
        return;
    }
    if (isdefined(model.var_2584a90d)) {
        model function_f6e99a8d(model.var_2584a90d);
    }
    model.var_2584a90d = undefined;
    function_2990e5f(localclientnum, model);
}

// Namespace item_world/item_world
// Params 2, eflags: 0x2 linked
// Checksum 0xfe7e7efc, Offset: 0x3268
// Size: 0xc2
function function_2990e5f(localclientnum, model) {
    if (!isdefined(model)) {
        return;
    }
    if (isdefined(model.modelfx)) {
        foreach (fx in model.modelfx) {
            stopfx(localclientnum, fx);
        }
        model.modelfx = undefined;
    }
}

// Namespace item_world/item_world
// Params 1, eflags: 0x6 linked
// Checksum 0x25ddd5fe, Offset: 0x3338
// Size: 0x27a
function private function_48b8fc19(localclientnum) {
    var_7d8899cd = function_d634ed59();
    for (index = 0; index < var_7d8899cd; index++) {
        point = function_b1702735(index);
        if (!isdefined(point) || !isdefined(point.var_a6762160)) {
            break;
        }
        xmodel = function_78a9fd5f(point);
        if (isdefined(xmodel)) {
            forcestreamxmodel(xmodel, 1, 1);
        }
        if ((index + 1) % 50 == 0) {
            waitframe(1);
        }
    }
    player = function_5c10bd79(localclientnum);
    while (!isdefined(player) || !isplayer(player) || !isdefined(player.type) || player.type != #"player" || player ishidden() || player isinfreefall() || player function_9a0edd92()) {
        waitframe(1);
        player = function_5c10bd79(localclientnum);
    }
    wait(15);
    for (index = 0; index < var_7d8899cd; index++) {
        point = function_b1702735(index);
        if (!isdefined(point) || !isdefined(point.var_a6762160)) {
            break;
        }
        xmodel = function_78a9fd5f(point);
        if (isdefined(xmodel)) {
            stopforcestreamingxmodel(xmodel);
        }
        if ((index + 1) % 50 == 0) {
            waitframe(1);
        }
    }
}

// Namespace item_world/item_world
// Params 3, eflags: 0x6 linked
// Checksum 0x8f31c61e, Offset: 0x35c0
// Size: 0x142
function private function_c17fe536(localclientnum, clientdata, var_bd027dd9) {
    model = function_839d4c20(localclientnum, clientdata, var_bd027dd9);
    if (!isdefined(model) && isdefined(var_bd027dd9) && item_world_util::function_2c7fc531(var_bd027dd9)) {
        model = function_b1702735(var_bd027dd9);
        if (!item_world_util::function_83c20f83(model)) {
            model = undefined;
        }
    }
    if (!isdefined(model)) {
        return;
    }
    var_1ba7b9c8 = arraysortclosest(level.item_spawn_stashes, model.origin, 1, 0, 12);
    if (var_1ba7b9c8.size > 0) {
        return var_1ba7b9c8[0];
    }
    var_6594679a = arraysortclosest(level.var_624588d5, model.origin, 1, 0, 12);
    if (var_6594679a.size > 0) {
        return var_6594679a[0];
    }
}

// Namespace item_world/item_world
// Params 3, eflags: 0x6 linked
// Checksum 0xff125424, Offset: 0x3710
// Size: 0x84
function private function_839d4c20(*localclientnum, clientdata, var_bd027dd9) {
    if (!isdefined(var_bd027dd9)) {
        return;
    }
    if (isdefined(clientdata.modellist[var_bd027dd9])) {
        model = clientdata.modellist[var_bd027dd9];
    } else if (isdefined(level.item_spawn_drops[var_bd027dd9])) {
        model = level.item_spawn_drops[var_bd027dd9];
    }
    return model;
}

// Namespace item_world/item_world
// Params 3, eflags: 0x6 linked
// Checksum 0xf4d843d7, Offset: 0x37a0
// Size: 0x98
function private function_61f5d33a(localclientnum, clientdata, var_bd027dd9) {
    model = function_839d4c20(localclientnum, clientdata, var_bd027dd9);
    if (!isdefined(model) && item_world_util::function_2c7fc531(var_bd027dd9)) {
        model = function_b1702735(var_bd027dd9);
        if (!item_world_util::function_83c20f83(model)) {
            model = undefined;
        }
    }
    return model;
}

// Namespace item_world/item_world
// Params 4, eflags: 0x2 linked
// Checksum 0x8b68f79e, Offset: 0x3840
// Size: 0x2ba
function function_fcfd6064(localclientnum, var_a6762160, clientdata, var_bd027dd9) {
    if (isdefined(level.var_ba997)) {
        var_8ad7f92f = [[ level.var_ba997 ]](localclientnum, var_a6762160, clientdata, var_bd027dd9);
        return var_8ad7f92f;
    }
    var_8ad7f92f = #"hash_312ceb838675b80";
    if (isdefined(var_a6762160)) {
        switch (var_a6762160.rarity) {
        case #"none":
            break;
        case #"resource":
            var_8ad7f92f = #"hash_312ceb838675b80";
            break;
        case #"uncommon":
            var_8ad7f92f = #"hash_70c807782a37573e";
            break;
        case #"rare":
            var_8ad7f92f = #"hash_5b08235c0b55a003";
            break;
        case #"epic":
            var_8ad7f92f = #"rob_sr_item_purple";
            break;
        case #"legendary":
            var_8ad7f92f = #"hash_64261dabb4df88cd";
            break;
        case #"ultra":
            var_8ad7f92f = #"rob_sr_item_gold";
            break;
        case #"loadout":
            var_8ad7f92f = #"hash_3088f081654a720e";
            break;
        }
        if (var_a6762160.itemtype == #"resource") {
            var_8ad7f92f = #"hash_2f523d47697a9ce3";
        }
        if (is_true(var_a6762160.var_47f145b4)) {
            var_8ad7f92f = #"hash_52f7937d76fafca0";
        }
        if (isdefined(var_a6762160.var_599225da)) {
            var_8ad7f92f = var_a6762160.var_599225da;
        }
    }
    if (isdefined(var_bd027dd9) && isdefined(clientdata) && isdefined(clientdata.var_ffc1c0e1)) {
        if (isdefined(clientdata.var_ffc1c0e1[var_bd027dd9]) && clientdata.var_ffc1c0e1[var_bd027dd9].servertime > getservertime(localclientnum, 1)) {
            var_8ad7f92f = #"hash_3d6eb4b9bbc74fbd";
        }
    }
    return var_8ad7f92f;
}

// Namespace item_world/item_world
// Params 5, eflags: 0x6 linked
// Checksum 0xdb826d80, Offset: 0x3b08
// Size: 0x1ac
function private function_78bf134c(localclientnum, clientdata, var_bd027dd9, model, var_a6762160) {
    if (!isdefined(model)) {
        return;
    }
    if (!isdefined(var_a6762160)) {
        if (isdefined(model.var_bad13452)) {
            if (model.var_bad13452 == 2) {
                function_3ee12d25(localclientnum, model);
                return;
            }
        } else if (!isdefined(model.type)) {
            state = function_ffdbe8c2(model);
            if (state == 2) {
                function_3ee12d25(localclientnum, model);
                return;
            }
        }
    }
    var_8ad7f92f = function_fcfd6064(localclientnum, var_a6762160, clientdata, var_bd027dd9);
    if (isdefined(model.var_2584a90d) && model.var_2584a90d !== var_8ad7f92f) {
        model function_f6e99a8d(model.var_2584a90d);
    }
    if (isdefined(var_8ad7f92f)) {
        if (!model function_d2503806(var_8ad7f92f)) {
            model playrenderoverridebundle(var_8ad7f92f);
        }
    }
    model.var_2584a90d = var_8ad7f92f;
    if (isdefined(var_a6762160)) {
        function_84964a9e(localclientnum, var_a6762160, model, var_bd027dd9);
    }
}

// Namespace item_world/item_world
// Params 4, eflags: 0x2 linked
// Checksum 0x56ef6057, Offset: 0x3cc0
// Size: 0x47c
function function_84964a9e(localclientnum, var_a6762160, model, var_bd027dd9) {
    if (isdefined(var_a6762160) && isdefined(var_a6762160.worldfx) && var_a6762160.worldfx.size > 0 && !isdefined(model.modelfx) && !model ishidden()) {
        if (isdefined(var_bd027dd9) && item_world_util::function_da09de95(var_bd027dd9)) {
            entnum = item_world_util::function_c094ccd3(var_bd027dd9);
            if (isdefined(entnum)) {
                var_95b3bee0 = getentbynum(localclientnum, entnum);
            }
        }
        if (!isdefined(var_95b3bee0) || isdefined(var_95b3bee0)) {
            model.modelfx.model = [];
            if (!isdefined(var_a6762160.var_22d128f2) && !isdefined(var_a6762160.var_22d128f2) && !isdefined(var_a6762160.var_22d128f2)) {
                foreach (var_a6f47d78 in var_a6762160.worldfx) {
                    model.modelfx[model.modelfx.size] = util::playfxontag(localclientnum, var_a6f47d78.worldfx, model, "tag_origin");
                }
            } else {
                originoffset = (isdefined(var_a6762160.var_5dc4470b) ? var_a6762160.var_5dc4470b : 0, isdefined(var_a6762160.var_54a3b4ca) ? var_a6762160.var_54a3b4ca : 0, isdefined(var_a6762160.var_3e688854) ? var_a6762160.var_3e688854 : 0);
                originoffset = rotatepoint(originoffset * -1, model.angles);
                originoffset = originoffset + rotatepoint((isdefined(var_a6762160.var_22d128f2) ? var_a6762160.var_22d128f2 : 0, isdefined(var_a6762160.var_48907470) ? var_a6762160.var_48907470 : 0, isdefined(var_a6762160.var_702943a1) ? var_a6762160.var_702943a1 : 0), model.angles);
                angles = combineangles(model.angles, (isdefined(var_a6762160.var_15b88fde) ? var_a6762160.var_15b88fde : 0, isdefined(var_a6762160.var_8c9a7dc8) ? var_a6762160.var_8c9a7dc8 : 0, isdefined(var_a6762160.var_7a51d937) ? var_a6762160.var_7a51d937 : 0));
                forward = anglestoforward(angles);
                up = anglestoup(angles);
                foreach (var_a6f47d78 in var_a6762160.worldfx) {
                    model.modelfx[model.modelfx.size] = playfx(localclientnum, var_a6f47d78.worldfx, model.origin + originoffset, forward, up);
                }
            }
        }
    }
}

// Namespace item_world/item_world
// Params 4, eflags: 0x6 linked
// Checksum 0xc53a7918, Offset: 0x4148
// Size: 0xb2
function private function_3bd99d2f(localclientnum, *clientdata, vehicle, clear = 0) {
    if (!isdefined(vehicle)) {
        return;
    }
    if (clear) {
        function_3ee12d25(clientdata, vehicle);
        return;
    }
    var_8ad7f92f = #"hash_3d6eb4b9bbc74fbd";
    if (!vehicle function_d2503806(var_8ad7f92f)) {
        vehicle playrenderoverridebundle(var_8ad7f92f);
    }
    vehicle.var_2584a90d = var_8ad7f92f;
}

// Namespace item_world/item_world
// Params 1, eflags: 0x2 linked
// Checksum 0xc6c24597, Offset: 0x4208
// Size: 0x92
function function_7731d23c(clientdata) {
    model = isdefined(self.var_bd027dd9) ? clientdata.modellist[self.var_bd027dd9] : self;
    if (isdefined(self.type) && self.type === #"missile") {
        model = self;
    }
    if (!isdefined(model) && isentity(self)) {
        model = self;
    }
    return model;
}

// Namespace item_world/item_world
// Params 1, eflags: 0x6 linked
// Checksum 0xa323cccf, Offset: 0x42a8
// Size: 0x23e
function private function_e2c19e6b(localclientnum) {
    self endon(#"shutdown");
    clientdata = function_a7e98a1a(localclientnum);
    if (!isdefined(clientdata)) {
        return;
    }
    if (clientdata.var_d7bd75b5) {
        return;
    }
    clientdata.var_d7bd75b5.clientdata = 1;
    var_7c7fec2b = arraycopy(level.var_2b5a36e1);
    var_7b429234 = getarraykeys(var_7c7fec2b);
    servertime = getservertime(localclientnum);
    waitframe(1);
    var_f1ae160a = 0;
    for (index = 0; index < var_7b429234.size; index++) {
        var_f1ae160a++;
        var_b7d66c97 = var_7c7fec2b[var_7b429234[index]];
        if (var_f1ae160a % 20 == 0) {
            waitframe(1);
        }
        if (!isdefined(var_b7d66c97) || !isdefined(var_b7d66c97.hidetime)) {
            continue;
        }
        if (var_b7d66c97.hidetime > 0 && var_b7d66c97.hidetime < servertime) {
            continue;
        }
        model = clientdata.modellist[var_b7d66c97.var_bd027dd9];
        if (!isdefined(model)) {
            continue;
        }
        timeoutlength = servertime - var_b7d66c97.var_f4522f8c;
        var_8cc6abc2 = int(floor(timeoutlength / 400)) % 2 == 0;
        if (var_8cc6abc2) {
            model show();
        } else {
            model hide();
        }
    }
    clientdata.var_d7bd75b5.clientdata = 0;
}

// Namespace item_world/item_world
// Params 2, eflags: 0x6 linked
// Checksum 0x60eef7f5, Offset: 0x44f0
// Size: 0x100e
function private _draw(localclientnum, draworigin) {
    self endon(#"shutdown");
    clientdata = function_a7e98a1a(localclientnum);
    if (!isdefined(clientdata)) {
        return;
    }
    var_5f6ea063 = is_true(self.var_5f6ea063);
    self.var_5f6ea063 = undefined;
    self.var_506495f9 = undefined;
    servertime = getservertime(localclientnum, 0);
    clientdata.var_79b15dd1 = servertime;
    clientdata.drawing.clientdata = 1;
    var_6369afab = function_963d3f6e();
    if (isplayer(self) && (self isinfreefall() || self function_9a0edd92())) {
        var_6369afab = 4050;
    }
    maxdist = getdvarfloat(#"hash_2cd1a08f81049564", var_6369afab);
    var_f4b807cb = function_abaeb170(draworigin, undefined, 125, maxdist, -1, 1, servertime);
    var_6665e24 = arraysortclosest(level.item_spawn_drops, draworigin, 125, 0, maxdist);
    var_13e4be37 = [];
    foreach (dynamicitem in var_6665e24) {
        if (isdefined(dynamicitem) && !item_world_util::function_83c20f83(dynamicitem)) {
            var_13e4be37[var_13e4be37.size] = dynamicitem;
        }
    }
    if (var_13e4be37.size > 0) {
        var_f4b807cb = arraycombine(var_f4b807cb, var_13e4be37, 1, 0);
        var_f4b807cb = arraysortclosest(var_f4b807cb, draworigin, 125, 0, maxdist);
    }
    waitframe(1);
    clientdata.var_89e328b4.clientdata = clientdata.modellist;
    clientdata.modellist.clientdata = [];
    var_c29769e0 = [];
    index = 0;
    /#
        assert(clientdata.var_89e328b4.size == 125);
    #/
    for (index = 0; index < var_f4b807cb.size; index++) {
        item = var_f4b807cb[index];
        if (!isdefined(item)) {
            continue;
        }
        id = item.var_bd027dd9;
        if (isdefined(clientdata.var_89e328b4[id])) {
            model = clientdata.var_89e328b4[id];
            clientdata.modellist[id] = model;
            clientdata.var_89e328b4[id] = undefined;
        } else {
            var_c29769e0[var_c29769e0.size] = item;
        }
        if ((index + 1) % 20 == 0) {
            waitframe(1);
        }
    }
    waitframe(1);
    arrayremovevalue(clientdata.var_89e328b4, undefined, 0);
    waitframe(1);
    /#
        assert(clientdata.var_89e328b4.size + clientdata.modellist.size == 125);
    #/
    /#
        assert(clientdata.var_89e328b4.size >= var_c29769e0.size);
    #/
    for (index = 0; index < var_c29769e0.size && index < clientdata.var_89e328b4.size; index++) {
        item = var_c29769e0[index];
        model = clientdata.var_89e328b4[index];
        if (isentity(model)) {
            model unlink();
            if (!isdefined(item)) {
                model hide();
                function_2990e5f(localclientnum, model);
                function_3ee12d25(localclientnum, model);
                clientdata.modellist[index * -1 - 1] = model;
            } else {
                model.origin.model = item.origin;
                model.angles.model = item.angles;
                model function_e082e650(localclientnum, item, function_78a9fd5f(item), item.var_a6762160.modelscale);
                model.id.model = item.id;
                model.var_bd027dd9.model = item.var_bd027dd9;
                shouldshow = item_world_util::function_da09de95(item.var_bd027dd9) && item_world_util::can_pick_up(item, servertime);
                shouldshow = shouldshow & (item.var_bd027dd9 < function_8322cf16() && item_world_util::can_pick_up(function_b1702735(item.var_bd027dd9), servertime));
                if (is_true(self.var_fc689684)) {
                    shouldshow = shouldshow & item.var_bd027dd9 < function_8322cf16();
                }
                shouldshow = shouldshow & !(isdefined(item.type) && item.type === #"missile");
                if (shouldshow) {
                    model show();
                } else {
                    model hide();
                    function_2990e5f(localclientnum, model);
                }
                originoffset = (isdefined(item.var_a6762160.var_5dc4470b) ? item.var_a6762160.var_5dc4470b : 0, isdefined(item.var_a6762160.var_54a3b4ca) ? item.var_a6762160.var_54a3b4ca : 0, isdefined(item.var_a6762160.var_3e688854) ? item.var_a6762160.var_3e688854 : 0);
                model.origin.model = model.origin + rotatepoint(originoffset, model.angles);
                if (item_world_util::function_da09de95(item.var_bd027dd9)) {
                    model linkto(item);
                }
                clientdata.modellist[item.var_bd027dd9] = model;
            }
        }
        if ((index + 1) % 20 == 0) {
            waitframe(1);
        }
    }
    /#
        assert(clientdata.var_89e328b4.size - index + clientdata.modellist.size == 125);
    #/
    waitframe(1);
    while (index < clientdata.var_89e328b4.size) {
        model = clientdata.var_89e328b4[index];
        if (!isdefined(model)) {
            model = clientdata.var_89e328b4[index * -1];
        }
        if (isdefined(model)) {
            model hide();
            function_2990e5f(localclientnum, model);
            function_3ee12d25(localclientnum, model);
            clientdata.modellist[index * -1 - 1] = model;
        } else {
            /#
                assert(0);
            #/
        }
        if ((index + 1) % 20 == 0) {
            waitframe(1);
        }
        index++;
    }
    /#
        assert(clientdata.modellist.size == 125);
    #/
    clientdata.var_89e328b4 = undefined;
    waitframe(1);
    /#
        assert(clientdata.modellist.size == 125);
    #/
    function_b032ccd(localclientnum, clientdata.modellist);
    if (getdvarint(#"hash_220f360a2cc8359a", 1)) {
        var_b8db3f93 = arraysortclosest(level.item_spawn_drops, draworigin, undefined, maxdist);
        foreach (index, item in var_b8db3f93) {
            function_3ee12d25(localclientnum, item);
            if ((index + 1) % 20 == 0) {
                waitframe(1);
            }
        }
        waitframe(1);
        var_f945c1d4 = arraysortclosest(level.item_spawn_stashes, draworigin, undefined, maxdist);
        foreach (index, supplystash in var_f945c1d4) {
            function_3ee12d25(localclientnum, supplystash);
            if ((index + 1) % 20 == 0) {
                waitframe(1);
            }
        }
        waitframe(1);
        var_8f6dbb2 = arraysortclosest(level.var_624588d5, draworigin, undefined, maxdist);
        foreach (index, deathstash in var_8f6dbb2) {
            function_3ee12d25(localclientnum, deathstash);
            if ((index + 1) % 20 == 0) {
                waitframe(1);
            }
        }
        waitframe(1);
        var_6665e24 = arraysortclosest(level.item_spawn_drops, draworigin, 75, 0, maxdist);
        waitframe(1);
        var_ac2b6007 = arraysortclosest(level.item_spawn_stashes, draworigin, 75, 0, maxdist);
        waitframe(1);
        var_c36bd68a = arraysortclosest(level.var_624588d5, draworigin, 75, 0, maxdist);
        waitframe(1);
        var_f4b807cb = arraycombine(var_f4b807cb, var_6665e24, 1, 0);
        waitframe(1);
        var_f4b807cb = arraycombine(var_f4b807cb, var_ac2b6007, 1, 0);
        waitframe(1);
        var_f4b807cb = arraycombine(var_f4b807cb, var_c36bd68a, 1, 0);
        waitframe(1);
        var_f4b807cb = arraysortclosest(var_f4b807cb, draworigin, 125 + var_6665e24.size, 0, maxdist);
        waitframe(1);
        if (isdefined(self) && var_5f6ea063) {
            for (index = 0; index < var_f4b807cb.size; index++) {
                item = var_f4b807cb[index];
                if (!isdefined(item)) {
                    continue;
                }
                model = item function_7731d23c(clientdata);
                function_3ee12d25(localclientnum, model);
                if ((index + 1) % 20 == 0) {
                    waitframe(1);
                }
            }
        }
        waitframe(1);
        for (index = int(min(75, var_f4b807cb.size)); index < 125 && index < var_f4b807cb.size; index++) {
            item = var_f4b807cb[index];
            if (!isdefined(item)) {
                continue;
            }
            model = item function_7731d23c(clientdata);
            function_3ee12d25(localclientnum, model);
            if ((index + 1) % 20 == 0) {
                waitframe(1);
            }
        }
        waitframe(1);
        for (index = 0; index < 75 && index < var_f4b807cb.size; index++) {
            item = var_f4b807cb[index];
            if (!isdefined(item)) {
                continue;
            }
            model = item function_7731d23c(clientdata);
            function_78bf134c(localclientnum, clientdata, item.var_bd027dd9, model, item.var_a6762160);
            if ((index + 1) % 20 == 0) {
                waitframe(1);
            }
        }
    }
    clientdata.var_844c8166 = draworigin;
    clientdata.var_f4b807cb = var_f4b807cb;
    clientdata.var_d58b471d.clientdata = var_f4b807cb.size;
    clientdata.drawing = undefined;
}

// Namespace item_world/item_world
// Params 1, eflags: 0x6 linked
// Checksum 0xfcab5c6e, Offset: 0x5508
// Size: 0x1e4
function private function_78a9fd5f(point) {
    if (!isdefined(level.var_8c615e33)) {
        level.var_8c615e33 = [];
    }
    if (!isstruct(point) && isdefined(point.type == #"scriptmover") && isdefined(point.var_a6762160.var_77d2cbb5) && point getentitynumber() < 1024) {
        return point.var_a6762160.var_77d2cbb5;
    }
    if (!isdefined(level.var_8c615e33[point.var_a6762160.name])) {
        if (isdefined(point.var_a6762160.model) && point.var_a6762160.model != "") {
            level.var_8c615e33[point.var_a6762160.name] = point.var_a6762160.model;
        } else if (isdefined(point.var_a6762160.weapon) && point.var_a6762160.weapon !== level.weaponnone) {
            level.var_8c615e33[point.var_a6762160.name] = point.var_a6762160.weapon.worldmodel;
        } else {
            level.var_8c615e33[point.var_a6762160.name] = "tag_origin";
        }
    }
    return level.var_8c615e33[point.var_a6762160.name];
}

// Namespace item_world/item_world
// Params 1, eflags: 0x6 linked
// Checksum 0xf1c4feb9, Offset: 0x56f8
// Size: 0x22
function private function_8cf40a8c(localclientnum) {
    return getcamposbylocalclientnum(localclientnum);
}

// Namespace item_world/item_world
// Params 1, eflags: 0x6 linked
// Checksum 0xfec6cbde, Offset: 0x5728
// Size: 0x24
function private function_9e4552fe(var_fee74908) {
    level thread function_37175e73(var_fee74908);
}

// Namespace item_world/item_world
// Params 5, eflags: 0x6 linked
// Checksum 0xf1de040a, Offset: 0x5758
// Size: 0x652
function private function_9160538(localclientnum, eventtype, eventdata, var_c5a66313, var_567004a8) {
    waitframe(1);
    level flag::wait_till(#"item_world_initialized");
    if (!isdefined(level.var_d342a3fd[localclientnum])) {
        return;
    }
    player = function_27673a7(localclientnum);
    isalive = isalive(player);
    switch (eventtype) {
    case 2:
        function_1b11e73c();
        var_bd027dd9 = eventdata;
        hide_item(localclientnum, var_bd027dd9);
        function_b78a9820(localclientnum);
        item = function_b1702735(var_bd027dd9);
        item_inventory::function_31868137(localclientnum, item);
        play_pickup_fx(localclientnum, item);
        break;
    case 3:
        var_bd027dd9 = eventdata;
        showitem = is_true(var_c5a66313);
        function_1b11e73c();
        waittillframeend();
        show_item(localclientnum, var_bd027dd9, showitem);
        function_b78a9820(localclientnum);
        clientdata = function_a7e98a1a(localclientnum);
        model = function_61f5d33a(localclientnum, clientdata, var_bd027dd9);
        if (isdefined(model)) {
            function_a4886b1e(localclientnum, var_bd027dd9, model);
        }
        play_spawn_fx(localclientnum, var_bd027dd9);
        break;
    case 4:
        itemid = eventdata;
        count = var_c5a66313;
        slotid = var_567004a8 ? var_567004a8 - 1 : undefined;
        if (!isalive) {
            return;
        }
        item_inventory::function_9c4460e0(localclientnum, itemid, count, slotid);
        function_b78a9820(localclientnum);
        break;
    case 11:
        var_bd027dd9 = eventdata;
        if (!isalive) {
            return;
        }
        item_inventory::consume_item(localclientnum, var_bd027dd9);
        break;
    case 15:
        var_bd027dd9 = eventdata;
        if (!isalive) {
            return;
        }
        item_inventory::function_52e537be(localclientnum, var_bd027dd9);
        break;
    case 5:
        var_bd027dd9 = eventdata;
        if (!isalive) {
            return;
        }
        item_inventory::function_c6ff0aa2(localclientnum, var_bd027dd9);
        function_b78a9820(localclientnum);
        break;
    case 6:
        var_bd027dd9 = eventdata;
        if (!isalive) {
            return;
        }
        item_inventory::function_3bd1836f(localclientnum, var_bd027dd9);
        function_b78a9820(localclientnum);
        break;
    case 12:
        var_c9293a27 = eventdata;
        var_8f194e5a = var_c5a66313;
        if (!isalive) {
            return;
        }
        item_inventory::function_26c87da8(localclientnum, var_c9293a27, var_8f194e5a);
        break;
    case 7:
        var_bd027dd9 = eventdata;
        if (!isalive) {
            return;
        }
        item_inventory::function_fa372100(localclientnum, var_bd027dd9);
        break;
    case 8:
        var_bd027dd9 = eventdata;
        function_b78a9820(localclientnum);
        break;
    case 9:
        var_bd027dd9 = eventdata;
        count = var_c5a66313;
        if (!isalive) {
            return;
        }
        item_inventory::update_inventory_item(localclientnum, var_bd027dd9, count);
        function_b78a9820(localclientnum);
        break;
    case 10:
        item_inventory::inventory_init(localclientnum);
        break;
    case 13:
        var_bd027dd9 = eventdata;
        var_2ccf7a1c = var_c5a66313;
        function_347698a5(localclientnum, var_bd027dd9, var_2ccf7a1c);
        break;
    case 14:
        vehicleentnum = eventdata;
        var_2ccf7a1c = var_c5a66313;
        function_d2f95c1a(localclientnum, vehicleentnum, var_2ccf7a1c);
        break;
    case #"hash_defdefdefdefdef0":
        /#
            assertmsg("<unknown string>" + eventtype);
        #/
        break;
    }
}

// Namespace item_world/item_world
// Params 7, eflags: 0x6 linked
// Checksum 0x99a26742, Offset: 0x5db8
// Size: 0xe8
function private function_60386766(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    level flag::wait_till(#"item_world_initialized");
    foreach (supply_stash in level.item_spawn_stashes) {
        setdynentenabled(supply_stash, !bwastimejump);
    }
}

// Namespace item_world/item_world
// Params 7, eflags: 0x6 linked
// Checksum 0x425413, Offset: 0x5ea8
// Size: 0x504
function private function_4e9220ab(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        level.var_ac56bfa4 = undefined;
        waitframe(1);
        if (isdemoplaying()) {
            function_8722e0f2(1);
        }
        if (!issplitscreenhost(fieldname)) {
            function_1b11e73c();
        }
        level flag::wait_till_clear(#"hash_2d3b2a4d082ba5ee");
        level flag::set(#"hash_2d3b2a4d082ba5ee");
        if (level flag::get(#"item_world_reset")) {
            return;
        }
        seed = bwastimejump;
        level.item_spawn_seed = seed;
        level flag::set(#"item_world_reset");
        level flag::clear(#"item_world_initialized");
        data = function_a7e98a1a(fieldname);
        if (!isdefined(data.inventory) && !item_inventory::function_7d5553ac()) {
            level item_inventory::inventory_init(fieldname);
        }
        clientdata = function_a7e98a1a(fieldname);
        if (isdefined(clientdata) && isdefined(clientdata.modellist)) {
            models = [];
            foreach (model in clientdata.modellist) {
                model notsolid();
                model hide();
                function_2990e5f(fieldname, model);
                function_3ee12d25(fieldname, model);
                models[models.size * -1 - 1] = model;
            }
            clientdata.modellist = models;
        }
        foreach (var_bd027dd9, serverinfo in clientdata.var_ffc1c0e1) {
            clientdata.var_ffc1c0e1[var_bd027dd9].servertime = 0;
        }
        foreach (vehicleentnum, serverinfo in clientdata.var_baf65690) {
            clientdata.var_baf65690[vehicleentnum].servertime = 0;
        }
        if (issplitscreenhost(fieldname)) {
            level namespace_f0884ae5::setup(fieldname, seed);
        }
        level thread function_48b8fc19(fieldname);
        player = function_5c10bd79(fieldname);
        player.var_5f6ea063.player = 1;
        level flag::set(#"item_world_initialized");
        level flag::clear(#"hash_2d3b2a4d082ba5ee");
        if (isdemoplaying()) {
            function_8722e0f2(0);
        }
    }
}

// Namespace item_world/item_world
// Params 7, eflags: 0x6 linked
// Checksum 0x18fee26f, Offset: 0x63b8
// Size: 0x4c
function private function_7e3cc2ff(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    level.var_ac56bfa4 = bwastimejump;
}

// Namespace item_world/item_world
// Params 1, eflags: 0x6 linked
// Checksum 0x6469e001, Offset: 0x6410
// Size: 0x24
function private function_e2e7ee77(localclientnum) {
    self function_e1f6ddbf(localclientnum);
}

// Namespace item_world/item_world
// Params 1, eflags: 0x6 linked
// Checksum 0x5fec4453, Offset: 0x6440
// Size: 0x5c
function private function_e1f6ddbf(localclientnum) {
    setting = function_ab88dbd2(localclientnum, #"warzoneprioritypickups");
    if (isdefined(setting)) {
        function_97fedb0d(localclientnum, 2, setting);
    }
}

// Namespace item_world/item_world
// Params 1, eflags: 0x6 linked
// Checksum 0xf819f659, Offset: 0x64a8
// Size: 0x3c
function private _on_localclient_connect(localclientnum) {
    function_952d97dc(localclientnum);
    self function_e2e7ee77(localclientnum);
}

// Namespace item_world/item_world
// Params 1, eflags: 0x6 linked
// Checksum 0xf788ffc4, Offset: 0x64f0
// Size: 0xf4
function private _on_localplayer_spawned(localclientnum) {
    /#
        self thread function_cdd9b388();
    #/
    function_952d97dc(localclientnum);
    if (self function_21c0fa55()) {
        self function_e2e7ee77(localclientnum);
        if (!is_true(getgametypesetting(#"hash_36c2645732ad1c3b")) || !item_inventory::function_7d5553ac()) {
            self thread _update_loop(localclientnum);
        }
        level callback::function_6231c19(&item_inventory::function_6231c19);
    }
}

// Namespace item_world/item_world
// Params 2, eflags: 0x6 linked
// Checksum 0x7a241004, Offset: 0x65f0
// Size: 0x2b0
function private _set_weapon(localclientnum, item) {
    if (isdefined(item) && isdefined(item.var_a6762160.weapon) && !isdefined(item.var_a6762160.model) && isdefined(item.var_a6762160.weapon.worldmodel)) {
        weapon = namespace_a0d533d1::function_2b83d3ff(item);
        camoweapon = activecamo::function_b259f3e0(weapon);
        var_57fe74e5 = undefined;
        var_fd90b0bb = undefined;
        if (isdefined(getgametypesetting(#"hash_54fe37a58b87c7a0")) ? getgametypesetting(#"hash_54fe37a58b87c7a0") : 0) {
            if (isdefined(item.weapon)) {
                weapon = item.weapon;
            }
            var_57fe74e5 = self getbuildkitweaponoptions(localclientnum, camoweapon);
            var_fd90b0bb = self function_1744e243(localclientnum, camoweapon);
        } else if (isentity(item)) {
            var_57fe74e5 = item function_ade49959();
            var_fd90b0bb = item function_8cbd254d();
        }
        if (isdefined(var_57fe74e5) || isdefined(var_fd90b0bb)) {
            self useweaponmodel(level.weaponnone, "tag_origin");
            self useweaponmodel(weapon, undefined, var_57fe74e5, var_fd90b0bb);
        } else {
            self useweaponmodel(weapon);
        }
        self useweaponhidetags(weapon);
        if (isdefined(var_57fe74e5)) {
            self activecamo::function_6efb762c(localclientnum, camoweapon, var_57fe74e5);
        }
        return 1;
    } else {
        self detachall();
        self useweaponmodel(level.weaponnone, "tag_origin");
        return 0;
    }
}

// Namespace item_world/item_world
// Params 4, eflags: 0x6 linked
// Checksum 0x7d49e62b, Offset: 0x68a8
// Size: 0xfc
function private function_e082e650(localclientnum, item, newmodel, scale) {
    if (newmodel === self.model) {
        if (!isdefined(item) && self.weapon == level.weaponnone) {
            return;
        }
    }
    function_2990e5f(localclientnum, item);
    function_3ee12d25(localclientnum, self);
    self setscale(scale);
    if (isdefined(newmodel) && (!self _set_weapon(localclientnum, item) || isdefined(item.var_a6762160.model))) {
        self setmodel(newmodel);
    }
}

// Namespace item_world/item_world
// Params 1, eflags: 0x6 linked
// Checksum 0x5960549, Offset: 0x69b0
// Size: 0x168
function private function_96fa1c6d(localclientnum) {
    clientdata = function_a7e98a1a(localclientnum);
    if (is_true(clientdata.drawing)) {
        return 0;
    }
    if (!isdefined(clientdata.var_844c8166)) {
        return 1;
    }
    if (function_1cbf351b(localclientnum)) {
        return 1;
    }
    servertime = getservertime(localclientnum);
    if (servertime < clientdata.var_79b15dd1) {
        return 1;
    }
    var_605384fe = function_8cf40a8c(localclientnum);
    var_48f611aa = distancesquared(clientdata.var_844c8166, var_605384fe);
    if (var_48f611aa >= function_a3f6cdac(72)) {
        return 1;
    }
    if (is_true(self.var_5f6ea063) || is_true(self.var_506495f9)) {
        return 1;
    }
    return 0;
}

// Namespace item_world/item_world
// Params 1, eflags: 0x6 linked
// Checksum 0xee1cad4c, Offset: 0x6b20
// Size: 0x56
function private function_c7e5c26(localclientnum) {
    clientdata = function_a7e98a1a(localclientnum);
    if (is_true(clientdata.var_a4ad122e)) {
        return 0;
    }
    return 1;
}

// Namespace item_world/item_world
// Params 3, eflags: 0x6 linked
// Checksum 0xd209e1a5, Offset: 0x6b80
// Size: 0x72
function private function_34418003(localclientnum, *eyepos, *angles) {
    clientdata = function_a7e98a1a(angles);
    if (is_true(clientdata.var_ff9e7e43)) {
        clientdata.var_ff9e7e43.clientdata = 0;
        return 1;
    }
    return 0;
}

// Namespace item_world/item_world
// Params 3, eflags: 0x6 linked
// Checksum 0x2e9f97f4, Offset: 0x6c00
// Size: 0x2da
function private function_5cbe24ea(&dest, &source, &order) {
    items = [];
    foreach (item in source) {
        if (!isdefined(item)) {
            continue;
        }
        itemname = item.var_a6762160.name;
        if (!isdefined(items[itemname])) {
            items[itemname] = [];
        }
        size = items[itemname].size;
        items[itemname][size] = item;
    }
    foreach (itemname in order) {
        if (isdefined(items[itemname])) {
            foreach (item in items[itemname]) {
                dest[dest.size] = item;
            }
        }
        items[itemname] = undefined;
    }
    foreach (itemarray in items) {
        if (!isdefined(itemarray)) {
            continue;
        }
        foreach (item in itemarray) {
            if (!isdefined(item)) {
                continue;
            }
            dest[dest.size] = item;
        }
    }
}

// Namespace item_world/item_world
// Params 1, eflags: 0x6 linked
// Checksum 0x71742d10, Offset: 0x6ee8
// Size: 0x11ce
function private function_43d3ebe1(&items) {
    /#
        assert(isplayer(self));
    #/
    if (items.size <= 1) {
        return items;
    }
    arrayremovevalue(items, undefined, 0);
    sorted = [];
    itemtypes = [];
    stash = item_world_util::function_31f5aa51(items[0]);
    var_e30063d2 = isdefined(stash) && is_true(stash.lootlocker);
    if (var_e30063d2) {
        lootweapons = self namespace_a0d533d1::get_loot_weapons();
        if (lootweapons.size > 0) {
            var_41f13734 = lootweapons[0];
            for (index = 0; index < items.size; index++) {
                item = items[index];
                if (!isdefined(items[index].var_a6762160) || !isdefined(items[index].var_a6762160.weapon)) {
                    continue;
                }
                if (items[index].var_a6762160.weapon.name == var_41f13734) {
                    var_dd3170c7 = sorted.size;
                    sorted[var_dd3170c7] = items[index];
                    sorted[var_dd3170c7].var_41f13734 = 1;
                    arrayremoveindex(items, index, 0);
                    break;
                }
            }
        }
    }
    for (index = 0; index < items.size; index++) {
        if (!isdefined(items[index])) {
            continue;
        }
        var_a6762160 = items[index].var_a6762160;
        if (!isdefined(itemtypes[var_a6762160.itemtype])) {
            itemtypes[var_a6762160.itemtype] = [];
        }
        size = itemtypes[var_a6762160.itemtype].size;
        itemtypes[var_a6762160.itemtype][size] = items[index];
    }
    waitframe(1);
    if (isdefined(itemtypes[#"dogtag"])) {
        foreach (entry in itemtypes[#"dogtag"]) {
            sorted[sorted.size] = entry;
        }
    }
    if (isdefined(itemtypes[#"quest"])) {
        foreach (entry in itemtypes[#"quest"]) {
            sorted[sorted.size] = entry;
        }
    }
    if (isdefined(itemtypes[#"cash"])) {
        foreach (entry in itemtypes[#"cash"]) {
            sorted[sorted.size] = entry;
        }
    }
    if (isdefined(itemtypes[#"armor"])) {
        function_5cbe24ea(sorted, itemtypes[#"armor"], level.var_69ee9282);
        waitframe(1);
    }
    if (isdefined(itemtypes[#"armor_shard"])) {
        foreach (entry in itemtypes[#"armor_shard"]) {
            sorted[sorted.size] = entry;
        }
    }
    if (isdefined(itemtypes[#"weapon"])) {
        var_610b8743 = [];
        foreach (item in itemtypes[#"weapon"]) {
            if (!isdefined(item)) {
                continue;
            }
            if (item.var_a6762160.rarity == #"epic") {
                var_610b8743[var_610b8743.size] = item;
            }
        }
        if (isdefined(var_610b8743)) {
            function_5cbe24ea(sorted, var_610b8743, level.var_e93e16b);
            waitframe(1);
        }
    }
    if (isdefined(itemtypes[#"weapon"])) {
        weapons = [];
        foreach (item in itemtypes[#"weapon"]) {
            if (!isdefined(item)) {
                continue;
            }
            if (item.var_a6762160.rarity != #"epic") {
                weapons[weapons.size] = item;
            }
        }
        if (isdefined(weapons)) {
            function_5cbe24ea(sorted, weapons, level.var_b9917a92);
            waitframe(1);
        }
    }
    if (isdefined(itemtypes[#"health"])) {
        function_5cbe24ea(sorted, itemtypes[#"health"], level.var_9bc8c1bc);
        waitframe(1);
    }
    if (isdefined(itemtypes[#"backpack"])) {
        foreach (entry in itemtypes[#"backpack"]) {
            sorted[sorted.size] = entry;
        }
    }
    if (isdefined(itemtypes[#"attachment"])) {
        function_5cbe24ea(sorted, itemtypes[#"attachment"], level.var_6cb314b1);
        waitframe(1);
    }
    if (isdefined(itemtypes[#"killstreak"])) {
        foreach (entry in itemtypes[#"killstreak"]) {
            sorted[sorted.size] = entry;
        }
    }
    if (isdefined(itemtypes[#"field_upgrade"])) {
        foreach (entry in itemtypes[#"field_upgrade"]) {
            sorted[sorted.size] = entry;
        }
    }
    if (isdefined(itemtypes[#"equipment"])) {
        function_5cbe24ea(sorted, itemtypes[#"equipment"], level.var_3fd5d8f0);
        waitframe(1);
    }
    if (isdefined(itemtypes[#"tactical"])) {
        foreach (entry in itemtypes[#"tactical"]) {
            sorted[sorted.size] = entry;
        }
    }
    if (isdefined(itemtypes[#"generic"])) {
        function_5cbe24ea(sorted, itemtypes[#"generic"], level.var_683c7e30);
        waitframe(1);
    }
    if (isdefined(itemtypes[#"perk_tier_1"])) {
        foreach (entry in itemtypes[#"perk_tier_1"]) {
            sorted[sorted.size] = entry;
        }
    }
    if (isdefined(itemtypes[#"perk_tier_2"])) {
        foreach (entry in itemtypes[#"perk_tier_2"]) {
            sorted[sorted.size] = entry;
        }
    }
    if (isdefined(itemtypes[#"perk_tier_3"])) {
        foreach (entry in itemtypes[#"perk_tier_3"]) {
            sorted[sorted.size] = entry;
        }
    }
    if (isdefined(itemtypes[#"scorestreak"])) {
        foreach (entry in itemtypes[#"scorestreak"]) {
            sorted[sorted.size] = entry;
        }
    }
    if (isdefined(itemtypes[#"survival_armor_shard"])) {
        foreach (entry in itemtypes[#"survival_armor_shard"]) {
            sorted[sorted.size] = entry;
        }
    }
    if (isdefined(itemtypes[#"ammo"])) {
        function_5cbe24ea(sorted, itemtypes[#"ammo"], level.var_418d51ad);
        waitframe(1);
    }
    if (isdefined(itemtypes[#"resource"])) {
        foreach (entry in itemtypes[#"resource"]) {
            sorted[sorted.size] = entry;
        }
    }
    if (isdefined(itemtypes[#"survival_essence"])) {
        foreach (entry in itemtypes[#"survival_essence"]) {
            sorted[sorted.size] = entry;
        }
    }
    if (isdefined(itemtypes[#"survival_armor_shard"])) {
        foreach (entry in itemtypes[#"survival_armor_shard"]) {
            sorted[sorted.size] = entry;
        }
    }
    if (isdefined(itemtypes[#"survival_ammo"])) {
        foreach (entry in itemtypes[#"survival_ammo"]) {
            sorted[sorted.size] = entry;
        }
    }
    if (isdefined(itemtypes[#"survival_perk"])) {
        foreach (entry in itemtypes[#"survival_perk"]) {
            sorted[sorted.size] = entry;
        }
    }
    if (isdefined(itemtypes[#"hash_fc797c2a8f4d208"])) {
        foreach (entry in itemtypes[#"hash_fc797c2a8f4d208"]) {
            sorted[sorted.size] = entry;
        }
    }
    return sorted;
}

// Namespace item_world/item_world
// Params 4, eflags: 0x6 linked
// Checksum 0x592ad5bf, Offset: 0x80c0
// Size: 0xec
function private function_b21002cb(localclientnum, objid, obj, objstate) {
    if (obj.type === "scriptmover" || obj.type === "missile") {
        objective_onentity(localclientnum, objid, obj, 0, 0, 0);
    } else {
        objective_clearentity(localclientnum, objid);
        objective_setposition(localclientnum, objid, obj.origin);
    }
    objective_setgamemodeflags(localclientnum, objid, objstate);
    objective_setstate(localclientnum, objid, "active");
}

// Namespace item_world/item_world
// Params 3, eflags: 0x6 linked
// Checksum 0x3ef7b6d5, Offset: 0x81b8
// Size: 0xec
function private function_c3f5f99b(localclientnum, objid, obj) {
    objective_setstate(localclientnum, objid, "invisible");
    objective_setgamemodeflags(localclientnum, objid, 0);
    if (isdefined(obj)) {
        if (obj.type === "scriptmover" || obj.type === "missile") {
            objective_onentity(localclientnum, objid, obj, 0, 0, 0);
        } else {
            objective_clearentity(localclientnum, objid);
            objective_setposition(localclientnum, objid, obj.origin);
        }
    }
}

// Namespace item_world/item_world
// Params 1, eflags: 0x6 linked
// Checksum 0x5563732a, Offset: 0x82b0
// Size: 0x59a
function private function_b0af857f(localclientnum) {
    self endon(#"death");
    self notify("3b1eaedef5a96b13");
    self endon("3b1eaedef5a96b13");
    clientdata = function_a7e98a1a(localclientnum);
    if (is_true(clientdata.var_a4ad122e)) {
        return;
    }
    clientdata.var_a4ad122e.clientdata = 1;
    var_da43934d = self function_da43934d();
    if (var_da43934d) {
        if (!self inlaststand() && !clientfield::get_to_player("disableItemPickup")) {
            eyepos = getlocalclienteyepos(localclientnum);
            angles = getlocalclientangles(localclientnum);
            maxdist = undefined;
            var_512ddf16 = self clientfield::get_player_uimodel("hudItems.multiItemPickup.status") == 2;
            if (var_512ddf16) {
                maxdist = 128;
            } else {
                model = getuimodelvalue(createuimodel(function_1df4c3b0(localclientnum, #"hash_23febb0b8f867ca1"), "currentSelection"));
                if (isdefined(model)) {
                    uimodel = createuimodel(model, "id");
                    if (isdefined(uimodel)) {
                        itemid = getuimodelvalue(uimodel);
                        if (isdefined(itemid) && itemid != 32767) {
                            setuimodelvalue(createuimodel(model, "id"), 32767);
                        }
                    }
                }
            }
            self.var_54d9f4a6 = 0;
            if (var_512ddf16) {
                self.var_9b882d22 = undefined;
                self.var_cdaade8c = undefined;
                model = getuimodelvalue(createuimodel(function_1df4c3b0(localclientnum, #"hash_23febb0b8f867ca1"), "currentSelection"));
                if (isdefined(model)) {
                    uimodel = createuimodel(model, "id");
                    if (isdefined(uimodel)) {
                        itemid = getuimodelvalue(uimodel);
                        if (isdefined(itemid) && itemid != 32767) {
                            if (item_world_util::function_2c7fc531(itemid)) {
                                self.var_9b882d22 = function_b1702735(itemid);
                            } else if (item_world_util::function_da09de95(itemid)) {
                                if (isdefined(level.item_spawn_drops[itemid])) {
                                    self.var_9b882d22 = level.item_spawn_drops[itemid];
                                }
                            }
                            if (isdefined(self.var_9b882d22)) {
                                self.var_9b882d22.var_5d97fed1 = item_world_util::function_83c20f83(self.var_9b882d22);
                            }
                        }
                    }
                }
                if (!isdefined(self.var_9b882d22)) {
                    self.var_54d9f4a6 = 1;
                    foreach (item in clientdata.groupitems) {
                        if (self item_world_util::can_pick_up(item)) {
                            self.var_9b882d22 = item;
                            self.var_9b882d22.var_5d97fed1 = item_world_util::function_83c20f83(self.var_9b882d22);
                            break;
                        }
                    }
                }
            }
            if (!var_512ddf16 || !isdefined(self.var_9b882d22)) {
                self.var_9b882d22 = function_94db1536(localclientnum, eyepos, angles, maxdist);
                if (isdefined(self.var_9b882d22)) {
                    self.var_cdaade8c = self.var_9b882d22.origin;
                }
            }
        } else {
            self.var_9b882d22 = undefined;
        }
        waitframe(1);
        function_802915bc(localclientnum);
    }
    if (is_true(self.disableitempickup)) {
        self.var_9b882d22 = undefined;
    }
    clientdata.var_a4ad122e.clientdata = 0;
}

// Namespace item_world/item_world
// Params 1, eflags: 0x6 linked
// Checksum 0x2c722f29, Offset: 0x8858
// Size: 0x2cc
function private function_802915bc(localclientnum) {
    if (!isdefined(level.var_62c91473) || !isdefined(level.var_62c91473[localclientnum])) {
        return;
    }
    eyepos = getlocalclienteyepos(localclientnum);
    if (isdefined(self.var_9b882d22) && self.var_9b882d22.var_5d97fed1) {
        var_1ba7b9c8 = arraysortclosest(level.var_624588d5, self.var_9b882d22.origin, 1, 0, 12);
        hinttext = #"wz/supply_stash";
        if (var_1ba7b9c8.size > 0) {
            isdeathstash = var_1ba7b9c8[0].stash_type === 2;
            hinttext = isdeathstash ? #"wz/death_stash" : #"wz/supply_drop";
        } else {
            var_1ba7b9c8 = arraysortclosest(level.item_spawn_stashes, self.var_9b882d22.origin, 1, 0, 12);
            if (var_1ba7b9c8.size > 0 && isdefined(var_1ba7b9c8[0].displayname)) {
                hinttext = var_1ba7b9c8[0].displayname;
            }
        }
        setuimodelvalue(level.var_62c91473[localclientnum], hinttext);
    } else if (!isdefined(self.var_9b882d22) || distance2dsquared(self.var_9b882d22.origin, eyepos) > function_a3f6cdac(128)) {
        angles = getlocalclientangles(localclientnum);
        vehicle = item_world_util::function_6af455de(localclientnum, eyepos, angles);
        hintstring = item_world_util::function_c62ad9a7(vehicle);
        setuimodelvalue(level.var_62c91473[localclientnum], hintstring);
    } else {
        setuimodelvalue(level.var_62c91473[localclientnum], #"");
    }
}

// Namespace item_world/item_world
// Params 1, eflags: 0x6 linked
// Checksum 0x6617485d, Offset: 0x8b30
// Size: 0x6c4
function private function_c46425e0(localclientnum) {
    if (isdefined(self)) {
        var_f4b807cb = function_2e3efdda(self.origin, undefined, 64, 256, -1, 0);
        if (!isdefined(var_f4b807cb) || !var_f4b807cb.size) {
            return;
        }
        var_1988b305 = [];
        var_d61d8afa = [];
        for (index = 0; index < var_f4b807cb.size; index++) {
            item = var_f4b807cb[index];
            if (!isdefined(item)) {
                continue;
            }
            if (isdefined(item.var_a6762160)) {
                if (item.var_a6762160.itemtype == #"weapon") {
                    if (isdefined(item.weapon) && item.weapon != level.weaponnone && item.weapon !== item.var_a6762160.weapon) {
                        camoweapon = activecamo::function_b259f3e0(item.weapon);
                        var_57fe74e5 = self getbuildkitweaponoptions(localclientnum, camoweapon);
                        var_fd90b0bb = self function_1744e243(localclientnum, camoweapon);
                        var_493cfe65 = item.weapon;
                        function_d780f794(localclientnum, var_493cfe65, var_57fe74e5, var_fd90b0bb);
                        var_1988b305[var_493cfe65] = var_57fe74e5;
                    } else if (isdefined(item.var_a6762160.weapon) && item.var_a6762160.weapon != level.weaponnone) {
                        camoweapon = activecamo::function_b259f3e0(item.var_a6762160.weapon);
                        var_57fe74e5 = self getbuildkitweaponoptions(localclientnum, camoweapon);
                        var_fd90b0bb = self function_1744e243(localclientnum, camoweapon);
                        var_493cfe65 = namespace_a0d533d1::function_2b83d3ff(item);
                        function_d780f794(localclientnum, var_493cfe65, var_57fe74e5, var_fd90b0bb);
                        var_1988b305[var_493cfe65] = var_57fe74e5;
                    }
                } else if (item.var_a6762160.itemtype == #"attachment") {
                    if (isdefined(item.var_a6762160.attachments)) {
                        foreach (attachment in item.var_a6762160.attachments) {
                            if (isdefined(attachment.var_6be1bec7)) {
                                var_d61d8afa[attachment.var_6be1bec7] = attachment.var_6be1bec7;
                            }
                        }
                    }
                }
            }
        }
        currentweapon = self function_d2c2b168();
        if (isdefined(currentweapon) && currentweapon != level.weaponnone && currentweapon != level.weaponbasemeleeheld) {
            foreach (attachment in var_d61d8afa) {
                if (!weaponhasattachment(currentweapon, attachment)) {
                    weaponoptions = self function_e10e6c37();
                    var_493cfe65 = getweapon(currentweapon.rootweapon.name, attachment);
                    if (isdefined(var_493cfe65) && weaponhasattachment(var_493cfe65, attachment)) {
                        function_d780f794(localclientnum, var_493cfe65, weaponoptions, 0);
                    }
                }
            }
            if (var_1988b305.size) {
                var_1bf1ce1 = getweaponattachments(currentweapon);
                if (isdefined(var_1bf1ce1) && var_1bf1ce1.size) {
                    foreach (key, weaponoptions in var_1988b305) {
                        var_37eedd1 = weapon(key);
                        if (var_37eedd1.rootweapon != currentweapon.rootweapon) {
                            foreach (attachment in var_1bf1ce1) {
                                if (attachment !== "null" && !weaponhasattachment(var_37eedd1, attachment)) {
                                    var_493cfe65 = getweapon(var_37eedd1.name, attachment);
                                    if (isdefined(var_493cfe65) && var_493cfe65 != var_37eedd1 && weaponhasattachment(var_493cfe65, attachment)) {
                                        function_d780f794(localclientnum, var_493cfe65, weaponoptions, 0);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

// Namespace item_world/item_world
// Params 1, eflags: 0x6 linked
// Checksum 0x3a75e8fc, Offset: 0x9200
// Size: 0x26e
function private function_48ec057f(localclientnum) {
    clientdata = function_a7e98a1a(localclientnum);
    if (!isdefined(clientdata)) {
        return;
    }
    var_f1530a67 = getservertime(localclientnum, 1);
    var_bea3e246 = [];
    foreach (var_bd027dd9, serverinfo in clientdata.var_ffc1c0e1) {
        model = function_61f5d33a(localclientnum, clientdata, var_bd027dd9);
        if (isdefined(model)) {
            function_a4886b1e(localclientnum, var_bd027dd9, model);
        }
        if (serverinfo.servertime >= var_f1530a67) {
            var_bea3e246[var_bd027dd9] = serverinfo;
        }
    }
    clientdata.var_ffc1c0e1 = var_bea3e246;
    var_bf2d48f6 = [];
    foreach (vehicleentnum, serverinfo in clientdata.var_baf65690) {
        vehicle = getentbynum(localclientnum, vehicleentnum);
        if (isdefined(vehicle) && serverinfo.servertime >= var_f1530a67 && !function_97980fde(localclientnum, vehicle)) {
            var_bf2d48f6[vehicleentnum] = serverinfo;
            function_3bd99d2f(localclientnum, clientdata, vehicle);
        } else {
            function_3bd99d2f(localclientnum, clientdata, vehicle, 1);
        }
    }
    clientdata.var_baf65690 = var_bf2d48f6;
}

// Namespace item_world/item_world
// Params 1, eflags: 0x6 linked
// Checksum 0x309fa251, Offset: 0x9478
// Size: 0x1ce
function private _update_loop(localclientnum) {
    self endon(#"shutdown");
    self notify("3627dbfd2bfd53e6");
    self endon("3627dbfd2bfd53e6");
    waitframe(1);
    clientdata = function_a7e98a1a(localclientnum);
    while (!isdefined(clientdata)) {
        waitframe(1);
        clientdata = function_a7e98a1a(localclientnum);
    }
    clientdata.var_a4ad122e.clientdata = 0;
    clientdata.var_d7bd75b5.clientdata = 0;
    function_1b11e73c();
    while (1) {
        if (!isdefined(self)) {
            return;
        }
        if (function_96fa1c6d(localclientnum)) {
            draworigin = function_8cf40a8c(localclientnum);
            self thread _draw(localclientnum, draworigin);
        }
        waitframe(1);
        function_48ec057f(localclientnum);
        function_c46425e0(localclientnum);
        waitframe(1);
        if (isalive(self)) {
            self thread function_e2c19e6b(localclientnum);
            if (function_c7e5c26(localclientnum)) {
                self thread function_b0af857f(localclientnum);
            }
            function_48ca0bbb(localclientnum);
        }
        waitframe(1);
    }
}

// Namespace item_world/item_world
// Params 2, eflags: 0x6 linked
// Checksum 0x19a9eecb, Offset: 0x9650
// Size: 0x42
function private function_c199bcc6(localclientnum, item) {
    if (item_inventory::function_7d5553ac()) {
        return 0;
    }
    return item_inventory::can_pickup_ammo(localclientnum, item);
}

// Namespace item_world/item_world
// Params 2, eflags: 0x6 linked
// Checksum 0x1070f5f2, Offset: 0x96a0
// Size: 0xaa
function private function_87e71bc0(localclientnum, var_a6762160) {
    if (isdefined(level.var_75f7e612)) {
        result = [[ level.var_75f7e612 ]](localclientnum, var_a6762160);
        /#
            assert(result === 1 || result === 0);
        #/
        return result;
    }
    if (item_inventory::function_7d5553ac()) {
        return 1;
    }
    return item_inventory::function_ad4c6116(localclientnum, var_a6762160);
}

// Namespace item_world/item_world
// Params 2, eflags: 0x6 linked
// Checksum 0xc9f97130, Offset: 0x9758
// Size: 0x7c
function private function_8c4dc71f(localclientnum, var_a6762160) {
    if (isdefined(level.var_977ee0c2)) {
        result = [[ level.var_977ee0c2 ]](localclientnum, var_a6762160);
        /#
            assert(result === 1 || result === 0);
        #/
        return result;
    }
    return 0;
}

// Namespace item_world/item_world
// Params 2, eflags: 0x6 linked
// Checksum 0x78c0c325, Offset: 0x97e0
// Size: 0xaa
function private function_76eb0584(localclientnum, var_a6762160) {
    if (isdefined(level.var_b637a0c0)) {
        result = [[ level.var_b637a0c0 ]](localclientnum, var_a6762160);
        /#
            assert(result === 1 || result === 0);
        #/
        return result;
    }
    if (item_inventory::function_7d5553ac()) {
        return 1;
    }
    return item_inventory::function_a243ddd6(localclientnum, var_a6762160);
}

// Namespace item_world/item_world
// Params 2, eflags: 0x6 linked
// Checksum 0xea15c2eb, Offset: 0x9898
// Size: 0x42
function private function_c76c61d6(localclientnum, var_a6762160) {
    if (item_inventory::function_7d5553ac()) {
        return;
    }
    return item_inventory::function_78ed4455(localclientnum, var_a6762160);
}

// Namespace item_world/item_world
// Params 1, eflags: 0x6 linked
// Checksum 0x48c4c10b, Offset: 0x98e8
// Size: 0x32
function private function_cc2f075(localclientnum) {
    if (item_inventory::function_7d5553ac()) {
        return;
    }
    return item_inventory::function_d768ea30(localclientnum);
}

// Namespace item_world/item_world
// Params 1, eflags: 0x6 linked
// Checksum 0xf5d696f2, Offset: 0x9928
// Size: 0x6c
function private function_3574b1fa(weaponname) {
    switch (weaponname) {
    case #"hash_426d7c850c7f1d2":
    case #"hash_5bd48d860ebd5a41":
    case #"ray_gun_upgraded":
    case #"ray_gun":
        return 1;
        break;
    }
    return 0;
}

// Namespace item_world/item_world
// Params 0, eflags: 0x6 linked
// Checksum 0xbbac5a0b, Offset: 0x99a0
// Size: 0x8a
function private player_base_health() {
    if (!self function_700ca4f5()) {
        return 150;
    }
    basehealth = self getplayerspawnhealth();
    basehealth = basehealth + (isdefined(level.var_90bb9821) ? level.var_90bb9821 : 0);
    if (isdefined(self.var_ee9b8af0)) {
        basehealth = self.var_ee9b8af0;
    }
    return basehealth;
}

// Namespace item_world/item_world
// Params 1, eflags: 0x6 linked
// Checksum 0x274ee746, Offset: 0x9a38
// Size: 0x1b34
function private function_48ca0bbb(localclientnum) {
    var_da43934d = self function_da43934d();
    if (var_da43934d) {
        eyepos = getlocalclienteyepos(localclientnum);
        angles = getlocalclientangles(localclientnum);
        var_1f50aeea = self clientfield::get_player_uimodel("hudItems.pickupHintWeaponIndex");
        if (!var_1f50aeea && isdefined(self.var_9b882d22) && isdefined(self.var_9b882d22.var_a6762160) && !isdefined(getplayervehicle(self))) {
            var_a6762160 = self.var_9b882d22.var_a6762160;
            var_77055f15 = 0;
            var_fa3df96 = undefined;
            if (var_a6762160.itemtype == #"ammo" && !function_c199bcc6(localclientnum, self.var_9b882d22)) {
                var_77055f15 = 64;
            } else if (function_8c4dc71f(localclientnum, var_a6762160)) {
                var_77055f15 = 2;
            } else if (function_76eb0584(localclientnum, var_a6762160)) {
                var_77055f15 = 1;
                if (var_a6762160.itemtype == #"attachment") {
                    var_77055f15 = 1;
                    if (function_87e71bc0(localclientnum, var_a6762160)) {
                        var_77055f15 = var_77055f15 & 32;
                    }
                } else if (sessionmodeiszombiesgame() && (var_a6762160.itemtype == #"scorestreak" || var_a6762160.itemtype == #"hash_fc797c2a8f4d208")) {
                    if (self function_22a3abde(localclientnum)) {
                        var_77055f15 = 131072;
                    }
                } else if (var_a6762160.itemtype == #"weapon") {
                    if (isdefined(level.var_69fa4969)) {
                        if (![[ level.var_69fa4969 ]](localclientnum, var_a6762160)) {
                            var_77055f15 = 8192;
                            if (isdefined(var_a6762160.weapon.name) && function_3574b1fa(var_a6762160.weapon.name)) {
                                var_77055f15 = 32768;
                            }
                        } else {
                            var_a4250c2b = self function_cc2f075(localclientnum);
                            if (isdefined(var_a4250c2b) && namespace_a0d533d1::function_4bd83c04(self.var_9b882d22) && self item_inventory::has_attachments(localclientnum, var_a4250c2b) && !is_true(level.var_8c46cf7a)) {
                                var_77055f15 = var_77055f15 & 512;
                            }
                            if (sessionmodeiszombiesgame() && self function_22a3abde(localclientnum)) {
                                var_77055f15 = 131072;
                            }
                        }
                    }
                } else if (var_a6762160.itemtype == #"armor") {
                    if (!function_87e71bc0(localclientnum, var_a6762160)) {
                        var_77055f15 = 4;
                    }
                } else if (sessionmodeiszombiesgame() && (var_a6762160.itemtype === #"equipment" || var_a6762160.itemtype === #"tactical")) {
                    if (!function_87e71bc0(localclientnum, var_a6762160)) {
                        var_77055f15 = 4;
                    }
                    if (var_a6762160.itemtype === #"tactical" && isdefined(level.var_75653eb2)) {
                        if (![[ level.var_75653eb2 ]](localclientnum, var_a6762160)) {
                            var_77055f15 = 131072;
                        }
                    }
                }
            } else if (var_a6762160.itemtype == #"weapon") {
                var_77055f15 = 2;
                var_a4250c2b = self function_cc2f075(localclientnum);
                if (isdefined(var_a4250c2b) && namespace_a0d533d1::function_4bd83c04(self.var_9b882d22) && self item_inventory::has_attachments(localclientnum, var_a4250c2b) && !is_true(level.var_8c46cf7a)) {
                    var_77055f15 = var_77055f15 & 512;
                }
                if (isdefined(level.var_69fa4969)) {
                    if (![[ level.var_69fa4969 ]](localclientnum, var_a6762160)) {
                        var_77055f15 = 8192;
                        if (isdefined(var_a6762160.weapon.name) && function_3574b1fa(var_a6762160.weapon.name)) {
                            var_77055f15 = 32768;
                        }
                    }
                }
                if (sessionmodeiszombiesgame() && self function_22a3abde(localclientnum)) {
                    var_77055f15 = 131072;
                }
            } else if (var_a6762160.itemtype == #"quest") {
                if (isarray(level.var_3a2ad19b) && isinarray(level.var_3a2ad19b, hash(var_a6762160.name))) {
                    basehealth = player_base_health();
                    var_5255ad35 = 0;
                    if (self function_6c32d092(localclientnum, #"hash_afdcb7f440fc052") || self function_6c32d092(localclientnum, #"hash_afdc67f440fb7d3") || self function_6c32d092(localclientnum, #"hash_afdc57f440fb620")) {
                        var_5255ad35 = 100;
                    } else if (self function_6c32d092(localclientnum, #"hash_47d7a8105237c88") || self function_6c32d092(localclientnum, #"hash_afdc97f440fbcec") || self function_6c32d092(localclientnum, #"hash_afdcc7f440fc205")) {
                        var_5255ad35 = 50;
                    }
                    basehealth = basehealth + var_5255ad35;
                    healthratio = renderhealthoverlayhealth(localclientnum, basehealth);
                    if (healthratio == 1) {
                        var_77055f15 = 524288;
                    }
                } else if (var_a6762160.name === #"item_zmquest_tungsten_mq_quest_part_catalyzed") {
                    if (!is_true(codegetworlduimodelfield("ZMInventory.Quest3.1.stage"))) {
                        var_77055f15 = 1048576;
                    }
                } else if (var_a6762160.name === #"hash_2b899cf380ab5725" && is_true(self.var_a74ce90c)) {
                    var_77055f15 = 8192;
                } else if (var_a6762160.name === #"mega_barrel_modkit_blazer_beam_item_t9" || var_a6762160.name === #"mega_barrel_modkit_diffusion_beam_item_t9" || var_a6762160.name === #"mega_barrel_modkit_micro_missile_item_t9") {
                    if (isdefined(level.var_282dc0af)) {
                        if (![[ level.var_282dc0af ]](localclientnum, var_a6762160)) {
                            var_77055f15 = 262144;
                        }
                    }
                } else if (var_a6762160.name === #"axe_gun_energetic_shard_item_t9" || var_a6762160.name === #"axe_gun_volatile_crystal_item_t9") {
                    if (isdefined(level.var_6614c251)) {
                        var_974deb37 = [[ level.var_6614c251 ]](localclientnum, var_a6762160);
                        if (var_974deb37 !== 0) {
                            var_77055f15 = var_974deb37;
                        }
                    }
                } else if (var_a6762160.name === #"hash_5e770ca79b0e5aa4") {
                    if (codegetuimodelclientfield(self, "ZMInventoryPersonal.Quest4.1.stage") > 0) {
                        var_77055f15 = 4;
                    }
                }
            } else if (var_a6762160.itemtype == #"survival_upgrade_item") {
                var_a4250c2b = self item_inventory::function_d768ea30(localclientnum);
                if (isdefined(var_a4250c2b) && !self function_22a3abde(localclientnum)) {
                    var_bd027dd9 = item_world_util::function_970b8d86(var_a4250c2b);
                    weaponitem = item_inventory::function_15d578f4(localclientnum, var_bd027dd9);
                    var_a8bccf69 = self clientfield::get_player_uimodel("pap_current");
                    aat_name = aat::get_string(self clientfield::get_to_player("aat_current"));
                    var_c3317960 = self clientfield::get_player_uimodel("hud_items.gibDismembermentType");
                    switch (var_a6762160.name) {
                    case #"aether_tool_item_sr":
                        if (isdefined(weaponitem.var_a6762160.rarity)) {
                            if (weaponitem.var_a6762160.rarity === #"legendary" || weaponitem.var_a6762160.rarity === #"ultra") {
                                var_77055f15 = 131072;
                            }
                        }
                        break;
                    case #"bronze_chalice_item_sr":
                        if (isint(var_a8bccf69) && var_a8bccf69 >= 1) {
                            var_77055f15 = 131072;
                        }
                        if (isdefined(level.var_3fd97ca3) && isdefined(weaponitem.var_a6762160.name) && isinarray(level.var_3fd97ca3, hash(weaponitem.var_a6762160.name))) {
                            var_77055f15 = 131072;
                        }
                        break;
                    case #"silver_chalice_item_sr":
                        if (isint(var_a8bccf69) && var_a8bccf69 >= 2) {
                            var_77055f15 = 131072;
                        }
                        if (isdefined(level.var_3fd97ca3) && isdefined(weaponitem.var_a6762160.name) && isinarray(level.var_3fd97ca3, hash(weaponitem.var_a6762160.name))) {
                            var_77055f15 = 131072;
                        }
                        break;
                    case #"gold_chalice_item_sr":
                        if (isint(var_a8bccf69) && var_a8bccf69 >= 3) {
                            var_77055f15 = 131072;
                        }
                        if (isdefined(level.var_3fd97ca3) && isdefined(weaponitem.var_a6762160.name) && isinarray(level.var_3fd97ca3, hash(weaponitem.var_a6762160.name))) {
                            var_77055f15 = 131072;
                        }
                        break;
                    case #"brainrot_item_sr":
                        if (var_c3317960 != 0 && var_c3317960 != 6 && var_c3317960 != 8 && var_c3317960 != 16) {
                            var_77055f15 = 65536;
                        }
                        if (aat_name === "zmui/zm_ammomod_brainrot") {
                            var_77055f15 = 65536;
                        }
                        if (isdefined(weaponitem.var_a6762160.rarity)) {
                            if (weaponitem.var_a6762160.rarity === #"ultra") {
                                var_77055f15 = 65536;
                            }
                        }
                        break;
                    case #"cryofreeze_item_sr":
                        if (var_c3317960 != 0 && var_c3317960 != 1) {
                            var_77055f15 = 65536;
                        }
                        if (aat_name === "zmui/zm_ammomod_cryofreeze") {
                            var_77055f15 = 65536;
                        }
                        if (isdefined(weaponitem.var_a6762160.rarity)) {
                            if (weaponitem.var_a6762160.rarity === #"ultra") {
                                var_77055f15 = 65536;
                            }
                        }
                        break;
                    case #"deadwire_item_sr":
                        if (var_c3317960 != 0 && var_c3317960 != 4 && var_c3317960 != 14 && var_c3317960 != 15) {
                            var_77055f15 = 65536;
                        }
                        if (aat_name === "zmui/zm_ammomod_deadwire") {
                            var_77055f15 = 65536;
                        }
                        if (isdefined(weaponitem.var_a6762160.rarity)) {
                            if (weaponitem.var_a6762160.rarity === #"ultra") {
                                var_77055f15 = 65536;
                            }
                        }
                        break;
                    case #"napalmburst_item_sr":
                        if (var_c3317960 != 0 && var_c3317960 != 3 && var_c3317960 != 10 && var_c3317960 != 12) {
                            var_77055f15 = 65536;
                        }
                        if (aat_name === "zmui/zm_ammomod_napalmburst") {
                            var_77055f15 = 65536;
                        }
                        if (isdefined(weaponitem.var_a6762160.rarity)) {
                            if (weaponitem.var_a6762160.rarity === #"ultra") {
                                var_77055f15 = 65536;
                            }
                        }
                        break;
                    case #"shatterblast_item_sr":
                        if (var_c3317960 != 0 && var_c3317960 != 7 && var_c3317960 != 9) {
                            var_77055f15 = 65536;
                        }
                        if (aat_name === "zmui/zm_ammomod_shatterblast") {
                            var_77055f15 = 65536;
                        }
                        if (isdefined(weaponitem.var_a6762160.rarity)) {
                            if (weaponitem.var_a6762160.rarity === #"ultra") {
                                var_77055f15 = 65536;
                            }
                        }
                        break;
                    }
                } else {
                    var_77055f15 = 131072;
                }
            } else {
                var_fa3df96 = self function_c76c61d6(localclientnum, var_a6762160);
                if (isdefined(var_fa3df96)) {
                    var_77055f15 = 2;
                    if (var_a6762160.itemtype == #"armor") {
                        if (!function_87e71bc0(localclientnum, var_a6762160)) {
                            var_77055f15 = 2048;
                        }
                    } else if (var_a6762160.itemtype == #"attachment") {
                        var_fa3df96 = undefined;
                        if (function_87e71bc0(localclientnum, var_a6762160)) {
                            var_77055f15 = var_77055f15 & 32;
                        }
                    }
                } else if (!function_87e71bc0(localclientnum, var_a6762160)) {
                    if (var_a6762160.itemtype == #"resource" && item_world_util::function_41f06d9d(var_a6762160)) {
                        var_77055f15 = 128;
                    } else {
                        var_77055f15 = 4;
                    }
                    if (var_a6762160.itemtype == #"scorestreak" || var_a6762160.itemtype == #"health" || namespace_a0d533d1::function_1507e6f0(var_a6762160) || item_world_util::function_a57773a4(var_a6762160)) {
                        var_77055f15 = var_77055f15 & 1024;
                    }
                    if (var_a6762160.itemtype == #"survival_ammo") {
                        var_77055f15 = 64;
                    }
                    if (var_a6762160.itemtype == #"survival_armor_shard") {
                        maxarmor = self function_a07288ec();
                        if (maxarmor === 0) {
                            var_77055f15 = 4096;
                        } else {
                            var_77055f15 = 2048;
                        }
                    }
                    if (var_a6762160.name === #"self_revive_sr_item") {
                        var_77055f15 = 8192;
                    }
                } else if (var_a6762160.itemtype == #"scorestreak" || var_a6762160.itemtype == #"health" || namespace_a0d533d1::function_1507e6f0(var_a6762160) || item_world_util::function_a57773a4(var_a6762160)) {
                    if (function_87e71bc0(localclientnum, var_a6762160)) {
                        var_77055f15 = var_77055f15 & 256;
                    }
                }
            }
            objstate = 0;
            if (isdefined(self.var_9b882d22.isfar) && self.var_9b882d22.isfar) {
                objstate = 1;
            }
            pickupicon = isdefined(var_a6762160.pickupicon) ? var_a6762160.pickupicon : is_true(level.var_abaea458[self.var_9b882d22.var_bd027dd9]) ? #"" : var_a6762160.icon;
            if (self.var_54d9f4a6) {
                var_77055f15 = 16;
            }
            setuimodelvalue(level.var_7e2f5883[localclientnum], isdefined(var_fa3df96) ? var_fa3df96 : -1);
            setuimodelvalue(level.var_ce95aace[localclientnum], var_77055f15);
            setuimodelvalue(level.var_437da950[localclientnum], isdefined(var_a6762160.rarity) ? var_a6762160.rarity : "");
            itemcount = isdefined(self.var_9b882d22.count) ? self.var_9b882d22.count : 1;
            if (itemcount > 1) {
                setuimodelvalue(level.pickupcount[localclientnum], " x" + itemcount);
            } else {
                setuimodelvalue(level.pickupcount[localclientnum], "");
            }
            var_13c39926 = #"";
            if (isdefined(var_a6762160.itemtype)) {
                if (!ishash(var_a6762160.itemtype)) {
                    var_13c39926 = hash(var_a6762160.itemtype);
                } else {
                    var_13c39926 = var_a6762160.itemtype;
                }
            }
            setuimodelvalue(level.var_d2215e8f[localclientnum], var_13c39926);
            if (getuimodelvalue(level.var_d42ffee1[localclientnum]) !== 10) {
                if (isdefined(level.var_19cf0be9[localclientnum]) && isdefined(getuimodelvalue(level.var_19cf0be9[localclientnum]))) {
                    setuimodelvalue(level.var_19cf0be9[localclientnum], isdefined(pickupicon) ? pickupicon : #"blacktransparent");
                }
            }
            if (self.var_9b882d22.var_5d97fed1) {
                function_b21002cb(localclientnum, level.var_383edf80, self.var_9b882d22, objstate);
                function_c3f5f99b(localclientnum, level.var_d9beffb9);
            } else if (self item_world_util::can_pick_up(self.var_9b882d22)) {
                hintstring = self function_2fc74639();
                var_d1fce876 = #"";
                if (isdefined(var_a6762160.hintstring)) {
                    var_d1fce876 = var_a6762160.hintstring;
                } else if (isdefined(var_a6762160.weapon)) {
                    var_d1fce876 = var_a6762160.weapon.displayname;
                } else {
                    var_d1fce876 = isdefined(var_a6762160.hintstring) ? var_a6762160.hintstring : #"";
                }
                if (var_d1fce876 == hintstring) {
                    function_b21002cb(localclientnum, level.var_d9beffb9, self.var_9b882d22, objstate);
                    function_c3f5f99b(localclientnum, level.var_383edf80);
                } else {
                    if (!is_true(self.var_9b882d22.isclose)) {
                        function_b21002cb(localclientnum, level.var_d9beffb9, self.var_9b882d22, objstate);
                    } else {
                        function_c3f5f99b(localclientnum, level.var_d9beffb9, self.var_9b882d22);
                    }
                    function_c3f5f99b(localclientnum, level.var_383edf80, self.var_9b882d22);
                }
            }
        } else {
            if (var_1f50aeea) {
                setuimodelvalue(level.var_ce95aace[localclientnum], 16384);
            }
            if (getuimodelvalue(level.var_d42ffee1[localclientnum]) !== 10) {
                setuimodelvalue(level.var_19cf0be9[localclientnum], #"blacktransparent");
            }
            function_c3f5f99b(localclientnum, level.var_d9beffb9);
            function_c3f5f99b(localclientnum, level.var_383edf80);
        }
        if (self function_34418003(localclientnum, eyepos, angles)) {
            self function_7c84312d(localclientnum, eyepos, angles);
        }
    }
}

// Namespace item_world/item_world
// Params 1, eflags: 0x6 linked
// Checksum 0x866032e4, Offset: 0xb578
// Size: 0xb6
function private function_22a3abde(localclientnum) {
    var_a4250c2b = self item_inventory::function_d768ea30(localclientnum);
    if (isdefined(var_a4250c2b)) {
        var_bd027dd9 = item_world_util::function_970b8d86(var_a4250c2b);
        weaponitem = item_inventory::function_15d578f4(localclientnum, var_bd027dd9);
        if (isdefined(weaponitem.var_a6762160.killstreak) && weaponitem.var_a6762160.killstreak != "") {
            return 1;
        }
    }
    return 0;
}

// Namespace item_world/item_world
// Params 4, eflags: 0x6 linked
// Checksum 0x8332a235, Offset: 0xb638
// Size: 0x152
function private function_94db1536(localclientnum, origin, angles, maxdist = undefined) {
    /#
        assert(isplayer(self));
    #/
    clientdata = function_a7e98a1a(localclientnum);
    forward = vectornormalize(anglestoforward(angles));
    if (!isdefined(maxdist)) {
        maxdist = util::function_16fb0a3b();
    }
    var_f4b807cb = function_2e3efdda(origin, forward, 128, maxdist, 0);
    var_4bd72bfe = function_ab88dbd2(localclientnum, #"warzoneprioritypickups");
    var_9b882d22 = item_world_util::function_6061a15(var_f4b807cb, maxdist, origin, angles, forward, var_4bd72bfe, 1);
    return var_9b882d22;
}

// Namespace item_world/item_world
// Params 0, eflags: 0x6 linked
// Checksum 0x3d16782, Offset: 0xb798
// Size: 0x6a
function private function_c5b6693a() {
    item = spawnstruct();
    item.amount.item = 0;
    item.count.item = 0;
    item.id.item = 32767;
    item.var_bd027dd9.item = 32767;
    item.var_a6762160 = undefined;
    item.var_627c698b = undefined;
    return item;
}

// Namespace item_world/item_world
// Params 3, eflags: 0x6 linked
// Checksum 0x8386eba1, Offset: 0xb810
// Size: 0x18c
function private function_7c84312d(localclientnum, *origin, *angles) {
    /#
        assert(isplayer(self));
    #/
    clientdata = function_a7e98a1a(angles);
    while (is_true(clientdata.var_a4ad122e)) {
        waitframe(1);
    }
    if (!isplayer(self)) {
        return;
    }
    if (isdefined(self.var_9b882d22)) {
        var_433d429 = 14;
        groupitems = function_2e3efdda(self.var_9b882d22.origin, undefined, 128, var_433d429, undefined, 1);
        groupitems = self function_43d3ebe1(groupitems);
        if (!isdefined(self)) {
            return;
        }
        arrayremovevalue(groupitems, undefined, 0);
        clientdata.groupitems.clientdata = function_83e328e1(clientdata.groupitems, groupitems);
    } else {
        clientdata.groupitems.clientdata = [];
    }
    self function_9116bb0e(angles);
}

// Namespace item_world/item_world
// Params 2, eflags: 0x6 linked
// Checksum 0xfe8b2d26, Offset: 0xb9a8
// Size: 0x336
function private function_83e328e1(var_78ddf4e2, newitems) {
    if (!isdefined(var_78ddf4e2)) {
        return newitems;
    }
    items = [];
    var_313b3d43 = 0;
    var_4717ba7d = 0;
    var_21198c86 = [];
    foreach (newitem in newitems) {
        if (!isdefined(newitem)) {
            continue;
        }
        var_f613370d = newitem;
        if (isstruct(var_f613370d) && item_world_util::function_2c7fc531(var_f613370d.var_bd027dd9)) {
            var_f613370d = function_b1702735(var_f613370d.var_bd027dd9);
        }
        if (self item_world_util::can_pick_up(var_f613370d)) {
            var_21198c86[var_21198c86.size] = var_f613370d;
        }
    }
    foreach (var_319b917b in var_78ddf4e2) {
        var_f59eabca = var_319b917b;
        if (isstruct(var_f59eabca) && item_world_util::function_2c7fc531(var_f59eabca.var_bd027dd9)) {
            var_f59eabca = function_b1702735(var_f59eabca.var_bd027dd9);
        }
        if (!isdefined(var_f59eabca) || !self item_world_util::can_pick_up(var_f59eabca)) {
            var_313b3d43++;
            items[items.size] = function_c5b6693a();
        } else {
            foreach (newitem in var_21198c86) {
                if (newitem.var_bd027dd9 == var_f59eabca.var_bd027dd9) {
                    var_4717ba7d++;
                    items[items.size] = newitem;
                }
            }
        }
    }
    if (var_21198c86.size == var_4717ba7d && var_78ddf4e2.size == var_4717ba7d + var_313b3d43) {
        return items;
    }
    return newitems;
}

// Namespace item_world/item_world
// Params 3, eflags: 0x6 linked
// Checksum 0x7a605e83, Offset: 0xbce8
// Size: 0x234
function private function_1b42632a(localclientnum, clientdata, var_2ccf7a1c) {
    var_f0a9e97d = undefined;
    var_e7349b30 = undefined;
    foreach (var_7d6cdf6f, serverinfo in clientdata.var_ffc1c0e1) {
        if (serverinfo.var_2ccf7a1c == var_2ccf7a1c) {
            var_f0a9e97d = var_7d6cdf6f;
            var_e7349b30 = serverinfo;
            break;
        }
    }
    if (isdefined(var_f0a9e97d)) {
        clientdata.var_ffc1c0e1[var_f0a9e97d] = undefined;
        model = function_61f5d33a(localclientnum, clientdata, var_f0a9e97d);
        if (isdefined(model)) {
            function_a4886b1e(localclientnum, var_f0a9e97d, model);
        }
    }
    var_cd3b74d6 = undefined;
    var_e7349b30 = undefined;
    foreach (vehicleentnum, serverinfo in clientdata.var_baf65690) {
        if (serverinfo.var_2ccf7a1c == var_2ccf7a1c) {
            var_cd3b74d6 = vehicleentnum;
            var_e7349b30 = serverinfo;
            break;
        }
    }
    if (isdefined(var_cd3b74d6)) {
        clientdata.var_baf65690[var_cd3b74d6] = undefined;
        vehicle = getentbynum(localclientnum, var_cd3b74d6);
        if (isdefined(vehicle)) {
            function_3bd99d2f(localclientnum, clientdata, vehicle, 1);
        }
    }
}

// Namespace item_world/item_world
// Params 3, eflags: 0x2 linked
// Checksum 0x7bd9af95, Offset: 0xbf28
// Size: 0xf4
function function_347698a5(localclientnum, var_bd027dd9, var_2ccf7a1c) {
    clientdata = function_a7e98a1a(localclientnum);
    function_1b42632a(localclientnum, clientdata, var_2ccf7a1c);
    endtime = getservertime(localclientnum, 1) + 60000;
    clientdata.var_ffc1c0e1[var_bd027dd9] = {#var_2ccf7a1c:var_2ccf7a1c, #servertime:endtime};
    model = function_61f5d33a(localclientnum, clientdata, var_bd027dd9);
    if (isdefined(model)) {
        function_a4886b1e(localclientnum, var_bd027dd9, model);
    }
}

// Namespace item_world/item_world
// Params 3, eflags: 0x2 linked
// Checksum 0x5327797b, Offset: 0xc028
// Size: 0xec
function function_d2f95c1a(localclientnum, vehicleentnum, var_2ccf7a1c) {
    clientdata = function_a7e98a1a(localclientnum);
    function_1b42632a(localclientnum, clientdata, var_2ccf7a1c);
    endtime = getservertime(localclientnum, 1) + 60000;
    clientdata.var_baf65690[vehicleentnum] = {#var_2ccf7a1c:var_2ccf7a1c, #servertime:endtime};
    vehicle = getentbynum(localclientnum, vehicleentnum);
    function_d223645e(localclientnum, vehicle);
}

// Namespace item_world/item_world
// Params 1, eflags: 0x2 linked
// Checksum 0xc4240b84, Offset: 0xc120
// Size: 0x1c
function function_a7e98a1a(localclientnum) {
    return level.var_d342a3fd[localclientnum];
}

// Namespace item_world/item_world
// Params 0, eflags: 0x2 linked
// Checksum 0x9788fb8, Offset: 0xc148
// Size: 0x22
function function_963d3f6e() {
    return getgametypesetting(#"hash_47dd11084763c671");
}

// Namespace item_world/item_world
// Params 2, eflags: 0x2 linked
// Checksum 0x130d4b1d, Offset: 0xc178
// Size: 0xba
function function_73436347(itemgroup, var_bd027dd9) {
    /#
        assert(isarray(itemgroup));
    #/
    /#
        assert(isint(var_bd027dd9));
    #/
    for (index = 0; index < itemgroup.size; index++) {
        item = itemgroup[index];
        if (isdefined(item) && item.var_bd027dd9 === var_bd027dd9) {
            return index;
        }
    }
    return undefined;
}

// Namespace item_world/item_world
// Params 2, eflags: 0x2 linked
// Checksum 0x18bb1c72, Offset: 0xc240
// Size: 0x8c
function function_d223645e(localclientnum, vehicle) {
    /#
        assert(isdefined(vehicle));
    #/
    if (!isdefined(vehicle) || !function_97980fde(localclientnum, vehicle)) {
        return;
    }
    clientdata = function_a7e98a1a(localclientnum);
    function_3bd99d2f(localclientnum, clientdata, vehicle);
}

// Namespace item_world/item_world
// Params 3, eflags: 0x2 linked
// Checksum 0xbd4dc346, Offset: 0xc2d8
// Size: 0x21c
function function_a4886b1e(localclientnum, var_bd027dd9, model) {
    /#
        assert(isdefined(model));
    #/
    if (!isdefined(model)) {
        return;
    }
    draworigin = function_8cf40a8c(localclientnum);
    maxdist = getdvarfloat(#"hash_2cd1a08f81049564", function_963d3f6e());
    clientdata = function_a7e98a1a(localclientnum);
    if (is_true(model.var_5d97fed1) || item_world_util::function_83c20f83(model)) {
        stash = function_c17fe536(localclientnum, clientdata, var_bd027dd9);
        function_78bf134c(localclientnum, clientdata, var_bd027dd9, stash);
    } else if (distancesquared(draworigin, model.origin) <= function_a3f6cdac(maxdist)) {
        var_a6762160 = undefined;
        if (isdefined(var_bd027dd9)) {
            if (item_world_util::function_2c7fc531(var_bd027dd9)) {
                var_a6762160 = function_b1702735(var_bd027dd9).var_a6762160;
            } else if (item_world_util::function_da09de95(var_bd027dd9)) {
                if (isdefined(level.item_spawn_drops[var_bd027dd9])) {
                    var_a6762160 = level.item_spawn_drops[var_bd027dd9].var_a6762160;
                }
            }
        }
        function_78bf134c(localclientnum, clientdata, var_bd027dd9, model, var_a6762160);
    }
}

// Namespace item_world/item_world
// Params 2, eflags: 0x2 linked
// Checksum 0x39fd0b90, Offset: 0xc500
// Size: 0x19c
function play_spawn_fx(localclientnum, var_bd027dd9) {
    if (!isdefined(var_bd027dd9)) {
        return;
    }
    item = undefined;
    if (item_world_util::function_2c7fc531(var_bd027dd9)) {
        item = function_b1702735(var_bd027dd9);
    } else if (item_world_util::function_da09de95(var_bd027dd9)) {
        if (isdefined(level.item_spawn_drops[var_bd027dd9])) {
            item = level.item_spawn_drops[var_bd027dd9];
        }
    }
    if (!isdefined(item) || !isdefined(item.var_a6762160) || !isdefined(item.var_a6762160.var_86d1fc36)) {
        return;
    }
    var_a6762160 = item.var_a6762160;
    originoffset = function_7571fda9(item);
    angles = function_118d052e(item);
    forward = anglestoforward(angles);
    up = anglestoup(angles);
    playfx(localclientnum, var_a6762160.var_86d1fc36, item.origin + originoffset, forward, up);
}

// Namespace item_world/item_world
// Params 2, eflags: 0x2 linked
// Checksum 0xa6ff501e, Offset: 0xc6a8
// Size: 0x114
function play_pickup_fx(localclientnum, item) {
    if (!isdefined(item) || !isdefined(item.var_a6762160) || !isdefined(item.var_a6762160.var_37cd55af)) {
        return;
    }
    var_a6762160 = item.var_a6762160;
    originoffset = function_7571fda9(item);
    angles = function_118d052e(item);
    forward = anglestoforward(angles);
    up = anglestoup(angles);
    playfx(localclientnum, var_a6762160.var_37cd55af, item.origin + originoffset, forward, up);
}

// Namespace item_world/item_world
// Params 1, eflags: 0x2 linked
// Checksum 0x51dd0755, Offset: 0xc7c8
// Size: 0xda
function function_7571fda9(item) {
    if (!isdefined(item) || !isdefined(item.var_a6762160)) {
        return (0, 0, 0);
    }
    var_a6762160 = item.var_a6762160;
    originoffset = (isdefined(var_a6762160.var_5dc4470b) ? var_a6762160.var_5dc4470b : 0, isdefined(var_a6762160.var_54a3b4ca) ? var_a6762160.var_54a3b4ca : 0, isdefined(var_a6762160.var_3e688854) ? var_a6762160.var_3e688854 : 0);
    originoffset = rotatepoint(originoffset * -1, item.angles);
    return originoffset;
}

// Namespace item_world/item_world
// Params 1, eflags: 0x2 linked
// Checksum 0xfbc66a26, Offset: 0xc8b0
// Size: 0xd2
function function_118d052e(item) {
    if (!isdefined(item)) {
        return (0, 0, 0);
    }
    var_a6762160 = item.var_a6762160;
    if (!isdefined(item.var_a6762160)) {
        return item.angles;
    }
    angles = combineangles(item.angles, (isdefined(var_a6762160.var_15b88fde) ? var_a6762160.var_15b88fde : 0, isdefined(var_a6762160.var_8c9a7dc8) ? var_a6762160.var_8c9a7dc8 : 0, isdefined(var_a6762160.var_7a51d937) ? var_a6762160.var_7a51d937 : 0));
    return angles;
}

// Namespace item_world/item_world
// Params 2, eflags: 0x2 linked
// Checksum 0xf6292fb6, Offset: 0xc990
// Size: 0xc0
function function_28b42f1c(localclientnum, var_bd027dd9) {
    if (item_world_util::function_d9648161(var_bd027dd9)) {
        if (item_world_util::function_2c7fc531(var_bd027dd9)) {
            return var_bd027dd9;
        } else if (item_world_util::function_da09de95(var_bd027dd9)) {
            if (isdefined(level.item_spawn_drops[var_bd027dd9])) {
                return level.item_spawn_drops[var_bd027dd9].id;
            }
        } else if (!item_inventory::function_7d5553ac()) {
            return item_inventory::function_c48cd17f(localclientnum, var_bd027dd9);
        }
    }
    return 32767;
}

// Namespace item_world/item_world
// Params 1, eflags: 0x2 linked
// Checksum 0x9d5464e3, Offset: 0xca58
// Size: 0xa2
function get_item_name(item) {
    if (isdefined(item.displayname)) {
        return item.displayname;
    }
    if (isdefined(item.weapon)) {
        if (item.weapon.displayname != #"") {
            return item.weapon.displayname;
        }
    }
    return isdefined(item.displayname) ? item.displayname : #"";
}

// Namespace item_world/item_world
// Params 1, eflags: 0x2 linked
// Checksum 0x2a1283bb, Offset: 0xcb08
// Size: 0x52
function function_6fe428b3(item) {
    if (isdefined(item.pickupicon)) {
        return item.pickupicon;
    }
    return isdefined(item.icon) ? item.icon : #"";
}

// Namespace item_world/item_world
// Params 1, eflags: 0x2 linked
// Checksum 0x493fdfe0, Offset: 0xcb68
// Size: 0x8e
function function_c59d8d2b(item) {
    if (isdefined(item.var_e9898330) && item.var_e9898330 != "") {
        return item.var_e9898330;
    }
    if (isdefined(item.weapon.var_e9898330) && item.weapon.var_e9898330 != "") {
        return item.weapon.var_e9898330;
    }
    return undefined;
}

// Namespace item_world/item_world
// Params 6, eflags: 0x2 linked
// Checksum 0x4a55fefb, Offset: 0xcc00
// Size: 0x15c
function function_2e3efdda(origin, dir, var_4e7bdb02, maxdistance, dot, var_653b55e5 = 0) {
    var_f4b807cb = function_abaeb170(origin, dir, var_4e7bdb02, maxdistance, dot, 1, -2147483647);
    var_6665e24 = arraysortclosest(level.item_spawn_drops, origin, var_4e7bdb02, 0, maxdistance);
    var_f4b807cb = arraycombine(var_f4b807cb, var_6665e24, 1, 0);
    var_f4b807cb = arraysortclosest(var_f4b807cb, origin, var_4e7bdb02, 0, maxdistance);
    if (var_653b55e5) {
        stashitems = [];
        for (index = 0; index < var_f4b807cb.size; index++) {
            if (item_world_util::function_83c20f83(var_f4b807cb[index])) {
                stashitems[stashitems.size] = var_f4b807cb[index];
            }
        }
        var_f4b807cb = stashitems;
    }
    return var_f4b807cb;
}

// Namespace item_world/item_world
// Params 2, eflags: 0x2 linked
// Checksum 0x3ba0814a, Offset: 0xcd68
// Size: 0x2ea
function hide_item(localclientnum, var_bd027dd9) {
    if (item_world_util::function_2c7fc531(var_bd027dd9)) {
        if (function_54ca5536(var_bd027dd9, getservertime(0, 1)) == 0) {
            return;
        }
    }
    clientdata = function_a7e98a1a(localclientnum);
    if (isdefined(clientdata)) {
        if (isdefined(clientdata.modellist[var_bd027dd9])) {
            clientdata.modellist[var_bd027dd9] hide();
            clientdata.modellist[var_bd027dd9 * -1] = clientdata.modellist[var_bd027dd9];
            function_2990e5f(localclientnum, clientdata.modellist[var_bd027dd9]);
            arrayremoveindex(clientdata.modellist, var_bd027dd9, 1);
            function_b032ccd(localclientnum, clientdata.modellist);
        }
        if (isdefined(clientdata.var_89e328b4) && isdefined(clientdata.var_89e328b4[var_bd027dd9])) {
            clientdata.var_89e328b4[var_bd027dd9] hide();
            clientdata.var_89e328b4[var_bd027dd9 * -1] = clientdata.var_89e328b4[var_bd027dd9];
            function_2990e5f(localclientnum, clientdata.var_89e328b4[var_bd027dd9]);
            arrayremoveindex(clientdata.var_89e328b4, var_bd027dd9, 1);
            function_b032ccd(localclientnum, clientdata.modellist);
        }
        if (isarray(clientdata.groupitems)) {
            foreach (item in clientdata.groupitems) {
                if (isdefined(item) && item.var_bd027dd9 === var_bd027dd9) {
                    if (isstruct(item)) {
                        item.hidetime.item = gettime();
                    }
                    break;
                }
            }
        }
    }
}

// Namespace item_world/item_world
// Params 3, eflags: 0x2 linked
// Checksum 0xaeb4f777, Offset: 0xd060
// Size: 0x2b4
function show_item(localclientnum, var_bd027dd9, showitem) {
    item = undefined;
    if (item_world_util::function_2c7fc531(var_bd027dd9)) {
        function_54ca5536(var_bd027dd9, showitem ? 0 : -1);
        player = function_5c10bd79(localclientnum);
        item = function_b1702735(var_bd027dd9);
        var_6369afab = function_963d3f6e();
        if (!isdefined(item.origin)) {
            return;
        }
        if (isplayer(player) && distance2dsquared(item.origin, player.origin) <= function_a3f6cdac(var_6369afab)) {
            player.var_506495f9.player = 1;
        }
    } else {
        item = level.item_spawn_drops[var_bd027dd9];
    }
    clientdata = function_a7e98a1a(localclientnum);
    if (isdefined(clientdata) && isdefined(item)) {
        if (isdefined(clientdata.modellist[var_bd027dd9])) {
            clientdata.modellist[var_bd027dd9] show();
            function_78bf134c(localclientnum, clientdata, var_bd027dd9, clientdata.modellist[var_bd027dd9], item.var_a6762160);
            function_84964a9e(localclientnum, item.var_a6762160, clientdata.modellist[var_bd027dd9], var_bd027dd9);
        }
        if (isdefined(clientdata.var_89e328b4) && isdefined(clientdata.var_89e328b4[var_bd027dd9])) {
            clientdata.var_89e328b4[var_bd027dd9] show();
            function_78bf134c(localclientnum, clientdata, var_bd027dd9, clientdata.var_89e328b4[var_bd027dd9], item.var_a6762160);
            function_84964a9e(localclientnum, item.var_a6762160, clientdata.var_89e328b4[var_bd027dd9], var_bd027dd9);
        }
    }
}

// Namespace item_world/item_world
// Params 1, eflags: 0x2 linked
// Checksum 0x8db76372, Offset: 0xd320
// Size: 0x5e
function function_b78a9820(localclientnum) {
    clientdata = function_a7e98a1a(localclientnum);
    if (isdefined(clientdata) && isstruct(clientdata)) {
        clientdata.var_ff9e7e43.clientdata = 1;
    }
}

// Namespace item_world/item_world
// Params 0, eflags: 0x2 linked
// Checksum 0x670697a7, Offset: 0xd388
// Size: 0x24
function function_1b11e73c() {
    level flag::wait_till(#"item_world_initialized");
}

// Namespace item_world/item_world
// Params 1, eflags: 0x2 linked
// Checksum 0x94408629, Offset: 0xd3b8
// Size: 0x4c
function function_9b71de90(localclientnum) {
    model = function_425ed700(localclientnum);
    if (isdefined(model) && isdefined(model.id)) {
        return model;
    }
}
