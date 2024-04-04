// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_utility.gsc;
#using script_3ddf84b7bb3bf47d;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using script_55b68e9c3e3a915b;
#using scripts\zm_common\zm_utility_zsurvival.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_perks.gsc;
#using script_3751b21462a54a7d;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\fx_shared.gsc;
#using scripts\core_common\content_manager.gsc;
#using scripts\core_common\player\player_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\flag_shared.gsc;

#namespace namespace_82b4c2d1;

// Namespace namespace_82b4c2d1/namespace_82b4c2d1
// Params 0, eflags: 0x5
// Checksum 0x5e587aca, Offset: 0x218
// Size: 0x64
function private autoexec __init__system__() {
    system::register(#"hash_79fe34c9f8a0e44c", &preinit, &postinit, &finalize, #"content_manager");
}

// Namespace namespace_82b4c2d1/namespace_82b4c2d1
// Params 0, eflags: 0x2 linked
// Checksum 0xdd97b691, Offset: 0x288
// Size: 0x7c
function preinit() {
    level.var_5df76d0 = sr_perk_machine_choice::register();
    if (!isdefined(level.var_dfe80386)) {
        level.var_dfe80386 = 0;
    }
    level clientfield::register("scriptmover", "perk_machine_rob", 1, 1, "int");
    namespace_52c8f34d::preinit();
}

// Namespace namespace_82b4c2d1/namespace_82b4c2d1
// Params 0, eflags: 0x2 linked
// Checksum 0x353155c2, Offset: 0x310
// Size: 0x9c
function postinit() {
    mapdestinations = struct::get_array(#"hash_313be7fccc870cdd", "variantname");
    if ((zm_utility::is_classic() || zm_utility::function_c4b020f8()) && isdefined(mapdestinations) && mapdestinations.size > 0) {
        level thread function_8605eb86(mapdestinations[0]);
    }
}

// Namespace namespace_82b4c2d1/namespace_82b4c2d1
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x3b8
// Size: 0x4
function finalize() {
    
}

// Namespace namespace_82b4c2d1/namespace_82b4c2d1
// Params 0, eflags: 0x0
// Checksum 0x191e8f32, Offset: 0x3c8
// Size: 0x310
function function_1532e0b6() {
    foreach (location in level.contentmanager.locations) {
        function_999594fe(location.contentgroups[#"hash_158cc8ce18ad2dbc"], #"hash_5c11dcd882aa848a", #"hash_2cbb9211afce9b04", #"hash_47d7a8105237c88", function_cce40d6d(#"hash_47d7a8105237c88"));
        function_999594fe(location.contentgroups[#"hash_7ee78beca217d7fe"], #"hash_249eb4d334db41f4", #"p7_zm_vending_revive", #"hash_7f98b3dd3cce95aa", function_cce40d6d(#"hash_7f98b3dd3cce95aa"));
        function_999594fe(location.contentgroups[#"hash_560082c9da5ef68e"], #"hash_5a2711fd4875c104", #"p7_zm_vending_sleight", #"hash_5930cf0eb070e35a", function_cce40d6d(#"hash_5930cf0eb070e35a"));
        function_999594fe(location.contentgroups[#"hash_6e55d13f9423215a"], #"hash_56e1ed93d9ce235c", #"hash_43372808f8cd00cb", #"hash_4110e6372aa77f7e", function_cce40d6d(#"hash_4110e6372aa77f7e"));
        if (zm_utility::is_survival() || is_true(level.var_dfe80386)) {
            model = #"hash_6e47d6576612543c";
        } else {
            model = #"hash_2b8015fa585f3b83";
        }
        function_999594fe(location.contentgroups[#"hash_6217ef2a3d7d895b"], #"hash_4af85251966549b8", model, #"hash_3eac5ec7a888ddfb", 0);
    }
}

// Namespace namespace_82b4c2d1/namespace_82b4c2d1
// Params 5, eflags: 0x2 linked
// Checksum 0xa2fe8c49, Offset: 0x6e0
// Size: 0xe0
function function_999594fe(var_beee4994, hint_string, model, var_c024c2e0, cost) {
    if (!isdefined(var_beee4994)) {
        return;
    }
    foreach (var_7d0e37f8 in var_beee4994) {
        if (isdefined(var_7d0e37f8.content_key)) {
            function_744f2a2(var_7d0e37f8, var_7d0e37f8.content_key, model, hint_string, var_c024c2e0, cost, &function_472f16d8);
        }
    }
}

// Namespace namespace_82b4c2d1/namespace_82b4c2d1
// Params 8, eflags: 0x2 linked
// Checksum 0x3eedfacb, Offset: 0x7c8
// Size: 0x43c
function function_744f2a2(struct, var_a0f07ebc, modelname, hint_string, var_c024c2e0, cost, callbackfunction, var_1b39aebe = 0) {
    assert(isstruct(struct), "<unknown string>");
    assert(isfunctionptr(callbackfunction), "<unknown string>");
    assert(isdefined(modelname), "<unknown string>");
    assert(isdefined(hint_string), "<unknown string>");
    assert(isdefined(var_c024c2e0), "<unknown string>");
    assert(isdefined(cost), "<unknown string>");
    if (zm_utility::is_survival()) {
        var_c6d25878 = &zm_utility::function_f5a222a8;
    } else {
        var_c6d25878 = &zm_utility::function_4a4cf79a;
    }
    scriptmodel = content_manager::spawn_script_model(struct, modelname, 1);
    if (var_1b39aebe) {
        var_386a4480 = hint_string;
        hint_string = #"zombie/need_power";
    }
    if (struct.parent.content_script_name !== #"safehouse") {
        objid = [[ var_c6d25878 ]](#"hash_7d2b8cd6f37639c9", scriptmodel);
        struct.objectiveid = objid;
        scriptmodel.objectiveid = objid;
    }
    forward = anglestoforward(scriptmodel.angles);
    forward = vectornormalize(forward);
    offset = forward * 24;
    offset = (offset[0], offset[1], offset[2] + 50);
    trigger = content_manager::spawn_interact(struct, callbackfunction, hint_string, undefined, 64, 128, undefined, offset);
    trigger.scriptmodel = scriptmodel;
    if (var_1b39aebe) {
        trigger.var_be22b2f0 = 1;
        trigger.power_on = 0;
        trigger thread wait_for_power(var_386a4480);
    }
    trigger.var_a0f07ebc = var_a0f07ebc;
    trigger.var_c024c2e0 = var_c024c2e0;
    trigger.var_87abc3a0 = cost;
    trigger.var_3e85f6dd = struct;
    trigger.modelname = modelname;
    scriptmodel.trigger = trigger;
    if (zm_utility::is_survival()) {
        level thread zm_utility::clear_vehicles(scriptmodel);
    }
    zm_utility::function_ca960904(scriptmodel);
    level thread function_96a51643(scriptmodel);
    if (!var_1b39aebe) {
        if (modelname == #"hash_2b8015fa585f3b83" || modelname == #"hash_6e47d6576612543c") {
            struct thread function_dc1b3863(scriptmodel);
            scriptmodel thread namespace_791d0451::function_c5fb4741(1);
            return;
        }
        struct function_8d0d8a65();
    }
}

// Namespace namespace_82b4c2d1/namespace_82b4c2d1
// Params 1, eflags: 0x2 linked
// Checksum 0x3ee1b845, Offset: 0xc10
// Size: 0xec
function wait_for_power(var_386a4480) {
    level endon(#"game_ended");
    self endon(#"death");
    level flag::wait_till("power_on");
    self.power_on = 1;
    if (isdefined(self.modelname) && isdefined(self.scriptmodel) && isdefined(var_386a4480) && isdefined(self.var_3e85f6dd)) {
        self.var_3e85f6dd thread function_dc1b3863(self.scriptmodel, 0);
        self.scriptmodel thread namespace_791d0451::function_c5fb4741(1);
        self sethintstring(var_386a4480);
    }
}

// Namespace namespace_82b4c2d1/namespace_82b4c2d1
// Params 1, eflags: 0x2 linked
// Checksum 0x2b9a0e89, Offset: 0xd08
// Size: 0xc4
function function_96a51643(mdl_machine) {
    v_loc = mdl_machine.origin + (0, 0, 16) + anglestoforward(mdl_machine.angles) * 32;
    trigger = spawn("trigger_radius", v_loc, 0, 32, 64, 1);
    trigger zm_perks::check_for_change();
    if (isdefined(trigger)) {
        trigger deletedelay();
    }
}

// Namespace namespace_82b4c2d1/namespace_82b4c2d1
// Params 0, eflags: 0x2 linked
// Checksum 0xdf55b26, Offset: 0xdd8
// Size: 0x54
function function_8d0d8a65() {
    playfx("sr/fx9_safehouse_mchn_wonderfizz_spawn", self.origin);
    playsoundatposition(#"hash_20c4f0485930af2a", self.origin);
    wait(1);
}

// Namespace namespace_82b4c2d1/namespace_82b4c2d1
// Params 2, eflags: 0x2 linked
// Checksum 0xec7638a7, Offset: 0xe38
// Size: 0xec
function function_dc1b3863(scriptmodel, var_8f737d34 = 1) {
    if (!isdefined(scriptmodel)) {
        return;
    }
    scriptmodel clientfield::set("perk_machine_rob", 1);
    scriptmodel clientfield::set("item_machine_spawn_rob", 1);
    if (var_8f737d34) {
        playfx("sr/fx9_safehouse_mchn_wonderfizz_spawn", self.origin);
        wait(1);
    }
    if (isdefined(scriptmodel)) {
        playfxontag("zombie/fx9_wonder_fizz_idle", scriptmodel, "body_jnt");
        scriptmodel playloopsound(#"zmb_rand_perk_sparks");
    }
}

// Namespace namespace_82b4c2d1/namespace_82b4c2d1
// Params 3, eflags: 0x0
// Checksum 0x1671f43a, Offset: 0xf30
// Size: 0x1c
function perk_random_loop_anim(*n_piece, *s_anim_1, *s_anim_2) {
    
}

// Namespace namespace_82b4c2d1/namespace_82b4c2d1
// Params 1, eflags: 0x2 linked
// Checksum 0xfd733b42, Offset: 0xf58
// Size: 0x2f4
function function_472f16d8(eventstruct) {
    if (is_true(self.var_be22b2f0)) {
        if (!is_true(self.power_on)) {
            return;
        }
    }
    player = eventstruct.activator;
    machine = self.scriptmodel;
    var_da8463d0 = self.var_a0f07ebc;
    var_c024c2e0 = self.var_c024c2e0;
    var_87abc3a0 = self.var_87abc3a0;
    assert(isdefined(machine), "<unknown string>");
    assert(isdefined(var_da8463d0), "<unknown string>");
    assert(isdefined(var_c024c2e0), "<unknown string>");
    assert(isdefined(var_87abc3a0), "<unknown string>");
    if (isplayer(player)) {
        if (var_c024c2e0 == #"hash_3eac5ec7a888ddfb") {
            if (!level.var_5df76d0 sr_perk_machine_choice::is_open(player) && !player clientfield::get_player_uimodel("hudItems.srOverlayOpen")) {
                player notify(#"hash_5f178db4550eeae9");
                level.var_5df76d0 sr_perk_machine_choice::open(player, 0);
                player thread function_4513f006(machine, self);
                player namespace_553954de::function_14bada94();
            }
            return;
        }
        var_11868f5d = player namespace_791d0451::function_b852953c(var_c024c2e0);
        var_3069fe3 = player zm_score::can_player_purchase(var_87abc3a0);
        if (var_3069fe3 && !player namespace_791d0451::function_56cedda7(var_11868f5d)) {
            player playsoundtoplayer(#"hash_70f9bc3fce59c959", player);
            player zm_score::minus_to_player_score(var_87abc3a0);
            player namespace_791d0451::function_3fecad82(var_11868f5d, 1, 2);
            return;
        }
        machine playsoundtoplayer(#"uin_default_action_denied", player);
    }
}

// Namespace namespace_82b4c2d1/namespace_82b4c2d1
// Params 2, eflags: 0x2 linked
// Checksum 0x5d3f08b8, Offset: 0x1258
// Size: 0x156
function function_6c71e778(machine, trigger) {
    if (!isplayer(self) || !isdefined(level.var_5df76d0)) {
        return;
    }
    if (isdefined(machine) && isdefined(trigger)) {
        trigger sethintstringforplayer(self, #"hash_4af85251966549b8");
        if (isdefined(machine.objectiveid)) {
            objective_setvisibletoplayer(machine.objectiveid, self);
            zm_utility::function_e8f4d47b(self, machine.objectiveid, 0);
        }
    }
    if (level.var_5df76d0 sr_perk_machine_choice::is_open(self) && self clientfield::get_player_uimodel("hudItems.srOverlayOpen")) {
        level.var_5df76d0 sr_perk_machine_choice::close(self);
        self namespace_553954de::function_548f282();
    }
    self notify(#"hash_2a909cd1a72f625b");
}

// Namespace namespace_82b4c2d1/namespace_82b4c2d1
// Params 1, eflags: 0x2 linked
// Checksum 0x33dc65d4, Offset: 0x13b8
// Size: 0x6a
function function_cce40d6d(var_ecde8ba) {
    item_index = getitemindexfromref(var_ecde8ba);
    var_438da649 = function_b143666d(item_index, 5);
    return function_2c5b6acc(var_438da649);
}

// Namespace namespace_82b4c2d1/namespace_82b4c2d1
// Params 1, eflags: 0x2 linked
// Checksum 0x528d44d9, Offset: 0x1430
// Size: 0x16
function function_2c5b6acc(var_438da649) {
    return var_438da649.var_b5ec8024;
}

// Namespace namespace_82b4c2d1/namespace_82b4c2d1
// Params 1, eflags: 0x2 linked
// Checksum 0x76288a7d, Offset: 0x1450
// Size: 0x1ae
function function_5d21ed88(var_82e23366) {
    if (!isdefined(var_82e23366.namehash)) {
        return;
    }
    var_8c590502 = isdefined(getgametypesetting(#"hash_3c2c78e639bfd3c6")) ? getgametypesetting(#"hash_3c2c78e639bfd3c6") : 0;
    if (var_8c590502 > 0) {
        name_hash = var_82e23366.namehash;
        var_75da77d3 = 0;
        foreach (var_24303d72 in level.var_c723ac75) {
            foreach (var_afe18f6f in var_24303d72) {
                if (var_afe18f6f == name_hash) {
                    return namespace_791d0451::function_1b16bd84(var_24303d72[0], var_8c590502);
                }
            }
        }
    }
    return var_82e23366.namehash;
}

// Namespace namespace_82b4c2d1/namespace_82b4c2d1
// Params 2, eflags: 0x2 linked
// Checksum 0x37215935, Offset: 0x1608
// Size: 0x17c
function function_3fec008f(machine, trigger) {
    self endon(#"disconnect", #"death", #"hash_2a909cd1a72f625b");
    var_f9c2bece = distance2d(machine.origin, self.origin);
    start_origin = self.origin;
    while ((distance2d(machine.origin, self.origin) <= var_f9c2bece || distance2d(self.origin, start_origin) < 32) && !self laststand::player_is_in_laststand() && !self isinvehicle()) {
        waitframe(1);
        if (!isdefined(machine)) {
            break;
        }
    }
    if (level.var_5df76d0 sr_perk_machine_choice::is_open(self) && self clientfield::get_player_uimodel("hudItems.srOverlayOpen")) {
        self function_6c71e778(machine, trigger);
    }
}

// Namespace namespace_82b4c2d1/namespace_82b4c2d1
// Params 2, eflags: 0x2 linked
// Checksum 0x8361e980, Offset: 0x1790
// Size: 0x3f6
function function_4513f006(machine, trigger) {
    self endon(#"hash_5f178db4550eeae9");
    trigger sethintstringforplayer(self, "");
    if (isdefined(machine.objectiveid)) {
        zm_utility::function_e8f4d47b(self, machine.objectiveid, 1);
        objective_setinvisibletoplayer(machine.objectiveid, self);
    }
    self endoncallback(&function_6c71e778, #"death");
    self thread function_3fec008f(machine, trigger);
    while (true) {
        waitresult = self waittill(#"menuresponse");
        menu = waitresult.menu;
        response = waitresult.response;
        intpayload = waitresult.intpayload;
        if (menu == #"sr_perk_machine_choice") {
            switch (waitresult.response) {
            case #"hash_5c8984efe0e105db":
                var_82e23366 = getunlockableiteminfofromindex(intpayload, 5);
                var_438da649 = function_b143666d(intpayload, 5);
                talent = function_5d21ed88(var_82e23366);
                if (!isdefined(talent)) {
                    self notify(#"hash_2a909cd1a72f625b");
                    self function_6c71e778(machine, trigger);
                    return;
                }
                var_87abc3a0 = self namespace_791d0451::function_4c5d2b62();
                if (!isdefined(var_87abc3a0)) {
                    var_87abc3a0 = 0;
                }
                var_3069fe3 = self zm_score::can_player_purchase(var_87abc3a0);
                if (isdefined(talent) && var_3069fe3 && !self namespace_791d0451::function_56cedda7(talent)) {
                    if (namespace_791d0451::function_cc0055e9(talent)) {
                        self playrumbleonentity(#"zm_interact_rumble");
                        self zm_score::minus_to_player_score(var_87abc3a0);
                        self namespace_791d0451::function_3fecad82(talent, 1, 2);
                        if (isdefined(machine)) {
                            machine thread namespace_791d0451::function_3e9d8a8e(talent);
                            machine thread scene::play(#"p9_fxanim_zm_gp_wunderfizz_bundle", machine);
                        }
                    } else {
                        machine playsoundtoplayer(#"hash_5334aa3b6d25f949", self);
                    }
                } else {
                    machine playsoundtoplayer(#"hash_5334aa3b6d25f949", self);
                }
                break;
            case #"hash_383c519d3bdac984":
                self notify(#"hash_2a909cd1a72f625b");
                self function_6c71e778(machine, trigger);
                return;
            }
        }
    }
}

// Namespace namespace_82b4c2d1/namespace_82b4c2d1
// Params 1, eflags: 0x2 linked
// Checksum 0xbb91fb61, Offset: 0x1b90
// Size: 0x44
function function_8605eb86(destination) {
    level flag::wait_till("start_zombie_round_logic");
    waittillframeend();
    function_d9cdb025(destination);
}

// Namespace namespace_82b4c2d1/namespace_82b4c2d1
// Params 1, eflags: 0x2 linked
// Checksum 0x6140ad71, Offset: 0x1be0
// Size: 0x26c
function function_d9cdb025(destination) {
    foreach (location in destination.locations) {
        var_4064e964 = location.instances[#"hash_6217ef2a3d7d895b"];
        if (isdefined(var_4064e964)) {
            if (zm_utility::is_survival() || is_true(level.var_dfe80386)) {
                model = #"hash_6e47d6576612543c";
            } else {
                model = #"hash_2b8015fa585f3b83";
            }
            if (is_true(level.var_9d96d174)) {
                if (is_true(level.var_dfe80386)) {
                    model = #"hash_6ceeb1e8c8e22a40";
                } else {
                    model = #"hash_51706bfde1e71907";
                }
                var_1b39aebe = 1;
            }
            children = content_manager::get_children(var_4064e964);
            foreach (child in children) {
                function_744f2a2(child, #"hash_6217ef2a3d7d895b", model, #"hash_4af85251966549b8", #"hash_3eac5ec7a888ddfb", 0, &function_472f16d8, var_1b39aebe);
            }
        }
    }
}

