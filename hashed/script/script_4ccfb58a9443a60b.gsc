// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\killstreaks_util.gsc;
#using script_471b31bd963b388e;
#using scripts\core_common\item_world.gsc;
#using scripts\core_common\item_drop.gsc;
#using script_1caf36ff04a85ff6;
#using scripts\core_common\item_inventory.gsc;
#using script_1287f54612f9bfce;
#using script_19367cd29a4485db;
#using scripts\zm_common\zm_stats.gsc;
#using script_3ddf84b7bb3bf47d;
#using scripts\zm_common\zm_utility_zsurvival.gsc;
#using script_18077945bb84ede7;
#using script_5f261a5d57de5f7c;
#using script_3751b21462a54a7d;
#using scripts\zm_common\zm_contracts.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\player\player_stats.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\content_manager.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace namespace_1cc7b406;

// Namespace namespace_1cc7b406/namespace_1cc7b406
// Params 0, eflags: 0x5
// Checksum 0xa377a78a, Offset: 0x278
// Size: 0x54
function private autoexec __init__system__() {
    system::register(#"hash_49e3cc2797ad6fbc", &preinit, &postinit, undefined, #"content_manager");
}

// Namespace namespace_1cc7b406/namespace_1cc7b406
// Params 0, eflags: 0x2 linked
// Checksum 0x95d4f892, Offset: 0x2d8
// Size: 0x64
function preinit() {
    level.var_3ed9fd33 = sr_crafting_table_menu::register();
    if (!isdefined(level.var_76e8fb05)) {
        level.var_76e8fb05 = 0;
    }
    namespace_52c8f34d::preinit();
    /#
        level.var_633b283d = &function_633b283d;
    #/
}

// Namespace namespace_1cc7b406/namespace_1cc7b406
// Params 0, eflags: 0x2 linked
// Checksum 0x3cf64eff, Offset: 0x348
// Size: 0xec
function postinit() {
    namespace_2a9f256a::init();
    clientfield::register("scriptmover", "crafting_Table_spawn_fx", 1, 1, "int");
    mapdestinations = struct::get_array(#"hash_313be7fccc870cdd", "variantname");
    if ((zm_utility::is_classic() || getdvarint(#"hash_34cae673a047c202", 0)) && isdefined(mapdestinations) && mapdestinations.size > 0) {
        level thread function_3aa5909e(mapdestinations[0]);
    }
}

// Namespace namespace_1cc7b406/namespace_1cc7b406
// Params 3, eflags: 0x2 linked
// Checksum 0xde4c4e53, Offset: 0x440
// Size: 0xc0
function function_7dddb953(var_beee4994, *hint_string, *model) {
    if (!isdefined(model)) {
        return;
    }
    foreach (var_7d0e37f8 in model) {
        function_db05041b(var_7d0e37f8, #"hash_1e1b751abcb0c5b6", &function_e3ad9f54);
    }
}

// Namespace namespace_1cc7b406/namespace_1cc7b406
// Params 3, eflags: 0x2 linked
// Checksum 0x685fc79b, Offset: 0x508
// Size: 0x39c
function function_db05041b(struct, hint_string, callbackfunction) {
    assert(isstruct(struct), "<unknown string>");
    assert(isfunctionptr(callbackfunction), "<unknown string>");
    assert(isdefined(hint_string), "<unknown string>");
    if (zm_utility::is_survival() || is_true(level.var_76e8fb05)) {
        model = #"hash_15f88361c2fa15c";
        if (zm_utility::is_survival()) {
            var_c6d25878 = &zm_utility::function_f5a222a8;
        } else {
            var_c6d25878 = &zm_utility::function_4a4cf79a;
        }
    } else {
        model = #"hash_847710b9f01fee3";
        var_c6d25878 = &zm_utility::function_4a4cf79a;
    }
    scriptmodel = content_manager::spawn_script_model(struct, model, 1);
    zm_utility::function_ca960904(scriptmodel);
    if (struct.parent.content_script_name !== #"safehouse") {
        objid = [[ var_c6d25878 ]](#"hash_72c703e01db3de5d", scriptmodel);
        struct.objectiveid = objid;
        scriptmodel.objectiveid = objid;
    }
    forward = anglestoforward(scriptmodel.angles);
    forward = vectornormalize(forward);
    offset = forward * 24;
    offset = (offset[0], offset[1], offset[2] + 50);
    trigger = content_manager::spawn_interact(struct, callbackfunction, hint_string, undefined, 64, 128, undefined, offset);
    trigger.scriptmodel = scriptmodel;
    scriptmodel.trigger = trigger;
    if (is_true(level.var_6c10f162)) {
        trigger sethintstring(#"hash_14ddb2e3b11bc15f");
    }
    if (zm_utility::is_survival()) {
        level thread zm_utility::clear_vehicles(scriptmodel);
    }
    scriptmodel clientfield::set("crafting_Table_spawn_fx", 1);
    scriptmodel clientfield::set("item_machine_spawn_rob", 1);
    scriptmodel playloopsound(#"hash_35de7277c46bb30f");
    playfx("sr/fx9_safehouse_mchn_workbench_spawn", struct.origin);
}

// Namespace namespace_1cc7b406/namespace_1cc7b406
// Params 1, eflags: 0x2 linked
// Checksum 0x67a5230e, Offset: 0x8b0
// Size: 0x1ac
function function_e3ad9f54(eventstruct) {
    if (is_true(level.var_6c10f162)) {
        return;
    }
    player = eventstruct.activator;
    machine = self.scriptmodel;
    assert(isdefined(machine), "<unknown string>");
    if (isplayer(player)) {
        if (!isdefined(player.var_1a69e47f)) {
            player.var_1a69e47f = [];
        }
        if (!isdefined(player.var_636887e6)) {
            player.var_636887e6 = [];
        }
        if (!level.var_3ed9fd33 sr_crafting_table_menu::is_open(player) && !player clientfield::get_player_uimodel("hudItems.srOverlayOpen")) {
            player notify(#"hash_5f178db4550eeae9");
            level.var_3ed9fd33 sr_crafting_table_menu::open(player, 0);
            if (!isdefined(player.var_ac1e78a5)) {
                player.var_ac1e78a5 = 0;
            }
            level.var_3ed9fd33 sr_crafting_table_menu::function_8ec20f82(player, player.var_ac1e78a5);
            player thread function_4b23ad31(machine, self);
            player namespace_553954de::function_14bada94();
        }
    }
}

// Namespace namespace_1cc7b406/namespace_1cc7b406
// Params 2, eflags: 0x2 linked
// Checksum 0xda11be99, Offset: 0xa68
// Size: 0x15e
function function_6c71e778(machine, trigger) {
    if (!isplayer(self) || !isdefined(level.var_3ed9fd33)) {
        return;
    }
    self.var_486e4bcd = undefined;
    if (isdefined(machine) && isdefined(trigger)) {
        trigger sethintstringforplayer(self, #"hash_1e1b751abcb0c5b6");
        if (isdefined(machine.objectiveid)) {
            objective_setvisibletoplayer(machine.objectiveid, self);
            zm_utility::function_e8f4d47b(self, machine.objectiveid, 0);
        }
    }
    if (level.var_3ed9fd33 sr_crafting_table_menu::is_open(self) && self clientfield::get_player_uimodel("hudItems.srOverlayOpen")) {
        level.var_3ed9fd33 sr_crafting_table_menu::close(self);
        self namespace_553954de::function_548f282();
    }
    self notify(#"hash_8a8d04156e14d76");
}

// Namespace namespace_1cc7b406/namespace_1cc7b406
// Params 0, eflags: 0x0
// Checksum 0x2527a7ac, Offset: 0xbd0
// Size: 0xaa
function function_366ba7f6() {
    self notify("a66a085054c9a85");
    self endon("a66a085054c9a85");
    self endon(#"death");
    if (!isdefined(self.var_496b54df)) {
        self.var_496b54df = 0;
    }
    if (!self.var_496b54df) {
        self.var_496b54df = 1;
        playsoundatposition(#"hash_12cfa31c1fb4a04", self.origin + (0, 0, 50));
        return;
    }
    wait(30);
    self.var_496b54df = 0;
}

// Namespace namespace_1cc7b406/namespace_1cc7b406
// Params 1, eflags: 0x2 linked
// Checksum 0x978c915f, Offset: 0xc88
// Size: 0x16
function function_2c5b6acc(var_438da649) {
    return var_438da649.var_b5ec8024;
}

// Namespace namespace_1cc7b406/namespace_1cc7b406
// Params 1, eflags: 0x2 linked
// Checksum 0x2380e479, Offset: 0xca8
// Size: 0x4a
function function_eac1873d(var_82e23366) {
    loadoutslotname = var_82e23366.loadoutslotname;
    return strstartswith(tolower(loadoutslotname), "killstreak");
}

// Namespace namespace_1cc7b406/namespace_1cc7b406
// Params 1, eflags: 0x2 linked
// Checksum 0xe05fdf45, Offset: 0xd00
// Size: 0x16
function function_3d272dc5(var_438da649) {
    return var_438da649.var_2d7d77d0;
}

// Namespace namespace_1cc7b406/namespace_1cc7b406
// Params 2, eflags: 0x2 linked
// Checksum 0x86878da, Offset: 0xd20
// Size: 0x17c
function function_a4aa10f4(machine, trigger) {
    self endon(#"disconnect", #"death", #"hash_8a8d04156e14d76");
    var_f9c2bece = distance2d(machine.origin, self.origin);
    start_origin = self.origin;
    while ((distance2d(machine.origin, self.origin) <= var_f9c2bece || distance2d(self.origin, start_origin) < 32) && !self laststand::player_is_in_laststand() && !self isinvehicle()) {
        waitframe(1);
        if (!isdefined(machine)) {
            break;
        }
    }
    if (level.var_3ed9fd33 sr_crafting_table_menu::is_open(self) && self clientfield::get_player_uimodel("hudItems.srOverlayOpen")) {
        self function_6c71e778(machine, trigger);
    }
}

// Namespace namespace_1cc7b406/namespace_1cc7b406
// Params 1, eflags: 0x2 linked
// Checksum 0x2daf2711, Offset: 0xea8
// Size: 0x61e
function function_3c3d4f17(var_1a988176) {
    if (!isdefined(var_1a988176)) {
        return false;
    }
    switch (var_1a988176) {
    case #"decoy_t9_item_sr":
        if (!is_true(getgametypesetting(#"hash_22e96504754e8375"))) {
            return false;
        }
        break;
    case #"stimshot_t9_item_sr":
        if (!is_true(getgametypesetting(#"hash_52f19cd89938e56a"))) {
            return false;
        }
        break;
    case #"concussion_t9_item_sr":
        if (!is_true(getgametypesetting(#"hash_6a5453075de4b0b3"))) {
            return false;
        }
        break;
    case #"cymbal_monkey_t9_item_sr":
        if (!is_true(getgametypesetting(#"hash_240adf6a97ca2bdc"))) {
            return false;
        }
        break;
    case #"frag_t9_item_sr":
        if (!is_true(getgametypesetting(#"hash_55a58334a47dd0cb"))) {
            return false;
        }
        break;
    case #"hatchet_t9_item_sr":
        if (!is_true(getgametypesetting(#"hash_76986c7749f63b9a"))) {
            return false;
        }
        break;
    case #"semtex_t9_item_sr":
        if (!is_true(getgametypesetting(#"hash_5d8dd9151ffe3c3f"))) {
            return false;
        }
        break;
    case #"molotov_t9_item_sr":
        if (!is_true(getgametypesetting(#"hash_f8c884a70b46f1f"))) {
            return false;
        }
        break;
    case #"satchel_charge_t9_item_sr":
        if (!is_true(getgametypesetting(#"hash_1ab1a89d032f7080"))) {
            return false;
        }
        break;
    case #"self_revive_sr_item":
        if (!is_true(getgametypesetting(#"hash_3e70ce2c501807dc"))) {
            return false;
        }
        break;
    case #"item_survival_scorestreak_ultimate_turret":
        if (!is_true(getgametypesetting(#"hash_7edbf65b1ef09118"))) {
            return false;
        }
        break;
    case #"item_survival_scorestreak_chopper_gunner":
        if (!is_true(getgametypesetting(#"hash_6a0b096c6bbfd5eb"))) {
            return false;
        }
        break;
    case #"item_survival_scorestreak_deathmachine":
        if (!is_true(getgametypesetting(#"hash_58c821bc828f5ebe"))) {
            return false;
        }
        break;
    case #"item_survival_scorestreak_flamethrower":
        if (!is_true(getgametypesetting(#"hash_72ad1c2b51381a57"))) {
            return false;
        }
        break;
    case #"item_survival_scorestreak_bow":
        if (!is_true(getgametypesetting(#"hash_115a6ae50a238213"))) {
            return false;
        }
        break;
    case #"item_survival_scorestreak_napalm_strike":
        if (!is_true(getgametypesetting(#"zmenablescorestreaknapalmstrike"))) {
            return false;
        }
        break;
    case #"item_survival_scorestreak_pineapple_gun":
        if (!is_true(getgametypesetting(#"hash_3c47218eb5aa98c9"))) {
            return false;
        }
        break;
    case #"item_survival_scorestreak_hand_cannon":
        if (!is_true(getgametypesetting(#"hash_4cec0e29a8901e65"))) {
            return false;
        }
        break;
    case #"item_survival_scorestreak_arcxd":
        if (!is_true(getgametypesetting(#"hash_45aec06707484fef"))) {
            return false;
        }
        break;
    }
    return true;
}

// Namespace namespace_1cc7b406/namespace_1cc7b406
// Params 2, eflags: 0x2 linked
// Checksum 0xb506b4c0, Offset: 0x14d0
// Size: 0xb46
function function_4b23ad31(machine, trigger) {
    self endon(#"hash_5f178db4550eeae9");
    trigger sethintstringforplayer(self, "");
    if (isdefined(machine.objectiveid)) {
        zm_utility::function_e8f4d47b(self, machine.objectiveid, 1);
        objective_setinvisibletoplayer(machine.objectiveid, self);
    }
    var_1f514c83 = isdefined(getgametypesetting(#"hash_627b8890e37ca076")) ? getgametypesetting(#"hash_627b8890e37ca076") : 0;
    self endoncallback(&function_6c71e778, #"death");
    self thread function_a4aa10f4(machine, trigger);
    while (true) {
        waitresult = self waittill(#"menuresponse");
        if (is_true(self.var_486e4bcd)) {
            continue;
        }
        menu = waitresult.menu;
        response = waitresult.response;
        intpayload = waitresult.intpayload;
        if (menu === #"sr_crafting_table_menu" && response === #"hash_300cd920d1c2290e") {
            self.var_486e4bcd = 1;
        }
        if (menu == #"sr_crafting_table_menu") {
            switch (waitresult.response) {
            case #"hash_300cd920d1c2290e":
                var_82e23366 = getunlockableiteminfofromindex(intpayload, 1);
                var_438da649 = function_b143666d(intpayload, 1);
                var_1a988176 = function_3d272dc5(var_438da649);
                var_366e4abc = 1;
                if (isdefined(level.var_e0ee1b1d)) {
                    if (isdefined(var_1a988176)) {
                        item = function_4ba8fde(var_1a988176);
                        profilestart();
                        var_366e4abc = self [[ level.var_e0ee1b1d ]](item);
                        profilestop();
                    }
                }
                if (var_366e4abc && function_3c3d4f17(var_1a988176)) {
                    var_eac1873d = function_eac1873d(var_82e23366);
                    var_1d1d4a2a = function_2c5b6acc(var_438da649);
                    if (!isdefined(var_1d1d4a2a)) {
                        var_1d1d4a2a = 0;
                    }
                    var_d53eef6c = var_1a988176 == #"self_revive_sr_item";
                    if (var_d53eef6c) {
                        if (var_1f514c83) {
                            var_1d1d4a2a += self.var_ac1e78a5 * 50;
                        }
                    }
                    var_3069fe3 = 0;
                    if (var_eac1873d) {
                        var_3069fe3 = self namespace_2a9f256a::function_415b1e(var_1d1d4a2a);
                    } else {
                        var_3069fe3 = self namespace_2a9f256a::function_c29a8aa1(var_1d1d4a2a);
                    }
                    if (var_3069fe3) {
                        self playrumbleonentity(#"zm_interact_rumble");
                        var_4e8c002b = {#var_fa7f8efb:self namespace_2a9f256a::function_6f3fd157(), #var_7bded691:self namespace_2a9f256a::function_efd1d093(), #var_f9c0bac1:var_1a988176, #round_number:zm_utility::get_round_number(), #zombie_count:zombie_utility::get_current_zombie_count(), #var_92889c09:self.current_trigger.scriptmodel.objectiveid};
                        var_293212e1 = self item_inventory::function_2e711614(13);
                        var_9b47f43c = self item_inventory::function_2e711614(7);
                        var_7e5651c0 = self item_inventory::function_2e711614(17);
                        var_4e8c002b.var_3dcfd1b3 = hash(isdefined(var_293212e1.itementry.name) ? var_293212e1.itementry.name : "");
                        var_4e8c002b.var_4e8cf11 = hash(isdefined(var_9b47f43c.itementry.name) ? var_9b47f43c.itementry.name : "");
                        var_4e8c002b.var_5f53d76c = hash(isdefined(var_7e5651c0.itementry.name) ? var_7e5651c0.itementry.name : "");
                        self function_678f57c8(#"hash_1d9a5953d9b3b95f", var_4e8c002b);
                        if (self namespace_e86ffa8::function_30a8ed81(1)) {
                            self give_item(var_1a988176, 2);
                        } else {
                            self give_item(var_1a988176);
                        }
                        if (var_d53eef6c && var_1f514c83) {
                            self.var_ac1e78a5 += 1;
                            self.var_ac1e78a5 = math::clamp(self.var_ac1e78a5, 0, 1000);
                            if (level.var_3ed9fd33 sr_crafting_table_menu::is_open(self)) {
                                level.var_3ed9fd33 sr_crafting_table_menu::function_8ec20f82(self, self.var_ac1e78a5);
                            }
                        }
                        switch (var_1a988176) {
                        case #"cymbal_monkey_t9_item_sr":
                        case #"black_hole_bomb_item_t9_sr":
                        case #"molotov_t9_item_sr":
                        case #"frag_t9_item_sr":
                        case #"hatchet_t9_item_sr":
                        case #"satchel_charge_t9_item_sr":
                        case #"semtex_t9_item_sr":
                        case #"stimshot_t9_item_sr":
                        case #"concussion_t9_item_sr":
                        case #"decoy_t9_item_sr":
                            self stats::function_622feb0d(var_82e23366.namehash, #"crafted", 1);
                            self contracts::increment_zm_contract(#"hash_5db7e053c5f4765f");
                            break;
                        case #"item_survival_scorestreak_pineapple_gun":
                        case #"item_survival_scorestreak_deathmachine":
                        case #"item_survival_scorestreak_ultimate_turret":
                        case #"item_survival_scorestreak_bow":
                        case #"item_survival_scorestreak_hand_cannon":
                        case #"item_survival_scorestreak_flamethrower":
                        case #"self_revive_sr_item":
                        case #"item_survival_scorestreak_remote_missile":
                        case #"item_survival_scorestreak_arcxd":
                        case #"item_survival_scorestreak_chopper_gunner":
                        case #"item_survival_scorestreak_napalm_strike":
                        case #"item_survival_scorestreak_artillery_strike":
                            self contracts::increment_zm_contract(#"hash_2ee6ab7ed0517a10");
                            self stats::function_8fb23f94(var_82e23366.namehash, #"crafted", 1);
                            break;
                        }
                        if (var_eac1873d) {
                            self namespace_2a9f256a::function_8bfa3267(var_1d1d4a2a);
                            if (isdefined(machine)) {
                                machine thread scene::play("p9_fxanim_zm_gp_crafting_bundle", "Shot 2", machine);
                            }
                        } else {
                            self namespace_2a9f256a::function_3610299b(var_1d1d4a2a);
                            if (isdefined(machine)) {
                                machine thread scene::play("p9_fxanim_zm_gp_crafting_bundle", "Shot 1", machine);
                            }
                        }
                        self.var_1a69e47f[var_1a988176] = 1;
                        self callback::callback(#"hash_34d402e0ae123ca6");
                    } else {
                        machine playsoundtoplayer(#"uin_default_action_denied", self);
                    }
                } else {
                    machine playsoundtoplayer(#"uin_default_action_denied", self);
                }
                break;
            case #"hash_383c519d3bdac984":
                self notify(#"hash_8a8d04156e14d76");
                self function_6c71e778(machine, trigger);
                return;
            }
        }
        waitframe(1);
        if (isplayer(self)) {
            if (menu === #"sr_crafting_table_menu" && response === #"hash_300cd920d1c2290e") {
                self.var_486e4bcd = undefined;
            }
        }
    }
}

// Namespace namespace_1cc7b406/namespace_1cc7b406
// Params 4, eflags: 0x2 linked
// Checksum 0x8913bee7, Offset: 0x2020
// Size: 0x4c4
function give_item(itemname, amount = 1, var_75766173 = 0, var_d2468501 = 0) {
    self endon(#"death");
    if (!isdefined(itemname) || itemname == #"") {
        return;
    }
    item = function_4ba8fde(itemname);
    currentweapon = self getcurrentweapon();
    if (isdefined(item)) {
        if (itemname === #"grapple_t9_item_sr" && !var_d2468501) {
            if (amount == 1) {
                item.count = 5;
            } else if (amount == 2) {
                item.count = 10;
            }
        } else {
            item.count = amount;
        }
        if (isdefined(level.var_71f14231)) {
            profilestart();
            var_2dad155c = self [[ level.var_71f14231 ]](item);
            profilestop();
            if (!is_true(var_2dad155c)) {
                return;
            }
        }
        if (var_75766173) {
            self notify(#"craft_item");
        }
        if (!isdefined(self.var_636887e6)) {
            self.var_636887e6 = [];
        } else if (!isarray(self.var_636887e6)) {
            self.var_636887e6 = array(self.var_636887e6);
        }
        self.var_636887e6[self.var_636887e6.size] = item.id;
        var_fa3df96 = self item_inventory::function_e66dcff5(item);
        if (isdefined(var_fa3df96)) {
            if (!item_world_util::function_db35e94f(item.networkid)) {
                item.networkid = item_world_util::function_970b8d86(var_fa3df96);
            }
            if (isdefined(currentweapon) && killstreaks::is_killstreak_weapon(currentweapon) && var_fa3df96 == 17) {
                var_c5eb2acf = self.inventory.items[17 + 1];
                var_c5eb2acf = self namespace_a0d533d1::function_2b83d3ff(var_c5eb2acf);
                self switchtoweapon(var_c5eb2acf, 1);
                self waittill(#"weapon_change");
                waitframe(1);
            }
            item.hidetime = 0;
            if (item.itementry.itemtype === #"scorestreak") {
                if (self.inventory.items[var_fa3df96].networkid != 32767) {
                    self item_inventory::drop_inventory_item(self.inventory.items[var_fa3df96].networkid);
                    item_world::function_de2018e3(item, self, var_fa3df96);
                } else {
                    item_world::function_de2018e3(item, self, var_fa3df96);
                }
            } else if (self.inventory.items[var_fa3df96].networkid != 32767 && self.inventory.items[var_fa3df96].itementry.name != item.itementry.name) {
                self item_inventory::drop_inventory_item(self.inventory.items[var_fa3df96].networkid);
                item_world::function_de2018e3(item, self, var_fa3df96);
            } else {
                item_world::function_de2018e3(item, self, var_fa3df96);
            }
            return;
        }
        item_world::function_de2018e3(item, self);
    }
}

// Namespace namespace_1cc7b406/namespace_1cc7b406
// Params 2, eflags: 0x0
// Checksum 0xacc1fbfb, Offset: 0x24f0
// Size: 0x1ac
function give_equipment(itemname, var_738dfc81) {
    for (i = 0; i < var_738dfc81; i++) {
        point = function_4ba8fde(itemname);
        if (isdefined(point) && isdefined(point.itementry)) {
            dropitem = self item_drop::drop_item(i, point.itementry.weapon, 1, point.itementry.amount, point.id, self.origin, self.angles);
            if (isdefined(dropitem)) {
                var_641d3dc2 = dropitem.itementry.itemtype != #"attachment";
                itementry = dropitem.itementry;
                var_1035544d = self item_world::pickup_item(dropitem, var_641d3dc2);
                if (is_true(var_1035544d)) {
                    if (isdefined(itementry)) {
                        inventoryitem = self item_inventory::function_8babc9f9(itementry);
                    }
                    if (isdefined(inventoryitem)) {
                        self item_inventory::equip_equipment(inventoryitem);
                    }
                    continue;
                }
                self item_inventory::function_fba40e6c(dropitem);
            }
        }
    }
}

// Namespace namespace_1cc7b406/namespace_1cc7b406
// Params 1, eflags: 0x2 linked
// Checksum 0xd9f5fdeb, Offset: 0x26a8
// Size: 0x44
function function_3aa5909e(destination) {
    level flag::wait_till("start_zombie_round_logic");
    waittillframeend();
    function_18dfa93a(destination);
}

// Namespace namespace_1cc7b406/namespace_1cc7b406
// Params 1, eflags: 0x2 linked
// Checksum 0x47a82b76, Offset: 0x26f8
// Size: 0x164
function function_18dfa93a(destination) {
    foreach (location in destination.locations) {
        crafting_table = location.instances[#"crafting_table"];
        if (isdefined(crafting_table)) {
            children = content_manager::get_children(crafting_table);
            foreach (child in children) {
                function_db05041b(child, #"hash_1e1b751abcb0c5b6", &function_e3ad9f54);
            }
        }
    }
}

/#

    // Namespace namespace_1cc7b406/namespace_1cc7b406
    // Params 0, eflags: 0x0
    // Checksum 0x7d446a8b, Offset: 0x2868
    // Size: 0x62c
    function function_633b283d() {
        adddebugcommand("<unknown string>" + function_9e72a96(#"concussion_t9_item_sr") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"cymbal_monkey_t9_item_sr") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"item_survival_scorestreak_deathmachine") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"item_survival_scorestreak_flamethrower") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"frag_t9_item_sr") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"item_survival_scorestreak_pineapple_gun") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"molotov_t9_item_sr") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"satchel_charge_t9_item_sr") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"stimshot_t9_item_sr") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"self_revive_sr_item") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"semtex_t9_item_sr") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"item_survival_scorestreak_ultimate_turret") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"hatchet_t9_item_sr") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"item_survival_scorestreak_chopper_gunner") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"item_survival_scorestreak_bow") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"item_survival_scorestreak_hand_cannon") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"decoy_t9_item_sr") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"item_survival_scorestreak_napalm_strike") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"item_survival_scorestreak_remote_missile") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"item_survival_scorestreak_artillery_strike") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"black_hole_bomb_item_t9_sr") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"grapple_t9_item_sr") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"item_survival_scorestreak_arcxd") + "<unknown string>");
        adddebugcommand("<unknown string>" + function_9e72a96(#"item_survival_scorestreak_hand_cannon") + "<unknown string>");
        namespace_420b39d3::function_d8ef0f00(&function_7a1fc37c);
    }

    // Namespace namespace_1cc7b406/namespace_1cc7b406
    // Params 1, eflags: 0x0
    // Checksum 0xd9f135dd, Offset: 0x2ea0
    // Size: 0x130
    function function_7a1fc37c(params) {
        tokens = strtok(params.value, "<unknown string>");
        if (!tokens.size || tokens[0] != "<unknown string>") {
            return;
        }
        foreach (player in getplayers()) {
            str_item_name = hash(tokens[1]);
            if (function_3c3d4f17(str_item_name)) {
                player give_item(str_item_name);
            }
        }
    }

#/
