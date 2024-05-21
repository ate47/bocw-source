// Atian COD Tools GSC CW decompiler test
#using script_421ca110b4204518;
#using script_58860a35d0555f74;
#using script_27610ca25737f68d;
#using script_44c2a1259e14bef1;
#using script_2467fe25132955b8;
#using scripts\zm_common\zm_utility.gsc;
#using script_5f261a5d57de5f7c;
#using scripts\core_common\ai\zombie_utility.gsc;
#using script_471b31bd963b388e;
#using scripts\core_common\item_world.gsc;
#using script_340a2e805e35f7a2;
#using script_1caf36ff04a85ff6;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\item_drop.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\rank_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace namespace_1b527536;

// Namespace namespace_1b527536/namespace_1b527536
// Params 0, eflags: 0x5
// Checksum 0x531b975c, Offset: 0x270
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_13a43d760497b54d", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_1b527536/namespace_1b527536
// Params 0, eflags: 0x6 linked
// Checksum 0x142a7b0f, Offset: 0x2b8
// Size: 0x854
function private preinit() {
    level.var_9bff3a72 = getgametypesetting(#"hash_7dedd27bf994a9a9");
    if (!is_true(level.var_9bff3a72)) {
        return;
    }
    level.var_d98fc25e = [];
    function_134fcf4b(#"frost_blast", #"frost_blast_1", #"frost_blast_2", #"frost_blast_3", #"frost_blast_4", #"frost_blast_5");
    function_134fcf4b(#"hash_7b5a77a85b0ffab7", #"hash_379869d5b6da974b", #"hash_37986ad5b6da98fe", #"hash_37986bd5b6da9ab1", #"hash_37986cd5b6da9c64", #"hash_37986dd5b6da9e17");
    function_134fcf4b(#"energy_mine", #"energy_mine_1", #"energy_mine_2", #"energy_mine_3", #"energy_mine_4", #"hash_4ac3fea4add2a2c9");
    function_134fcf4b(#"hash_2d88b4c5217c7e7c", #"hash_164c43cbd0ee958", #"hash_164c73cbd0eee71", #"hash_164c63cbd0eecbe", #"hash_164c93cbd0ef1d7", #"hash_164c83cbd0ef024");
    function_134fcf4b(#"hash_1d9cb9dbd298acba", #"hash_631a223758cd92a", #"hash_631a123758cd777", #"hash_631a023758cd5c4", #"hash_6319f23758cd411", #"hash_6319e23758cd25e");
    function_134fcf4b(#"hash_55569355da0f0f68", #"hash_43e326396554e18c", #"hash_43e329396554e6a5", #"hash_43e328396554e4f2", #"hash_43e323396554dc73", #"hash_43e322396554dac0");
    function_134fcf4b(#"hash_5d6f444e983b62ca", #"hash_7a071f09cf16cbfa", #"hash_7a071e09cf16ca47", #"hash_7a071d09cf16c894", #"hash_7a071c09cf16c6e1", #"hash_7a071b09cf16c52e");
    function_134fcf4b(#"hash_148e5880a4f4d46f", #"hash_3d62b9c92bbca893", #"hash_3d62bac92bbcaa46", #"hash_3d62bbc92bbcabf9", #"hash_3d62bcc92bbcadac", #"hash_3d62bdc92bbcaf5f");
    level.var_dbd3b871 = [];
    level.var_bfc892f2 = [];
    level.var_fee98522 = [];
    level.var_5b46d961 = [];
    level.var_197c8eb1 = 0;
    level.var_1b527536 = array(#"frost_blast", #"frost_blast_1", #"frost_blast_2", #"frost_blast_3", #"frost_blast_4", #"frost_blast_5", #"hash_7b5a77a85b0ffab7", #"hash_379869d5b6da974b", #"hash_37986ad5b6da98fe", #"hash_37986bd5b6da9ab1", #"hash_37986cd5b6da9c64", #"hash_37986dd5b6da9e17", #"energy_mine", #"energy_mine_1", #"energy_mine_2", #"energy_mine_3", #"energy_mine_4", #"hash_4ac3fea4add2a2c9", #"hash_2d88b4c5217c7e7c", #"hash_164c43cbd0ee958", #"hash_164c73cbd0eee71", #"hash_164c63cbd0eecbe", #"hash_164c93cbd0ef1d7", #"hash_164c83cbd0ef024", #"hash_1d9cb9dbd298acba", #"hash_631a223758cd92a", #"hash_631a123758cd777", #"hash_631a023758cd5c4", #"hash_6319f23758cd411", #"hash_6319e23758cd25e", #"hash_55569355da0f0f68", #"hash_43e326396554e18c", #"hash_43e329396554e6a5", #"hash_43e328396554e4f2", #"hash_43e323396554dc73", #"hash_43e322396554dac0", #"hash_5d6f444e983b62ca", #"hash_7a071f09cf16cbfa", #"hash_7a071e09cf16ca47", #"hash_7a071d09cf16c894", #"hash_7a071c09cf16c6e1", #"hash_7a071b09cf16c52e", #"hash_148e5880a4f4d46f", #"hash_3d62b9c92bbca893", #"hash_3d62bac92bbcaa46", #"hash_3d62bbc92bbcabf9", #"hash_3d62bcc92bbcadac", #"hash_3d62bdc92bbcaf5f");
    clientfield::register_clientuimodel("hud_items.ammoCooldowns.fieldUpgrade", 1, 5, "float");
    clientfield::register("toplayer", "field_upgrade_selected", 1, 6, "int");
    clientfield::register("allplayers", "field_upgrade_fired", 1, 4, "counter");
    clientfield::function_91cd7763("material", "zm_field_upgrade_loadout.overrideImage", 16000, 0);
    callback::on_spawned(&function_1505f5d4);
    callback::on_ai_killed(&function_f832427c);
    callback::on_bleedout(&function_9482f724);
    /#
        level.var_f793af68 = &function_f793af68;
    #/
}

// Namespace namespace_1b527536/namespace_1b527536
// Params 1, eflags: 0x2 linked
// Checksum 0x1261df32, Offset: 0xb18
// Size: 0x44
function function_7a0afa38(image = #"hash_1a2e7166e36c7ed1") {
    self clientfield::set_player_uimodel("zm_field_upgrade_loadout.overrideImage", image);
}

// Namespace namespace_1b527536/namespace_1b527536
// Params 0, eflags: 0x2 linked
// Checksum 0xbb0ce387, Offset: 0xb68
// Size: 0x2c
function function_b168fc67() {
    self clientfield::set_player_uimodel("zm_field_upgrade_loadout.overrideImage", #"white");
}

// Namespace namespace_1b527536/namespace_1b527536
// Params 2, eflags: 0x42 linked
// Checksum 0xda32d7fc, Offset: 0xba0
// Size: 0xf8
function function_134fcf4b(var_5eebbc40, ...) {
    var_50846129 = [];
    if (!isdefined(var_50846129)) {
        var_50846129 = [];
    } else if (!isarray(var_50846129)) {
        var_50846129 = array(var_50846129);
    }
    var_50846129[var_50846129.size] = var_5eebbc40;
    for (i = 0; i < vararg.size; i++) {
        if (!isdefined(var_50846129)) {
            var_50846129 = [];
        } else if (!isarray(var_50846129)) {
            var_50846129 = array(var_50846129);
        }
        var_50846129[var_50846129.size] = vararg[i];
    }
    level.var_d98fc25e[var_5eebbc40] = var_50846129;
}

// Namespace namespace_1b527536/namespace_1b527536
// Params 2, eflags: 0x2 linked
// Checksum 0x799cde91, Offset: 0xca0
// Size: 0x24
function function_dbd391bf(weaponname, func) {
    level.var_dbd3b871[weaponname] = func;
}

// Namespace namespace_1b527536/namespace_1b527536
// Params 4, eflags: 0x2 linked
// Checksum 0x17dee5c, Offset: 0xcd0
// Size: 0x54
function function_36e0540e(weaponname, maxammo, killcount, itemname) {
    level.var_bfc892f2[weaponname] = maxammo;
    level.var_fee98522[weaponname] = killcount;
    level.var_5b46d961[weaponname] = itemname;
}

// Namespace namespace_1b527536/namespace_1b527536
// Params 1, eflags: 0x2 linked
// Checksum 0x66c098bd, Offset: 0xd30
// Size: 0xc4
function function_460882e2(var_4e20aeca = 0) {
    var_874a73c4 = isdefined(self.inventory.items[12].count) ? self.inventory.items[12].count : 0;
    if (self.var_c9448182 > 1 && var_4e20aeca && var_874a73c4 != self.var_c9448182) {
        return;
    }
    self.var_8da24ed0 = 0;
    self clientfield::set_player_uimodel("hud_items.ammoCooldowns.fieldUpgrade", 0);
}

// Namespace namespace_1b527536/namespace_1b527536
// Params 1, eflags: 0x2 linked
// Checksum 0x92953335, Offset: 0xe00
// Size: 0x122
function function_94d18799(var_40e28ba) {
    switch (var_40e28ba) {
    case #"hash_36db069df9152c5d":
        return #"frost_blast";
    case #"hash_32f9b8f90f9905cc":
        return #"hash_7b5a77a85b0ffab7";
    case #"hash_4c75d01fe7fd8ebe":
        return #"energy_mine";
    case #"hash_2bd7b571efbb68d":
        return #"hash_2d88b4c5217c7e7c";
    case #"hash_5d9876c9f2034adf":
        return #"hash_1d9cb9dbd298acba";
    case #"hash_1bb7d8d0caf94859":
        return #"hash_55569355da0f0f68";
    case #"hash_18dff4c5330a5f6f":
        return #"hash_5d6f444e983b62ca";
    case #"hash_259a36d064810654":
        return #"hash_148e5880a4f4d46f";
    }
}

// Namespace namespace_1b527536/namespace_1b527536
// Params 2, eflags: 0x2 linked
// Checksum 0x9304cf11, Offset: 0xf30
// Size: 0x100
function function_e41a11bf(var_40e28ba, tier) {
    base_name = function_94d18799(var_40e28ba);
    /#
        var_8c590502 = isdefined(getgametypesetting(#"hash_3c2c78e639bfd3c6")) ? getgametypesetting(#"hash_3c2c78e639bfd3c6") : 0;
        if (var_8c590502 > 0) {
            tier = var_8c590502;
        }
    #/
    var_50846129 = level.var_d98fc25e[base_name];
    if (!isdefined(var_50846129)) {
        return #"weapon_null";
    }
    field_upgrade = var_50846129[tier];
    if (!isdefined(field_upgrade)) {
        return #"weapon_null";
    }
    return field_upgrade;
}

// Namespace namespace_1b527536/namespace_1b527536
// Params 1, eflags: 0x2 linked
// Checksum 0x2c97b143, Offset: 0x1038
// Size: 0xaa
function function_12b698fa(statname) {
    /#
        var_8c590502 = isdefined(getgametypesetting(#"hash_3c2c78e639bfd3c6")) ? getgametypesetting(#"hash_3c2c78e639bfd3c6") : 0;
        if (var_8c590502 > 0) {
            return var_8c590502;
        }
    #/
    return self stats::function_6d50f14b(#"cacloadouts", #"hash_1b24e5b336f5ae8d", statname);
}

// Namespace namespace_1b527536/namespace_1b527536
// Params 1, eflags: 0x6 linked
// Checksum 0xcf048215, Offset: 0x10f0
// Size: 0x250
function private function_3ef3cec3(var_c8a42ec) {
    if (isdefined(var_c8a42ec)) {
        var_d07d57b2 = self function_b958b70d(var_c8a42ec, "specialgrenade");
    } else {
        var_d07d57b2 = self function_b958b70d(self.class_num, "specialgrenade");
    }
    item_index = getitemindexfromref(var_d07d57b2);
    var_438da649 = function_b143666d(item_index, 1);
    var_40e28ba = var_438da649.var_cd070e56;
    if (!isdefined(var_40e28ba) || var_40e28ba == #"") {
        var_d07d57b2 = level.var_1b527536[0];
    } else if (isdefined(var_40e28ba) && var_40e28ba != #"") {
        tier = self function_12b698fa(var_40e28ba);
        var_d07d57b2 = function_e41a11bf(var_40e28ba, tier);
        if (var_d07d57b2 == #"" || var_d07d57b2 == #"weapon_null") {
            var_d07d57b2 = level.var_1b527536[0];
        }
    }
    self.var_c9448182 = level.var_bfc892f2[var_d07d57b2];
    self.var_fc8023b4 = level.var_fee98522[var_d07d57b2];
    self.var_87f72f8 = level.var_5b46d961[var_d07d57b2];
    for (i = 0; i < level.var_1b527536.size; i++) {
        if (level.var_1b527536[i] == var_d07d57b2) {
            self clientfield::set_to_player("field_upgrade_selected", i + 1);
            break;
        }
    }
}

// Namespace namespace_1b527536/namespace_1b527536
// Params 1, eflags: 0x6 linked
// Checksum 0x74b6a21f, Offset: 0x1348
// Size: 0x82
function private function_7fb7c83c(weaponname) {
    if (!isdefined(weaponname)) {
        return 0;
    }
    if (isweapon(weaponname)) {
        weaponname = weaponname.name;
    }
    if (weaponname === #"hash_7e4053e6965bafa7") {
        return 1;
    }
    inarray = isinarray(level.var_1b527536, weaponname);
    return inarray;
}

// Namespace namespace_1b527536/namespace_1b527536
// Params 1, eflags: 0x2 linked
// Checksum 0x814dd6f9, Offset: 0x13d8
// Size: 0x384
function function_1067f94c(var_c8a42ec) {
    item = self.inventory.items[12];
    var_d07d57b2 = self function_b958b70d(var_c8a42ec, "specialgrenade");
    if (isdefined(var_d07d57b2)) {
        if (self.var_87f72f8 !== level.var_5b46d961[var_d07d57b2]) {
            var_1e63aebb = self clientfield::get_player_uimodel("zm_field_upgrade_loadout.overrideImage");
            if (var_1e63aebb != #"white" && var_1e63aebb != #"") {
                if (isdefined(var_c8a42ec)) {
                    var_d07d57b2 = self function_b958b70d(var_c8a42ec, "specialgrenade");
                } else {
                    var_d07d57b2 = self function_b958b70d(self.class_num, "specialgrenade");
                }
                item_index = getitemindexfromref(var_d07d57b2);
                var_438da649 = function_b143666d(item_index, 1);
                var_40e28ba = var_438da649.var_cd070e56;
                if (!isdefined(var_40e28ba) || var_40e28ba == #"") {
                    var_d07d57b2 = level.var_1b527536[0];
                } else if (isdefined(var_40e28ba) && var_40e28ba != #"") {
                    tier = self function_12b698fa(var_40e28ba);
                    var_d07d57b2 = function_e41a11bf(var_40e28ba, tier);
                    if (var_d07d57b2 == #"" || var_d07d57b2 == #"weapon_null") {
                        var_d07d57b2 = level.var_1b527536[0];
                    }
                }
                for (i = 0; i < level.var_1b527536.size; i++) {
                    if (level.var_1b527536[i] == var_d07d57b2) {
                        self clientfield::set_to_player("field_upgrade_selected", i + 1);
                        break;
                    }
                }
                self.var_2ff27865 = 0;
                self.var_681af36b = 0;
                self.var_d7c2e1cf = level.var_bfc892f2[var_d07d57b2];
                self.var_703fa168 = level.var_fee98522[var_d07d57b2];
                self.var_58fb681e = level.var_5b46d961[var_d07d57b2];
                return;
            }
            if (item.networkid != 32767) {
                item_inventory::remove_inventory_item(item.networkid);
            }
            self function_3ef3cec3(var_c8a42ec);
            self function_460882e2();
        }
    }
}

// Namespace namespace_1b527536/namespace_1b527536
// Params 0, eflags: 0x2 linked
// Checksum 0xc195f218, Offset: 0x1768
// Size: 0x62
function function_9482f724() {
    item = self.inventory.items[12];
    if (item.networkid != 32767) {
        self.var_6e3cb3d1 = item.itementry.name;
        self.var_a4be9abe = item.count;
    }
}

// Namespace namespace_1b527536/namespace_1b527536
// Params 0, eflags: 0x6 linked
// Checksum 0xe0276ad9, Offset: 0x17d8
// Size: 0x44
function private function_1505f5d4() {
    self flag::function_c58ecb49("zm_field_upgrade_in_use");
    self.var_8da24ed0 = 0;
    self function_3ef3cec3();
}

// Namespace namespace_1b527536/grenade_fire
// Params 1, eflags: 0x24
// Checksum 0x9f4c91a5, Offset: 0x1828
// Size: 0x182
function private event_handler[grenade_fire] function_4776caf4(eventstruct) {
    if (!is_true(level.var_9bff3a72)) {
        return;
    }
    if (!isplayer(self)) {
        return;
    }
    if (self laststand::player_is_in_laststand()) {
        self forceoffhandend();
        progress = self.var_8da24ed0 / self.var_fc8023b4;
        self clientfield::set_player_uimodel("hud_items.ammoCooldowns.fieldUpgrade", progress);
        return;
    }
    if (function_7fb7c83c(eventstruct.weapon.name) && isdefined(level.var_dbd3b871[eventstruct.weapon.name])) {
        self playrumbleonentity(#"hash_116369f6e589c9fd");
        self function_5f81a103(eventstruct.weapon);
        self function_9a67c8c7(eventstruct.weapon.name);
        self thread [[ level.var_dbd3b871[eventstruct.weapon.name] ]](eventstruct);
    }
}

// Namespace namespace_1b527536/namespace_1b527536
// Params 2, eflags: 0x2 linked
// Checksum 0xf1ed11db, Offset: 0x19b8
// Size: 0xf4
function function_5f81a103(weapon, b_killed = 0) {
    if (isplayer(self)) {
        var_49058ab = {#var_4b738e64:function_f8d53445(), #var_8335e8a8:zm_utility::function_e3025ca5(), #var_d8fb195f:zm_utility::get_round_number(), #field_upgrade:weapon.name, #var_c9995ddd:b_killed};
        self function_678f57c8(#"hash_7f3eae86c535c88", var_49058ab);
    }
}

// Namespace namespace_1b527536/namespace_1b527536
// Params 1, eflags: 0x6 linked
// Checksum 0x9a97825c, Offset: 0x1ab8
// Size: 0x3b4
function private function_9a67c8c7(str_name) {
    switch (str_name) {
    case #"frost_blast_4":
    case #"frost_blast":
    case #"frost_blast_1":
    case #"frost_blast_3":
    case #"frost_blast_2":
    case #"frost_blast_5":
        var_45d28da0 = 1;
        break;
    case #"hash_379869d5b6da974b":
    case #"hash_37986ad5b6da98fe":
    case #"hash_37986bd5b6da9ab1":
    case #"hash_37986cd5b6da9c64":
    case #"hash_37986dd5b6da9e17":
    case #"hash_7b5a77a85b0ffab7":
        var_45d28da0 = 2;
        break;
    case #"energy_mine_1":
    case #"energy_mine_3":
    case #"energy_mine_2":
    case #"energy_mine_4":
    case #"hash_4ac3fea4add2a2c9":
    case #"energy_mine":
        var_45d28da0 = 3;
        break;
    case #"hash_6319f23758cd411":
    case #"hash_1d9cb9dbd298acba":
    case #"hash_6319e23758cd25e":
    case #"hash_631a023758cd5c4":
    case #"hash_631a123758cd777":
    case #"hash_631a223758cd92a":
        var_45d28da0 = 4;
        break;
    case #"hash_164c63cbd0eecbe":
    case #"hash_2d88b4c5217c7e7c":
    case #"hash_164c43cbd0ee958":
    case #"hash_164c93cbd0ef1d7":
    case #"hash_164c83cbd0ef024":
    case #"hash_164c73cbd0eee71":
        var_45d28da0 = 5;
        break;
    case #"hash_43e323396554dc73":
    case #"hash_43e326396554e18c":
    case #"hash_43e328396554e4f2":
    case #"hash_43e329396554e6a5":
    case #"hash_55569355da0f0f68":
    case #"hash_43e322396554dac0":
        var_45d28da0 = 6;
        break;
    case #"hash_7a071b09cf16c52e":
    case #"hash_7a071c09cf16c6e1":
    case #"hash_7a071d09cf16c894":
    case #"hash_7a071e09cf16ca47":
    case #"hash_7a071f09cf16cbfa":
    case #"hash_5d6f444e983b62ca":
        var_45d28da0 = 7;
        break;
    case #"hash_3d62bac92bbcaa46":
    case #"hash_3d62bbc92bbcabf9":
    case #"hash_3d62bcc92bbcadac":
    case #"hash_3d62bdc92bbcaf5f":
    case #"hash_3d62b9c92bbca893":
    case #"hash_148e5880a4f4d46f":
        var_45d28da0 = 8;
        break;
    }
    if (isdefined(var_45d28da0)) {
        self clientfield::increment("field_upgrade_fired", var_45d28da0);
    }
}

// Namespace namespace_1b527536/namespace_1b527536
// Params 1, eflags: 0x6 linked
// Checksum 0xecf06035, Offset: 0x1e78
// Size: 0x554
function private function_f832427c(*s_params) {
    if (isdefined(self.var_c2dcab66)) {
        foreach (playerstruct in self.var_c2dcab66) {
            e_player = playerstruct.player;
            weapon = playerstruct.weapon;
            if (isplayer(e_player) && function_7fb7c83c(weapon.name)) {
                e_player function_5f81a103(weapon, 1);
            }
            if (e_player flag::get("zm_field_upgrade_in_use")) {
                return;
            }
            if (!isplayer(e_player) || isdefined(weapon.name) && function_7fb7c83c(weapon.name)) {
                return;
            }
            if (isdefined(e_player.var_d93ab65) && e_player.var_d93ab65.size > 0) {
                return;
            }
            if (is_true(self.var_d0de7f41) || is_true(self.var_7fb7de87)) {
                return;
            }
            if (is_true(e_player zombie_utility::get_zombie_var_player(#"zombie_insta_kill")) || is_true(zombie_utility::get_zombie_var_team(#"zombie_insta_kill", e_player.team))) {
                return;
            }
            if (is_true(e_player.var_e84418c4)) {
                return;
            }
            if (e_player isremotecontrolling()) {
                return;
            }
            e_player.var_8da24ed0 += 1;
            if ((is_true(e_player.var_28107825) || e_player flag::get(#"hash_35735a804a34da04")) && isdefined(e_player.var_67aa3392)) {
                e_player.var_67aa3392.var_5b5d9768 = e_player.var_8da24ed0;
            }
            var_7df0eb27 = e_player.var_fc8023b4;
            if (e_player namespace_e86ffa8::function_efb6dedf(2)) {
                var_7df0eb27 -= int(var_7df0eb27 * 0.2);
            }
            e_player function_fe8d21ed(var_7df0eb27);
            if (isplayer(e_player)) {
                progress = e_player.var_8da24ed0 / var_7df0eb27;
                e_player clientfield::set_player_uimodel("hud_items.ammoCooldowns.fieldUpgrade", progress);
            }
        }
        return;
    }
    if (isplayer(self.attacker) && self.damageweapon.name === #"hash_6a4dd5ed56f6e3f6") {
        e_player = self.attacker;
        e_player.var_8da24ed0 += 1;
        if ((is_true(e_player.var_28107825) || e_player flag::get(#"hash_35735a804a34da04")) && isdefined(e_player.var_67aa3392)) {
            e_player.var_67aa3392.var_5b5d9768 = e_player.var_8da24ed0;
        }
        var_7df0eb27 = e_player.var_fc8023b4;
        if (e_player namespace_e86ffa8::function_efb6dedf(2)) {
            var_7df0eb27 -= int(var_7df0eb27 * 0.2);
        }
        e_player function_fe8d21ed(var_7df0eb27);
        if (isplayer(e_player)) {
            progress = e_player.var_8da24ed0 / var_7df0eb27;
            e_player clientfield::set_player_uimodel("hud_items.ammoCooldowns.fieldUpgrade", progress);
        }
    }
}

// Namespace namespace_1b527536/namespace_1b527536
// Params 1, eflags: 0x6 linked
// Checksum 0xbc9d0b03, Offset: 0x23d8
// Size: 0x174
function private function_fe8d21ed(var_7df0eb27 = 0) {
    if (isalive(self) && isdefined(self.var_8da24ed0) && isdefined(self.inventory) && isdefined(self.var_fc8023b4)) {
        var_874a73c4 = isdefined(self.inventory.items[12].count) ? self.inventory.items[12].count : 0;
        if (self.var_8da24ed0 >= var_7df0eb27 && var_874a73c4 < self.var_c9448182) {
            self function_6457e4cd(self.var_87f72f8);
            level.var_197c8eb1 = 1;
            if (isplayer(self)) {
                var_874a73c4 = isdefined(self.inventory.items[12].count) ? self.inventory.items[12].count : 0;
                if (var_874a73c4 < self.var_c9448182) {
                    function_460882e2();
                }
            }
        }
    }
}

// Namespace namespace_1b527536/namespace_1b527536
// Params 1, eflags: 0x2 linked
// Checksum 0x3c101b7b, Offset: 0x2558
// Size: 0x524
function function_4f8cb6fd(item_name) {
    switch (item_name) {
    case #"field_upgrade_aether_shroud_1_item_sr":
    case #"field_upgrade_aether_shroud_2_item_sr":
    case #"field_upgrade_aether_shroud_item_sr":
    case #"field_upgrade_aether_shroud_3_item_sr":
    case #"field_upgrade_aether_shroud_4_item_sr":
    case #"field_upgrade_aether_shroud_5_item_sr":
        if (!is_true(getgametypesetting(#"hash_26dc68686741b223"))) {
            return true;
        }
        break;
    case #"field_upgrade_frost_blast_2_item_sr":
    case #"field_upgrade_frost_blast_5_item_sr":
    case #"field_upgrade_frost_blast_4_item_sr":
    case #"field_upgrade_frost_blast_3_item_sr":
    case #"field_upgrade_frost_blast_1_item_sr":
    case #"field_upgrade_frost_blast_item_sr":
        if (!is_true(getgametypesetting(#"hash_af8083f7ea1c28b"))) {
            return true;
        }
        break;
    case #"field_upgrade_heal_aoe_1_item_sr":
    case #"field_upgrade_heal_aoe_5_item_sr":
    case #"field_upgrade_heal_aoe_4_item_sr":
    case #"field_upgrade_heal_aoe_item_sr":
    case #"field_upgrade_heal_aoe_3_item_sr":
    case #"field_upgrade_heal_aoe_2_item_sr":
        if (!is_true(getgametypesetting(#"hash_77e5bcb82c95cf00"))) {
            return true;
        }
        break;
    case #"field_upgrade_energy_mine_item_sr":
    case #"field_upgrade_energy_mine_5_item_sr":
    case #"field_upgrade_energy_mine_2_item_sr":
    case #"field_upgrade_energy_mine_3_item_sr":
    case #"field_upgrade_energy_mine_1_item_sr":
    case #"field_upgrade_energy_mine_4_item_sr":
        if (!is_true(getgametypesetting(#"hash_4230e2ce569b5e48"))) {
            return true;
        }
        break;
    case #"field_upgrade_ring_of_fire_4_item_sr":
    case #"field_upgrade_ring_of_fire_2_item_sr":
    case #"field_upgrade_ring_of_fire_5_item_sr":
    case #"field_upgrade_ring_of_fire_1_item_sr":
    case #"field_upgrade_ring_of_fire_item_sr":
    case #"field_upgrade_ring_of_fire_3_item_sr":
        if (!is_true(getgametypesetting(#"hash_2015355bc530a7e8"))) {
            return true;
        }
        break;
    case #"field_upgrade_frenzied_guard_item_sr":
    case #"field_upgrade_frenzied_guard_2_item_sr":
    case #"field_upgrade_frenzied_guard_4_item_sr":
    case #"field_upgrade_frenzied_guard_3_item_sr":
    case #"field_upgrade_frenzied_guard_1_item_sr":
    case #"field_upgrade_frenzied_guard_5_item_sr":
        if (!is_true(getgametypesetting(#"hash_6e7905f68c5d7bdd"))) {
            return true;
        }
        break;
    case #"field_upgrade_toxic_growth_5_item_sr":
    case #"field_upgrade_toxic_growth_item_sr":
    case #"field_upgrade_toxic_growth_2_item_sr":
    case #"field_upgrade_toxic_growth_4_item_sr":
    case #"field_upgrade_toxic_growth_1_item_sr":
    case #"field_upgrade_toxic_growth_3_item_sr":
        if (!is_true(getgametypesetting(#"hash_5cedd3fe49a8b4e1"))) {
            return true;
        }
        break;
    case #"field_upgrade_lightning_links_3_item_sr":
    case #"field_upgrade_lightning_links_4_item_sr":
    case #"field_upgrade_lightning_links_5_item_sr":
    case #"field_upgrade_lightning_links_1_item_sr":
    case #"field_upgrade_lightning_links_2_item_sr":
    case #"field_upgrade_lightning_links_item_sr":
        if (!is_true(getgametypesetting(#"hash_1fc262f0136c2814"))) {
            return true;
        }
        break;
    }
    return false;
}

// Namespace namespace_1b527536/namespace_1b527536
// Params 2, eflags: 0x2 linked
// Checksum 0x691723ce, Offset: 0x2a88
// Size: 0x186
function function_6457e4cd(item_name, count = 1) {
    if (!isdefined(item_name) || item_name == #"") {
        return;
    }
    if (function_4f8cb6fd(item_name)) {
        return;
    }
    self playlocalsound(#"hash_55f9d99ffab775e1");
    item = function_4ba8fde(item_name);
    if (isdefined(item)) {
        item.count = count;
        var_fa3df96 = self item_inventory::function_e66dcff5(item);
        if (isdefined(var_fa3df96)) {
            if (!item_world_util::function_db35e94f(item.networkid)) {
                item.networkid = item_world_util::function_970b8d86(var_fa3df96);
            }
            self item_world::function_de2018e3(item, self, var_fa3df96, 0);
            if (item_name === "field_upgrade_energy_mine_4_item_sr" || item_name === "field_upgrade_energy_mine_5_item_sr") {
                self.var_d9f807a7 = 1;
                return;
            }
            self.var_d9f807a7 = undefined;
        }
    }
}

// Namespace namespace_1b527536/namespace_1b527536
// Params 13, eflags: 0x2 linked
// Checksum 0x8c4ce4f6, Offset: 0x2c18
// Size: 0x1ca
function actor_damage_override(*inflictor, attacker, damage, *flags, *meansofdeath, weapon, *var_fd90b0bb, *vpoint, *vdir, *shitloc, *psoffsettime, *boneindex, *surfacetype) {
    if (isplayer(psoffsettime) && isarray(psoffsettime.var_d93ab65) && psoffsettime.var_d93ab65.size && !function_7fb7c83c(surfacetype.name)) {
        var_8214ea7f = 0;
        foreach (var_3889eb68 in psoffsettime.var_d93ab65) {
            if (isdefined(var_3889eb68.var_c91dca7e) && var_3889eb68.var_c91dca7e > var_8214ea7f) {
                var_8214ea7f = var_3889eb68.var_c91dca7e;
            }
        }
        boneindex += boneindex * var_8214ea7f;
        if (isdefined(self.var_95ee6823)) {
            boneindex *= self.var_95ee6823;
        }
    }
    return int(boneindex);
}

// Namespace namespace_1b527536/namespace_1b527536
// Params 7, eflags: 0x2 linked
// Checksum 0x5500fccd, Offset: 0x2df0
// Size: 0x2ec
function function_7281de4d(itemname, var_c940cca, weaponname, iconname, maxammo, var_29440b41, charged = 0) {
    var_874a73c4 = isdefined(self.inventory.items[12].count) ? self.inventory.items[12].count : 0;
    if (var_874a73c4 > 0) {
        item = self.inventory.items[12];
        dropitem = self item_inventory::drop_inventory_item(item.networkid);
        dropitem hide();
        dropitem.var_864ea466 = 1;
        self item_inventory::consume_item(dropitem);
    }
    if (!isdefined(level.var_1b527536)) {
        level.var_1b527536 = [];
    } else if (!isarray(level.var_1b527536)) {
        level.var_1b527536 = array(level.var_1b527536);
    }
    if (!isinarray(level.var_1b527536, weaponname)) {
        level.var_1b527536[level.var_1b527536.size] = weaponname;
    }
    level.var_dbd3b871[weaponname] = var_c940cca;
    self.var_2ff27865 = self.var_8da24ed0;
    self.var_681af36b = var_874a73c4;
    self.var_58fb681e = self.var_87f72f8;
    self.var_d7c2e1cf = self.var_c9448182;
    self.var_703fa168 = self.var_fc8023b4;
    self.var_c9448182 = maxammo;
    self.var_fc8023b4 = var_29440b41;
    self.var_87f72f8 = itemname;
    self function_460882e2();
    if (charged) {
        self.var_8da24ed0 = self.var_fc8023b4;
        self function_6457e4cd(self.var_87f72f8);
    } else {
        self.var_8da24ed0 = 0;
    }
    progress = self.var_8da24ed0 / self.var_fc8023b4;
    self clientfield::set_player_uimodel("hud_items.ammoCooldowns.fieldUpgrade", progress);
    self function_7a0afa38(iconname);
}

// Namespace namespace_1b527536/namespace_1b527536
// Params 0, eflags: 0x2 linked
// Checksum 0x99a12e12, Offset: 0x30e8
// Size: 0x1dc
function function_69303ed3() {
    self endon(#"death");
    var_874a73c4 = isdefined(self.inventory.items[12].count) ? self.inventory.items[12].count : 0;
    if (var_874a73c4 > 0) {
        item = self.inventory.items[12];
        dropitem = self item_inventory::drop_inventory_item(item.networkid);
        if (isentity(dropitem)) {
            dropitem hide();
            dropitem.var_864ea466 = 1;
            self item_inventory::consume_item(dropitem);
        }
    }
    self.var_c9448182 = self.var_d7c2e1cf;
    self.var_fc8023b4 = self.var_703fa168;
    self.var_87f72f8 = self.var_58fb681e;
    self.var_8da24ed0 = self.var_2ff27865;
    if ((isdefined(self.var_681af36b) ? self.var_681af36b : 0) > 0) {
        self function_6457e4cd(self.var_87f72f8, self.var_681af36b);
    }
    progress = self.var_8da24ed0 / self.var_fc8023b4;
    self clientfield::set_player_uimodel("hud_items.ammoCooldowns.fieldUpgrade", progress);
    self function_b168fc67();
}

// Namespace namespace_1b527536/namespace_1b527536
// Params 1, eflags: 0x2 linked
// Checksum 0xc80f43ba, Offset: 0x32d0
// Size: 0x280
function function_53ca9662(item_name) {
    foreach (i, value in level.var_5b46d961) {
        if (value == item_name) {
            if (isinarray(level.var_d98fc25e[#"hash_2d88b4c5217c7e7c"], i)) {
                return #"hash_2d88b4c5217c7e7c";
            }
            if (isinarray(level.var_d98fc25e[#"frost_blast"], i)) {
                return #"frost_blast";
            }
            if (isinarray(level.var_d98fc25e[#"energy_mine"], i)) {
                return #"energy_mine";
            }
            if (isinarray(level.var_d98fc25e[#"hash_7b5a77a85b0ffab7"], i)) {
                return #"hash_7b5a77a85b0ffab7";
            }
            if (isinarray(level.var_d98fc25e[#"hash_1d9cb9dbd298acba"], i)) {
                return #"hash_1d9cb9dbd298acba";
            }
            if (isinarray(level.var_d98fc25e[#"hash_55569355da0f0f68"], i)) {
                return #"hash_55569355da0f0f68";
            }
            if (isinarray(level.var_d98fc25e[#"hash_5d6f444e983b62ca"], i)) {
                return #"hash_5d6f444e983b62ca";
            }
            if (isinarray(level.var_d98fc25e[#"hash_148e5880a4f4d46f"], i)) {
                return #"hash_148e5880a4f4d46f";
            }
        }
    }
}

// Namespace namespace_1b527536/namespace_1b527536
// Params 1, eflags: 0x2 linked
// Checksum 0xd2ba32a8, Offset: 0x3558
// Size: 0xb2
function function_841bae20(var_dc307ae2) {
    if (!isdefined(level.var_d98fc25e)) {
        return undefined;
    }
    foreach (upgrade, array in level.var_d98fc25e) {
        if (isinarray(array, var_dc307ae2)) {
            return upgrade;
        }
    }
    return undefined;
}

/#

    // Namespace namespace_1b527536/namespace_1b527536
    // Params 0, eflags: 0x0
    // Checksum 0xd95ba257, Offset: 0x3618
    // Size: 0xd4c
    function function_f793af68() {
        level endon(#"game_ended");
        setdvar(#"hash_6ace867d48136ede", "<unknown string>");
        setdvar(#"hash_31bd3f1a2ffb2b7", "<unknown string>");
        setdvar(#"hash_78ea4420d95a6213", "<unknown string>");
        setdvar(#"hash_3ce5890428b398f1", "<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96(#"field_upgrade_frost_blast_item_sr") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96(#"field_upgrade_frost_blast_1_item_sr") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96(#"field_upgrade_frost_blast_2_item_sr") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96(#"field_upgrade_frost_blast_3_item_sr") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96(#"field_upgrade_frost_blast_4_item_sr") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96(#"field_upgrade_frost_blast_5_item_sr") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96(#"field_upgrade_heal_aoe_item_sr") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96(#"field_upgrade_heal_aoe_1_item_sr") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96(#"field_upgrade_heal_aoe_2_item_sr") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96(#"field_upgrade_heal_aoe_3_item_sr") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96(#"field_upgrade_heal_aoe_4_item_sr") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96(#"field_upgrade_heal_aoe_5_item_sr") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96("<unknown string>") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96("<unknown string>") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96("<unknown string>") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96("<unknown string>") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96("<unknown string>") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96("<unknown string>") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96("<unknown string>") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96("<unknown string>") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96("<unknown string>") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96("<unknown string>") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96("<unknown string>") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96("<unknown string>") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96("<unknown string>") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96("<unknown string>") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96("<unknown string>") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96("<unknown string>") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96("<unknown string>") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96("<unknown string>") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96(#"field_upgrade_frenzied_guard_item_sr") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96(#"field_upgrade_frenzied_guard_1_item_sr") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96(#"field_upgrade_frenzied_guard_2_item_sr") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96(#"field_upgrade_frenzied_guard_3_item_sr") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96(#"field_upgrade_frenzied_guard_4_item_sr") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96(#"field_upgrade_frenzied_guard_5_item_sr") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96(#"field_upgrade_toxic_growth_item_sr") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96(#"field_upgrade_toxic_growth_1_item_sr") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96(#"field_upgrade_toxic_growth_2_item_sr") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96(#"field_upgrade_toxic_growth_3_item_sr") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96(#"field_upgrade_toxic_growth_4_item_sr") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96(#"field_upgrade_toxic_growth_5_item_sr") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96(#"field_upgrade_lightning_links_item_sr") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96(#"field_upgrade_lightning_links_1_item_sr") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96(#"field_upgrade_lightning_links_2_item_sr") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96(#"field_upgrade_lightning_links_3_item_sr") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96(#"field_upgrade_lightning_links_4_item_sr") + "<unknown string>");
        util::add_debug_command("<unknown string>" + function_9e72a96(#"field_upgrade_lightning_links_5_item_sr") + "<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        function_cd140ee9(#"hash_6ace867d48136ede", &function_35216077);
        function_cd140ee9(#"hash_31bd3f1a2ffb2b7", &function_35216077);
        function_cd140ee9(#"hash_78ea4420d95a6213", &function_35216077);
        function_cd140ee9(#"hash_3ce5890428b398f1", &function_35216077);
    }

    // Namespace namespace_1b527536/namespace_1b527536
    // Params 1, eflags: 0x0
    // Checksum 0x4fc0eb6c, Offset: 0x4370
    // Size: 0x38c
    function function_35216077(params) {
        if (params.value === "<unknown string>") {
            return;
        }
        switch (params.name) {
        case #"hash_3ce5890428b398f1":
            if (int(params.value)) {
                iprintlnbold("<unknown string>");
            } else {
                iprintlnbold("<unknown string>");
            }
            break;
        case #"hash_6ace867d48136ede":
            foreach (player in getplayers()) {
                player function_6457e4cd(hash(params.value));
            }
            break;
        case #"hash_31bd3f1a2ffb2b7":
            foreach (player in getplayers()) {
                if (isalive(player) && isdefined(player.var_8da24ed0) && isdefined(player.inventory) && isdefined(player.var_fc8023b4)) {
                    player.var_8da24ed0 = player.var_fc8023b4;
                    player function_fe8d21ed();
                }
            }
            break;
        case #"hash_78ea4420d95a6213":
            foreach (player in getplayers()) {
                if (params.value == 1) {
                    player function_7a0afa38();
                    continue;
                }
                player function_b168fc67();
            }
            break;
        }
        setdvar(#"hash_6ace867d48136ede", "<unknown string>");
        setdvar(#"hash_31bd3f1a2ffb2b7", "<unknown string>");
        setdvar(#"hash_78ea4420d95a6213", "<unknown string>");
    }

#/
