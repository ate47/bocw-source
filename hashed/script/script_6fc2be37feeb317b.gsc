// Atian COD Tools GSC CW decompiler test
#using script_5a8a1aa32dea1a04;
#using script_3ddf84b7bb3bf47d;
#using scripts\zm_common\aats\zm_aat.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\ai\systems\gib.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\popups_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using script_1caf36ff04a85ff6;
#using scripts\core_common\item_inventory.gsc;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm_vo.gsc;
#using scripts\zm_common\zm_utility_zsurvival.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\content_manager.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\aat_shared.gsc;

#namespace namespace_4b9fccd8;

// Namespace namespace_4b9fccd8/namespace_4b9fccd8
// Params 0, eflags: 0x5
// Checksum 0xf616bbad, Offset: 0x2e8
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"hash_794c3bb2e36b3278", &preinit, &postinit, undefined, undefined);
}

// Namespace namespace_4b9fccd8/namespace_4b9fccd8
// Params 0, eflags: 0x2 linked
// Checksum 0x7069a258, Offset: 0x340
// Size: 0x134
function preinit() {
    level.var_2457162c = sr_weapon_upgrade_menu::register();
    clientfield::register("scriptmover", "weapon_machine_fx", 1, 1, "int");
    weapon = getweapon(#"bare_hands");
    aat::register_aat_exemption(weapon);
    callback::on_spawned(&function_e3af0084);
    callback::on_connect(&on_connect);
    level.var_fee1eaaf = &function_be24d7ce;
    level.var_af0de66 = array(0, 5000, 15000, 30000);
    level function_a5ed2da0();
    namespace_52c8f34d::preinit();
}

// Namespace namespace_4b9fccd8/namespace_4b9fccd8
// Params 0, eflags: 0x2 linked
// Checksum 0xfc421db7, Offset: 0x480
// Size: 0xa4
function postinit() {
    mapdestinations = struct::get_array(#"hash_313be7fccc870cdd", "variantname");
    if (is_true(getgametypesetting(#"zmpapenabled")) && isdefined(mapdestinations) && mapdestinations.size > 0) {
        level thread function_329ecd95(mapdestinations[0]);
    }
}

// Namespace namespace_4b9fccd8/namespace_4b9fccd8
// Params 0, eflags: 0x2 linked
// Checksum 0xbc9023aa, Offset: 0x530
// Size: 0x308
function function_a5ed2da0() {
    level.var_dcd62c45 = [];
    var_a559259f = [];
    itemspawnlist = getscriptbundle(#"pap_weapons_list");
    var_70f9bc79 = getscriptbundle(#"pap_common_weapons_list");
    foreach (item in var_70f9bc79.itemlist) {
        point = getscriptbundle(item.itementry);
        if (isdefined(point.weapon)) {
            parentweapon = point.weapon.name;
            if (isdefined(parentweapon) && isdefined(item.var_3f8c08e3)) {
                var_a559259f[parentweapon] = item.var_3f8c08e3;
            }
        }
    }
    foreach (item in itemspawnlist.itemlist) {
        point = getscriptbundle(item.itementry);
        if (isdefined(point.weapon)) {
            parentweapon = point.weapon.name;
            if (isdefined(item.var_23a1d10f) && isdefined(item.var_7b0c7fe3) && isdefined(item.var_8261a18) && isdefined(item.var_8261a18) && isdefined(var_a559259f[parentweapon]) && isdefined(parentweapon) && isdefined(item.var_168e36e8)) {
                level.var_dcd62c45[parentweapon] = [#"loadout":var_a559259f[parentweapon], #"resource":item.var_3f8c08e3, #"uncommon":item.var_8261a18, #"rare":item.var_7b0c7fe3, #"epic":item.var_23a1d10f, #"legendary":item.var_168e36e8];
            }
        }
    }
}

// Namespace namespace_4b9fccd8/namespace_4b9fccd8
// Params 1, eflags: 0x2 linked
// Checksum 0xb43dd5aa, Offset: 0x840
// Size: 0x90
function function_cb9d309b(var_beee4994) {
    foreach (struct in var_beee4994) {
        function_e0069640(struct);
    }
}

// Namespace namespace_4b9fccd8/namespace_4b9fccd8
// Params 1, eflags: 0x2 linked
// Checksum 0xd89c797a, Offset: 0x8d8
// Size: 0x29c
function function_e0069640(struct) {
    assert(isstruct(struct), "<unknown string>");
    if (zm_utility::is_survival()) {
        var_c6d25878 = &zm_utility::function_f5a222a8;
    } else {
        var_c6d25878 = &zm_utility::function_4a4cf79a;
    }
    scriptmodel = content_manager::spawn_script_model(struct, #"hash_7336039cd7e006a4", 1);
    zm_utility::function_ca960904(scriptmodel);
    if (struct.parent.content_script_name !== #"safehouse") {
        objid = [[ var_c6d25878 ]](#"hash_1fb6c7512b2e0e38", scriptmodel);
        struct.objectiveid = objid;
        scriptmodel.objectiveid = objid;
    }
    forward = anglestoforward(scriptmodel.angles);
    forward = vectornormalize(forward);
    offset = forward * 24;
    offset = (offset[0], offset[1], offset[2] + 50);
    trigger = content_manager::spawn_interact(struct, &function_5b75a557, #"hash_2492283b9609c4a", undefined, 64, 128, undefined, offset);
    trigger.scriptmodel = scriptmodel;
    trigger.scriptmodel thread function_f15be4f1();
    trigger thread function_395f9528();
    scriptmodel.trigger = trigger;
    if (zm_utility::is_survival()) {
        level thread zm_utility::clear_vehicles(scriptmodel);
    }
    scriptmodel clientfield::set("item_machine_spawn_rob", 1);
    playfx("sr/fx9_safehouse_mchn_wonderfizz_spawn", struct.origin);
}

// Namespace namespace_4b9fccd8/namespace_4b9fccd8
// Params 0, eflags: 0x2 linked
// Checksum 0xe542a81d, Offset: 0xb80
// Size: 0x138
function function_395f9528() {
    self endon(#"death");
    while (true) {
        self hide();
        level flag::wait_till_clear("disable_weapon_machine");
        self show();
        self.scriptmodel clientfield::set("weapon_machine_fx", 1);
        self.scriptmodel thread scene::play(#"p9_fxanim_zm_gp_pap_bundle", "Shot 1", self.scriptmodel);
        level flag::wait_till("disable_weapon_machine");
        self.scriptmodel clientfield::set("weapon_machine_fx", 0);
        self.scriptmodel thread scene::stop(#"p9_fxanim_zm_gp_pap_bundle");
    }
}

// Namespace namespace_4b9fccd8/namespace_4b9fccd8
// Params 0, eflags: 0x2 linked
// Checksum 0x4df0559c, Offset: 0xcc0
// Size: 0x170
function function_f15be4f1() {
    self endon(#"death");
    self val::set("pap", "takedamage", 1);
    self.health = 1000000;
    while (true) {
        s_result = self waittill(#"damage");
        self.health += s_result.amount;
        if (isplayer(s_result.attacker) && s_result.mod == "MOD_MELEE") {
            if (is_true(s_result.attacker.var_54c2b211)) {
                s_result.attacker.var_54c2b211 = 0;
            } else {
                s_result.attacker.var_54c2b211 = 1;
            }
            self clientfield::set("weapon_machine_fx", 0);
            wait(0.5);
            self clientfield::set("weapon_machine_fx", 1);
        }
    }
}

// Namespace namespace_4b9fccd8/namespace_4b9fccd8
// Params 1, eflags: 0x2 linked
// Checksum 0xf839b6f7, Offset: 0xe38
// Size: 0x1cc
function function_5b75a557(eventstruct) {
    player = eventstruct.activator;
    machine = self.scriptmodel;
    player endon(#"death");
    self endon(#"death");
    assert(isdefined(machine), "<unknown string>");
    if (isplayer(player)) {
        while (player isswitchingweapons()) {
            waitframe(1);
        }
        currentweapon = player getcurrentweapon();
        if (currentweapon === level.weaponnone || currentweapon === level.weaponbasemeleeheld || killstreaks::is_killstreak_weapon(currentweapon)) {
            return;
        }
        if (!level.var_2457162c sr_weapon_upgrade_menu::is_open(player) && !player clientfield::get_player_uimodel("hudItems.srOverlayOpen")) {
            player notify(#"hash_5f178db4550eeae9");
            level.var_2457162c sr_weapon_upgrade_menu::open(player, 0);
            player thread function_4609e67c(machine, self);
            player namespace_553954de::function_14bada94();
        }
    }
}

// Namespace namespace_4b9fccd8/namespace_4b9fccd8
// Params 0, eflags: 0x6 linked
// Checksum 0xf2137d10, Offset: 0x1010
// Size: 0x34
function private on_connect() {
    callback::function_d8abfc3d(#"hash_75ec9942d2d5fd0f", &function_90017e84);
}

// Namespace namespace_4b9fccd8/namespace_4b9fccd8
// Params 1, eflags: 0x6 linked
// Checksum 0x5ad15c29, Offset: 0x1050
// Size: 0xec
function private function_90017e84(params) {
    if (!isdefined(params.paplv)) {
        return;
    }
    switch (params.paplv) {
    case 1:
        var_ee3c60e = #"hash_2490c799564294c7";
        break;
    case 2:
        var_ee3c60e = #"hash_2490c8995642967a";
        break;
    case 3:
        var_ee3c60e = #"hash_2490c9995642982d";
        break;
    }
    if (isdefined(var_ee3c60e)) {
        level thread popups::displayteammessagetoteam(var_ee3c60e, self, self.team, params.var_ca3e1138);
    }
}

// Namespace namespace_4b9fccd8/namespace_4b9fccd8
// Params 0, eflags: 0x2 linked
// Checksum 0x6d27a948, Offset: 0x1148
// Size: 0x28a
function function_e3af0084() {
    level endon(#"game_ended");
    self endon(#"disconnect");
    for (weapon = self getcurrentweapon(); true; weapon = isdefined(waitresult.weapon) ? waitresult.weapon : self getcurrentweapon()) {
        networkid = item_inventory::function_ec087745();
        if (networkid != 32767) {
            var_d2648452 = item_inventory::get_inventory_item(networkid);
            if (isdefined(var_d2648452.paplv)) {
                self clientfield::set_player_uimodel("pap_current", var_d2648452.paplv);
            } else {
                self clientfield::set_player_uimodel("pap_current", 0);
            }
            if (!zm_weapons::is_wonder_weapon(weapon)) {
                if (isdefined(var_d2648452.aat)) {
                    if (weapon.weapclass != "melee" && weapon.name != #"special_ballisticknife_t9_dw" && weapon.name != #"special_ballisticknife_t9_dw_upgraded") {
                        self function_bf3044dc(weapon, 1);
                    }
                } else {
                    self function_bf3044dc(weapon, 0);
                }
            }
        } else {
            self clientfield::set_player_uimodel("pap_current", 0);
        }
        self zm_aat::function_ec7953fa();
        waitresult = self waittill(#"weapon_change", #"hash_4de2d5115dc310e2", #"hash_75ec9942d2d5fd0f", #"hash_5cd57762f792396b", #"hash_3713641b67661d30");
    }
}

// Namespace namespace_4b9fccd8/namespace_4b9fccd8
// Params 0, eflags: 0x2 linked
// Checksum 0x92fafc41, Offset: 0x13e0
// Size: 0x7e
function function_10e802ad() {
    weapon = self getcurrentweapon();
    aat = isdefined(self aat::getaatonweapon(weapon, 1)) ? self aat::getaatonweapon(weapon, 1) : "none";
    return aat;
}

// Namespace namespace_4b9fccd8/namespace_4b9fccd8
// Params 2, eflags: 0x2 linked
// Checksum 0x1d6b6572, Offset: 0x1468
// Size: 0x166
function function_6c71e778(machine, trigger) {
    if (!isplayer(self) || !isdefined(level.var_2457162c)) {
        return;
    }
    self.var_c685a4c6 = undefined;
    self.var_2cf223c3 = undefined;
    if (isdefined(machine) && isdefined(trigger)) {
        trigger sethintstringforplayer(self, #"hash_2492283b9609c4a");
        if (isdefined(machine.objectiveid)) {
            objective_setvisibletoplayer(machine.objectiveid, self);
            zm_utility::function_e8f4d47b(self, machine.objectiveid, 0);
        }
    }
    if (level.var_2457162c sr_weapon_upgrade_menu::is_open(self) && self clientfield::get_player_uimodel("hudItems.srOverlayOpen")) {
        level.var_2457162c sr_weapon_upgrade_menu::close(self);
        self namespace_553954de::function_548f282();
    }
    self notify(#"hash_213991f4845a7f0f");
}

// Namespace namespace_4b9fccd8/namespace_4b9fccd8
// Params 0, eflags: 0x0
// Checksum 0x58b32835, Offset: 0x15d8
// Size: 0x14c
function refill_ammo() {
    nullweapon = getweapon(#"none");
    var_f945fa92 = getweapon(#"bare_hands");
    currentweapon = self getcurrentweapon();
    if (currentweapon != nullweapon && currentweapon != var_f945fa92) {
        maxammo = currentweapon.maxammo;
        self setweaponammostock(currentweapon, int(maxammo));
    }
    var_824ff7c7 = self getstowedweapon();
    if (var_824ff7c7 != nullweapon && var_824ff7c7 != var_f945fa92) {
        maxammo = var_824ff7c7.maxammo;
        self setweaponammostock(var_824ff7c7, int(maxammo));
    }
}

// Namespace namespace_4b9fccd8/namespace_4b9fccd8
// Params 1, eflags: 0x0
// Checksum 0x4e9d1ad9, Offset: 0x1730
// Size: 0x30
function function_ee7e837d(item) {
    if (isdefined(item.paplv)) {
        return item.paplv;
    }
    return 0;
}

// Namespace namespace_4b9fccd8/namespace_4b9fccd8
// Params 1, eflags: 0x2 linked
// Checksum 0xaac3a208, Offset: 0x1768
// Size: 0x30
function function_d6739845(var_461c9e9e) {
    if (!isdefined(level.var_7c5fd6a4)) {
        return undefined;
    }
    return level.var_7c5fd6a4[var_461c9e9e];
}

// Namespace namespace_4b9fccd8/namespace_4b9fccd8
// Params 2, eflags: 0x2 linked
// Checksum 0xc840bb63, Offset: 0x17a0
// Size: 0x1a4
function function_a9a3d4e0(machine, trigger) {
    self endon(#"disconnect", #"death", #"hash_213991f4845a7f0f");
    var_f9c2bece = distance2d(machine.origin, self.origin);
    start_origin = self.origin;
    while ((distance2d(machine.origin, self.origin) <= var_f9c2bece || distance2d(self.origin, start_origin) < 32) && !self laststand::player_is_in_laststand() && !self isinvehicle() && !level flag::get(#"disable_weapon_machine")) {
        waitframe(1);
        if (!isdefined(machine)) {
            break;
        }
    }
    if (level.var_2457162c sr_weapon_upgrade_menu::is_open(self) && self clientfield::get_player_uimodel("hudItems.srOverlayOpen")) {
        self function_6c71e778(machine, trigger);
    }
}

// Namespace namespace_4b9fccd8/namespace_4b9fccd8
// Params 2, eflags: 0x2 linked
// Checksum 0xdca3c8db, Offset: 0x1950
// Size: 0x1b4
function function_ef9d58d0(item, weapon) {
    if (!isdefined(item) && isdefined(weapon)) {
        item = item_inventory::function_230ceec4(weapon);
    }
    if (isdefined(item.itementry.name)) {
        switch (item.itementry.name) {
        case #"ww_ieu_shockwave_t9_upgraded_item_sr":
        case #"ww_ieu_gas_t9_item_sr":
        case #"ww_ieu_plasma_t9_item_sr":
        case #"ww_ieu_gas_t9_upgraded_item_sr":
        case #"ww_ieu_acid_t9_upgraded_item_sr":
        case #"ww_ieu_shockwave_t9_item_sr":
        case #"ww_mega_barrel_fullauto_copycat_t9_item_sr":
        case #"ww_mega_barrel_fullauto_blazer_beam_t9_upgraded_item_sr":
        case #"ww_ieu_electric_t9_item_sr":
        case #"hash_3dff7d94b9ae5c97":
        case #"ww_ieu_acid_t9_item_sr":
        case #"ww_mega_barrel_fullauto_blazer_beam_t9_item_sr":
        case #"ww_ieu_electric_t9_upgraded_item_sr":
        case #"ww_mega_barrel_fullauto_copycat_t9_upgraded_item_sr":
        case #"ww_mega_barrel_fullauto_micro_missile_t9_item_sr":
        case #"ww_mega_barrel_fullauto_diffusion_beam_t9_item_sr":
        case #"ww_mega_barrel_fullauto_micro_missile_t9_upgraded_item_sr":
        case #"ww_ieu_plasma_t9_upgraded_item_sr":
        case #"ww_mega_barrel_fullauto_diffusion_beam_t9_upgraded_item_sr":
            return true;
        }
    }
    return false;
}

// Namespace namespace_4b9fccd8/namespace_4b9fccd8
// Params 2, eflags: 0x2 linked
// Checksum 0x1890e220, Offset: 0x1b10
// Size: 0x1a4
function function_d2b370d7(aat_name, var_c3317960) {
    var_4f0c684c = zm_aat::function_296cde87(aat_name);
    if (isdefined(var_c3317960)) {
        switch (var_c3317960) {
        case 1:
            if (var_4f0c684c != "ammomod_cryofreeze") {
                return true;
            }
            break;
        case 3:
        case 10:
        case 12:
            if (var_4f0c684c != "ammomod_napalmburst") {
                return true;
            }
            break;
        case 4:
        case 14:
        case 15:
            if (var_4f0c684c != "ammomod_deadwire") {
                return true;
            }
            break;
        case 7:
        case 9:
            if (var_4f0c684c != "ammomod_shatterblast") {
                return true;
            }
            break;
        case 6:
        case 8:
        case 16:
            if (var_4f0c684c != "ammomod_brainrot") {
                return true;
            }
            break;
        }
    }
    return false;
}

// Namespace namespace_4b9fccd8/namespace_4b9fccd8
// Params 2, eflags: 0x2 linked
// Checksum 0xc25df980, Offset: 0x1cc0
// Size: 0xd9e
function function_4609e67c(machine, trigger) {
    self endon(#"hash_5f178db4550eeae9");
    trigger sethintstringforplayer(self, "");
    if (isdefined(machine.objectiveid)) {
        zm_utility::function_e8f4d47b(self, machine.objectiveid, 1);
        objective_setinvisibletoplayer(machine.objectiveid, self);
    }
    self endoncallback(&function_6c71e778, #"death");
    self thread function_a9a3d4e0(machine, trigger);
    self zm_stats::increment_client_stat(#"use_pap");
    self zm_stats::increment_player_stat(#"use_pap");
    while (true) {
        weapon = self getcurrentweapon();
        if (weapon === level.weaponnone || weapon === level.weaponbasemeleeheld || killstreaks::is_killstreak_weapon(weapon)) {
            self function_6c71e778(machine, trigger);
            return;
        }
        var_9f40587a = 0;
        if (isdefined(weapon)) {
            var_9f40587a = weapon.name === #"ray_gun" || weapon.name === #"ray_gun_upgraded" || weapon.name === #"ray_gun_mk2" || weapon.name === #"ray_gun_mk2_upgraded";
        }
        var_9684b86c = 0;
        if (aat::is_exempt_weapon(weapon) || zm_weapons::is_wonder_weapon(weapon) || var_9f40587a || function_ef9d58d0(undefined, weapon)) {
            var_9684b86c = 1;
            level.var_2457162c sr_weapon_upgrade_menu::function_83d182e9(self, 1);
        } else {
            level.var_2457162c sr_weapon_upgrade_menu::function_83d182e9(self, 0);
        }
        while (self isswitchingweapons() || self getcurrentweapon() == level.weaponnone || is_true(self.var_c685a4c6)) {
            waitframe(1);
        }
        waitresult = self waittill(#"menuresponse");
        menu = waitresult.menu;
        response = waitresult.response;
        intpayload = waitresult.intpayload;
        if (response === #"disconnect") {
            return;
        }
        weapon = self getcurrentweapon();
        item = item_inventory::function_230ceec4(weapon);
        var_c3317960 = gibserverutils::function_de4d9d(weapon, item.var_e91aba42);
        var_9f40587a = 0;
        if (isdefined(weapon)) {
            var_9f40587a = weapon.name === #"ray_gun" || weapon.name === #"ray_gun_upgraded" || weapon.name === #"ray_gun_mk2" || weapon.name === #"ray_gun_mk2_upgraded";
        }
        var_9684b86c = 0;
        if (aat::is_exempt_weapon(weapon) || zm_weapons::is_wonder_weapon(weapon) || var_9f40587a || function_ef9d58d0(item)) {
            var_9684b86c = 1;
            level.var_2457162c sr_weapon_upgrade_menu::function_83d182e9(self, 1);
        } else {
            level.var_2457162c sr_weapon_upgrade_menu::function_83d182e9(self, 0);
        }
        if (weapon === level.weaponnone || weapon === level.weaponbasemeleeheld || killstreaks::is_killstreak_weapon(weapon)) {
            self function_6c71e778(machine, trigger);
            return;
        }
        if (aat::is_exempt_weapon(weapon) || zm_weapons::is_wonder_weapon(weapon) || var_9f40587a) {
            var_9684b86c = 1;
        }
        if (menu == #"sr_weapon_upgrade_menu") {
            switch (waitresult.response) {
            case #"hash_6235f4ca625f415":
                if (var_9684b86c) {
                    self function_6c71e778(machine, trigger);
                    return;
                }
                var_82e23366 = getunlockableiteminfofromindex(intpayload, 3);
                var_438da649 = function_b143666d(intpayload, 3);
                var_461c9e9e = var_82e23366.namehash;
                aat_name = function_d6739845(var_461c9e9e);
                var_dfa2c41b = var_438da649.var_b5ec8024;
                if (!isdefined(var_dfa2c41b)) {
                    var_dfa2c41b = 0;
                }
                var_3069fe3 = self zm_score::can_player_purchase(var_dfa2c41b);
                var_42a3b8a3 = self function_10e802ad();
                if (isdefined(item) && !killstreaks::is_killstreak_weapon(weapon) && !var_9f40587a) {
                    var_2bbbcbe = function_d2b370d7(aat_name, var_c3317960);
                    if (!var_2bbbcbe && !is_true(item.itementry.var_6e136726) && var_3069fe3 && !aat::is_exempt_weapon(weapon) && var_42a3b8a3 != aat_name && item.networkid != 32767) {
                        var_4f0c684c = zm_aat::function_296cde87(aat_name);
                        if (zm_weapons::function_89e5e7dd(var_4f0c684c)) {
                            switch (var_4f0c684c) {
                            case #"ammomod_napalmburst":
                                self playlocalsound(#"hash_51ce55cb5e478c26");
                                break;
                            case #"ammomod_cryofreeze":
                                self playlocalsound(#"hash_110bd5fceb403850");
                                break;
                            case #"ammomod_brainrot":
                                self playlocalsound(#"hash_26a2938f2f36ad31");
                                break;
                            case #"ammomod_deadwire":
                                self playlocalsound(#"hash_55e994939fce271b");
                                break;
                            }
                            self playrumbleonentity(#"zm_interact_rumble");
                            self zm_weapons::function_37e9e0cb(item, weapon, aat_name);
                            self zm_score::minus_to_player_score(var_dfa2c41b);
                            self zm_stats::increment_client_stat(#"hash_1bcba3bbca05dee0");
                            self zm_stats::increment_player_stat(#"hash_1bcba3bbca05dee0");
                            self function_80287c83(undefined, var_461c9e9e);
                            if (isdefined(machine)) {
                                machine thread scene::play(#"p9_fxanim_zm_gp_pap_bundle", "Shot 3", machine);
                            }
                        } else {
                            machine playsoundtoplayer(#"uin_default_action_denied", self);
                        }
                    } else {
                        machine playsoundtoplayer(#"uin_default_action_denied", self);
                    }
                }
                break;
            case #"hash_199f079f459775b4":
                if (self isswitchingweapons() || is_true(self.var_c685a4c6) || isdefined(item.paplv) && item.paplv >= 3 || item.paplv === intpayload) {
                    machine playsoundtoplayer(#"uin_default_action_denied", self);
                } else {
                    self.var_c685a4c6 = 1;
                    paplv = intpayload;
                    var_340eb1b = level.var_af0de66[paplv];
                    var_3069fe3 = self zm_score::can_player_purchase(var_340eb1b);
                    if (isdefined(item) && var_3069fe3 && paplv <= 3 && item.networkid != 32767 && !killstreaks::is_killstreak_weapon(weapon)) {
                        if (paplv >= 3 && isdefined(self.var_2cf223c3) && self.var_2cf223c3 >= 2) {
                            self zm_stats::increment_challenge_stat(#"hash_72a7b15d4ee25e8a");
                        }
                        self playlocalsound(#"hash_1a8a0ca90d106338" + paplv);
                        self item_inventory::function_73ae3380(item, paplv);
                        self playrumbleonentity(#"zm_interact_rumble");
                        self zm_score::minus_to_player_score(var_340eb1b);
                        self zm_stats::increment_client_stat(#"hash_14f07bc6dbeaab78" + paplv);
                        self zm_stats::increment_player_stat(#"hash_14f07bc6dbeaab78" + paplv);
                        self function_80287c83(weapon);
                        if (!isdefined(self.var_2cf223c3)) {
                            self.var_2cf223c3 = 0;
                        }
                        self.var_2cf223c3++;
                        if (isdefined(machine)) {
                            machine thread scene::play(#"p9_fxanim_zm_gp_pap_bundle", "Shot 2", machine);
                        }
                        waitframe(1);
                        if (isplayer(self)) {
                            self.var_c685a4c6 = undefined;
                        }
                    }
                }
                break;
            case #"hash_383c519d3bdac984":
                self notify(#"hash_213991f4845a7f0f");
                self function_6c71e778(machine, trigger);
                return;
            }
        }
    }
}

// Namespace namespace_4b9fccd8/namespace_4b9fccd8
// Params 1, eflags: 0x2 linked
// Checksum 0xc323f036, Offset: 0x2a68
// Size: 0x112
function function_be24d7ce(item) {
    if (isdefined(item.itementry)) {
        rarity = item.itementry.rarity;
        weapon = item.itementry.weapon;
        if (!isdefined(rarity) || rarity == #"none") {
            return;
        }
        if (rarity == #"ultra") {
            rarity = #"legendary";
        }
        if (isdefined(level.var_dcd62c45[weapon.name][rarity])) {
            var_c4139485 = level.var_dcd62c45[weapon.name][rarity];
            point = function_4ba8fde(var_c4139485);
            if (isdefined(point.itementry)) {
                return point;
            }
        }
    }
}

// Namespace namespace_4b9fccd8/namespace_4b9fccd8
// Params 1, eflags: 0x2 linked
// Checksum 0x5b07d9c, Offset: 0x2b88
// Size: 0x44
function function_329ecd95(destination) {
    level flag::wait_till("start_zombie_round_logic");
    waittillframeend();
    function_ff03fdfb(destination);
}

// Namespace namespace_4b9fccd8/namespace_4b9fccd8
// Params 1, eflags: 0x2 linked
// Checksum 0x716ae3ea, Offset: 0x2bd8
// Size: 0x16c
function function_ff03fdfb(destination) {
    if (isdefined(level.var_ce45839f)) {
        level waittill(level.var_ce45839f);
    }
    foreach (location in destination.locations) {
        var_55bc5738 = location.instances[#"hash_448adaf187bbb953"];
        if (isdefined(var_55bc5738)) {
            children = content_manager::get_children(var_55bc5738);
            foreach (child in children) {
                function_e0069640(child);
            }
        }
    }
}

// Namespace namespace_4b9fccd8/namespace_4b9fccd8
// Params 2, eflags: 0x2 linked
// Checksum 0x6ffb3ca7, Offset: 0x2d50
// Size: 0xc4
function function_80287c83(weapon, str_ammo_mod) {
    var_5503dd3 = {#var_c08f8ddc:gettime(), #var_671a4a8f:zm_utility::function_e3025ca5(), #var_19b950db:zm_utility::get_round_number(), #weapon:weapon.name, #ammo_mod:str_ammo_mod};
    self function_678f57c8(#"hash_6856c2164be3f8db", var_5503dd3);
}

