// Atian COD Tools GSC CW decompiler test
#using script_18077945bb84ede7;
#using scripts\zm_common\zm_utility.gsc;
#using script_19367cd29a4485db;
#using script_5f261a5d57de5f7c;
#using scripts\zm_common\ai\zm_ai_utility.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using script_2c5daa95f8fec03c;
#using scripts\core_common\gestures.gsc;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\player\player_shared.gsc;
#using scripts\core_common\healthoverlay.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_791d0451;

// Namespace namespace_791d0451/namespace_791d0451
// Params 0, eflags: 0x5
// Checksum 0x8ab3b54a, Offset: 0x298
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"hash_2d064899850813e2", &preinit, &postinit, undefined, undefined);
}

// Namespace namespace_791d0451/namespace_791d0451
// Params 0, eflags: 0x2 linked
// Checksum 0x6f58e92e, Offset: 0x2f0
// Size: 0x63c
function preinit() {
    level.var_fcb9f1fb = [];
    callback::on_spawned(&on_player_spawn);
    callback::on_item_pickup(&on_item_pickup);
    /#
        level.var_c0f77370 = &function_c0f77370;
    #/
    level.var_c723ac75 = [];
    function_e854b81f(#"hash_47d7a8105237c88", #"hash_afdc97f440fbcec", #"hash_afdcc7f440fc205", #"hash_afdcb7f440fc052", #"hash_afdc67f440fb7d3", #"hash_afdc57f440fb620");
    function_e854b81f(#"hash_7f98b3dd3cce95aa", #"hash_504b41f717f8931a", #"hash_504b40f717f89167", #"hash_504b3ff717f88fb4", #"hash_504b3ef717f88e01", #"hash_504b3df717f88c4e");
    function_e854b81f(#"hash_5930cf0eb070e35a", #"hash_520b5db0216b778a", #"hash_520b5cb0216b75d7", #"hash_520b5bb0216b7424", #"hash_520b5ab0216b7271", #"hash_520b59b0216b70be");
    function_e854b81f(#"hash_4110e6372aa77f7e", #"hash_4110e6372aa77f7e", #"hash_4110e6372aa77f7e", #"hash_4110e6372aa77f7e", #"hash_4110e6372aa77f7e", #"hash_4110e6372aa77f7e");
    function_e854b81f(#"hash_210097a75bb6c49a", #"hash_1f95b48e4a49df4a", #"hash_1f95b38e4a49dd97", #"hash_1f95b28e4a49dbe4", #"hash_1f95b18e4a49da31", #"hash_1f95b08e4a49d87e");
    function_e854b81f(#"hash_602a1b6107105f07", #"hash_17ccbaee64daa05b", #"hash_17ccbbee64daa20e", #"hash_17ccbcee64daa3c1", #"hash_17ccbdee64daa574", #"hash_17ccbeee64daa727");
    function_e854b81f(#"hash_51b6cc6dbafb7f31", #"hash_79774556f321d921", #"hash_79774256f321d408", #"hash_79774356f321d5bb", #"hash_79774856f321de3a", #"hash_79774956f321dfed");
    function_e854b81f(#"hash_38c08136902fd553", #"hash_59dbecf72baaa96f", #"hash_59dbedf72baaab22", #"hash_59dbeef72baaacd5", #"hash_59dbe7f72baaa0f0", #"hash_59dbe8f72baaa2a3");
    function_e854b81f(#"hash_17e4ae593eaf4a47", #"hash_2cb94d3f0cf6791b", #"hash_2cb94e3f0cf67ace", #"hash_2cb94f3f0cf67c81", #"hash_2cb9503f0cf67e34", #"hash_2cb9513f0cf67fe7");
    function_e854b81f(#"hash_1ea1a9cfee998e89", #"hash_7082a5127deb88c9", #"hash_7082a2127deb83b0", #"hash_7082a3127deb8563", #"hash_7082a8127deb8de2", #"hash_7082a9127deb8f95");
    function_e854b81f(#"hash_3417450e1347185", #"hash_332be80e760e706d", #"hash_332be50e760e6b54", #"hash_332be60e760e6d07", #"hash_332be30e760e67ee", #"hash_332be40e760e69a1");
    clientfield::register_clientuimodel("zm_perks_per_controller.count", 1, 4, "int", 0);
    for (i = 1; i <= 10; i++) {
        clientfield::register_clientuimodel("zm_perks_per_controller." + i + ".itemIndex", 1, 8, "int", 0);
        clientfield::register_clientuimodel("zm_perks_per_controller." + i + ".lost", 1, 2, "int", 0);
    }
    callback::add_callback(#"on_host_migration_end", &on_host_migration_end);
}

// Namespace namespace_791d0451/namespace_791d0451
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x938
// Size: 0x4
function postinit() {
    
}

// Namespace namespace_791d0451/namespace_791d0451
// Params 2, eflags: 0x42 linked
// Checksum 0x8f5ae42d, Offset: 0x948
// Size: 0xf8
function function_e854b81f(var_24303d72, ...) {
    var_50846129 = [];
    if (!isdefined(var_50846129)) {
        var_50846129 = [];
    } else if (!isarray(var_50846129)) {
        var_50846129 = array(var_50846129);
    }
    var_50846129[var_50846129.size] = var_24303d72;
    for (i = 0; i < vararg.size; i++) {
        if (!isdefined(var_50846129)) {
            var_50846129 = [];
        } else if (!isarray(var_50846129)) {
            var_50846129 = array(var_50846129);
        }
        var_50846129[var_50846129.size] = vararg[i];
    }
    level.var_c723ac75[var_24303d72] = var_50846129;
}

// Namespace namespace_791d0451/namespace_791d0451
// Params 2, eflags: 0x2 linked
// Checksum 0x5fb838be, Offset: 0xa48
// Size: 0xca
function function_1b16bd84(var_24303d72, tier) {
    var_8c590502 = isdefined(getgametypesetting(#"hash_3c2c78e639bfd3c6")) ? getgametypesetting(#"hash_3c2c78e639bfd3c6") : 0;
    if (var_8c590502 > 0) {
        tier = var_8c590502;
    }
    var_50846129 = level.var_c723ac75[var_24303d72];
    if (!isdefined(var_50846129)) {
        return var_24303d72;
    }
    talent = var_50846129[tier];
    if (!isdefined(talent)) {
        return var_24303d72;
    }
    return talent;
}

// Namespace namespace_791d0451/namespace_791d0451
// Params 2, eflags: 0x0
// Checksum 0x65dd0f4c, Offset: 0xb20
// Size: 0x34
function function_1050b262(talent, func) {
    if (isdefined(talent) && isdefined(func)) {
        level.var_fcb9f1fb[talent] = func;
    }
}

// Namespace namespace_791d0451/namespace_791d0451
// Params 1, eflags: 0x2 linked
// Checksum 0x728a473e, Offset: 0xb60
// Size: 0xbc
function function_56cedda7(perk) {
    if (!isplayer(self) || !isdefined(self.var_7341f980)) {
        return false;
    }
    foreach (var_7387d8e1 in self.var_7341f980) {
        if (perk == var_7387d8e1) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_791d0451/namespace_791d0451
// Params 1, eflags: 0x2 linked
// Checksum 0xe2d96fcf, Offset: 0xc28
// Size: 0xa2
function function_12b698fa(statname) {
    var_8c590502 = isdefined(getgametypesetting(#"hash_3c2c78e639bfd3c6")) ? getgametypesetting(#"hash_3c2c78e639bfd3c6") : 0;
    if (var_8c590502 > 0) {
        return var_8c590502;
    }
    return self stats::function_6d50f14b(#"cacloadouts", #"hash_1b24e5b336f5ae8d", statname);
}

// Namespace namespace_791d0451/namespace_791d0451
// Params 1, eflags: 0x2 linked
// Checksum 0x30fa7d16, Offset: 0xcd8
// Size: 0xc2
function function_b852953c(var_aac3d74d) {
    item_index = getitemindexfromref(var_aac3d74d);
    var_438da649 = function_b143666d(item_index, 5);
    var_40e28ba = var_438da649.var_cd070e56;
    if (!isdefined(var_40e28ba) || var_40e28ba == #"") {
        return var_aac3d74d;
    }
    tier = self function_12b698fa(var_40e28ba);
    return function_1b16bd84(var_aac3d74d, tier);
}

// Namespace namespace_791d0451/namespace_791d0451
// Params 0, eflags: 0x2 linked
// Checksum 0xf7547f60, Offset: 0xda8
// Size: 0x182
function function_a0a66726() {
    if (!isplayer(self)) {
        return;
    }
    if (!isdefined(self.var_7341f980)) {
        return;
    }
    var_fc14f601 = [];
    foreach (var_91b99f7 in self.var_7341f980) {
        itemindex = 0;
        if (isdefined(var_91b99f7) && ishash(var_91b99f7) && var_91b99f7 != #"") {
            itemindex = getitemindexfromref(var_91b99f7);
        }
        if (itemindex > 0) {
            if (!isdefined(var_fc14f601)) {
                var_fc14f601 = [];
            } else if (!isarray(var_fc14f601)) {
                var_fc14f601 = array(var_fc14f601);
            }
            if (!isinarray(var_fc14f601, var_91b99f7)) {
                var_fc14f601[var_fc14f601.size] = var_91b99f7;
            }
        }
    }
    self.var_7341f980 = var_fc14f601;
}

// Namespace namespace_791d0451/namespace_791d0451
// Params 0, eflags: 0x2 linked
// Checksum 0xc1749a7e, Offset: 0xf38
// Size: 0x22c
function function_a173ab53() {
    if (!isplayer(self)) {
        return 0;
    }
    self function_a0a66726();
    count = 0;
    if (isdefined(self.var_7341f980)) {
        count = self.var_7341f980.size;
        for (i = 1; i <= 10; i++) {
            itemindex = 0;
            var_91b99f7 = self.var_7341f980[i - 1];
            if (isdefined(var_91b99f7)) {
                itemindex = getitemindexfromref(var_91b99f7);
            }
            clientfield::set_player_uimodel("zm_perks_per_controller." + i + ".itemIndex", itemindex);
            var_58257a54 = 0;
            if (isdefined(self.var_1f3077f0)) {
                foreach (var_9aaeaf22 in self.var_1f3077f0) {
                    if (var_9aaeaf22 === var_91b99f7) {
                        var_58257a54 = 1;
                        break;
                    }
                }
            }
            if (self namespace_e86ffa8::function_33d837e4(5)) {
                clientfield::set_player_uimodel("zm_perks_per_controller." + i + ".lost", 2);
                continue;
            }
            clientfield::set_player_uimodel("zm_perks_per_controller." + i + ".lost", var_58257a54);
        }
    }
    clientfield::set_player_uimodel("zm_perks_per_controller.count", count);
}

// Namespace namespace_791d0451/namespace_791d0451
// Params 0, eflags: 0x2 linked
// Checksum 0x3b0dc1a6, Offset: 0x1170
// Size: 0x3c
function function_4c5d2b62() {
    cost = 2500;
    if (isdefined(self.var_7341f980)) {
        cost += self.var_7341f980.size * 500;
    }
    return cost;
}

// Namespace namespace_791d0451/namespace_791d0451
// Params 3, eflags: 0x2 linked
// Checksum 0x2b8e5759, Offset: 0x11b8
// Size: 0xc30
function function_3fecad82(talent, var_6e2cc6cb = 1, var_96b5aff5 = #"") {
    if (!isplayer(self) || !isdefined(self.var_7341f980)) {
        return;
    }
    round_number = zm_utility::get_round_number();
    if (self.var_7341f980.size == 0 && zm_utility::is_classic()) {
        self.var_5c68806 = [];
        self.var_c545ae9c = round_number;
        self.var_5c68806[round_number] = talent;
        self.var_5c68806[round_number + 1] = #"none";
        self.var_5c68806[round_number + 2] = #"none";
        self.var_5c68806[round_number + 3] = #"none";
        self.var_5c68806[round_number + 4] = #"none";
        self.var_5c68806[round_number + 5] = #"none";
        self.var_5c68806[round_number + 6] = #"none";
        self.var_5c68806[round_number + 7] = #"none";
        self.var_5c68806[round_number + 8] = #"none";
        self.var_5c68806[round_number + 9] = #"none";
    } else if (isdefined(self.var_5c68806) && isdefined(self.var_c545ae9c) && zm_utility::is_classic()) {
        if (!isinarray(self.var_5c68806, talent)) {
            self.var_5c68806[round_number] = talent;
        }
        var_55c38743 = 1;
        for (i = 0; i < 10; i++) {
            if (self.var_5c68806[self.var_c545ae9c + i] == #"none") {
                var_55c38743 = 0;
            }
        }
        if (var_55c38743) {
            self zm_stats::increment_challenge_stat(#"hash_9f4ad7eba874404");
        }
    }
    if (!isdefined(self.var_7341f980)) {
        self.var_7341f980 = [];
    } else if (!isarray(self.var_7341f980)) {
        self.var_7341f980 = array(self.var_7341f980);
    }
    if (!isinarray(self.var_7341f980, talent)) {
        self.var_7341f980[self.var_7341f980.size] = talent;
    }
    self function_a173ab53();
    self item_inventory::function_9f438f15();
    if (isdefined(level.var_fcb9f1fb) && isdefined(level.var_fcb9f1fb[talent])) {
        self [[ level.var_fcb9f1fb[talent] ]]();
    }
    self notify(#"perk_acquired", {#var_16c042b8:talent});
    switch (talent) {
    case #"hash_504b40f717f89167":
    case #"hash_504b3ff717f88fb4":
    case #"hash_504b41f717f8931a":
    case #"hash_504b3ef717f88e01":
    case #"hash_504b3df717f88c4e":
    case #"hash_7f98b3dd3cce95aa":
        var_6d3b160e = self.var_7341f980[self.var_7341f980.size - 1];
        if (var_6d3b160e != #"hash_7f98b3dd3cce95aa" || var_6d3b160e != #"hash_504b41f717f8931a" || var_6d3b160e != #"hash_504b40f717f89167" || var_6d3b160e != #"hash_504b3ff717f88fb4" || var_6d3b160e != #"hash_504b3ef717f88e01" || var_6d3b160e != #"hash_504b3df717f88c4e") {
            self.var_7341f980[self.var_7341f980.size - 1] = self.var_7341f980[0];
            self.var_7341f980[0] = var_6d3b160e;
        }
        if (var_6e2cc6cb) {
            self perk_give_bottle_begin(#"hash_7f98b3dd3cce95aa");
        }
        break;
    case #"hash_5930cf0eb070e35a":
    case #"hash_520b5db0216b778a":
    case #"hash_520b5cb0216b75d7":
    case #"hash_520b5bb0216b7424":
    case #"hash_520b5ab0216b7271":
    case #"hash_520b59b0216b70be":
        if (var_6e2cc6cb) {
            self perk_give_bottle_begin(#"hash_5930cf0eb070e35a");
        }
        break;
    case #"hash_1f95b28e4a49dbe4":
    case #"hash_1f95b08e4a49d87e":
    case #"hash_1f95b18e4a49da31":
    case #"hash_1f95b38e4a49dd97":
    case #"hash_1f95b48e4a49df4a":
    case #"hash_210097a75bb6c49a":
        if (var_6e2cc6cb) {
            self perk_give_bottle_begin(#"hash_210097a75bb6c49a");
        }
        break;
    case #"hash_4110e6372aa77f7e":
    case #"hash_4110e6372aa77f7e":
    case #"hash_4110e6372aa77f7e":
    case #"hash_4110e6372aa77f7e":
    case #"hash_4110e6372aa77f7e":
    case #"hash_4110e6372aa77f7e":
        if (var_6e2cc6cb) {
            self perk_give_bottle_begin(#"hash_4110e6372aa77f7e");
        }
        break;
    case #"hash_47d7a8105237c88":
    case #"hash_afdc57f440fb620":
    case #"hash_afdc67f440fb7d3":
    case #"hash_afdc97f440fbcec":
    case #"hash_afdcb7f440fc052":
    case #"hash_afdcc7f440fc205":
        if (var_6e2cc6cb) {
            self perk_give_bottle_begin(#"hash_47d7a8105237c88");
        }
        healthoverlay::function_d2880c8f();
        break;
    case #"hash_17ccbcee64daa3c1":
    case #"hash_17ccbdee64daa574":
    case #"hash_17ccbeee64daa727":
    case #"hash_17ccbbee64daa20e":
    case #"hash_17ccbaee64daa05b":
    case #"hash_602a1b6107105f07":
        if (var_6e2cc6cb) {
            self perk_give_bottle_begin(#"hash_602a1b6107105f07");
        }
        break;
    case #"hash_51b6cc6dbafb7f31":
    case #"hash_79774256f321d408":
    case #"hash_79774356f321d5bb":
    case #"hash_79774556f321d921":
    case #"hash_79774856f321de3a":
    case #"hash_79774956f321dfed":
        if (var_6e2cc6cb) {
            self perk_give_bottle_begin(#"hash_51b6cc6dbafb7f31");
        }
        break;
    case #"hash_38c08136902fd553":
    case #"hash_59dbe8f72baaa2a3":
    case #"hash_59dbecf72baaa96f":
    case #"hash_59dbedf72baaab22":
    case #"hash_59dbeef72baaacd5":
    case #"hash_59dbe7f72baaa0f0":
        if (var_6e2cc6cb) {
            self perk_give_bottle_begin(#"hash_38c08136902fd553");
        }
        break;
    case #"hash_2cb9513f0cf67fe7":
    case #"hash_2cb9503f0cf67e34":
    case #"hash_2cb94f3f0cf67c81":
    case #"hash_2cb94e3f0cf67ace":
    case #"hash_2cb94d3f0cf6791b":
    case #"hash_17e4ae593eaf4a47":
        if (var_6e2cc6cb) {
            self perk_give_bottle_begin(#"hash_17e4ae593eaf4a47");
        }
        break;
    case #"hash_1ea1a9cfee998e89":
    case #"hash_7082a2127deb83b0":
    case #"hash_7082a3127deb8563":
    case #"hash_7082a8127deb8de2":
    case #"hash_7082a9127deb8f95":
    case #"hash_7082a5127deb88c9":
        if (var_6e2cc6cb) {
            self perk_give_bottle_begin(#"hash_1ea1a9cfee998e89");
        }
        break;
    case #"hash_332be60e760e6d07":
    case #"hash_332be50e760e6b54":
    case #"hash_332be40e760e69a1":
    case #"hash_332be30e760e67ee":
    case #"hash_3417450e1347185":
    case #"hash_332be80e760e706d":
        if (var_6e2cc6cb) {
            self perk_give_bottle_begin(#"hash_3417450e1347185");
        }
        break;
    }
    self.var_77c69799 += 1;
    self function_b4083162(talent, var_96b5aff5);
    var_3dab8681 = namespace_e86ffa8::function_cde018a9(talent);
    if (isdefined(level._custom_perks[var_3dab8681]) && isdefined(level._custom_perks[var_3dab8681].player_thread_give)) {
        self thread [[ level._custom_perks[var_3dab8681].player_thread_give ]]();
    }
    if (isdefined(level._custom_perks[var_3dab8681]) && isdefined(level._custom_perks[var_3dab8681].clientfield_set)) {
        self [[ level._custom_perks[var_3dab8681].clientfield_set ]](1);
    }
}

// Namespace namespace_791d0451/namespace_791d0451
// Params 2, eflags: 0x6 linked
// Checksum 0x2c8cbfe6, Offset: 0x1df0
// Size: 0x1cc
function private function_b4083162(talent, var_96b5aff5) {
    if (isplayer(self)) {
        switch (var_96b5aff5) {
        case 1:
            source = #"world";
            break;
        case 2:
            source = #"wonderfizz";
            break;
        default:
            source = #"hash_a6101af5e5d2384";
            break;
        }
        var_4f88d102 = {#var_aa8a99e8:function_f8d53445(), #var_13f78fc7:zm_utility::function_e3025ca5(), #var_75c4407f:zm_utility::get_round_number(), #perk:talent, #var_96b5aff5:source, #var_2abfe4d3:self.var_77c69799, #perks_active:self.var_7341f980.size, #var_fa7f8efb:self namespace_2a9f256a::function_6f3fd157()};
        self function_678f57c8(#"hash_1c64557e9577551e", var_4f88d102);
    }
}

// Namespace namespace_791d0451/namespace_791d0451
// Params 0, eflags: 0x6 linked
// Checksum 0x70b9e50b, Offset: 0x1fc8
// Size: 0x54
function private function_2cceca7b() {
    return self isgrappling() || self isusingoffhand() || self function_55acff10(1);
}

// Namespace namespace_791d0451/namespace_791d0451
// Params 1, eflags: 0x2 linked
// Checksum 0xec59f6f4, Offset: 0x2028
// Size: 0x94
function perk_give_bottle_begin(str_perk) {
    if (!function_2cceca7b()) {
        weapon = get_perk_weapon(str_perk);
        self giveweapon(weapon);
        self switchtooffhand(weapon);
        self thread gestures::function_f3e2696f(self, weapon, undefined, 2.5, undefined, undefined, undefined);
    }
}

// Namespace namespace_791d0451/namespace_791d0451
// Params 1, eflags: 0x2 linked
// Checksum 0xb7fb8d3f, Offset: 0x20c8
// Size: 0x2e2
function get_perk_weapon(str_perk) {
    switch (str_perk) {
    case #"hash_7f98b3dd3cce95aa":
        weapon = getweapon(#"zombie_perk_bottle_revive");
        return weapon;
    case #"hash_5930cf0eb070e35a":
        weapon = getweapon(#"zombie_perk_bottle_sleight");
        return weapon;
    case #"hash_210097a75bb6c49a":
        weapon = getweapon(#"zombie_perk_bottle_deadshot");
        return weapon;
    case #"hash_4110e6372aa77f7e":
        weapon = getweapon(#"zombie_perk_bottle_doubletap");
        return weapon;
    case #"hash_47d7a8105237c88":
        weapon = getweapon(#"zombie_perk_bottle_jugg");
        return weapon;
    case #"hash_602a1b6107105f07":
        weapon = getweapon(#"zombie_perk_bottle_marathon");
        return weapon;
    case #"hash_51b6cc6dbafb7f31":
        weapon = getweapon(#"zombie_perk_bottle_elemental_pop");
        return weapon;
    case #"hash_38c08136902fd553":
        weapon = getweapon(#"zombie_perk_bottle_tombstone");
        return weapon;
    case #"hash_17e4ae593eaf4a47":
        weapon = getweapon(#"zombie_perk_bottle_mulekick");
        return weapon;
    case #"hash_1ea1a9cfee998e89":
        weapon = getweapon(#"zombie_perk_bottle_death_perception");
        return weapon;
    case #"hash_3417450e1347185":
        weapon = getweapon(#"zombie_perk_bottle_slider");
        return weapon;
    }
}

// Namespace namespace_791d0451/namespace_791d0451
// Params 3, eflags: 0x2 linked
// Checksum 0xa0afdef5, Offset: 0x23b8
// Size: 0x2cc
function function_4c1d0e25(perk, var_b2d43592 = 0, var_cd9efd85 = 0) {
    if (!isplayer(self) || !isdefined(self.var_7341f980)) {
        return;
    }
    if (var_b2d43592) {
        self.var_1f3077f0 = isdefined(self.var_1f3077f0) ? self.var_1f3077f0 : [];
        if (!isdefined(self.var_1f3077f0)) {
            self.var_1f3077f0 = [];
        } else if (!isarray(self.var_1f3077f0)) {
            self.var_1f3077f0 = array(self.var_1f3077f0);
        }
        self.var_1f3077f0[self.var_1f3077f0.size] = perk;
        if (var_cd9efd85) {
            self.var_ff5d288f = isdefined(self.var_ff5d288f) ? self.var_ff5d288f : [];
            if (!isdefined(self.var_ff5d288f)) {
                self.var_ff5d288f = [];
            } else if (!isarray(self.var_ff5d288f)) {
                self.var_ff5d288f = array(self.var_ff5d288f);
            }
            self.var_ff5d288f[self.var_ff5d288f.size] = perk;
        }
        self function_a173ab53();
        return;
    }
    arrayremovevalue(self.var_7341f980, perk);
    self function_a173ab53();
    self item_inventory::function_9f438f15();
    var_3dab8681 = namespace_e86ffa8::function_cde018a9(perk);
    if (isdefined(level._custom_perks[var_3dab8681]) && isdefined(level._custom_perks[var_3dab8681].clientfield_set)) {
        self [[ level._custom_perks[var_3dab8681].clientfield_set ]](0);
    }
    if (isdefined(level._custom_perks[var_3dab8681]) && isdefined(level._custom_perks[var_3dab8681].player_thread_take)) {
        self thread [[ level._custom_perks[var_3dab8681].player_thread_take ]](0, undefined, undefined, -1);
    }
}

// Namespace namespace_791d0451/namespace_791d0451
// Params 0, eflags: 0x2 linked
// Checksum 0xfe47ab01, Offset: 0x2690
// Size: 0xca
function function_4af7e89f() {
    if (!isplayer(self) || !isdefined(self.var_1f3077f0)) {
        return;
    }
    foreach (perk in self.var_1f3077f0) {
        self function_4c1d0e25(perk);
    }
    self.var_1f3077f0 = undefined;
    self.var_ff5d288f = undefined;
}

// Namespace namespace_791d0451/namespace_791d0451
// Params 0, eflags: 0x2 linked
// Checksum 0xc74116da, Offset: 0x2768
// Size: 0x32
function on_player_spawn() {
    if (!isdefined(self.var_7341f980)) {
        self.var_7341f980 = [];
    }
    if (!isdefined(self.var_77c69799)) {
        self.var_77c69799 = 0;
    }
}

// Namespace namespace_791d0451/namespace_791d0451
// Params 1, eflags: 0x2 linked
// Checksum 0xfda2cb7f, Offset: 0x27a8
// Size: 0x170
function on_item_pickup(params) {
    item = params.item;
    if (isplayer(self)) {
        if (isdefined(item.itementry)) {
            if (item.itementry.itemtype === #"survival_perk") {
                if (isdefined(item.itementry.talents)) {
                    foreach (talent in item.itementry.talents) {
                        if (isdefined(talent.talent)) {
                            talent = self function_b852953c(talent.talent);
                            function_3fecad82(talent, 1, 1);
                        }
                    }
                }
                return;
            }
            if (item.itementry.itemtype === #"armor") {
            }
        }
    }
}

// Namespace namespace_791d0451/namespace_791d0451
// Params 1, eflags: 0x2 linked
// Checksum 0x6ce2df1e, Offset: 0x2920
// Size: 0x3c
function on_host_migration_end(*params) {
    if (isplayer(self)) {
        self item_inventory::function_9f438f15();
    }
}

// Namespace namespace_791d0451/namespace_791d0451
// Params 1, eflags: 0x2 linked
// Checksum 0x2cdef2e9, Offset: 0x2968
// Size: 0x222
function function_c5fb4741(var_79291fdb = 0) {
    self endon(#"death");
    self endon(#"hash_7d1062382b3d7c69");
    var_3354472e = array("mus_perks_jugganog_jingle", "mus_perks_speed_jingle", "mus_perks_revive_jingle", "mus_perks_stamin_jingle", "mus_perks_deadshot_jingle", "mus_perks_elementalpop_jingle", "mus_perks_tombstone_jingle", "mus_perks_mulekick_jingle", "mus_perks_deathperception_jingle", "mus_perks_phd_jingle");
    var_8f2bdcca = self function_381f04ca();
    while (true) {
        wait(randomintrange(120, 300));
        if (self ishidden()) {
            continue;
        }
        if (var_79291fdb) {
            var_8f2bdcca = var_3354472e[randomintrange(0, var_3354472e.size)];
        }
        if (!is_true(self.var_c000552f) && isdefined(var_8f2bdcca)) {
            self.var_c000552f = 1;
            var_dfeb1fd = float(max(isdefined(soundgetplaybacktime(var_8f2bdcca)) ? soundgetplaybacktime(var_8f2bdcca) : 500, 500)) / 1000;
            playsoundatposition(var_8f2bdcca, self.origin + (0, 0, 50));
            wait(var_dfeb1fd);
            self.var_c000552f = 0;
        }
    }
}

// Namespace namespace_791d0451/namespace_791d0451
// Params 0, eflags: 0x2 linked
// Checksum 0x8dc8661b, Offset: 0x2b98
// Size: 0x17e
function function_381f04ca() {
    str_alias = undefined;
    if (isdefined(self.targetname)) {
        switch (self.targetname) {
        case #"vending_revive":
            str_alias = "mus_perks_revive_jingle";
            break;
        case #"vending_sleight":
            str_alias = "mus_perks_speed_jingle";
            break;
        case #"vending_marathon":
            str_alias = "mus_perks_stamin_jingle";
            break;
        case #"vending_deadshot":
            str_alias = "mus_perks_deadshot_jingle";
            break;
        case #"vending_elemental_pop":
            str_alias = "mus_perks_elementalpop_jingle";
            break;
        case #"vending_jugg":
            str_alias = "mus_perks_jugganog_jingle";
            break;
        case #"vending_tombstone":
            str_alias = "mus_perks_tombstone_jingle";
            break;
        case #"vending_mulekick":
            str_alias = "mus_perks_mulekick_jingle";
            break;
        case #"vending_deathperception":
            str_alias = "mus_perks_deathperception_jingle";
            break;
        case #"vending_divetonuke":
            str_alias = "mus_perks_phd_jingle";
            break;
        }
    }
    return str_alias;
}

// Namespace namespace_791d0451/namespace_791d0451
// Params 1, eflags: 0x2 linked
// Checksum 0xb049032, Offset: 0x2d20
// Size: 0x606
function function_3e9d8a8e(var_11868f5d) {
    self endon(#"death");
    if (is_true(self.var_c000552f)) {
        return;
    }
    str_alias = undefined;
    switch (var_11868f5d) {
    case #"hash_47d7a8105237c88":
    case #"hash_afdc57f440fb620":
    case #"hash_afdc67f440fb7d3":
    case #"hash_afdc97f440fbcec":
    case #"hash_afdcb7f440fc052":
    case #"hash_afdcc7f440fc205":
        str_alias = #"mus_perks_jugganog_sting";
        break;
    case #"hash_504b41f717f8931a":
    case #"hash_7f98b3dd3cce95aa":
    case #"hash_504b40f717f89167":
    case #"hash_504b3ff717f88fb4":
    case #"hash_504b3ef717f88e01":
    case #"hash_504b3df717f88c4e":
        str_alias = #"mus_perks_revive_sting";
        break;
    case #"hash_5930cf0eb070e35a":
    case #"hash_520b59b0216b70be":
    case #"hash_520b5ab0216b7271":
    case #"hash_520b5bb0216b7424":
    case #"hash_520b5cb0216b75d7":
    case #"hash_520b5db0216b778a":
        str_alias = #"mus_perks_speed_sting";
        break;
    case #"hash_1f95b48e4a49df4a":
    case #"hash_210097a75bb6c49a":
    case #"hash_1f95b28e4a49dbe4":
    case #"hash_1f95b08e4a49d87e":
    case #"hash_1f95b18e4a49da31":
    case #"hash_1f95b38e4a49dd97":
        str_alias = #"mus_perks_deadshot_sting";
        break;
    case #"hash_17ccbbee64daa20e":
    case #"hash_17ccbaee64daa05b":
    case #"hash_602a1b6107105f07":
    case #"hash_17ccbeee64daa727":
    case #"hash_17ccbdee64daa574":
    case #"hash_17ccbcee64daa3c1":
        str_alias = #"mus_perks_stamin_sting";
        break;
    case #"hash_51b6cc6dbafb7f31":
    case #"hash_79774256f321d408":
    case #"hash_79774356f321d5bb":
    case #"hash_79774556f321d921":
    case #"hash_79774856f321de3a":
    case #"hash_79774956f321dfed":
        str_alias = #"mus_perks_elementalpop_sting";
        break;
    case #"hash_4110e6372aa77f7e":
    case #"hash_4110e6372aa77f7e":
    case #"hash_4110e6372aa77f7e":
    case #"hash_4110e6372aa77f7e":
    case #"hash_4110e6372aa77f7e":
    case #"hash_4110e6372aa77f7e":
        str_alias = #"hash_25791821a46525d9";
        break;
    case #"hash_59dbe8f72baaa2a3":
    case #"hash_59dbecf72baaa96f":
    case #"hash_59dbedf72baaab22":
    case #"hash_59dbeef72baaacd5":
    case #"hash_59dbe7f72baaa0f0":
    case #"hash_38c08136902fd553":
        str_alias = #"mus_perks_tombstone_sting";
        break;
    case #"hash_2cb9513f0cf67fe7":
    case #"hash_2cb9503f0cf67e34":
    case #"hash_2cb94f3f0cf67c81":
    case #"hash_2cb94e3f0cf67ace":
    case #"hash_2cb94d3f0cf6791b":
    case #"hash_17e4ae593eaf4a47":
        if (self.targetname === "wonderfizz") {
            str_alias = #"mus_perks_mulekick_sting";
        } else {
            str_alias = #"hash_239089c47153028b";
        }
        break;
    case #"hash_1ea1a9cfee998e89":
    case #"hash_7082a2127deb83b0":
    case #"hash_7082a3127deb8563":
    case #"hash_7082a8127deb8de2":
    case #"hash_7082a9127deb8f95":
    case #"hash_7082a5127deb88c9":
        str_alias = #"mus_perks_deathperception_sting";
        break;
    case #"hash_332be40e760e69a1":
    case #"hash_3417450e1347185":
    case #"hash_332be80e760e706d":
    case #"hash_332be60e760e6d07":
    case #"hash_332be50e760e6b54":
    case #"hash_332be30e760e67ee":
        str_alias = #"mus_perks_phd_sting";
        break;
    }
    if (isdefined(str_alias)) {
        self.var_c000552f = 1;
        playsoundatposition(str_alias, self.origin + (0, 0, 50));
        wait(5);
        self.var_c000552f = 0;
    }
}

// Namespace namespace_791d0451/namespace_791d0451
// Params 1, eflags: 0x2 linked
// Checksum 0x704abce, Offset: 0x3330
// Size: 0x6d6
function function_cc0055e9(talent) {
    if (!isdefined(talent)) {
        return false;
    }
    switch (talent) {
    case #"hash_47d7a8105237c88":
    case #"hash_afdc57f440fb620":
    case #"hash_afdc67f440fb7d3":
    case #"hash_afdc97f440fbcec":
    case #"hash_afdcb7f440fc052":
    case #"hash_afdcc7f440fc205":
        if (!is_true(getgametypesetting(#"hash_350adc73849f66ad"))) {
            return false;
        }
        break;
    case #"hash_504b41f717f8931a":
    case #"hash_7f98b3dd3cce95aa":
    case #"hash_504b40f717f89167":
    case #"hash_504b3ff717f88fb4":
    case #"hash_504b3ef717f88e01":
    case #"hash_504b3df717f88c4e":
        if (!is_true(getgametypesetting(#"hash_790760c24def02df"))) {
            return false;
        }
        break;
    case #"hash_5930cf0eb070e35a":
    case #"hash_520b59b0216b70be":
    case #"hash_520b5ab0216b7271":
    case #"hash_520b5bb0216b7424":
    case #"hash_520b5cb0216b75d7":
    case #"hash_520b5db0216b778a":
        if (!is_true(getgametypesetting(#"hash_3ad94f36f9fe01c3"))) {
            return false;
        }
        break;
    case #"hash_1f95b48e4a49df4a":
    case #"hash_210097a75bb6c49a":
    case #"hash_1f95b28e4a49dbe4":
    case #"hash_1f95b08e4a49d87e":
    case #"hash_1f95b18e4a49da31":
    case #"hash_1f95b38e4a49dd97":
        if (!is_true(getgametypesetting(#"hash_6c0eea959e1beea9"))) {
            return false;
        }
        break;
    case #"hash_17ccbbee64daa20e":
    case #"hash_17ccbaee64daa05b":
    case #"hash_602a1b6107105f07":
    case #"hash_17ccbeee64daa727":
    case #"hash_17ccbdee64daa574":
    case #"hash_17ccbcee64daa3c1":
        if (!is_true(getgametypesetting(#"hash_1eae2946efd5fc50"))) {
            return false;
        }
        break;
    case #"hash_51b6cc6dbafb7f31":
    case #"hash_79774256f321d408":
    case #"hash_79774356f321d5bb":
    case #"hash_79774556f321d921":
    case #"hash_79774856f321de3a":
    case #"hash_79774956f321dfed":
        if (!is_true(getgametypesetting(#"hash_4a821fd3ce297dbb"))) {
            return false;
        }
        break;
    case #"hash_4110e6372aa77f7e":
    case #"hash_4110e6372aa77f7e":
    case #"hash_4110e6372aa77f7e":
    case #"hash_4110e6372aa77f7e":
    case #"hash_4110e6372aa77f7e":
    case #"hash_4110e6372aa77f7e":
        return false;
    case #"hash_59dbe8f72baaa2a3":
    case #"hash_59dbecf72baaa96f":
    case #"hash_59dbedf72baaab22":
    case #"hash_59dbeef72baaacd5":
    case #"hash_59dbe7f72baaa0f0":
    case #"hash_38c08136902fd553":
        if (!is_true(getgametypesetting(#"hash_21f347fcb9fbef2a"))) {
            return false;
        }
        break;
    case #"hash_2cb9513f0cf67fe7":
    case #"hash_2cb9503f0cf67e34":
    case #"hash_2cb94f3f0cf67c81":
    case #"hash_2cb94e3f0cf67ace":
    case #"hash_2cb94d3f0cf6791b":
    case #"hash_17e4ae593eaf4a47":
        if (!is_true(getgametypesetting(#"hash_616a22c5c1ebe5b8"))) {
            return false;
        }
        break;
    case #"hash_1ea1a9cfee998e89":
    case #"hash_7082a2127deb83b0":
    case #"hash_7082a3127deb8563":
    case #"hash_7082a8127deb8de2":
    case #"hash_7082a9127deb8f95":
    case #"hash_7082a5127deb88c9":
        if (!is_true(getgametypesetting(#"hash_45fa8995b51490e8"))) {
            return false;
        }
        break;
    case #"hash_332be40e760e69a1":
    case #"hash_3417450e1347185":
    case #"hash_332be80e760e706d":
    case #"hash_332be60e760e6d07":
    case #"hash_332be50e760e6b54":
    case #"hash_332be30e760e67ee":
        if (!is_true(getgametypesetting(#"hash_4b8929fb898a9e80"))) {
            return false;
        }
        break;
    }
    return true;
}

/#

    // Namespace namespace_791d0451/namespace_791d0451
    // Params 0, eflags: 0x0
    // Checksum 0xa2a44287, Offset: 0x3a10
    // Size: 0x46c
    function function_c0f77370() {
        level endon(#"game_ended");
        level.var_6f4eb990 = "<unknown string>";
        namespace_420b39d3::function_d8ef0f00(&function_1d36527d);
        adddebugcommand("<unknown string>" + "<unknown string>" + "<unknown string>");
        adddebugcommand("<unknown string>" + "<unknown string>" + "<unknown string>");
        adddebugcommand("<unknown string>" + "<unknown string>" + "<unknown string>");
        adddebugcommand("<unknown string>" + "<unknown string>" + "<unknown string>");
        adddebugcommand("<unknown string>" + "<unknown string>" + "<unknown string>");
        adddebugcommand("<unknown string>" + "<unknown string>" + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"hash_7f98b3dd3cce95aa") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"hash_5930cf0eb070e35a") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"hash_210097a75bb6c49a") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"hash_47d7a8105237c88") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"hash_602a1b6107105f07") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"hash_51b6cc6dbafb7f31") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"hash_38c08136902fd553") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"hash_17e4ae593eaf4a47") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"hash_1ea1a9cfee998e89") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"hash_3417450e1347185") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"hash_7f98b3dd3cce95aa") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"hash_5930cf0eb070e35a") + "<unknown string>");
    }

    // Namespace namespace_791d0451/namespace_791d0451
    // Params 1, eflags: 0x0
    // Checksum 0x9e5a3762, Offset: 0x3e88
    // Size: 0x36c
    function function_1d36527d(params) {
        tokens = strtok(params.value, "<unknown string>");
        if (!tokens.size || tokens[0] != "<unknown string>" && tokens[0] != "<unknown string>" && tokens[0] != "<unknown string>" && tokens[0] != "<unknown string>") {
            return;
        }
        foreach (player in getplayers()) {
            if (tokens[0] === #"hash_6149e7b90451c6cd") {
                switch (tokens[1]) {
                case #"0":
                    level.var_6f4eb990 = "<unknown string>";
                    break;
                case #"1":
                    level.var_6f4eb990 = "<unknown string>";
                    break;
                case #"2":
                    level.var_6f4eb990 = "<unknown string>";
                    break;
                case #"3":
                    level.var_6f4eb990 = "<unknown string>";
                    break;
                case #"4":
                    level.var_6f4eb990 = "<unknown string>";
                    break;
                case #"5":
                    level.var_6f4eb990 = "<unknown string>";
                    break;
                }
                continue;
            }
            if (tokens[0] === #"hash_24d26fc861b6ec66") {
                player function_3fecad82(hash(tokens[1] + level.var_6f4eb990), 0);
                continue;
            }
            if (tokens[0] === #"hash_2b274b2e4aa51e00") {
                if (player.var_7341f980.size > 0) {
                    player function_4c1d0e25(player.var_7341f980[player.var_7341f980.size - 1]);
                }
                continue;
            }
            foreach (talent in player.var_7341f980) {
                player function_4c1d0e25(talent);
            }
        }
    }

#/
