// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\scoreevents_shared.gsc;
#using scripts\zm_common\zm_powerups.gsc;
#using scripts\core_common\item_drop.gsc;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\damagefeedback_shared.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_unitrigger.gsc;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm_sq.gsc;
#using script_34ab99a4ca1a43d;
#using scripts\zm_common\zm_devgui.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace namespace_e5670722;

// Namespace namespace_e5670722/namespace_e5670722
// Params 0, eflags: 0x2 linked
// Checksum 0xace83990, Offset: 0x438
// Size: 0x24
function init() {
    init_clientfields();
    function_6269d18d();
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 0, eflags: 0x2 linked
// Checksum 0xba831ddb, Offset: 0x468
// Size: 0xc4
function init_clientfields() {
    clientfield::register("scriptmover", "" + #"hash_193cb3d6820f32c9", 28000, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_b386e95b77069e4", 28000, 1, "int");
    clientfield::register("world", "" + #"pistol_light_on", 28000, 1, "int");
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 0, eflags: 0x2 linked
// Checksum 0xfe0bdab, Offset: 0x538
// Size: 0x2e4
function function_6269d18d() {
    level zm_sq::register(#"hash_4eb39d839fbac7e", #"step_1", #"hash_d0aa01e75614761", &function_4149847c, &function_3247ec3e);
    level zm_sq::register(#"hash_4eb39d839fbac7e", #"step_2", #"hash_d0a9d1e75614248", &function_c7791763, &function_9c0a486d);
    level zm_sq::register(#"hash_697a1a564cb9f416", #"step_1", #"hash_191c8fc93172aae9", &function_386e50d5, &function_414aa194);
    level zm_sq::register(#"hash_697a1a564cb9f416", #"step_2", #"hash_191c8cc93172a5d0", &function_9b1a3790, &function_3001616b);
    level zm_sq::register(#"hash_44e5b04ef86ac1ee", #"step_1", #"hash_7e5758f68b89e171", &function_fcc5783b, &function_2de111f5);
    level zm_sq::register(#"hash_44e5b04ef86ac1ee", #"step_2", #"hash_7e5755f68b89dc58", &function_ca6685bb, &function_ee09dd4e);
    if (!zm_utility::is_ee_enabled()) {
        return;
    }
    level zm_sq::start(#"hash_4eb39d839fbac7e", 1);
    level zm_sq::start(#"hash_697a1a564cb9f416", 1);
    level zm_sq::start(#"hash_44e5b04ef86ac1ee", 1);
    /#
        level thread function_c7f6ffbe();
    #/
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 1, eflags: 0x6 linked
// Checksum 0x14ce8b72, Offset: 0x828
// Size: 0x6e
function private function_6b10f386(w_weapon) {
    w_base_weapon = zm_weapons::get_base_weapon(w_weapon);
    if (isweapon(w_base_weapon)) {
        var_947d01ee = level.zombie_weapons[w_base_weapon].weapon_classname;
        return var_947d01ee;
    }
    return undefined;
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 4, eflags: 0x6 linked
// Checksum 0x1d69d35c, Offset: 0x8a0
// Size: 0x26c
function private function_5c555bdb(var_8e0e7e97, var_6db1f82a, var_484302b2, a_params = undefined) {
    self endon(#"death", #"hash_79917746ae9a28ed");
    while (true) {
        waitresult = self waittill(#"damage");
        if (is_true(self.b_active)) {
            e_attacker = waitresult.attacker;
            if (isplayer(e_attacker) && (!isdefined(var_6db1f82a) || e_attacker == var_6db1f82a)) {
                w_weapon = waitresult.weapon;
                str_weapon_type = function_6b10f386(w_weapon);
                if (var_8e0e7e97 === "smg") {
                    var_fabf88b3 = is_true(str_weapon_type === var_8e0e7e97 || str_weapon_type === "melee");
                } else {
                    var_fabf88b3 = is_true(str_weapon_type === var_8e0e7e97);
                }
                if (var_fabf88b3) {
                    self playsound(#"hash_3274951195522bc0");
                    if (isdefined(e_attacker) && isdefined(self) && !is_true(self.var_265cb589) && !is_true(level.var_dc60105c) && damagefeedback::dodamagefeedback(w_weapon, e_attacker)) {
                        e_attacker thread damagefeedback::update(waitresult.mod, waitresult.inflictor, undefined, w_weapon, self);
                    }
                    self thread activate_target(0);
                    if (isdefined(var_484302b2)) {
                        self [[ var_484302b2 ]](e_attacker, a_params);
                    }
                }
            }
        }
    }
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 1, eflags: 0x6 linked
// Checksum 0x838b2154, Offset: 0xb18
// Size: 0x5e
function private init_target(var_698f45e4) {
    self ghost();
    self setforcenocull();
    self.allowdeath = 0;
    self.b_active = 0;
    self.s_spawn = var_698f45e4;
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 2, eflags: 0x6 linked
// Checksum 0xbc5a025c, Offset: 0xb80
// Size: 0x4dc
function private activate_target(b_active = 0, n_delay = undefined) {
    self notify("66bb767edbc7cc03");
    self endon("66bb767edbc7cc03");
    self endon(#"death");
    if (self.b_active === b_active) {
        return;
    }
    if (!isdefined(self.s_spawn)) {
        return;
    }
    if (isdefined(n_delay) && n_delay > 0) {
        wait(n_delay);
    }
    self.b_active = b_active;
    v_angles = self.s_spawn.angles;
    if (isvec(self.s_spawn.var_34d18a7a)) {
        var_34d18a7a = self.s_spawn.var_34d18a7a;
        /#
            iprintlnbold("<unknown string>");
        #/
    } else {
        var_34d18a7a = (0, 0, 60);
    }
    if (b_active) {
        v_dest = self.s_spawn.origin;
        self ghost();
        util::wait_network_frame();
        self dontinterpolate();
        if (!isdefined(self.s_spawn.var_d6118311) || self.s_spawn.var_d6118311 != "flip_up") {
            self.origin = self.s_spawn.origin - var_34d18a7a;
        }
        util::wait_network_frame();
        self show();
        if (is_true(self.s_spawn.var_d7daf34f)) {
            self thread function_b50370f6(isdefined(self.s_spawn.var_2c4d5a05) ? self.s_spawn.var_2c4d5a05 : undefined);
        }
    } else if (self.s_spawn.var_d6118311 === "flip_up") {
        v_angles = (v_angles[0], v_angles[1], v_angles[2] - 90);
    } else {
        v_dest = self.origin - var_34d18a7a;
    }
    if (b_active) {
        if (is_true(self.s_spawn.var_e845250)) {
            self clientfield::set("" + #"hash_b386e95b77069e4", 1);
        }
    }
    self setcandamage(b_active);
    if (b_active) {
        self playsound(#"hash_2ba42e10437f5fe9");
    } else {
        self stopsound(#"hash_2ba42e10437f5fe9");
        self stopsound(#"hash_2753ef8c37c57068");
    }
    if (self.s_spawn.var_d6118311 === "flip_up") {
        self rotateroll(v_angles[2] - self.angles[2], 0.3);
    } else {
        self moveto(v_dest, 0.5);
    }
    self waittilltimeout(0.5, #"movedone");
    if (!b_active) {
        if (is_true(self.s_spawn.var_e845250)) {
            self clientfield::set("" + #"hash_b386e95b77069e4", 0);
        }
    }
    self dontinterpolate();
    util::wait_network_frame();
    if (!b_active) {
        self ghost();
    }
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 2, eflags: 0x2 linked
// Checksum 0x600d461b, Offset: 0x1068
// Size: 0x18e
function function_db3d8ac(mdl_target, var_d8f1c196) {
    mdl_target endon(#"death", #"hash_7eaa0599b7552fad");
    mdl_target activate_target(1, var_d8f1c196.delay);
    if (isdefined(var_d8f1c196.target)) {
        var_411cc8d4 = struct::get(var_d8f1c196.target, "targetname");
        assert(isdefined(var_411cc8d4));
        n_move_time = var_d8f1c196.move_time;
        if (!isdefined(n_move_time) || n_move_time <= 0) {
            n_move_time = 0.1;
        }
        mdl_target moveto(var_411cc8d4.origin, n_move_time);
        wait(n_move_time);
        mdl_target playsound(#"hash_573eeda95b9d883a");
        var_381607ae = var_411cc8d4.var_c833bf96;
    } else {
        var_381607ae = var_d8f1c196.var_c833bf96;
    }
    mdl_target activate_target(0, var_381607ae);
    if (isdefined(self)) {
        self notify(#"hash_6a9356013dd27e58");
    }
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 2, eflags: 0x2 linked
// Checksum 0x779f9fbf, Offset: 0x1200
// Size: 0xb0
function function_3018008e(e_player, e_trigger) {
    if (isplayer(e_player)) {
        level scoreevents::doscoreeventcallback("scoreEventZM", {#attacker:e_player, #scoreevent:#"hash_93c1524520f5882", #enemy:self});
    }
    self notify(#"hash_7eaa0599b7552fad");
    e_trigger notify(#"hash_7973087e9bdd4725");
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 2, eflags: 0x2 linked
// Checksum 0x58f97171, Offset: 0x12b8
// Size: 0x272
function function_31183ec4(e_player, var_b3dbe6aa) {
    level endon(#"end_game");
    e_player endon(#"death");
    while (e_player isfiring()) {
        waitframe(1);
    }
    w_current_weapon = e_player getcurrentweapon();
    e_item = e_player item_inventory::function_230ceec4(w_current_weapon);
    if (isdefined(e_player)) {
        if (isdefined(e_item.itementry.rarity)) {
            switch (e_item.itementry.rarity) {
            case #"legendary":
                point = function_4ba8fde(#"hash_69a628368f8263f");
                item_drop::drop_item(0, undefined, 1, 0, point.id, var_b3dbe6aa.origin, var_b3dbe6aa.angles, 2);
                waitframe(1);
                break;
            case #"epic":
                e_player zm_weapons::function_17e9ed37(#"legendary");
                break;
            case #"rare":
                e_player zm_weapons::function_17e9ed37(#"epic");
                break;
            case #"uncommon":
                e_player zm_weapons::function_17e9ed37(#"rare");
                break;
            case #"resource":
                e_player zm_weapons::function_17e9ed37(#"uncommon");
                break;
            case #"loadout":
                e_player zm_weapons::function_17e9ed37(#"uncommon");
                break;
            }
        }
    }
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 1, eflags: 0x4
// Checksum 0xe034b672, Offset: 0x1538
// Size: 0x24
function private function_1cfbcd48(b_active) {
    self setcandamage(b_active);
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 1, eflags: 0x4
// Checksum 0x45525e70, Offset: 0x1568
// Size: 0x5e
function private function_9dee84f(var_698f45e4) {
    self show();
    self setforcenocull();
    self.allowdeath = 0;
    self.b_active = 0;
    self.s_spawn = var_698f45e4;
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 5, eflags: 0x2 linked
// Checksum 0xedd6724, Offset: 0x15d0
// Size: 0x234
function function_c1bb3b65(*var_ebcbedc1, *var_86690ce9, str_weapon_type, var_bc3709b9, var_13fcd7d6) {
    level endon(#"end_game");
    if (isdefined(str_weapon_type)) {
        switch (str_weapon_type) {
        case #"smg":
            level.var_a76f0ecf = undefined;
            var_f0480b84 = #"hash_3935e5f9f62638a9";
            break;
        case #"pistol":
            level.var_9c6cf8c = undefined;
            var_f0480b84 = #"hash_1c407c39d0df508f";
            break;
        case #"sniper":
            level.var_d352f703 = undefined;
            var_f0480b84 = #"hash_2ee9d427cbd6bd9";
            break;
        default:
            return 0;
        }
    }
    var_d1792325 = util::spawn_model(var_f0480b84, var_bc3709b9.origin, var_bc3709b9.angles);
    if (isdefined(var_13fcd7d6)) {
        var_13fcd7d6.var_47d5eea1 = str_weapon_type;
        var_13fcd7d6 zm_unitrigger::create(&function_671ac503, 32, &function_66e02dca);
    } else {
        var_d1792325.var_47d5eea1 = str_weapon_type;
        var_d1792325 zm_unitrigger::create(&function_671ac503, 80, &function_66e02dca);
    }
    level waittill("player_finish_" + str_weapon_type + "_intro_step");
    if (isdefined(var_d1792325)) {
        playsoundatposition(#"hash_38b49dbc108cca56", var_d1792325.origin);
        var_d1792325 delete();
    }
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 1, eflags: 0x2 linked
// Checksum 0xe6a04463, Offset: 0x1810
// Size: 0x94
function function_671ac503(e_player) {
    if (isdefined(e_player)) {
        if (!isdefined(self.stub.related_parent)) {
            return 0;
        }
        s_parent = self.stub.related_parent;
        var_5168e40f = e_player zm_utility::is_player_looking_at(s_parent.origin, 0.7, 1);
        return is_true(var_5168e40f);
    }
    return 0;
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 0, eflags: 0x2 linked
// Checksum 0x604f3969, Offset: 0x18b0
// Size: 0x1a4
function function_66e02dca() {
    level endon(#"end_game");
    if (!isdefined(self.stub.related_parent)) {
        return 0;
    }
    s_parent = self.stub.related_parent;
    while (true) {
        waitresult = self waittill(#"trigger");
        e_player = waitresult.activator;
        w_current_weapon = e_player getcurrentweapon();
        var_357fa910 = function_6b10f386(w_current_weapon);
        if (s_parent.var_47d5eea1 === var_357fa910) {
            switch (var_357fa910) {
            case #"smg":
                level.var_a76f0ecf = e_player;
                break;
            case #"pistol":
                level.var_9c6cf8c = e_player;
                break;
            case #"sniper":
                level.var_d352f703 = e_player;
                break;
            }
            level notify("player_finish_" + var_357fa910 + "_intro_step");
            if (isdefined(self.stub)) {
                zm_unitrigger::unregister_unitrigger(self.stub);
            }
            break;
        }
    }
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 1, eflags: 0x2 linked
// Checksum 0x13275e98, Offset: 0x1a60
// Size: 0x8c
function function_9af0ace6(str_weapon_type) {
    level endon(#"end_game");
    self endon(#"hash_171ccedffc06b5e", #"death");
    waitresult = self waittill(#"hash_6a9356013dd27e58");
    level flag::set(str_weapon_type + "_shooting_quest_failed");
}

/#

    // Namespace namespace_e5670722/namespace_e5670722
    // Params 0, eflags: 0x0
    // Checksum 0xd770377e, Offset: 0x1af8
    // Size: 0xa4
    function function_c7f6ffbe() {
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        zm_devgui::add_custom_devgui_callback(&devgui_cmd);
    }

    // Namespace namespace_e5670722/namespace_e5670722
    // Params 1, eflags: 0x0
    // Checksum 0xad00d616, Offset: 0x1ba8
    // Size: 0x432
    function devgui_cmd(cmd) {
        switch (cmd) {
        case #"hash_6175a63affa54542":
            var_4f18b78d = struct::get_array("<unknown string>", "<unknown string>");
            foreach (var_17aa01a8 in var_4f18b78d) {
                circle(var_17aa01a8.origin, 10, (0, 0, 1), 0, 0, 100);
            }
            break;
        case #"hash_138254d067e7c768":
            if (level flag::get_any([#"hash_333ae351d01741c7", #"hash_29f75f50c70f99c5"])) {
                level flag::set(#"hash_cf267d3414df1a0");
                level thread function_4149847c();
            } else {
                iprintlnbold("<unknown string>");
            }
            break;
        case #"hash_59553683c00d62f6":
            if (isdefined(level flag::get(#"hash_aa416b9e4b5beaf"))) {
                level flag::clear(#"hash_aa416b9e4b5beaf");
            }
            if (isdefined(level flag::get(#"hash_52f25b6d74f50b3d"))) {
                level flag::clear(#"hash_52f25b6d74f50b3d");
            }
            level flag::set(#"hash_77fc8d99d35bea8");
            level thread function_386e50d5();
            break;
        case #"hash_7359a05feb8c82a4":
            if (isdefined(level flag::get(#"hash_7f73d56a614ce047"))) {
                level flag::clear(#"hash_7f73d56a614ce047");
            }
            if (isdefined(level flag::get(#"hash_6930683ef14e9445"))) {
                level flag::clear(#"hash_6930683ef14e9445");
            }
            level flag::set(#"hash_19dcf958928fa920");
            level thread function_fcc5783b();
            break;
        case #"shooting_gallery_easy_mode":
            if (level flag::get(#"shooting_gallery_easy_mode")) {
                level flag::clear(#"shooting_gallery_easy_mode");
                /#
                    iprintlnbold("<unknown string>");
                #/
            } else {
                level flag::set(#"shooting_gallery_easy_mode");
                /#
                    iprintlnbold("<unknown string>");
                #/
            }
            break;
        }
    }

#/

// Namespace namespace_e5670722/namespace_e5670722
// Params 0, eflags: 0x2 linked
// Checksum 0x131a812e, Offset: 0x1fe8
// Size: 0x41c
function function_4149847c() {
    level endon(#"end_game");
    /#
        iprintlnbold("<unknown string>");
    #/
    level flag::clear(#"hash_333ae351d01741c7");
    level flag::clear(#"hash_29f75f50c70f99c5");
    level flag::clear(#"hash_4fb85514c23b64ac");
    var_ebcbedc1 = getent("sniper_folder_nearby_area", "targetname");
    var_bc3709b9 = struct::get("s_sniper_shoot_folder", "targetname");
    var_f11dbcc5 = struct::get("s_sniper_folder_trigger", "targetname");
    level thread function_c1bb3b65(var_ebcbedc1, var_ebcbedc1, "sniper", var_bc3709b9, var_f11dbcc5);
    level waittill(#"hash_5f47f6e344b29894");
    level flag::set(#"hash_709701a349515bd7");
    var_17aa01a8 = struct::get("sniper_shoot_start_trigger", "targetname");
    var_356856d6 = util::spawn_model(#"hash_5fc40e47dd99a53f", var_17aa01a8.origin - (0, 0, 60), var_17aa01a8.angles);
    var_356856d6 init_target(var_17aa01a8);
    var_356856d6 thread function_5c555bdb("sniper", level.var_d352f703, &function_5eb556a3);
    var_356856d6 thread function_db3d8ac(var_356856d6, var_17aa01a8);
    var_356856d6 thread function_9af0ace6("sniper");
    level flag::wait_till_any([#"hash_333ae351d01741c7", #"hash_29f75f50c70f99c5"]);
    level flag::clear(#"hash_709701a349515bd7");
    waitframe(1);
    if (isdefined(var_356856d6)) {
        var_356856d6 notify(#"hash_79917746ae9a28ed");
        if (isarray(var_356856d6.a_targets)) {
            foreach (e_target in var_356856d6.a_targets) {
                if (isdefined(e_target)) {
                    e_target notify(#"hash_7eaa0599b7552fad");
                    e_target delete();
                }
            }
        }
        var_356856d6 delete();
    }
    if (level flag::get(#"hash_cf267d3414df1a0") && level flag::get(#"hash_333ae351d01741c7")) {
        level thread function_c7791763();
    }
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 2, eflags: 0x2 linked
// Checksum 0xc7f7db7b, Offset: 0x2410
// Size: 0x1dc
function function_5eb556a3(e_player, *a_params) {
    level endon(#"end_game");
    self endon(#"death");
    self notify(#"hash_171ccedffc06b5e");
    self notify(#"hash_7eaa0599b7552fad");
    level scoreevents::doscoreeventcallback("scoreEventZM", {#attacker:a_params, #scoreevent:#"hash_93c1524520f5882", #enemy:self});
    level flag::set(#"hash_4fb85514c23b64ac");
    a_params val::set("shooting_gallery_ignore", "ignoreme", 1);
    b_complete = self function_bc22215d(a_params);
    level flag::clear(#"hash_4fb85514c23b64ac");
    if (isdefined(a_params)) {
        a_params val::reset("shooting_gallery_ignore", "ignoreme");
    }
    if (is_true(b_complete)) {
        level flag::set(#"hash_333ae351d01741c7");
        return;
    }
    level flag::set(#"hash_29f75f50c70f99c5");
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 2, eflags: 0x2 linked
// Checksum 0x68ccf840, Offset: 0x25f8
// Size: 0x2e8
function function_d052dc1f(e_player, var_24b25ceb) {
    level endon(#"end_game", #"hash_3468de611868b8db");
    self endon(#"death");
    if (!isplayer(e_player)) {
        return 0;
    }
    e_player endon(#"death", #"disconnect");
    self.a_targets = [];
    var_24b25ceb = function_70ddbae9(var_24b25ceb);
    if (!isdefined(var_24b25ceb)) {
        return 0;
    }
    foreach (index, var_d8f1c196 in var_24b25ceb) {
        if (index != 0) {
            if (isfloat(var_d8f1c196.n_interval) && var_d8f1c196.n_interval > 0) {
                wait(var_d8f1c196.n_interval);
            }
        }
        if (var_d8f1c196.var_d6118311 === "flip_up") {
            mdl_target = util::spawn_model(#"hash_5fc40e47dd99a53f", var_d8f1c196.origin, var_d8f1c196.angles - (0, 0, 90));
        } else {
            mdl_target = util::spawn_model(#"hash_5fc40e47dd99a53f", var_d8f1c196.origin - (0, 0, 60), var_d8f1c196.angles);
        }
        mdl_target init_target(var_d8f1c196);
        mdl_target thread function_5c555bdb("sniper", e_player, &function_3018008e, self);
        self thread function_db3d8ac(mdl_target, var_d8f1c196);
        if (!isdefined(self.a_targets)) {
            self.a_targets = [];
        } else if (!isarray(self.a_targets)) {
            self.a_targets = array(self.a_targets);
        }
        self.a_targets[self.a_targets.size] = mdl_target;
    }
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 1, eflags: 0x6 linked
// Checksum 0x45c7b746, Offset: 0x28e8
// Size: 0x4ce
function private function_70ddbae9(var_24b25ceb) {
    if (!isarray(var_24b25ceb)) {
        return undefined;
    }
    foreach (var_7504fc9c in var_24b25ceb) {
        if (isint(var_7504fc9c.var_3a44f31c)) {
            if (var_7504fc9c.var_3a44f31c > var_24b25ceb.size || var_7504fc9c.var_3a44f31c < 1) {
                return array::randomize(var_24b25ceb);
            }
            foreach (var_35218781 in var_24b25ceb) {
                if (isint(var_35218781.var_3a44f31c)) {
                    if (var_7504fc9c != var_35218781 && var_7504fc9c.var_3a44f31c == var_35218781.var_3a44f31c) {
                        return array::randomize(var_24b25ceb);
                    }
                }
            }
        }
    }
    var_373487a5 = [];
    var_11b7af09 = [];
    foreach (var_7504fc9c in var_24b25ceb) {
        if (!isint(var_7504fc9c.var_3a44f31c)) {
            if (!isdefined(var_373487a5)) {
                var_373487a5 = [];
            } else if (!isarray(var_373487a5)) {
                var_373487a5 = array(var_373487a5);
            }
            var_373487a5[var_373487a5.size] = var_7504fc9c;
            continue;
        }
        if (!isdefined(var_11b7af09)) {
            var_11b7af09 = [];
        } else if (!isarray(var_11b7af09)) {
            var_11b7af09 = array(var_11b7af09);
        }
        var_11b7af09[var_11b7af09.size] = var_7504fc9c;
    }
    a_result = [];
    for (i = 0; i < var_24b25ceb.size; i++) {
        foreach (var_ce14174d in var_11b7af09) {
            if (var_ce14174d.var_3a44f31c === i + 1) {
                if (!isdefined(a_result)) {
                    a_result = [];
                } else if (!isarray(a_result)) {
                    a_result = array(a_result);
                }
                a_result[a_result.size] = var_ce14174d;
                break;
            }
        }
        if (a_result.size < i + 1) {
            var_e083ecbd = randomint(var_373487a5.size);
            var_b0f6c694 = var_373487a5[var_e083ecbd];
            if (!isdefined(var_b0f6c694)) {
                /#
                    iprintlnbold("<unknown string>" + var_b0f6c694);
                #/
            }
            arrayremoveindex(var_373487a5, var_e083ecbd);
            if (!isdefined(a_result)) {
                a_result = [];
            } else if (!isarray(a_result)) {
                a_result = array(a_result);
            }
            a_result[a_result.size] = var_b0f6c694;
        }
    }
    return a_result;
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 2, eflags: 0x2 linked
// Checksum 0x2d9cac78, Offset: 0x2dc0
// Size: 0x14e
function function_2c660cd2(e_player, var_24b25ceb) {
    level endon(#"end_game");
    if (!isplayer(e_player)) {
        return false;
    }
    e_player endon(#"death", #"disconnect");
    var_77ba553d = var_24b25ceb.size;
    var_3d23ecc = 0;
    self thread function_d052dc1f(e_player, var_24b25ceb);
    while (var_3d23ecc < var_77ba553d) {
        waitresult = self waittill(#"hash_7973087e9bdd4725", #"hash_6a9356013dd27e58");
        if (waitresult._notify === #"hash_7973087e9bdd4725") {
            var_3d23ecc++;
            continue;
        }
        if (level flag::get("shooting_gallery_easy_mode")) {
            var_3d23ecc++;
            continue;
        }
        level notify(#"hash_3468de611868b8db");
        break;
    }
    return var_3d23ecc == var_77ba553d;
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 1, eflags: 0x2 linked
// Checksum 0xae6d4737, Offset: 0x2f18
// Size: 0x328
function function_bc22215d(e_player) {
    level endon(#"end_game");
    self endon(#"death");
    /#
        n_player = e_player getentnum();
        iprintlnbold("<unknown string>" + n_player + "<unknown string>");
    #/
    b_complete = 0;
    n_round = 1;
    while (isplayer(e_player)) {
        var_24b25ceb = struct::get_array("sniper_target_start_" + n_round, "targetname");
        var_77ba553d = var_24b25ceb.size;
        if (var_77ba553d == 0) {
            if (n_round > 1) {
                b_complete = 1;
            }
            break;
        }
        if (n_round > 1) {
            wait(5);
        }
        var_10130e45 = self function_2c660cd2(e_player, var_24b25ceb);
        foreach (e_target in self.a_targets) {
            if (isdefined(e_target)) {
                e_target notify(#"hash_7eaa0599b7552fad");
                e_target thread activate_target(0);
            }
        }
        wait(0.3);
        foreach (e_target in self.a_targets) {
            if (isdefined(e_target)) {
                e_target delete();
            }
        }
        if (is_true(var_10130e45)) {
            n_round++;
            /#
                iprintlnbold("<unknown string>" + n_round + "<unknown string>");
            #/
            continue;
        }
        /#
            iprintlnbold("<unknown string>" + n_round + "<unknown string>");
        #/
        break;
    }
    /#
        iprintlnbold("<unknown string>");
    #/
    return b_complete;
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 1, eflags: 0x2 linked
// Checksum 0x17c73e55, Offset: 0x3248
// Size: 0x74
function function_b50370f6(var_2c4d5a05) {
    self endon(#"hash_7eaa0599b7552fad");
    if (isdefined(var_2c4d5a05) && var_2c4d5a05 > 0) {
        wait(var_2c4d5a05);
    }
    if (isdefined(self)) {
        self clientfield::set("" + #"hash_193cb3d6820f32c9", 1);
    }
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 2, eflags: 0x2 linked
// Checksum 0xf639028, Offset: 0x32c8
// Size: 0x14
function function_3247ec3e(*var_a276c861, *var_19e802fa) {
    
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 0, eflags: 0x2 linked
// Checksum 0x453c30aa, Offset: 0x32e8
// Size: 0x124
function function_c7791763() {
    var_b3dbe6aa = getent("sniper_folder_above_area", "targetname");
    if (level flag::get(#"hash_29f75f50c70f99c5")) {
        playsoundatposition(#"hash_41f370ee19a5ddc1", var_b3dbe6aa.origin);
    } else {
        /#
            iprintlnbold("<unknown string>");
        #/
        playsoundatposition(#"hash_6742a6bf8c87fa0c", var_b3dbe6aa.origin);
        level thread function_31183ec4(level.var_d352f703, var_b3dbe6aa);
    }
    if (level flag::get(#"hash_cf267d3414df1a0")) {
        level flag::clear(#"hash_cf267d3414df1a0");
    }
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 2, eflags: 0x2 linked
// Checksum 0x2c81504b, Offset: 0x3418
// Size: 0x14
function function_9c0a486d(*var_a276c861, *var_19e802fa) {
    
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 0, eflags: 0x2 linked
// Checksum 0xfedd6aa6, Offset: 0x3438
// Size: 0x3dc
function function_386e50d5() {
    level endon(#"end_game");
    var_84644c81 = getent("smg_shooting_area", "targetname");
    var_9a8dcfd1 = struct::get_array("smg_shoot_start_trigger", "targetname");
    var_bc3709b9 = struct::get("s_smg_shoot_start", "targetname");
    flag::wait_till("connect_pizza_parlor");
    level thread function_c1bb3b65(var_84644c81, var_84644c81, "smg", var_bc3709b9);
    level waittill(#"hash_213b29299f578f24");
    level flag::set(#"hash_709701a349515bd7");
    var_17aa01a8 = function_10079b27(var_9a8dcfd1, 1)[0];
    var_356856d6 = util::spawn_model(#"hash_5fc40e47dd99a53f", var_17aa01a8.origin, var_17aa01a8.angles);
    var_356856d6.e_area = var_84644c81;
    var_356856d6 init_target(var_17aa01a8);
    var_356856d6 thread function_5c555bdb("smg", level.var_a76f0ecf, &function_95b8c137);
    var_356856d6 thread function_db3d8ac(var_356856d6, var_17aa01a8);
    var_356856d6 thread function_9af0ace6("smg");
    level flag::wait_till_any([#"hash_aa416b9e4b5beaf", #"hash_52f25b6d74f50b3d"]);
    level flag::clear(#"hash_709701a349515bd7");
    level.var_a76f0ecf val::reset("shooting_gallery_ignore", "ignoreme");
    var_356856d6 notify(#"hash_79917746ae9a28ed");
    if (isarray(var_356856d6.a_targets)) {
        foreach (e_target in var_356856d6.a_targets) {
            if (isdefined(e_target)) {
                e_target notify(#"hash_7eaa0599b7552fad");
            }
            if (isdefined(e_target)) {
                e_target delete();
            }
        }
    }
    if (isdefined(var_356856d6)) {
        var_356856d6 delete();
    }
    if (level flag::get(#"hash_77fc8d99d35bea8") && level flag::get(#"hash_aa416b9e4b5beaf")) {
        level thread function_9b1a3790();
    }
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 2, eflags: 0x2 linked
// Checksum 0x2ad41cab, Offset: 0x3820
// Size: 0x26c
function function_95b8c137(e_player, *a_params) {
    level endon(#"end_game");
    self endon(#"death");
    if (isdefined(a_params)) {
        self notify(#"hash_171ccedffc06b5e");
        self notify(#"hash_7eaa0599b7552fad");
        level scoreevents::doscoreeventcallback("scoreEventZM", {#attacker:a_params, #scoreevent:#"hash_93c1524520f5882", #enemy:self});
        a_params val::set("shooting_gallery_ignore", "ignoreme", 1);
        wait(3);
        a_params endoncallback(&function_1bdc1402, #"death");
        self flag::set(#"hash_5422d37665a74906");
        level thread flag::delay_set(100, #"hash_52f25b6d74f50b3d", #"hash_aa416b9e4b5beaf");
        b_complete = self function_75dd0e2a(a_params);
        a_params val::reset("shooting_gallery_ignore", "ignoreme");
        if (is_true(b_complete)) {
            level flag::set(#"hash_aa416b9e4b5beaf");
            return;
        }
        level flag::set(#"hash_52f25b6d74f50b3d");
        if (isdefined(self.e_area.origin)) {
            playsoundatposition(#"hash_41f370ee19a5ddc1", self.e_area.origin);
        }
    }
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 1, eflags: 0x2 linked
// Checksum 0x8c774f04, Offset: 0x3a98
// Size: 0x54
function function_1bdc1402(*str_notify) {
    level flag::set(#"hash_52f25b6d74f50b3d");
    self val::reset("shooting_gallery_ignore", "ignoreme");
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 5, eflags: 0x2 linked
// Checksum 0x31206d33, Offset: 0x3af8
// Size: 0x70a
function function_d6ee3b1d(e_player, var_24b25ceb, var_ae876f40, var_eb891a8f, n_round) {
    level endon(#"end_game");
    if (!isplayer(e_player)) {
        return;
    }
    e_player endon(#"death", #"disconnect");
    var_be926cd2 = var_24b25ceb.size - 1;
    switch (n_round) {
    case 2:
        var_be926cd2 = 4;
        break;
    case 4:
        var_be926cd2 = var_24b25ceb.size;
        break;
    }
    var_24b25ceb = array::randomize(var_24b25ceb);
    var_77ba553d = var_24b25ceb.size;
    var_3d23ecc = 0;
    var_2dca6148 = 0;
    self.a_targets = [];
    foreach (var_d8f1c196 in var_24b25ceb) {
        if (var_d8f1c196.var_d6118311 === "flip_up") {
            mdl_target = util::spawn_model(#"hash_5fc40e47dd99a53f", var_d8f1c196.origin, var_d8f1c196.angles - (0, 0, 90));
        } else {
            mdl_target = util::spawn_model(#"hash_5fc40e47dd99a53f", var_d8f1c196.origin - (0, 0, 60), var_d8f1c196.angles);
        }
        mdl_target init_target(var_d8f1c196);
        mdl_target thread function_5c555bdb("smg", e_player, &function_3018008e, self);
        if (n_round == 2 || n_round == 4 || n_round == 5 || n_round == 7) {
            self thread function_db3d8ac(mdl_target, var_d8f1c196);
        } else {
            self thread function_74afe29f(mdl_target, var_d8f1c196);
        }
        if (!isdefined(self.a_targets)) {
            self.a_targets = [];
        } else if (!isarray(self.a_targets)) {
            self.a_targets = array(self.a_targets);
        }
        self.a_targets[self.a_targets.size] = mdl_target;
    }
    if (isdefined(var_ae876f40) && isdefined(var_eb891a8f)) {
        var_ae876f40 = array::randomize(var_ae876f40);
        var_77ba553d = var_24b25ceb.size + var_ae876f40.size;
        level thread flag::delay_set(7, #"hash_34e9dd8e7a192fac", #"hash_2fe493ce31962394");
        while (!level flag::get(#"hash_34e9dd8e7a192fac")) {
            if (e_player istouching(var_eb891a8f)) {
                level flag::set(#"hash_2fe493ce31962394");
                foreach (var_d8f1c196 in var_ae876f40) {
                    if (var_d8f1c196.var_d6118311 === "flip_up") {
                        mdl_target = util::spawn_model(#"hash_5fc40e47dd99a53f", var_d8f1c196.origin, var_d8f1c196.angles - (0, 0, 90));
                    } else {
                        mdl_target = util::spawn_model(#"hash_5fc40e47dd99a53f", var_d8f1c196.origin - (0, 0, 60), var_d8f1c196.angles);
                    }
                    mdl_target init_target(var_d8f1c196);
                    mdl_target thread function_5c555bdb("smg", e_player, &function_3018008e, self);
                    if (n_round == 5) {
                        self thread function_db3d8ac(mdl_target, var_d8f1c196);
                    } else {
                        self thread function_74afe29f(mdl_target, var_d8f1c196);
                    }
                    if (!isdefined(self.a_targets)) {
                        self.a_targets = [];
                    } else if (!isarray(self.a_targets)) {
                        self.a_targets = array(self.a_targets);
                    }
                    self.a_targets[self.a_targets.size] = mdl_target;
                }
                break;
            }
            waitframe(1);
        }
    }
    while (var_3d23ecc < var_77ba553d) {
        waitresult = self waittill(#"hash_7973087e9bdd4725", #"hash_6a9356013dd27e58");
        if (waitresult._notify === #"hash_7973087e9bdd4725") {
            var_3d23ecc++;
            continue;
        }
        if (level flag::get(#"shooting_gallery_easy_mode")) {
            var_3d23ecc++;
            continue;
        }
        playsoundatposition(#"hash_41f370ee19a5ddc1", self.e_area.origin);
        break;
    }
    return var_3d23ecc == var_77ba553d;
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 1, eflags: 0x2 linked
// Checksum 0xdfa793ce, Offset: 0x4210
// Size: 0x3d0
function function_75dd0e2a(e_player) {
    level endon(#"end_game");
    self endon(#"death");
    /#
        n_player = e_player getentnum();
        iprintlnbold("<unknown string>" + n_player + "<unknown string>");
    #/
    b_complete = 0;
    n_round = 1;
    while (isplayer(e_player)) {
        var_24b25ceb = struct::get_array("smg_target_start_" + n_round, "targetname");
        var_ae876f40 = struct::get_array("smg_sensitive_start_" + n_round, "targetname");
        var_eb891a8f = getent("smg_trigger_area_" + n_round, "targetname");
        var_77ba553d = var_24b25ceb.size + var_ae876f40.size;
        if (var_77ba553d == 0) {
            if (n_round > 1) {
                b_complete = 1;
            }
            break;
        }
        if (n_round > 1) {
            wait(0);
        }
        var_10130e45 = self function_d6ee3b1d(e_player, var_24b25ceb, var_ae876f40, var_eb891a8f, n_round);
        foreach (e_target in self.a_targets) {
            e_target notify(#"hash_7eaa0599b7552fad");
            e_target thread activate_target(0);
        }
        wait(0.3);
        foreach (e_target in self.a_targets) {
            if (isdefined(e_target)) {
                e_target delete();
            }
        }
        if (is_true(var_10130e45)) {
            /#
                iprintlnbold("<unknown string>" + n_round + "<unknown string>");
            #/
            n_round++;
            continue;
        }
        /#
            iprintlnbold("<unknown string>" + n_round + "<unknown string>");
        #/
        if (level flag::get(#"hash_34e9dd8e7a192fac")) {
            level thread function_c104ac5c(e_player, n_round);
        }
        break;
    }
    /#
        iprintlnbold("<unknown string>");
    #/
    return b_complete;
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 2, eflags: 0x2 linked
// Checksum 0x6e08df39, Offset: 0x45e8
// Size: 0x1bc
function function_c104ac5c(e_player, n_round) {
    level endon(#"end_game");
    wait(3);
    var_24b25ceb = struct::get_array("smg_target_start_" + n_round, "targetname");
    var_ae876f40 = struct::get_array("smg_sensitive_start_" + n_round, "targetname");
    var_eb891a8f = getent("smg_trigger_area_" + n_round, "targetname");
    var_77ba553d = var_24b25ceb.size + var_ae876f40.size;
    self function_10418fa8(e_player, var_24b25ceb, var_ae876f40, var_eb891a8f, n_round);
    wait(5);
    if (isdefined(self.a_targets)) {
        foreach (e_target in self.a_targets) {
            if (isdefined(e_target)) {
                e_target delete();
            }
        }
    }
    level flag::clear(#"hash_34e9dd8e7a192fac");
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 5, eflags: 0x2 linked
// Checksum 0x60cbc1b0, Offset: 0x47b0
// Size: 0x426
function function_10418fa8(e_player, var_24b25ceb, var_ae876f40, var_eb891a8f, n_round) {
    level endon(#"end_game");
    if (!isplayer(e_player)) {
        return;
    }
    e_player endon(#"death", #"disconnect");
    var_be926cd2 = var_24b25ceb.size - 1;
    switch (n_round) {
    case 2:
        var_be926cd2 = 4;
        break;
    case 4:
        var_be926cd2 = var_24b25ceb.size;
        break;
    }
    var_24b25ceb = array::randomize(var_24b25ceb);
    var_77ba553d = var_24b25ceb.size;
    var_3d23ecc = 0;
    var_2dca6148 = 0;
    self.a_targets = [];
    if (isdefined(var_ae876f40) && isdefined(var_eb891a8f)) {
        var_ae876f40 = array::randomize(var_ae876f40);
        var_77ba553d = var_24b25ceb.size + var_ae876f40.size;
        var_24b25ceb = arraycombine(var_24b25ceb, var_ae876f40, 0, 0);
    }
    foreach (var_d8f1c196 in var_24b25ceb) {
        if (var_d8f1c196.var_d6118311 === "flip_up") {
            mdl_target = util::spawn_model(#"hash_5fc40e47dd99a53f", var_d8f1c196.origin, var_d8f1c196.angles - (0, 0, 90));
        } else {
            mdl_target = util::spawn_model(#"hash_5fc40e47dd99a53f", var_d8f1c196.origin - (0, 0, 60), var_d8f1c196.angles);
        }
        mdl_target init_target(var_d8f1c196);
        if (n_round == 2 || n_round == 4 || n_round == 5 || n_round == 7) {
            self thread function_db3d8ac(mdl_target, var_d8f1c196);
        } else {
            self thread function_74afe29f(mdl_target, var_d8f1c196);
        }
        if (!isdefined(self.a_targets)) {
            self.a_targets = [];
        } else if (!isarray(self.a_targets)) {
            self.a_targets = array(self.a_targets);
        }
        self.a_targets[self.a_targets.size] = mdl_target;
    }
    while (var_3d23ecc < var_77ba553d) {
        waitresult = self waittill(#"hash_7973087e9bdd4725", #"hash_6a9356013dd27e58");
        if (waitresult._notify === #"hash_7973087e9bdd4725") {
            var_3d23ecc++;
            continue;
        }
        if (level flag::get(#"shooting_gallery_easy_mode")) {
            var_3d23ecc++;
            continue;
        }
        break;
    }
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 2, eflags: 0x2 linked
// Checksum 0x215f4008, Offset: 0x4be0
// Size: 0x14
function function_414aa194(*var_a276c861, *var_19e802fa) {
    
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 2, eflags: 0x2 linked
// Checksum 0x7e2b8514, Offset: 0x4c00
// Size: 0x84
function function_10079b27(var_24b25ceb, var_be926cd2) {
    if (var_24b25ceb.size < var_be926cd2 || var_be926cd2 == 0) {
        return var_24b25ceb;
    }
    var_24b25ceb = array::randomize(var_24b25ceb);
    var_93f1bf4c = array::slice(var_24b25ceb, 0, var_be926cd2 - 1);
    return var_93f1bf4c;
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 2, eflags: 0x2 linked
// Checksum 0x41943cbf, Offset: 0x4c90
// Size: 0x1a6
function function_74afe29f(mdl_target, var_d8f1c196) {
    mdl_target endon(#"death", #"hash_7eaa0599b7552fad");
    wait(randomintrangeinclusive(0, 3));
    mdl_target activate_target(1, var_d8f1c196.delay);
    if (isdefined(var_d8f1c196.target)) {
        var_411cc8d4 = struct::get(var_d8f1c196.target, "targetname");
        assert(isdefined(var_411cc8d4));
        n_move_time = var_d8f1c196.move_time;
        if (!isdefined(n_move_time) || n_move_time <= 0) {
            n_move_time = 0.1;
        }
        mdl_target moveto(var_411cc8d4.origin, n_move_time);
        wait(n_move_time);
        mdl_target playsound(#"hash_573eeda95b9d883a");
        var_381607ae = var_411cc8d4.var_c833bf96;
    } else {
        var_381607ae = var_d8f1c196.var_c833bf96;
    }
    mdl_target activate_target(0, var_381607ae);
    if (isdefined(self)) {
        self notify(#"hash_6a9356013dd27e58");
    }
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 0, eflags: 0x2 linked
// Checksum 0x81719058, Offset: 0x4e40
// Size: 0x114
function function_9b1a3790() {
    var_b3dbe6aa = getent("smg_reward_area", "targetname");
    e_active_player = level.var_a76f0ecf;
    if (level flag::get(#"hash_aa416b9e4b5beaf")) {
        level thread function_31183ec4(e_active_player, var_b3dbe6aa);
        /#
            iprintlnbold("<unknown string>");
        #/
    } else {
        playsoundatposition(#"hash_41f370ee19a5ddc1", e_active_player.origin);
    }
    if (level flag::get(#"hash_77fc8d99d35bea8")) {
        level flag::clear(#"hash_77fc8d99d35bea8");
    }
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 2, eflags: 0x2 linked
// Checksum 0x8742f908, Offset: 0x4f60
// Size: 0x14
function function_3001616b(*var_a276c861, *var_19e802fa) {
    
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 0, eflags: 0x2 linked
// Checksum 0x80a4bd4e, Offset: 0x4f80
// Size: 0x374
function function_fcc5783b() {
    level endon(#"end_game");
    var_84644c81 = getent("pistol_shooting_area", "targetname");
    var_17aa01a8 = struct::get("pistol_shoot_start_trigger", "targetname");
    var_bc3709b9 = struct::get("s_pistol_shoot_start", "targetname");
    level thread function_c1bb3b65(var_84644c81, var_84644c81, "pistol", var_bc3709b9);
    level waittill(#"hash_2bc3201ed4cba710");
    level flag::set(#"hash_709701a349515bd7");
    var_356856d6 = util::spawn_model(#"hash_5fc40e47dd99a53f", var_17aa01a8.origin, var_17aa01a8.angles);
    var_356856d6.e_area = var_84644c81;
    var_356856d6 init_target(var_17aa01a8);
    var_356856d6 thread function_5c555bdb("pistol", level.var_9c6cf8c, &function_af0fa53c);
    var_356856d6 thread function_db3d8ac(var_356856d6, var_17aa01a8);
    var_356856d6 thread function_9af0ace6("pistol");
    level flag::wait_till_any([#"hash_7f73d56a614ce047", #"hash_6930683ef14e9445"]);
    level flag::clear(#"hash_709701a349515bd7");
    var_356856d6 notify(#"hash_79917746ae9a28ed");
    if (isarray(var_356856d6.a_targets)) {
        foreach (e_target in var_356856d6.a_targets) {
            if (isdefined(e_target)) {
                e_target notify(#"hash_7eaa0599b7552fad");
            }
            if (isdefined(e_target)) {
                e_target delete();
            }
        }
    }
    if (isdefined(var_356856d6)) {
        var_356856d6 delete();
    }
    if (level flag::get(#"hash_19dcf958928fa920") && level flag::get(#"hash_7f73d56a614ce047")) {
        level thread function_ca6685bb();
    }
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 2, eflags: 0x2 linked
// Checksum 0xe2b79785, Offset: 0x5300
// Size: 0x224
function function_af0fa53c(e_player, *a_params) {
    level endon(#"end_game");
    self endon(#"death");
    self notify(#"hash_171ccedffc06b5e");
    self notify(#"hash_7eaa0599b7552fad");
    level scoreevents::doscoreeventcallback("scoreEventZM", {#attacker:a_params, #scoreevent:#"hash_93c1524520f5882", #enemy:self});
    level flag::set(#"hash_51bc8a36bd7e5d27");
    self flag::set(#"hash_5422d37665a74906");
    a_params val::set("shooting_gallery_ignore", "ignoreme", 1);
    level clientfield::set("" + #"pistol_light_on", 1);
    b_complete = self function_c47f596a(a_params);
    a_params val::reset("shooting_gallery_ignore", "ignoreme");
    level thread function_a6b2956();
    if (is_true(b_complete)) {
        level flag::set(#"hash_7f73d56a614ce047");
        return;
    }
    level flag::set(#"hash_6930683ef14e9445");
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 3, eflags: 0x2 linked
// Checksum 0x2dbe5abb, Offset: 0x5530
// Size: 0x5ca
function function_1cb31d02(e_player, var_24b25ceb, n_round) {
    level endon(#"end_game");
    if (!isplayer(e_player)) {
        return;
    }
    if (n_round < 3) {
        var_be926cd2 = randomintrangeinclusive(2, 3);
    } else {
        var_be926cd2 = 3;
    }
    if (var_24b25ceb.size > var_be926cd2) {
        var_24b25ceb = function_10079b27(var_24b25ceb, var_be926cd2);
    }
    if (n_round > 3) {
        var_a7757d88 = struct::get_array("pistol_target_start_corridor", "targetname");
        switch (n_round) {
        case 4:
            var_43678191 = 1;
            break;
        case 5:
            var_43678191 = 1;
            break;
        case 6:
            var_43678191 = 2;
            break;
        default:
            var_43678191 = 2;
            break;
        }
        if (var_24b25ceb.size > var_43678191) {
            var_a7757d88 = function_10079b27(var_a7757d88, var_43678191);
        }
        var_24b25ceb = arraycombine(var_24b25ceb, var_a7757d88, 0, 0);
    }
    if (n_round > 4) {
        var_9633045d = struct::get_array("pistol_target_start_sneaky", "targetname");
        var_24b25ceb = arraycombine(var_24b25ceb, var_9633045d, 0, 0);
    }
    e_player endon(#"death", #"disconnect");
    var_77ba553d = var_24b25ceb.size;
    var_3d23ecc = 0;
    self.a_targets = [];
    var_fce1cbd4 = [0, 1, 1.5, 2, 2, 3];
    var_fce1cbd4 = array::randomize(var_fce1cbd4);
    var_f425a78e = 0;
    assert(var_fce1cbd4.size >= var_24b25ceb.size);
    foreach (var_d8f1c196 in var_24b25ceb) {
        if (var_d8f1c196.var_d6118311 === "flip_up") {
            mdl_target = util::spawn_model(#"hash_5fc40e47dd99a53f", var_d8f1c196.origin, var_d8f1c196.angles - (0, 0, 90));
        } else {
            mdl_target = util::spawn_model(#"hash_5fc40e47dd99a53f", var_d8f1c196.origin - (0, 0, 60), var_d8f1c196.angles);
        }
        mdl_target init_target(var_d8f1c196);
        mdl_target thread function_5c555bdb("pistol", e_player, &function_3018008e, self);
        var_d8f1c196.delay = var_fce1cbd4[var_f425a78e];
        self thread function_44edd841(mdl_target, var_d8f1c196, n_round, e_player);
        if (!isdefined(self.a_targets)) {
            self.a_targets = [];
        } else if (!isarray(self.a_targets)) {
            self.a_targets = array(self.a_targets);
        }
        self.a_targets[self.a_targets.size] = mdl_target;
        var_f425a78e++;
    }
    while (var_3d23ecc < var_77ba553d) {
        waitresult = self waittill(#"hash_7973087e9bdd4725", #"hash_6a9356013dd27e58");
        if (waitresult._notify === #"hash_7973087e9bdd4725") {
            var_3d23ecc++;
            continue;
        }
        if (level flag::get(#"shooting_gallery_easy_mode")) {
            var_3d23ecc++;
            continue;
        }
        playsoundatposition(#"hash_41f370ee19a5ddc1", self.e_area.origin);
        break;
    }
    return var_3d23ecc == var_77ba553d;
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 1, eflags: 0x2 linked
// Checksum 0x59f7e180, Offset: 0x5b08
// Size: 0x320
function function_c47f596a(e_player) {
    level endon(#"end_game");
    self endon(#"death");
    /#
        n_player = e_player getentnum();
        iprintlnbold("<unknown string>" + n_player + "<unknown string>");
    #/
    b_complete = 0;
    n_round = 1;
    while (isplayer(e_player)) {
        var_24b25ceb = struct::get_array("pistol_target_start", "targetname");
        var_77ba553d = var_24b25ceb.size;
        if (n_round > 5) {
            if (n_round > 1) {
                b_complete = 1;
                break;
            }
        }
        if (n_round > 1) {
            wait(3);
        }
        var_10130e45 = self function_1cb31d02(e_player, var_24b25ceb, n_round);
        foreach (e_target in self.a_targets) {
            e_target notify(#"hash_7eaa0599b7552fad");
            e_target thread activate_target(0);
        }
        wait(0.3);
        foreach (e_target in self.a_targets) {
            if (isdefined(e_target)) {
                e_target delete();
            }
        }
        if (is_true(var_10130e45)) {
            /#
                iprintlnbold("<unknown string>" + n_round + "<unknown string>");
            #/
            n_round++;
            continue;
        }
        /#
            iprintlnbold("<unknown string>" + n_round + "<unknown string>");
        #/
        break;
    }
    /#
        iprintlnbold("<unknown string>");
    #/
    return b_complete;
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 2, eflags: 0x2 linked
// Checksum 0x2e0ca455, Offset: 0x5e30
// Size: 0x14
function function_2de111f5(*var_a276c861, *var_19e802fa) {
    
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 4, eflags: 0x2 linked
// Checksum 0xa20c82d4, Offset: 0x5e50
// Size: 0x23e
function function_44edd841(mdl_target, var_d8f1c196, n_round, *e_player) {
    var_d8f1c196 endon(#"death", #"hash_7eaa0599b7552fad");
    if (is_true(n_round.var_8404a3cf)) {
        n_round.delay = 4;
    }
    var_d8f1c196 activate_target(1, n_round.delay);
    if (e_player < 4) {
        var_6b009fa5 = randomfloatrange(0, 0.5);
    } else if (e_player < 6) {
        var_6b009fa5 = randomfloatrange(0.75, 1);
    } else {
        var_6b009fa5 = 0;
    }
    if (isdefined(n_round.target)) {
        var_411cc8d4 = struct::get(n_round.target, "targetname");
        assert(isdefined(var_411cc8d4));
        n_move_time = n_round.move_time;
        if (!isdefined(n_move_time) || n_move_time <= 0) {
            n_move_time = 0.1;
        }
        var_d8f1c196 moveto(var_411cc8d4.origin, n_move_time - var_6b009fa5);
        wait(n_move_time);
        var_d8f1c196 playsound(#"hash_573eeda95b9d883a");
        var_381607ae = var_411cc8d4.var_c833bf96;
    } else {
        var_381607ae = n_round.var_c833bf96;
    }
    var_d8f1c196 activate_target(0, var_381607ae);
    if (isdefined(self)) {
        self notify(#"hash_6a9356013dd27e58");
    }
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 0, eflags: 0x2 linked
// Checksum 0x38ad33d9, Offset: 0x6098
// Size: 0x54
function function_a6b2956() {
    level endon(#"end_game");
    wait(2);
    level clientfield::set("" + #"pistol_light_on", 0);
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 0, eflags: 0x2 linked
// Checksum 0xdbb6eed8, Offset: 0x60f8
// Size: 0x114
function function_ca6685bb() {
    var_b3dbe6aa = getent("pistol_reward_area", "targetname");
    e_active_player = level.var_9c6cf8c;
    if (level flag::get(#"hash_7f73d56a614ce047")) {
        level thread function_31183ec4(e_active_player, var_b3dbe6aa);
        /#
            iprintlnbold("<unknown string>");
        #/
    } else {
        playsoundatposition(#"hash_41f370ee19a5ddc1", e_active_player.origin);
    }
    if (level flag::get(#"hash_19dcf958928fa920")) {
        level flag::clear(#"hash_19dcf958928fa920");
    }
}

// Namespace namespace_e5670722/namespace_e5670722
// Params 2, eflags: 0x2 linked
// Checksum 0xc39bf31e, Offset: 0x6218
// Size: 0x14
function function_ee09dd4e(*var_a276c861, *var_19e802fa) {
    
}

