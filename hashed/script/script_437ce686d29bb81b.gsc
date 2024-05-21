// Atian COD Tools GSC CW decompiler test
#using script_18077945bb84ede7;
#using script_4ccfb58a9443a60b;
#using script_7a5293d92c61c788;
#using script_3751b21462a54a7d;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm_laststand.gsc;
#using script_72401f526ba71638;
#using scripts\zm_common\aats\zm_aat.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\loadout_shared.gsc;
#using script_471b31bd963b388e;
#using scripts\core_common\item_world.gsc;
#using script_1caf36ff04a85ff6;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using script_67c87580908a0a00;
#using scripts\core_common\activecamo_shared.gsc;
#using scripts\core_common\aat_shared.gsc;

#namespace namespace_cf6efd05;

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 0, eflags: 0x1
// Checksum 0x1a597d6f, Offset: 0x1a0
// Size: 0xf6
function autoexec init() {
    level endon(#"game_ended");
    if (!zm_utility::is_survival()) {
        return;
    }
    level.var_85b812c9 = function_21d402f4(#"initialized");
    if (!function_85b812c9()) {
        function_ded56b14();
        function_c484a9be(#"initialized", 1);
    }
    function_f120fbd8();
    if (function_85b812c9()) {
        level flag::wait_till(#"initial_fade_in_complete");
        level.var_85b812c9 = undefined;
    }
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 0, eflags: 0x2 linked
// Checksum 0x56dde57b, Offset: 0x2a0
// Size: 0x1a
function function_85b812c9() {
    return is_true(level.var_85b812c9);
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 1, eflags: 0x42 linked
// Checksum 0x9a83e405, Offset: 0x2c8
// Size: 0x1f4
function function_c484a9be(...) {
    value = vararg[vararg.size - 1];
    if (!isdefined(value)) {
        return;
    }
    arrayremoveindex(vararg, vararg.size - 1);
    /#
        if (getdvarint(#"hash_66a946ea0668bb21", 0)) {
            var_7e5020cb = "<unknown string>";
            foreach (path in vararg) {
                if (ishash(path)) {
                    var_7e5020cb = var_7e5020cb + "<unknown string>" + function_9e72a96(path);
                    continue;
                }
                var_7e5020cb = var_7e5020cb + "<unknown string>" + path;
            }
            println("<unknown string>" + "<unknown string>" + "<unknown string>" + var_7e5020cb + "<unknown string>" + (isdefined(value) ? value : ishash(value) ? function_9e72a96(value) : "<unknown string>"));
        }
    #/
    function_138a6b4b(vararg, value);
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 2, eflags: 0x42 linked
// Checksum 0xb1cf8d40, Offset: 0x4c8
// Size: 0x384
function function_53721fc4(player, ...) {
    if (!isdefined(player)) {
        return;
    }
    player_xuid = player getxuid(1);
    if (player_xuid === 0) {
        return;
    }
    for (i = 0; i < 4; i++) {
        path_array = [i, #"players"];
        path_array = arraycombine(path_array, [#"xuid"], 1, 0);
        value = function_7bce700c(path_array);
        if (int(player_xuid) === value) {
            player_index = i;
            break;
        }
        if (!isdefined(player_index) && value == 0) {
            player_index = i;
        }
    }
    if (!isdefined(player_index)) {
        return;
    }
    value = vararg[vararg.size - 1];
    if (!isdefined(value)) {
        return;
    }
    arrayremoveindex(vararg, vararg.size - 1);
    path_array = [player_index, #"players"];
    path_array = arraycombine(path_array, vararg, 1, 0);
    /#
        if (getdvarint(#"hash_66a946ea0668bb21", 0)) {
            var_7e5020cb = "<unknown string>";
            foreach (path in path_array) {
                if (ishash(path)) {
                    var_7e5020cb = var_7e5020cb + "<unknown string>" + function_9e72a96(path);
                    continue;
                }
                var_7e5020cb = var_7e5020cb + "<unknown string>" + path;
            }
            println("<unknown string>" + "<unknown string>" + "<unknown string>" + var_7e5020cb + "<unknown string>" + (isdefined(value) ? value : ishash(value) ? function_9e72a96(value) : "<unknown string>"));
        }
    #/
    function_138a6b4b(path_array, value);
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 2, eflags: 0x0
// Checksum 0xbf436563, Offset: 0x858
// Size: 0x4c
function function_594ed048(map_name, category) {
    function_c484a9be(#"hash_501fca63bac8cf9", map_name, #"hash_51416992d6e52e2d", category, 1);
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 1, eflags: 0x2 linked
// Checksum 0x794df61e, Offset: 0x8b0
// Size: 0x764
function function_42f98bb6(player) {
    if (!isdefined(player)) {
        return;
    }
    function_53721fc4(player, #"xuid", player getxuid(1));
    function_53721fc4(player, #"valid", 1);
    function_53721fc4(player, #"classnum", player.class_num);
    function_53721fc4(player, #"selectedloadout", player.var_afe4efeb);
    function_53721fc4(player, #"selfrevivecount", player zm_laststand::function_618fd37e());
    function_53721fc4(player, #"deaths", player.deaths);
    function_53721fc4(player, #"kills", player.kills);
    function_53721fc4(player, #"score", player.pers[#"score"]);
    function_53721fc4(player, #"revives", player.pers[#"revives"]);
    function_53721fc4(player, #"downs", player.pers[#"downs"]);
    function_53721fc4(player, #"damage", isdefined(player.pers[#"damagedone"]) ? player.pers[#"damagedone"] : 0);
    function_53721fc4(player, #"headshots", player.headshots);
    function_53721fc4(player, #"kills_critical", player.kills_critical);
    function_53721fc4(player, #"hash_709ac244d8923f57", player.var_3b4f6b37);
    function_53721fc4(player, #"scoretotal", isdefined(player.score_total) ? player.score_total : 0);
    function_53721fc4(player, #"hash_1cd82a25a6e6afe8", is_true(player.var_54c2b211));
    function_53721fc4(player, #"hash_1824003b58adcb7e", isdefined(player.var_204e6c25) ? player.var_204e6c25 : 0);
    function_53721fc4(player, #"hash_737acdd971f0af48", isdefined(player.pers[#"telemetry"].utc_connect_time_s) ? player.pers[#"telemetry"].utc_connect_time_s : getutc());
    function_53721fc4(player, #"hash_2c7dccb1d75c9993", isdefined(player.var_42dd3eba) ? player.var_42dd3eba : 0);
    function_53721fc4(player, #"hash_376217ca748b6f62", isdefined(player.var_93369bb6) ? player.var_93369bb6 : 0);
    function_53721fc4(player, #"hash_3d0d59f6f3da2e5b", isdefined(player.var_2e139723) ? player.var_2e139723 : 0);
    function_53721fc4(player, #"hash_28e11648279d2037", int(isdefined(player.var_e2d764da) ? player.var_e2d764da : 0));
    function_53721fc4(player, #"hash_3e9559cb9b09e090", #"hash_1303dcb8d0e80e33", int(isdefined(player.var_b21b857[#"hash_1303dcb8d0e80e33"]) ? player.var_b21b857[#"hash_1303dcb8d0e80e33"] : 0));
    function_53721fc4(player, #"hash_3e9559cb9b09e090", #"maxis", int(isdefined(player.var_b21b857[#"maxis"]) ? player.var_b21b857[#"maxis"] : 0));
    function_53721fc4(player, #"hash_3e9559cb9b09e090", #"omega", int(isdefined(player.var_b21b857[#"omega"]) ? player.var_b21b857[#"omega"] : 0));
    function_f859a82d(player);
    function_2728bf09(player);
    function_10248eb0(player);
    function_9a198b3a(player);
    function_b8d9713(player);
    function_85fb7313(player);
    function_92ce0b73(player);
    function_bddd882e(player);
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 1, eflags: 0x2 linked
// Checksum 0x54d79a46, Offset: 0x1020
// Size: 0xd0c
function function_f859a82d(player) {
    if (isdefined(player.var_3e8da229)) {
        var_fcee4e8f = player.var_3e8da229;
        var_7f9e4f45 = var_fcee4e8f.itementry.name;
        var_c83fcdc4 = var_fcee4e8f.itementry.rarity;
        var_c170414 = var_fcee4e8f.aat;
        var_f91be307 = var_fcee4e8f.paplv;
        var_133637cd = var_fcee4e8f.var_627c698b;
        if (isdefined(var_fcee4e8f)) {
            function_53721fc4(player, #"hash_5e1b2fdec911ccdf", #"name", hash(var_7f9e4f45));
            if (isdefined(var_133637cd) && isarray(var_133637cd.attachments)) {
                foreach (attachment_index, attachment in var_133637cd.attachments) {
                    function_53721fc4(player, #"hash_5e1b2fdec911ccdf", #"attachments", attachment_index, hash(attachment));
                }
            }
            if (isdefined(var_f91be307)) {
                function_53721fc4(player, #"hash_5e1b2fdec911ccdf", #"paplv", var_f91be307);
            }
            if (isdefined(var_c170414)) {
                function_53721fc4(player, #"hash_5e1b2fdec911ccdf", #"aat", hash(var_c170414));
            }
            function_53721fc4(player, #"hash_5e1b2fdec911ccdf", #"hash_455cfe820071b143", is_true(var_fcee4e8f.var_b3546c09));
            function_53721fc4(player, #"hash_5e1b2fdec911ccdf", #"hash_4696d1f524b4b683", is_true(var_fcee4e8f.var_a0cc02cf));
            function_53721fc4(player, #"hash_5e1b2fdec911ccdf", #"hash_5b4b4e5cc381eb9b", is_true(var_fcee4e8f.var_96c71057));
            function_53721fc4(player, #"hash_5e1b2fdec911ccdf", #"hash_98bbe4497a6c326", is_true(var_fcee4e8f.var_d688ad29));
            function_53721fc4(player, #"hash_5e1b2fdec911ccdf", #"hash_4071d18f7d9f2e36", is_true(var_fcee4e8f.var_387e74f4));
            function_53721fc4(player, #"hash_5e1b2fdec911ccdf", #"hash_4090fe15080f2da0", is_true(var_fcee4e8f.var_569199b9));
            function_53721fc4(player, #"hash_5e1b2fdec911ccdf", #"weaponoptions", string(isdefined(var_fcee4e8f.weaponoptions) ? var_fcee4e8f.weaponoptions : 0));
            function_53721fc4(player, #"hash_5e1b2fdec911ccdf", #"hash_6ebd8dec863a7782", string(isdefined(var_fcee4e8f.var_e91aba42) ? var_fcee4e8f.var_e91aba42 : 0));
            function_53721fc4(player, #"hash_5e1b2fdec911ccdf", #"hash_17f911763bde5dfe", string(isdefined(var_fcee4e8f.var_908f65ca) ? var_fcee4e8f.var_908f65ca : 0));
        }
    }
    var_6653c106 = [17 + 1, 17 + 1 + 8 + 1, 17 + 1 + 8 + 1 + 8 + 1];
    primary_weapons = player getweaponslist();
    var_3c6fcb66 = 0;
    foreach (weapon in primary_weapons) {
        if (!isdefined(weapon) || weapon === level.weaponnone || weapon === level.nullprimaryoffhand || killstreaks::is_killstreak_weapon(weapon) || weapon.inventorytype !== "primary" && weapon.inventorytype !== "melee") {
            continue;
        }
        weapon_index = var_3c6fcb66;
        item = player item_inventory::function_230ceec4(weapon);
        weapon_name = "";
        if (isdefined(item.paplv)) {
            weapon_name = weapon.name;
        } else {
            base_weapon = zm_weapons::get_base_weapon(weapon);
            weapon_name = base_weapon.name;
        }
        function_53721fc4(player, #"weapons", weapon_index, #"name", weapon_name);
        foreach (attachment_index, attachment in weapon.attachments) {
            function_53721fc4(player, #"weapons", weapon_index, #"attachments", attachment_index, hash(attachment));
        }
        function_dc928114(player, weapon, weapon_index);
        if (isdefined(item)) {
            if (isdefined(item.paplv)) {
                function_53721fc4(player, #"weapons", weapon_index, #"paplv", item.paplv);
                item.weaponoptions = player function_ade49959(weapon);
            }
            if (isdefined(item.aat)) {
                function_53721fc4(player, #"weapons", weapon_index, #"aat", hash(item.aat));
            }
            if (isdefined(item.itementry.rarity)) {
                function_53721fc4(player, #"weapons", weapon_index, #"rarity", hash(item.itementry.rarity));
            }
            function_53721fc4(player, #"weapons", weapon_index, #"hash_455cfe820071b143", is_true(item.var_b3546c09));
            function_53721fc4(player, #"weapons", weapon_index, #"hash_4696d1f524b4b683", is_true(item.var_a0cc02cf));
            function_53721fc4(player, #"weapons", weapon_index, #"hash_5b4b4e5cc381eb9b", is_true(item.var_96c71057));
            function_53721fc4(player, #"weapons", weapon_index, #"hash_98bbe4497a6c326", is_true(item.var_d688ad29));
            function_53721fc4(player, #"weapons", weapon_index, #"hash_4071d18f7d9f2e36", is_true(item.var_387e74f4));
            function_53721fc4(player, #"weapons", weapon_index, #"hash_4090fe15080f2da0", is_true(item.var_569199b9));
            function_53721fc4(player, #"weapons", weapon_index, #"weaponoptions", string(isdefined(item.weaponoptions) ? item.weaponoptions : 0));
            function_53721fc4(player, #"weapons", weapon_index, #"hash_6ebd8dec863a7782", string(isdefined(item.var_e91aba42) ? item.var_e91aba42 : 0));
            function_53721fc4(player, #"weapons", weapon_index, #"hash_17f911763bde5dfe", string(isdefined(item.var_908f65ca) ? item.var_908f65ca : 0));
        }
        function_53721fc4(player, #"weapons", weapon_index, #"hash_22de893145a66a64", player.var_5d80a93b === weapon);
        var_3c6fcb66++;
    }
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 3, eflags: 0x2 linked
// Checksum 0x17c7377f, Offset: 0x1d38
// Size: 0x254
function function_dc928114(player, weapon, weapon_index) {
    weapon = activecamo::function_94c2605(weapon);
    var_f4eb4a50 = player activecamo::function_155299d(weapon);
    if (!isdefined(var_f4eb4a50) || !isdefined(player.pers[#"activecamo"])) {
        return;
    }
    base_weapon = activecamo::function_c14cb514(weapon);
    if (!isdefined(base_weapon)) {
        return;
    }
    var_8d729f1b = 0;
    activecamo = player.pers[#"activecamo"][var_f4eb4a50.name];
    if (isdefined(activecamo.var_13949c61.stages)) {
        foreach (stagenum, var_62b564ee in activecamo.var_13949c61.stages) {
            stage = activecamo.stages[stagenum];
            if (isdefined(stage.var_dd54a13b[base_weapon])) {
                var_8d729f1b += stage.var_dd54a13b[base_weapon].statvalue;
            }
        }
    }
    function_53721fc4(player, #"weapons", weapon_index, #"hash_63f0851f53ab627c", #"bundlename", hash(var_f4eb4a50.name));
    function_53721fc4(player, #"weapons", weapon_index, #"hash_63f0851f53ab627c", #"statvalue", var_8d729f1b);
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 1, eflags: 0x2 linked
// Checksum 0x558b28d9, Offset: 0x1f98
// Size: 0x1b4
function function_2728bf09(player) {
    if (player.inventory.items[13].networkid !== 32767) {
        item = player.inventory.items[13];
        function_53721fc4(player, #"tactical", #"name", hash(item.itementry.name));
        function_53721fc4(player, #"tactical", #"amount", item.count);
    }
    if (player.inventory.items[7].networkid !== 32767) {
        item = player.inventory.items[7];
        function_53721fc4(player, #"lethal", #"name", hash(item.itementry.name));
        function_53721fc4(player, #"lethal", #"amount", item.count);
    }
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 1, eflags: 0x2 linked
// Checksum 0x7391599e, Offset: 0x2158
// Size: 0x144
function function_10248eb0(player) {
    if (isdefined(player.var_87f72f8)) {
        function_53721fc4(player, #"hash_fffea0defd338fe", player.var_8da24ed0);
        function_53721fc4(player, #"hash_4118467bee30e606", player.var_87f72f8);
    }
    if (player.inventory.items[12].networkid !== 32767) {
        item = player.inventory.items[12];
        function_53721fc4(player, #"fieldupgrade", #"name", hash(item.itementry.name));
        function_53721fc4(player, #"fieldupgrade", #"amount", item.count);
    }
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 1, eflags: 0x2 linked
// Checksum 0xca14a0e7, Offset: 0x22a8
// Size: 0xf4
function function_9a198b3a(player) {
    if (isdefined(player.var_7341f980)) {
        foreach (index, var_ec1d9111 in player.var_7341f980) {
            function_53721fc4(player, #"perks", index, var_ec1d9111);
        }
    }
    function_53721fc4(player, #"hash_7cbf6a38abb6c4fe", is_true(player.var_2121dbc7));
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 1, eflags: 0x2 linked
// Checksum 0xcb92ccfa, Offset: 0x23a8
// Size: 0x124
function function_b8d9713(player) {
    if (player.inventory.items[17].networkid !== 32767) {
        item = player.inventory.items[17];
        function_53721fc4(player, #"killstreakitem", hash(item.itementry.name));
        if (isint(player.pers[#"held_killstreak_ammo_count"][item.itementry.weapon])) {
            function_53721fc4(player, #"hash_76d7fda5546b7d", player.pers[#"held_killstreak_ammo_count"][item.itementry.weapon]);
        }
    }
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 1, eflags: 0x2 linked
// Checksum 0x3f055d59, Offset: 0x24d8
// Size: 0xc4
function function_85fb7313(player) {
    if (player.inventory.items[6].networkid !== 32767) {
        item = player.inventory.items[6];
        function_53721fc4(player, #"armoritem", hash(item.itementry.name));
        function_53721fc4(player, #"armor", player.armor);
    }
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 1, eflags: 0x2 linked
// Checksum 0xcc8d1675, Offset: 0x25a8
// Size: 0xbc
function function_92ce0b73(player) {
    scrap = player namespace_2a9f256a::function_6f3fd157();
    function_53721fc4(player, #"scrap", isdefined(scrap) ? scrap : 0);
    var_c7f20631 = player namespace_2a9f256a::function_efd1d093();
    function_53721fc4(player, #"hash_d6fdfc12ead24ba", isdefined(var_c7f20631) ? var_c7f20631 : 0);
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 1, eflags: 0x2 linked
// Checksum 0x6b27789c, Offset: 0x2670
// Size: 0x1e4
function function_bddd882e(player) {
    function_53721fc4(player, #"hash_7cd550c023e602c2", #"hash_67fa39d03fd168d9", isdefined(player.var_6b3806e8) ? player.var_6b3806e8 : 0);
    function_53721fc4(player, #"hash_7cd550c023e602c2", #"hash_f0eccd443684741", isdefined(player.var_207f01b0) ? player.var_207f01b0 : 0);
    function_53721fc4(player, #"hash_7cd550c023e602c2", #"tribute", int(isdefined(player.n_tribute) ? player.n_tribute : 0));
    function_53721fc4(player, #"hash_7cd550c023e602c2", #"hash_183357499f14d5b7", int(isdefined(player.var_9e09931e) ? player.var_9e09931e : 0));
    function_53721fc4(player, #"hash_7cd550c023e602c2", #"hash_115e695af69d2e5c", int(isdefined(player.var_c8413949) ? player.var_c8413949 : 0));
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 0, eflags: 0x2 linked
// Checksum 0xaea7d67c, Offset: 0x2860
// Size: 0x2b0
function function_9c9d3652() {
    function_c484a9be(#"forcedobjective", #"category", isdefined(level.var_edb2bb69) ? level.var_edb2bb69 : #"");
    function_c484a9be(#"forcedobjective", #"variant", isdefined(level.var_1b2466fe) ? level.var_1b2466fe : #"");
    if (isdefined(level.contentmanager)) {
        function_c5655189(level.contentmanager.var_dc858a58);
        function_a7656dd1(level.contentmanager.var_407236bf, level.contentmanager.var_9614b1d2);
    }
    function_c484a9be(#"hash_4c6551b221159068", int(isdefined(level.var_df1d1235) ? level.var_df1d1235 : 0));
    function_c484a9be(#"hash_44f5d4b321e92263", int(isdefined(level.var_d2bdec66) ? level.var_d2bdec66 : 0));
    if (isarray(level.var_94b8d201)) {
        foreach (var_82fa1d96 in level.var_94b8d201) {
            if (isdefined(var_82fa1d96.n_count) && var_82fa1d96.n_count > 0) {
                function_c484a9be(#"hash_774b5f9b053e5af", var_82fa1d96.str_name, var_82fa1d96.n_count);
            }
        }
    }
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 1, eflags: 0x2 linked
// Checksum 0x1321649a, Offset: 0x2b18
// Size: 0xd4
function function_c5655189(var_53789a3b) {
    foreach (index, map_name in var_53789a3b.list) {
        function_c484a9be(#"hash_60af8d9cfbbe06bd", index, map_name);
    }
    function_c484a9be(#"hash_2ab6464d4c124e87", var_53789a3b.index);
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 2, eflags: 0x2 linked
// Checksum 0x23f9e274, Offset: 0x2bf8
// Size: 0x104
function function_a7656dd1(var_6a2432bd, var_e3e502f9) {
    foreach (index, objective_name in var_6a2432bd.list) {
        function_c484a9be(#"hash_5eba90da524edc31", index, objective_name);
        if (isdefined(var_e3e502f9[objective_name])) {
            function_a6d3f1ca(var_e3e502f9[objective_name], objective_name);
        }
    }
    function_c484a9be(#"hash_1fe8bc20266a252b", var_6a2432bd.index);
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 2, eflags: 0x2 linked
// Checksum 0xff9aa29f, Offset: 0x2d08
// Size: 0xfc
function function_a6d3f1ca(var_276aa0ed, objective_name) {
    foreach (index, variant_name in var_276aa0ed.list) {
        function_c484a9be(#"objectivevariants", objective_name, #"variants", index, variant_name);
    }
    function_c484a9be(#"objectivevariants", objective_name, #"variantindex", var_276aa0ed.index);
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 1, eflags: 0x42 linked
// Checksum 0x308d8baa, Offset: 0x2e10
// Size: 0x1b8
function function_21d402f4(...) {
    value = function_7bce700c(vararg);
    /#
        if (getdvarint(#"hash_66a946ea0668bb21", 0)) {
            var_7e5020cb = "<unknown string>";
            foreach (path in vararg) {
                if (ishash(path)) {
                    var_7e5020cb = var_7e5020cb + "<unknown string>" + function_9e72a96(path);
                    continue;
                }
                var_7e5020cb = var_7e5020cb + "<unknown string>" + path;
            }
            println("<unknown string>" + "<unknown string>" + "<unknown string>" + var_7e5020cb + "<unknown string>" + (isdefined(value) ? value : ishash(value) ? function_9e72a96(value) : "<unknown string>"));
        }
    #/
    return value;
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 2, eflags: 0x42 linked
// Checksum 0xacb0da83, Offset: 0x2fd0
// Size: 0x338
function function_48b5c403(player, ...) {
    if (!isdefined(player)) {
        return;
    }
    player_xuid = player getxuid(1);
    if (player_xuid === 0) {
        return;
    }
    for (i = 0; i < 4; i++) {
        path_array = [i, #"players"];
        path_array = arraycombine(path_array, [#"xuid"], 1, 0);
        value = function_7bce700c(path_array);
        if (int(player_xuid) === value) {
            player_index = i;
            break;
        }
    }
    if (!isdefined(player_index)) {
        return;
    }
    path_array = [player_index, #"players"];
    path_array = arraycombine(path_array, vararg, 1, 0);
    value = function_7bce700c(path_array);
    if (!isdefined(value)) {
        value = 0;
    }
    /#
        if (getdvarint(#"hash_66a946ea0668bb21", 0)) {
            var_7e5020cb = "<unknown string>";
            foreach (path in path_array) {
                if (ishash(path)) {
                    var_7e5020cb = var_7e5020cb + "<unknown string>" + function_9e72a96(path);
                    continue;
                }
                var_7e5020cb = var_7e5020cb + "<unknown string>" + path;
            }
            println("<unknown string>" + "<unknown string>" + "<unknown string>" + var_7e5020cb + "<unknown string>" + (isdefined(value) ? value : ishash(value) ? function_9e72a96(value) : "<unknown string>"));
        }
    #/
    return value;
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 1, eflags: 0x2 linked
// Checksum 0x3ef7670d, Offset: 0x3310
// Size: 0x3a
function function_99df13e0(player) {
    return is_true(function_48b5c403(player, #"valid"));
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 1, eflags: 0x2 linked
// Checksum 0x957fa034, Offset: 0x3358
// Size: 0x75e
function function_642cc595(player) {
    if (!isdefined(player)) {
        return;
    }
    player endon(#"death", #"disconnect");
    player takeallweapons();
    util::wait_network_frame();
    player.specialty = [];
    nullprimary = getweapon(#"null_offhand_primary");
    player giveweapon(nullprimary);
    player setweaponammoclip(nullprimary, 0);
    player switchtooffhand(nullprimary);
    while (!player hasweapon(nullprimary)) {
        waitframe(1);
    }
    player.class_num = function_48b5c403(player, #"classnum");
    player.var_afe4efeb = function_48b5c403(player, #"selectedloadout");
    player flag::set(#"hash_4e456290f8bfa93c");
    self_revive_count = function_48b5c403(player, #"selfrevivecount");
    if (player zm_laststand::function_618fd37e() < 1) {
        player zm_laststand::function_3a00302e(self_revive_count);
    }
    player.var_42dd3eba = function_48b5c403(player, #"hash_2c7dccb1d75c9993");
    player.var_93369bb6 = function_48b5c403(player, #"hash_376217ca748b6f62");
    player.var_2e139723 = function_48b5c403(player, #"hash_3d0d59f6f3da2e5b");
    player.deaths = function_48b5c403(player, #"deaths");
    player.pers[#"deaths"] = player.deaths;
    player.kills = function_48b5c403(player, #"kills");
    player.pers[#"kills"] = player.kills;
    player.score = function_48b5c403(player, #"score");
    player.pers[#"score"] = player.score;
    player.revives = function_48b5c403(player, #"revives");
    player.pers[#"revives"] = player.revives;
    player.downs = function_48b5c403(player, #"downs");
    player.pers[#"downs"] = player.downs;
    player.headshots = function_48b5c403(player, #"headshots");
    player.pers[#"headshots"] = player.headshots;
    player.kills_critical = function_48b5c403(player, #"kills_critical");
    player.pers[#"kills_critical"] = player.kills_critical;
    player.pers[#"damagedone"] = function_48b5c403(player, #"damage");
    player.var_3b4f6b37 = function_48b5c403(player, #"hash_709ac244d8923f57");
    player.score_total = function_48b5c403(player, #"scoretotal");
    player.var_54c2b211 = function_48b5c403(player, #"hash_1cd82a25a6e6afe8");
    player.var_204e6c25 = function_48b5c403(player, #"hash_1824003b58adcb7e");
    player.pers[#"telemetry"].utc_connect_time_s = function_48b5c403(player, #"hash_737acdd971f0af48");
    player.var_e2d764da = function_48b5c403(player, #"hash_28e11648279d2037");
    player.var_b21b857[#"hash_1303dcb8d0e80e33"] = function_48b5c403(player, #"hash_3e9559cb9b09e090", #"hash_1303dcb8d0e80e33");
    player.var_b21b857[#"maxis"] = function_48b5c403(player, #"hash_3e9559cb9b09e090", #"maxis");
    player.var_b21b857[#"omega"] = function_48b5c403(player, #"hash_3e9559cb9b09e090", #"omega");
    function_fbf71e69(player);
    wait(1);
    function_77e8e806(player);
    wait(1);
    function_65229c47(player);
    wait(1);
    function_3c54ba6f(player);
    wait(1);
    function_390e2146(player);
    wait(1);
    function_102126f6(player);
    wait(1);
    function_b0681676(player);
    wait(1);
    function_a1f42996(player);
    wait(1);
    player.var_1fa95cc = gettime();
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 3, eflags: 0x2 linked
// Checksum 0xce532ac0, Offset: 0x3ac0
// Size: 0x11b4
function function_7695efd4(player, index, var_d17eb4df) {
    var_6653c106 = [17 + 1, 17 + 1 + 8 + 1, 17 + 1 + 8 + 1 + 8 + 1];
    weapon_name = hash(function_48b5c403(player, #"weapons", index, #"name"));
    if (weapon_name == #"") {
        return;
    }
    /#
        if (getdvar(#"hash_64ed0f72b786103", 0) !== 0) {
            println("<unknown string>" + player getentitynumber() + "<unknown string>" + "<unknown string>" + function_9e72a96(weapon_name));
        }
    #/
    attachments = [];
    for (j = 0; j < 8; j++) {
        var_b0f63180 = hash(function_48b5c403(player, #"weapons", index, #"attachments", j));
        if (var_b0f63180 == #"") {
            continue;
        }
        attachments[attachments.size] = var_b0f63180;
    }
    function_4cec0a67(player, index);
    paplv = function_48b5c403(player, #"weapons", index, #"paplv");
    /#
        if (getdvar(#"hash_64ed0f72b786103", 0) !== 0) {
            println("<unknown string>" + player getentitynumber() + "<unknown string>" + "<unknown string>" + paplv);
        }
    #/
    aat = hash(function_48b5c403(player, #"weapons", index, #"aat"));
    /#
        if (getdvar(#"hash_64ed0f72b786103", 0) !== 0) {
            println("<unknown string>" + player getentitynumber() + "<unknown string>" + "<unknown string>" + function_9e72a96(aat));
        }
    #/
    rarity = hash(function_48b5c403(player, #"weapons", index, #"rarity"));
    var_b3546c09 = function_48b5c403(player, #"weapons", index, #"hash_455cfe820071b143");
    weaponoptions = function_48b5c403(player, #"weapons", index, #"weaponoptions");
    var_e91aba42 = function_48b5c403(player, #"weapons", index, #"hash_6ebd8dec863a7782");
    var_908f65ca = function_48b5c403(player, #"weapons", index, #"hash_17f911763bde5dfe");
    var_50087796 = function_48b5c403(player, #"weapons", index, #"hash_22de893145a66a64");
    var_2448ba23 = function_48b5c403(player, #"weapons", index, #"hash_4696d1f524b4b683");
    var_caea3e78 = function_48b5c403(player, #"weapons", index, #"hash_5b4b4e5cc381eb9b");
    var_570e79a0 = function_48b5c403(player, #"weapons", index, #"hash_98bbe4497a6c326");
    var_1f86291a = function_48b5c403(player, #"weapons", index, #"hash_4071d18f7d9f2e36");
    var_f997f47 = function_48b5c403(player, #"weapons", index, #"hash_4090fe15080f2da0");
    if (rarity === #"") {
        rarity = #"none";
    }
    weapon = getweapon(weapon_name);
    rootweapon = weapon.rootweapon;
    weapon_rarity = zm_weapons::function_d4f870ec(rarity);
    if ((paplv || weapon_rarity !== #"white" || !var_b3546c09) && (isdefined(level.var_c1f1b29a[rootweapon.name]) && isdefined(level.var_c1f1b29a[rootweapon.name][weapon_rarity]) || isdefined(level.var_ec04a8a4[rootweapon.name]) && isdefined(level.var_ec04a8a4[rootweapon.name][weapon_rarity]))) {
        if (isdefined(paplv) && weapon_rarity === #"white" && var_b3546c09) {
            if (zm_weapons::is_weapon_upgraded(rootweapon)) {
                if (weapon.name == #"knife_loadout_upgraded") {
                    var_8114384d = "knife_loadout" + "_t9_upgraded" + "_item_sr";
                } else {
                    var_8114384d = weapon.name + "_item_sr";
                }
            }
        } else if (isdefined(paplv) && paplv > 0 && zm_weapons::is_weapon_upgraded(weapon)) {
            var_8114384d = level.var_c1f1b29a[rootweapon.name][weapon_rarity];
        } else {
            var_8114384d = level.var_ec04a8a4[rootweapon.name][weapon_rarity];
        }
        var_f259d9cd = isdefined(var_8114384d) ? var_8114384d : weapon;
    } else {
        var_f259d9cd = weapon;
    }
    if (!isdefined(var_f259d9cd)) {
        /#
            if (getdvar(#"hash_64ed0f72b786103", 0) !== 0) {
                println("<unknown string>" + player getentitynumber() + "<unknown string>" + "<unknown string>");
            }
        #/
        return;
    }
    if (isweapon(var_f259d9cd)) {
        /#
            if (getdvar(#"hash_64ed0f72b786103", 0) !== 0) {
                println("<unknown string>" + player getentitynumber() + "<unknown string>" + "<unknown string>" + (ishash(var_f259d9cd.name) ? function_9e72a96(var_f259d9cd.name) : var_f259d9cd.name));
            }
        #/
        weapon = player zm_weapons::weapon_give(var_f259d9cd, 1, 1, undefined, var_b3546c09, undefined, attachments, 0);
    } else {
        item = function_4ba8fde(var_f259d9cd);
        /#
            if (getdvar(#"hash_64ed0f72b786103", 0) !== 0) {
                println("<unknown string>" + player getentitynumber() + "<unknown string>" + "<unknown string>" + (ishash(var_f259d9cd) ? function_9e72a96(var_f259d9cd) : var_f259d9cd));
            }
        #/
        weapon = player zm_weapons::function_943eabd9(item, 1, 0, var_b3546c09, attachments, weaponoptions, var_e91aba42, var_908f65ca);
    }
    if (var_d17eb4df < var_6653c106.size && item_world_util::function_db35e94f(player.inventory.items[var_6653c106[var_d17eb4df]].networkid) && player.inventory.items[var_6653c106[var_d17eb4df]].var_627c698b.rootweapon === weapon.rootweapon) {
        item = player.inventory.items[var_6653c106[var_d17eb4df]];
        /#
            if (getdvar(#"hash_64ed0f72b786103", 0) !== 0) {
                println("<unknown string>" + player getentitynumber() + "<unknown string>" + "<unknown string>" + (ishash(item.itementry.name) ? function_9e72a96(item.itementry.name) : item.itementry.name) + "<unknown string>" + var_6653c106[var_d17eb4df]);
            }
        #/
        var_d17eb4df++;
    } else {
        /#
            if (getdvar(#"hash_64ed0f72b786103", 0) !== 0) {
                println("<unknown string>" + player getentitynumber() + "<unknown string>" + "<unknown string>" + var_6653c106[var_d17eb4df] + "<unknown string>" + (ishash(weapon.rootweapon.name) ? function_9e72a96(weapon.rootweapon.name) : weapon.rootweapon.name) + "<unknown string>");
            }
        #/
        foreach (slot in [17 + 1, 17 + 1 + 8 + 1, 17 + 1 + 8 + 1 + 8 + 1]) {
            /#
                if (getdvar(#"hash_64ed0f72b786103", 0) !== 0) {
                    println("<unknown string>" + player getentitynumber() + "<unknown string>" + slot + "<unknown string>" + (player.inventory.items[slot].networkid === 32767 ? "<unknown string>" : player.inventory.items[slot].itementry.name));
                }
            #/
        }
        if (isdefined(weapon) && is_true(var_50087796)) {
            var_c0cc95d5 = weapon;
        }
        return {#var_c0cc95d5:var_c0cc95d5, #var_d17eb4df:var_d17eb4df};
    }
    if (!isdefined(item)) {
        return;
    }
    item zm_weapons::function_9aaa198a(var_b3546c09, var_2448ba23, var_caea3e78, var_570e79a0, var_1f86291a, var_f997f47);
    if (aat !== #"") {
        /#
            if (getdvar(#"hash_64ed0f72b786103", 0) !== 0) {
                println("<unknown string>" + player getentitynumber() + "<unknown string>" + "<unknown string>" + function_9e72a96(aat) + "<unknown string>" + (ishash(item.var_627c698b.name) ? function_9e72a96(item.var_627c698b.name) : item.var_627c698b.name));
            }
        #/
        player zm_weapons::function_37e9e0cb(item, item.var_627c698b, aat);
    }
    if (paplv > 0) {
        /#
            if (getdvar(#"hash_64ed0f72b786103", 0) !== 0) {
                println("<unknown string>" + player getentitynumber() + "<unknown string>" + "<unknown string>" + paplv + "<unknown string>" + (ishash(item.var_627c698b.name) ? function_9e72a96(item.var_627c698b.name) : item.var_627c698b.name));
            }
        #/
        item.paplv = paplv;
        player item_inventory::function_d92c6b5b(item.var_627c698b, undefined, paplv);
    }
    if (isdefined(item.var_627c698b) && is_true(var_50087796)) {
        var_c0cc95d5 = item.var_627c698b;
    }
    return {#var_c0cc95d5:var_c0cc95d5, #var_d17eb4df:var_d17eb4df};
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 1, eflags: 0x2 linked
// Checksum 0xd97ed2bb, Offset: 0x4c80
// Size: 0x814
function function_77e8e806(player) {
    player endon(#"death", #"disconnect");
    var_933264c7 = function_48b5c403(player, #"hash_5e1b2fdec911ccdf", #"name");
    var_933264c7 = hash(isdefined(var_933264c7) ? var_933264c7 : "");
    if (var_933264c7 !== #"") {
        var_7aa8c3c7 = function_4ba8fde(var_933264c7);
        if (isdefined(var_7aa8c3c7)) {
            attachments = [];
            for (j = 0; j < 8; j++) {
                var_b0f63180 = hash(function_48b5c403(player, #"hash_5e1b2fdec911ccdf", #"attachments", j));
                if (var_b0f63180 == #"") {
                    continue;
                }
                attachments[attachments.size] = var_b0f63180;
            }
            paplv = function_48b5c403(player, #"hash_5e1b2fdec911ccdf", #"paplv");
            aat = hash(function_48b5c403(player, #"hash_5e1b2fdec911ccdf", #"aat"));
            weaponoptions = function_48b5c403(player, #"hash_5e1b2fdec911ccdf", #"weaponoptions");
            var_e91aba42 = function_48b5c403(player, #"hash_5e1b2fdec911ccdf", #"hash_6ebd8dec863a7782");
            var_908f65ca = function_48b5c403(player, #"hash_5e1b2fdec911ccdf", #"hash_17f911763bde5dfe");
            var_b3546c09 = function_48b5c403(player, #"hash_5e1b2fdec911ccdf", #"hash_455cfe820071b143");
            var_2448ba23 = function_48b5c403(player, #"hash_5e1b2fdec911ccdf", #"hash_4696d1f524b4b683");
            var_caea3e78 = function_48b5c403(player, #"hash_5e1b2fdec911ccdf", #"hash_5b4b4e5cc381eb9b");
            var_570e79a0 = function_48b5c403(player, #"hash_5e1b2fdec911ccdf", #"hash_98bbe4497a6c326");
            var_1f86291a = function_48b5c403(player, #"hash_5e1b2fdec911ccdf", #"hash_4071d18f7d9f2e36");
            var_f997f47 = function_48b5c403(player, #"hash_5e1b2fdec911ccdf", #"hash_4090fe15080f2da0");
            foreach (var_b0f63180 in attachments) {
                var_67419ad4 = item_world_util::function_6a0ee21a(var_b0f63180);
                if (level.itemreplacement[var_67419ad4] === #"") {
                    continue;
                }
                if (ishash(var_67419ad4) || isstring(var_67419ad4)) {
                    var_5b788df2 = function_4ba8fde(var_67419ad4);
                    if (isdefined(var_5b788df2)) {
                        namespace_a0d533d1::function_9e9c82a6(var_7aa8c3c7, var_5b788df2, 1);
                    }
                }
            }
            if (aat !== #"") {
                player zm_weapons::function_37e9e0cb(var_7aa8c3c7, var_7aa8c3c7.var_627c698b, aat);
            }
            if (paplv > 0) {
                var_7aa8c3c7.paplv = paplv;
            }
            player zm_weapons::function_7df0d6b2(var_7aa8c3c7, var_7aa8c3c7.var_627c698b, weaponoptions, var_e91aba42, var_908f65ca);
            player.var_3e8da229 = var_7aa8c3c7;
            var_7aa8c3c7 zm_weapons::function_9aaa198a(var_b3546c09, var_2448ba23, var_caea3e78, var_570e79a0, var_1f86291a, var_f997f47);
            var_7aa8c3c7.hidetime = 1;
            var_7aa8c3c7.var_864ea466 = 1;
        }
    }
    var_c0cc95d5 = undefined;
    var_d17eb4df = 0;
    var_b8e0b77b = -1;
    for (i = 0; i < 4; i++) {
        weapon_name = hash(function_48b5c403(player, #"weapons", i, #"name"));
        if (weapon_name === #"bowie_knife") {
            var_b8e0b77b = i;
            break;
        }
    }
    if (var_b8e0b77b != -1) {
        function_7695efd4(player, var_b8e0b77b, var_d17eb4df);
    }
    for (i = 0; i < 4; i++) {
        if (i === var_b8e0b77b) {
            continue;
        }
        result = function_7695efd4(player, i, var_d17eb4df);
        var_c0cc95d5 = isdefined(result.var_c0cc95d5) ? result.var_c0cc95d5 : var_c0cc95d5;
        var_d17eb4df = isdefined(result.var_d17eb4df) ? result.var_d17eb4df : var_d17eb4df;
    }
    if (!isdefined(var_c0cc95d5)) {
        if (player.inventory.items[17 + 1].networkid !== 32767) {
            var_c0cc95d5 = player.inventory.items[17 + 1].var_627c698b;
        } else {
            var_c0cc95d5 = player getweaponslistprimaries()[0];
        }
    }
    if (isdefined(var_c0cc95d5)) {
        player switchtoweaponimmediate(var_c0cc95d5);
    }
    player zm_aat::function_ec7953fa();
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 2, eflags: 0x2 linked
// Checksum 0x7151a1f8, Offset: 0x54a0
// Size: 0x19a
function function_4cec0a67(player, weapon_index) {
    var_36ae553 = function_48b5c403(player, #"weapons", weapon_index, #"hash_63f0851f53ab627c", #"bundlename");
    var_36ae553 = hash(isdefined(var_36ae553) ? var_36ae553 : "");
    if (var_36ae553 !== #"") {
        statvalue = function_48b5c403(player, #"weapons", weapon_index, #"hash_63f0851f53ab627c", #"statvalue");
        if (!isdefined(player.var_7a8d78ac)) {
            player.var_7a8d78ac = [];
        }
        player.var_7a8d78ac[player.var_7a8d78ac.size] = {#bundlename:var_36ae553, #statvalue:statvalue};
        if (!is_true(player.var_89f2bfbf)) {
            player callback::function_d8abfc3d(#"hash_478f81e3bb0950dd", &function_897f280a);
            player.var_89f2bfbf = 1;
        }
    }
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 1, eflags: 0x2 linked
// Checksum 0x7077f5ff, Offset: 0x5648
// Size: 0x264
function function_897f280a(params) {
    weapon = activecamo::function_94c2605(params.weapon);
    var_f4eb4a50 = self activecamo::function_155299d(weapon);
    if (!isdefined(var_f4eb4a50) || !isdefined(self.var_7a8d78ac)) {
        return;
    }
    var_5bf485dc = [];
    foreach (var_3786b72d in self.var_7a8d78ac) {
        if (var_3786b72d.bundlename === var_f4eb4a50.name) {
            if (isarray(var_f4eb4a50.stages) && var_f4eb4a50.stages.size) {
                statname = var_f4eb4a50.stages[0].statname;
            }
            if (isdefined(statname)) {
                for (i = 0; i < var_3786b72d.statvalue; i++) {
                    activecamo::function_896ac347(weapon, statname, 1);
                }
            }
            var_5bf485dc[var_5bf485dc.size] = var_3786b72d;
        }
    }
    foreach (var_a6815309 in var_5bf485dc) {
        arrayremovevalue(self.var_7a8d78ac, var_a6815309);
    }
    if (!self.var_7a8d78ac.size) {
        self.var_7a8d78ac = undefined;
        self callback::function_52ac9652(#"hash_478f81e3bb0950dd", &function_897f280a);
    }
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 2, eflags: 0x2 linked
// Checksum 0x803fc5ff, Offset: 0x58b8
// Size: 0x84
function set_player_equipment(equipment_name, count) {
    item = function_4ba8fde(equipment_name);
    slot = self item_inventory::function_e66dcff5(item, 1);
    item.count = count;
    item_world::function_de2018e3(item, self, slot);
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 1, eflags: 0x2 linked
// Checksum 0xb8b88b08, Offset: 0x5948
// Size: 0x1c4
function function_65229c47(player) {
    var_d4b3e9c8 = function_48b5c403(player, #"lethal", #"name");
    var_d4b3e9c8 = hash(isdefined(var_d4b3e9c8) ? var_d4b3e9c8 : "");
    if (var_d4b3e9c8 !== #"") {
        count = function_48b5c403(player, #"lethal", #"amount");
        player namespace_1cc7b406::give_item(var_d4b3e9c8, count, 1, 1);
    }
    var_892fd196 = function_48b5c403(player, #"tactical", #"name");
    var_892fd196 = hash(isdefined(var_892fd196) ? var_892fd196 : "");
    if (var_892fd196 !== #"") {
        count = function_48b5c403(player, #"tactical", #"amount");
        player namespace_1cc7b406::give_item(var_892fd196, count, 1, 1);
    }
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 1, eflags: 0x2 linked
// Checksum 0xa05d6876, Offset: 0x5b18
// Size: 0x20c
function function_3c54ba6f(player) {
    kill_count = function_48b5c403(player, #"hash_fffea0defd338fe");
    player.var_8da24ed0 = isdefined(kill_count) ? kill_count : 0;
    player namespace_1b527536::function_1067f94c(player.class_num);
    var_91811618 = function_48b5c403(player, #"fieldupgrade", #"name");
    var_91811618 = hash(isdefined(var_91811618) ? var_91811618 : "");
    if (var_91811618 !== #"") {
        count = function_48b5c403(player, #"fieldupgrade", #"amount");
        player set_player_equipment(var_91811618, count);
    }
    var_ab9b21b0 = function_48b5c403(player, #"hash_4118467bee30e606");
    var_ab9b21b0 = hash(isdefined(var_ab9b21b0) ? var_ab9b21b0 : "");
    if (var_ab9b21b0 !== #"" && player.var_87f72f8 != var_ab9b21b0) {
        player.var_87f72f8 = var_ab9b21b0;
    }
    progress = player.var_8da24ed0 / player.var_fc8023b4;
    player clientfield::set_player_uimodel("hud_items.ammoCooldowns.fieldUpgrade", progress);
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 1, eflags: 0x2 linked
// Checksum 0xf8a4b8bc, Offset: 0x5d30
// Size: 0xe2
function function_fbf71e69(player) {
    for (i = 0; i < 10; i++) {
        perk_name = function_48b5c403(player, #"perks", i);
        perk_name = hash(isdefined(perk_name) ? perk_name : "");
        if (perk_name !== #"") {
            player namespace_791d0451::function_3fecad82(perk_name, 0);
        }
    }
    player.var_2121dbc7 = function_48b5c403(player, #"hash_7cbf6a38abb6c4fe");
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 1, eflags: 0x2 linked
// Checksum 0xce6d8f, Offset: 0x5e20
// Size: 0x16c
function function_390e2146(player) {
    killstreak_name = function_48b5c403(player, #"killstreakitem");
    killstreak_name = hash(isdefined(killstreak_name) ? killstreak_name : "");
    if (killstreak_name !== #"") {
        player namespace_1cc7b406::give_item(killstreak_name, 1, 1, 1);
        item = player.inventory.items[17];
        var_dff46cf7 = function_48b5c403(player, #"hash_76d7fda5546b7d");
        if (isdefined(item.itementry.weapon) && isdefined(var_dff46cf7) && var_dff46cf7 != 0) {
            player.pers[#"held_killstreak_ammo_count"][item.itementry.weapon] = var_dff46cf7;
            player loadout::function_3ba6ee5d(item.itementry.weapon, var_dff46cf7);
        }
    }
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 1, eflags: 0x2 linked
// Checksum 0xf928073b, Offset: 0x5f98
// Size: 0xca
function function_102126f6(player) {
    var_4fa06a79 = function_48b5c403(player, #"armoritem");
    var_4fa06a79 = hash(isdefined(var_4fa06a79) ? var_4fa06a79 : "");
    if (var_4fa06a79 !== #"") {
        var_dd020072 = function_48b5c403(player, #"armor");
        player namespace_dd7e54e3::give_armor(var_4fa06a79);
        player.armor = var_dd020072;
    }
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 1, eflags: 0x2 linked
// Checksum 0x4c1f9e67, Offset: 0x6070
// Size: 0xac
function function_b0681676(player) {
    player.var_595a11bc = 0;
    scrap = function_48b5c403(player, #"scrap");
    player namespace_2a9f256a::function_afab250a(scrap, 1);
    player.var_72d64cfd = 0;
    var_c7f20631 = function_48b5c403(player, #"hash_d6fdfc12ead24ba");
    player namespace_2a9f256a::function_a6d4221f(var_c7f20631, 1);
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 1, eflags: 0x2 linked
// Checksum 0xb748c410, Offset: 0x6128
// Size: 0x122
function function_a1f42996(player) {
    player.var_6b3806e8 = function_48b5c403(player, #"hash_7cd550c023e602c2", #"hash_67fa39d03fd168d9");
    player.var_207f01b0 = function_48b5c403(player, #"hash_7cd550c023e602c2", #"hash_f0eccd443684741");
    player.n_tribute = function_48b5c403(player, #"hash_7cd550c023e602c2", #"tribute");
    player.var_9e09931e = function_48b5c403(player, #"hash_7cd550c023e602c2", #"hash_183357499f14d5b7");
    player.var_c8413949 = function_48b5c403(player, #"hash_7cd550c023e602c2", #"hash_115e695af69d2e5c");
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 0, eflags: 0x2 linked
// Checksum 0x679e74cf, Offset: 0x6258
// Size: 0x184
function function_f120fbd8() {
    var_490ade6 = function_21d402f4(#"forcedobjective", #"category");
    if (!isdefined(var_490ade6)) {
        var_490ade6 = 0;
    }
    level.var_490ade6 = var_490ade6 === 0 ? undefined : hash(var_490ade6);
    var_c73744cc = function_21d402f4(#"forcedobjective", #"variant");
    if (!isdefined(var_c73744cc)) {
        var_c73744cc = 0;
    }
    level.var_c73744cc = var_c73744cc === 0 ? undefined : hash(var_c73744cc);
    var_df1d1235 = function_21d402f4(#"hash_4c6551b221159068");
    if (!isdefined(var_df1d1235)) {
        var_df1d1235 = 0;
    }
    level.var_df1d1235 = var_df1d1235;
    var_d2bdec66 = function_21d402f4(#"hash_44f5d4b321e92263");
    if (!isdefined(var_d2bdec66)) {
        var_d2bdec66 = 0;
    }
    level.var_d2bdec66 = var_d2bdec66;
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 0, eflags: 0x2 linked
// Checksum 0x164ca8a6, Offset: 0x63e8
// Size: 0xdc
function function_8864b117() {
    var_dc858a58 = [];
    for (index = 0; index < 8; index++) {
        value = function_21d402f4(#"hash_60af8d9cfbbe06bd", index);
        if (!isdefined(value) || value == "") {
            continue;
        }
        var_dc858a58[var_dc858a58.size] = value;
    }
    current_index = function_21d402f4(#"hash_2ab6464d4c124e87");
    return {#list:var_dc858a58, #index:current_index};
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 0, eflags: 0x2 linked
// Checksum 0xa1bdf95b, Offset: 0x64d0
// Size: 0x1d4
function function_b12c9424() {
    var_407236bf = [];
    for (index = 0; index < 20; index++) {
        value = function_21d402f4(#"hash_5eba90da524edc31", index);
        if (!isdefined(value) || value == 0) {
            continue;
        }
        value = hash(value);
        var_407236bf[var_407236bf.size] = value;
    }
    current_index = function_21d402f4(#"hash_1fe8bc20266a252b");
    var_f203d5e2 = [];
    foreach (objective_name in var_407236bf) {
        var_ac58e8e0 = function_d1f3aa5d(objective_name);
        if (isdefined(var_ac58e8e0) && var_ac58e8e0.list.size) {
            var_f203d5e2[objective_name] = var_ac58e8e0;
        }
    }
    return {#var_407236bf:{#list:var_407236bf, #index:current_index}, #var_f203d5e2:var_f203d5e2};
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 1, eflags: 0x2 linked
// Checksum 0xf93a0f, Offset: 0x66b0
// Size: 0x114
function function_d1f3aa5d(objective_name) {
    variants = [];
    for (index = 0; index < 8; index++) {
        value = function_21d402f4(#"objectivevariants", objective_name, #"variants", index);
        if (!isdefined(value) || value == 0) {
            continue;
        }
        value = hash(value);
        variants[variants.size] = value;
    }
    current_index = function_21d402f4(#"objectivevariants", objective_name, #"variantindex");
    return {#list:variants, #index:current_index};
}

// Namespace namespace_cf6efd05/namespace_cf6efd05
// Params 0, eflags: 0x2 linked
// Checksum 0x7e81aee9, Offset: 0x67d0
// Size: 0x54
function function_ded56b14() {
    /#
        if (getdvarint(#"hash_66a946ea0668bb21", 0)) {
            println("<unknown string>");
        }
    #/
    function_15dc6bef();
}

