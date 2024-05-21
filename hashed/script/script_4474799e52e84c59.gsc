// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\gametypes\globallogic.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_loadout.gsc;
#using scripts\zm_common\zm_laststand.gsc;
#using scripts\zm_common\zm_equipment.gsc;
#using scripts\zm_common\zm_devgui.gsc;
#using script_36f4be19da8eb6d0;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using script_1caf36ff04a85ff6;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\fx_shared.gsc;
#using scripts\core_common\content_manager.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace namespace_5b3a52eb;

// Namespace namespace_5b3a52eb/namespace_5b3a52eb
// Params 0, eflags: 0x5
// Checksum 0x407ec1ba, Offset: 0x2e0
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"hash_244949c60a0b2941", &preinit, &postinit, undefined, undefined);
}

// Namespace namespace_5b3a52eb/namespace_5b3a52eb
// Params 0, eflags: 0x2 linked
// Checksum 0xf24aa0fb, Offset: 0x338
// Size: 0x2c
function preinit() {
    content_manager::register_script("die_container", &function_3b0cb5a4);
}

// Namespace namespace_5b3a52eb/namespace_5b3a52eb
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x370
// Size: 0x4
function postinit() {
    
}

// Namespace namespace_5b3a52eb/namespace_5b3a52eb
// Params 1, eflags: 0x0
// Checksum 0xe3c65f6, Offset: 0x380
// Size: 0x44
function function_858d9401(destination) {
    level flag::wait_till("start_zombie_round_logic");
    waittillframeend();
    function_f5ccdd88(destination);
}

