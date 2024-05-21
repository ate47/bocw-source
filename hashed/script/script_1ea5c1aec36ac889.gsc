// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_vo.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_equipment.gsc;
#using scripts\zm_common\zm_devgui.gsc;
#using scripts\zm\archetype\archetype_zod_companion.gsc;
#using scripts\zm\perk\zm_perk_tombstone.gsc;
#using scripts\weapons\weaponobjects.gsc;
#using scripts\core_common\item_world.gsc;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\gestures.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace namespace_33c196c8;

// Namespace namespace_33c196c8/namespace_33c196c8
// Params 0, eflags: 0x5
// Checksum 0x314a42af, Offset: 0x200
// Size: 0x3c
function private autoexec __init__system__() {
    system::register(#"hash_1555c697c02263a7", &preinit, undefined, undefined, undefined);
}

// Namespace namespace_33c196c8/namespace_33c196c8
// Params 0, eflags: 0x6 linked
// Checksum 0x9e2961c7, Offset: 0x248
// Size: 0x144
function private preinit() {
    level.var_b617b3fe = getweapon(#"hash_7993749c94189bd9");
    clientfield::register("scriptmover", "" + #"hash_547dd74a97b1fdba", 24000, 2, "int");
    weaponobjects::function_e6400478(#"hash_7993749c94189bd9", &function_c3a836cd, 1);
    zm_perk_tombstone::function_7c589e7("tactical", #"hash_7ada82abc5dad90e");
    callback::on_item_pickup(&function_18140c5c);
    callback::on_bleedout(&function_7128234b);
    callback::on_disconnect(&function_7128234b);
    /#
        level thread function_63a18814();
    #/
}

// Namespace namespace_33c196c8/namespace_33c196c8
// Params 1, eflags: 0x2 linked
// Checksum 0x1082a760, Offset: 0x398
// Size: 0xe4
function function_18140c5c(params) {
    item = params.item;
    if (!isdefined(item) || item.itementry.name !== #"hash_7ada82abc5dad90e") {
        return;
    }
    self function_28a8ddad();
    self.var_310a3632.var_c40de8a0 = 1;
    if (!is_true(self.var_dae38283)) {
        level thread flag::set_for_time(11, #"hash_4b065039d7f1a611");
        self thread zm_equipment::show_hint_text(#"hash_1f6b7e5529a8cccf", 10);
    }
}

// Namespace namespace_33c196c8/namespace_33c196c8
// Params 1, eflags: 0x2 linked
// Checksum 0x3d1cf6ae, Offset: 0x488
// Size: 0x80
function function_bad0c914(item) {
    if (item.itementry.itemtype === #"tactical") {
        tactical = self.inventory.items[13];
        if (tactical.itementry.name === #"hash_7ada82abc5dad90e") {
            return false;
        }
    }
    return true;
}

// Namespace namespace_33c196c8/namespace_33c196c8
// Params 1, eflags: 0x2 linked
// Checksum 0x97057f4a, Offset: 0x510
// Size: 0x6a
function function_b926dcfd(item) {
    var_2dad155c = self function_bad0c914(item);
    if (!var_2dad155c) {
        if (isdefined(item.count) && item.count > 0) {
            self.var_ac4c40a8 = item;
        }
    }
    return var_2dad155c;
}

// Namespace namespace_33c196c8/namespace_33c196c8
// Params 1, eflags: 0x2 linked
// Checksum 0x61402514, Offset: 0x588
// Size: 0x32
function function_c3a836cd(watcher) {
    watcher.altdetonate = 1;
    watcher.var_e7ebbd38 = &function_eb6180c9;
}

// Namespace namespace_33c196c8/namespace_33c196c8
// Params 2, eflags: 0x2 linked
// Checksum 0xb2117939, Offset: 0x5c8
// Size: 0x166
function function_dec85954(str_vo, var_ac39950d = 0) {
    time = gettime();
    if (!var_ac39950d && isdefined(self.var_dd756dc) && time < self.var_dd756dc) {
        return;
    }
    var_59c3e157 = str_vo == "zber_mq4_cmdstp";
    self clientfield::set("" + #"hash_703543ca871a0f75", 2);
    e_leader = self.leader;
    if (isdefined(e_leader) && !var_59c3e157) {
        e_leader zm_vo::function_7622cb70(str_vo, 0, 0);
    } else if (var_59c3e157) {
        self zm_vo::function_d6f8bbd9("vox_" + str_vo + "_klau", 0, undefined, 0);
    }
    if (isdefined(self)) {
        self clientfield::set("" + #"hash_703543ca871a0f75", 1);
        self.var_dd756dc = time + 10000;
    }
}

// Namespace namespace_33c196c8/namespace_33c196c8
// Params 1, eflags: 0x2 linked
// Checksum 0xac6c2cdc, Offset: 0x738
// Size: 0xdc
function function_eb6180c9(*watcher) {
    if (isdefined(level.var_b617b3fe) && self hasweapon(level.var_b617b3fe)) {
        if (!isdefined(level.klaus.var_9140144d)) {
            return;
        }
        if (isdefined(level.klaus)) {
            level.klaus zodcompanionutility::function_34179e9a();
            level.klaus thread function_dec85954("zber_kvo_cmdflw");
        }
        self notify(#"hash_65d1a61342635458");
        self gestures::function_56e00fbf(#"hash_7e249c3769936b51", undefined, 1);
    }
}

// Namespace namespace_33c196c8/namespace_33c196c8
// Params 1, eflags: 0x6 linked
// Checksum 0xd0cbdf1c, Offset: 0x820
// Size: 0x7c
function private function_d6f65535(*str_notify) {
    if (isdefined(self.var_310a3632.mdl_target)) {
        self.var_310a3632.mdl_target notify(#"hash_7adeef9b9b822b42");
        self.var_310a3632.mdl_target clientfield::set("" + #"hash_547dd74a97b1fdba", 0);
    }
}

// Namespace namespace_33c196c8/namespace_33c196c8
// Params 0, eflags: 0x6 linked
// Checksum 0xd5ab2c46, Offset: 0x8a8
// Size: 0x154
function private function_67c8b5c3() {
    level endoncallback(&function_d6f65535, #"hash_279a97271de2b7e1");
    self endoncallback(&function_d6f65535, #"disconnect", #"hash_7b63ce1ec3e195b4", #"hash_65d1a61342635458");
    waitresult = self waittill(#"offhand_end", #"hash_7f812cfd98c00a7b");
    if (waitresult._notify === #"hash_7f812cfd98c00a7b" && isdefined(level.klaus) && !level.klaus flag::get(#"hash_3218e127380e4a29")) {
        level.klaus waittill(#"death", #"hash_3218e127380e4a29", #"hash_6edebe8930290c3b");
    }
    self function_d6f65535();
}

// Namespace namespace_33c196c8/namespace_33c196c8
// Params 0, eflags: 0x6 linked
// Checksum 0xfd3b596b, Offset: 0xa08
// Size: 0x62
function private function_28a8ddad() {
    if (!isdefined(self.var_310a3632)) {
        self.var_310a3632 = {};
    }
    if (!isdefined(self.var_310a3632.mdl_target)) {
        self.var_310a3632.mdl_target = util::spawn_model("tag_origin", self.origin);
    }
}

// Namespace namespace_33c196c8/namespace_33c196c8
// Params 0, eflags: 0x6 linked
// Checksum 0xe135ffcf, Offset: 0xa78
// Size: 0x6c
function private function_7128234b() {
    e_target = self.var_310a3632.mdl_target;
    if (isdefined(e_target)) {
        self function_d6f65535();
        util::wait_network_frame();
        if (isdefined(e_target)) {
            e_target deletedelay();
        }
    }
}

// Namespace namespace_33c196c8/namespace_33c196c8
// Params 1, eflags: 0x6 linked
// Checksum 0x53be94fc, Offset: 0xaf0
// Size: 0x2c
function private function_b864b947(var_72c2d810) {
    return isdefined(var_72c2d810) && zm_utility::check_point_in_playable_area(var_72c2d810);
}

// Namespace namespace_33c196c8/namespace_33c196c8
// Params 0, eflags: 0x6 linked
// Checksum 0x672b0198, Offset: 0xb28
// Size: 0x1b6
function private function_9132ad8e() {
    v_start = self getplayercamerapos();
    v_forward = anglestoforward(self getplayerangles());
    v_end = v_start + v_forward * 1200;
    a_trace = bullettrace(v_start, v_end, 0, self.var_310a3632.mdl_target, 1, 0);
    if (a_trace[#"fraction"] == 1) {
        a_trace = bullettrace(v_end, v_end - (0, 0, 40), 0, self.var_310a3632.mdl_target, 1, 0);
    }
    v_hit = a_trace[#"position"] + (0, 0, 8);
    if (a_trace[#"fraction"] < 1) {
        var_5c65b47a = self getpathfindingradius();
        var_20fe4148 = getclosestpointonnavmesh(v_hit, 32, var_5c65b47a);
    }
    self.var_310a3632.var_689f4026 = v_hit;
    self.var_310a3632.var_6164d302 = var_20fe4148;
}

// Namespace namespace_33c196c8/namespace_33c196c8
// Params 0, eflags: 0x6 linked
// Checksum 0x7be0fac4, Offset: 0xce8
// Size: 0x210
function private function_b66d4fac() {
    self notify("28e12eeb6d841b74");
    self endon("28e12eeb6d841b74");
    self endon(#"death", #"disconnect", #"offhand_end", #"hash_7f812cfd98c00a7b", #"hash_65d1a61342635458");
    self.var_310a3632.mdl_target endon(#"death");
    while (true) {
        self function_9132ad8e();
        self.var_310a3632.mdl_target moveto(self.var_310a3632.var_689f4026, float(function_60d95f53()) / 1000);
        b_valid = function_b864b947(self.var_310a3632.var_6164d302);
        self.var_310a3632.mdl_target clientfield::set("" + #"hash_547dd74a97b1fdba", is_true(b_valid) ? 1 : 2);
        wait(0.1);
        /#
            debugstar(self.var_310a3632.mdl_target.origin);
            if (isdefined(self.var_310a3632.var_6164d302)) {
                debugstar(self.var_310a3632.var_6164d302, 10, (1, 1, 0));
            }
        #/
    }
}

// Namespace namespace_33c196c8/grenade_pullback
// Params 1, eflags: 0x20
// Checksum 0xdebae96a, Offset: 0xf00
// Size: 0x104
function event_handler[grenade_pullback] function_8d10e176(eventstruct) {
    if (!isplayer(self)) {
        return;
    }
    weapon = eventstruct.weapon;
    if (weapon.name == #"hash_7993749c94189bd9") {
        self function_28a8ddad();
        self notify(#"hash_7b63ce1ec3e195b4");
        self function_9132ad8e();
        self.var_310a3632.mdl_target dontinterpolate();
        self.var_310a3632.mdl_target.origin = self.var_310a3632.var_689f4026;
        self thread function_67c8b5c3();
        self thread function_b66d4fac();
    }
}

// Namespace namespace_33c196c8/grenade_fire
// Params 1, eflags: 0x20
// Checksum 0x8251e065, Offset: 0x1010
// Size: 0x372
function event_handler[grenade_fire] function_6ed5772c(eventstruct) {
    if (!isplayer(self)) {
        return;
    }
    weapon = eventstruct.weapon;
    if (weapon.name == #"hash_7993749c94189bd9") {
        assert(isdefined(self.var_310a3632.var_689f4026));
        var_72c2d810 = self.var_310a3632.var_6164d302;
        if (isdefined(level.klaus) && level flag::get(#"hash_279a97271de2b7e1")) {
            if (function_b864b947(var_72c2d810)) {
                b_valid = level.klaus zodcompanionutility::function_fc7a4f48(var_72c2d810, 1);
            }
            if (is_true(b_valid)) {
                var_52e2c28d = 0;
                if (isdefined(level.var_3537dbe0)) {
                    var_52e2c28d = [[ level.var_3537dbe0 ]](var_72c2d810);
                }
                if (!is_true(var_52e2c28d)) {
                    level.klaus thread function_dec85954("zber_kvo_cmdloc");
                }
            } else {
                level.klaus thread function_dec85954("zber_kvo_invloc");
            }
        }
        if (is_true(b_valid)) {
            self.var_310a3632.mdl_target util::delay(0.1, array("death", #"hash_7adeef9b9b822b42"), &clientfield::set, "" + #"hash_547dd74a97b1fdba", 3);
            self notify(#"hash_7f812cfd98c00a7b");
            if (is_true(self.var_310a3632.var_c40de8a0)) {
                level thread flag::set_for_time(4.33333, #"hash_4b065039d7f1a611");
                self thread zm_equipment::show_hint_text(#"hash_2a5df406bca21527", 3.33333);
                self.var_310a3632.var_c40de8a0 = 0;
            }
            /#
                debugstar(var_72c2d810, 60, (0, 1, 0));
            #/
        } else {
            self notify(#"hash_65d1a61342635458");
            /#
                debugstar(self.var_310a3632.var_689f4026, 60, (1, 0, 0));
            #/
        }
        self.var_310a3632.var_689f4026 = undefined;
        self.var_310a3632.var_6164d302 = undefined;
    }
}

// Namespace namespace_33c196c8/namespace_33c196c8
// Params 1, eflags: 0x2 linked
// Checksum 0xb7b52cb5, Offset: 0x1390
// Size: 0x66
function function_72d0f075(*str_notify) {
    if (isdefined(self.var_ac4c40a8)) {
        slot = self item_inventory::function_e66dcff5(self.var_ac4c40a8);
        self item_world::function_de2018e3(self.var_ac4c40a8, self, slot);
        self.var_ac4c40a8 = undefined;
    }
}

// Namespace namespace_33c196c8/namespace_33c196c8
// Params 1, eflags: 0x2 linked
// Checksum 0xb61e1b85, Offset: 0x1400
// Size: 0x29e
function function_e7136ed2(e_player) {
    if (!isplayer(e_player)) {
        return;
    }
    self notify("633fc05006b4b4e2");
    self endon("633fc05006b4b4e2");
    e_player endon(#"death", #"disconnect");
    e_player endoncallback(&function_72d0f075, #"hash_270df214e38d07c");
    e_player notify(#"hash_480c9c9aa7da8306");
    point = function_4ba8fde(#"hash_7ada82abc5dad90e");
    slot = e_player item_inventory::function_e66dcff5(point);
    item = e_player.inventory.items[slot];
    if (item.itementry.weapon.name === #"hash_7993749c94189bd9") {
        return;
    }
    if (item.itementry.weapon === e_player getcurrentoffhand()) {
        e_player val::set_for_time(0.2, #"hash_7f812cfd98c00a7b", "disable_offhand_weapons", 1);
    }
    if (item.networkid != 32767 && e_player item_inventory::function_c48cd17f(item.networkid) != 32767) {
        while (!e_player item_inventory::remove_inventory_item(item.networkid)) {
            waitframe(1);
        }
        if (isdefined(item.count) && item.count > 0) {
            e_player.var_ac4c40a8 = item;
        }
        waitframe(1);
    }
    e_player val::reset_all(#"hash_7f812cfd98c00a7b");
    profilestart();
    e_player item_world::function_de2018e3(point, e_player, slot);
    e_player function_28a8ddad();
    profilestop();
}

// Namespace namespace_33c196c8/namespace_33c196c8
// Params 1, eflags: 0x2 linked
// Checksum 0x44a66754, Offset: 0x16a8
// Size: 0x266
function function_2d3ad651(e_player) {
    if (!isplayer(e_player)) {
        return;
    }
    self notify("3ce2e75fc4d0d9ea");
    self endon("3ce2e75fc4d0d9ea");
    e_player endon(#"death", #"disconnect", #"hash_480c9c9aa7da8306");
    level thread flag::set_for_time(11, #"hash_4b065039d7f1a611");
    e_player thread zm_equipment::show_hint_text(#"hash_710a20a786d1e08c", 10);
    e_player notify(#"hash_270df214e38d07c");
    point = function_4ba8fde(#"hash_7ada82abc5dad90e");
    slot = e_player item_inventory::function_e66dcff5(point);
    item = e_player.inventory.items[slot];
    if (item.itementry.weapon.name === #"hash_7993749c94189bd9") {
        if (item.itementry.weapon === e_player getcurrentoffhand()) {
            e_player val::set_for_time(0.2, #"hash_e1a1061308a8a71", "disable_offhand_weapons", 1);
        }
        while (!e_player item_inventory::remove_inventory_item(item.networkid)) {
            waitframe(1);
        }
        waitframe(1);
        e_player val::reset_all(#"hash_e1a1061308a8a71");
    } else {
        return;
    }
    profilestart();
    e_player thread function_7128234b();
    e_player function_72d0f075();
    profilestop();
}

/#

    // Namespace namespace_33c196c8/namespace_33c196c8
    // Params 0, eflags: 0x0
    // Checksum 0x244c711, Offset: 0x1918
    // Size: 0x5c
    function function_63a18814() {
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        zm_devgui::add_custom_devgui_callback(&cmd);
    }

    // Namespace namespace_33c196c8/namespace_33c196c8
    // Params 1, eflags: 0x0
    // Checksum 0x21dca8d1, Offset: 0x1980
    // Size: 0x82
    function cmd(cmd) {
        switch (cmd) {
        case #"hash_4b0f351e219eb41b":
            function_605ea132();
            break;
        case #"hash_53a8b6448d2d9f11":
            function_f4e829d6();
            break;
        default:
            break;
        }
    }

    // Namespace namespace_33c196c8/namespace_33c196c8
    // Params 0, eflags: 0x0
    // Checksum 0xc0e6783b, Offset: 0x1a10
    // Size: 0x44
    function function_605ea132() {
        player = getplayers()[0];
        level thread function_e7136ed2(player);
    }

    // Namespace namespace_33c196c8/namespace_33c196c8
    // Params 0, eflags: 0x0
    // Checksum 0xaaf2bddc, Offset: 0x1a60
    // Size: 0x44
    function function_f4e829d6() {
        player = getplayers()[0];
        level thread function_2d3ad651(player);
    }

#/
