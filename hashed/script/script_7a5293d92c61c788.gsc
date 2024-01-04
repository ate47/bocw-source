// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\gametypes\globallogic.gsc;
#using scripts\zm_common\zm_power.gsc;
#using script_3ddf84b7bb3bf47d;
#using scripts\zm_common\zm_weapons.gsc;
#using script_18077945bb84ede7;
#using scripts\zm_common\zm_utility.gsc;
#using script_1caf36ff04a85ff6;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\item_world.gsc;
#using scripts\core_common\armor.gsc;
#using script_5fb26eef020f9958;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using script_471b31bd963b388e;
#using script_340a2e805e35f7a2;
#using scripts\core_common\item_drop.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using script_7d7ac1f663edcdc8;
#using script_3751b21462a54a7d;
#using scripts\core_common\player\player_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\fx_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using script_7fc996fe8678852;
#using scripts\core_common\struct.gsc;

#namespace namespace_dd7e54e3;

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 0, eflags: 0x5
// Checksum 0xcf023dd9, Offset: 0x2c8
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"hash_7da9887a9375293", &function_70a657d8, &postinit, undefined, undefined);
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 0, eflags: 0x0
// Checksum 0x27bef3ad, Offset: 0x320
// Size: 0x20c
function function_70a657d8() {
    level.var_2a994cc0 = namespace_eb35e6da::register();
    level.var_ade77b07 = array(#"hash_6c055e078965b4e3", #"hash_35675bbd363f934a", #"hash_7777b2b5970da847", #"hash_7bc70addda19ca00");
    level.var_3a2e321c = array(250, 500, 1000, 250);
    level.var_67a1f481 = array(#"hash_1bce1d027595650f", #"green", #"blue", #"purple", #"orange");
    level.var_9d209b60 = array(250, 500, 1000, 500, 1000);
    level.var_1b95a5be = array(0, 0, 0, 1, 1);
    if (!isdefined(level.var_1b57c9ca)) {
        level.var_1b57c9ca = 0;
    }
    namespace_52c8f34d::function_70a657d8();
    callback::on_spawned(&function_ef39f61b);
    callback::on_item_pickup(&on_item_pickup);
    clientfield::register("scriptmover", "" + #"hash_7dfc37315a4eff0", 1, 1, "int");
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 0, eflags: 0x0
// Checksum 0x42ee5ac4, Offset: 0x538
// Size: 0x9c
function postinit() {
    var_f5ae494f = struct::get_array(#"hash_313be7fccc870cdd", "variantname");
    if ((zm_utility::is_classic() || zm_utility::function_c4b020f8()) && isdefined(var_f5ae494f) && var_f5ae494f.size > 0) {
        level thread function_68649d54(var_f5ae494f[0]);
    }
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 1, eflags: 0x0
// Checksum 0xc16917ef, Offset: 0x5e0
// Size: 0x90
function function_1cbc3614(var_beee4994) {
    foreach (struct in var_beee4994) {
        function_93a99046(struct);
    }
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 1, eflags: 0x0
// Checksum 0xb1bbb7f8, Offset: 0x678
// Size: 0x43c
function function_93a99046(struct) {
    /#
        assert(isstruct(struct), "<unknown string>");
    #/
    if (zm_utility::is_survival() || is_true(level.var_1b57c9ca)) {
        model = #"hash_6847db4bdfca2dc8";
        if (zm_utility::is_survival()) {
            var_c6d25878 = &zm_utility::function_f5a222a8;
        } else {
            var_c6d25878 = &zm_utility::function_4a4cf79a;
        }
    } else {
        model = #"hash_74c59e8a4df12e7f";
        var_c6d25878 = &zm_utility::function_4a4cf79a;
    }
    scriptmodel = namespace_8b6a9d79::function_f3d93ee9(struct, model, 1);
    zm_utility::function_ca960904(scriptmodel);
    if (struct.parent.var_b588b063 !== #"safehouse") {
        objid = [[ var_c6d25878 ]](#"hash_25a19901af9e8467", scriptmodel);
        struct.objectiveid = objid;
        scriptmodel.objectiveid = objid;
    }
    forward = anglestoforward(scriptmodel.angles);
    forward = vectornormalize(forward);
    offset = forward * 24;
    offset = (offset[0], offset[1], offset[2] + 50);
    if (scriptmodel.script_noteworthy === "power") {
        trigger = namespace_8b6a9d79::function_214737c7(struct, &function_fe5f8894, #"zombie/need_power", undefined, 64, 128, undefined, offset);
        scriptmodel.var_49d94d8a.scriptmodel = &function_38ac8b73;
        scriptmodel.var_7cf0a191.scriptmodel = &function_e255b251;
        scriptmodel thread zm_power::function_da4a8c05(#"hash_614130df578d98f0", struct.script_int);
    } else {
        trigger = namespace_8b6a9d79::function_214737c7(struct, &function_fe5f8894, #"hash_614130df578d98f0", undefined, 64, 128, undefined, offset);
        scriptmodel function_38ac8b73();
        if (is_true(level.var_53bc31ad)) {
            scriptmodel.var_7cf0a191.scriptmodel = &function_e255b251;
        }
    }
    trigger.scriptmodel = scriptmodel;
    trigger thread function_ab8eee07();
    scriptmodel.trigger = trigger;
    if (zm_utility::is_survival()) {
        level thread zm_utility::function_232a7f41(scriptmodel);
    }
    scriptmodel clientfield::set("item_machine_spawn_rob", 1);
    if (is_true(level.var_53bc31ad)) {
        scriptmodel fx::play("sr/fx9_safehouse_mchn_upgrades_spawn", struct.origin, undefined, #"hash_6088c0a8269c8f8b");
    } else {
        playfx("sr/fx9_safehouse_mchn_upgrades_spawn", struct.origin);
    }
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 0, eflags: 0x0
// Checksum 0xa6e96f41, Offset: 0xac0
// Size: 0xea
function function_ab8eee07() {
    self endon(#"death");
    while (1) {
        players = function_a1ef346b();
        foreach (player in players) {
            if (istouching(player.origin, self)) {
                player globallogic::function_d96c031e();
            }
        }
        waitframe(1);
    }
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 0, eflags: 0x0
// Checksum 0x18e9751f, Offset: 0xbb8
// Size: 0x9c
function function_38ac8b73() {
    if (!self flag::get(#"hash_1fdaddc50f1d62c5")) {
        self flag::set(#"hash_1fdaddc50f1d62c5");
        self thread scene::play("p9_fxanim_zm_gp_armor_station_bundle", "Shot 1", self);
    }
    self clientfield::set("" + #"hash_7dfc37315a4eff0", 1);
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 0, eflags: 0x0
// Checksum 0x95b42528, Offset: 0xc60
// Size: 0x2c
function function_e255b251() {
    self clientfield::set("" + #"hash_7dfc37315a4eff0", 0);
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 1, eflags: 0x0
// Checksum 0x67ede1f4, Offset: 0xc98
// Size: 0x134
function function_fe5f8894(eventstruct) {
    player = eventstruct.activator;
    machine = self.scriptmodel;
    /#
        assert(isdefined(machine), "<unknown string>");
    #/
    if (isplayer(player)) {
        if (!level.var_2a994cc0 namespace_eb35e6da::is_open(player) && !player clientfield::get_player_uimodel("hudItems.srOverlayOpen") && machine.script_noteworthy !== "power") {
            player notify(#"hash_5f178db4550eeae9");
            level.var_2a994cc0 namespace_eb35e6da::open(player, 0);
            player thread function_cb2d9b9b(machine, self);
            player namespace_553954de::function_14bada94();
        }
    }
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 2, eflags: 0x0
// Checksum 0x5eb481b4, Offset: 0xdd8
// Size: 0x1b6
function function_6c71e778(machine, trigger) {
    if (!isplayer(self) || !isdefined(level.var_2a994cc0)) {
        return;
    }
    self val::reset(#"hash_55af237178580523", "disable_weapon_cycling");
    if (isdefined(machine) && isdefined(trigger)) {
        str_hint = #"hash_614130df578d98f0";
        if (machine.script_noteworthy === "power") {
            str_hint = #"zombie/need_power";
        }
        trigger sethintstringforplayer(self, str_hint);
        if (isdefined(machine.objectiveid)) {
            objective_setvisibletoplayer(machine.objectiveid, self);
            zm_utility::function_e8f4d47b(self, machine.objectiveid, 0);
        }
    }
    if (level.var_2a994cc0 namespace_eb35e6da::is_open(self) && self clientfield::get_player_uimodel("hudItems.srOverlayOpen")) {
        level.var_2a994cc0 namespace_eb35e6da::close(self);
        self namespace_553954de::function_548f282();
    }
    self notify(#"hash_5e4c1bf6d3ef5df0");
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 0, eflags: 0x0
// Checksum 0x4306993e, Offset: 0xf98
// Size: 0x9e
function function_ef39f61b() {
    level endon(#"game_ended");
    self endon(#"disconnect");
    while (1) {
        if ((isdefined(self.armortier) ? self.armortier : 0) != 0 && self.maxarmor != 0) {
            self clientfield::set_player_uimodel("hudItems.armorPercent", self.armor / self.maxarmor);
        }
        waitframe(1);
    }
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 2, eflags: 0x0
// Checksum 0x6a9c2fcf, Offset: 0x1040
// Size: 0x194
function function_620db6a4(machine, trigger) {
    self endon(#"disconnect", #"death", #"hash_5e4c1bf6d3ef5df0");
    var_f9c2bece = distance2d(machine.origin, self.origin);
    start_origin = self.origin;
    while ((distance2d(machine.origin, self.origin) <= var_f9c2bece || distance2d(self.origin, start_origin) < 32) && !self laststand::player_is_in_laststand() && !self isinvehicle() && machine.script_noteworthy !== "power") {
        waitframe(1);
        if (!isdefined(machine)) {
            break;
        }
    }
    if (level.var_2a994cc0 namespace_eb35e6da::is_open(self) && self clientfield::get_player_uimodel("hudItems.srOverlayOpen")) {
        self function_6c71e778(machine, trigger);
    }
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 1, eflags: 0x0
// Checksum 0xb36723a, Offset: 0x11e0
// Size: 0x12e
function function_137f88c6(var_a0abda6 = #"resource") {
    rarity = #"white";
    switch (var_a0abda6) {
    case #"resource":
    case #"loadout":
        rarity = #"white";
        break;
    case #"hash_3a98cc868af9b743":
        rarity = #"green";
        break;
    case #"rare":
        rarity = #"blue";
        break;
    case #"epic":
        rarity = #"purple";
        break;
    case #"legendary":
        rarity = #"orange";
        break;
    }
    return rarity;
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 2, eflags: 0x0
// Checksum 0xd90fe30c, Offset: 0x1318
// Size: 0x17a
function function_44368952(weapon, rarity = #"white") {
    switch (rarity) {
    case #"resource":
    case #"loadout":
        rarity = #"white";
        break;
    case #"hash_3a98cc868af9b743":
        rarity = #"green";
        break;
    case #"rare":
        rarity = #"blue";
        break;
    case #"epic":
        rarity = #"purple";
        break;
    case #"legendary":
        rarity = #"orange";
        break;
    }
    if (zm_weapons::is_weapon_upgraded(weapon)) {
        weapon = zm_weapons::get_base_weapon(weapon);
    }
    weapon_name = weapon.name;
    item_name = level.var_29d88fe5[weapon_name][rarity];
    return item_name;
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 1, eflags: 0x0
// Checksum 0x2f8c8a50, Offset: 0x14a0
// Size: 0x216
function function_1490abe2(weapon) {
    var_78c4a705 = getweapon(#"bare_hands");
    item = item_inventory::function_230ceec4(weapon);
    if (!isdefined(weapon.name)) {
        return 0;
    }
    if (killstreaks::is_killstreak_weapon(weapon)) {
        return 0;
    }
    if (zm_weapons::is_wonder_weapon(weapon)) {
        return 0;
    }
    if (weapon == level.weaponnone || weapon == var_78c4a705) {
        return 0;
    }
    if (isdefined(item.var_a6762160.name)) {
        switch (item.var_a6762160.name) {
        case #"hash_ad7366e99bb5190":
        case #"hash_c20bf6cb2f436fd":
        case #"hash_f5896e310254300":
        case #"hash_165e9ace72992332":
        case #"hash_27815c5c48d7960a":
        case #"hash_315d03848e9c8533":
        case #"hash_3d6c85e60e7f64bf":
        case #"hash_3dff7d94b9ae5c97":
        case #"hash_4c696ce5b8b4e675":
        case #"hash_6deee6c9f8742324":
        case #"hash_7b3b2febd34985f5":
            return 0;
            break;
        }
    }
    switch (weapon.name) {
    case #"ray_gun_mk2":
    case #"ray_gun_upgraded":
    case #"ray_gun":
    case #"ray_gun_mk2_upgraded":
        return 0;
        break;
    }
    return 1;
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 0, eflags: 0x0
// Checksum 0x2500aedd, Offset: 0x16c0
// Size: 0x3e
function function_5aad4a79() {
    if (!is_true(getgametypesetting(#"hash_48d605c9ac0d9395"))) {
        return 0;
    }
    return 1;
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 2, eflags: 0x0
// Checksum 0x5495aaeb, Offset: 0x1708
// Size: 0xc6e
function function_cb2d9b9b(machine, trigger) {
    self endon(#"hash_5f178db4550eeae9");
    trigger sethintstringforplayer(self, "");
    if (isdefined(machine.objectiveid)) {
        zm_utility::function_e8f4d47b(self, machine.objectiveid, 1);
        objective_setinvisibletoplayer(machine.objectiveid, self);
    }
    self endoncallback(&function_6c71e778, #"death");
    self thread function_620db6a4(machine, trigger);
    while (1) {
        while (isplayer(self) && self isswitchingweapons() || isplayer(self) && self getcurrentweapon() == level.weaponnone) {
            waitframe(1);
        }
        waitresult = undefined;
        waitresult = self waittill(#"menuresponse");
        menu = waitresult.menu;
        response = waitresult.response;
        intpayload = waitresult.intpayload;
        if (menu == #"hash_26b59e932706b6ee") {
            weapon = self getcurrentweapon();
            item = item_inventory::function_230ceec4(weapon);
            var_bfd531ce = item_inventory::function_d768ea30();
            switch (waitresult.response) {
            case #"hash_1028a1675bc987fe":
                var_1a988176 = level.var_ade77b07[intpayload];
                var_1d1d4a2a = level.var_3a2e321c[intpayload];
                if (var_1a988176 == #"hash_7bc70addda19ca00") {
                    var_3069fe3 = self namespace_2a9f256a::function_415b1e(var_1d1d4a2a);
                } else {
                    var_3069fe3 = self namespace_2a9f256a::function_c29a8aa1(var_1d1d4a2a);
                }
                if (var_3069fe3 && isdefined(var_1a988176) && isdefined(var_1d1d4a2a)) {
                    if (function_5aad4a79()) {
                        self playlocalsound(#"hash_500cfba1d8f28c89");
                        if (var_1a988176 == #"hash_6c055e078965b4e3") {
                            self.armor = self.maxarmor;
                        } else {
                            self give_armor(var_1a988176);
                        }
                        self playrumbleonentity(#"zm_interact_rumble");
                        machine scene::stop("p9_fxanim_zm_gp_armor_station_bundle");
                        machine animation::stop();
                        waitframe(1);
                        machine thread scene::play("p9_fxanim_zm_gp_armor_station_bundle", "Shot 2", machine);
                        if (var_1a988176 == #"hash_7bc70addda19ca00") {
                            self namespace_2a9f256a::function_8bfa3267(var_1d1d4a2a);
                        } else {
                            self namespace_2a9f256a::function_3610299b(var_1d1d4a2a);
                        }
                    } else {
                        machine playsoundtoplayer(#"hash_7d81a3ace87fb4e2", self);
                    }
                } else {
                    machine playsoundtoplayer(#"hash_7d81a3ace87fb4e2", self);
                }
                break;
            case #"hash_652072d835f5b0fa":
                if (!function_1490abe2(weapon) || self isswitchingweapons()) {
                    machine playsoundtoplayer(#"hash_7d81a3ace87fb4e2", self);
                } else {
                    var_35d31714 = level.var_67a1f481[intpayload];
                    var_9b05d455 = level.var_9d209b60[intpayload];
                    var_372067dc = level.var_1b95a5be[intpayload];
                    if (isdefined(var_35d31714) && isdefined(var_9b05d455)) {
                        if (var_35d31714 === #"hash_1bce1d027595650f") {
                            if (weapon.weapclass === "melee" || weapon.weapclass === "rocketlauncher" || weapon.weapclass === "grenade" || weapon.name === #"hash_3e13285248686f27" || weapon.name === #"hash_4650af6ac5c9ce80" || weapon.name === #"hash_5eb76916b647273d" || weapon.name === #"hash_1f564f586c2ec416") {
                                machine playsoundtoplayer(#"hash_7d81a3ace87fb4e2", self);
                            } else {
                                item_weapon = function_44368952(weapon, item.var_a6762160.rarity);
                                var_79770f09 = function_137f88c6(item.var_a6762160.rarity);
                                var_3069fe3 = self namespace_2a9f256a::function_c29a8aa1(250);
                                if (var_3069fe3) {
                                    currentweapon = self getcurrentweapon();
                                    clipsize = self getweaponammoclip(currentweapon);
                                    var_9839b3b1 = self getweaponammostock(currentweapon);
                                    if (is_true(currentweapon.isdualwield) && isdefined(currentweapon.dualwieldweapon) && currentweapon.dualwieldweapon != level.weaponnone) {
                                        var_7fa2b50b = self getweaponammoclip(currentweapon.dualwieldweapon);
                                    }
                                    weaponoptions = self function_ade49959(currentweapon);
                                    self zm_weapons::function_8fdfe5e4(weapon, item, item_weapon, var_79770f09, clipsize, var_9839b3b1, var_7fa2b50b);
                                    if (isplayer(self)) {
                                        var_cedbe5e5 = item_inventory::function_d768ea30();
                                        while (isdefined(var_bfd531ce) && isdefined(var_cedbe5e5) && var_bfd531ce != var_cedbe5e5 || isplayer(self) && self isswitchingweapons()) {
                                            var_cedbe5e5 = item_inventory::function_d768ea30();
                                            waitframe(1);
                                        }
                                        if (isplayer(self)) {
                                            self notify(#"hash_5cd57762f792396b");
                                            if (isdefined(item.var_a8bccf69)) {
                                                weapon = namespace_a0d533d1::function_2b83d3ff(item);
                                                self item_inventory::function_d92c6b5b(weapon, undefined, item.var_a8bccf69);
                                            }
                                            self playrumbleonentity(#"zm_interact_rumble");
                                            machine scene::stop("p9_fxanim_zm_gp_armor_station_bundle");
                                            machine animation::stop();
                                            waitframe(1);
                                            machine thread scene::play("p9_fxanim_zm_gp_armor_station_bundle", "Shot 3", machine);
                                            self namespace_2a9f256a::function_3610299b(250);
                                        }
                                    }
                                } else {
                                    machine playsoundtoplayer(#"hash_7d81a3ace87fb4e2", self);
                                }
                            }
                        } else {
                            if (var_372067dc) {
                                var_3069fe3 = self namespace_2a9f256a::function_415b1e(var_9b05d455);
                            } else {
                                var_3069fe3 = self namespace_2a9f256a::function_c29a8aa1(var_9b05d455);
                            }
                            if (var_3069fe3) {
                                self playrumbleonentity(#"zm_interact_rumble");
                                currentweapon = self getcurrentweapon();
                                clipsize = self getweaponammoclip(currentweapon);
                                var_9839b3b1 = self getweaponammostock(currentweapon);
                                if (is_true(currentweapon.isdualwield) && isdefined(currentweapon.dualwieldweapon) && currentweapon.dualwieldweapon != level.weaponnone) {
                                    var_7fa2b50b = self getweaponammoclip(currentweapon.dualwieldweapon);
                                }
                                self zm_weapons::function_17e9ed37(var_35d31714, clipsize, var_9839b3b1, var_7fa2b50b);
                                if (isplayer(self)) {
                                    machine scene::stop("p9_fxanim_zm_gp_armor_station_bundle");
                                    machine animation::stop();
                                    waitframe(1);
                                    machine thread scene::play("p9_fxanim_zm_gp_armor_station_bundle", "Shot 3", machine);
                                    if (var_372067dc) {
                                        self namespace_2a9f256a::function_8bfa3267(var_9b05d455);
                                    } else {
                                        self namespace_2a9f256a::function_3610299b(var_9b05d455);
                                    }
                                }
                            } else {
                                machine playsoundtoplayer(#"hash_7d81a3ace87fb4e2", self);
                            }
                        }
                    } else {
                        machine playsoundtoplayer(#"hash_7d81a3ace87fb4e2", self);
                    }
                }
                break;
            case #"hash_383c519d3bdac984":
                self notify(#"hash_5e4c1bf6d3ef5df0");
                self function_6c71e778(machine, trigger);
                return;
            }
        }
    }
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 1, eflags: 0x0
// Checksum 0x21724d73, Offset: 0x2380
// Size: 0xe4
function function_f3ce6afc(var_cc87b623) {
    if (isplayer(self)) {
        var_bb1797ae = {#var_500db157:zm_utility::function_e3025ca5(), #var_159283d5:zm_utility::get_round_number(), #var_7d003586:function_f8d53445(), #var_7ebcde3b:hash(var_cc87b623)};
        self function_678f57c8(#"hash_653ddf74d3ce14d0", var_bb1797ae);
    }
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 1, eflags: 0x4
// Checksum 0xe69694da, Offset: 0x2470
// Size: 0xb4
function private on_item_pickup(params) {
    var_abf29e5c = params.item.var_a6762160.name;
    if (isplayer(self) && isdefined(var_abf29e5c) && (isinarray(level.var_ade77b07, hash(var_abf29e5c)) || var_abf29e5c === #"hash_fb02b41b0d01f39")) {
        self function_f3ce6afc(var_abf29e5c);
    }
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 1, eflags: 0x0
// Checksum 0xd98a3deb, Offset: 0x2530
// Size: 0xea
function give_armor(var_cc87b623) {
    point = function_4ba8fde(var_cc87b623);
    if (isdefined(point) && isdefined(point.var_a6762160)) {
        self function_b2f69241();
        var_fa3df96 = self item_inventory::function_e66dcff5(point);
        self item_inventory::give_inventory_item(point, 1, point.var_a6762160.amount, var_fa3df96);
        self item_inventory::equip_armor(point);
        self function_f3ce6afc(var_cc87b623);
    }
    self.armor = self.maxarmor;
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 0, eflags: 0x0
// Checksum 0xf1d3c4e4, Offset: 0x2628
// Size: 0x7c
function function_b2f69241() {
    var_416640e8 = self.inventory.items[6];
    if (var_416640e8.var_bd027dd9 != 32767) {
        var_4d7e11d8 = self item_inventory::drop_inventory_item(var_416640e8.var_bd027dd9);
        if (isdefined(var_4d7e11d8)) {
            item_world::consume_item(var_4d7e11d8);
        }
    }
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 1, eflags: 0x0
// Checksum 0x980cfabc, Offset: 0x26b0
// Size: 0x44
function function_68649d54(destination) {
    level flag::wait_till("start_zombie_round_logic");
    waittillframeend();
    function_85834b2c(destination);
}

// Namespace namespace_dd7e54e3/namespace_dd7e54e3
// Params 1, eflags: 0x0
// Checksum 0xa072f678, Offset: 0x2700
// Size: 0x14c
function function_85834b2c(destination) {
    foreach (location in destination.locations) {
        var_55a59069 = location.instances[#"hash_629e563c2ebf707a"];
        if (isdefined(var_55a59069)) {
            children = namespace_8b6a9d79::function_f703a5a(var_55a59069);
            foreach (child in children) {
                function_93a99046(child);
            }
        }
    }
}