// Namespace namespace_5b3a52eb/namespace_5b3a52eb
// Params 1, eflags: 0x2 linked
// Checksum 0x7b65f2fe, Offset: 0x3d0
// Size: 0x2a4
function function_f5ccdd88(destination) {
    foreach (location in destination.locations) {
        var_602cb577 = location.instances[#"die_container"];
        if (isdefined(var_602cb577)) {
            content_manager::spawn_instance(var_602cb577);
            var_99d1b219 = 1;
        }
    }
    if (is_true(var_99d1b219)) {
        scene::add_scene_func(#"p9_fxanim_zm_ndu_contain_crate_rust_bundle", &function_217a625a, "open");
        scene::add_scene_func(#"p9_fxanim_zm_ndu_contain_crate_cryo_bundle", &function_217a625a, "open");
        scene::add_scene_func(#"p9_fxanim_zm_ndu_contain_crate_electric_bundle", &function_217a625a, "open");
        scene::add_scene_func(#"p9_fxanim_zm_ndu_contain_crate_gas_bundle", &function_217a625a, "open");
    }
    /#
        if (isarray(level.var_f015cfb9)) {
            foreach (i, var_64c371d1 in level.var_f015cfb9) {
                util::add_debug_command("<unknown string>" + i + "<unknown string>");
            }
            zm_devgui::add_custom_devgui_callback(&function_21aca219);
        }
    #/
}

/#

    // Namespace namespace_5b3a52eb/namespace_5b3a52eb
    // Params 1, eflags: 0x0
    // Checksum 0x1247cec4, Offset: 0x680
    // Size: 0xc2
    function function_21aca219(cmd) {
        switch (cmd) {
        case #"hash_d1b4f368cc37b7b":
            function_546a7089(0);
            break;
        case #"hash_d1b4e368cc379c8":
            function_546a7089(1);
            break;
        case #"hash_d1b51368cc37ee1":
            function_546a7089(2);
            break;
        case #"hash_d1b50368cc37d2e":
            function_546a7089(3);
            break;
        }
    }

    // Namespace namespace_5b3a52eb/namespace_5b3a52eb
    // Params 1, eflags: 0x0
    // Checksum 0x44e5d532, Offset: 0x750
    // Size: 0xc8
    function function_546a7089(index) {
        if (isdefined(level.var_f015cfb9[index])) {
            foreach (player in getplayers()) {
                player setorigin(level.var_f015cfb9[index].origin);
            }
        }
    }

#/

// Namespace namespace_5b3a52eb/namespace_5b3a52eb
// Params 1, eflags: 0x2 linked
// Checksum 0x5d2e1300, Offset: 0x820
// Size: 0x5f8
function function_3b0cb5a4(struct) {
    assert(isstruct(struct), "<unknown string>");
    spawn_points = struct.contentgroups[#"hash_2535c42129449bb9"];
    foreach (point in spawn_points) {
        var_e57cfd4a = point.script_noteworthy;
        if (isdefined(var_e57cfd4a)) {
            switch (var_e57cfd4a) {
            case #"cryo":
                str_hint = #"hash_23ffe27517c6140c";
                var_f8fadaec = #"hash_32859e73dd365b9e";
                break;
            case #"electric":
                str_hint = #"hash_448d0fa028c30675";
                var_f8fadaec = #"hash_5006567f39c9e0b0";
                break;
            case #"gas":
                str_hint = #"hash_1f88bf6da4e314";
                var_f8fadaec = #"hash_e2ad7264fcf3d4e";
                break;
            case #"plasma":
                str_hint = #"hash_3122d671887ef5a5";
                var_f8fadaec = #"hash_7bb0fd5062a04b85";
                break;
            }
        } else {
            assert(0, "<unknown string>");
        }
        if (getdvarint(#"hash_7dae47192308f053", 1)) {
            var_f8fadaec = #"hash_7bb0fd5062a04b85";
        }
        spawn_struct = point;
        scriptmodel = content_manager::spawn_script_model(spawn_struct, var_f8fadaec, 1);
        scriptmodel.var_e57cfd4a = var_e57cfd4a;
        if (!isdefined(level.var_f015cfb9)) {
            level.var_f015cfb9 = [];
        } else if (!isarray(level.var_f015cfb9)) {
            level.var_f015cfb9 = array(level.var_f015cfb9);
        }
        if (!isinarray(level.var_f015cfb9, scriptmodel)) {
            level.var_f015cfb9[level.var_f015cfb9.size] = scriptmodel;
        }
        if (getdvarint(#"hash_7dae47192308f053", 1)) {
            scriptmodel scene::init(#"p9_fxanim_zm_ndu_contain_crate_rust_bundle", scriptmodel);
        } else {
            switch (var_e57cfd4a) {
            case #"cryo":
                scriptmodel thread scene::play(#"p9_fxanim_zm_ndu_contain_crate_cryo_bundle", "chain", scriptmodel);
                break;
            case #"electric":
                scriptmodel scene::init(#"p9_fxanim_zm_ndu_contain_crate_electric_bundle", scriptmodel);
                break;
            case #"gas":
                scriptmodel scene::init(#"p9_fxanim_zm_ndu_contain_crate_gas_bundle", scriptmodel);
                break;
            case #"plasma":
                scriptmodel scene::init(#"p9_fxanim_zm_ndu_contain_crate_rust_bundle", scriptmodel);
                break;
            }
        }
        forward = anglestoforward(scriptmodel.angles);
        forward = vectornormalize(forward);
        forward = (forward[0] * 8, forward[1] * 8, forward[2] * 8);
        forward = (forward[0], forward[1], forward[2] + 32);
        trigger = content_manager::spawn_interact(spawn_struct, &function_fb2bc4ac, str_hint, undefined, isdefined(spawn_struct.radius) ? spawn_struct.radius : 64, isdefined(spawn_struct.height) ? spawn_struct.height : 64, undefined, forward);
        trigger.scriptmodel = scriptmodel;
        trigger.var_e57cfd4a = var_e57cfd4a;
        trigger thread function_35eeef70(var_e57cfd4a);
        scriptmodel.trigger = trigger;
        struct.trigger = trigger;
        struct.scriptmodel = scriptmodel;
        playsoundatposition(#"hash_20c4f0485930af2a", struct.origin);
    }
}

// Namespace namespace_5b3a52eb/namespace_5b3a52eb
// Params 1, eflags: 0x2 linked
// Checksum 0xb875e476, Offset: 0xe20
// Size: 0x31c
function function_fb2bc4ac(eventstruct) {
    player = eventstruct.activator;
    model = self.scriptmodel;
    var_e57cfd4a = self.var_e57cfd4a;
    assert(isdefined(model), "<unknown string>");
    assert(isdefined(var_e57cfd4a), "<unknown string>");
    if (is_true(model.opening)) {
        return;
    }
    if (isplayer(player)) {
        currentweapon = player getcurrentweapon();
        itemweapon = player item_inventory::function_230ceec4(currentweapon);
        if (isdefined(itemweapon) && function_165e54c9(itemweapon)) {
            model.opening = 1;
            switch (var_e57cfd4a) {
            case #"cryo":
                model thread function_8d9ddc22(player, "NITROGEN");
                break;
            case #"electric":
                if (!getdvarint(#"hash_7dae47192308f053", 1)) {
                    playfxontag(#"hash_7e300a1fb308ae67", model, "tag_electric_01_fx");
                    playfxontag(#"hash_7e300a1fb308ae67", model, "tag_electric_02_fx");
                    playfxontag(#"hash_7e300a1fb308ae67", model, "tag_electric_03_fx");
                }
                model thread function_8d9ddc22(player, "BEAM");
                break;
            case #"gas":
                model thread function_8d9ddc22(player, "GAS");
                break;
            case #"plasma":
                model thread function_8d9ddc22(player, "PLASMA");
                break;
            default:
                player playsoundtoplayer(#"zmb_no_cha_ching", player);
                break;
            }
            return;
        }
        player playsoundtoplayer(#"zmb_no_cha_ching", player);
    }
}

// Namespace namespace_5b3a52eb/namespace_5b3a52eb
// Params 1, eflags: 0x2 linked
// Checksum 0x1d76e940, Offset: 0x1148
// Size: 0x40c
function function_35eeef70(var_e57cfd4a) {
    self endon(#"death");
    assert(isdefined(var_e57cfd4a), "<unknown string>");
    while (true) {
        foreach (player in getplayers()) {
            currentweapon = player getcurrentweapon();
            itemweapon = player item_inventory::function_230ceec4(currentweapon);
            if (isdefined(itemweapon) && function_165e54c9(itemweapon)) {
                switch (var_e57cfd4a) {
                case #"cryo":
                    if (itemweapon.itementry.name == #"ww_ieu_acid_t9_item_sr") {
                        self sethintstringforplayer(player, #"hash_4425ec8a1a0dcd32");
                    } else {
                        self sethintstringforplayer(player, #"hash_23ffe27517c6140c");
                    }
                    break;
                case #"electric":
                    if (itemweapon.itementry.name == #"ww_ieu_electric_t9_item_sr") {
                        self sethintstringforplayer(player, #"hash_4425ec8a1a0dcd32");
                    } else {
                        self sethintstringforplayer(player, #"hash_448d0fa028c30675");
                    }
                    break;
                case #"gas":
                    if (itemweapon.itementry.name == #"ww_ieu_gas_t9_item_sr") {
                        self sethintstringforplayer(player, #"hash_4425ec8a1a0dcd32");
                    } else {
                        self sethintstringforplayer(player, #"hash_1f88bf6da4e314");
                    }
                    break;
                case #"plasma":
                    if (itemweapon.itementry.name == #"ww_ieu_plasma_t9_item_sr") {
                        self sethintstringforplayer(player, #"hash_4425ec8a1a0dcd32");
                    } else {
                        self sethintstringforplayer(player, #"hash_3122d671887ef5a5");
                    }
                    break;
                default:
                    self sethintstringforplayer(player, #"hash_5ddfb899ebe1fd3f");
                    break;
                }
                continue;
            }
            self sethintstringforplayer(player, #"hash_5ddfb899ebe1fd3f");
        }
        wait(1);
    }
}

// Namespace namespace_5b3a52eb/namespace_5b3a52eb
// Params 1, eflags: 0x2 linked
// Checksum 0xeb33a6e7, Offset: 0x1560
// Size: 0x104
function function_165e54c9(item) {
    if (isdefined(item.itementry.name)) {
        switch (item.itementry.name) {
        case #"ww_ieu_shockwave_t9_upgraded_item_sr":
        case #"ww_ieu_gas_t9_item_sr":
        case #"ww_ieu_plasma_t9_item_sr":
        case #"ww_ieu_gas_t9_upgraded_item_sr":
        case #"ww_ieu_acid_t9_upgraded_item_sr":
        case #"ww_ieu_shockwave_t9_item_sr":
        case #"ww_ieu_electric_t9_item_sr":
        case #"hash_3dff7d94b9ae5c97":
        case #"ww_ieu_acid_t9_item_sr":
        case #"ww_ieu_electric_t9_upgraded_item_sr":
        case #"ww_ieu_plasma_t9_upgraded_item_sr":
            return true;
        }
    }
    return false;
}

// Namespace namespace_5b3a52eb/namespace_5b3a52eb
// Params 1, eflags: 0x2 linked
// Checksum 0x13290d96, Offset: 0x1670
// Size: 0x67c
function function_217a625a(a_ents) {
    if (self flag::get("FirstFrame")) {
        return;
    }
    var_bf71a40b = a_ents[#"weapon_crate"];
    var_e57cfd4a = a_ents[#"weapon_crate"].var_e57cfd4a;
    if (!isdefined(var_e57cfd4a)) {
        return;
    }
    switch (var_e57cfd4a) {
    case #"cryo":
        if (level flag::get("exchange_base_back")) {
            var_2faa8624 = util::spawn_model(#"hash_9549d4549a59df5", var_bf71a40b gettagorigin("tag_tank"), var_bf71a40b gettagangles("tag_tank"));
            level flag::clear("exchange_base_back");
        } else {
            var_2faa8624 = util::spawn_model(#"hash_4a6d2f6f49885950", var_bf71a40b gettagorigin("tag_tank"), var_bf71a40b gettagangles("tag_tank"));
            var_a100665d = var_bf71a40b fx::play(#"hash_d208acedd2518ae", undefined, undefined, 4, 1, "tag_tank");
        }
        break;
    case #"gas":
        if (level flag::get("exchange_base_back")) {
            var_2faa8624 = util::spawn_model(#"hash_9549d4549a59df5", var_bf71a40b gettagorigin("tag_tank"), var_bf71a40b gettagangles("tag_tank"));
            level flag::clear("exchange_base_back");
        } else {
            var_2faa8624 = util::spawn_model(#"hash_2a78ff7b18517c52", var_bf71a40b gettagorigin("tag_tank"), var_bf71a40b gettagangles("tag_tank"));
            var_a100665d = var_bf71a40b fx::play(#"hash_7a6a8f045e6c6b7e", undefined, undefined, 4, 1, "tag_tank");
        }
        break;
    case #"plasma":
        if (level flag::get("exchange_base_back")) {
            var_2faa8624 = util::spawn_model(#"hash_9549d4549a59df5", var_bf71a40b gettagorigin("tag_tank"), var_bf71a40b gettagangles("tag_tank"));
            level flag::clear("exchange_base_back");
        } else {
            var_2faa8624 = util::spawn_model(#"hash_9549d4549a59df5", var_bf71a40b gettagorigin("tag_tank"), var_bf71a40b gettagangles("tag_tank"));
            var_a100665d = var_bf71a40b fx::play(#"hash_1119b81f77cb3c61", undefined, undefined, 4, 1, "tag_tank");
        }
        break;
    case #"electric":
        if (level flag::get("exchange_base_back")) {
            var_2faa8624 = util::spawn_model(#"hash_9549d4549a59df5", var_bf71a40b gettagorigin("tag_tank"), var_bf71a40b gettagangles("tag_tank"));
            level flag::clear("exchange_base_back");
        } else {
            var_2faa8624 = util::spawn_model(#"hash_65d816e81ae7ddbb", var_bf71a40b gettagorigin("tag_tank"), var_bf71a40b gettagangles("tag_tank"));
            var_a100665d = var_bf71a40b fx::play(#"hash_6154a93403194405", undefined, undefined, 4, 1, "tag_tank");
        }
        break;
    }
    var_2faa8624 linkto(var_bf71a40b, "tag_tank", (0, 0, 0), (-28, 0, 0));
    waitresult = level waittill(#"silver_weapon_crate_closed", #"hash_685e9797cabb8ed", #"hash_142e9131e668557d");
    var_2faa8624 unlink();
    if (isdefined(var_2faa8624)) {
        var_2faa8624 delete();
    }
    if (waitresult._notify !== "silver_weapon_crate_closed") {
        level waittill(#"silver_weapon_crate_closed");
    }
    if (isdefined(var_a100665d)) {
        var_a100665d delete();
    }
}

// Namespace namespace_5b3a52eb/namespace_5b3a52eb
// Params 2, eflags: 0x2 linked
// Checksum 0x903df6b0, Offset: 0x1cf8
// Size: 0xa38
function function_8d9ddc22(player, var_e7772c37) {
    level endon(#"end_game");
    switch (var_e7772c37) {
    case #"nitrogen":
        var_6bdde8a3 = getweapon(#"ww_ieu_acid_t9");
        var_39023436 = getweapon(#"ww_ieu_acid_t9_upgraded");
        self.var_37023f0e = "cryo";
        break;
    case #"gas":
        var_6bdde8a3 = getweapon(#"ww_ieu_gas_t9");
        var_39023436 = getweapon(#"ww_ieu_gas_t9_upgraded");
        self.var_37023f0e = "gas";
        break;
    case #"plasma":
        var_6bdde8a3 = getweapon(#"ww_ieu_plasma_t9");
        var_39023436 = getweapon(#"ww_ieu_plasma_t9_upgraded");
        self.var_37023f0e = "rust";
        break;
    case #"beam":
        var_6bdde8a3 = getweapon(#"ww_ieu_electric_t9");
        var_39023436 = getweapon(#"ww_ieu_electric_t9_upgraded");
        self.var_37023f0e = "electric";
        break;
    }
    player val::set(#"hash_504a7a98d585ba99", "disable_weapon_cycling", 1);
    player val::set(#"hash_504a7a98d585ba99", "disable_weapon_fire", 1);
    player val::set(#"hash_504a7a98d585ba99", "disable_offhand_weapons", 1);
    player val::set(#"hash_504a7a98d585ba99", "disable_offhand_special", 1);
    player thread function_172b3f96(10);
    if (player hasweapon(var_6bdde8a3, 1) || player hasweapon(var_39023436, 1)) {
        level flag::set("exchange_base_back");
    }
    self function_e0d166a9();
    if (isalive(player) && !player inlaststand()) {
        var_4e4f65c9 = player item_inventory::function_2e711614(17 + 1);
        primary_weapon = player namespace_a0d533d1::function_2b83d3ff(var_4e4f65c9);
        var_ec323ef9 = player item_inventory::function_2e711614(17 + 1 + 8 + 1);
        secondary_weapon = player namespace_a0d533d1::function_2b83d3ff(var_ec323ef9);
        var_b8061637 = player item_inventory::function_2e711614(17 + 1 + 8 + 1 + 8 + 1);
        var_5b871ec1 = player namespace_a0d533d1::function_2b83d3ff(var_b8061637);
        if (namespace_b376a999::function_5fef4201(primary_weapon)) {
            var_981d2438 = var_4e4f65c9;
            var_d5c2e187 = primary_weapon;
        } else if (namespace_b376a999::function_5fef4201(secondary_weapon)) {
            var_981d2438 = var_ec323ef9;
            var_d5c2e187 = secondary_weapon;
        } else if (namespace_b376a999::function_5fef4201(var_5b871ec1)) {
            var_981d2438 = var_b8061637;
            var_d5c2e187 = var_5b871ec1;
        } else {
            player notify(#"hash_6a9e5d5a03df7e27");
            self function_72ffec4f();
            level notify(#"hash_142e9131e668557d");
            return;
        }
        var_1edbaf3 = player namespace_b376a999::function_7d5e7c71(var_d5c2e187);
        if (var_1edbaf3) {
            target_weapon = var_39023436;
        } else {
            target_weapon = var_6bdde8a3;
        }
        var_b0e35c50 = 0;
        if (zm_weapons::function_386dacbc(var_d5c2e187) != target_weapon) {
            var_963f7bc9 = target_weapon;
        } else {
            var_b0e35c50 = 1;
            var_963f7bc9 = var_1edbaf3 ? getweapon(#"ww_ieu_shockwave_t9_upgraded") : getweapon(#"ww_ieu_shockwave_t9");
        }
        var_963f7bc9 = function_eeddea9a(var_963f7bc9, function_9f1cc9a9(var_d5c2e187));
        if (player getcurrentweapon() != var_d5c2e187) {
            player switchtoweapon(var_d5c2e187);
            if (player getstance() === "prone") {
                player notify(#"hash_6a9e5d5a03df7e27");
                self function_72ffec4f();
                level notify(#"hash_142e9131e668557d");
                return;
            }
            result = player waittilltimeout(5, #"death", #"weapon_change_complete", #"entering_last_stand");
            if (result._notify == #"timeout" || player getcurrentweapon() != var_d5c2e187) {
                player notify(#"hash_6a9e5d5a03df7e27");
                self function_72ffec4f();
                level notify(#"hash_142e9131e668557d");
                return;
            }
        }
        if (isalive(player) && !player inlaststand()) {
            if (!isdefined(player.var_1ad4cede)) {
                player.var_1ad4cede = [];
            }
            var_e533256d = player.var_1ad4cede[var_963f7bc9.name];
            player giveweapon(var_963f7bc9);
            var_eba43593 = player function_b7f1fd2c(var_963f7bc9);
            player setweaponammoclip(var_963f7bc9, isdefined(var_e533256d) ? var_e533256d : var_eba43593);
            player function_bee29f7b(1);
            player switchtoweapon(var_963f7bc9);
            player function_6edc650b(var_963f7bc9);
            weaponoptions = player function_ade49959(var_d5c2e187);
            camoindex = getcamoindex(weaponoptions);
            player setcamo(var_963f7bc9, camoindex);
            player.var_1ad4cede[var_d5c2e187.name] = player getammocount(var_d5c2e187);
            player thread function_6d4e1f71(var_d5c2e187, var_e7772c37, var_b0e35c50);
            player thread function_469b0e5();
            var_981d2438.var_627c698b = var_963f7bc9;
            var_3383cd4e = function_4ba8fde(var_963f7bc9.name + "_item_sr");
            if (isdefined(var_3383cd4e)) {
                var_981d2438.itementry = var_3383cd4e.itementry;
                var_981d2438.id = var_3383cd4e.id;
            } else {
                assertmsg("<unknown string>" + var_963f7bc9.name);
            }
        }
        level notify(#"hash_685e9797cabb8ed");
        self function_72ffec4f();
        level notify(#"silver_weapon_crate_closed");
    }
}

// Namespace namespace_5b3a52eb/namespace_5b3a52eb
// Params 0, eflags: 0x6 linked
// Checksum 0x78e55e4d, Offset: 0x2738
// Size: 0x9c
function private function_e0d166a9() {
    if (getdvarint(#"hash_7dae47192308f053", 1)) {
        self scene::play(#"p9_fxanim_zm_ndu_contain_crate_rust_bundle", "open", self);
        return;
    }
    self scene::play(#"hash_340eb7e983e34e72" + self.var_37023f0e + "_bundle", "open", self);
}

// Namespace namespace_5b3a52eb/namespace_5b3a52eb
// Params 0, eflags: 0x6 linked
// Checksum 0xc3ac72cd, Offset: 0x27e0
// Size: 0xa6
function private function_72ffec4f() {
    if (getdvarint(#"hash_7dae47192308f053", 1)) {
        self scene::play(#"p9_fxanim_zm_ndu_contain_crate_rust_bundle", "close", self);
    } else {
        self scene::play(#"hash_340eb7e983e34e72" + self.var_37023f0e + "_bundle", "close", self);
    }
    self.opening = undefined;
}

// Namespace namespace_5b3a52eb/namespace_5b3a52eb
// Params 1, eflags: 0x2 linked
// Checksum 0xbdd36873, Offset: 0x2890
// Size: 0x104
function function_172b3f96(timeout) {
    level endon(#"end_game");
    self waittilltimeout(timeout, #"hash_6a9e5d5a03df7e27", #"death", #"entering_last_stand");
    if (isdefined(self)) {
        self val::reset(#"hash_504a7a98d585ba99", "disable_weapon_cycling");
        self val::reset(#"hash_504a7a98d585ba99", "disable_weapon_fire");
        self val::reset(#"hash_504a7a98d585ba99", "disable_offhand_weapons");
        self val::reset(#"hash_504a7a98d585ba99", "disable_offhand_special");
    }
}

// Namespace namespace_5b3a52eb/namespace_5b3a52eb
// Params 0, eflags: 0x2 linked
// Checksum 0x6e0be1c, Offset: 0x29a0
// Size: 0x6e
function function_469b0e5() {
    level endon(#"end_game");
    self endon(#"death");
    wait(1);
    while (!self function_a39f313c()) {
        waitframe(1);
    }
    self notify(#"hash_6a9e5d5a03df7e27");
}

// Namespace namespace_5b3a52eb/namespace_5b3a52eb
// Params 3, eflags: 0x2 linked
// Checksum 0x589ad39d, Offset: 0x2a18
// Size: 0x12a
function function_6d4e1f71(var_d5c2e187, var_e7772c37, var_b0e35c50) {
    level endon(#"end_game");
    if (isdefined(self)) {
        wait(1);
        while (isdefined(self) && self isdroppingweapon()) {
            waitframe(1);
        }
        if (!isdefined(self)) {
            return;
        }
        self takeweapon(var_d5c2e187);
        if (var_b0e35c50) {
            switch (var_e7772c37) {
            case #"nitrogen":
                level.var_c3accf46 = undefined;
                break;
            case #"gas":
                level.var_ae002b60 = undefined;
                break;
            case #"plasma":
                level.var_42000fd0 = undefined;
                break;
            case #"beam":
                level.var_c8a2dc28 = undefined;
                break;
            }
        }
    }
}

