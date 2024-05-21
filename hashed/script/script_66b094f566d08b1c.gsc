// Atian COD Tools GSC CW decompiler test
#using script_16b1b77a76492c6a;
#using script_3357acf79ce92f4b;
#using scripts\zm_common\zm_utility_zsurvival.gsc;
#using script_58860a35d0555f74;
#using scripts\zm_common\zm_vo.gsc;
#using script_4163291d6e693552;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_devgui.gsc;
#using script_4421226bbc54b398;
#using scripts\zm_common\zm_intel.gsc;
#using script_5a525a75a8f1f7e4;
#using script_18077945bb84ede7;
#using script_45bc3f1c6787035f;
#using script_72401f526ba71638;
#using scripts\zm_common\zm_weapons.gsc;
#using script_3a88f428c6d8ef90;
#using scripts\zm_common\zm_equipment.gsc;
#using script_25be5471a9c31833;
#using script_27347f09888ad15;
#using script_3411bb48d41bd3b;
#using script_4ccfb58a9443a60b;
#using scripts\zm\perk\zm_perk_tombstone.gsc;
#using script_32b18d9fb454babf;
#using script_437ce686d29bb81b;
#using script_18723fb52cbb6224;
#using script_6155d71e1c9a57eb;
#using script_6b2d896ac43eb90;
#using script_2125dd4d7e4788a5;
#using scripts\zm_common\zm_sq.gsc;
#using script_6fc2be37feeb317b;
#using script_7a5293d92c61c788;
#using script_2618e0f3e5e11649;
#using scripts\zm_common\objective_manager.gsc;
#using script_34ab99a4ca1a43d;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\killstreaks\killstreaks_util.gsc;
#using script_190d6b82bcca0908;
#using scripts\core_common\throttle_shared.gsc;
#using scripts\core_common\exploder_shared.gsc;
#using script_5b95daf45672308f;
#using script_2cb831533cab2794;
#using script_340a2e805e35f7a2;
#using scripts\core_common\damagefeedback_shared.gsc;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\hud_shared.gsc;
#using scripts\core_common\item_world.gsc;
#using scripts\weapons\weaponobjects.gsc;
#using script_cf3d8fde2407bb1;
#using scripts\core_common\fx_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\item_drop.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\content_manager.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace namespace_1b312da5;

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 0, eflags: 0x5
// Checksum 0x2c96ff6f, Offset: 0xcf8
// Size: 0x44
function private autoexec __init__system__() {
    system::register(#"hash_3cd3b81be4386726", &preinit, undefined, undefined, #"content_manager");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 0, eflags: 0x2 linked
// Checksum 0xb0ea435e, Offset: 0xd48
// Size: 0x814
function preinit() {
    if (!zm_utility::is_survival()) {
        return;
    }
    clientfield::register("scriptmover", "" + #"hash_627fe6d726003b48", 1, 1, "int");
    clientfield::register("world", "" + #"hash_1ff35e37755facac", 1, getminbitcountfornum(6), "int");
    clientfield::register("toplayer", "" + #"hash_583ce51cd4d9a904", 1, getminbitcountfornum(6), "int");
    clientfield::register("allplayers", "" + #"hash_33e8b606c01f74ee", 1, 1, "int");
    clientfield::register("world", "" + #"hash_645bdb2b2ae769ef", 1, 1, "int");
    clientfield::register("world", "" + #"hash_6d4501b4a27d3b0f", 1, getminbitcountfornum(6), "int");
    clientfield::register("scriptmover", "" + #"hash_723ddf6790b39408", 1, getminbitcountfornum(5), "int");
    clientfield::register("world", "" + #"hash_6eb00b16d3628642", 1, 1, "int");
    clientfield::register("world", "" + #"hash_763dd8035e80f7c", 1, 1, "int");
    if (!is_true(getgametypesetting(#"hash_759fe9a9853a9b36")) && !getdvarint(#"hash_730311c63805303a", 0)) {
        level.var_3c3b40c7 = sr_orda_health_bar::register();
    }
    if (util::get_map_name() === "wz_forest") {
        namespace_1fd59e39::function_1376ec37(undefined, undefined, "vol_sr_ee_hulk_restrict");
        namespace_553954de::function_6e9bb6b5(undefined, undefined, "vol_sr_ee_hulk_restrict");
        namespace_553954de::function_c1ced485(#"hash_82ac1fec5a17ea9");
    }
    if (!zm_utility::is_ee_enabled() || !getgametypesetting(#"hash_4fed85baf6c05ff1")) {
        return;
    }
    /#
        if (getdvarint(#"hash_369966b69057d9b2", 0)) {
            function_f73a5c91();
        }
        if (getdvarint(#"hash_81a1e1ebb5f0bb0", 0)) {
            namespace_cf6efd05::function_c484a9be(#"hash_48a412c1da6da338", 1);
        }
        if (getdvarint(#"hash_2fd6e98488cda073", 0)) {
            namespace_cf6efd05::function_c484a9be(#"hash_569773895b461123", 1);
        }
        if (getdvarint(#"hash_c378501c97939f0", 0)) {
            namespace_cf6efd05::function_c484a9be(#"hash_62df6469a6590d1c", 1);
        }
        if (getdvarint(#"hash_153275e5b2bd9972", 0)) {
            setdvar(#"hash_4fdce3a28f1397f2", 2);
        }
    #/
    function_f3afb36c();
    level callback::add_callback(#"hash_540f54ade63017ea", &function_22f3bc59);
    content_manager::register_script(#"amplify", &function_3d415834);
    content_manager::register_script(#"hash_1f5e56ff4b3c50e2", &function_abb99222);
    content_manager::register_script(#"observe", &function_90b2fdc5);
    if (level flag::get(#"hash_24ee328d248f88de")) {
        objective_manager::register_script(#"reveal", &function_7c583c30, &function_b6b9b6e6, #"ee", #"hash_b418b036831ea2a", #"hash_4fed85baf6c05ff1", 13, #"hash_4d343086d19c79e");
    }
    if (util::get_map_name() === "wz_forest") {
        level.var_a1e775a6[#"hash_5e28b761acc3ee26"][#"shot 170"] = 1;
        scene::add_scene_func(#"hash_47027fa54d6892d3", &function_a91c56fa, "shot_040");
        scene::add_scene_func(#"hash_5e28b761acc3ee26", &function_a09ec067, "play");
        scene::add_scene_func(#"hash_5e28b761acc3ee26", &function_234568a5, "done");
        scene::add_scene_func(#"hash_47027fa54d6892d3", &function_a09ec067, "play");
        scene::add_scene_func(#"hash_47027fa54d6892d3", &function_234568a5, "done");
    }
    /#
        level thread devgui_setup();
    #/
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xbfffe8c7, Offset: 0x1568
// Size: 0xa4
function function_a91c56fa(*a_ents) {
    self notify("2c458dc1c3f8407d");
    self endon("2c458dc1c3f8407d");
    level waittill(#"hash_4eb7e4b5540fc594");
    level lui::screen_fade_out(0.5, (1, 1, 1), #"hash_500ba29e2308ee03");
    wait(2);
    level lui::screen_fade_in(0.5, (1, 1, 1), #"hash_500ba29e2308ee03");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xaea26b89, Offset: 0x1618
// Size: 0x44
function function_a09ec067(*a_ents) {
    level clientfield::set("" + #"hash_763dd8035e80f7c", 1);
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x995408a7, Offset: 0x1668
// Size: 0x3c
function function_234568a5(*a_ents) {
    level clientfield::set("" + #"hash_763dd8035e80f7c", 0);
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 0, eflags: 0x2 linked
// Checksum 0x1f3e5e63, Offset: 0x16b0
// Size: 0x144
function function_f3afb36c() {
    if (namespace_cf6efd05::function_21d402f4(#"hash_74df6580d1c35b58")) {
        level flag::set(#"hash_5d9bfa8fc70231e4");
        return;
    }
    if (namespace_cf6efd05::function_21d402f4(#"hash_48a412c1da6da338")) {
        level flag::set(#"hash_3b46a8a050e7823e");
    }
    if (namespace_cf6efd05::function_21d402f4(#"hash_1153a17aabbab61f")) {
        level flag::set(#"hash_2bd3b9f50a6eca90");
    }
    if (namespace_cf6efd05::function_21d402f4(#"hash_569773895b461123")) {
        level flag::set(#"hash_12917a709be032ad");
    }
    if (namespace_cf6efd05::function_21d402f4(#"hash_62df6469a6590d1c")) {
        level flag::set(#"hash_24ee328d248f88de");
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 0, eflags: 0x2 linked
// Checksum 0x4429eabb, Offset: 0x1800
// Size: 0x16c
function function_22f3bc59() {
    if (level flag::get(#"hash_5d9bfa8fc70231e4")) {
        namespace_cf6efd05::function_c484a9be(#"hash_74df6580d1c35b58", 1);
        return;
    }
    if (level flag::get(#"hash_3b46a8a050e7823e")) {
        namespace_cf6efd05::function_c484a9be(#"hash_48a412c1da6da338", 1);
    }
    if (level flag::get(#"hash_2bd3b9f50a6eca90")) {
        namespace_cf6efd05::function_c484a9be(#"hash_1153a17aabbab61f", 1);
    }
    if (level flag::get(#"hash_12917a709be032ad")) {
        namespace_cf6efd05::function_c484a9be(#"hash_569773895b461123", 1);
    }
    if (level flag::get(#"hash_24ee328d248f88de")) {
        namespace_cf6efd05::function_c484a9be(#"hash_62df6469a6590d1c", 1);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x28571f38, Offset: 0x1978
// Size: 0x2ea
function function_3d415834(s_instance) {
    level endon(#"end_game");
    if (!level flag::get(#"hash_5d9bfa8fc70231e4") && !level flag::get(#"hash_3b46a8a050e7823e") && zm_utility::function_e3025ca5() >= 3 && !level flag::get(#"hash_4c9bb7a770c9e973")) {
        callback::on_item_pickup(&function_719a87d4);
        level thread world_event_radio_tuning::function_602f1c7e(s_instance);
        s_instance flag::wait_till("first_ambush_complete");
        mdl_radio = s_instance.mdl_radio;
        if (!isdefined(mdl_radio)) {
            return;
        }
        mdl_radio endon(#"death");
        mdl_radio thread zm_vo::function_d6f8bbd9(#"hash_2702967d33f4dadc", 1);
        level thread function_2d3cd5e8(s_instance);
        s_instance flag::wait_till("radio_tuning_success");
        wait(3);
        switch (randomintrangeinclusive(1, 3)) {
        case 1:
            mdl_radio zm_vo::function_d6f8bbd9(#"hash_6cb5ce936e173b1");
            wait(0.5);
            mdl_radio thread zm_vo::function_d6f8bbd9(#"hash_6cb5be936e171fe");
            break;
        case 2:
            mdl_radio zm_vo::function_d6f8bbd9(#"hash_10af694bf1804f26");
            wait(0.5);
            mdl_radio thread zm_vo::function_d6f8bbd9(#"hash_10af6a4bf18050d9");
            break;
        case 3:
            mdl_radio zm_vo::function_d6f8bbd9(#"hash_4fd9990138176447");
            wait(0.5);
            mdl_radio thread zm_vo::function_d6f8bbd9(#"hash_4fd9980138176294");
            break;
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x940fd093, Offset: 0x1c70
// Size: 0x1bc
function function_2d3cd5e8(s_instance) {
    if (!isdefined(s_instance)) {
        return;
    }
    level endon(#"end_game");
    s_instance endon(#"radio_tuning_success");
    for (i = 0; i < 4; i++) {
        while (true) {
            s_waitresult = s_instance waittill(#"hash_2277cbc7a1c6b43");
            var_e43750de = s_waitresult.var_e43750de;
            if (is_true(var_e43750de.b_set)) {
                break;
            }
        }
        switch (i) {
        case 0:
            str_line = #"hash_2702977d33f4dc8f";
            break;
        case 1:
            str_line = #"hash_2702987d33f4de42";
            break;
        case 2:
            str_line = #"hash_2702997d33f4dff5";
            break;
        case 3:
            str_line = #"hash_2702927d33f4d410";
            break;
        }
        if (isdefined(var_e43750de) && isdefined(str_line)) {
            var_e43750de thread zm_vo::function_d6f8bbd9(str_line, 1);
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xcb2dad2d, Offset: 0x1e38
// Size: 0x14c
function function_719a87d4(s_params) {
    if (isplayer(self) && s_params.item.itementry.name === #"item_zmintel_survival_maxis_artifact_7") {
        callback::remove_callback(#"on_item_pickup", &function_719a87d4);
        if (!level flag::get(#"hash_5d9bfa8fc70231e4")) {
            if (!level flag::get(#"hash_4c9bb7a770c9e973")) {
                level flag::set(#"hash_537da116d92d952f");
                function_f73a5c91();
                level thread function_a9ca37a4();
            }
            array::thread_all(getplayers(), &zm_intel::collect_intel, #"zmintel_survival_maxis_artifact_7");
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xbc5e6740, Offset: 0x1f90
// Size: 0x1d4
function function_76b5a507(*s_params) {
    namespace_dbb31ff3::function_170982ca(&function_76b5a507);
    mdl_beacon = level.var_1ea1d494.scriptmodel;
    if (isdefined(mdl_beacon)) {
        var_8746b886 = util::spawn_model(#"hash_30876ea41ba82413", mdl_beacon gettagorigin("screen_exfil_jnt") + (-4.5, 15.5, 0), mdl_beacon gettagangles("screen_exfil_jnt") + (78, 0, 0));
        var_8746b886 setscale(0.75);
        var_8746b886 linkto(mdl_beacon, "screen_exfil_jnt", (-4.5, 15.5, 0), (78, 0, 0));
        var_8746b886 playsound(#"hash_3b5cbbf2a7018a89");
        var_8746b886 playloopsound(#"hash_5c3886dfcd812df");
        mdl_beacon.var_8746b886 = var_8746b886;
        level clientfield::set("" + #"hash_1ff35e37755facac", 5);
        mdl_beacon showpart("screen_respond_jnt");
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0x5d08a855, Offset: 0x2170
// Size: 0x3c2
function function_57099652(*machine, *trigger) {
    level endon(#"end_game");
    level notify(#"hash_21533c72f7fcd47b");
    function_a9c9d2c9();
    if (!level flag::get(#"hash_5d9bfa8fc70231e4")) {
        foreach (e_player in function_a1ef346b()) {
            e_player clientfield::set_to_player("" + #"hash_583ce51cd4d9a904", 1);
        }
        level flag::set(#"hash_3b46a8a050e7823e");
        namespace_cf6efd05::function_c484a9be(#"hash_48a412c1da6da338", 1);
        for (i = 1; i < level.contentmanager.var_dc858a58.list.size; i++) {
            n_index = (level.contentmanager.var_dc858a58.index + i) % level.contentmanager.var_dc858a58.list.size;
            var_d6e8a7d6 = level.contentmanager.var_dc858a58.list[n_index];
            if (var_d6e8a7d6 != #"wz_forest") {
                level.var_3d1ef3ae = var_d6e8a7d6;
                break;
            }
        }
        mdl_beacon = level.var_1ea1d494.scriptmodel;
        if (isdefined(mdl_beacon)) {
            mdl_beacon showpart("screen_calling_jnt");
            mdl_beacon hidepart("screen_respond_jnt");
            if (isdefined(mdl_beacon.var_8746b886)) {
                mdl_beacon.var_8746b886 stoploopsound();
            }
            level thread function_f43ecee8(mdl_beacon);
        }
        wait(2);
        switch (randomintrangeinclusive(1, 3)) {
        case 1:
            level thread namespace_7589cf5c::play_vo(#"hash_118ac9c77644191e");
            break;
        case 2:
            level thread namespace_7589cf5c::play_vo(#"hash_118ac8c77644176b");
            break;
        case 3:
            level thread namespace_7589cf5c::play_vo(#"hash_118ac7c7764415b8");
            break;
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 0, eflags: 0x2 linked
// Checksum 0x9ab28b66, Offset: 0x2540
// Size: 0xfc
function function_f73a5c91() {
    callback::on_connect(&function_8cb966d6);
    foreach (e_player in getplayers()) {
        e_player thread function_8cb966d6();
    }
    namespace_dbb31ff3::function_ef5e5f3(&function_76b5a507);
    namespace_dbb31ff3::function_bf90331e("beacon_choice_respond", &function_57099652);
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 0, eflags: 0x2 linked
// Checksum 0xaaa864e1, Offset: 0x2648
// Size: 0x7c
function function_8cb966d6() {
    level endon(#"end_game", #"hash_321d1e0f446a8d6d");
    self endon(#"disconnect");
    while (!isdefined(level.var_8bef1f53)) {
        waitframe(1);
    }
    level.var_8bef1f53 sr_beacon_menu::function_666779d(self, 1);
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 0, eflags: 0x2 linked
// Checksum 0xd25bf757, Offset: 0x26d0
// Size: 0x1ac
function function_a9c9d2c9() {
    callback::remove_on_connect(&function_8cb966d6);
    level notify(#"hash_321d1e0f446a8d6d");
    namespace_dbb31ff3::function_170982ca(&function_76b5a507);
    namespace_dbb31ff3::function_b26aed81("beacon_choice_respond");
    if (isdefined(level.var_8bef1f53)) {
        foreach (e_player in getplayers()) {
            level.var_8bef1f53 sr_beacon_menu::function_666779d(e_player, 0);
        }
    }
    level clientfield::set("" + #"hash_1ff35e37755facac", 6);
    mdl_beacon = level.var_1ea1d494.scriptmodel;
    if (isdefined(mdl_beacon)) {
        mdl_beacon hidepart("screen_respond_jnt");
        mdl_beacon hidepart("screen_calling_jnt");
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 0, eflags: 0x2 linked
// Checksum 0xe4ed8e10, Offset: 0x2888
// Size: 0xac
function function_a9ca37a4() {
    level endon(#"end_game", #"hash_21533c72f7fcd47b");
    level waittill(#"hash_29edd9425510b40d", #"hash_66a72ae427cfc39a");
    level flag::set(#"hash_5d9bfa8fc70231e4");
    namespace_cf6efd05::function_c484a9be(#"hash_74df6580d1c35b58", 1);
    function_a9c9d2c9();
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x22f9cd06, Offset: 0x2940
// Size: 0xac
function function_f43ecee8(mdl_beacon) {
    if (!isdefined(mdl_beacon)) {
        return;
    }
    level endon(#"end_game");
    mdl_beacon endon(#"death");
    level waittill(#"hash_29edd9425510b40d", #"hash_66a72ae427cfc39a");
    mdl_beacon hidepart("screen_respond_jnt");
    mdl_beacon hidepart("screen_calling_jnt");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x735da9d0, Offset: 0x29f8
// Size: 0x542
function function_abb99222(s_instance) {
    level endon(#"end_game");
    var_db9e2dd = isdefined(s_instance.contentgroups[#"hash_1d0b38fd6d8376de"]) ? s_instance.contentgroups[#"hash_1d0b38fd6d8376de"] : [];
    foreach (var_e24a3dff in var_db9e2dd) {
        var_77cb4212 = content_manager::spawn_script_model(var_e24a3dff, #"sr_ee_hulk_wild_thing", 0, 1);
        var_77cb4212.targetname = "sr_ee_hulk_wild_thing";
        var_77cb4212 clientfield::set("" + #"hash_627fe6d726003b48", 1);
        var_77cb4212.var_e24a3dff = var_e24a3dff;
        var_e24a3dff.var_77cb4212 = var_77cb4212;
        var_77cb4212 clientfield::set("mimic_prop_rob", 1);
        var_77cb4212 val::set(#"hash_1d0b38fd6d8376de", "takedamage", 1);
        var_77cb4212 val::set(#"hash_1d0b38fd6d8376de", "allowdeath", 0);
        var_77cb4212.health = 1;
        var_77cb4212 thread function_33a937d1();
    }
    if (level flag::get(#"hash_12917a709be032ad")) {
        return;
    }
    if (level flag::get(#"hash_3b46a8a050e7823e")) {
        var_2cc0d452 = [array::random(var_db9e2dd)];
        /#
            if (getdvarint(#"hash_7850448b8b6aad02", 0) > 0) {
                var_2cc0d452 = arraycopy(var_db9e2dd);
            }
        #/
        foreach (var_4684f38d in var_2cc0d452) {
            var_4684f38d flag::set(#"lucky");
            var_255f195e = var_4684f38d.contentgroups[#"hash_17c776cd274246f7"][0];
            var_bdba6915 = content_manager::spawn_script_model(var_255f195e, #"hash_4265395ebd93303", 0, 0);
            var_bdba6915 setscale(0.3);
        }
        callback::add_callback(#"on_item_pickup", &function_910ec836);
        if (!level flag::get(#"hash_2bd3b9f50a6eca90")) {
            level flag::set(#"hash_2bd3b9f50a6eca90");
            namespace_cf6efd05::function_c484a9be(#"hash_1153a17aabbab61f", 1);
            level flag::wait_till(#"hash_e685666dd450a6b");
            wait(2);
            switch (randomintrangeinclusive(1, 3)) {
            case 1:
                level thread namespace_7589cf5c::play_vo(#"hash_250d133183e89db7");
                break;
            case 2:
                level thread namespace_7589cf5c::play_vo(#"hash_250d143183e89f6a");
                break;
            case 3:
                level thread namespace_7589cf5c::play_vo(#"hash_250d153183e8a11d");
                break;
            }
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 0, eflags: 0x2 linked
// Checksum 0x645b4131, Offset: 0x2f48
// Size: 0x28c
function function_33a937d1() {
    self endon(#"death");
    while (true) {
        s_waitresult = self waittill(#"damage");
        if (self.health - s_waitresult.amount <= 0) {
            e_attacker = s_waitresult.attacker;
            if (isvehicle(e_attacker)) {
                break;
            }
            if (isplayer(e_attacker) && isalive(e_attacker)) {
                e_attacker util::show_hit_marker();
                break;
            }
        }
    }
    self clientfield::set("mimic_prop_rob", 0);
    self ghost();
    playfx(#"hash_6a05a61d60674941", self.origin);
    var_9eb321a4 = #"sr_hulk_applause_unlucky_list";
    var_8f2bdcca = #"hash_10714187f58000aa";
    if (self.var_e24a3dff flag::get(#"lucky")) {
        var_9eb321a4 = #"sr_hulk_applause_lucky_list";
        var_8f2bdcca = #"hash_2fac469ccb51b7ff";
    }
    playsoundatposition(var_8f2bdcca, self.origin + (0, 0, 15));
    s_spawn = {#origin:self.origin, #angles:self.angles, #var_738dfc81:1, #scriptmodel:self};
    namespace_58949729::function_f82f361c(s_spawn, var_9eb321a4, 3);
    s_spawn struct::delete();
    self deletedelay();
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xb8cc6c82, Offset: 0x31e0
// Size: 0x1f2
function function_910ec836(s_params) {
    level endon(#"end_game");
    if (isplayer(self) && s_params.item.itementry.name === #"item_zmintel_survival_maxis_artifact_8") {
        callback::remove_callback(#"on_item_pickup", &function_910ec836);
        level flag::set(#"hash_12917a709be032ad");
        namespace_cf6efd05::function_c484a9be(#"hash_569773895b461123", 1);
        array::thread_all(getplayers(), &zm_intel::collect_intel, #"zmintel_survival_maxis_artifact_8");
        wait(1);
        switch (randomintrangeinclusive(1, 3)) {
        case 1:
            level thread namespace_7589cf5c::play_vo(#"hash_3f3d45342c77181d");
            break;
        case 2:
            level thread namespace_7589cf5c::play_vo(#"hash_3f3d42342c771304");
            break;
        case 3:
            level thread namespace_7589cf5c::play_vo(#"hash_3f3d43342c7714b7");
            break;
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x945cecfc, Offset: 0x33e0
// Size: 0x58a
function function_90b2fdc5(s_instance) {
    level endon(#"end_game");
    if (!level flag::get(#"hash_5d9bfa8fc70231e4") && level flag::get(#"hash_3b46a8a050e7823e") && !level flag::get(#"hash_24ee328d248f88de")) {
        level.var_a1823f64 = s_instance;
        if (isstring(s_instance.var_479d4130) || ishash(s_instance.var_479d4130)) {
            hidemiscmodels(s_instance.var_479d4130);
        }
        s_rotate = s_instance.contentgroups[#"rotate"][0];
        var_34f6451 = content_manager::spawn_script_model(s_rotate, #"hash_57ffaf2f98a015ed");
        s_instance.var_34f6451 = var_34f6451;
        a_ents[#"slide_projector"] = var_34f6451;
        var_34f6451 thread scene::play(#"sr_ee_hulk_observe_move", "idle", a_ents);
        var_1cce6548 = isdefined(s_instance.contentgroups[#"boost"]) ? s_instance.contentgroups[#"boost"] : [];
        foreach (var_c968f2b7 in var_1cce6548) {
            content_manager::spawn_script_model(var_c968f2b7, var_c968f2b7.model, 0, 0);
        }
        var_6ced8323 = s_instance.contentgroups[#"display"][0];
        if (isdefined(var_6ced8323)) {
            var_7bbc6dd2 = content_manager::spawn_script_model(var_6ced8323, #"hash_54b3253078e7d64f", 0, 0);
            var_7bbc6dd2 setscale(1.5);
        }
        a_s_blockers = isdefined(s_instance.contentgroups[#"blocker"]) ? s_instance.contentgroups[#"blocker"] : [];
        foreach (s_blocker in a_s_blockers) {
            switch (s_blocker.model) {
            case #"collision_clip_wall_128x128x10":
                str_model = #"collision_clip_wall_128x128x10";
                break;
            }
            if (isdefined(str_model)) {
                mdl_clip = content_manager::spawn_script_model(s_blocker, str_model, 1, 0);
                mdl_clip disconnectpaths();
                mdl_clip ghost();
                foreach (var_b2ac80ed in getnodesinradius(s_blocker.origin, 100, 20, 50)) {
                    setenablenode(var_b2ac80ed, 0);
                }
            }
        }
        level flag::wait_till(#"hash_12917a709be032ad");
        s_instance.var_838a2bd4 = 1;
        if (!isdefined(s_rotate.radius)) {
            s_rotate.radius = 128;
        }
        var_7aad4d7d = content_manager::spawn_interact(s_rotate, &function_2474dfef, #"hash_4e99b18ff2ed2824");
        var_7aad4d7d.s_instance = s_instance;
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x4002a8be, Offset: 0x3978
// Size: 0x5c
function function_2474dfef(*s_params) {
    s_instance = self.s_instance;
    if (isdefined(s_instance)) {
        self triggerenable(0);
        level thread function_3e5ee10c(s_instance, self);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 0, eflags: 0x2 linked
// Checksum 0xb3048c53, Offset: 0x39e0
// Size: 0x1b4
function function_547ad6c7() {
    self notify("28bd6a14932b3d87");
    self endon("28bd6a14932b3d87");
    level endon(#"hash_3d21c07ab9fa2d5e");
    self endon(#"death");
    self val::reset(#"hash_2eeb50db1a2f50d2", "ignoreme");
    while (true) {
        var_a1823f64 = level.var_a1823f64;
        if (isdefined(var_a1823f64)) {
            s_rotate = var_a1823f64.contentgroups[#"rotate"][0];
            if (isdefined(s_rotate)) {
                break;
            }
        }
        wait(1);
    }
    var_b7153b99 = 0;
    while (isdefined(s_rotate)) {
        if (distancesquared(self.origin, s_rotate.origin) <= sqr(256)) {
            if (!var_b7153b99) {
                self val::set(#"hash_2eeb50db1a2f50d2", "ignoreme", 1);
                var_b7153b99 = 1;
            }
        } else if (var_b7153b99) {
            self val::reset(#"hash_2eeb50db1a2f50d2", "ignoreme");
            var_b7153b99 = 0;
        }
        wait(1);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0xcc65939b, Offset: 0x3ba0
// Size: 0x7ec
function function_3e5ee10c(s_instance, var_7aad4d7d) {
    level endon(#"end_game");
    var_7aad4d7d endon(#"death");
    if (!isdefined(s_instance.var_a13c1d4e)) {
        s_instance.var_a13c1d4e = 0;
    }
    s_target = s_instance.contentgroups[#"target"][0];
    if (!s_instance flag::get(#"hash_15691707aa357dfb")) {
        s_instance flag::set(#"hash_15691707aa357dfb");
        var_34f6451 = s_instance.var_34f6451;
        level flag::set(#"hash_24ee328d248f88de");
        namespace_cf6efd05::function_c484a9be(#"hash_62df6469a6590d1c", 1);
        namespace_18bbc38e::function_8e64a2b1("wz_forest", #"ee", #"reveal");
        level clientfield::set("" + #"hash_1ff35e37755facac", 1);
        var_34f6451 playsound(#"hash_6ff1bdc36df55611");
        var_34f6451 playloopsound(#"hash_5929928a39b269ec");
        v_origin = s_target.origin + anglestoup(s_target.angles) * 16;
        s_instance.mdl_target = util::spawn_model(#"hash_413e6d8ec7666d41", v_origin, s_target.angles);
        mdl_target = s_instance.mdl_target;
        mdl_target setscale(0.6);
        function_339079ec(s_instance);
        callback::on_spawned(&function_547ad6c7);
        foreach (e_player in function_a1ef346b()) {
            e_player thread function_547ad6c7();
        }
        wait(2);
        level namespace_7589cf5c::play_vo(#"hash_e1e532be24a0b0e");
        wait(1);
        var_7aad4d7d sethintstring(#"hash_5c7f002c1f1dd912");
        var_7aad4d7d usetriggerrequirelookat(0);
        var_7aad4d7d triggerenable(1);
        return;
    }
    var_34f6451 = s_instance.var_34f6451;
    mdl_target = s_instance.mdl_target;
    if (!isdefined(var_34f6451) || !isdefined(mdl_target)) {
        return;
    }
    var_838a2bd4 = s_instance.var_838a2bd4 + 1;
    if (var_838a2bd4 > 3) {
        var_838a2bd4 = 1;
    }
    s_instance.var_838a2bd4 = var_838a2bd4;
    mdl_target hide();
    function_f21267b7(s_instance);
    var_34f6451 playsound(#"hash_5201d3f274e444e8");
    a_ents[#"slide_projector"] = var_34f6451;
    var_34f6451 scene::play(#"sr_ee_hulk_observe_move", "advance_slide", a_ents);
    switch (var_838a2bd4) {
    case 1:
        str_model = #"hash_413e6d8ec7666d41";
        v_origin = s_target.origin + anglestoup(s_target.angles) * 16;
        break;
    case 2:
        str_model = #"hash_413e6b8ec76669db";
        v_origin = s_target.origin + anglestoright(s_target.angles) * 13 + anglestoforward(s_target.angles) * 1;
        break;
    case 3:
        str_model = #"hash_413e6c8ec7666b8e";
        v_origin = s_target.origin + anglestoup(s_target.angles) * 18;
        break;
    }
    mdl_target.origin = v_origin;
    mdl_target setmodel(str_model);
    mdl_target show();
    function_339079ec(s_instance);
    if (var_838a2bd4 === 2 && !s_instance flag::get(#"hash_3e846c6fa4ba5194")) {
        s_instance flag::set(#"hash_3e846c6fa4ba5194");
        array::thread_all(getplayers(), &zm_intel::collect_intel, #"zmintel_survival_omega_document_10");
    }
    if (s_instance.var_a13c1d4e < 2) {
        wait(2);
        switch (s_instance.var_a13c1d4e) {
        case 0:
            level namespace_7589cf5c::play_vo(#"hash_e1e522be24a095b");
            wait(1);
            break;
        case 1:
            level namespace_7589cf5c::play_vo(#"hash_e1e512be24a07a8");
            wait(1);
            level thread function_5720dd7();
            break;
        }
        s_instance.var_a13c1d4e++;
    } else {
        wait(2);
    }
    var_7aad4d7d triggerenable(1);
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x63c56c1a, Offset: 0x4398
// Size: 0xe2
function function_339079ec(s_instance) {
    mdl_fx = s_instance.mdl_fx;
    if (!isdefined(mdl_fx)) {
        s_fx = s_instance.contentgroups[#"fx"][0];
        if (isdefined(s_fx)) {
            mdl_fx = content_manager::spawn_script_model(s_fx, #"tag_origin", 0, 0);
            playfxontag(#"hash_31b9905217e0bfe3", mdl_fx, "tag_origin");
            s_instance.mdl_fx = mdl_fx;
        }
        return;
    }
    mdl_fx.origin += (0, 0, 2048);
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x4c76311c, Offset: 0x4488
// Size: 0x4e
function function_f21267b7(s_instance) {
    mdl_fx = s_instance.mdl_fx;
    if (isdefined(mdl_fx)) {
        mdl_fx.origin -= (0, 0, 2048);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 0, eflags: 0x2 linked
// Checksum 0xc250af02, Offset: 0x44e0
// Size: 0x118
function function_5720dd7() {
    level endon(#"end_game");
    level namespace_7589cf5c::play_vo(#"hash_e1e582be24a138d");
    wait(1);
    callback::remove_on_spawned(&function_547ad6c7);
    level notify(#"hash_3d21c07ab9fa2d5e");
    foreach (e_player in getplayers()) {
        e_player val::reset(#"hash_2eeb50db1a2f50d2", "ignoreme");
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x83c5e12, Offset: 0x4600
// Size: 0x1124
function function_7c583c30(s_instance) {
    level.var_a05ab6 = s_instance;
    var_d638e9df = s_instance.contentgroups[#"stay"][0];
    s_instance.var_4cd68fa1 = content_manager::spawn_script_model(var_d638e9df, #"collision_clip_wall_128x128x10", 0, 0);
    s_instance.var_4cd68fa1 notsolid();
    s_instance.var_4cd68fa1 ghost();
    /#
        if (getdvarint(#"hash_4fdce3a28f1397f2", 0)) {
            namespace_ce1f29cc::function_368a7cde();
            level util::delay(1, undefined, &zm_utility::function_9ad5aeb1, 0, 0, 1, 0);
            var_a8795e51 = s_instance.contentgroups[#"debug"][0];
            var_cc88afe6 = var_a8795e51.contentgroups[#"hash_6217ef2a3d7d895b"][0];
            namespace_82b4c2d1::function_744f2a2(var_cc88afe6, #"hash_6217ef2a3d7d895b", #"hash_6e47d6576612543c", #"hash_4af85251966549b8", #"hash_3eac5ec7a888ddfb", 0, &namespace_82b4c2d1::function_472f16d8);
            s_pap = var_a8795e51.contentgroups[#"hash_448adaf187bbb953"][0];
            namespace_4b9fccd8::function_e0069640(s_pap);
            var_93696db0 = var_a8795e51.contentgroups[#"hash_629e563c2ebf707a"][0];
            namespace_dd7e54e3::function_93a99046(var_93696db0);
            var_5cacd3c8 = var_a8795e51.contentgroups[#"crafting_table"][0];
            namespace_1cc7b406::function_db05041b(var_5cacd3c8, #"hash_1e1b751abcb0c5b6", &namespace_1cc7b406::function_e3ad9f54);
            foreach (s_chest in isdefined(var_a8795e51.contentgroups[#"chest"]) ? var_a8795e51.contentgroups[#"chest"] : []) {
                s_chest.scriptmodel = content_manager::spawn_script_model(s_chest, #"hash_401a47741ffd646f", 1);
                s_chest.var_422ae63e = #"p9_fxanim_zm_gp_chest_01_lrg_bundle";
                s_chest.scriptmodel clientfield::set("tag_light_red_03", 1);
                trigger = content_manager::spawn_interact(s_chest, &function_e59605e3, #"survival/supply_drop_open", undefined, 96, undefined, undefined, (0, 0, 16));
                trigger.struct = s_chest;
                trigger.var_cc1fb2d0 = #"sr_hulk_debug_chest_list";
                s_chest.var_738dfc81 = 4;
                s_chest.scriptmodel.trigger = trigger;
            }
            callback::on_spawned(&function_a6006269);
            foreach (e_player in function_a1ef346b()) {
                e_player thread function_a6006269();
            }
            if (getdvarint(#"hash_4fdce3a28f1397f2", 0) >= 2) {
                s_instance.var_6c9943b1 = undefined;
                s_instance flag::set(#"hash_70b6311d703afa2e");
                s_instance.var_4272a188 triggerenable(0);
                s_instance.var_4272a188.origin -= (0, 0, 2048);
                var_6bc2752 = s_instance.contentgroups[#"debug_start"][0];
                objective_setposition(s_instance.var_e55c8b4e, var_6bc2752.origin);
                var_6bc2752.mdl_fx = content_manager::spawn_script_model(var_6bc2752, #"tag_origin");
                var_6bc2752.mdl_fx bobbing((0, 0, 1), 7, 4);
                playfxontag(#"hash_7b7ba0ac0755a064", var_6bc2752.mdl_fx, "p9_zm_gold_sur_crystal_medium_02_bundle");
                var_6bc2752.var_1490cdb5 = content_manager::spawn_interact(var_6bc2752, &function_fd8dcbe8, #"hash_d5017e9a504063f");
                var_6bc2752.var_1490cdb5 usetriggerrequirelookat(0);
                var_6bc2752.var_1490cdb5.s_instance = s_instance;
                return;
            }
        }
    #/
    showmiscmodels("mdl_sr_ee_hulk_slump");
    level thread function_a0930644(s_instance);
    var_ad04192d = getentarray("mdl_sr_ee_hulk_drop", "targetname");
    if (isarray(var_ad04192d)) {
        foreach (ent in var_ad04192d) {
            if (ent.objectid === #"hash_2e52dddc17c4728e") {
                var_234f6dad = ent;
                break;
            }
        }
        if (isdefined(var_234f6dad)) {
            s_instance.var_234f6dad = var_234f6dad;
            var_234f6dad setmovingplatformenabled(1, 0, 0);
            arrayremovevalue(var_ad04192d, var_234f6dad);
            foreach (ent in var_ad04192d) {
                ent linkto(var_234f6dad);
                if (ent.objectid === #"hash_2b2b0d3ae067f504") {
                    s_instance.var_4ddbdbc3 = ent;
                }
            }
        }
    }
    s_instance.var_4272a188 usetriggerrequirelookat(0);
    a_s_blockers = arraycopy(isdefined(s_instance.contentgroups[#"blocker"]) ? s_instance.contentgroups[#"blocker"] : []);
    s_exit = s_instance.contentgroups[#"exit"][0];
    s_move = s_exit.contentgroups[#"move"][0];
    if (!isdefined(a_s_blockers)) {
        a_s_blockers = [];
    } else if (!isarray(a_s_blockers)) {
        a_s_blockers = array(a_s_blockers);
    }
    a_s_blockers[a_s_blockers.size] = s_move;
    foreach (s_blocker in a_s_blockers) {
        if (isdefined(s_blocker.model)) {
            switch (s_blocker.model) {
            case #"hash_6128aa13628ae467":
                str_model = #"hash_6128aa13628ae467";
                break;
            case #"hash_587fe6e3db0c123":
                str_model = #"hash_587fe6e3db0c123";
                break;
            case #"hash_4e78cf36fe509960":
                str_model = #"hash_4e78cf36fe509960";
                break;
            case #"hash_33df2ba078538a8c":
                str_model = #"hash_33df2ba078538a8c";
                break;
            }
            if (isdefined(str_model)) {
                s_blocker.mdl_blocker = util::spawn_model(str_model, s_blocker.origin, s_blocker.angles);
                s_blocker.mdl_blocker disconnectpaths();
            }
        }
        if (!is_true(s_blocker.var_974d1fda)) {
            s_blocker.radius = float(isdefined(s_blocker.radius) ? s_blocker.radius : 60);
            foreach (dyn in function_c3d68575(s_blocker.origin, (s_blocker.radius, s_blocker.radius, s_blocker.radius))) {
                bundle = function_489009c1(dyn);
                if (isdefined(bundle.destroyed) && isdefined(dyn.health)) {
                    dyn dodamage(dyn.health, dyn.origin, undefined, undefined, "none", "MOD_EXPLOSIVE");
                    continue;
                }
                function_e2a06860(dyn, bundle.dynentstates.size - 1);
            }
        }
    }
    var_bb3c4a52 = getentarray("mdl_sr_ee_hulk_blockade", "targetname");
    foreach (var_5a6803b0 in var_bb3c4a52) {
        if (isdefined(var_5a6803b0)) {
            var_5a6803b0 delete();
        }
    }
    a_mdl_doors = getentarray("battery_stair_exit_doors", "targetname");
    foreach (mdl_door in a_mdl_doors) {
        if (isdefined(mdl_door)) {
            mdl_door delete();
        }
    }
    level thread function_f541a25f(s_instance);
    callback::on_spawned(&function_4afbaee8);
    foreach (e_player in function_a1ef346b()) {
        e_player thread function_4afbaee8();
    }
    a_s_locations = level.contentmanager.currentdestination.locations;
    if (isarray(a_s_locations)) {
        foreach (s_location in a_s_locations) {
            var_f9b7dc96 = s_location.instances[#"hash_77bdab265fe2ca2c"];
            if (isdefined(var_f9b7dc96)) {
                level thread function_50dfefa6(var_f9b7dc96);
            }
        }
    }
    level flag::wait_till(#"hash_7e250b62cf326bf9");
    if (namespace_cf6efd05::function_85b812c9()) {
        level flag::wait_till(#"initial_fade_in_complete");
    }
    wait(0.5);
    level thread namespace_7589cf5c::play_vo(#"hash_687d7ab831dbd95e");
    var_8424facf = s_instance.contentgroups[#"hash_5eb2dab937ae128c"][0];
    while (true) {
        var_ed71c89 = function_a1ef346b(undefined, var_8424facf.origin, 512);
        if (isarray(var_ed71c89) && var_ed71c89.size > 0) {
            break;
        }
        wait(1);
    }
    level thread namespace_7589cf5c::play_vo(#"hash_65d350c4313d86b1");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 0, eflags: 0x0
// Checksum 0xdc252411, Offset: 0x5730
// Size: 0x104
function function_a6006269() {
    self notify("4c33930947663b95");
    self endon("4c33930947663b95");
    self endon(#"death");
    if (self flag::get(#"hash_6dc960c3b174ed68")) {
        return;
    }
    while (!isdefined(self.score_total)) {
        wait(1);
    }
    wait(1);
    self namespace_7eea54d0::function_d9365a20(2000000);
    self namespace_2a9f256a::function_afab250a(33920, 1);
    self namespace_2a9f256a::function_a6d4221f(33920, 1);
    self flag::set(#"hash_6dc960c3b174ed68");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x0
// Checksum 0x127b4f83, Offset: 0x5840
// Size: 0x94
function function_e59605e3(s_params) {
    self thread namespace_58949729::function_8665f666(s_params);
    mdl_chest = self.struct.scriptmodel;
    mdl_chest clientfield::set("sr_supply_drop_chest_fx", 3);
    mdl_chest clientfield::set("reward_chest_fx", 3);
    mdl_chest thread namespace_58949729::function_1e2500f();
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x9e76cf99, Offset: 0x58e0
// Size: 0x306
function function_a0930644(s_instance) {
    level endon(#"end_game", #"hash_17028f0b9883e5be");
    s_instance.var_4272a188 triggerenable(0);
    s_instance.var_4272a188.origin -= (0, 0, 2048);
    var_8424facf = s_instance.contentgroups[#"hash_5eb2dab937ae128c"][0];
    objective_setposition(s_instance.var_e55c8b4e, var_8424facf.origin);
    var_bc256b43 = content_manager::spawn_interact(var_8424facf, &function_6256ed77, #"hash_4d343086d19c79e");
    var_bc256b43.s_instance = s_instance;
    s_instance.var_ca4ed51d = getent(var_8424facf.targetname, "target");
    var_ca4ed51d = s_instance.var_ca4ed51d;
    while (isdefined(var_bc256b43)) {
        a_e_players = function_a1ef346b();
        var_d67ee054 = a_e_players.size > 0;
        foreach (e_player in a_e_players) {
            if (e_player isinvehicle() || !e_player istouching(var_ca4ed51d)) {
                var_d67ee054 = 0;
                var_bc256b43 setinvisibletoplayer(e_player);
                continue;
            }
            var_bc256b43 setvisibletoplayer(e_player);
        }
        if (var_d67ee054) {
            s_instance flag::set(#"hash_32b802870061024a");
            var_bc256b43 sethintstring(#"hash_2144a2c11096fe53");
        } else {
            s_instance flag::clear(#"hash_32b802870061024a");
            var_bc256b43 sethintstring(#"hash_4d343086d19c79e");
        }
        waitframe(1);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 0, eflags: 0x2 linked
// Checksum 0xe5cec5e9, Offset: 0x5bf0
// Size: 0x17c
function function_4afbaee8() {
    self notify("7b87639f6b80e875");
    self endon("7b87639f6b80e875");
    self endon(#"death", #"hash_20f419f3fa65cef4");
    self val::reset(#"hash_4dda0aa3ba51599a", "ignoreme");
    for (var_ca4ed51d = level.var_a05ab6.var_ca4ed51d; !isdefined(var_ca4ed51d); var_ca4ed51d = level.var_a05ab6.var_ca4ed51d) {
        waitframe(1);
    }
    var_ca4ed51d endon(#"death");
    var_b7153b99 = 0;
    while (true) {
        if (self istouching(var_ca4ed51d)) {
            if (!var_b7153b99) {
                self val::set(#"hash_4dda0aa3ba51599a", "ignoreme", 1);
                var_b7153b99 = 1;
            }
        } else if (var_b7153b99) {
            self val::reset(#"hash_4dda0aa3ba51599a", "ignoreme");
            var_b7153b99 = 0;
        }
        waitframe(1);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xec67d2e4, Offset: 0x5d78
// Size: 0x11c
function function_6256ed77(s_params) {
    s_instance = self.s_instance;
    if (isdefined(s_instance) && s_instance flag::get(#"hash_32b802870061024a")) {
        self triggerenable(0);
        playsoundatposition(#"hash_6f5247b19c6194cd", self.origin);
        level clientfield::set("" + #"hash_6d4501b4a27d3b0f", 1);
        level namespace_9b972177::function_9f5c2ff2("hulk_begins");
        s_instance.var_4272a188 callback::callback(#"on_trigger", s_params);
        self deletedelay();
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xd0f2bf27, Offset: 0x5ea0
// Size: 0x654
function function_f541a25f(s_instance) {
    level endon(#"end_game");
    var_d15706ed = s_instance.contentgroups[#"hash_1b764530c070424a"][0];
    var_5f698d8a = isdefined(var_d15706ed.contentgroups[#"hash_3affa4bad8c2ea58"]) ? var_d15706ed.contentgroups[#"hash_3affa4bad8c2ea58"] : [];
    foreach (var_3f3f0752 in var_5f698d8a) {
        n_radius = float(var_3f3f0752.radius);
        while (true) {
            s_result = positionquery_source_navigation(var_3f3f0752.origin, 0, n_radius, 16, 32);
            if (isarray(s_result.data) && s_result.data.size > 0) {
                break;
            }
            waitframe(1);
        }
        var_3f3f0752.a_s_spawns = s_result.data;
    }
    a_s_spawns = [];
    var_c5bb8329 = 0;
    while (!var_c5bb8329 && a_s_spawns.size < 32) {
        var_5f698d8a = array::randomize(var_5f698d8a);
        foreach (var_3f3f0752 in var_5f698d8a) {
            s_spawn = undefined;
            if (a_s_spawns.size <= 0) {
                s_spawn = array::random(var_3f3f0752.a_s_spawns);
                arrayremovevalue(var_3f3f0752.a_s_spawns, s_spawn);
                if (!isdefined(a_s_spawns)) {
                    a_s_spawns = [];
                } else if (!isarray(a_s_spawns)) {
                    a_s_spawns = array(a_s_spawns);
                }
                a_s_spawns[a_s_spawns.size] = s_spawn;
                continue;
            }
            if (a_s_spawns.size >= 32) {
                break;
            }
            if (var_3f3f0752 flag::get(#"depleted") || var_3f3f0752.a_s_spawns.size <= 0) {
                var_3f3f0752 flag::set(#"depleted");
            } else {
                foreach (s_option in var_3f3f0752.a_s_spawns) {
                    if (!isdefined(arraygetclosest(s_option.origin, a_s_spawns, 128))) {
                        s_spawn = s_option;
                        break;
                    }
                    waitframe(1);
                }
                if (!isdefined(s_spawn)) {
                    foreach (s_option in var_3f3f0752.a_s_spawns) {
                        if (!isdefined(arraygetclosest(s_option.origin, a_s_spawns, 64))) {
                            s_spawn = s_option;
                            break;
                        }
                        waitframe(1);
                    }
                    if (!isdefined(s_spawn)) {
                        var_3f3f0752 flag::set(#"depleted");
                    }
                }
                if (isdefined(s_spawn)) {
                    arrayremovevalue(var_3f3f0752.a_s_spawns, s_spawn);
                    if (!isdefined(a_s_spawns)) {
                        a_s_spawns = [];
                    } else if (!isarray(a_s_spawns)) {
                        a_s_spawns = array(a_s_spawns);
                    }
                    a_s_spawns[a_s_spawns.size] = s_spawn;
                }
            }
            if (a_s_spawns.size < 32) {
                var_c5bb8329 = 1;
                foreach (var_3f3f0752 in var_5f698d8a) {
                    if (!var_3f3f0752 flag::get(#"depleted")) {
                        var_c5bb8329 = 0;
                        break;
                    }
                }
                if (!var_c5bb8329) {
                    waitframe(1);
                }
            }
        }
    }
    var_d15706ed.var_5f698d8a = a_s_spawns;
    var_d15706ed flag::set(#"hash_8e1f7ccf4965bb");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xa3dfdee4, Offset: 0x6500
// Size: 0x270
function function_50dfefa6(s_instance) {
    level endon(#"end_game");
    s_instance flag::wait_till(#"hash_7c736fa0780da5c1");
    var_193b9763 = s_instance.var_193b9763;
    if (isarray(var_193b9763)) {
        foreach (var_5207017 in var_193b9763) {
            var_a30c5214 = var_5207017.var_501bc8c9;
            if (isstring(var_a30c5214)) {
                var_cb605fad = strtok(var_a30c5214, ", ");
                if (isarray(var_cb605fad)) {
                    foreach (var_929141c6 in var_cb605fad) {
                        if (var_929141c6 === #"ee") {
                            if (isdefined(var_5207017.trigger)) {
                                var_5207017.trigger deletedelay();
                            }
                            if (isdefined(var_5207017.var_126a8ffb)) {
                                var_5207017.var_126a8ffb delete();
                            }
                            if (isdefined(var_5207017.var_30b30aea)) {
                                var_5207017.var_30b30aea delete();
                            }
                            if (isdefined(var_5207017.n_obj_id)) {
                                zm_utility::function_bc5a54a8(var_5207017.n_obj_id);
                            }
                            break;
                        }
                    }
                }
            }
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0x3a7da789, Offset: 0x6778
// Size: 0x199c
function function_b6b9b6e6(s_instance, e_player) {
    level endon(#"end_game");
    s_instance endon(#"failed");
    if (isdefined(s_instance.var_4cd68fa1)) {
        s_instance.var_4cd68fa1 solid();
    }
    var_396341c0 = getent("sr_ee_hulk_player_stop", "targetname");
    if (isdefined(var_396341c0)) {
        var_396341c0 delete();
    }
    /#
        if (getdvarint(#"hash_4fdce3a28f1397f2", 0)) {
            var_f3527953 = getent("vol_sr_ee_hulk_restrict_beast", "J_SpineLower_ribcage");
            if (isdefined(var_f3527953)) {
                zm_utility::function_bc5a54a8(var_f3527953.objectiveid);
                if (isdefined(var_f3527953.trigger)) {
                    var_f3527953.trigger delete();
                }
                var_f3527953 scene::stop(1);
                if (isdefined(var_f3527953)) {
                    var_f3527953 delete();
                }
            }
            mdl_pap = getent("aether_bolt_loop", "J_SpineLower_ribcage");
            if (isdefined(mdl_pap)) {
                zm_utility::function_bc5a54a8(mdl_pap.objectiveid);
                if (isdefined(mdl_pap.trigger)) {
                    mdl_pap.trigger delete();
                }
                mdl_pap scene::stop(1);
                if (isdefined(mdl_pap)) {
                    mdl_pap delete();
                }
            }
            var_185c6200 = getent("<unknown string>", "J_SpineLower_ribcage");
            if (isdefined(var_185c6200)) {
                zm_utility::function_bc5a54a8(var_185c6200.objectiveid);
                if (isdefined(var_185c6200.trigger)) {
                    var_185c6200.trigger delete();
                }
                var_185c6200 clientfield::set("<unknown string>" + #"hash_7dfc37315a4eff0", 0);
                var_185c6200 scene::stop(1);
                if (isdefined(var_185c6200)) {
                    var_185c6200 thread util::delayed_delete(1);
                }
            }
            var_44aa636e = getent("<unknown string>", "J_SpineLower_ribcage");
            if (isdefined(var_44aa636e)) {
                zm_utility::function_bc5a54a8(var_44aa636e.objectiveid);
                if (isdefined(var_44aa636e.trigger)) {
                    var_44aa636e.trigger delete();
                }
                var_44aa636e scene::stop(1);
                if (isdefined(var_44aa636e)) {
                    var_44aa636e delete();
                }
            }
            var_a8795e51 = s_instance.contentgroups[#"debug"][0];
            foreach (s_chest in isdefined(var_a8795e51.contentgroups[#"chest"]) ? var_a8795e51.contentgroups[#"chest"] : []) {
                if (isdefined(s_chest.scriptmodel)) {
                    if (isdefined(s_chest.scriptmodel.trigger)) {
                        s_chest.scriptmodel.trigger delete();
                    }
                    s_chest.scriptmodel clientfield::set("<unknown string>", 0);
                    s_chest.scriptmodel scene::stop();
                    s_chest.scriptmodel thread util::delayed_delete(1);
                }
            }
        }
    #/
    level thread clear_vehicles(s_instance);
    if (s_instance flag::get(#"hash_70b6311d703afa2e")) {
        return;
    }
    function_6b1df768();
    namespace_1fd59e39::function_1376ec37(undefined, undefined, "vol_sr_ee_hulk_restrict_meet");
    namespace_553954de::function_6e9bb6b5(undefined, undefined, "vol_sr_ee_hulk_restrict_meet");
    level flag::set(#"in_dark_side");
    level thread function_a988ea3e(s_instance);
    zm_sq::function_266d66eb(#"hash_299e2967fc164ebf", undefined, 0, #"hash_1ab762d585960cc3", #"search");
    s_lock = s_instance.contentgroups[#"lock"][0];
    zm_sq::function_266d66eb(#"hash_66884519b9716488", s_lock, undefined, undefined, #"lock", undefined, &function_35cf6e0b);
    var_3e1b52d5 = content_manager::spawn_interact(s_lock, &function_a998b7a0, #"hash_52da8aeb6366964");
    var_3e1b52d5.s_instance = s_instance;
    mdl_lock = content_manager::spawn_script_model(s_lock, #"hash_51b155104fbf49b4", 0, 1);
    var_3e1b52d5.mdl_lock = mdl_lock;
    mdl_lock setscale(1);
    level thread scene::play("elevator_spinning_lights");
    level thread scene::play(#"hash_3c41f7e5bff57fd6");
    level thread scene::init(#"hash_5e28b761acc3ee26");
    wait(1);
    var_234f6dad = s_instance.var_234f6dad;
    if (isdefined(var_234f6dad)) {
        var_234f6dad playsound(#"hash_7743f36c00ac323b");
        var_234f6dad playloopsound(#"hash_7f7f89fef5d5fc2d");
        var_234f6dad thread function_62f0fbc0();
        foreach (e_player in function_a1ef346b()) {
            level thread function_a7978694(e_player, 0.08);
            level thread function_176408e6(e_player, #"hash_1fbfa98cada74ee9", 0.2);
        }
        var_4ddbdbc3 = s_instance.var_4ddbdbc3;
        if (isdefined(var_4ddbdbc3)) {
            var_4ddbdbc3 fx::play(#"hash_1cfdf032d66c0b66", var_4ddbdbc3.origin, var_4ddbdbc3.angles, #"stop_fx", 1);
        }
        level thread function_dac9401e(var_234f6dad, var_4ddbdbc3);
        var_234f6dad movez(-1185, 25);
    }
    level thread zm_utility::function_9ad5aeb1(0, 0, 1, 0);
    callback::remove_on_spawned(&function_4afbaee8);
    foreach (e_player in getplayers()) {
        e_player notify(#"hash_20f419f3fa65cef4");
        e_player val::reset(#"hash_4dda0aa3ba51599a", "ignoreme");
    }
    wait(1);
    level thread namespace_7589cf5c::play_vo(#"hash_56c9b348ddecce10");
    wait(6);
    level thread zm_utility::function_9ad5aeb1(0, 0, 1, 0);
    var_a6d869eb = s_instance.contentgroups[#"spawns"][0];
    level thread function_dcb31940(s_instance, var_a6d869eb);
    callback::on_spawned(&function_3ed141ca);
    callback::on_player_killed(&function_7eed64d4);
    foreach (e_player in function_a1ef346b()) {
        e_player clientfield::set("" + #"hash_33e8b606c01f74ee", 1);
    }
    wait(2);
    callback::on_connect(&function_683e1c1a);
    foreach (e_player in getplayers()) {
        e_player clientfield::set_to_player("" + #"hash_583ce51cd4d9a904", 5);
    }
    level thread function_35f83dc7(s_instance);
    s_instance flag::wait_till(#"hash_63d2c6d7441b2a9d");
    level clientfield::set("" + #"hash_6d4501b4a27d3b0f", 2);
    var_3e1b52d5 delete();
    zm_sq::objective_complete(#"lock");
    a_s_blockers = isdefined(s_instance.contentgroups[#"blocker"]) ? s_instance.contentgroups[#"blocker"] : [];
    foreach (s_blocker in a_s_blockers) {
        if (isdefined(s_blocker.mdl_blocker) && !is_true(s_blocker.var_2561faba)) {
            s_blocker.mdl_blocker delete();
        }
    }
    zm_sq::objective_complete(#"search");
    function_61790a8d(var_a6d869eb);
    foreach (e_player in getplayers()) {
        e_player val::set(#"hash_220f72cafd2c6d4e", "takedamage", 0);
        e_player val::set(#"hash_220f72cafd2c6d4e", "allowdeath", 0);
        e_player val::set(#"hash_220f72cafd2c6d4e", "ignoreme", 1);
    }
    level thread zm_vo::function_d6f8bbd9(#"hash_6d48f5de304c23c6", 1, getplayers());
    var_2d52e927 = 0;
    /#
        if (getdvarint(#"hash_43eabda043de58f9", 0)) {
            var_2d52e927 = 1;
        }
    #/
    if (!var_2d52e927) {
        level scene::init_streamer(#"hash_5e28b761acc3ee26", getplayers(), 0, 0);
        callback::remove_on_spawned(&function_3ed141ca);
        callback::remove_on_player_killed(&function_7eed64d4);
        foreach (e_player in function_a1ef346b()) {
            e_player clientfield::set("" + #"hash_33e8b606c01f74ee", 0);
        }
        foreach (e_player in getplayers()) {
            e_player.var_f4e33249 = 1;
        }
        level namespace_9b972177::function_9f5c2ff2("scene_inform");
        level scene::play(#"hash_5e28b761acc3ee26");
        level namespace_9b972177::function_9f5c2ff2("hulk_continues");
    } else {
        level scene::stop(#"hash_5e28b761acc3ee26", 1);
    }
    var_e6bc63a1 = isdefined(s_instance.contentgroups[#"hash_52047b55dabccd4d"]) ? s_instance.contentgroups[#"hash_52047b55dabccd4d"] : [];
    var_e6bc63a1 = array::sort_by_script_int(var_e6bc63a1, 1);
    foreach (e_player in getplayers()) {
        if (isalive(e_player)) {
            var_5427f4bc = var_e6bc63a1[0];
            arrayremoveindex(var_e6bc63a1, 0);
            v_origin = getclosestpointonnavmesh(var_5427f4bc.origin);
            if (!isdefined(v_origin)) {
                v_origin = var_5427f4bc.origin;
            }
            e_player setorigin(v_origin);
            e_player setplayerangles(var_5427f4bc.angles);
        }
        e_player val::reset_all(#"hash_220f72cafd2c6d4e");
        e_player.var_f4e33249 = undefined;
    }
    if (!var_2d52e927) {
        callback::on_spawned(&function_3ed141ca);
        callback::on_player_killed(&function_7eed64d4);
        foreach (e_player in function_a1ef346b()) {
            e_player clientfield::set("" + #"hash_33e8b606c01f74ee", 1);
        }
    }
    level thread function_9e99ae6(var_a6d869eb);
    s_instance flag::set(#"hash_2d8528c8de39ead6");
    level util::delay(2, "end_game", &namespace_7589cf5c::play_vo, #"hash_2c173e3771e9edc5");
    namespace_1fd59e39::function_be3960b8("vol_sr_ee_hulk_restrict_meet");
    namespace_553954de::function_78d9625d("vol_sr_ee_hulk_restrict_meet");
    s_instance flag::wait_till(#"hash_773bece3d13b68c6");
    level clientfield::set("" + #"hash_6d4501b4a27d3b0f", 3);
    function_861f39db(s_instance);
    level zm_vo::function_d6f8bbd9(#"hash_5d57325a60949e7", undefined, getplayers());
    wait(3);
    level zm_vo::function_d6f8bbd9(#"hash_554ddb2d9623c514", undefined, getplayers());
    s_exit = s_instance.contentgroups[#"exit"][0];
    zm_sq::function_266d66eb(#"hash_3d896d54ea2917cf", s_exit, 0, #"hash_7c5523463d63e94f", #"exit");
    level namespace_7589cf5c::play_vo(#"hash_29dad902d14f8951");
    var_b4488d57 = s_instance.contentgroups[#"beast"][0];
    level thread function_a735633b(s_instance, var_b4488d57);
    level thread function_eb16f54b(s_instance, s_exit);
    s_instance flag::wait_till(#"hash_75f447a46c8cc63b");
    function_282ec8be();
    zm_sq::objective_complete(#"exit");
    level flag::clear(#"in_dark_side");
    callback::remove_on_spawned(&function_3ed141ca);
    callback::remove_on_player_killed(&function_7eed64d4);
    foreach (e_player in function_a1ef346b()) {
        e_player clientfield::set("" + #"hash_33e8b606c01f74ee", 0);
    }
    callback::remove_on_connect(&function_683e1c1a);
    foreach (e_player in getplayers()) {
        e_player clientfield::set_to_player("" + #"hash_583ce51cd4d9a904", 6);
    }
    function_61790a8d(var_a6d869eb);
    level thread function_cf30d3d1(s_exit);
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 0, eflags: 0x2 linked
// Checksum 0x3ab05d2e, Offset: 0x8120
// Size: 0xb4
function function_6b1df768() {
    namespace_1fd59e39::function_1376ec37(undefined, undefined, "vol_sr_ee_hulk_restrict_during");
    namespace_1fd59e39::function_be3960b8("vol_sr_ee_hulk_restrict");
    namespace_553954de::function_6e9bb6b5(undefined, undefined, "vol_sr_ee_hulk_restrict_during");
    namespace_553954de::function_c1ced485(#"hash_732ee24081b8622b");
    namespace_553954de::function_78d9625d("vol_sr_ee_hulk_restrict");
    namespace_553954de::function_118215e2(#"hash_82ac1fec5a17ea9");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 0, eflags: 0x2 linked
// Checksum 0x9878f50e, Offset: 0x81e0
// Size: 0xb4
function function_282ec8be() {
    namespace_1fd59e39::function_1376ec37(undefined, undefined, "vol_sr_ee_hulk_restrict");
    namespace_1fd59e39::function_be3960b8("vol_sr_ee_hulk_restrict_during");
    namespace_553954de::function_6e9bb6b5(undefined, undefined, "vol_sr_ee_hulk_restrict");
    namespace_553954de::function_c1ced485(#"hash_82ac1fec5a17ea9");
    namespace_553954de::function_78d9625d("vol_sr_ee_hulk_restrict_during");
    namespace_553954de::function_118215e2(#"hash_732ee24081b8622b");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x3330bbf1, Offset: 0x82a0
// Size: 0xe6
function clear_vehicles(s_instance) {
    level endon(#"end_game");
    foreach (var_facb5099 in arraysortclosest(getvehiclearray(), s_instance.origin, undefined, 0, 5000)) {
        if (isdefined(var_facb5099)) {
            level thread function_78e620d(var_facb5099);
            wait(1);
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xd8b15b89, Offset: 0x8390
// Size: 0x15c
function function_78e620d(var_facb5099) {
    if (!isdefined(var_facb5099)) {
        return;
    }
    var_facb5099 endon(#"death");
    var_facb5099 playrumbleonentity("sr_transmitter_clear");
    var_facb5099 makevehicleunusable();
    var_56b52ecb = var_facb5099 getvehoccupants();
    foreach (var_fca542e in var_56b52ecb) {
        if (isdefined(var_fca542e)) {
            var_fca542e unlink();
        }
    }
    var_facb5099 clientfield::increment("" + #"vehicle_teleport");
    wait(1.9);
    var_facb5099 delete();
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 0, eflags: 0x2 linked
// Checksum 0xeecbf029, Offset: 0x84f8
// Size: 0x54
function function_62f0fbc0() {
    self waittill(#"movedone");
    self playsound(#"hash_b2c99242582e309");
    self stoploopsound();
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0xf7f3879c, Offset: 0x8558
// Size: 0x17c
function function_dac9401e(var_234f6dad, var_4ddbdbc3) {
    if (!isdefined(var_234f6dad)) {
        return;
    }
    level endon(#"end_game");
    var_234f6dad endon(#"death");
    var_234f6dad waittill(#"movedone");
    foreach (e_player in function_a1ef346b()) {
        e_player notify(#"hash_2a8932a30514b276");
        e_player notify(#"hash_7843017441678f5e");
    }
    if (isdefined(var_4ddbdbc3)) {
        var_4ddbdbc3 notify(#"stop_fx");
    }
    wait(2);
    level zm_vo::function_d6f8bbd9(#"hash_3f1a3e196f1283a1", undefined, getplayers());
    level thread namespace_7589cf5c::play_vo(#"hash_72b13c2a61fa0a9d");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0xcf3379d0, Offset: 0x86e0
// Size: 0x6bc
function function_dcb31940(s_instance, var_72aa02d6) {
    level.var_ee7c86b5 = var_72aa02d6;
    var_72aa02d6.var_de4a9f7a = 32;
    var_72aa02d6.a_ai_spawned[#"all"] = [];
    var_72aa02d6.a_s_points = [];
    var_72aa02d6.var_9bb9c9e4 = 1;
    var_72aa02d6.var_cf0e49b5 = 1;
    var_72aa02d6.var_566f9a11 = 1250;
    var_72aa02d6.var_3c08dad2 = 240;
    a_s_spawns = isdefined(var_72aa02d6.contentgroups[#"spawn"]) ? var_72aa02d6.contentgroups[#"spawn"] : [];
    foreach (i, s_spawn in a_s_spawns) {
        if (isstring(s_spawn.script_noteworthy) || ishash(s_spawn.script_noteworthy)) {
            if (!isdefined(s_spawn.num_points)) {
                s_spawn.num_points = 10;
            }
            s_spawn.num_points = int(s_spawn.num_points);
            if (!isdefined(s_spawn.var_48d0f926)) {
                s_spawn.var_48d0f926 = 16;
            }
            s_spawn.var_48d0f926 = float(s_spawn.var_48d0f926);
            if (!isdefined(s_spawn.radius)) {
                s_spawn.radius = 512;
            }
            s_spawn.radius = float(s_spawn.radius);
            if (!isdefined(s_spawn.inner_radius)) {
                s_spawn.inner_radius = 0;
            }
            s_spawn.inner_radius = float(s_spawn.inner_radius);
            if (!isdefined(s_spawn.ai_list)) {
                s_spawn.ai_list = #"default_zombies_realm_5";
            }
            s_spawn.ai_list = hash(s_spawn.ai_list);
            if (!isdefined(var_72aa02d6.a_s_spawns[s_spawn.script_noteworthy])) {
                var_72aa02d6.a_s_spawns[s_spawn.script_noteworthy] = [];
            }
            var_72aa02d6.a_s_spawns[s_spawn.script_noteworthy][var_72aa02d6.a_s_spawns[s_spawn.script_noteworthy].size] = s_spawn;
            var_72aa02d6.var_63685494[s_spawn.script_noteworthy] = arraycopy(var_72aa02d6.a_s_spawns[s_spawn.script_noteworthy]);
            if (!isdefined(var_72aa02d6.var_938cc892[s_spawn.script_noteworthy])) {
                var_72aa02d6.var_938cc892[s_spawn.script_noteworthy] = [];
            }
            if (!isdefined(var_72aa02d6.var_938cc892[s_spawn.script_noteworthy][s_spawn.ai_list])) {
                var_68241066 = namespace_679a22ba::function_77be8a83(s_spawn.ai_list);
                var_72aa02d6.var_938cc892[s_spawn.script_noteworthy][s_spawn.ai_list] = var_68241066;
            }
            while (true) {
                a_s_points = namespace_85745671::function_e4791424(s_spawn.origin, s_spawn.num_points, s_spawn.var_48d0f926, s_spawn.radius, s_spawn.inner_radius);
                if (isdefined(a_s_points) && a_s_points.size > 0) {
                    break;
                }
                waitframe(1);
            }
            s_spawn.a_s_points = a_s_points;
            s_spawn.var_b5afe436 = arraycopy(s_spawn.a_s_points);
            var_72aa02d6.a_s_points = arraycombine(var_72aa02d6.a_s_points, a_s_points);
            if (i + 1 < a_s_spawns.size) {
                waitframe(1);
            }
        }
    }
    var_72aa02d6.var_b5afe436 = arraycopy(var_72aa02d6.a_s_points);
    var_72aa02d6 flag::set(#"initialized");
    if (!s_instance flag::get(#"hash_63d2c6d7441b2a9d")) {
        level thread function_c2a64e82(var_72aa02d6, #"hash_7fa634c2c6f6a18b", 5, undefined, 0, #"hash_18069beca0746715");
        level thread function_c2a64e82(var_72aa02d6, #"hash_75cea46e1972beee", 10, undefined, 0, #"hash_18069beca0746715");
        level thread function_c2a64e82(var_72aa02d6, #"hash_50b3cc006552fe1e", 10, undefined, 0, #"hash_18069beca0746715");
        level thread function_c2a64e82(var_72aa02d6, #"central", 6, #"hash_548eb59c00a7f6b0", 0, undefined, #"hash_18069beca0746715");
        level thread function_c2a64e82(var_72aa02d6, #"hash_62e616024da4239d", 10, #"hash_548eb59c00a7f6b0", 0, undefined, #"hash_18069beca0746715");
        level thread function_c2a64e82(var_72aa02d6, #"hash_5b85b545c3e8a293", 10, #"hash_548eb59c00a7f6b0", 0, undefined, #"hash_18069beca0746715");
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0xa4776485, Offset: 0x8da8
// Size: 0xb2
function function_6c1c13c0(var_72aa02d6, str_script_noteworthy) {
    foreach (var_6d732cee in getentarray(var_72aa02d6.targetname, "target")) {
        if (var_6d732cee.script_noteworthy === str_script_noteworthy) {
            return var_6d732cee;
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0xfbb3e9ee, Offset: 0x8e68
// Size: 0x21a
function function_2699787c(var_72aa02d6, var_d168712b) {
    var_72aa02d6 endon(#"hash_48ede6eb3d3e0d03");
    if (!isdefined(var_d168712b)) {
        var_d168712b = [];
    } else if (!isarray(var_d168712b)) {
        var_d168712b = array(var_d168712b);
    }
    var_8ecac684 = [];
    foreach (str_script_noteworthy in var_d168712b) {
        var_6d732cee = function_6c1c13c0(var_72aa02d6, str_script_noteworthy);
        if (isdefined(var_6d732cee)) {
            if (!isdefined(var_8ecac684)) {
                var_8ecac684 = [];
            } else if (!isarray(var_8ecac684)) {
                var_8ecac684 = array(var_8ecac684);
            }
            if (!isinarray(var_8ecac684, var_6d732cee)) {
                var_8ecac684[var_8ecac684.size] = var_6d732cee;
            }
        }
    }
    if (var_8ecac684.size <= 0) {
        return;
    }
    while (true) {
        foreach (var_6d732cee in var_8ecac684) {
            if (function_5d499771(var_6d732cee)) {
                return 1;
            }
        }
        waitframe(1);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xcc337a30, Offset: 0x9090
// Size: 0xce
function function_5d499771(var_6d732cee) {
    if (!isdefined(var_6d732cee)) {
        return false;
    }
    foreach (e_player in function_a1ef346b()) {
        if (e_player istouching(var_6d732cee) && !e_player util::function_88c74107()) {
            return true;
        }
    }
    return false;
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 7, eflags: 0x2 linked
// Checksum 0x7ae0166, Offset: 0x9168
// Size: 0x770
function function_c2a64e82(var_72aa02d6, str_script_noteworthy, n_to_spawn = 0, a_str_vol, b_respawn = 1, var_1610e59, var_d2301c77) {
    var_72aa02d6 endon(#"hash_48ede6eb3d3e0d03");
    if (isdefined(a_str_vol)) {
        if (!isdefined(a_str_vol)) {
            a_str_vol = [];
        } else if (!isarray(a_str_vol)) {
            a_str_vol = array(a_str_vol);
        }
        function_2699787c(var_72aa02d6, a_str_vol);
    }
    a_s_spawns = arraycopy(var_72aa02d6.a_s_spawns[str_script_noteworthy]);
    a_s_spawns = array::filter(a_s_spawns, 0, &function_86f99a7b);
    a_ai_spawned = [];
    for (i = 0; i < n_to_spawn; i++) {
        if (a_s_spawns.size <= 0) {
            a_s_spawns = arraycopy(var_72aa02d6.a_s_spawns[str_script_noteworthy]);
            a_s_spawns = array::filter(a_s_spawns, 0, &function_86f99a7b);
        }
        s_spawn = array::random(a_s_spawns);
        if (s_spawn.var_b5afe436.size <= 0) {
            s_spawn.var_b5afe436 = arraycopy(s_spawn.a_s_points);
        }
        s_point = array::random(s_spawn.var_b5afe436);
        if (isvec(s_point.origin)) {
            v_point = getclosestpointonnavmesh(s_point.origin, 64);
            if (isvec(v_point)) {
                var_68241066 = var_72aa02d6.var_938cc892[s_spawn.script_noteworthy][s_spawn.ai_list];
                var_6017f33e = namespace_679a22ba::function_ca209564(s_spawn.ai_list, var_68241066);
                var_7ecdee63 = var_6017f33e.var_990b33df;
                if (isdefined(var_7ecdee63)) {
                    var_72aa02d6 flag::wait_till_clear(#"hash_77c4503738b447e");
                    function_1eaaceab(var_72aa02d6.a_ai_spawned[#"all"]);
                    if ((isstring(var_d2301c77) || ishash(var_d2301c77)) && var_72aa02d6.a_ai_spawned[#"all"].size + 1 >= var_72aa02d6.var_de4a9f7a) {
                        function_886e403b(var_72aa02d6, var_d2301c77, a_ai_spawned);
                    }
                    var_72aa02d6 flag::wait_till_clear(#"hash_77c4503738b447e");
                    arrayremovevalue(a_s_spawns, s_spawn);
                    arrayremovevalue(s_spawn.var_b5afe436, s_point);
                    while (true) {
                        ai_zombie = namespace_85745671::function_9d3ad056(var_7ecdee63, v_point, (0, randomfloat(360), 0), undefined, 0);
                        if (isdefined(ai_zombie)) {
                            break;
                        }
                        waitframe(1);
                    }
                    if (!isdefined(a_ai_spawned)) {
                        a_ai_spawned = [];
                    } else if (!isarray(a_ai_spawned)) {
                        a_ai_spawned = array(a_ai_spawned);
                    }
                    a_ai_spawned[a_ai_spawned.size] = ai_zombie;
                    if (!isdefined(var_72aa02d6.a_ai_spawned[#"all"])) {
                        var_72aa02d6.a_ai_spawned[#"all"] = [];
                    } else if (!isarray(var_72aa02d6.a_ai_spawned[#"all"])) {
                        var_72aa02d6.a_ai_spawned[#"all"] = array(var_72aa02d6.a_ai_spawned[#"all"]);
                    }
                    var_72aa02d6.a_ai_spawned[#"all"][var_72aa02d6.a_ai_spawned[#"all"].size] = ai_zombie;
                    function_1eaaceab(var_72aa02d6.a_ai_spawned[#"all"]);
                    if (isstring(var_1610e59) || ishash(var_1610e59)) {
                        if (!isdefined(var_72aa02d6.a_ai_spawned[var_1610e59])) {
                            var_72aa02d6.a_ai_spawned[var_1610e59] = [];
                        } else if (!isarray(var_72aa02d6.a_ai_spawned[var_1610e59])) {
                            var_72aa02d6.a_ai_spawned[var_1610e59] = array(var_72aa02d6.a_ai_spawned[var_1610e59]);
                        }
                        var_72aa02d6.a_ai_spawned[var_1610e59][var_72aa02d6.a_ai_spawned[var_1610e59].size] = ai_zombie;
                        function_1eaaceab(var_72aa02d6.a_ai_spawned[var_1610e59]);
                    }
                    ai_zombie.var_4a44f930 = 1;
                    if (b_respawn) {
                        ai_zombie.var_43b32a98 = {#var_72aa02d6:var_72aa02d6, #str_script_noteworthy:str_script_noteworthy, #a_str_vol:a_str_vol};
                        ai_zombie callback::function_d8abfc3d(#"death", &function_34bc84a1);
                    }
                    if (isdefined(var_68241066)) {
                        namespace_679a22ba::function_266ee075(s_spawn.ai_list, var_68241066);
                    }
                    if (i + 1 < n_to_spawn) {
                        wait(0.1);
                    }
                }
            }
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x39c8eaee, Offset: 0x98e0
// Size: 0x2e
function function_86f99a7b(s_spawn) {
    return isdefined(s_spawn) && !is_true(s_spawn.disabled);
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x2dc87919, Offset: 0x9918
// Size: 0x44
function function_61790a8d(var_72aa02d6) {
    var_72aa02d6 notify(#"hash_48ede6eb3d3e0d03");
    level thread zm_utility::function_9ad5aeb1(0, 0, 1, 0);
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 4, eflags: 0x2 linked
// Checksum 0xae7cdc3, Offset: 0x9968
// Size: 0x3be
function function_886e403b(var_72aa02d6, var_d2301c77 = #"all", var_ece91fb, var_6022d61f = 0) {
    var_72aa02d6 endon(#"hash_48ede6eb3d3e0d03");
    function_1eaaceab(var_72aa02d6.a_ai_spawned[var_d2301c77]);
    var_c793924d = arraycopy(var_72aa02d6.a_ai_spawned[var_d2301c77]);
    if (isarray(var_ece91fb)) {
        function_1eaaceab(var_ece91fb);
        foreach (var_e6b84dc3 in var_ece91fb) {
            arrayremovevalue(var_c793924d, var_ece91fb);
        }
    }
    var_d83a65d4 = 0;
    foreach (var_8aa0ce54 in var_c793924d) {
        if (isalive(var_8aa0ce54)) {
            b_can_see = 0;
            foreach (e_player in function_a1ef346b()) {
                if (e_player zm_utility::is_player_looking_at(var_8aa0ce54.origin, undefined, 0, e_player)) {
                    b_can_see = 1;
                    break;
                }
            }
            if (!b_can_see) {
                ai_cleanup = var_8aa0ce54;
                break;
            }
            var_d83a65d4++;
            if (var_d83a65d4 % 5 == 0) {
                waitframe(1);
            }
        }
    }
    if (!isdefined(ai_cleanup)) {
        function_1eaaceab(var_c793924d);
        ai_cleanup = array::random(var_c793924d);
    }
    if (isdefined(ai_cleanup)) {
        arrayremovevalue(var_72aa02d6.a_ai_spawned[#"all"], ai_cleanup);
        arrayremovevalue(var_72aa02d6.a_ai_spawned[var_d2301c77], ai_cleanup);
        if (!var_6022d61f) {
            ai_cleanup callback::callback(#"hash_10ab46b52df7967a");
        } else {
            ai_cleanup deletedelay();
        }
        while (isdefined(ai_cleanup)) {
            waitframe(1);
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 3, eflags: 0x2 linked
// Checksum 0xf6a82266, Offset: 0x9d30
// Size: 0xd4
function function_4cc9e609(var_d2301c77, var_ece91fb, var_6022d61f) {
    s_instance = level.contentmanager.activeobjective;
    var_a6d869eb = s_instance.contentgroups[#"spawns"][0];
    var_a6d869eb flag::wait_till(#"initialized");
    var_a6d869eb.var_de4a9f7a--;
    if (var_a6d869eb.a_ai_spawned[#"all"].size >= var_a6d869eb.var_de4a9f7a) {
        function_886e403b(var_a6d869eb, var_d2301c77, var_ece91fb, var_6022d61f);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 0, eflags: 0x2 linked
// Checksum 0xedb2d14e, Offset: 0x9e10
// Size: 0x78
function release_spawn() {
    s_instance = level.contentmanager.activeobjective;
    var_a6d869eb = s_instance.contentgroups[#"spawns"][0];
    var_a6d869eb flag::wait_till(#"initialized");
    var_a6d869eb.var_de4a9f7a++;
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 0, eflags: 0x2 linked
// Checksum 0x598d3677, Offset: 0x9e90
// Size: 0xbc
function function_34bc84a1() {
    self callback::function_52ac9652(#"death", &function_34bc84a1);
    var_72aa02d6 = self.var_43b32a98.var_72aa02d6;
    str_script_noteworthy = self.var_43b32a98.str_script_noteworthy;
    a_str_vol = self.var_43b32a98.a_str_vol;
    if (isdefined(str_script_noteworthy) && isdefined(var_72aa02d6) && isdefined(a_str_vol)) {
        level thread function_c4b8f0b5(var_72aa02d6, str_script_noteworthy, 1, a_str_vol);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 4, eflags: 0x2 linked
// Checksum 0xb0d26f08, Offset: 0x9f58
// Size: 0x768
function function_c4b8f0b5(var_72aa02d6, str_script_noteworthy, n_spawns, a_str_vol) {
    var_72aa02d6 endon(#"hash_48ede6eb3d3e0d03");
    wait(randomfloatrange(120, 300));
    if (!isdefined(a_str_vol)) {
        a_str_vol = [];
    } else if (!isarray(a_str_vol)) {
        a_str_vol = array(a_str_vol);
    }
    var_8ecac684 = [];
    foreach (str_vol in a_str_vol) {
        var_6d732cee = function_6c1c13c0(var_72aa02d6, str_vol);
        if (isdefined(var_6d732cee)) {
            if (!isdefined(var_8ecac684)) {
                var_8ecac684 = [];
            } else if (!isarray(var_8ecac684)) {
                var_8ecac684 = array(var_8ecac684);
            }
            if (!isinarray(var_8ecac684, var_6d732cee)) {
                var_8ecac684[var_8ecac684.size] = var_6d732cee;
            }
        }
    }
    n_spawned = 0;
    while (var_8ecac684.size > 0 && n_spawned < n_spawns) {
        n_chance = 50;
        var_e67eda13 = [120, 300];
        foreach (var_6d732cee in var_8ecac684) {
            if (function_5d499771(var_6d732cee)) {
                n_chance = 25;
                var_e67eda13 = [5, 15];
                break;
            }
        }
        if (math::cointoss(n_chance)) {
            function_1eaaceab(var_72aa02d6.a_ai_spawned[#"all"]);
            if (var_72aa02d6.a_ai_spawned[#"all"].size + 1 < var_72aa02d6.var_de4a9f7a) {
                if (var_72aa02d6.var_63685494[str_script_noteworthy].size <= 0) {
                    var_72aa02d6.var_63685494[str_script_noteworthy] = arraycopy(var_72aa02d6.a_s_spawns[str_script_noteworthy]);
                }
                a_s_spawns = arraycopy(var_72aa02d6.var_63685494[str_script_noteworthy]);
                a_s_spawns = array::filter(a_s_spawns, 0, &function_86f99a7b);
                if (a_s_spawns.size > 0) {
                    s_spawn = array::random(a_s_spawns);
                    if (s_spawn.var_b5afe436.size <= 0) {
                        s_spawn.var_b5afe436 = arraycopy(s_spawn.a_s_points);
                    }
                    s_point = array::random(s_spawn.var_b5afe436);
                    if (function_a1ef346b(undefined, s_point.origin, 512).size <= 0) {
                        var_68241066 = var_72aa02d6.var_938cc892[s_spawn.script_noteworthy][s_spawn.ai_list];
                        var_6017f33e = namespace_679a22ba::function_ca209564(s_spawn.ai_list, var_68241066);
                        var_7ecdee63 = var_6017f33e.var_990b33df;
                        if (isdefined(var_7ecdee63)) {
                            ai_zombie = namespace_85745671::function_9d3ad056(var_7ecdee63, s_point.origin, (0, randomfloat(360), 0), undefined, 0);
                            if (isdefined(ai_zombie)) {
                                if (!isdefined(var_72aa02d6.a_ai_spawned[#"all"])) {
                                    var_72aa02d6.a_ai_spawned[#"all"] = [];
                                } else if (!isarray(var_72aa02d6.a_ai_spawned[#"all"])) {
                                    var_72aa02d6.a_ai_spawned[#"all"] = array(var_72aa02d6.a_ai_spawned[#"all"]);
                                }
                                var_72aa02d6.a_ai_spawned[#"all"][var_72aa02d6.a_ai_spawned[#"all"].size] = ai_zombie;
                                function_1eaaceab(var_72aa02d6.a_ai_spawned[#"all"]);
                                arrayremovevalue(var_72aa02d6.var_63685494[str_script_noteworthy], s_spawn);
                                arrayremovevalue(s_spawn.var_b5afe436, s_point);
                                ai_zombie.var_43b32a98 = {#var_72aa02d6:var_72aa02d6, #str_script_noteworthy:str_script_noteworthy, #a_str_vol:a_str_vol};
                                ai_zombie callback::function_d8abfc3d(#"death", &function_34bc84a1);
                                if (isdefined(var_68241066)) {
                                    namespace_679a22ba::function_266ee075(s_spawn.ai_list, var_68241066);
                                }
                                n_spawned++;
                                if (n_spawned >= n_spawns) {
                                    return;
                                }
                            }
                        }
                    }
                }
            }
        }
        if (var_e67eda13[0] != var_e67eda13[1]) {
            n_wait = randomfloatrange(var_e67eda13[0], var_e67eda13[1]);
        } else {
            n_wait = var_e67eda13[0];
        }
        if (n_wait > 0) {
            wait(n_wait);
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0x2ea2fad6, Offset: 0xa6c8
// Size: 0xb6
function function_35cf6e0b(*v_origin_or_ent, *params) {
    s_instance = level.contentmanager.activeobjective;
    s_lock = s_instance.contentgroups[#"lock"][0];
    if (isdefined(s_lock.targetname)) {
        var_bb4d1ec6 = getent(s_lock.targetname, "target");
        if (isdefined(var_bb4d1ec6)) {
            return self istouching(var_bb4d1ec6);
        }
    }
    return 0;
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x139ff422, Offset: 0xa788
// Size: 0xa4
function function_a998b7a0(*s_params) {
    s_instance = self.s_instance;
    mdl_lock = self.mdl_lock;
    if (isdefined(s_instance) && isdefined(mdl_lock)) {
        self triggerenable(0);
        playsoundatposition(#"hash_24529e08fd2e1264", self.origin);
        s_instance flag::set(#"hash_63d2c6d7441b2a9d");
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 0, eflags: 0x2 linked
// Checksum 0xc5929e7f, Offset: 0xa838
// Size: 0x34
function function_3ed141ca() {
    self clientfield::set("" + #"hash_33e8b606c01f74ee", 1);
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 0, eflags: 0x2 linked
// Checksum 0xd452cd40, Offset: 0xa878
// Size: 0x2c
function function_7eed64d4() {
    self clientfield::set("" + #"hash_33e8b606c01f74ee", 0);
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 0, eflags: 0x2 linked
// Checksum 0xfa9a5745, Offset: 0xa8b0
// Size: 0x34
function function_683e1c1a() {
    self clientfield::set_to_player("" + #"hash_583ce51cd4d9a904", 5);
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xae37057c, Offset: 0xa8f0
// Size: 0x3c6
function function_35f83dc7(s_instance) {
    level endon(#"end_game");
    foreach (var_e145744b in isdefined(s_instance.contentgroups[#"hash_6873efb1dfa0ebea"]) ? s_instance.contentgroups[#"hash_6873efb1dfa0ebea"] : []) {
        var_e145744b.script_noteworthy = "sr_ee_hulk_ammo";
    }
    namespace_c09ae6c3::function_9ed7339b(s_instance);
    util::wait_network_frame();
    var_a1de0808 = getentarray("sr_ee_hulk_ammo", "script_noteworthy");
    foreach (var_b81a7578 in var_a1de0808) {
        var_b81a7578 clientfield::set("set_compass_icon", 0);
    }
    var_cc88afe6 = s_instance.contentgroups[#"hash_6217ef2a3d7d895b"][0];
    namespace_82b4c2d1::function_744f2a2(var_cc88afe6, #"hash_6217ef2a3d7d895b", #"hash_6e47d6576612543c", #"hash_4af85251966549b8", #"hash_3eac5ec7a888ddfb", 0, &namespace_82b4c2d1::function_472f16d8);
    if (isdefined(var_cc88afe6.objectiveid)) {
        zm_utility::function_bc5a54a8(var_cc88afe6.objectiveid);
        var_cc88afe6.objectiveid = undefined;
    }
    s_pap = s_instance.contentgroups[#"hash_448adaf187bbb953"][0];
    namespace_4b9fccd8::function_e0069640(s_pap);
    if (isdefined(s_pap.objectiveid)) {
        zm_utility::function_bc5a54a8(s_pap.objectiveid);
        s_pap.objectiveid = undefined;
    }
    var_93696db0 = s_instance.contentgroups[#"hash_629e563c2ebf707a"][0];
    namespace_dd7e54e3::function_93a99046(var_93696db0);
    if (isdefined(var_93696db0.objectiveid)) {
        zm_utility::function_bc5a54a8(var_93696db0.objectiveid);
        var_93696db0.objectiveid = undefined;
    }
    var_5cacd3c8 = s_instance.contentgroups[#"crafting_table"][0];
    namespace_1cc7b406::function_db05041b(var_5cacd3c8, #"hash_1e1b751abcb0c5b6", &namespace_1cc7b406::function_e3ad9f54);
    if (isdefined(var_5cacd3c8.objectiveid)) {
        zm_utility::function_bc5a54a8(var_5cacd3c8.objectiveid);
        var_5cacd3c8.objectiveid = undefined;
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xe632e395, Offset: 0xacc0
// Size: 0xadc
function function_9e99ae6(var_72aa02d6) {
    var_72aa02d6 endon(#"hash_48ede6eb3d3e0d03");
    wait(3);
    var_72aa02d6 flag::wait_till(#"initialized");
    a_ai_raz = [];
    var_5a2d0d60 = [];
    while (true) {
        a_e_players = function_a1ef346b();
        if (a_e_players.size <= 0) {
            wait(var_72aa02d6.var_9bb9c9e4);
            continue;
        }
        foreach (e_player in a_e_players) {
            if (isalive(e_player)) {
                function_1eaaceab(var_72aa02d6.a_ai_spawned[#"all"]);
                if (var_72aa02d6.a_ai_spawned[#"all"].size + 1 <= var_72aa02d6.var_de4a9f7a) {
                    a_s_points = array::filter(var_72aa02d6.a_s_points, 0, &function_3ae0dea4);
                    if (a_s_points.size > 0) {
                        a_s_options = arraysortclosest(a_s_points, e_player.origin, undefined, var_72aa02d6.var_566f9a11);
                        foreach (var_b24e337d in a_e_players) {
                            if (var_b24e337d === e_player) {
                                continue;
                            }
                            if (!isalive(e_player)) {
                                break;
                            }
                            var_e9e718bb = [];
                            foreach (i, s_option in a_s_options) {
                                if (!isalive(e_player) || !isalive(var_b24e337d)) {
                                    var_e9e718bb = [];
                                    break;
                                }
                                if (distancesquared(s_option.origin, var_b24e337d.origin) <= sqr(var_72aa02d6.var_566f9a11)) {
                                    if (!isdefined(var_e9e718bb)) {
                                        var_e9e718bb = [];
                                    } else if (!isarray(var_e9e718bb)) {
                                        var_e9e718bb = array(var_e9e718bb);
                                    }
                                    var_e9e718bb[var_e9e718bb.size] = s_option;
                                }
                                if ((i + 1) % 50 == 0) {
                                    waitframe(1);
                                }
                            }
                            foreach (var_c47c72df in var_e9e718bb) {
                                arrayremovevalue(a_s_options, var_c47c72df);
                            }
                        }
                        if (isalive(e_player) && a_s_options.size > 0) {
                            s_point = undefined;
                            var_ff3398c2 = arraysortclosest(a_s_options, e_player.origin, undefined, 0, 1600);
                            foreach (i, var_f70b5c64 in var_ff3398c2) {
                                if (!isalive(e_player)) {
                                    break;
                                }
                                if (abs(var_f70b5c64.origin[2] - e_player.origin[2]) <= 128) {
                                    s_point = var_f70b5c64;
                                    break;
                                }
                                if ((i + 1) % 50 == 0) {
                                    waitframe(1);
                                }
                            }
                            if (!isdefined(s_point)) {
                                s_point = a_s_options[0];
                            }
                            if (isalive(e_player) && isvec(s_point.origin)) {
                                var_6017f33e = namespace_679a22ba::function_ca209564(#"sr_ee_hulk_explore");
                                var_7ecdee63 = var_6017f33e.var_990b33df;
                                if (isdefined(var_7ecdee63)) {
                                    b_skip = 0;
                                    switch (var_7ecdee63) {
                                    case #"hash_4f87aa2a203d37d0":
                                        function_1eaaceab(a_ai_raz);
                                        if (a_ai_raz.size >= 2 || var_72aa02d6 flag::get(#"hash_79e134005f262293")) {
                                            b_skip = 1;
                                        }
                                        break;
                                    case #"spawner_zm_steiner":
                                        function_1eaaceab(var_5a2d0d60);
                                        if (var_5a2d0d60.size >= 1 || var_72aa02d6 flag::get(#"hash_30c3ee099687b5c3")) {
                                            b_skip = 1;
                                        }
                                        break;
                                    }
                                    if (!b_skip) {
                                        v_spawn = getclosestpointonnavmesh(s_point.origin, 64);
                                        if (isvec(v_spawn)) {
                                            ai_zombie = namespace_85745671::function_9d3ad056(var_7ecdee63, v_spawn, (0, randomfloat(360), 0), undefined, 0);
                                            if (isdefined(ai_zombie)) {
                                                if (!isdefined(var_72aa02d6.a_ai_spawned[#"all"])) {
                                                    var_72aa02d6.a_ai_spawned[#"all"] = [];
                                                } else if (!isarray(var_72aa02d6.a_ai_spawned[#"all"])) {
                                                    var_72aa02d6.a_ai_spawned[#"all"] = array(var_72aa02d6.a_ai_spawned[#"all"]);
                                                }
                                                var_72aa02d6.a_ai_spawned[#"all"][var_72aa02d6.a_ai_spawned[#"all"].size] = ai_zombie;
                                                ai_zombie.var_4a44f930 = 1;
                                                switch (var_7ecdee63) {
                                                default:
                                                    s_point flag::set(#"active");
                                                    ai_zombie.var_95c305b0 = s_point;
                                                    ai_zombie callback::function_d8abfc3d(#"death", &function_7196f878);
                                                    level thread function_33b5974f(var_72aa02d6, ai_zombie);
                                                    break;
                                                case #"hash_4f87aa2a203d37d0":
                                                    if (!isdefined(a_ai_raz)) {
                                                        a_ai_raz = [];
                                                    } else if (!isarray(a_ai_raz)) {
                                                        a_ai_raz = array(a_ai_raz);
                                                    }
                                                    a_ai_raz[a_ai_raz.size] = ai_zombie;
                                                    var_72aa02d6 flag::set(#"hash_79e134005f262293");
                                                    var_72aa02d6 util::delay(60, undefined, &flag::clear, #"hash_79e134005f262293");
                                                    break;
                                                case #"spawner_zm_steiner":
                                                    if (!isdefined(var_5a2d0d60)) {
                                                        var_5a2d0d60 = [];
                                                    } else if (!isarray(var_5a2d0d60)) {
                                                        var_5a2d0d60 = array(var_5a2d0d60);
                                                    }
                                                    var_5a2d0d60[var_5a2d0d60.size] = ai_zombie;
                                                    var_72aa02d6 flag::set(#"hash_30c3ee099687b5c3");
                                                    var_72aa02d6 util::delay(180, undefined, &flag::clear, #"hash_30c3ee099687b5c3");
                                                    break;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            wait(var_72aa02d6.var_9bb9c9e4);
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x79b6b1d6, Offset: 0xb7a8
// Size: 0x2c
function function_3ae0dea4(s_point) {
    return !s_point flag::get(#"active");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 0, eflags: 0x2 linked
// Checksum 0x49e6e279, Offset: 0xb7e0
// Size: 0x134
function function_7196f878() {
    self callback::function_52ac9652(#"death", &function_7196f878);
    var_72aa02d6 = level.var_ee7c86b5;
    s_point = self.var_95c305b0;
    if (isdefined(var_72aa02d6) && isdefined(s_point)) {
        var_8fc81e63 = gettime();
        for (n_time_left = var_72aa02d6.var_3c08dad2; n_time_left > 0; n_time_left = var_72aa02d6.var_3c08dad2 - (gettime() - var_8fc81e63) / 1000) {
            s_waitresult = var_72aa02d6 waittilltimeout(n_time_left, #"hash_22bd92006977a473", #"hash_4058c646c38232d7");
            if (s_waitresult._notify === #"timeout") {
                break;
            }
        }
        s_point flag::clear(#"active");
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0xc9f3fd7b, Offset: 0xb920
// Size: 0x162
function function_33b5974f(var_72aa02d6, ai_zombie) {
    if (!isdefined(var_72aa02d6) || !isalive(ai_zombie)) {
        return;
    }
    ai_zombie endon(#"death");
    for (var_f6b33772 = 0; true; var_f6b33772 = 0) {
        wait(var_72aa02d6.var_cf0e49b5);
        if (function_a1ef346b(undefined, ai_zombie.origin, 1750).size <= 0) {
            var_f6b33772++;
            if (var_f6b33772 >= 2) {
                ai_zombie callback::function_52ac9652(#"death", &function_7196f878);
                s_point = ai_zombie.var_95c305b0;
                if (isdefined(s_point)) {
                    s_point util::delay(3, undefined, &flag::clear, #"active");
                }
                ai_zombie callback::callback(#"hash_10ab46b52df7967a");
            }
            continue;
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 0, eflags: 0x2 linked
// Checksum 0x217d9518, Offset: 0xba90
// Size: 0x140
function function_f9e72253() {
    var_72aa02d6 = level.var_ee7c86b5;
    if (!isdefined(var_72aa02d6)) {
        return;
    }
    var_72aa02d6.var_9bb9c9e4 = 0.1;
    var_72aa02d6.var_566f9a11 = 256;
    var_72aa02d6.var_3c08dad2 = 15;
    callback::on_ai_spawned(&function_78176be2);
    function_1eaaceab(var_72aa02d6.a_ai_spawned[#"all"]);
    foreach (ai_spawned in var_72aa02d6.a_ai_spawned[#"all"]) {
        ai_spawned thread function_78176be2();
    }
    var_72aa02d6 notify(#"hash_22bd92006977a473");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 0, eflags: 0x2 linked
// Checksum 0x10c7929c, Offset: 0xbbd8
// Size: 0x80
function function_42cf5b78() {
    var_72aa02d6 = level.var_ee7c86b5;
    if (!isdefined(var_72aa02d6)) {
        return;
    }
    var_72aa02d6.var_9bb9c9e4 = 1;
    var_72aa02d6.var_566f9a11 = 1250;
    var_72aa02d6.var_3c08dad2 = 240;
    callback::remove_on_ai_spawned(&function_78176be2);
    var_72aa02d6 notify(#"hash_4058c646c38232d7");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 0, eflags: 0x2 linked
// Checksum 0x9b9aa070, Offset: 0xbc60
// Size: 0x44
function function_78176be2() {
    self notify("698e1add4e51ae5d");
    self endon("698e1add4e51ae5d");
    self endon(#"death");
    self thread objective_retrieval::function_bf606a73();
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x8551ce94, Offset: 0xbcb0
// Size: 0x8e4
function function_a988ea3e(s_instance) {
    s_instance.var_d674188d = 0;
    callback::on_item_pickup(&function_aff6ff39);
    level thread function_40a5c1ad(s_instance);
    level thread function_4004453a(s_instance);
    level thread function_f23a642e(s_instance);
    var_5fa08c4c = isdefined(s_instance.contentgroups[#"launch_time"]) ? s_instance.contentgroups[#"launch_time"] : [];
    var_5fa08c4c = array::randomize(var_5fa08c4c);
    var_86095997 = ["tag_light_green_01", "tag_light_green_02", "tag_light_green_03"];
    var_3b3db690 = ["tag_light_red_01", "tag_light_red_02", "tag_light_red_03"];
    foreach (i, var_870db21a in var_5fa08c4c) {
        var_870db21a scene::init(#"p9_fxanim_sv_console_launch_bundle");
        var_e686af5f = var_870db21a.scene_ents[#"prop 1"];
        var_870db21a.var_e686af5f = var_e686af5f;
        var_e686af5f hidepart("tag_panel_key");
        foreach (var_91eb18ad in var_86095997) {
            var_e686af5f hidepart(var_91eb18ad);
        }
        foreach (var_de2baa59 in var_3b3db690) {
            var_e686af5f showpart(var_de2baa59);
        }
        var_e686af5f hidepart(var_3b3db690[i]);
        var_e686af5f showpart(var_86095997[i]);
    }
    s_instance flag::wait_till(#"hash_2d8528c8de39ead6");
    zm_sq::function_266d66eb(#"hash_b418b036831ea2a", undefined, 0, #"hash_3e23b85b1db9f461", #"launch");
    var_c194c71 = 0;
    /#
        if (getdvarint(#"hash_5a3708a11c45c1d7", 0)) {
            var_c194c71 = 1;
        }
    #/
    if (!var_c194c71) {
        s_instance flag::wait_till(#"hash_5e0b3faf844aec9");
    }
    wait(1);
    zm_sq::objective_complete(#"launch");
    zm_sq::function_266d66eb(#"hash_b418b036831ea2a", undefined, 0, #"hash_395f08b8fee17ae2", #"launch_time");
    while (!s_instance flag::get(#"hash_773bece3d13b68c6")) {
        s_instance flag::clear(#"hash_3948726af18b5993");
        s_instance flag::clear(#"hash_67b34d86559a5e01");
        s_instance flag::clear(#"hash_7d9d7effbda78197");
        s_instance.var_26830295 = 0;
        foreach (i, var_870db21a in var_5fa08c4c) {
            level thread function_ac90ef3b(s_instance, var_870db21a, i);
        }
        s_instance flag::wait_till_any([#"hash_67b34d86559a5e01", #"hash_7d9d7effbda78197", #"hash_773bece3d13b68c6"]);
        if (s_instance flag::get(#"hash_773bece3d13b68c6")) {
            break;
        }
        if (s_instance flag::get(#"hash_67b34d86559a5e01")) {
            level thread zm_vo::function_d6f8bbd9(#"hash_863922b27fe3ea7", undefined, getplayers());
        } else {
            level thread zm_vo::function_d6f8bbd9(#"hash_28b76568b69b9bfd", undefined, getplayers());
        }
        s_instance flag::set(#"hash_7d9d7effbda78197");
        foreach (var_870db21a in var_5fa08c4c) {
            var_446227c5 = var_870db21a.var_446227c5;
            if (isdefined(var_446227c5)) {
                var_446227c5 triggerenable(0);
                var_446227c5 deletedelay();
            }
            var_e686af5f = var_870db21a.var_e686af5f;
            if (isdefined(var_e686af5f)) {
                var_e686af5f hidepart("tag_panel_key");
            }
            var_870db21a thread scene::play(#"p9_fxanim_sv_console_launch_bundle", "Shot 3");
        }
        function_f9e72253();
        level util::delay(30, undefined, &function_42cf5b78);
        foreach (e_player in function_a1ef346b()) {
            e_player thread namespace_2c949ef8::function_f4413120();
        }
        wait(60);
    }
    zm_sq::objective_complete(#"launch_time");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xc6bae140, Offset: 0xc5a0
// Size: 0x32c
function function_aff6ff39(s_params) {
    str_key = s_params.item.var_a84740ef;
    s_instance = level.contentmanager.activeobjective;
    if (isdefined(str_key) && isdefined(s_instance)) {
        var_b1b3134b = 1;
        switch (str_key) {
        case #"hash_387f36c6f1c7201c":
            var_72aa02d6 = level.var_df1e52ea;
            break;
        case #"hash_1b764530c070424a":
            var_72aa02d6 = level.var_11aeb779;
            break;
        case #"hash_3a303dbe20c8dc5e":
            var_b1b3134b = 0;
            if (isdefined(level.var_11aeb779)) {
                level.var_11aeb779.var_eabcfe81 = self;
                level.var_11aeb779 flag::set(#"hash_52d9d7b1062c3568");
            }
            break;
        case #"hash_645bdb2b2ae769ef":
            var_72aa02d6 = level.var_76978879;
            level callback::remove_on_spawned(&function_dbf42caa);
            break;
        }
        if (isdefined(var_72aa02d6)) {
            if (var_b1b3134b && s_instance.var_d674188d <= 0) {
                array::thread_all(getplayers(), &zm_intel::collect_intel, #"zmintel_survival_omega_artifact_7");
            }
            s_instance.var_d674188d++;
            var_72aa02d6 flag::set(#"hash_5497ada40bcd89dc");
            switch (s_instance.var_d674188d) {
            case 1:
                str_desc = #"hash_3e23b75b1db9f2ae";
                break;
            case 2:
                str_desc = #"hash_3e23b65b1db9f0fb";
                break;
            case 3:
                str_desc = #"hash_3e23b55b1db9ef48";
                break;
            }
            if (isdefined(str_desc)) {
                level zm_sq::objective_complete(#"launch");
                level zm_sq::function_266d66eb(#"hash_b418b036831ea2a", undefined, 0, str_desc, #"launch");
            }
            if (s_instance.var_d674188d >= 3) {
                s_instance flag::set(#"hash_5e0b3faf844aec9");
            }
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 0, eflags: 0x2 linked
// Checksum 0x5bc0b2d9, Offset: 0xc8d8
// Size: 0xfa
function function_6206941d() {
    s_instance = level.contentmanager.activeobjective;
    var_d674188d = s_instance.var_d674188d;
    if (isdefined(var_d674188d)) {
        wait(1);
        switch (var_d674188d) {
        case 1:
            level namespace_7589cf5c::play_vo(#"hash_4615f919ef4280ca");
            break;
        case 2:
            level namespace_7589cf5c::play_vo(#"hash_4615f819ef427f17");
            break;
        case 3:
            level namespace_7589cf5c::play_vo(#"hash_4615f719ef427d64");
            break;
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xaaed1a0c, Offset: 0xc9e0
// Size: 0x7ec
function function_40a5c1ad(s_instance) {
    var_72aa02d6 = s_instance.contentgroups[#"hash_387f36c6f1c7201c"][0];
    level.var_df1e52ea = var_72aa02d6;
    level thread function_bc7dee45(s_instance, var_72aa02d6);
    s_instance flag::wait_till(#"hash_2d8528c8de39ead6");
    level thread function_89e9be54(var_72aa02d6);
    var_72aa02d6 flag::wait_till(#"capturing");
    level thread function_9aad773d(var_72aa02d6);
    function_122c5ee8(var_72aa02d6.var_d4455638);
    callback::remove_callback(#"on_item_pickup", &function_a003c2ad);
    var_be3a4990 = var_72aa02d6.var_be3a4990;
    if (isdefined(var_be3a4990)) {
        var_be3a4990 show();
    }
    var_6ae3683f = var_72aa02d6.var_6ae3683f;
    if (isdefined(var_6ae3683f)) {
        var_72aa02d6.var_6ae3683f = util::spawn_model(#"hash_f93e1bf903e219b", var_6ae3683f.origin, var_6ae3683f.angles);
        var_6ae3683f delete();
        var_6ae3683f = var_72aa02d6.var_6ae3683f;
        var_6ae3683f.targetname = "sr_ee_hulk_interest_fake";
        var_6ae3683f clientfield::set("" + #"hash_627fe6d726003b48", 1);
        var_6ae3683f function_619a5c20();
        var_6ae3683f thread scene::play(#"p9_fxanim_zm_gold_essence_trap_bundle", "open", var_6ae3683f);
        var_6ae3683f stoploopsound();
        var_6ae3683f playloopsound(#"hash_760ed99900106de3");
        var_6ae3683f fx::play(#"hash_2acd20deb7d56350", var_6ae3683f gettagorigin("tag_animate"), var_6ae3683f gettagangles("tag_animate"), #"hash_3fe3aa806570aed4", 1, "tag_animate");
        wait(3);
        if (isdefined(var_be3a4990)) {
            var_be3a4990 notify(#"hash_544ad67b059004d3");
            var_be3a4990 scene::stop(1);
            if (isdefined(var_be3a4990)) {
                var_be3a4990 delete();
            }
        }
        level clientfield::set("" + #"hash_1ff35e37755facac", 3);
        var_6ae3683f notify(#"hash_3fe3aa806570aed4");
        var_6ae3683f scene::stop();
        var_6ae3683f scene::play(#"p9_fxanim_zm_gold_essence_trap_bundle", "close", var_6ae3683f);
        var_6ae3683f stoploopsound();
        var_6ae3683f thread scene::play(#"p9_fxanim_zm_gold_essence_trap_bundle", "shake", var_6ae3683f);
        var_6ae3683f fx::play(#"hash_3354e735e33805a7", var_6ae3683f gettagorigin("tag_animate"), var_6ae3683f gettagangles("tag_animate"), #"hash_79299681eeea4a13", 1, "tag_animate");
        wait(2);
        var_72aa02d6 flag::set(#"captured");
        var_6ae3683f notify(#"hash_79299681eeea4a13");
        var_6ae3683f fx::play(#"hash_76e6cbdd75a0ae46", var_6ae3683f gettagorigin("tag_animate"), var_6ae3683f gettagangles("tag_animate"), #"hash_46c7a423d24f1b5d", 1, "tag_animate");
        var_6ae3683f playsound(#"hash_671944ab50b7a130");
        var_6ae3683f playloopsound(#"hash_59d0c9bd84f13ee9");
        var_d86e9c27 = var_72aa02d6.var_d86e9c27;
        if (isalive(var_d86e9c27)) {
            var_d86e9c27 function_bc82f900(#"damage_heavy");
        }
        if (isplayer(var_d86e9c27)) {
            level thread zm_vo::function_d6f8bbd9(#"hash_7571c0d1197ad870", undefined, var_d86e9c27);
        }
        v_spawn = var_6ae3683f.origin + anglestoup(var_6ae3683f.angles) * 16;
        point = function_4ba8fde(#"item_zmintel_survival_omega_artifact_7");
        while (true) {
            var_c5124824 = item_drop::drop_item(0, undefined, 1, 0, point.id, v_spawn, var_6ae3683f.angles, 0);
            if (isdefined(var_c5124824)) {
                break;
            }
            waitframe(1);
        }
        var_c5124824 playloopsound(#"hash_6979a0759dfa9cb3");
        var_c5124824.var_a84740ef = #"hash_387f36c6f1c7201c";
        var_c5124824 moveto(var_c5124824.origin + anglestoup(var_c5124824.angles) * 8, 3);
        level thread function_93c5804e(var_72aa02d6, var_6ae3683f, var_c5124824);
        var_72aa02d6 flag::wait_till(#"hash_5497ada40bcd89dc");
        level thread function_1b3d1df9(var_72aa02d6, var_6ae3683f);
        wait(1);
        level namespace_7589cf5c::play_vo(#"hash_606cfa54b1d9f74e");
        level thread function_6206941d();
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 3, eflags: 0x2 linked
// Checksum 0x1a30288d, Offset: 0xd1d8
// Size: 0x184
function function_93c5804e(var_72aa02d6, var_6ae3683f, var_c5124824) {
    if (!(isdefined(var_72aa02d6) && isdefined(var_6ae3683f))) {
        return;
    }
    var_72aa02d6 endon(#"released");
    var_6ae3683f endon(#"death");
    var_6ae3683f val::set(#"interest", "takedamage", 1);
    var_6ae3683f val::set(#"interest", "allowdeath", 0);
    var_6ae3683f.health = 1;
    while (true) {
        s_waitresult = var_6ae3683f waittill(#"damage");
        if (var_6ae3683f.health - s_waitresult.amount <= 0) {
            e_attacker = s_waitresult.attacker;
            if (isplayer(e_attacker) && isalive(e_attacker)) {
                e_attacker util::show_hit_marker();
                break;
            }
        }
    }
    level thread function_1b3d1df9(var_72aa02d6, var_6ae3683f, var_c5124824);
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 3, eflags: 0x2 linked
// Checksum 0x8fc0b557, Offset: 0xd368
// Size: 0x2ba
function function_1b3d1df9(var_72aa02d6, var_6ae3683f, var_c5124824) {
    if (!(isdefined(var_72aa02d6) && isdefined(var_6ae3683f)) || var_72aa02d6 flag::get(#"released")) {
        return;
    }
    var_6ae3683f endon(#"death");
    var_72aa02d6 flag::set(#"released");
    var_6ae3683f notify(#"hash_46c7a423d24f1b5d");
    v_fx_origin = var_6ae3683f gettagorigin("tag_animate");
    ex_elevator_overlight_indicator_ = var_6ae3683f gettagangles("tag_animate");
    playfx(#"hash_7e225ece0c91121", v_fx_origin, anglestoforward(ex_elevator_overlight_indicator_), anglestoup(ex_elevator_overlight_indicator_));
    var_6ae3683f thread scene::play(#"p9_fxanim_zm_gold_essence_trap_bundle", "open", var_6ae3683f);
    var_6ae3683f clientfield::set("mimic_prop_rob", 0);
    var_d86e9c27 = var_72aa02d6.var_d86e9c27;
    if (isalive(var_d86e9c27)) {
        level thread zm_vo::function_d6f8bbd9(#"hash_25707eda870af845", undefined, var_d86e9c27);
    }
    s_target = var_72aa02d6.var_99d7ebd5.contentgroups[#"target"][0];
    if (isdefined(s_target) && isdefined(var_c5124824) && !ispointonnavmesh(var_6ae3683f.origin)) {
        v_target = s_target.origin;
        var_fd6264f6 = var_c5124824 zm_utility::fake_physicslaunch(v_target, 300);
        if (var_fd6264f6 > 0) {
            var_c5124824 rotateto((0, 0, 0), var_fd6264f6);
            wait(var_fd6264f6);
        }
        if (isdefined(var_c5124824)) {
            var_c5124824.origin = v_target;
            var_c5124824.angles = (0, 0, 0);
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0x41e81025, Offset: 0xd630
// Size: 0x3c4
function function_bc7dee45(s_instance, var_72aa02d6) {
    level endon(#"end_game");
    s_entry = {#weapon_name:#"hash_2f22ef3b917ab0ac", #item_name:#"sr_hulk_interest_goal"};
    if (!isdefined(level.var_d385a742)) {
        level.var_d385a742 = [];
    } else if (!isarray(level.var_d385a742)) {
        level.var_d385a742 = array(level.var_d385a742);
    }
    level.var_d385a742[level.var_d385a742.size] = s_entry;
    zm_perk_tombstone::function_7c589e7("tactical", #"sr_hulk_interest_goal");
    weaponobjects::function_e6400478(#"hash_2f22ef3b917ab0ac", &function_376c3727, 1);
    var_7c00d5f4 = var_72aa02d6.contentgroups[#"interest"][0];
    var_41e9e0ba = content_manager::spawn_script_model(var_7c00d5f4, #"hash_7b7cbb4eb2fd70e3", 0, 1);
    var_41e9e0ba.targetname = "sr_ee_hulk_interest";
    var_41e9e0ba clientfield::set("" + #"hash_627fe6d726003b48", 1);
    var_8df4fc4e = content_manager::spawn_interact(var_7c00d5f4, &function_d65012f6, #"", undefined, 96);
    e_player = var_72aa02d6 waittill(#"hash_3179b6b06c73aeb");
    function_d8d0ca33(e_player);
    e_player thread namespace_1cc7b406::give_item(#"sr_hulk_interest_goal");
    e_player function_bc82f900(#"zm_item_pickup_rumble");
    playsoundatposition(#"evt_sur_mq1_stp6_monkey_trap_pickup", var_41e9e0ba.origin);
    var_8df4fc4e delete();
    var_41e9e0ba delete();
    callback::on_item_pickup(&function_a003c2ad);
    array::thread_all(getplayers(), &zm_intel::collect_intel, #"zmintel_survival_omega_artifact_8");
    wait(1);
    if (s_instance flag::get(#"hash_2d8528c8de39ead6")) {
        level thread namespace_7589cf5c::play_vo(#"hash_28b8f836c5dc4778");
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x9d34d481, Offset: 0xda00
// Size: 0x80
function function_d65012f6(s_params) {
    var_72aa02d6 = level.var_df1e52ea;
    e_player = s_params.activator;
    if (isdefined(var_72aa02d6) && zm_utility::is_player_valid(e_player)) {
        self triggerenable(0);
        var_72aa02d6 notify(#"hash_3179b6b06c73aeb", e_player);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x5ae3d284, Offset: 0xda88
// Size: 0x82
function function_376c3727(s_watcher) {
    s_watcher.onspawn = &function_5394c6a7;
    s_watcher.onspawnretrievetriggers = &function_29c51453;
    s_watcher.ondamage = &function_29c51453;
    s_watcher.deleteonplayerspawn = 0;
    s_watcher.altdetonate = 1;
    s_watcher.var_e7ebbd38 = &function_400e3e08;
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0x7f59a698, Offset: 0xdb18
// Size: 0x14
function function_29c51453(*s_watcher, *e_player) {
    
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0x3fd99c10, Offset: 0xdb38
// Size: 0x4c4
function function_5394c6a7(*s_watcher, e_player) {
    self endon(#"death");
    var_72aa02d6 = level.var_df1e52ea;
    if (isdefined(var_72aa02d6)) {
        function_d632f221(e_player);
        var_72aa02d6.var_5894923f = self;
        var_72aa02d6.var_d4455638 = e_player;
        s_waitresult = self waittilltimeout(10, #"stationary");
        b_respawn = s_waitresult._notify !== "stationary";
        var_be3a4990 = var_72aa02d6.var_be3a4990;
        if (!b_respawn) {
            var_72aa02d6.var_6ae3683f = util::spawn_model(#"hash_7b7cbb4eb2fd70e3", self.origin, self.angles);
            var_6ae3683f = var_72aa02d6.var_6ae3683f;
            var_6ae3683f.targetname = "sr_ee_hulk_interest";
            var_6ae3683f clientfield::set("" + #"hash_627fe6d726003b48", 1);
            var_6ae3683f function_619a5c20();
            var_6ae3683f clientfield::set("mimic_prop_rob", 6);
            var_6ae3683f fx::play(#"hash_194a9dcd4ca41ca9", var_6ae3683f.origin, var_6ae3683f.angles, #"hash_7d62a91eeaef85f1", 1, undefined, 1);
            var_6ae3683f playsound(#"hash_842c1f262fe471d");
            var_6ae3683f playloopsound(#"hash_c977a3c790ccd55");
            self util::delay(1, undefined, &ghost);
            if (isplayer(e_player)) {
                level thread zm_vo::function_d6f8bbd9(#"hash_16b82fe473973361", undefined, e_player);
            }
            if (!var_72aa02d6 flag::get(#"hash_7b1b704f28df93c") && isdefined(var_be3a4990) && distancesquared(var_be3a4990.origin, self.origin) <= 4225) {
                var_72aa02d6 flag::set(#"hash_7b1b704f28df93c");
            }
            wait(2);
        }
        var_be3a4990 = var_72aa02d6.var_be3a4990;
        if (isdefined(var_be3a4990)) {
            var_d198ce16 = distance2dsquared(var_be3a4990.origin, self.origin);
            n_dist = distancesquared(var_be3a4990.origin, self.origin);
        }
        if (!isalive(e_player) || b_respawn || var_72aa02d6 flag::get(#"hash_7b1b704f28df93c") || !(isdefined(var_d198ce16) && isdefined(var_be3a4990) && isdefined(n_dist)) || var_d198ce16 > 65536 || n_dist > 1048576 || n_dist <= 4225) {
            level thread function_fb7ad62d(var_72aa02d6, var_6ae3683f, e_player);
            return;
        }
        var_72aa02d6 flag::set(#"hash_5f9357b882bca1c1");
        function_ec14cab8(e_player);
        if (!var_72aa02d6 flag::get(#"hash_6ecbd039f207b5f0")) {
            var_72aa02d6 flag::set(#"hash_6ecbd039f207b5f0");
            level thread namespace_7589cf5c::play_vo(#"hash_c61403823a07837");
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xdea92502, Offset: 0xe008
// Size: 0xb4
function function_9aad773d(var_72aa02d6) {
    if (var_72aa02d6 flag::get(#"hash_77426f69e3593d52")) {
        return;
    }
    var_72aa02d6 flag::set(#"hash_77426f69e3593d52");
    var_5894923f = var_72aa02d6.var_5894923f;
    if (isdefined(var_5894923f)) {
        var_5894923f.var_864ea466 = 1;
        item_world::consume_item(var_5894923f);
    }
    var_72aa02d6 flag::clear(#"hash_77426f69e3593d52");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 4, eflags: 0x2 linked
// Checksum 0x8485f2c8, Offset: 0xe0c8
// Size: 0x4b4
function function_fb7ad62d(var_72aa02d6, var_6ae3683f, e_owner, n_delay = 0) {
    if (var_72aa02d6 flag::get(#"returning")) {
        return;
    }
    var_72aa02d6 flag::set(#"returning");
    level thread function_9aad773d(var_72aa02d6);
    function_122c5ee8(var_72aa02d6.var_d4455638);
    if (n_delay > 0) {
        wait(n_delay);
    }
    var_eddf0fe0 = isalive(e_owner);
    var_7c00d5f4 = var_72aa02d6.contentgroups[#"interest"][0];
    if (isdefined(var_6ae3683f)) {
        var_6ae3683f fx::play(#"hash_2a9626fe3370478a", var_6ae3683f.origin - anglestoup(var_6ae3683f.angles) * 8, var_6ae3683f.angles, #"hash_3ec9ab21568df123", 1);
        var_6ae3683f playsound(#"hash_3543cdcc15d2b0db");
        level thread function_d0029986(var_72aa02d6, var_6ae3683f);
        var_6ae3683f moveto(var_6ae3683f.origin + anglestoup(var_6ae3683f.angles) * 8, 1);
        var_6ae3683f waittilltimeout(1, #"movedone");
        var_72aa02d6 notify(#"hash_6af2b4eb1211f63a");
        if (var_eddf0fe0) {
            v_dest = e_owner util::get_eye();
            v_angles = e_owner.angles;
        } else {
            v_dest = var_7c00d5f4.origin;
            v_angles = var_7c00d5f4.angles;
        }
        n_dist = distance(var_6ae3683f.origin, v_dest);
        n_time = min(1, n_dist / 1800);
        if (n_time > 0) {
            var_6ae3683f moveto(v_dest, n_time);
            var_6ae3683f rotateto(v_angles, n_time);
            var_6ae3683f waittilltimeout(n_time, #"movedone");
        }
        var_6ae3683f notify(#"hash_3ec9ab21568df123");
        var_6ae3683f deletedelay();
    }
    var_72aa02d6 flag::wait_till_clear(#"hash_77426f69e3593d52");
    if (var_eddf0fe0 && isalive(e_owner)) {
        e_owner thread namespace_1cc7b406::give_item(#"sr_hulk_interest_goal");
        e_owner function_bc82f900(#"zm_item_pickup_rumble");
    } else {
        point = function_4ba8fde(#"sr_hulk_interest_goal");
        while (true) {
            var_5894923f = item_drop::drop_item(0, undefined, 1, 0, point.id, var_7c00d5f4.origin, var_7c00d5f4.angles, 0);
            if (isdefined(var_5894923f)) {
                break;
            }
            waitframe(1);
        }
        var_72aa02d6.var_5894923f = var_5894923f;
    }
    var_72aa02d6 flag::clear(#"returning");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0x2c3058e7, Offset: 0xe588
// Size: 0x148
function function_d0029986(var_72aa02d6, var_6ae3683f) {
    level endon(#"end_game");
    var_72aa02d6 endon(#"hash_6af2b4eb1211f63a");
    var_6ae3683f playsound(#"hash_534278acb9340669");
    while (isdefined(var_6ae3683f)) {
        n_x = randomfloatrange(10 * -1, 10);
        n_y = randomfloatrange(10 * -1, 10);
        n_z = randomfloatrange(10 * -1, 10);
        var_6ae3683f.angles += (n_x, n_y, n_z);
        wait(0.1);
        var_6ae3683f.angles -= (n_x, n_y, n_z);
        wait(0.1);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x93797bdb, Offset: 0xe6d8
// Size: 0xec
function function_400e3e08(*s_watcher) {
    var_72aa02d6 = level.var_df1e52ea;
    if (!isdefined(var_72aa02d6) || !var_72aa02d6 flag::get(#"hash_1c2f1b70dc486a32") || var_72aa02d6 flag::get_any([#"capturing", #"captured"])) {
        return;
    }
    var_72aa02d6.var_d86e9c27 = self;
    self function_bc82f900(#"zm_interact_rumble");
    var_72aa02d6 flag::set(#"capturing");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x10ff64bb, Offset: 0xe7d0
// Size: 0xb4
function function_d8d0ca33(e_player) {
    if (isplayer(e_player)) {
        e_player callback::function_d8abfc3d(#"on_player_disconnect", &function_7bbfe140);
        e_player callback::function_d8abfc3d(#"on_player_bleedout", &function_7bbfe140);
        e_player callback::function_d8abfc3d(#"on_drop_item", &function_8d69e386);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x939f7226, Offset: 0xe890
// Size: 0xb4
function function_d632f221(e_player) {
    if (isplayer(e_player)) {
        e_player callback::function_52ac9652(#"on_player_disconnect", &function_7bbfe140);
        e_player callback::function_52ac9652(#"on_player_bleedout", &function_7bbfe140);
        e_player callback::function_52ac9652(#"on_drop_item", &function_8d69e386);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x8683de87, Offset: 0xe950
// Size: 0x84
function function_7bbfe140(*s_params) {
    function_d632f221(self);
    point = function_4ba8fde(#"sr_hulk_interest_goal");
    self item_drop::drop_item(0, undefined, 1, 0, point.id, self.origin, self.angles, 0);
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xe957a8a3, Offset: 0xe9e0
// Size: 0x4c
function function_8d69e386(s_params) {
    if (s_params.item.itementry.name === #"sr_hulk_interest_goal") {
        function_d632f221(self);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x568e4c25, Offset: 0xea38
// Size: 0x18c
function function_a003c2ad(s_params) {
    level endon(#"end_game");
    self endon(#"death");
    var_72aa02d6 = level.var_df1e52ea;
    if (isdefined(var_72aa02d6) && isplayer(self) && s_params.item.itementry.name === #"sr_hulk_interest_goal") {
        function_122c5ee8(var_72aa02d6.var_d4455638);
        function_d8d0ca33(self);
        var_72aa02d6 flag::clear(#"hash_5f9357b882bca1c1");
        var_72aa02d6 flag::clear(#"hash_1c2f1b70dc486a32");
        var_72aa02d6 flag::clear(#"capturing");
        var_6ae3683f = var_72aa02d6.var_6ae3683f;
        if (isdefined(var_6ae3683f)) {
            var_6ae3683f scene::stop(1);
            if (isdefined(var_6ae3683f)) {
                var_6ae3683f delete();
            }
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xe9be44b8, Offset: 0xebd0
// Size: 0x84
function function_ec14cab8(e_player) {
    if (isplayer(e_player)) {
        e_player callback::function_d8abfc3d(#"on_player_disconnect", &function_75e8d104);
        e_player callback::function_d8abfc3d(#"on_player_bleedout", &function_75e8d104);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xd320b74e, Offset: 0xec60
// Size: 0x84
function function_122c5ee8(e_player) {
    if (isplayer(e_player)) {
        e_player callback::function_52ac9652(#"on_player_disconnect", &function_75e8d104);
        e_player callback::function_52ac9652(#"on_player_bleedout", &function_75e8d104);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xfd9df012, Offset: 0xecf0
// Size: 0x54
function function_75e8d104(*s_params) {
    function_122c5ee8(self);
    level thread function_fb7ad62d(level.var_df1e52ea, level.var_df1e52ea.var_6ae3683f);
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x5eb823dd, Offset: 0xed50
// Size: 0x5c0
function function_89e9be54(var_72aa02d6) {
    level endon(#"end_game");
    var_72aa02d6 endon(#"capturing");
    level clientfield::set("" + #"hash_1ff35e37755facac", 2);
    var_72aa02d6.var_be3a4990 = util::spawn_model(#"hash_ffa046503bd02bb", (0, 0, -2048));
    var_be3a4990 = var_72aa02d6.var_be3a4990;
    var_be3a4990 hide();
    var_72aa02d6 flag::set(#"hiding");
    var_3b1f8c3c = isdefined(var_72aa02d6.contentgroups[#"hash_2657f4cc0d89eb6b"]) ? var_72aa02d6.contentgroups[#"hash_2657f4cc0d89eb6b"] : [];
    var_2697fb7a = arraycopy(var_3b1f8c3c);
    var_f0b10811 = undefined;
    var_35e1a444 = 0;
    while (true) {
        if (var_2697fb7a.size <= 0) {
            var_2697fb7a = arraycopy(var_3b1f8c3c);
        }
        if (isdefined(var_f0b10811)) {
            a_s_options = arraysortclosest(var_2697fb7a, var_f0b10811.origin, undefined, 0, 1024);
        }
        if (!isdefined(a_s_options) || a_s_options.size <= 0) {
            a_s_options = arraycopy(var_2697fb7a);
        }
        var_2c8c8f6d = array::random(a_s_options);
        arrayremovevalue(var_2697fb7a, var_2c8c8f6d);
        var_72aa02d6.var_99d7ebd5 = var_2c8c8f6d;
        var_f0b10811 = var_2c8c8f6d;
        var_be3a4990.origin = var_2c8c8f6d.origin;
        var_be3a4990.angles = var_2c8c8f6d.angles;
        var_be3a4990 scene::stop();
        var_be3a4990 thread scene::play(#"p9_fxanim_zm_monkey_idle_bundle", "idle_02", var_be3a4990);
        level thread function_52cca084(var_72aa02d6, var_2c8c8f6d);
        level thread function_c8680ef4(var_72aa02d6, var_be3a4990);
        var_72aa02d6 flag::wait_till(#"hash_7b1b704f28df93c");
        if (isdefined(var_72aa02d6.var_dd7192a0)) {
            var_72aa02d6.var_dd7192a0 deletedelay();
        }
        var_72aa02d6 flag::clear(#"hash_1c2f1b70dc486a32");
        playsoundatposition(#"hash_1f00f15201b18e0a", var_be3a4990.origin);
        function_d781de7(var_be3a4990, 1);
        if (var_72aa02d6 flag::get(#"shot")) {
            if (!var_72aa02d6 flag::get(#"first_shot")) {
                var_72aa02d6 flag::set(#"first_shot");
                level util::delay(1, "end_game", &namespace_7589cf5c::play_vo, #"hash_58ca3324a0595e3d");
            }
        } else {
            var_35e1a444++;
            switch (var_35e1a444) {
            case 1:
                level util::delay(1, "end_game", &namespace_7589cf5c::play_vo, #"hash_720fbd617beefec9");
                break;
            case 2:
                level util::delay(1, "end_game", &namespace_7589cf5c::play_vo, #"hash_720fba617beef9b0");
                break;
            case 3:
                level util::delay(1, "end_game", &namespace_7589cf5c::play_vo, #"hash_720fbb617beefb63");
                break;
            }
        }
        wait(30);
        var_72aa02d6 flag::clear(#"hash_5f9357b882bca1c1");
        var_72aa02d6 flag::clear(#"shot");
        var_72aa02d6 flag::clear(#"hash_7b1b704f28df93c");
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 3, eflags: 0x2 linked
// Checksum 0x95158336, Offset: 0xf318
// Size: 0x2a2
function function_52cca084(var_72aa02d6, var_2c8c8f6d, var_f1a01024 = 1) {
    if (!(isdefined(var_72aa02d6) && isdefined(var_2c8c8f6d))) {
        return;
    }
    level endon(#"end_game");
    var_72aa02d6 endon(#"hash_7b1b704f28df93c", #"interesting", #"hash_1c2f1b70dc486a32");
    while (true) {
        var_72aa02d6.var_dd7192a0 = spawncollision(#"hash_54ae3ca6346eae5f", "sr_ee_hulk_business_shoot", var_2c8c8f6d.origin, var_2c8c8f6d.angles);
        if (isdefined(var_72aa02d6.var_dd7192a0)) {
            break;
        }
        waitframe(1);
    }
    var_dd7192a0 = var_72aa02d6.var_dd7192a0;
    var_dd7192a0 endon(#"death");
    var_dd7192a0 val::set(#"hash_772be2e14e27c98b", "allowdeath", 0);
    var_dd7192a0 val::set(#"hash_772be2e14e27c98b", "takedamage", 1);
    var_dd7192a0.health = 1;
    while (true) {
        s_waitresult = var_dd7192a0 waittill(#"damage");
        if (isplayer(s_waitresult.attacker)) {
            var_72aa02d6 flag::set(#"shot");
            if (var_72aa02d6 flag::get(#"hash_5f9357b882bca1c1")) {
                var_72aa02d6 flag::clear(#"hash_5f9357b882bca1c1");
                var_6ae3683f = var_72aa02d6.var_6ae3683f;
                if (isdefined(var_6ae3683f)) {
                    level thread function_fb7ad62d(var_72aa02d6, var_6ae3683f, var_72aa02d6.var_d4455638, 1);
                }
            }
            if (var_f1a01024) {
                var_72aa02d6 flag::set(#"hash_7b1b704f28df93c");
            }
            return;
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0x282c94f4, Offset: 0xf5c8
// Size: 0x3b0
function function_c8680ef4(var_72aa02d6, var_be3a4990) {
    level endon(#"end_game");
    var_72aa02d6 endon(#"hash_7b1b704f28df93c", #"interesting", #"hash_1c2f1b70dc486a32");
    var_5c55e522 = 0;
    while (true) {
        while (function_a1ef346b(undefined, var_be3a4990.origin, 512).size > 0) {
            wait(3);
        }
        playfx(#"hash_7be84069975ec045", var_be3a4990.origin, anglestoforward(var_be3a4990.angles), anglestoup(var_be3a4990.angles));
        var_be3a4990 show();
        var_be3a4990 fx::play(#"hash_4b51c1d43f724641", var_be3a4990 gettagorigin("j_spine_3"), var_be3a4990 gettagangles("j_spine_3"), #"hash_544ad67b059004d3", 1, "j_spine_3");
        var_72aa02d6 flag::clear(#"hiding");
        var_be3a4990 stopsound(#"hash_257d266b331df580");
        var_be3a4990 playsound(#"hash_249305fecae6863a");
        level thread function_c0e4c7fd(var_72aa02d6, "ambient");
        level thread function_235903f1(var_72aa02d6, var_be3a4990);
        while (function_a1ef346b(undefined, var_be3a4990.origin, 512).size <= 0) {
            waitframe(1);
        }
        var_72aa02d6 flag::set(#"hiding");
        var_be3a4990 hide();
        playfx(#"hash_7be84069975ec045", var_be3a4990.origin, anglestoforward(var_be3a4990.angles), anglestoup(var_be3a4990.angles));
        var_be3a4990 notify(#"hash_544ad67b059004d3");
        var_be3a4990 stopsound(#"hash_234ca7087ec32af4");
        var_be3a4990 playsound(#"hash_249305fecae6863a");
        level thread function_c0e4c7fd(var_72aa02d6, "hidden");
        var_5c55e522++;
        if (var_5c55e522 >= 2) {
            level thread function_3eb362dc(var_72aa02d6, var_be3a4990);
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0xabe576fb, Offset: 0xf980
// Size: 0x1f2
function function_3eb362dc(var_72aa02d6, var_be3a4990) {
    if (isdefined(var_72aa02d6) && isdefined(var_be3a4990) && !var_72aa02d6 flag::get(#"hash_28aa7465e244f919")) {
        var_70274f85 = var_be3a4990.origin + anglestoforward(var_be3a4990.angles) * 8 + anglestoup(var_be3a4990.angles) * 8;
        foreach (e_player in function_a1ef346b(undefined, var_be3a4990.origin, 1500)) {
            if (zm_utility::is_player_valid(e_player) && e_player zm_utility::is_player_looking_at(var_70274f85, 0.1, 1, var_be3a4990)) {
                var_72aa02d6 flag::set(#"hash_28aa7465e244f919");
                level util::delay(2, "end_game", &namespace_7589cf5c::play_vo, #"hash_68f7e030e67cdf2e");
                return;
            }
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x0
// Checksum 0xe65d5425, Offset: 0xfb80
// Size: 0x108
function function_9d647395(var_72aa02d6, var_be3a4990) {
    level endon(#"end_game");
    var_72aa02d6 endon(#"hiding", #"hash_7b1b704f28df93c", #"interesting", #"capturing");
    while (true) {
        wait(randomfloatrange(0.1, 2));
        var_be3a4990 hide();
        wait(randomfloatrange(0.1, 0.2));
        var_be3a4990 show();
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0xd36dcd01, Offset: 0xfc90
// Size: 0x674
function function_235903f1(var_72aa02d6, var_be3a4990) {
    level endon(#"end_game");
    var_72aa02d6 endon(#"hiding", #"hash_7b1b704f28df93c", #"capturing");
    while (true) {
        for (var_6ae3683f = var_72aa02d6.var_6ae3683f; !isdefined(var_6ae3683f); var_6ae3683f = var_72aa02d6.var_6ae3683f) {
            wait(1);
        }
        if (var_72aa02d6 flag::get(#"returning") || distance2dsquared(var_6ae3683f.origin, var_be3a4990.origin) > 65536 || distancesquared(var_6ae3683f.origin, var_be3a4990.origin) > 1048576) {
            while (var_72aa02d6.var_6ae3683f === var_6ae3683f) {
                wait(1);
            }
            continue;
        }
        while (isdefined(var_6ae3683f) && !var_72aa02d6 flag::get(#"returning")) {
            wait(3);
            if (!isdefined(var_6ae3683f) || var_72aa02d6 flag::get(#"returning") || function_a1ef346b(undefined, var_6ae3683f.origin, 800).size <= 0) {
                break;
            }
        }
        if (isdefined(var_6ae3683f) && !var_72aa02d6 flag::get(#"returning")) {
            break;
        }
    }
    var_72aa02d6 notify(#"interesting");
    v_origin = var_6ae3683f.origin;
    v_angles = var_6ae3683f.angles;
    function_d781de7(var_be3a4990, 1);
    var_72aa02d6 flag::clear(#"hash_5f9357b882bca1c1");
    if (isdefined(var_72aa02d6.var_dd7192a0)) {
        var_72aa02d6.var_dd7192a0 deletedelay();
    }
    wait(2);
    var_be3a4990.origin = v_origin;
    var_be3a4990.angles = v_angles;
    var_be3a4990 scene::stop();
    var_be3a4990 thread scene::play(#"p9_fxanim_zm_monkey_idle_bundle", "idle_01", var_be3a4990);
    function_d781de7(var_be3a4990, 0);
    level thread function_c0e4c7fd(var_72aa02d6, "curious");
    if (isdefined(var_6ae3683f)) {
        var_6ae3683f notify(#"hash_7d62a91eeaef85f1");
        var_6ae3683f fx::play(#"hash_210ef7d0a601f6d9", var_6ae3683f.origin, var_6ae3683f.angles, #"hash_536b8107cf6498b6", 1, undefined, 1);
        var_6ae3683f stoploopsound();
        var_6ae3683f playloopsound(#"hash_3af833d1182396f3");
    }
    var_72aa02d6 flag::set(#"hash_1c2f1b70dc486a32");
    var_d4455638 = var_72aa02d6.var_d4455638;
    if (isplayer(var_d4455638)) {
        var_d4455638 thread zm_equipment::show_hint_text(#"hash_7d040d8a217dc904");
        level thread zm_vo::function_d6f8bbd9(#"hash_1ab7fd752543feb7", undefined, var_d4455638);
    }
    level thread function_52cca084(var_72aa02d6, var_be3a4990, 0);
    while (!var_72aa02d6 flag::get(#"shot") && isdefined(var_6ae3683f) && !var_72aa02d6 flag::get(#"returning") && function_a1ef346b(undefined, var_be3a4990.origin, 512).size <= 0) {
        waitframe(1);
    }
    if (isdefined(var_6ae3683f)) {
        var_6ae3683f notify(#"hash_536b8107cf6498b6");
        var_6ae3683f fx::play(#"hash_194a9dcd4ca41ca9", var_6ae3683f.origin, var_6ae3683f.angles, #"hash_7d62a91eeaef85f1", 1, undefined, 1);
        var_6ae3683f stoploopsound();
        var_6ae3683f playloopsound(#"hash_c977a3c790ccd55");
    }
    if (isplayer(var_d4455638)) {
        level thread zm_vo::function_d6f8bbd9(#"hash_25707dda870af692", undefined, var_d4455638);
    }
    if (isdefined(var_6ae3683f) && !var_72aa02d6 flag::get(#"returning")) {
        level thread function_fb7ad62d(var_72aa02d6, var_6ae3683f, var_d4455638, 1);
    }
    var_72aa02d6 flag::set(#"hash_7b1b704f28df93c");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0x430d83ee, Offset: 0x10310
// Size: 0x17c
function function_d781de7(var_be3a4990, b_hide = 1) {
    if (isdefined(var_be3a4990)) {
        playfx(#"hash_7be84069975ec045", var_be3a4990.origin, anglestoforward(var_be3a4990.angles), anglestoup(var_be3a4990.angles));
        var_be3a4990 stopsounds();
        var_be3a4990 playsound(#"hash_7b0055489acd9ced");
        var_be3a4990 notify(#"hash_544ad67b059004d3");
        if (b_hide) {
            var_be3a4990 hide();
            return;
        }
        var_be3a4990 show();
        var_be3a4990 fx::play(#"hash_4b51c1d43f724641", var_be3a4990 gettagorigin("j_spine_3"), var_be3a4990 gettagangles("j_spine_3"), #"hash_544ad67b059004d3", 1, "j_spine_3");
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0x7cf84a0f, Offset: 0x10498
// Size: 0xf8
function function_c0e4c7fd(var_72aa02d6, str_suffix) {
    self notify("64ee57d8b80a0160");
    self endon("64ee57d8b80a0160");
    level endon(#"end_game");
    var_72aa02d6 endon(#"hash_7b1b704f28df93c", #"interesting", #"capturing");
    wait(randomfloatrange(0.1, 0.5));
    while (true) {
        var_72aa02d6.var_be3a4990 playsound(#"hash_27dbf6d6482343cc" + str_suffix);
        wait(randomfloatrange(2.5, 5));
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x0
// Checksum 0x49bbab76, Offset: 0x10598
// Size: 0x80
function function_2c3c8a35(s_params) {
    var_72aa02d6 = level.var_df1e52ea;
    e_player = s_params.activator;
    if (isdefined(var_72aa02d6) && zm_utility::is_player_valid(e_player)) {
        self triggerenable(0);
        var_72aa02d6 notify(#"hash_76ec75c3372dcb07", e_player);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x7206eb14, Offset: 0x10620
// Size: 0x44c
function function_4004453a(s_instance) {
    var_72aa02d6 = s_instance.contentgroups[#"hash_1b764530c070424a"][0];
    level.var_11aeb779 = var_72aa02d6;
    s_instance flag::wait_till(#"hash_2d8528c8de39ead6");
    var_9fe8c6e9 = var_72aa02d6.contentgroups[#"dupe"][0];
    point = function_4ba8fde(#"item_zmintel_survival_omega_artifact_7");
    while (true) {
        var_dcdd09f2 = item_drop::drop_item(0, undefined, 1, 0, point.id, var_9fe8c6e9.origin, var_9fe8c6e9.angles, 0);
        if (isdefined(var_dcdd09f2)) {
            var_dcdd09f2 playloopsound(#"hash_6979a0759dfa9cb3");
            break;
        }
        waitframe(1);
    }
    var_dcdd09f2.var_a84740ef = #"hash_3a303dbe20c8dc5e";
    var_dcdd09f2 ghost();
    var_18fd369a = util::spawn_model(#"hash_8dc57f1c51e6875", var_9fe8c6e9.origin, var_9fe8c6e9.angles);
    var_18fd369a setscale(1);
    var_18fd369a clientfield::set("mimic_prop_rob", 6);
    var_72aa02d6.var_ee8ba96b = new throttle();
    [[ var_72aa02d6.var_ee8ba96b ]]->initialize(1, float(function_60d95f53()) / 1000);
    level thread function_e1e48820(var_72aa02d6);
    var_72aa02d6 flag::wait_till(#"hash_52d9d7b1062c3568");
    var_dcdd09f2 stoploopsound();
    function_4cc9e609(#"all", undefined, 1);
    while (true) {
        e_player = var_72aa02d6.var_eabcfe81;
        if (isalive(e_player)) {
            v_angles = vectortoangles(e_player.origin - var_18fd369a.origin);
        } else {
            v_angles = var_18fd369a.angles;
        }
        ai_mimic = namespace_85745671::function_9d3ad056(#"hash_4a900af3fc47cdd5", var_18fd369a.origin, v_angles, undefined, 0);
        ai_mimic playsound(#"hash_3caf5701e7477613");
        if (isdefined(ai_mimic)) {
            break;
        }
        waitframe(1);
    }
    level thread function_cf0fb035(var_72aa02d6, ai_mimic, var_9fe8c6e9, e_player);
    playfx(#"zm_ai/fx9_mimic_prop_spawn_out", var_18fd369a.origin);
    var_18fd369a thread util::delayed_delete(1);
    var_72aa02d6 flag::wait_till(#"hash_5497ada40bcd89dc");
    wait(1);
    level namespace_7589cf5c::play_vo(#"hash_37404e99df5fe741");
    level thread function_6206941d();
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x6604b1d, Offset: 0x10a78
// Size: 0x4d6
function function_e1e48820(var_72aa02d6) {
    level endon(#"end_game");
    var_72aa02d6 endon(#"hash_d40a485615b4a3a");
    var_72aa02d6 flag::wait_till(#"hash_8e1f7ccf4965bb");
    a_props = [[#"hash_9033118463aa6a0", 0], [#"p8_wz_skt_potted_plant_palm_square", 0], [#"hash_46fe557f2085d01d", 0], [#"p8_jpn_ashtray_tall", 13], [#"hash_524977d3bd147dc5", 0], [#"hash_4fe609f6bf03cb34", 44]];
    var_6003341b = arraycopy(a_props);
    var_6003341b = array::randomize(var_6003341b);
    foreach (var_3f3f0752 in var_72aa02d6.var_5f698d8a) {
        if (var_6003341b.size <= 0) {
            var_6003341b = arraycopy(a_props);
            var_6003341b = array::randomize(var_6003341b);
        }
        prop = var_6003341b[0];
        arrayremoveindex(var_6003341b, 0);
        str_model = prop[0];
        var_e4fe4456 = prop[1];
        v_angles = (0, randomfloat(360), 0);
        mdl_prop = util::spawn_model(str_model, var_3f3f0752.origin + (0, 0, var_e4fe4456), v_angles);
        if (!isdefined(var_72aa02d6.var_7c4ee138)) {
            var_72aa02d6.var_7c4ee138 = [];
        } else if (!isarray(var_72aa02d6.var_7c4ee138)) {
            var_72aa02d6.var_7c4ee138 = array(var_72aa02d6.var_7c4ee138);
        }
        var_72aa02d6.var_7c4ee138[var_72aa02d6.var_7c4ee138.size] = mdl_prop;
        var_94a3a9c3 = prop[2];
        var_70cd2597 = prop[3];
        if (isdefined(var_94a3a9c3) && isdefined(var_70cd2597)) {
            waitframe(1);
            v_forward = anglestoforward(v_angles) * var_70cd2597[0];
            v_right = anglestoright(v_angles) * var_70cd2597[1];
            v_up = anglestoup(v_angles) * var_70cd2597[2];
            var_5ecd510 = mdl_prop.origin + v_forward + v_right + v_up;
            while (true) {
                mdl_prop.var_76e714be = spawncollision(var_94a3a9c3, "sr_ee_hulk_eggshell_impact", var_5ecd510, v_angles);
                if (isdefined(mdl_prop.var_76e714be)) {
                    break;
                }
                waitframe(1);
            }
        }
        mdl_prop notsolid();
        level thread function_f9d3c90b(var_72aa02d6, mdl_prop);
        waitframe(1);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0xfb660c77, Offset: 0x10f58
// Size: 0x394
function function_f9d3c90b(var_72aa02d6, mdl_prop) {
    if (!(isdefined(var_72aa02d6) && isdefined(mdl_prop))) {
        return;
    }
    var_72aa02d6 endon(#"hash_d40a485615b4a3a");
    mdl_prop endon(#"death");
    level thread function_462478c5(var_72aa02d6, mdl_prop);
    var_e8657db6 = 0;
    while (!var_e8657db6) {
        var_e8657db6 = mdl_prop flag::get(#"shot");
        if (!var_e8657db6) {
            foreach (e_player in function_a1ef346b(undefined, mdl_prop.origin, 128)) {
                if (zm_utility::is_player_valid(e_player) && !e_player util::function_88c74107() && !e_player isnotarget() && !is_true(e_player.ignoreme)) {
                    var_e8657db6 = 1;
                    break;
                }
            }
        }
        if (!var_e8657db6) {
            wait(0.1);
        }
    }
    mdl_prop notify(#"spawning");
    if (isdefined(mdl_prop.var_76e714be)) {
        mdl_prop.var_76e714be deletedelay();
    }
    [[ var_72aa02d6.var_ee8ba96b ]]->waitinqueue(mdl_prop);
    function_4cc9e609(#"all", undefined, 1);
    while (true) {
        if (isalive(e_player)) {
            v_angles = vectortoangles(e_player.origin - mdl_prop.origin);
        } else {
            v_angles = mdl_prop.angles;
        }
        ai_mimic = namespace_85745671::function_9d3ad056(#"spawner_bo5_mimic", mdl_prop.origin, v_angles, undefined, 0);
        if (isdefined(ai_mimic)) {
            break;
        }
        waitframe(1);
    }
    ai_mimic callback::function_d8abfc3d(#"death", &function_c1c036a2);
    ai_mimic.var_98f1f37c = 1;
    ai_mimic.no_powerups = 1;
    playfx(#"zm_ai/fx9_mimic_prop_spawn_out", mdl_prop.origin);
    mdl_prop delete();
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0x47c6ee76, Offset: 0x112f8
// Size: 0x16a
function function_462478c5(var_72aa02d6, mdl_prop) {
    var_76e714be = mdl_prop.var_76e714be;
    if (!(isdefined(var_72aa02d6) && isdefined(var_76e714be))) {
        return;
    }
    var_72aa02d6 endon(#"hash_d40a485615b4a3a");
    mdl_prop endon(#"death", #"spawning");
    var_76e714be endon(#"death");
    var_76e714be val::set(#"hash_6f088ac96a40aeb0", "allowdeath", 0);
    var_76e714be val::set(#"hash_6f088ac96a40aeb0", "takedamage", 1);
    var_76e714be.health = 1;
    while (true) {
        s_waitresult = var_76e714be waittill(#"damage");
        if (isplayer(s_waitresult.attacker)) {
            mdl_prop flag::set(#"shot");
            return;
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xaaffeaa0, Offset: 0x11470
// Size: 0x4c
function function_c1c036a2(*s_params) {
    self callback::function_52ac9652(#"death", &function_c1c036a2);
    release_spawn();
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xca9517ee, Offset: 0x114c8
// Size: 0x126
function function_9766e3e9(var_72aa02d6) {
    var_72aa02d6 notify(#"hash_d40a485615b4a3a");
    var_6ef4d7bc = var_72aa02d6.var_7c4ee138;
    if (isdefined(var_6ef4d7bc)) {
        foreach (mdl_prop in var_6ef4d7bc) {
            if (isdefined(mdl_prop)) {
                playfx(#"zm_ai/fx9_mimic_prop_spawn_out", mdl_prop.origin);
                if (isdefined(mdl_prop.var_76e714be)) {
                    mdl_prop.var_76e714be deletedelay();
                }
                mdl_prop delete();
                waitframe(1);
            }
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 4, eflags: 0x2 linked
// Checksum 0xb2e5ba9c, Offset: 0x115f8
// Size: 0x204
function function_cf0fb035(var_72aa02d6, ai_mimic, var_9fe8c6e9, e_player) {
    if (isalive(ai_mimic)) {
        ai_mimic.never_hide = 1;
        ai_mimic.var_98f1f37c = 1;
        ai_mimic.no_powerups = 1;
        ai_mimic setgoal(ai_mimic.origin);
        if (isalive(e_player)) {
            awareness::function_c241ef9a(ai_mimic, e_player, 10);
        }
        ai_mimic waittill(#"death");
    }
    release_spawn();
    level thread function_9766e3e9(var_72aa02d6);
    v_origin = ai_mimic.origin;
    if (!isdefined(v_origin)) {
        v_origin = var_9fe8c6e9.origin;
    }
    point = function_4ba8fde(#"item_zmintel_survival_omega_artifact_7");
    while (true) {
        var_c5124824 = item_drop::drop_item(0, undefined, 1, 0, point.id, v_origin, (0, 0, 0), 2);
        if (isdefined(var_c5124824)) {
            break;
        }
        waitframe(1);
    }
    var_c5124824 playloopsound(#"hash_6979a0759dfa9cb3");
    var_c5124824.var_a84740ef = #"hash_1b764530c070424a";
    wait(1);
    level thread namespace_7589cf5c::play_vo(#"hash_59e05edf84f5c0e7");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xa0d9275, Offset: 0x11808
// Size: 0x1324
function function_f23a642e(s_instance) {
    var_72aa02d6 = s_instance.contentgroups[#"hash_645bdb2b2ae769ef"][0];
    level.var_76978879 = var_72aa02d6;
    showmiscmodels("mdl_sr_ee_hulk_bio");
    var_758436f2 = var_72aa02d6.contentgroups[#"harvester"][0];
    var_758436f2 scene::init(#"p9_fxanim_sv_empty_canister_open_bundle");
    var_72aa02d6.var_b3fb5814 = var_758436f2.scene_ents[#"prop 1"];
    var_b3fb5814 = var_72aa02d6.var_b3fb5814;
    var_b3fb5814.targetname = "retrieval_case";
    var_b3fb5814 function_619a5c20();
    var_b3fb5814 hidepart("p9_sur_console_control_01_canister_jnt", "", 1);
    var_72aa02d6.var_57e77903 = util::spawn_model(#"hash_5f27ef95924c1c11", var_b3fb5814 gettagorigin("p9_sur_console_control_01_canister_jnt"), var_b3fb5814 gettagangles("p9_sur_console_control_01_canister_jnt"));
    var_57e77903 = var_72aa02d6.var_57e77903;
    var_57e77903 linkto(var_b3fb5814, "p9_sur_console_control_01_canister_jnt");
    var_57e77903.targetname = "retrieval_component";
    s_instance flag::wait_till(#"hash_2d8528c8de39ead6");
    var_72aa02d6.var_7b89742f = [#"hash_3c0c31f3b4b00b93", #"hash_3c0c32f3b4b00d46", #"hash_3c0c33f3b4b00ef9", #"hash_3c0c34f3b4b010ac"];
    var_72aa02d6.var_410f8136 = [#"hash_1f8bcb4811f50198", #"hash_1f8bce4811f506b1", #"hash_1f8bcd4811f504fe"];
    var_72aa02d6.var_500b8b0e = 0;
    callback::on_item_pickup(&function_1c632454);
    var_72aa02d6.var_57294bb7 = new throttle();
    [[ var_72aa02d6.var_57294bb7 ]]->initialize(1, float(function_60d95f53()) / 1000);
    foreach (var_eef0aa31 in isdefined(var_72aa02d6.contentgroups[#"chunk"]) ? var_72aa02d6.contentgroups[#"chunk"] : []) {
        level thread function_bd97d87e(var_72aa02d6, var_eef0aa31);
    }
    level clientfield::set("" + #"hash_645bdb2b2ae769ef", 1);
    level thread function_18490c62(var_72aa02d6);
    var_76380b53 = [];
    foreach (var_86cb7d9d in isdefined(var_72aa02d6.contentgroups[#"hash_1e44c1b277401c68"]) ? var_72aa02d6.contentgroups[#"hash_1e44c1b277401c68"] : []) {
        switch (var_86cb7d9d.model) {
        case #"hash_1bf172051b6041bf":
            var_8c420570 = #"hash_1bf172051b6041bf";
            break;
        case #"hash_61caa108089b6ef7":
            var_8c420570 = #"hash_61caa108089b6ef7";
            break;
        case #"hash_2464edbb120f53a0":
            var_8c420570 = #"hash_2464edbb120f53a0";
            break;
        case #"hash_3ade095afc6e4835":
            var_8c420570 = #"hash_3ade095afc6e4835";
            break;
        }
        if (isdefined(var_8c420570)) {
            mdl_body = util::spawn_model(var_8c420570, var_86cb7d9d.origin, var_86cb7d9d.angles);
            mdl_body.var_a0d60ae6 = 1;
            if (!isdefined(var_76380b53)) {
                var_76380b53 = [];
            } else if (!isarray(var_76380b53)) {
                var_76380b53 = array(var_76380b53);
            }
            var_76380b53[var_76380b53.size] = mdl_body;
            s_key = var_86cb7d9d.contentgroups[#"key"][0];
            if (isdefined(s_key)) {
                function_855284ee(var_72aa02d6, mdl_body, s_key);
            }
        }
    }
    level thread function_b486d614(var_76380b53);
    var_bb5d660 = [];
    foreach (var_8b24e6f6 in isdefined(var_72aa02d6.contentgroups[#"hash_7902df85ef85a95e"]) ? var_72aa02d6.contentgroups[#"hash_7902df85ef85a95e"] : []) {
        switch (var_8b24e6f6.model) {
        case #"hash_9813416dd021ed9":
            var_f43fac08 = #"hash_9813416dd021ed9";
            break;
        case #"hash_4b83bb84413a37c3":
            var_f43fac08 = #"hash_4b83bb84413a37c3";
            break;
        case #"hash_5b36b08401b4c2c1":
            var_f43fac08 = #"hash_5b36b08401b4c2c1";
            break;
        case #"hash_6f6d775eb01855db":
            var_f43fac08 = #"hash_6f6d775eb01855db";
            break;
        case #"hash_3a7d5ecc61814219":
            var_f43fac08 = #"hash_3a7d5ecc61814219";
            break;
        }
        if (isdefined(var_f43fac08)) {
            var_c6b3dd01 = util::spawn_model(var_f43fac08, var_8b24e6f6.origin, (randomfloat(360), randomfloat(360), randomfloat(360)));
            if (!isdefined(var_bb5d660)) {
                var_bb5d660 = [];
            } else if (!isarray(var_bb5d660)) {
                var_bb5d660 = array(var_bb5d660);
            }
            var_bb5d660[var_bb5d660.size] = var_c6b3dd01;
        }
    }
    level thread function_83ca3de5(var_bb5d660);
    var_1b32f535 = content_manager::spawn_interact(var_758436f2, &function_3e1d8ff2, #"hash_110f0b36c2354f6b", undefined, 96, 128);
    e_player = var_72aa02d6 waittill(#"hash_67ba75b31f1bacaf");
    e_player playrumbleonentity(#"damage_heavy");
    var_1b32f535 delete();
    var_72aa02d6 flag::set(#"hash_67ba75b31f1bacaf");
    var_758436f2 scene::play(#"p9_fxanim_sv_empty_canister_open_bundle");
    var_72aa02d6.var_8cd815ff = isdefined(var_72aa02d6.contentgroups[#"attack"]) ? var_72aa02d6.contentgroups[#"attack"] : [];
    if (!isdefined(var_72aa02d6.var_8cd815ff)) {
        var_72aa02d6.var_8cd815ff = [];
    } else if (!isarray(var_72aa02d6.var_8cd815ff)) {
        var_72aa02d6.var_8cd815ff = array(var_72aa02d6.var_8cd815ff);
    }
    var_72aa02d6.var_8cd815ff[var_72aa02d6.var_8cd815ff.size] = var_72aa02d6.contentgroups[#"hash_1a3f74e8ce5e3516"][0];
    var_72aa02d6.var_6ac71323 = arraycopy(var_72aa02d6.var_8cd815ff);
    var_72aa02d6.var_2e66fa35 = 10;
    while (!var_72aa02d6 flag::get(#"hash_5497ada40bcd89dc")) {
        var_72aa02d6 flag::clear(#"hash_43b54fe5263c99c3");
        var_72aa02d6 flag::clear(#"hash_34afd8621dc9a226");
        var_72aa02d6.var_1edd9ca5 = 0;
        var_72aa02d6.var_7f8115b4 = 3;
        var_72aa02d6.var_13c74181 = [];
        level thread function_6f1cb9c7(var_72aa02d6, var_57e77903, var_b3fb5814);
        var_c4da9e10 = content_manager::spawn_interact(var_758436f2, &function_6f4eb6d, #"", undefined, 96);
        var_c4da9e10 setinvisibletoall();
        var_c4da9e10 usetriggerrequirelookat(0);
        level thread function_d700875e(var_72aa02d6, var_c4da9e10);
        level thread function_4555c9f8(var_72aa02d6, var_c4da9e10);
        var_72aa02d6 flag::wait_till(#"hash_43b54fe5263c99c3");
        var_c4da9e10 delete();
        zm_sq::objective_complete(#"chunk");
        wait(0.5);
        var_57e77903 unlink();
        level thread function_b9462694(0, var_72aa02d6, var_57e77903, var_b3fb5814);
        wait(2);
        mdl_fx = util::spawn_model(#"tag_origin", var_b3fb5814.origin, var_b3fb5814.angles);
        playfxontag(#"sr/fx9_canister_pod_aether", mdl_fx, "tag_origin");
        mdl_fx playloopsound(#"hash_724ba66a7599d72d");
        mdl_fx playrumblelooponentity(#"sr_machinery_rumble");
        function_f9e72253();
        foreach (e_player in function_a1ef346b()) {
            e_player thread namespace_2c949ef8::function_f4413120();
        }
        n_wait = 30;
        /#
            if (getdvarint(#"hash_44f60afd9b1d073b", 0)) {
                n_wait = 3;
            }
        #/
        wait(n_wait);
        mdl_fx stoploopsound();
        mdl_fx stoprumble(#"sr_machinery_rumble");
        mdl_fx delete();
        var_3c5d6dd8 = var_b3fb5814.origin + (0, 0, 32);
        playfx(#"zombie/fx9_player_shockwave_retrieval", var_3c5d6dd8, (180, 0, 0));
        playsoundatposition(#"hash_5db462e1df5084e7", var_3c5d6dd8);
        playrumbleonposition(#"explosion_generic", var_3c5d6dd8);
        earthquake(0.3, 1, var_3c5d6dd8, 500);
        var_b3fb5814 thread objective_retrieval::function_62801b2f();
        function_42cf5b78();
        wait(3);
        var_57e77903 playloopsound(#"hash_3432d05cab6568b1");
        var_57e77903 setmodel(#"hash_7705d4f7da40daeb");
        var_57e77903 fx::play(#"sr/fx9_obj_retrieval_container_glow", var_57e77903.origin, var_57e77903.angles, #"hash_ffb63905e695382", 1, "tag_origin");
        function_b9462694(1, var_72aa02d6, var_57e77903, var_b3fb5814);
        var_a168912c = content_manager::spawn_interact(var_758436f2, &function_e424e2c2, #"hash_c90fb1f338973f7", undefined, 96);
        e_player = var_72aa02d6 waittill(#"hash_3203fbab739df230");
        level thread function_57d4f7c0(e_player);
        var_a168912c delete();
        if (!var_72aa02d6 flag::get(#"hash_6382d5d330c2a69b")) {
            var_72aa02d6 flag::set(#"hash_6382d5d330c2a69b");
            level util::delay(1, "end_game", &namespace_7589cf5c::play_vo, #"hash_3c024ea5111fbc0a");
        }
        var_72aa02d6 flag::wait_till_any([#"hash_5497ada40bcd89dc", #"hash_34afd8621dc9a226"]);
        if (!var_72aa02d6 flag::get(#"hash_5497ada40bcd89dc")) {
            function_6fd7f323(var_72aa02d6.var_f9bc175a, 0, 0);
            waitframe(1);
            var_57e77903 notify(#"hash_ffb63905e695382");
            var_57e77903 stoploopsound();
            var_57e77903 setmodel(#"hash_5f27ef95924c1c11");
            var_57e77903.origin = var_b3fb5814 gettagorigin("p9_sur_console_control_01_canister_jnt");
            var_57e77903.angles = var_b3fb5814 gettagangles("p9_sur_console_control_01_canister_jnt");
            var_57e77903 linkto(var_b3fb5814);
        }
    }
    wait(0.5);
    level thread function_6f582582(var_72aa02d6, var_57e77903);
    wait(0.5);
    level namespace_7589cf5c::play_vo(#"hash_7c0b775916c32f04");
    level thread function_6206941d();
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x6c0cdf86, Offset: 0x12b38
// Size: 0x1ac
function function_18490c62(var_72aa02d6) {
    if (!isdefined(var_72aa02d6) || var_72aa02d6 flag::get(#"hash_7950edacde3bca47")) {
        return;
    }
    level endon(#"end_game");
    var_72aa02d6 endon(#"hash_7950edacde3bca47");
    var_c75c14fb = struct::get(#"hash_2fa4eb0aaf83db26");
    while (isdefined(var_c75c14fb)) {
        wait(1);
        foreach (e_player in function_a1ef346b(undefined, var_c75c14fb.origin, 1024)) {
            if (isalive(e_player) && e_player zm_utility::is_player_looking_at(var_c75c14fb.origin, 0.5, 1)) {
                level thread namespace_7589cf5c::play_vo(#"hash_47ed23c9e819a583");
                return;
            }
            wait(1);
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x98879ac, Offset: 0x12cf0
// Size: 0x114
function function_1c632454(s_params) {
    var_72aa02d6 = level.var_76978879;
    if (s_params.item.itementry.name === #"sr_hulk_chunk_goal" && isdefined(var_72aa02d6.var_500b8b0e)) {
        var_72aa02d6.var_500b8b0e++;
        if (!var_72aa02d6 flag::get(#"hash_7819a87bca8c3e53")) {
            var_72aa02d6 flag::set(#"hash_7819a87bca8c3e53");
            array::thread_all(getplayers(), &zm_intel::collect_intel, #"zmintel_survival_darkaether_artifact_10");
            wait(1);
            level thread namespace_7589cf5c::play_vo(#"hash_5b4662998ffcd270");
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0xa6154b42, Offset: 0x12e10
// Size: 0x888
function function_bd97d87e(var_72aa02d6, var_eef0aa31) {
    level endon(#"end_game");
    str_model = #"p9_gold_surcrystal_medium_01";
    str_scene = "p9_zm_gold_sur_crystal_medium_01_bundle";
    var_67dad5a1 = #"hash_3c3c40375febff35";
    if (math::cointoss()) {
        str_model = #"p9_gold_surcrystal_medium_02";
        str_scene = "p9_zm_gold_sur_crystal_medium_02_bundle";
        var_67dad5a1 = #"hash_50aa2075dbc5e6e0";
    }
    while (!var_72aa02d6 flag::get(#"hash_5497ada40bcd89dc")) {
        var_83ad943a = util::spawn_model(str_model, var_eef0aa31.origin, var_eef0aa31.angles);
        var_83ad943a setscale(randomfloatrange(0.85, 1.2));
        [[ var_72aa02d6.var_57294bb7 ]]->waitinqueue(var_eef0aa31);
        a_ents[#"prop 1"] = var_83ad943a;
        var_83ad943a thread scene::play(str_scene, a_ents);
        util::wait_network_frame();
        var_83ad943a val::set(#"chunk", "takedamage", 1);
        var_83ad943a val::set(#"chunk", "allowdeath", 0);
        var_83ad943a function_619a5c20();
        var_83ad943a fx::play(#"hash_6583defa5c93e609", var_83ad943a.origin, var_83ad943a.angles, #"hash_7a9ae4c108756f5a", 1, undefined, 1);
        while (true) {
            s_waitresult = var_83ad943a waittill(#"damage");
            e_attacker = s_waitresult.attacker;
            if (isplayer(e_attacker) && isalive(e_attacker)) {
                e_attacker util::show_hit_marker();
                if (var_83ad943a.health - s_waitresult.amount <= 0) {
                    break;
                }
            }
        }
        [[ var_72aa02d6.var_57294bb7 ]]->waitinqueue(var_eef0aa31);
        var_83ad943a notify(#"hash_7a9ae4c108756f5a");
        var_83ad943a function_23a29590();
        var_83ad943a fx::play(#"hash_65063e9505bafd58", var_83ad943a.origin, var_83ad943a.angles);
        var_83ad943a scene::stop();
        var_83ad943a setmodel(var_67dad5a1);
        playsoundatposition(#"hash_54c5c342b84cf845", var_83ad943a.origin);
        var_98d110e6 = 2;
        v_origin = var_83ad943a.origin + vectornormalize(anglestoup(var_83ad943a.angles)) * 32;
        v_angles = var_83ad943a.angles;
        s_target = var_eef0aa31.contentgroups[#"target"][0];
        if (isdefined(s_target)) {
            var_98d110e6 = 0;
            v_angles = (0, randomfloat(360), 0);
        }
        var_56f340c4 = var_72aa02d6 flag::get(#"hash_67ba75b31f1bacaf");
        if (!var_56f340c4 || var_72aa02d6 flag::get(#"hash_5497ada40bcd89dc")) {
            var_cc1fb2d0 = namespace_58949729::function_fd5e77fa(#"pod");
            var_e8b254f5 = {#origin:v_origin, #angles:v_angles, #var_738dfc81:1};
            while (true) {
                a_items = var_e8b254f5 namespace_65181344::function_fd87c780(var_cc1fb2d0, 1, var_98d110e6);
                var_f3c7bdd = a_items[0];
                if (isdefined(var_f3c7bdd)) {
                    break;
                }
                waitframe(1);
            }
        } else {
            point = function_4ba8fde(#"sr_hulk_chunk_goal");
            while (true) {
                var_f3c7bdd = item_drop::drop_item(0, undefined, 1, 0, point.id, v_origin, v_angles, var_98d110e6);
                var_f3c7bdd playloopsound(#"hash_1343e0ba74f802f4");
                if (isdefined(var_f3c7bdd)) {
                    break;
                }
                waitframe(1);
            }
        }
        if (isdefined(s_target)) {
            var_fd6264f6 = var_f3c7bdd zm_utility::fake_physicslaunch(s_target.origin, 300);
            wait(var_fd6264f6);
            if (isdefined(var_f3c7bdd)) {
                var_f3c7bdd.origin = s_target.origin;
            }
        }
        if (var_56f340c4) {
            while (!var_72aa02d6 flag::get(#"hash_5497ada40bcd89dc") && isdefined(var_f3c7bdd)) {
                wait(1);
            }
        } else {
            var_72aa02d6 flag::wait_till(#"hash_67ba75b31f1bacaf");
        }
        var_72aa02d6 flag::wait_till_timeout(60, #"hash_5497ada40bcd89dc");
        if (var_72aa02d6 flag::get(#"hash_5497ada40bcd89dc")) {
            return;
        }
        while (!var_72aa02d6 flag::get(#"hash_5497ada40bcd89dc")) {
            var_3be9bd30 = function_a1ef346b(undefined, var_eef0aa31.origin, 512);
            if (isdefined(var_3be9bd30) && var_3be9bd30.size <= 0) {
                break;
            }
            wait(1);
        }
        if (var_72aa02d6 flag::get(#"hash_5497ada40bcd89dc")) {
            return;
        }
        if (!var_56f340c4 && isdefined(var_f3c7bdd)) {
            item_world::consume_item(var_f3c7bdd);
        }
        if (!var_72aa02d6 flag::get(#"hash_5497ada40bcd89dc")) {
            if (isdefined(var_83ad943a)) {
                var_83ad943a delete();
            }
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 3, eflags: 0x2 linked
// Checksum 0x1a2c71c4, Offset: 0x136a0
// Size: 0x24c
function function_855284ee(var_72aa02d6, mdl_body, s_key) {
    point = function_4ba8fde(#"item_zmintel_survival_omega_artifact_7");
    while (true) {
        var_c5124824 = item_drop::drop_item(0, undefined, 1, 0, point.id, s_key.origin, s_key.angles, 0);
        if (isdefined(var_c5124824)) {
            break;
        }
        waitframe(1);
    }
    var_c5124824.var_a84740ef = #"hash_645bdb2b2ae769ef";
    var_c5124824.origin = s_key.origin;
    var_c5124824.angles = s_key.angles;
    var_c5124824 linkto(mdl_body);
    var_c5124824 playloopsound(#"hash_6979a0759dfa9cb3");
    var_72aa02d6.var_c5124824 = var_c5124824;
    callback::on_spawned(&function_dbf42caa);
    foreach (e_player in function_a1ef346b()) {
        if (!isdefined(var_c5124824.var_699c6bfb)) {
            var_c5124824.var_699c6bfb = [];
        } else if (!isarray(var_c5124824.var_699c6bfb)) {
            var_c5124824.var_699c6bfb = array(var_c5124824.var_699c6bfb);
        }
        if (!isinarray(var_c5124824.var_699c6bfb, e_player)) {
            var_c5124824.var_699c6bfb[var_c5124824.var_699c6bfb.size] = e_player;
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x2ec64531, Offset: 0x138f8
// Size: 0x80
function function_3e1d8ff2(s_params) {
    var_72aa02d6 = level.var_76978879;
    e_player = s_params.activator;
    if (isdefined(var_72aa02d6) && zm_utility::is_player_valid(e_player)) {
        self triggerenable(0);
        var_72aa02d6 notify(#"hash_67ba75b31f1bacaf", e_player);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x614a6ebf, Offset: 0x13980
// Size: 0xc
function function_6f4eb6d(*s_params) {
    
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0x9f337305, Offset: 0x13998
// Size: 0x17c
function function_d700875e(var_72aa02d6, t_trigger) {
    level endon(#"end_game");
    var_72aa02d6 endon(#"hash_43b54fe5263c99c3");
    t_trigger endon(#"death");
    while (true) {
        if (!isdefined(var_72aa02d6.var_f47c2f2d) && isdefined(var_72aa02d6.var_500b8b0e) && var_72aa02d6.var_500b8b0e > 0) {
            foreach (e_player in function_a1ef346b()) {
                if (zm_utility::is_player_valid(e_player) && e_player istouching(t_trigger) && e_player util::use_button_held()) {
                    level thread function_409e7991(var_72aa02d6, e_player, t_trigger);
                    return;
                }
            }
        }
        waitframe(1);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 3, eflags: 0x2 linked
// Checksum 0x1b33be9f, Offset: 0x13b20
// Size: 0x304
function function_409e7991(var_72aa02d6, e_player, t_trigger) {
    var_72aa02d6.var_f47c2f2d = e_player;
    level thread function_f5ae1e79(e_player);
    var_b3fb5814 = var_72aa02d6.var_b3fb5814;
    n_start_time = gettime();
    while (zm_utility::is_player_valid(e_player) && isdefined(t_trigger) && e_player istouching(t_trigger) && e_player util::use_button_held()) {
        if ((gettime() - n_start_time) / 1000 >= 1) {
            var_72aa02d6.var_500b8b0e--;
            var_72aa02d6.var_1edd9ca5++;
            if (!var_72aa02d6 flag::get(#"hash_6c82d00ac9256e74")) {
                var_72aa02d6 flag::set(#"hash_6c82d00ac9256e74");
            }
            var_72aa02d6 notify(#"hash_5a45d397012e94d2");
            e_player function_bc82f900(#"damage_heavy");
            earthquake(0.1, 0.3, e_player.origin, 128, e_player);
            if (isdefined(var_b3fb5814)) {
                var_b3fb5814 playsound(#"hash_278b070dc4a4e3cc");
            }
            level thread function_56644615(var_72aa02d6);
            var_be5029f9 = 0;
            /#
                if (getdvarint(#"hash_44f60afd9b1d073b", 0)) {
                    var_be5029f9 = 1;
                }
            #/
            if (var_72aa02d6.var_1edd9ca5 >= 20 || var_be5029f9) {
                var_72aa02d6 flag::set(#"hash_43b54fe5263c99c3");
                break;
            } else if (var_72aa02d6.var_500b8b0e <= 0) {
                break;
            }
            n_start_time = gettime();
        }
        waitframe(1);
    }
    var_72aa02d6.var_f47c2f2d = undefined;
    if (isdefined(e_player)) {
        e_player notify(#"hash_675ad1fe9b956642");
    }
    waitframe(1);
    if (isdefined(var_72aa02d6) && isdefined(t_trigger) && !var_72aa02d6 flag::get(#"hash_43b54fe5263c99c3")) {
        level thread function_d700875e(var_72aa02d6, t_trigger);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0x1fb89240, Offset: 0x13e30
// Size: 0x2ee
function function_4555c9f8(var_72aa02d6, t_trigger) {
    level endon(#"end_game");
    var_72aa02d6 endon(#"hash_43b54fe5263c99c3");
    var_cb665283 = 0;
    var_b2a4f7eb = gettime();
    var_f6f4b92d = 1;
    while (true) {
        if (isalive(var_72aa02d6.var_f47c2f2d)) {
            t_trigger setinvisibletoall();
            t_trigger setvisibletoplayer(var_72aa02d6.var_f47c2f2d);
            switch (var_f6f4b92d) {
            case 1:
                var_8351f25d = #"hash_7885815f312b8ab6";
                break;
            case 2:
                var_8351f25d = #"hash_7885805f312b8903";
                break;
            case 3:
                var_8351f25d = #"hash_78857f5f312b8750";
                break;
            }
            if (!var_cb665283) {
                var_cb665283 = 1;
                var_b2a4f7eb = gettime();
            }
            if ((gettime() - var_b2a4f7eb) / 1000 >= 0.5) {
                var_f6f4b92d++;
                var_b2a4f7eb = gettime();
                if (var_f6f4b92d > 3) {
                    var_f6f4b92d = 1;
                }
            }
        } else {
            var_cb665283 = 0;
            var_f6f4b92d = 1;
            b_visible = 1;
            if (var_72aa02d6 flag::get(#"hash_6c82d00ac9256e74")) {
                if (var_72aa02d6.var_500b8b0e > 0) {
                    var_8351f25d = #"hash_ec06ba9683f6a7d";
                } else {
                    var_8351f25d = #"hash_3d18162d60e119fd";
                }
            } else {
                var_8351f25d = #"hash_427fcffe923973c6";
                if (var_72aa02d6.var_500b8b0e <= 0) {
                    b_visible = 0;
                }
            }
            if (b_visible) {
                t_trigger setvisibletoall();
            } else {
                t_trigger setinvisibletoall();
            }
        }
        if (isdefined(var_8351f25d) && isdefined(t_trigger) && isdefined(var_72aa02d6.var_1edd9ca5)) {
            t_trigger sethintstring(var_8351f25d, 20 - var_72aa02d6.var_1edd9ca5);
        }
        waitframe(1);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x950c3a4d, Offset: 0x14128
// Size: 0xa0
function function_f5ae1e79(e_player) {
    if (!isalive(e_player)) {
        return;
    }
    level endon(#"end_game");
    e_player endon(#"death", #"hash_675ad1fe9b956642");
    while (true) {
        e_player function_bc82f900(#"damage_light");
        wait(0.15);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 3, eflags: 0x2 linked
// Checksum 0x5396165, Offset: 0x141d0
// Size: 0x710
function function_6f1cb9c7(var_72aa02d6, var_57e77903, var_b3fb5814) {
    if (!(isdefined(var_57e77903) && isdefined(var_b3fb5814))) {
        return;
    }
    var_72aa02d6 endon(#"hash_43b54fe5263c99c3", #"hash_7d00ae6aa4878e81");
    var_57e77903 endon(#"death");
    var_b3fb5814 endon(#"death");
    v_center = var_b3fb5814 gettagorigin("p9_sur_console_control_01_canister_jnt");
    v_angles = var_b3fb5814 gettagangles("p9_sur_console_control_01_canister_jnt");
    v_up = anglestoup(v_angles);
    v_right = anglestoright(v_angles);
    v_forward = anglestoforward(v_angles);
    var_2e69c597 = [];
    for (var_5d3eb138 = 0; var_5d3eb138 < 5; var_5d3eb138++) {
        for (n_row = 0; n_row < 4; n_row++) {
            switch (n_row) {
            case 0:
                var_8a4df751 = 5;
                break;
            case 1:
                var_8a4df751 = 2.5;
                break;
            case 2:
                var_8a4df751 = 8;
                break;
            case 3:
                var_8a4df751 = 10.5;
                break;
            }
            if (n_row == 3) {
                var_8a4df751 += randomfloatrange(-0.5, 0);
            } else if (n_row == 1) {
                var_8a4df751 += randomfloat(1);
            } else {
                var_8a4df751 += randomfloatrange(-0.5, 1);
            }
            var_56527466 = v_center + v_up * var_8a4df751;
            n_offset = randomfloatrange(1.8, 2.5);
            switch (var_5d3eb138) {
            case 1:
                var_56527466 += v_forward * n_offset;
                break;
            case 2:
                var_56527466 -= v_forward * n_offset;
                break;
            case 3:
                var_56527466 += v_right * n_offset;
                break;
            case 4:
                var_56527466 -= v_right * n_offset;
                break;
            }
            if (var_5d3eb138 % 2 == 0) {
                n_offset = randomfloatrange(1.8, 2.5);
                switch (var_5d3eb138) {
                case 1:
                    var_56527466 += v_right * n_offset;
                    break;
                case 2:
                    var_56527466 -= v_right * n_offset;
                    break;
                case 3:
                    var_56527466 += v_forward * n_offset;
                    break;
                case 4:
                    var_56527466 -= v_forward * n_offset;
                    break;
                }
            }
            if (!isdefined(var_2e69c597)) {
                var_2e69c597 = [];
            } else if (!isarray(var_2e69c597)) {
                var_2e69c597 = array(var_2e69c597);
            }
            var_2e69c597[var_2e69c597.size] = {#origin:var_56527466};
        }
    }
    var_2e69c597 = arraysortclosest(var_2e69c597, v_center + (0, 0, 8));
    var_32ef70a6 = [];
    b_up = math::cointoss();
    for (var_290cd1dd = 0; var_2e69c597.size > 0; var_290cd1dd = 1) {
        var_72aa02d6 waittill(#"hash_5a45d397012e94d2");
        var_eef0aa31 = undefined;
        foreach (s_option in var_2e69c597) {
            var_1d344e16 = arraysortclosest(var_32ef70a6, s_option.origin, undefined, 0, 2.5);
            if (var_1d344e16.size <= 0) {
                var_eef0aa31 = s_option;
                break;
            }
        }
        if (!isdefined(var_eef0aa31)) {
            var_eef0aa31 = var_2e69c597[0];
        }
        arrayremovevalue(var_2e69c597, var_eef0aa31);
        if (isdefined(var_eef0aa31)) {
            if (!isdefined(var_32ef70a6)) {
                var_32ef70a6 = [];
            } else if (!isarray(var_32ef70a6)) {
                var_32ef70a6 = array(var_32ef70a6);
            }
            var_32ef70a6[var_32ef70a6.size] = var_eef0aa31;
            level thread function_72e54417(var_72aa02d6, var_eef0aa31, b_up);
        }
        b_up = !b_up;
        if (!var_290cd1dd) {
            var_57e77903 fx::play(#"hash_76e6cbdd75a0ae46", var_57e77903.origin, var_57e77903.angles, #"hash_47432af7f1c60dd3", 1);
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 3, eflags: 0x2 linked
// Checksum 0x9a8d83e4, Offset: 0x148e8
// Size: 0x22c
function function_72e54417(var_72aa02d6, var_eef0aa31, b_up) {
    var_72aa02d6 endon(#"hash_7d00ae6aa4878e81");
    mdl_crystal = util::spawn_model(#"hash_54162eaf6dc466b9", var_eef0aa31.origin);
    if (!isdefined(var_72aa02d6.var_13c74181)) {
        var_72aa02d6.var_13c74181 = [];
    } else if (!isarray(var_72aa02d6.var_13c74181)) {
        var_72aa02d6.var_13c74181 = array(var_72aa02d6.var_13c74181);
    }
    var_72aa02d6.var_13c74181[var_72aa02d6.var_13c74181.size] = mdl_crystal;
    mdl_crystal setscale(0.2);
    v_dir = (0, 0, 1);
    if (!b_up) {
        v_dir *= -1;
    }
    mdl_crystal bobbing(v_dir, randomfloatrange(0.1, 0.25), randomfloatrange(2, 3));
    mdl_crystal.angles = (randomfloat(360), randomfloat(360), randomfloat(360));
    mdl_crystal rotatevelocity((randomfloatrange(5, 10), randomfloatrange(5, 10), randomfloatrange(5, 10)), 100000);
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x4578e136, Offset: 0x14b20
// Size: 0x4da
function function_56644615(var_72aa02d6) {
    level endon(#"end_game");
    s_instance = level.contentmanager.activeobjective;
    var_a6d869eb = s_instance.contentgroups[#"spawns"][0];
    if (!var_a6d869eb flag::get(#"initialized")) {
        return;
    }
    if (var_a6d869eb.var_de4a9f7a <= 0) {
        return;
    }
    if (!math::cointoss(var_72aa02d6.var_2e66fa35)) {
        var_72aa02d6.var_2e66fa35 += 10;
        return;
    }
    if (isarray(var_a6d869eb.a_ai_spawned[#"hash_645bdb2b2ae769ef"])) {
        function_1eaaceab(var_a6d869eb.a_ai_spawned[#"hash_645bdb2b2ae769ef"]);
        if (var_a6d869eb.a_ai_spawned[#"hash_645bdb2b2ae769ef"].size >= 32) {
            return;
        }
    }
    function_1eaaceab(var_a6d869eb.a_ai_spawned[#"all"]);
    if (var_a6d869eb.a_ai_spawned[#"all"].size >= var_a6d869eb.var_de4a9f7a) {
        function_886e403b(var_a6d869eb, #"all", var_a6d869eb.a_ai_spawned[#"hash_645bdb2b2ae769ef"], 1);
    }
    if (var_72aa02d6.var_6ac71323.size <= 0) {
        var_72aa02d6.var_6ac71323 = arraycopy(var_72aa02d6.var_8cd815ff);
        arrayremovevalue(var_72aa02d6.var_6ac71323, var_72aa02d6.var_c44c9c53);
    }
    s_spawn = array::random(var_72aa02d6.var_6ac71323);
    if (isdefined(s_spawn)) {
        var_397a719 = namespace_85745671::function_9d3ad056(#"spawner_bo5_avogadro_sr", s_spawn.origin, s_spawn.angles, undefined, 0);
        if (isdefined(var_397a719)) {
            if (!isdefined(var_a6d869eb.a_ai_spawned[#"all"])) {
                var_a6d869eb.a_ai_spawned[#"all"] = [];
            } else if (!isarray(var_a6d869eb.a_ai_spawned[#"all"])) {
                var_a6d869eb.a_ai_spawned[#"all"] = array(var_a6d869eb.a_ai_spawned[#"all"]);
            }
            var_a6d869eb.a_ai_spawned[#"all"][var_a6d869eb.a_ai_spawned[#"all"].size] = var_397a719;
            if (!isdefined(var_a6d869eb.a_ai_spawned[#"hash_645bdb2b2ae769ef"])) {
                var_a6d869eb.a_ai_spawned[#"hash_645bdb2b2ae769ef"] = [];
            } else if (!isarray(var_a6d869eb.a_ai_spawned[#"hash_645bdb2b2ae769ef"])) {
                var_a6d869eb.a_ai_spawned[#"hash_645bdb2b2ae769ef"] = array(var_a6d869eb.a_ai_spawned[#"hash_645bdb2b2ae769ef"]);
            }
            var_a6d869eb.a_ai_spawned[#"hash_645bdb2b2ae769ef"][var_a6d869eb.a_ai_spawned[#"hash_645bdb2b2ae769ef"].size] = var_397a719;
            var_397a719.var_98f1f37c = 1;
            var_397a719.no_powerups = 1;
            var_397a719 thread objective_retrieval::function_bf606a73();
            var_72aa02d6 flag::set(#"hash_1a3f74e8ce5e3516");
            var_72aa02d6.var_2e66fa35 = 0;
            arrayremovevalue(var_72aa02d6.var_6ac71323, s_spawn);
            var_72aa02d6.var_c44c9c53 = s_spawn;
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 4, eflags: 0x2 linked
// Checksum 0x3db81715, Offset: 0x15008
// Size: 0x388
function function_b9462694(var_949add22 = 1, var_72aa02d6, var_57e77903, var_b3fb5814) {
    if (!(isdefined(var_57e77903) && isdefined(var_b3fb5814))) {
        return;
    }
    mdl_fx = util::spawn_model(#"tag_origin", var_b3fb5814.origin, var_b3fb5814.angles);
    playfxontag(#"hash_6dc11d6c4488a0e7", mdl_fx, "tag_origin");
    mdl_fx thread util::delayed_delete(2);
    level thread function_77fb3840(var_b3fb5814, 2);
    var_b3fb5814 playsoundontag(#"hash_75073e92b79a93a5", "gas_top_jnt");
    var_13c74181 = var_72aa02d6.var_13c74181;
    if (!var_949add22 && isdefined(var_13c74181)) {
        foreach (var_83ad943a in var_13c74181) {
            if (isdefined(var_83ad943a)) {
                var_83ad943a linkto(var_57e77903);
            }
        }
    }
    var_57e77903 rotateyaw(90, 1, 0.25);
    var_57e77903 waittilltimeout(1, #"rotatedone");
    var_57e77903 rotateyaw(90 * -1, 3, 0.5);
    n_move_dist = 16;
    if (!var_949add22) {
        n_move_dist *= -1;
    }
    var_57e77903 movez(n_move_dist, 3, 0.5);
    var_57e77903 waittilltimeout(3, #"movedone");
    if (!var_949add22) {
        var_57e77903 notify(#"hash_7d00ae6aa4878e81");
        var_57e77903 notify(#"hash_47432af7f1c60dd3");
        if (isdefined(var_13c74181)) {
            foreach (var_83ad943a in var_13c74181) {
                if (isdefined(var_83ad943a)) {
                    var_83ad943a delete();
                }
            }
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0x8f7ac4fa, Offset: 0x15398
// Size: 0x94
function function_77fb3840(var_b3fb5814, n_delay = 0) {
    if (n_delay > 0) {
        wait(n_delay);
    }
    if (isdefined(var_b3fb5814)) {
        playfx(#"hash_883df82736e05db", var_b3fb5814.origin, anglestoforward(var_b3fb5814.angles), anglestoup(var_b3fb5814.angles));
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x61615c5a, Offset: 0x15438
// Size: 0x80
function function_e424e2c2(s_params) {
    var_72aa02d6 = level.var_76978879;
    e_player = s_params.activator;
    if (isdefined(var_72aa02d6) && zm_utility::is_player_valid(e_player)) {
        self triggerenable(0);
        var_72aa02d6 notify(#"hash_3203fbab739df230", e_player);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xc7836260, Offset: 0x154c0
// Size: 0x2b4
function function_57d4f7c0(e_player) {
    var_72aa02d6 = level.var_76978879;
    var_57e77903 = var_72aa02d6.var_57e77903;
    if (!(isdefined(var_72aa02d6) && isdefined(var_57e77903)) || !isalive(e_player)) {
        return;
    }
    var_72aa02d6 endon(#"hash_4a5987056ab9ca7d");
    e_player endon(#"death", #"player_downed");
    var_72aa02d6.var_f9bc175a = e_player;
    e_player callback::function_d8abfc3d(#"on_player_killed", &function_110e10e1);
    e_player callback::function_d8abfc3d(#"on_player_laststand", &function_110e10e1);
    function_e0619d7a(e_player);
    e_player clientfield::set_to_player("" + #"hash_502dbbefce1f656c", 1);
    playsoundatposition(#"hash_1105191492bc5a15", var_57e77903.origin + (0, 0, 25));
    e_player playrumbleonentity(#"damage_heavy");
    str_tag = "tag_stowed_back";
    if (!e_player haspart(str_tag)) {
        str_tag = undefined;
    }
    if (isdefined(str_tag)) {
        var_57e77903 linkto(e_player, str_tag, (8, 5, -4), (270, 0, 0));
    } else {
        var_57e77903 linkto(e_player, "tag_origin", (-12, 0, 45), (-5, 0, 0));
    }
    s_instance = level.contentmanager.activeobjective;
    e_player thread objective_retrieval::function_d52adbbc(s_instance);
    wait(1);
    level thread function_5ccdeb5c(e_player);
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x1754d8fd, Offset: 0x15780
// Size: 0x132
function function_5ccdeb5c(e_player) {
    var_72aa02d6 = level.var_76978879;
    if (!isdefined(var_72aa02d6) || !isalive(e_player)) {
        return;
    }
    var_72aa02d6 endon(#"hash_4a5987056ab9ca7d", #"hash_42c3607cc510f24d");
    e_player endon(#"death", #"player_downed");
    while (true) {
        var_1806c69c = e_player gamepadusedlast();
        if (!var_1806c69c && e_player buttonbitstate("BUTTON_BIT_ANY_DOWN") || var_1806c69c && e_player actionslottwobuttonpressed()) {
            level thread function_6fd7f323(e_player);
            break;
        }
        waitframe(1);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x930bd8c5, Offset: 0x158c0
// Size: 0x210
function function_110e10e1(*s_params) {
    self callback::function_52ac9652(#"on_player_killed", &function_110e10e1);
    self callback::function_52ac9652(#"on_player_laststand", &function_110e10e1);
    level thread function_6fd7f323(self);
    var_72aa02d6 = level.var_76978879;
    if (isarray(var_72aa02d6.var_7b89742f) && var_72aa02d6.var_7b89742f.size > 0) {
        var_a967eede = array::random(var_72aa02d6.var_7b89742f);
        arrayremovevalue(var_72aa02d6.var_7b89742f, var_a967eede);
        if (isstring(var_a967eede) || ishash(var_a967eede)) {
            a_e_players = function_a1ef346b();
            if (isarray(a_e_players)) {
                arrayremovevalue(a_e_players, self);
                foreach (e_player in a_e_players) {
                    e_player thread zm_vo::function_7622cb70(var_a967eede, 1);
                }
            }
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 3, eflags: 0x2 linked
// Checksum 0xb7c61356, Offset: 0x15ad8
// Size: 0x3c2
function function_6fd7f323(e_player, var_6661fde5 = 1, var_378e4c08 = 1) {
    var_72aa02d6 = level.var_76978879;
    var_57e77903 = var_72aa02d6.var_57e77903;
    if (!isdefined(e_player)) {
        e_player = var_72aa02d6.var_f9bc175a;
    }
    v_origin = var_57e77903.origin;
    if (isdefined(e_player)) {
        e_player callback::function_52ac9652(#"on_player_killed", &function_110e10e1);
        e_player callback::function_52ac9652(#"on_player_laststand", &function_110e10e1);
        v_origin = e_player.origin;
        e_player notify(#"hash_6d2d12b8afe43c8e");
        e_player.var_e84418c4 = undefined;
        e_player thread objective_retrieval::function_1a58f438();
        e_player clientfield::set_to_player("" + #"hash_502dbbefce1f656c", 0);
        e_player playrumbleonentity(#"zm_interact_rumble");
    }
    if (isdefined(var_72aa02d6)) {
        var_72aa02d6 notify(#"hash_4a5987056ab9ca7d");
    }
    if (!isdefined(var_57e77903)) {
        return;
    }
    v_angles = (0, 0, 0);
    if (var_6661fde5) {
        v_point = getclosestpointonnavmesh(v_origin, 120, 16);
        if (isdefined(v_point)) {
            v_ground = groundtrace(v_point + (0, 0, 50), v_point + (0, 0, -1000), 1, e_player)[#"position"];
        }
        if (!isdefined(v_ground)) {
            var_b3fb5814 = var_72aa02d6.var_b3fb5814;
            if (isdefined(var_b3fb5814)) {
                v_ground = var_b3fb5814 gettagorigin("p9_sur_console_control_01_canister_jnt");
                v_angles = var_b3fb5814 gettagangles("p9_sur_console_control_01_canister_jnt");
            }
        }
    }
    if (!isdefined(v_ground)) {
        v_ground = v_origin;
    }
    var_57e77903 unlink();
    var_57e77903.origin = v_ground;
    var_57e77903.angles = v_angles;
    playsoundatposition(#"hash_3047775b10faeffc", var_57e77903.origin + (0, 0, 25));
    if (var_378e4c08) {
        wait(1);
        s_canister = {#origin:v_ground, #angles:v_angles};
        var_3aee78d5 = content_manager::spawn_interact(s_canister, &function_32054d6, #"hash_c90fb1f338973f7", undefined, 96);
        var_3aee78d5.s_canister = s_canister;
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x235fb0f0, Offset: 0x15ea8
// Size: 0x134
function function_e0619d7a(e_player) {
    var_72aa02d6 = level.var_76978879;
    if (!isdefined(var_72aa02d6.var_7f8115b4) || !isalive(e_player)) {
        return;
    }
    e_player endon(#"death", #"player_downed");
    e_player.var_e84418c4 = 1;
    e_player namespace_1b527536::function_7281de4d(#"field_upgrade_canister_item_stacked_sr", &field_upgrade_fired, #"hash_60cb3fd3716d711e", #"hash_1a2e7166e36c7ed1", 3, 1, 0);
    e_player.var_8da24ed0 = 1;
    e_player namespace_1b527536::function_6457e4cd(#"field_upgrade_canister_item_stacked_sr", var_72aa02d6.var_7f8115b4);
    e_player clientfield::set_player_uimodel("hud_items.ammoCooldowns.fieldUpgrade", 1);
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x853550ef, Offset: 0x15fe8
// Size: 0x294
function field_upgrade_fired(*s_params) {
    var_72aa02d6 = level.var_76978879;
    if (!(isdefined(var_72aa02d6) && isdefined(var_72aa02d6.var_7f8115b4)) || var_72aa02d6 flag::get(#"hash_5497ada40bcd89dc")) {
        return;
    }
    var_72aa02d6.var_7f8115b4 = int(max(0, var_72aa02d6.var_7f8115b4 - 1));
    var_46c5b60c = self flag::get(#"hash_2319522c759e9b6a");
    if (!var_46c5b60c && zm_utility::is_player_valid(self) && !var_72aa02d6 flag::get(#"hash_5497ada40bcd89dc")) {
        var_c6be595e = getent("vol_hulk_key_jelly_float", "targetname");
        if (isdefined(var_c6be595e) && self istouching(var_c6be595e)) {
            var_46c5b60c = 1;
            level thread function_a4be54e3(var_72aa02d6, self);
        }
    }
    if (isdefined(self) && level.zm_hint_text zm_hint_text::is_open(self)) {
        level.zm_hint_text zm_hint_text::close(self);
    }
    if (isdefined(var_72aa02d6.var_57e77903)) {
        var_72aa02d6.var_57e77903 clientfield::increment("" + #"hash_25f023cad32eccf0");
    }
    self thread objective_retrieval::function_62801b2f();
    if (var_72aa02d6.var_7f8115b4 <= 0 && !var_46c5b60c) {
        var_72aa02d6 notify(#"hash_42c3607cc510f24d");
        var_72aa02d6 util::delay(2, undefined, &flag::set, #"hash_34afd8621dc9a226");
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x9641af7a, Offset: 0x16288
// Size: 0xb4
function function_32054d6(s_params) {
    e_player = s_params.activator;
    s_canister = self.s_canister;
    if (zm_utility::is_player_valid(e_player) && isdefined(s_canister)) {
        self triggerenable(0);
        level thread function_57d4f7c0(e_player);
        s_canister struct::delete();
        self deletedelay();
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x163d782, Offset: 0x16348
// Size: 0x200
function function_b486d614(var_76380b53) {
    v_dir = (0, 0, 1);
    arrayremovevalue(var_76380b53, undefined);
    foreach (mdl_body in array::randomize(var_76380b53)) {
        if (isdefined(mdl_body)) {
            var_bb3a76b4 = 10 + randomfloatrange(-1, 1);
            n_duration = 10 + randomfloatrange(-1, 1);
            var_f07e2569 = mdl_body;
            if (is_true(mdl_body.var_a0d60ae6)) {
                mdl_body.var_f07e2569 = util::spawn_model(#"tag_origin", mdl_body.origin);
                mdl_body linkto(mdl_body.var_f07e2569);
                var_f07e2569 = mdl_body.var_f07e2569;
            }
            var_f07e2569 bobbing(v_dir, var_bb3a76b4, n_duration);
            mdl_body playloopsound(#"hash_3db198c02ec2950c");
            v_dir *= -1;
            wait(0.5);
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xbc731396, Offset: 0x16550
// Size: 0x1b8
function function_83ca3de5(var_bb5d660) {
    v_dir = (0, 0, 1);
    arrayremovevalue(var_bb5d660, undefined);
    foreach (var_c6b3dd01 in array::randomize(var_bb5d660)) {
        if (isdefined(var_c6b3dd01)) {
            var_bb3a76b4 = 10 + randomfloatrange(-1, 1);
            n_duration = 10 + randomfloatrange(-1, 1);
            var_c6b3dd01 bobbing(v_dir, var_bb3a76b4, n_duration);
            v_dir *= -1;
            var_c6b3dd01 rotatevelocity((randomfloatrange(5, 10), randomfloatrange(5, 10), randomfloatrange(5, 10)), 100000);
            wait(0.5);
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 0, eflags: 0x2 linked
// Checksum 0x55baba9a, Offset: 0x16710
// Size: 0x16c
function function_dbf42caa() {
    level endon(#"end_game");
    self endon(#"death");
    var_72aa02d6 = level.var_76978879;
    if (isdefined(var_72aa02d6) && !var_72aa02d6 flag::get(#"hash_5497ada40bcd89dc")) {
        var_72aa02d6 endon(#"hash_5497ada40bcd89dc");
        var_c5124824 = var_72aa02d6.var_c5124824;
        while (!isdefined(var_c5124824)) {
            var_c5124824 = var_72aa02d6.var_c5124824;
            waitframe(1);
        }
        if (!isdefined(var_c5124824.var_699c6bfb)) {
            var_c5124824.var_699c6bfb = [];
        } else if (!isarray(var_c5124824.var_699c6bfb)) {
            var_c5124824.var_699c6bfb = array(var_c5124824.var_699c6bfb);
        }
        if (!isinarray(var_c5124824.var_699c6bfb, self)) {
            var_c5124824.var_699c6bfb[var_c5124824.var_699c6bfb.size] = self;
        }
        arrayremovevalue(var_c5124824.var_699c6bfb, undefined);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0x5cb8b2dc, Offset: 0x16888
// Size: 0x7cc
function function_a4be54e3(var_72aa02d6, e_player) {
    if (!isdefined(var_72aa02d6) || !isalive(e_player)) {
        return;
    }
    e_player endon(#"death");
    e_player flag::set(#"hash_2319522c759e9b6a");
    e_player val::set(#"hash_4077139eaa66e2ec", "takedamage", 0);
    e_player val::set(#"hash_4077139eaa66e2ec", "allowdeath", 0);
    e_player val::set(#"hash_4077139eaa66e2ec", "ignoreme", 1);
    level thread function_ed97869c(var_72aa02d6, e_player);
    var_72aa02d6 flag::set(#"hash_7950edacde3bca47");
    var_72aa02d6 notify(#"hash_42c3607cc510f24d");
    e_player.var_559dc0f = util::spawn_model(#"tag_origin", e_player.origin, e_player.angles);
    var_b336124c = e_player.var_559dc0f;
    e_player function_648c1f6(var_b336124c, undefined, 0, 180, 180, 180, 180, 1, 1);
    if (e_player haspart("j_spine4")) {
        e_player fx::play(#"hash_3bc1e4dc5805a966", e_player gettagorigin("j_spine4"), e_player gettagangles("j_spine4"), #"hash_5f4e40fcff6946e", 1, "j_spine4");
    }
    var_c5124824 = var_72aa02d6.var_c5124824;
    if (isdefined(var_c5124824)) {
        arrayremovevalue(var_c5124824.var_699c6bfb, e_player);
        arrayremovevalue(var_c5124824.var_699c6bfb, undefined);
        level thread function_6317c931(var_c5124824, e_player);
    }
    wait(0.5);
    level thread function_e7254ede(e_player, 0, 0.2, 1, 0);
    level thread function_176408e6(e_player, #"damage_light");
    wait(1);
    playsoundatposition(#"hash_16f56e0f7249ee31", e_player.origin);
    e_player notify(#"hash_606f3aa32427f7d1");
    e_player notify(#"hash_7843017441678f5e");
    earthquake(0.4, 3, e_player.origin, 512, e_player);
    level thread function_176408e6(e_player, #"damage_heavy");
    level thread function_a7978694(e_player, 0.1);
    e_player thread lui::screen_fade(3, 0, 0.3, (1, 1, 1));
    var_f4ba4ba2 = var_72aa02d6.contentgroups[#"float"][0];
    var_b336124c moveto(var_f4ba4ba2.origin, 0.5);
    var_b336124c playsound(#"hash_6e82f8f8c61caff3");
    var_b336124c waittill(#"movedone");
    wait(2);
    if (!var_72aa02d6 flag::get(#"hash_632525137ffeaf8f")) {
        var_72aa02d6 flag::set(#"hash_632525137ffeaf8f");
        level util::delay(2, "end_game", &namespace_7589cf5c::play_vo, #"hash_61b7ca814615ffe4");
    }
    e_player notify(#"hash_7843017441678f5e");
    while (isdefined(var_f4ba4ba2.targetname)) {
        var_f4ba4ba2 = struct::get(var_f4ba4ba2.targetname, "target");
        var_852f8a9f = 0;
        if (var_f4ba4ba2.content_key === #"hash_1c24aaef04cf716b") {
            var_852f8a9f = 2;
        }
        n_time = distance(var_f4ba4ba2.origin, var_b336124c.origin) / 20;
        var_b336124c moveto(var_f4ba4ba2.origin, n_time, 0, var_852f8a9f);
        var_b336124c waittill(#"movedone");
    }
    e_player notify(#"hash_2a8932a30514b276");
    e_player notify(#"hash_7843017441678f5e");
    e_player notify(#"hash_5f4e40fcff6946e");
    e_player unlink();
    if (isdefined(var_c5124824)) {
        if (!isdefined(var_c5124824.var_699c6bfb)) {
            var_c5124824.var_699c6bfb = [];
        } else if (!isarray(var_c5124824.var_699c6bfb)) {
            var_c5124824.var_699c6bfb = array(var_c5124824.var_699c6bfb);
        }
        if (!isinarray(var_c5124824.var_699c6bfb, e_player)) {
            var_c5124824.var_699c6bfb[var_c5124824.var_699c6bfb.size] = e_player;
        }
        arrayremovevalue(var_c5124824.var_699c6bfb, undefined);
    }
    if (isdefined(e_player.var_67aa3392) && !var_72aa02d6 flag::get(#"hash_5497ada40bcd89dc")) {
        var_72aa02d6 notify(#"hash_42c3607cc510f24d");
        level thread function_5ccdeb5c(e_player);
    }
    if (isdefined(var_b336124c)) {
        var_b336124c deletedelay();
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 5, eflags: 0x2 linked
// Checksum 0xb18e6f7b, Offset: 0x17060
// Size: 0x182
function function_e7254ede(e_player, n_start, var_efc4d374, n_time, var_2d65be8d = 1) {
    if (!isalive(e_player)) {
        return;
    }
    e_player endon(#"death", #"hash_606f3aa32427f7d1");
    n_start_time = gettime();
    while (true) {
        n_percent = (gettime() - n_start_time) / 1000 / n_time;
        if (n_percent < 0) {
            n_percent = 0;
        } else if (n_percent > 1) {
            n_percent = 1;
        }
        n_earthquake = lerpfloat(n_start, var_efc4d374, n_percent);
        if (n_earthquake > 0) {
            earthquake(n_earthquake, float(function_60d95f53()) / 1000, e_player.origin, 512, e_player);
        }
        if (n_percent >= 1 && var_2d65be8d) {
            break;
        }
        waitframe(1);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0x7d0482df, Offset: 0x171f0
// Size: 0xce
function function_a7978694(e_player, n_magnitude) {
    if (!isalive(e_player)) {
        return;
    }
    level endon(#"end_game");
    e_player endon(#"death", #"hash_2a8932a30514b276");
    while (true) {
        earthquake(n_magnitude, float(function_60d95f53()) / 1000, e_player.origin, 512, e_player);
        waitframe(1);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 3, eflags: 0x2 linked
// Checksum 0x90115312, Offset: 0x172c8
// Size: 0xae
function function_176408e6(e_player, str_rumble, var_da4d7523 = 0.1) {
    if (!isalive(e_player)) {
        return;
    }
    level endon(#"end_game");
    e_player endon(#"death", #"hash_7843017441678f5e");
    while (true) {
        e_player function_bc82f900(str_rumble);
        wait(var_da4d7523);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0xb90de4e, Offset: 0x17380
// Size: 0x106
function function_6317c931(var_c5124824, e_player) {
    if (!isdefined(var_c5124824) || !isalive(e_player)) {
        return;
    }
    e_player endon(#"death", #"hash_5f4e40fcff6946e");
    while (isdefined(var_c5124824)) {
        var_3aee78d5 = e_player.var_19caeeea;
        if (isdefined(var_3aee78d5) && var_3aee78d5.itemstruct === var_c5124824 && var_3aee78d5 istriggerenabled() && e_player usebuttonpressed()) {
            var_3aee78d5 callback::callback(#"on_trigger", {#activator:e_player});
        }
        waitframe(1);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0x4aecfc9c, Offset: 0x17490
// Size: 0x23c
function function_ed97869c(var_72aa02d6, e_player) {
    if (isdefined(e_player)) {
        e_player waittill(#"death", #"hash_5f4e40fcff6946e");
        if (isdefined(e_player)) {
            e_player notify(#"hash_5f4e40fcff6946e");
            e_player val::reset_all(#"hash_4077139eaa66e2ec");
            e_player flag::clear(#"hash_2319522c759e9b6a");
            if (isdefined(e_player.var_559dc0f)) {
                e_player.var_559dc0f deletedelay();
            }
            if (!var_72aa02d6 flag::get(#"hash_5497ada40bcd89dc") && isarray(var_72aa02d6.var_410f8136) && var_72aa02d6.var_410f8136.size > 0) {
                var_8a36ddc4 = array::random(var_72aa02d6.var_410f8136);
                arrayremovevalue(var_72aa02d6.var_410f8136, var_8a36ddc4);
                if (isstring(var_8a36ddc4) || ishash(var_8a36ddc4)) {
                    level util::delay(1, "end_game", &namespace_7589cf5c::play_vo, var_8a36ddc4);
                }
            }
        }
    }
    if (isdefined(var_72aa02d6) && var_72aa02d6.var_7f8115b4 <= 0 && !var_72aa02d6 flag::get(#"hash_5497ada40bcd89dc")) {
        var_72aa02d6 flag::set(#"hash_34afd8621dc9a226");
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0xfc80acca, Offset: 0x176d8
// Size: 0x1bc
function function_6f582582(var_72aa02d6, var_57e77903) {
    if (!isdefined(var_57e77903)) {
        return;
    }
    var_57e77903 endon(#"death");
    function_6fd7f323(var_72aa02d6.var_f9bc175a, 0, 0);
    waitframe(1);
    var_57e77903 stoploopsound();
    var_20aa2309 = var_72aa02d6.contentgroups[#"hash_a3b5fcd847e760c"][0];
    var_7482f041 = var_20aa2309.origin;
    n_time = distance(var_57e77903.origin, var_7482f041) / 20;
    var_57e77903 rotatevelocity((randomfloatrange(5, 10), randomfloatrange(5, 10), randomfloatrange(5, 10)), 100000);
    if (n_time > 0) {
        var_57e77903 moveto(var_7482f041, n_time);
        var_57e77903 waittilltimeout(n_time, #"movedone");
    }
    var_57e77903.origin = var_7482f041;
    wait(2);
    var_57e77903 bobbing((0, 0, 1), 10, 10);
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x52bc754, Offset: 0x178a0
// Size: 0xa4
function function_155d8fca(s_params) {
    var_870db21a = self.var_870db21a;
    e_player = s_params.activator;
    if (isdefined(var_870db21a) && zm_utility::is_player_valid(e_player)) {
        self triggerenable(0);
        var_870db21a notify(#"hash_3ed8ef43fd022ab5", {#e_player:e_player});
        self deletedelay();
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 3, eflags: 0x2 linked
// Checksum 0xdd361c1f, Offset: 0x17950
// Size: 0x42c
function function_ac90ef3b(s_instance, var_870db21a, var_26830295) {
    s_instance endon(#"hash_67b34d86559a5e01", #"hash_7d9d7effbda78197");
    var_870db21a endon(#"hash_7d9d7effbda78197");
    var_870db21a scene::play(#"p9_fxanim_sv_console_launch_bundle", "Shot 1");
    var_446227c5 = content_manager::spawn_interact(var_870db21a, &function_155d8fca, #"hash_7a3b95479da708c0");
    var_870db21a.var_446227c5 = var_446227c5;
    var_446227c5.var_870db21a = var_870db21a;
    s_waitresult = var_870db21a waittill(#"hash_3ed8ef43fd022ab5");
    var_2abe2638 = 0;
    b_failed = 0;
    if (var_26830295 == s_instance.var_26830295) {
        s_instance.var_26830295++;
        if (s_instance.var_26830295 >= 3) {
            var_2abe2638 = 1;
            s_instance notify(#"hash_2dcd9b6c51ad575b");
        } else if (!s_instance flag::get(#"hash_3948726af18b5993")) {
            s_instance flag::set(#"hash_3948726af18b5993");
            level thread function_4ba8981f(s_instance);
        }
    } else {
        b_failed = 1;
        s_instance notify(#"hash_2dcd9b6c51ad575b");
        var_5fa08c4c = arraycopy(isdefined(s_instance.contentgroups[#"launch_time"]) ? s_instance.contentgroups[#"launch_time"] : []);
        arrayremovevalue(var_5fa08c4c, var_870db21a);
        foreach (var_df017ae3 in var_5fa08c4c) {
            var_df017ae3 notify(#"hash_7d9d7effbda78197");
            var_441a894b = var_df017ae3.var_446227c5;
            if (isdefined(var_441a894b)) {
                var_441a894b triggerenable(0);
                var_441a894b deletedelay();
            }
        }
    }
    e_player = s_waitresult.e_player;
    if (isalive(e_player)) {
        e_player function_bc82f900(#"zm_interact_rumble");
    }
    var_e686af5f = var_870db21a.var_e686af5f;
    if (isdefined(var_e686af5f)) {
        var_e686af5f showpart("tag_panel_key");
    }
    var_870db21a scene::play(#"p9_fxanim_sv_console_launch_bundle", "Shot 2");
    if (var_2abe2638) {
        s_instance flag::set(#"hash_773bece3d13b68c6");
        return;
    }
    if (b_failed) {
        s_instance flag::set(#"hash_7d9d7effbda78197");
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x268abbff, Offset: 0x17d88
// Size: 0x7c
function function_4ba8981f(s_instance) {
    if (!isdefined(s_instance)) {
        return;
    }
    s_instance endon(#"hash_773bece3d13b68c6", #"hash_2dcd9b6c51ad575b");
    level thread function_31aa1903(s_instance);
    wait(45);
    s_instance flag::set(#"hash_67b34d86559a5e01");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x84b9523, Offset: 0x17e10
// Size: 0x460
function function_31aa1903(s_instance) {
    if (!isdefined(s_instance)) {
        return;
    }
    s_instance endon(#"hash_773bece3d13b68c6", #"hash_2dcd9b6c51ad575b");
    var_8fc81e63 = gettime();
    level zm_vo::function_d6f8bbd9(#"hash_2a80b288016e01c5", undefined, getplayers());
    level zm_vo::function_d6f8bbd9(#"hash_2a80b188016e0012", undefined, getplayers());
    a_s_lines = [{#var_7ddb4474:30, #var_33e81c58:#"hash_609b191b5e728016"}, {#var_7ddb4474:10, #var_33e81c58:#"hash_c15ace851c6b900"}, {#var_7ddb4474:9, #var_33e81c58:#"hash_c15ade851c6bab3"}, {#var_7ddb4474:8, #var_33e81c58:#"hash_c15aee851c6bc66"}, {#var_7ddb4474:7, #var_33e81c58:#"hash_c15afe851c6be19"}, {#var_7ddb4474:6, #var_33e81c58:#"hash_c15b0e851c6bfcc"}, {#var_7ddb4474:5, #var_33e81c58:#"hash_c15b1e851c6c17f"}, {#var_7ddb4474:4, #var_33e81c58:#"hash_c15b2e851c6c332"}, {#var_7ddb4474:3, #var_33e81c58:#"hash_c15b3e851c6c4e5"}, {#var_7ddb4474:2, #var_33e81c58:#"hash_c15b4e851c6c698"}, {#var_7ddb4474:1, #var_33e81c58:#"hash_c15b5e851c6c84b"}];
    while (a_s_lines.size > 0) {
        wait(0.1);
        n_time_left = 45 - (gettime() - var_8fc81e63) / 1000;
        var_69c09621 = undefined;
        foreach (s_option in a_s_lines) {
            if (n_time_left <= s_option.var_7ddb4474) {
                var_69c09621 = s_option;
                break;
            }
        }
        if (isdefined(var_69c09621)) {
            arrayremovevalue(a_s_lines, var_69c09621);
            var_33e81c58 = var_69c09621.var_33e81c58;
            if (isdefined(var_33e81c58)) {
                level thread zm_vo::function_d6f8bbd9(var_33e81c58, undefined, getplayers());
            }
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0x933c9d3b, Offset: 0x18278
// Size: 0x286
function function_eb16f54b(s_instance, s_exit) {
    level endon(#"end_game");
    s_instance endon(#"failed", #"hash_75f447a46c8cc63b");
    t_exit = content_manager::spawn_interact(s_exit, &function_a2c5fa4f, #"hash_712ce0c34fa6d7a");
    t_exit.s_instance = s_instance;
    var_3e6f0608 = getent(s_exit.targetname, "target");
    while (isdefined(var_3e6f0608)) {
        a_e_players = function_a1ef346b();
        var_d67ee054 = a_e_players.size > 0;
        foreach (e_player in a_e_players) {
            if (e_player isinvehicle() || !e_player istouching(var_3e6f0608)) {
                var_d67ee054 = 0;
                t_exit setinvisibletoplayer(e_player);
                continue;
            }
            t_exit setvisibletoplayer(e_player);
        }
        if (var_d67ee054) {
            s_instance flag::set(#"hash_3db12b263b5c8868");
            t_exit sethintstring(#"hash_c8e50f2d3ebe2f3");
        } else {
            s_instance flag::clear(#"hash_3db12b263b5c8868");
            t_exit sethintstring(#"hash_712ce0c34fa6d7a");
        }
        waitframe(1);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xe60c92ee, Offset: 0x18508
// Size: 0x94
function function_a2c5fa4f(*s_params) {
    s_instance = self.s_instance;
    if (isdefined(s_instance) && s_instance flag::get(#"hash_3db12b263b5c8868")) {
        self triggerenable(0);
        s_instance flag::set(#"hash_75f447a46c8cc63b");
        self deletedelay();
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x8602aca9, Offset: 0x185a8
// Size: 0xfc
function function_cf30d3d1(s_exit) {
    level endon(#"end_game");
    s_move = s_exit.contentgroups[#"move"][0];
    mdl_blocker = s_move.mdl_blocker;
    if (isdefined(mdl_blocker)) {
        mdl_blocker endon(#"death");
        mdl_blocker movez(128 * -1, 3);
        mdl_blocker playsound(#"hash_4dabada2d86af75f");
        mdl_blocker waittilltimeout(3, #"movedone");
        mdl_blocker delete();
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x0
// Checksum 0x26898150, Offset: 0x186b0
// Size: 0xb4
function function_fd8dcbe8(*s_params) {
    s_instance = self.s_instance;
    var_6bc2752 = s_instance.contentgroups[#"debug_start"][0];
    if (isdefined(var_6bc2752.var_1490cdb5)) {
        var_6bc2752.var_1490cdb5 delete();
    }
    if (isdefined(var_6bc2752.mdl_fx)) {
        var_6bc2752.mdl_fx delete();
    }
    level thread function_861f39db(s_instance, 1);
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0x42c36b1d, Offset: 0x18770
// Size: 0x97c
function function_861f39db(s_instance, b_debug = 0) {
    var_b4488d57 = s_instance.contentgroups[#"beast"][0];
    level.var_b4488d57 = var_b4488d57;
    var_c9def52d = [];
    foreach (var_3bd552f in isdefined(var_b4488d57.contentgroups[#"stop"]) ? var_b4488d57.contentgroups[#"stop"] : []) {
        var_c9def52d[var_3bd552f.script_int] = var_3bd552f;
    }
    var_b4488d57.var_c9def52d = var_c9def52d;
    var_b4488d57.var_fffad1a7 = arraycopy(var_b4488d57.var_c9def52d);
    var_b4488d57.var_efe19fe2 = var_c9def52d[2];
    scene::add_scene_func(#"hash_11079f81e510433c", &function_6188d81a, "init");
    scene::add_scene_func(#"hash_71e1103e4987c7f1", &function_6188d81a, "init");
    var_841919e8 = [];
    foreach (var_6b610739 in isdefined(var_b4488d57.contentgroups[#"storm"]) ? var_b4488d57.contentgroups[#"storm"] : []) {
        foreach (var_929141c6 in strtok(var_6b610739.var_7018ab3a, ", ")) {
            if (!isdefined(var_6b610739.var_e3106c76)) {
                var_6b610739.var_e3106c76 = [];
            } else if (!isarray(var_6b610739.var_e3106c76)) {
                var_6b610739.var_e3106c76 = array(var_6b610739.var_e3106c76);
            }
            var_6b610739.var_e3106c76[var_6b610739.var_e3106c76.size] = var_b4488d57.var_c9def52d[int(var_929141c6)];
        }
        if (isstring(var_6b610739.var_bd67006) || ishash(var_6b610739.var_bd67006)) {
            level thread scene::init(var_6b610739.var_bd67006);
        }
        if (isstring(var_6b610739.var_6923530f) || ishash(var_6b610739.var_6923530f)) {
            level thread scene::init(var_6b610739.var_6923530f);
        }
        if (!isdefined(var_841919e8)) {
            var_841919e8 = [];
        } else if (!isarray(var_841919e8)) {
            var_841919e8 = array(var_841919e8);
        }
        var_841919e8[var_841919e8.size] = var_6b610739;
    }
    var_b4488d57.var_841919e8 = var_841919e8;
    var_b4488d57.var_a88b8e1e = arraycopy(var_b4488d57.var_841919e8);
    var_b4488d57.var_c2b5aaa4 = [];
    var_b4488d57.var_912276d3 = 0;
    var_b4488d57.var_8868f20e = 0;
    var_b4488d57.var_bed57909 = 0;
    callback::on_connect(&function_287438e9);
    foreach (e_player in getplayers()) {
        e_player thread function_287438e9();
    }
    var_b4488d57.var_30c6f90 = 0;
    var_b4488d57.var_f017c533 = 0;
    var_b4488d57.var_d43e9ae3 = function_2c6123f0(85500, 90500);
    var_b4488d57.var_6c3592c9 = var_b4488d57.var_d43e9ae3;
    var_b4488d57.var_720d5b8e = function_2c6123f0(170000, 175000);
    var_b4488d57.var_1046ec68 = [];
    for (i = 1; i <= 3; i++) {
        var_b4488d57.var_1046ec68[i] = var_b4488d57.var_720d5b8e;
    }
    var_b4488d57.a_mdl_orbs = [];
    foreach (var_88fdaa5c in isdefined(var_b4488d57.contentgroups[#"shatter"]) ? var_b4488d57.contentgroups[#"shatter"] : []) {
        var_a2fbae60 = util::spawn_model(#"hash_7f6a9e056951dafb", var_88fdaa5c.origin, var_88fdaa5c.angles);
        var_a2fbae60.script_int = var_88fdaa5c.script_int;
        if (!isdefined(var_b4488d57.var_74919f45)) {
            var_b4488d57.var_74919f45 = [];
        } else if (!isarray(var_b4488d57.var_74919f45)) {
            var_b4488d57.var_74919f45 = array(var_b4488d57.var_74919f45);
        }
        var_b4488d57.var_74919f45[var_b4488d57.var_74919f45.size] = var_a2fbae60;
    }
    var_b4488d57.var_6e0d70d5 = arraycopy(var_b4488d57.var_74919f45);
    foreach (var_248da862 in getentarray("mdl_sr_ee_hulk_shatter_block", "targetname")) {
        var_248da862.origin += (0, 0, 2560);
        var_248da862 disconnectpaths();
        var_b4488d57.var_dff21694[var_248da862.script_int] = var_248da862;
    }
    level thread function_8dba2029(var_b4488d57);
    s_wall = var_b4488d57.contentgroups[#"wall"][0];
    mdl_wall = util::spawn_model(#"hash_10f3318f64304974", s_wall.origin, s_wall.angles);
    mdl_wall clientfield::set("fogofwarflag", 1);
    level thread function_86fbcb7e(s_instance, b_debug);
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0xb9cba109, Offset: 0x190f8
// Size: 0x8bc
function function_86fbcb7e(s_instance, b_debug = 0) {
    level endon(#"end_game");
    s_instance endon(#"failed");
    if (b_debug) {
        level thread zm_utility::function_9ad5aeb1(0, 0, 1, 0);
        lui::screen_fade_out(2, "white");
        wait(1);
        level thread lui::screen_fade_in(2, "white");
        wait(2);
        b_triggered = 0;
        foreach (e_player in function_a1ef346b()) {
            if (!b_triggered && zm_utility::is_player_valid(e_player)) {
                b_triggered = 1;
                s_instance.var_4272a188 callback::callback(#"on_trigger", {#activator:e_player});
            }
        }
        s_instance flag::set(#"hash_75f447a46c8cc63b");
    }
    var_b4488d57 = s_instance.contentgroups[#"beast"][0];
    exploder::exploder("fxexp_mq_boss_spawn");
    level clientfield::set("" + #"hash_6eb00b16d3628642", 1);
    s_instance flag::wait_till(#"hash_75f447a46c8cc63b");
    if (isdefined(s_instance.var_4cd68fa1)) {
        s_instance.var_4cd68fa1 delete();
    }
    namespace_1fd59e39::function_1376ec37(undefined, undefined, "vol_sr_ee_hulk_restrict_beast");
    namespace_553954de::function_6e9bb6b5(undefined, undefined, "vol_sr_ee_hulk_restrict_beast");
    level clientfield::set("" + #"hash_6d4501b4a27d3b0f", 4);
    level namespace_9b972177::function_9f5c2ff2("giants");
    level thread function_81881f85(var_b4488d57);
    wait(3);
    level namespace_7589cf5c::play_vo(#"hash_797faaa9d41cfc07");
    wait(1);
    level clientfield::set("" + #"hash_6eb00b16d3628642", 0);
    level clientfield::set("" + #"hash_6d4501b4a27d3b0f", 5);
    wait(1);
    level thread function_91f25de8(var_b4488d57, 0, 0.2, 3);
    level thread function_40793058(var_b4488d57);
    s_start = var_b4488d57.contentgroups[#"start"][0];
    playsoundatposition(#"hash_70085994c9a2c3d6", s_start.origin);
    wait(4);
    exploder::stop_exploder("fxexp_mq_boss_spawn");
    exploder::exploder("fxexp_mq_boss_spawn_end");
    wait(1);
    lui::screen_fade(0, 1, 1, (1, 1, 1));
    waitframe(1);
    level clientfield::set("" + #"hash_6d4501b4a27d3b0f", 6);
    level thread lui::screen_fade(2, 0, 0.9, (1, 1, 1));
    var_b4488d57 notify(#"hash_799045ab34e28e5f");
    earthquake(0.4, 3, var_b4488d57.origin, 10000);
    level thread function_40793058(var_b4488d57, 1);
    playsoundatposition(#"hash_2c473ffbe5ef14b9", s_start.origin);
    var_b4488d57 flag::set(#"hash_272ed685e8a34d8d");
    foreach (e_player in getplayers()) {
        level.var_3c3b40c7 sr_orda_health_bar::function_dff51e54(e_player, 1);
        level.var_3c3b40c7 sr_orda_health_bar::set_health(e_player, 1);
        if (!level.var_3c3b40c7 sr_orda_health_bar::is_open(e_player)) {
            level.var_3c3b40c7 sr_orda_health_bar::open(e_player);
        }
    }
    var_5beedbc3 = function_e408a8af(var_b4488d57);
    var_5beedbc3 scene::play(#"aib_t9_zm_tmpst_boss_fight", "intro", var_5beedbc3);
    var_5beedbc3 thread scene::play(#"aib_t9_zm_tmpst_boss_fight", "idle", var_5beedbc3);
    wait(1);
    var_b4488d57 notify(#"hash_51c6afa4c4a038b7");
    wait(1);
    level namespace_7589cf5c::play_vo(#"hash_2745459af5cf3fec");
    wait(2);
    level thread function_d4c750c2(var_b4488d57);
    wait(5);
    zm_sq::function_266d66eb(#"hash_b418b036831ea2a", undefined, 0, #"hash_d62f5e8f2b581a4", #"beast");
    if (b_debug) {
        level thread function_a735633b(s_instance, var_b4488d57);
    }
    var_b4488d57 flag::clear(#"hash_272ed685e8a34d8d");
    var_6b610739 = array::random(var_b4488d57.var_a88b8e1e);
    level thread function_c5f4c7d8(var_b4488d57, var_5beedbc3, var_6b610739);
    var_b4488d57 flag::set(#"hash_945cb91246f709e");
    level thread namespace_7589cf5c::play_vo(#"hash_37662c9a5c4fa115");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x68005a02, Offset: 0x199c0
// Size: 0x128
function function_e408a8af(var_b4488d57) {
    s_start = var_b4488d57.contentgroups[#"start"][0];
    level clientfield::set("" + #"hash_1ff35e37755facac", 4);
    var_b4488d57.var_5beedbc3 = util::spawn_model(#"hash_46cb6387fd2006a7", s_start.origin, s_start.angles);
    var_5beedbc3 = var_b4488d57.var_5beedbc3;
    var_5beedbc3 playloopsound(#"hash_57f174720fbbbeb3");
    var_5beedbc3 clientfield::set("" + #"hash_723ddf6790b39408", 1);
    level thread function_9b762c44(var_b4488d57, var_5beedbc3);
    return var_5beedbc3;
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0xabf21d58, Offset: 0x19af0
// Size: 0x13c
function function_a735633b(s_instance, var_b4488d57) {
    level endon(#"end_game");
    var_b4488d57 endon(#"defeated");
    n_total_time = int(min(600, 900));
    var_4985275 = 1;
    /#
        if (getdvarint(#"hash_e06ccfbf96bd706", 0) > 0) {
            n_total_time = getdvarint(#"hash_e06ccfbf96bd706", 0);
            var_4985275 = 0;
        }
    #/
    if (var_4985275) {
        level thread function_c5021764(var_b4488d57, n_total_time);
    }
    objective_manager::start_timer(n_total_time);
    level thread function_b5d72ce6(s_instance, var_b4488d57);
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0x4fe949fc, Offset: 0x19c38
// Size: 0x610
function function_c5021764(var_b4488d57, n_total_time) {
    level endon(#"end_game");
    var_b4488d57 endon(#"defeated");
    level thread zm_vo::function_d6f8bbd9(#"hash_2927a8560eece519", undefined, getplayers());
    a_s_lines = [{#var_7ddb4474:300, #var_33e81c58:#"hash_554487f97b3b2e5d", #var_587381ce:#"hash_73d406cdb079e626"}, {#var_7ddb4474:240, #var_33e81c58:#"hash_5c43ce1da5774d76"}, {#var_7ddb4474:180, #var_33e81c58:#"hash_3ddd66fa47ae9d9b", #var_587381ce:#"hash_797df0dbff72babc"}, {#var_7ddb4474:120, #var_33e81c58:#"hash_48e838216e6ae9bc"}, {#var_7ddb4474:60, #var_33e81c58:#"hash_6805f41751646fb1", #var_587381ce:#"hash_46a88c20ad7807f5"}, {#var_7ddb4474:30, #var_33e81c58:#"hash_67028e2fe1c8128c"}, {#var_7ddb4474:10, #var_33e81c58:#"hash_c15ace851c6b900"}, {#var_7ddb4474:9, #var_33e81c58:#"hash_c15ade851c6bab3"}, {#var_7ddb4474:8, #var_33e81c58:#"hash_c15aee851c6bc66"}, {#var_7ddb4474:7, #var_33e81c58:#"hash_c15afe851c6be19"}, {#var_7ddb4474:6, #var_33e81c58:#"hash_c15b0e851c6bfcc"}, {#var_7ddb4474:5, #var_33e81c58:#"hash_c15b1e851c6c17f"}, {#var_7ddb4474:4, #var_33e81c58:#"hash_c15b2e851c6c332"}, {#var_7ddb4474:3, #var_33e81c58:#"hash_c15b3e851c6c4e5"}, {#var_7ddb4474:2, #var_33e81c58:#"hash_c15b4e851c6c698"}, {#var_7ddb4474:1, #var_33e81c58:#"hash_c15b5e851c6c84b"}];
    var_8fc81e63 = gettime();
    while (a_s_lines.size > 0) {
        wait(0.1);
        n_time_left = n_total_time - (gettime() - var_8fc81e63) / 1000;
        var_69c09621 = undefined;
        foreach (s_option in a_s_lines) {
            if (n_time_left <= s_option.var_7ddb4474) {
                var_69c09621 = s_option;
                break;
            }
        }
        if (isdefined(var_69c09621)) {
            arrayremovevalue(a_s_lines, var_69c09621);
            var_33e81c58 = var_69c09621.var_33e81c58;
            var_587381ce = var_69c09621.var_587381ce;
            if (isdefined(var_33e81c58)) {
                if (!isdefined(var_587381ce)) {
                    level thread zm_vo::function_d6f8bbd9(var_33e81c58, undefined, getplayers());
                    continue;
                }
                level zm_vo::function_d6f8bbd9(var_33e81c58, undefined, getplayers());
                level namespace_7589cf5c::play_vo(var_587381ce);
            }
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0xc7f5a655, Offset: 0x1a250
// Size: 0x2b0
function function_b5d72ce6(s_instance, var_b4488d57) {
    if (var_b4488d57 flag::get(#"defeated")) {
        return;
    }
    s_instance flag::set(#"failed");
    var_b4488d57 flag::set(#"failed");
    level thread zm_vo::function_d6f8bbd9(#"hash_4c64acd3579e7b1d", undefined, getplayers());
    level thread function_91f25de8(var_b4488d57, 0, 0.3, 2);
    level thread function_40793058(var_b4488d57, 0);
    wait(2);
    playsoundatposition(#"hash_55e8fe58764b24", var_b4488d57.origin);
    namespace_9b972177::function_9f5c2ff2("giants_fail");
    var_b4488d57 notify(#"hash_799045ab34e28e5f");
    var_b4488d57 notify(#"hash_51c6afa4c4a038b7");
    earthquake(0.5, 5, var_b4488d57.origin, 10000);
    level thread function_40793058(var_b4488d57, 1);
    level thread lui::screen_fade_out(1, (1, 1, 1));
    wait(1);
    var_a6d869eb = s_instance.contentgroups[#"spawns"][0];
    var_a6d869eb notify(#"hash_48ede6eb3d3e0d03");
    function_43d248c7(var_b4488d57);
    if (isdefined(var_b4488d57.var_5beedbc3)) {
        var_b4488d57.var_5beedbc3 delete();
    }
    wait(3);
    level.var_2e73af9b = #"hash_35ccde959df69f98";
    level notify(#"end_game", {#reason:#"hash_4e5756202af6ae94"});
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x4c2c27b5, Offset: 0x1a508
// Size: 0x29a
function function_81881f85(var_b4488d57) {
    level endon(#"end_game");
    var_b4488d57 endon(#"hash_5149b8c9a169dd55");
    mdl_wall = getent("mdl_sr_ee_hulk_wall_bound", "targetname");
    if (isdefined(mdl_wall)) {
        mdl_wall.origin += (0, 0, 2048);
        mdl_wall solid();
    }
    s_wall = var_b4488d57.contentgroups[#"wall"][0];
    var_a0e3d244 = getent(s_wall.targetname, "target");
    var_b1239a1f = [];
    while (true) {
        foreach (e_player in getplayers()) {
            if (isdefined(e_player.var_749332e7)) {
                if (isalive(e_player) && !e_player istouching(var_a0e3d244)) {
                    if (!isinarray(var_b1239a1f, e_player)) {
                        e_player.var_749332e7++;
                        if (!isdefined(var_b1239a1f)) {
                            var_b1239a1f = [];
                        } else if (!isarray(var_b1239a1f)) {
                            var_b1239a1f = array(var_b1239a1f);
                        }
                        if (!isinarray(var_b1239a1f, e_player)) {
                            var_b1239a1f[var_b1239a1f.size] = e_player;
                        }
                    }
                    continue;
                }
                if (isinarray(var_b1239a1f, e_player)) {
                    e_player.var_749332e7--;
                    arrayremovevalue(var_b1239a1f, e_player);
                }
            }
        }
        waitframe(1);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 4, eflags: 0x2 linked
// Checksum 0x580bc521, Offset: 0x1a7b0
// Size: 0x16c
function function_91f25de8(var_b4488d57, var_308ec6c6, var_f7ca5cc0, n_duration) {
    var_b4488d57 notify(#"hash_799045ab34e28e5f");
    var_b4488d57 endon(#"failed", #"defeated", #"hash_799045ab34e28e5f");
    var_8fc81e63 = gettime();
    while (true) {
        n_percent = (gettime() - var_8fc81e63) / 1000 / n_duration;
        if (n_percent < 0) {
            n_percent = 0;
        } else if (n_percent > 1) {
            n_percent = 1;
        }
        n_scale = lerpfloat(var_308ec6c6, var_f7ca5cc0, n_percent);
        if (n_scale > 0) {
            earthquake(n_scale, float(function_60d95f53()) / 1000, var_b4488d57.origin, 10000);
        } else if (n_percent >= 1) {
            break;
        }
        waitframe(1);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0x9000a7d6, Offset: 0x1a928
// Size: 0x144
function function_40793058(var_b4488d57, var_881d6e57 = 0) {
    var_b4488d57 notify(#"hash_51c6afa4c4a038b7");
    var_b4488d57 endon(#"failed", #"defeated", #"hash_51c6afa4c4a038b7");
    str_rumble = #"zm_interact_rumble";
    if (var_881d6e57) {
        str_rumble = #"damage_heavy";
    }
    while (true) {
        foreach (e_player in function_a1ef346b()) {
            e_player function_bc82f900(str_rumble);
        }
        wait(0.1);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xde5acf09, Offset: 0x1aa78
// Size: 0x158
function function_d4c750c2(var_b4488d57) {
    level endon(#"end_game");
    var_b4488d57 endon(#"failed", #"defeated");
    foreach (e_player in function_a1ef346b()) {
        e_player clientfield::set_to_player("" + #"hash_583ce51cd4d9a904", 2);
    }
    earthquake(0.4, 5, var_b4488d57.origin, 10000);
    level thread function_40793058(var_b4488d57);
    wait(3.5);
    var_b4488d57 notify(#"hash_51c6afa4c4a038b7");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0x55478ea2, Offset: 0x1abd8
// Size: 0x17a
function function_2c6123f0(n_health_min, n_health_max) {
    var_6499d1fb = zm_utility::function_e3025ca5();
    if (var_6499d1fb < 5) {
        var_6499d1fb = 5;
    } else if (var_6499d1fb > 7) {
        var_6499d1fb = 7;
    }
    n_percent = 1 - (7 - var_6499d1fb) / 2;
    if (n_percent < 0) {
        n_percent = 0;
    } else if (n_percent > 1) {
        n_percent = 1;
    }
    n_players = getplayers().size;
    if (n_players < 1) {
        n_players = 1;
    } else if (n_players > 4) {
        n_players = 4;
    }
    var_1bb081d7 = 1 + (n_players - 1) * 0.5;
    if (n_health_min < n_health_max) {
        var_c835c552 = int(lerpfloat(n_health_min, n_health_max, n_percent) * var_1bb081d7);
    } else {
        var_c835c552 = int(n_health_min * var_1bb081d7);
    }
    return var_c835c552;
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 3, eflags: 0x2 linked
// Checksum 0xc0d59ecf, Offset: 0x1ad60
// Size: 0x49c
function function_51bcd8c6(var_b4488d57, var_5beedbc3, var_51a975ee = #"") {
    if (var_b4488d57 flag::get(#"stunned")) {
        return;
    }
    level endon(#"end_game");
    var_b4488d57 endon(#"failed", #"defeated", #"stunned");
    var_5beedbc3 endon(#"death");
    if (var_51a975ee == #"teleport" || var_51a975ee == #"bolt") {
        function_aa6c9b40(var_b4488d57);
        function_1aac2ef4(var_b4488d57);
    }
    /#
        var_9d7dfc4c = var_b4488d57.var_9d7dfc4c;
        if (isdefined(var_9d7dfc4c)) {
            switch (var_9d7dfc4c) {
            case #"hash_17949ccf213e0dfa":
                var_3bd552f = function_3822cb35(var_b4488d57);
                function_5bb78300(var_b4488d57, var_5beedbc3, var_3bd552f);
                level thread function_51bcd8c6(var_b4488d57, var_5beedbc3, #"teleport");
                return;
            case #"hash_4eac357749804545":
                level thread function_4c15e02a(var_b4488d57, var_5beedbc3);
                var_b4488d57 flag::set(#"stunned");
                return;
            case #"hash_fd941f96de7919":
                level thread function_b9ff5822(var_b4488d57, var_5beedbc3);
                return;
            }
        }
    #/
    var_6b610739 = function_725374c3(var_b4488d57, var_51a975ee);
    if (isstruct(var_6b610739)) {
        if (var_51a975ee == #"storm") {
            var_b4488d57.var_bed57909++;
        }
        level thread function_c5f4c7d8(var_b4488d57, var_5beedbc3, var_6b610739);
        return;
    }
    var_b4488d57.var_bed57909 = 0;
    if (var_51a975ee == #"stun" || var_51a975ee == #"storm") {
        var_3bd552f = function_3822cb35(var_b4488d57);
        function_5bb78300(var_b4488d57, var_5beedbc3, var_3bd552f);
    }
    if (var_51a975ee != #"teleport" && var_51a975ee != #"bolt") {
        function_aa6c9b40(var_b4488d57);
        function_1aac2ef4(var_b4488d57);
    }
    var_dbbe30cd = function_d7753961(var_b4488d57, var_5beedbc3);
    if (isstruct(var_dbbe30cd)) {
        if (var_51a975ee == #"bolt") {
            var_b4488d57.var_f017c533++;
        }
        level thread function_e0e5c765(var_b4488d57, var_5beedbc3, var_dbbe30cd);
        return;
    }
    var_b4488d57.var_f017c533 = 0;
    /#
        if (var_b4488d57.var_9d7dfc4c === #"hash_6132b6246336c917") {
            level thread function_51bcd8c6(var_b4488d57, var_5beedbc3);
            return;
        }
    #/
    var_3bd552f = function_3822cb35(var_b4488d57);
    function_5bb78300(var_b4488d57, var_5beedbc3, var_3bd552f);
    level thread function_51bcd8c6(var_b4488d57, var_5beedbc3, #"teleport");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xb437b746, Offset: 0x1b208
// Size: 0x18
function function_ab39d475(var_b4488d57) {
    return var_b4488d57.var_1046ec68.size;
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xf6eab06c, Offset: 0x1b228
// Size: 0x180
function function_1aac2ef4(var_b4488d57) {
    level endon(#"end_game");
    var_b4488d57 endon(#"failed", #"defeated");
    var_a10cacf9 = [15, 30];
    switch (function_ab39d475(var_b4488d57)) {
    case 2:
        var_a10cacf9 = [10, 20];
        break;
    case 0:
    case 1:
        var_a10cacf9 = [4, 8];
        break;
    }
    if (var_a10cacf9[0] != var_a10cacf9[1]) {
        var_da4d7523 = randomfloatrange(var_a10cacf9[0], var_a10cacf9[1]);
    } else {
        var_da4d7523 = var_a10cacf9[0];
    }
    /#
        if (isdefined(var_b4488d57.var_9d7dfc4c)) {
            var_da4d7523 = 1;
        }
    #/
    if (var_da4d7523 > 0) {
        wait(var_da4d7523);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0xae54fc16, Offset: 0x1b3b0
// Size: 0x39e
function function_725374c3(var_b4488d57, var_51a975ee = #"") {
    /#
        if (var_b4488d57.var_9d7dfc4c === #"hash_6132b6246336c917" || var_b4488d57.var_9d7dfc4c === #"hash_239fbfa8fbf645a") {
            return 0;
        }
    #/
    var_b3f30d75 = 2;
    var_ed9c3e17 = 1;
    var_cef0f851[#"low"] = 33;
    var_cef0f851[#"med"] = 66;
    var_cef0f851[#"high"] = 100;
    switch (function_ab39d475(var_b4488d57)) {
    case 2:
        var_b3f30d75 = 3;
        var_ed9c3e17 = 2;
        var_cef0f851[#"low"] = 50;
        var_cef0f851[#"med"] = 75;
        var_cef0f851[#"high"] = 100;
        break;
    case 0:
    case 1:
        var_b3f30d75 = 4;
        var_ed9c3e17 = 3;
        var_cef0f851[#"low"] = 75;
        var_cef0f851[#"med"] = 100;
        var_cef0f851[#"high"] = 100;
        break;
    }
    /#
        if (var_b4488d57.var_9d7dfc4c === #"hash_587b8bb1b413b542") {
            var_b3f30d75 = 4;
            var_ed9c3e17 = -1;
            var_cef0f851[#"low"] = 100;
            var_cef0f851[#"med"] = 100;
            var_cef0f851[#"high"] = 100;
        }
    #/
    if (var_b4488d57.var_912276d3 >= var_b3f30d75) {
        return 0;
    }
    if (var_ed9c3e17 >= 0 && var_b4488d57.var_bed57909 >= var_ed9c3e17) {
        return 0;
    }
    n_chance = var_cef0f851[#"easy"];
    switch (var_b4488d57.var_8868f20e) {
    case 1:
        n_chance = var_cef0f851[#"med"];
        break;
    case 2:
        n_chance = var_cef0f851[#"hard"];
        break;
    }
    if (var_51a975ee == #"stun" || math::cointoss(n_chance)) {
        var_6b610739 = function_19e3aea0(var_b4488d57);
        if (isdefined(var_6b610739)) {
            var_b4488d57.var_8868f20e = 0;
            return var_6b610739;
        }
    }
    var_b4488d57.var_8868f20e++;
    return 0;
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xf1ca14b0, Offset: 0x1b758
// Size: 0xcc
function function_19e3aea0(var_b4488d57) {
    if (var_b4488d57.var_a88b8e1e.size <= 0) {
        var_b4488d57.var_a88b8e1e = arraycopy(var_b4488d57.var_841919e8);
    }
    var_841919e8 = arraycopy(var_b4488d57.var_a88b8e1e);
    var_841919e8 = array::filter(var_841919e8, 0, &function_58fffbb8);
    arrayremovevalue(var_841919e8, var_b4488d57.var_1466fe12);
    if (var_841919e8.size > 0) {
        return array::random(var_841919e8);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x53f45042, Offset: 0x1b830
// Size: 0x210
function function_3822cb35(var_b4488d57) {
    if (var_b4488d57.var_fffad1a7.size <= 0) {
        var_b4488d57.var_fffad1a7 = arraycopy(var_b4488d57.var_c9def52d);
        arrayremovevalue(var_b4488d57.var_fffad1a7, var_b4488d57.var_efe19fe2);
    }
    for (i = 0; i < 3; i++) {
        switch (i) {
        case 0:
            var_c9def52d = arraycopy(var_b4488d57.var_fffad1a7);
            break;
        case 1:
            var_c9def52d = arraycopy(var_b4488d57.var_c9def52d);
            break;
        case 2:
            var_3bd552f = array::random(var_b4488d57.var_c9def52d);
            arrayremovevalue(var_b4488d57.var_fffad1a7, var_3bd552f);
            var_b4488d57.var_efe19fe2 = var_3bd552f;
            return var_3bd552f;
        }
        var_c9def52d = array::filter(var_c9def52d, 0, &function_58fffbb8);
        arrayremovevalue(var_c9def52d, var_b4488d57.var_efe19fe2);
        var_3bd552f = array::random(var_c9def52d);
        if (isdefined(var_3bd552f)) {
            arrayremovevalue(var_b4488d57.var_fffad1a7, var_3bd552f);
            var_b4488d57.var_efe19fe2 = var_3bd552f;
            return var_3bd552f;
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0xaada9b9f, Offset: 0x1ba48
// Size: 0x4fa
function function_d7753961(var_b4488d57, var_5beedbc3) {
    /#
        if (var_b4488d57.var_9d7dfc4c === #"hash_6132b6246336c917" || var_b4488d57.var_9d7dfc4c === #"hash_587b8bb1b413b542") {
            return 0;
        }
    #/
    var_890ec4bd = 3;
    var_ed9c3e17 = 2;
    /#
        if (var_b4488d57.var_9d7dfc4c === #"hash_239fbfa8fbf645a") {
            var_890ec4bd = -1;
            var_ed9c3e17 = -1;
        }
    #/
    if (var_890ec4bd >= 0 && var_b4488d57.var_912276d3 > var_890ec4bd) {
        return 0;
    }
    if (var_ed9c3e17 >= 0 && var_b4488d57.var_f017c533 >= var_ed9c3e17) {
        return 0;
    }
    var_422ca0da = 2;
    switch (function_ab39d475(var_b4488d57)) {
    case 2:
        var_422ca0da = 2;
        break;
    case 0:
    case 1:
        var_422ca0da = 1;
        break;
    }
    /#
        if (var_b4488d57.var_9d7dfc4c === #"hash_239fbfa8fbf645a") {
            var_422ca0da = -1;
        }
    #/
    if (var_422ca0da >= 0 && var_b4488d57.var_30c6f90 < var_422ca0da && !math::cointoss(75)) {
        var_b4488d57.var_30c6f90++;
        return 0;
    }
    a_e_players = [];
    foreach (e_player in arraysortclosest(function_a1ef346b(), var_5beedbc3.origin, undefined, 512)) {
        if (var_5beedbc3 math::get_dot_forward(e_player.origin, 1) > 0.1) {
            if (!isdefined(a_e_players)) {
                a_e_players = [];
            } else if (!isarray(a_e_players)) {
                a_e_players = array(a_e_players);
            }
            a_e_players[a_e_players.size] = e_player;
        }
    }
    if (a_e_players.size <= 0) {
        return 0;
    }
    v_target = undefined;
    var_5737bcb9 = -1;
    foreach (e_player in a_e_players) {
        var_b500b370 = arraysortclosest(a_e_players, e_player.origin, undefined, 0, 512);
        arrayremovevalue(var_b500b370, e_player);
        if (var_b500b370.size > var_5737bcb9) {
            v_target = e_player.origin;
            var_5737bcb9 = var_b500b370.size;
        }
    }
    if (!isdefined(v_target)) {
        var_c4ab24e5 = arraygetfarthest(var_5beedbc3.origin, a_e_players);
        v_target = var_c4ab24e5.origin;
    }
    if (!isdefined(v_target)) {
        return 0;
    }
    var_a51f3923 = isdefined(var_b4488d57.contentgroups[#"bolt"]) ? var_b4488d57.contentgroups[#"bolt"] : [];
    arrayremovevalue(var_a51f3923, var_b4488d57.var_5014b6e1);
    var_dbbe30cd = arraygetclosest(v_target, var_a51f3923);
    if (!isdefined(var_dbbe30cd)) {
        return 0;
    }
    var_dbbe30cd.var_5014b6e1 = var_dbbe30cd;
    return var_dbbe30cd;
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xd7878980, Offset: 0x1bf50
// Size: 0x4a
function function_90ed61b8(var_b4488d57) {
    var_b4488d57 flag::set(#"hash_66dbed39850a57d2");
    if (var_b4488d57.var_6c3592c9 < 5000) {
        var_b4488d57.var_6c3592c9 = 5000;
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x6347795c, Offset: 0x1bfa8
// Size: 0x4c
function function_aa6c9b40(var_b4488d57) {
    if (var_b4488d57.var_6c3592c9 < 5000) {
        var_b4488d57.var_6c3592c9 = 5000;
    }
    var_b4488d57 flag::clear(#"hash_66dbed39850a57d2");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0xed079e06, Offset: 0x1c000
// Size: 0x5d8
function function_9b762c44(var_b4488d57, var_5beedbc3) {
    level endon(#"end_game");
    var_b4488d57 endon(#"failed", #"defeated");
    var_5beedbc3 endon(#"death");
    var_5beedbc3 val::set(#"hash_75f47c14bdf5a63e", "takedamage", 1);
    var_5beedbc3 val::set(#"hash_75f47c14bdf5a63e", "allowdeath", 0);
    var_5beedbc3.health = 1;
    var_5beedbc3.var_95ee6823 = 0.3;
    while (true) {
        var_b4488d57.var_6c3592c9 = var_b4488d57.var_d43e9ae3;
        while (true) {
            s_waitresult = var_5beedbc3 waittill(#"damage");
            e_player = s_waitresult.attacker;
            if (isplayer(e_player)) {
                damage = s_waitresult.amount;
                weapon = s_waitresult.weapon;
                inflictor = s_waitresult.inflictor;
                flags = s_waitresult.flags;
                meansofdeath = s_waitresult.mod;
                var_fd90b0bb = s_waitresult.var_fd90b0bb;
                vpoint = s_waitresult.position;
                vdir = s_waitresult.direction;
                shitloc = s_waitresult.shitloc;
                psoffsettime = s_waitresult.psoffsettime;
                boneindex = s_waitresult.boneindex;
                surfacetype = s_waitresult.surfacetype;
                if (isdefined(weapon) && zm_weapons::is_wonder_weapon(weapon) && meansofdeath === "MOD_PROJECTILE_SPLASH") {
                    continue;
                }
                var_982513ee = !isdefined(vpoint) || distancesquared(vpoint, var_5beedbc3 gettagorigin("tag_weakpoint")) > sqr(128);
                var_80493ae6 = 0;
                str_fx = #"hash_669491f4b6d548a";
                if (var_982513ee) {
                    damage = 0;
                    str_fx = #"hash_3e61e24b62e33593";
                } else {
                    damage = var_5beedbc3 function_d8f3e6bb(inflictor, e_player, damage, flags, meansofdeath, weapon, var_fd90b0bb, vpoint, vdir, shitloc, psoffsettime, boneindex, surfacetype);
                    var_6e859516 = function_1bf5ba61(meansofdeath, weapon, var_b4488d57.var_d43e9ae3);
                    if (isdefined(var_6e859516) && damage > var_6e859516) {
                        damage = var_6e859516;
                    }
                    damage = int(damage);
                    if (!var_b4488d57 flag::get(#"hash_272ed685e8a34d8d")) {
                        n_min = 0;
                        if (var_b4488d57 flag::get(#"hash_66dbed39850a57d2")) {
                            n_min = 5000;
                        }
                        var_b4488d57.var_6c3592c9 = int(max(var_b4488d57.var_6c3592c9 - damage, n_min));
                        if (var_b4488d57.var_6c3592c9 <= 0) {
                            var_80493ae6 = 1;
                        }
                    }
                }
                if (isdefined(vpoint) && isdefined(vdir)) {
                    playfx(str_fx, vpoint, anglestoforward(vdir), anglestoup(vdir));
                }
                if (var_80493ae6) {
                    var_5beedbc3.var_426947c4 = 1;
                } else {
                    var_5beedbc3.var_426947c4 = undefined;
                }
                if (isplayer(e_player)) {
                    var_db2a8c7a = 3;
                    if (var_982513ee) {
                        var_db2a8c7a = 4;
                    }
                    level thread hud::function_c9800094(e_player, vpoint, damage, var_db2a8c7a);
                    if (!var_982513ee) {
                        var_fe886504 = "armor";
                        if (var_80493ae6) {
                            var_fe886504 = "armorBroke";
                        }
                        e_player thread damagefeedback::update(meansofdeath, e_player, var_fe886504, weapon, var_5beedbc3, psoffsettime, shitloc, 0, 2048, 0);
                    }
                }
                if (var_80493ae6) {
                    break;
                }
            }
        }
        var_b4488d57 flag::set(#"stunned");
        level thread function_4c15e02a(var_b4488d57, var_5beedbc3);
        var_b4488d57 flag::wait_till_clear(#"stunned");
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 13, eflags: 0x2 linked
// Checksum 0x264698de, Offset: 0x1c5e0
// Size: 0x332
function function_d8f3e6bb(inflictor, attacker, damage, flags, meansofdeath, weapon, var_fd90b0bb, vpoint, vdir, shitloc, psoffsettime, boneindex, surfacetype) {
    if (weapon.offhandslot === "Tactical grenade" || weapon.offhandslot === "Lethal grenade" || weapon.offhandslot === "Special" || killstreaks::is_killstreak_weapon(weapon)) {
        if (!zm_equipment::function_4f51b6ea(weapon, meansofdeath) && meansofdeath !== "MOD_MELEE") {
            damage = zm_equipment::function_739fbb72(damage);
            if (killstreaks::is_killstreak_weapon(weapon)) {
                damage *= 0.3;
                if (weapon.firetype === "Minigun") {
                    damage *= 0.3;
                }
            } else {
                damage *= 0.1;
            }
        }
    }
    item = attacker item_inventory::function_230ceec4(weapon);
    if (isdefined(item)) {
        var_528363fd = self namespace_b61a349a::function_b3496fde(inflictor, attacker, damage, flags, meansofdeath, weapon, vpoint, vdir, shitloc, psoffsettime, boneindex, surfacetype);
        damage += var_528363fd;
        if (meansofdeath != "MOD_MELEE") {
            var_4d1602de = zm_weapons::function_d85e6c3a(item.itementry);
            damage *= var_4d1602de;
            if (isdefined(item.paplv)) {
                var_645b8bb = zm_weapons::function_896671d5(item.itementry.weapon, item.paplv);
                damage *= var_645b8bb;
            }
        }
    } else {
        var_fd72ea28 = self namespace_b61a349a::function_b3496fde(inflictor, attacker, damage, flags, meansofdeath, weapon, vpoint, vdir, shitloc, psoffsettime, boneindex, surfacetype);
        damage += var_fd72ea28;
    }
    damage = namespace_1b527536::actor_damage_override(inflictor, attacker, damage, flags, meansofdeath, weapon, var_fd90b0bb, vpoint, vdir, shitloc, psoffsettime, boneindex, surfacetype);
    if (isdefined(weapon) && zm_weapons::is_wonder_weapon(weapon)) {
        damage *= 0.3;
    }
    return int(damage);
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 4, eflags: 0x2 linked
// Checksum 0xe2fb1361, Offset: 0x1c920
// Size: 0x14c
function function_1bf5ba61(meansofdeath, weapon, var_be81a997, var_900b4d4 = 0) {
    var_e732862c = 0.0278;
    var_9ddae937 = 0.01041;
    var_203e270e = 0.0556;
    if (var_900b4d4) {
        var_e732862c = 0.025;
        var_9ddae937 = 0.009375;
        var_203e270e = 0.05;
    }
    if (meansofdeath === "MOD_HEAD_SHOT" || meansofdeath === "MOD_RIFLE_BULLET" || meansofdeath === "MOD_PISTOL_BULLET") {
        var_2e185307 = var_e732862c;
    } else if (weapon.guidedmissiletype === "Ballistic") {
        var_2e185307 = var_9ddae937;
    } else {
        var_2e185307 = var_203e270e;
    }
    if (isdefined(var_2e185307) && isdefined(var_be81a997)) {
        var_6e859516 = int(var_2e185307 * var_be81a997);
        return var_6e859516;
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0x87981919, Offset: 0x1ca78
// Size: 0x554
function function_4c15e02a(var_b4488d57, var_5beedbc3) {
    level endon(#"end_game");
    var_b4488d57 endon(#"failed", #"defeated");
    var_5beedbc3 endon(#"death");
    var_b4488d57 flag::clear(#"hash_4da63fe4689abc76");
    var_b4488d57 flag::clear(#"hash_1ac4c3643f75c486");
    var_b4488d57 flag::clear(#"hash_2274961e1855105a");
    var_b4488d57 flag::set(#"hash_1e2734204ab845a2");
    var_37fce2a8 = var_5beedbc3 gettagorigin("tag_heart");
    if (!var_b4488d57 flag::get(#"hash_3067359fb2e4ce32")) {
        var_b4488d57 flag::set(#"hash_3067359fb2e4ce32");
        level thread function_5a369a74(var_b4488d57);
    }
    function_220525(var_5beedbc3, 1);
    var_5beedbc3 scene::play(#"aib_t9_zm_tmpst_boss_fight", "stun_start", var_5beedbc3);
    var_5beedbc3 thread scene::play(#"aib_t9_zm_tmpst_boss_fight", "stun_loop", var_5beedbc3);
    var_b4488d57 flag::set(#"hash_1ac4c3643f75c486");
    var_5beedbc3 hidepart("tag_heart");
    var_b4488d57.a_mdl_orbs = [];
    foreach (var_7fd775e2, orb in var_b4488d57.var_1046ec68) {
        level thread function_56529f40(var_b4488d57, var_5beedbc3, var_7fd775e2, var_37fce2a8);
    }
    var_b4488d57 flag::wait_till_timeout(10, #"hash_4da63fe4689abc76");
    var_e9eb81d7 = var_b4488d57 flag::get(#"hash_4da63fe4689abc76");
    var_9bfb3ba = function_ab39d475(var_b4488d57);
    if (var_e9eb81d7) {
        level thread function_c07dc657(var_b4488d57, var_5beedbc3);
        foreach (e_player in getplayers()) {
            level.var_3c3b40c7 sr_orda_health_bar::set_health(e_player, var_9bfb3ba / 3);
        }
        level thread function_9b51d241(var_b4488d57, var_9bfb3ba);
    }
    if (var_9bfb3ba <= 0) {
        level thread function_b9ff5822(var_b4488d57, var_5beedbc3);
        return;
    }
    function_90ed61b8(var_b4488d57);
    var_b4488d57 flag::clear(#"stunned");
    var_b4488d57 flag::set(#"hash_2274961e1855105a");
    var_b4488d57 flag::clear(#"hash_1e2734204ab845a2");
    str_shot = "stun_end";
    if (var_e9eb81d7) {
        str_shot = "weakpoint_shatter";
    }
    var_5beedbc3 scene::play(#"aib_t9_zm_tmpst_boss_fight", str_shot, var_5beedbc3);
    var_5beedbc3 showpart("tag_heart");
    function_220525(var_5beedbc3, 0);
    level thread function_51bcd8c6(var_b4488d57, var_5beedbc3, #"stun");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0xfcf3a14c, Offset: 0x1cfd8
// Size: 0x188
function function_220525(var_5beedbc3, b_hide = 1) {
    if (!isdefined(var_5beedbc3)) {
        return;
    }
    var_3378e1ea = ["J_Spine4_ribcage", "J_SpineUpper_ribcage", "J_SpineLower_ribcage", "J_MainRoot1_ribcage"];
    if (b_hide) {
        foreach (var_f1ff5eed in var_3378e1ea) {
            var_5beedbc3 hidepart(var_f1ff5eed);
        }
        return;
    }
    foreach (var_f1ff5eed in var_3378e1ea) {
        var_5beedbc3 showpart(var_f1ff5eed);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x4487678e, Offset: 0x1d168
// Size: 0xbc
function function_5a369a74(var_b4488d57) {
    level endon(#"end_game");
    var_b4488d57 endon(#"failed", #"defeated");
    wait(1);
    level namespace_7589cf5c::play_vo(#"hash_1b04914321ecea7e");
    wait(0.5);
    var_b4488d57 flag::wait_till(#"hash_1ac4c3643f75c486");
    level thread namespace_7589cf5c::play_vo(#"hash_1b04904321ece8cb");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0xadcec07b, Offset: 0x1d230
// Size: 0x10c
function function_9b51d241(var_b4488d57, var_9bfb3ba) {
    level endon(#"end_game");
    var_b4488d57 endon(#"failed", #"defeated");
    wait(3);
    switch (var_9bfb3ba) {
    case 2:
        str_vo = #"hash_6530caab4a53fc87";
        break;
    case 1:
        str_vo = #"hash_3347f02ea2348e30";
        break;
    }
    if (isstring(str_vo) || ishash(str_vo)) {
        level thread namespace_7589cf5c::play_vo(str_vo);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 3, eflags: 0x2 linked
// Checksum 0x73a5c4d5, Offset: 0x1d348
// Size: 0x460
function function_c07dc657(var_b4488d57, var_5beedbc3, b_all = 0) {
    if (!isdefined(var_b4488d57)) {
        return;
    }
    if (b_all) {
        foreach (var_a2fbae60 in var_b4488d57.var_74919f45) {
            if (isdefined(var_a2fbae60)) {
                var_a2fbae60 delete();
            }
        }
        foreach (var_248da862 in var_b4488d57.var_dff21694) {
            if (isdefined(var_248da862)) {
                var_248da862 connectpaths();
                var_248da862 deletedelay();
            }
        }
        return;
    }
    if (isdefined(var_5beedbc3)) {
        level thread function_91f25de8(var_b4488d57, 0, 0.3, 2);
        level thread function_40793058(var_b4488d57);
        wait(2);
        var_b4488d57 notify(#"hash_799045ab34e28e5f");
        earthquake(0.4, 3, var_b4488d57.origin, 10000);
        var_b4488d57 notify(#"hash_51c6afa4c4a038b7");
        level thread function_40793058(var_b4488d57, 1);
        var_a2fbae60 = arraygetclosest(var_5beedbc3.origin, var_b4488d57.var_6e0d70d5);
        arrayremovevalue(var_b4488d57.var_6e0d70d5, var_a2fbae60);
        var_a2fbae60 clientfield::set("" + #"hash_723ddf6790b39408", 1);
        var_c0db9e13 = var_a2fbae60.script_int;
        if (isint(var_c0db9e13)) {
            var_248da862 = var_b4488d57.var_dff21694[var_c0db9e13];
            switch (var_c0db9e13) {
            case 1:
                str_exploder = "fxexp_mq_boss_crystal_destroy_a";
                break;
            case 2:
                str_exploder = "fxexp_mq_boss_crystal_destroy_b";
                break;
            case 3:
                str_exploder = "fxexp_mq_boss_crystal_destroy_d";
                break;
            }
        }
        if (isstring(str_exploder) || ishash(str_exploder)) {
            exploder::exploder(str_exploder);
        }
        if (isentity(var_248da862)) {
            var_248da862 connectpaths();
            var_248da862 deletedelay();
        }
        wait(1);
        var_a2fbae60 setmodel(#"hash_6556ba7e31264376");
        var_a2fbae60 clientfield::set("" + #"hash_723ddf6790b39408", 0);
        wait(2);
        var_b4488d57 notify(#"hash_51c6afa4c4a038b7");
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0xb3957392, Offset: 0x1d7b0
// Size: 0x978
function function_b9ff5822(var_b4488d57, var_5beedbc3) {
    var_b4488d57 flag::set(#"defeated");
    foreach (player in function_a1ef346b()) {
        player namespace_d4ecbbf0::function_e6a712db(1);
    }
    foreach (player in getplayers()) {
        player zm_stats::increment_challenge_stat(#"hash_172d82afa5eb40a8");
    }
    level namespace_9b972177::function_b8af32da();
    function_43d248c7(var_b4488d57);
    zm_sq::objective_complete(#"beast");
    level thread function_98f5bf8c(var_b4488d57, var_5beedbc3);
    wait(1);
    level thread function_d4c750c2(var_b4488d57);
    wait(1);
    level thread namespace_7589cf5c::play_vo(#"hash_487a38045220001b");
    var_5beedbc3 clientfield::set("" + #"hash_723ddf6790b39408", 2);
    level thread scene::init_streamer(#"hash_47027fa54d6892d3", getplayers(), 0, 0);
    wait(3);
    var_b4488d57 flag::wait_till(#"hash_d5f599d69a4362a");
    var_6976f577 = util::spawn_model(#"tag_origin", var_5beedbc3.origin, var_5beedbc3.angles);
    var_5beedbc3 linkto(var_6976f577);
    var_6976f577 movez(7200, 8, 3);
    var_6976f577 waittilltimeout(8, #"movedone");
    var_6976f577 delete();
    var_5beedbc3 clientfield::set("" + #"hash_723ddf6790b39408", 3);
    var_5beedbc3 thread util::delayed_delete(1);
    wait(4);
    level thread lui::screen_fade_out(0.5, (0, 0, 0));
    wait(0.6);
    foreach (e_player in getplayers()) {
        e_player.var_f4e33249 = 1;
    }
    var_b4488d57 notify(#"hash_5149b8c9a169dd55");
    callback::remove_on_connect(&function_287438e9);
    foreach (e_player in getplayers()) {
        e_player notify(#"hash_74539100531d340");
        e_player.var_749332e7 = 0;
        e_player clientfield::set_to_player("" + #"hash_583ce51cd4d9a904", 4);
    }
    level scene::stop(#"hash_3c41f7e5bff57fd6", 1);
    foreach (var_6b610739 in var_b4488d57.var_841919e8) {
        if (isstring(var_6b610739.var_bd67006) || ishash(var_6b610739.var_bd67006)) {
            level scene::stop(var_6b610739.var_bd67006, 1);
        }
        if (isstring(var_6b610739.var_6923530f) || ishash(var_6b610739.var_6923530f)) {
            level scene::stop(var_6b610739.var_6923530f, 1);
        }
    }
    level thread function_c07dc657(var_b4488d57, var_5beedbc3, 1);
    hidemiscmodels("igc_silo_hatch");
    level thread scene::init(#"hash_47027fa54d6892d3");
    wait(0.5);
    level namespace_9b972177::function_9f5c2ff2("scene_outro");
    scene::add_scene_func(#"hash_47027fa54d6892d3", &function_d55fcc73);
    level scene::play(#"hash_47027fa54d6892d3");
    foreach (e_player in function_a1ef346b()) {
        e_player namespace_d4ecbbf0::function_3a2e46e0(1);
        e_player zm_stats::increment_challenge_stat(#"hash_1a7ff6d1e1ff03b0");
        level.var_7c7c6c35 zm_game_over::set_state(e_player, #"hash_4677c7e6d02d1a65");
        e_player zm_stats::function_9daadcaa("survivalOutcome", 1);
    }
    level notify(#"hash_718440039bd6eb39", {#b_success:1});
    foreach (e_player in getplayers()) {
        e_player.pers[#"outcome"] = #"win";
        e_player thread zm_utility::function_ee6da6f6();
    }
    level notify(#"end_game", {#reason:#"main_quest_completed"});
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xc02ba4b0, Offset: 0x1e130
// Size: 0x5c
function function_d55fcc73(*a_ents) {
    scene::remove_scene_func(#"hash_47027fa54d6892d3", &function_d55fcc73);
    level thread lui::screen_fade_in(1, (0, 0, 0));
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xc645a75a, Offset: 0x1e198
// Size: 0x410
function function_43d248c7(var_b4488d57) {
    foreach (mdl_orb in var_b4488d57.a_mdl_orbs) {
        if (isdefined(mdl_orb)) {
            mdl_orb deletedelay();
        }
    }
    foreach (var_dbbe30cd in isdefined(var_b4488d57.contentgroups[#"bolt"]) ? var_b4488d57.contentgroups[#"bolt"] : []) {
        var_dbbe30cd flag::clear(#"active");
        var_dbbe30cd notify(#"hash_35b801f2cfc15551");
        if (isdefined(var_dbbe30cd.var_f5c75ddf)) {
            var_dbbe30cd.var_f5c75ddf delete();
        }
    }
    foreach (var_6b610739 in var_b4488d57.var_841919e8) {
        if (var_6b610739 flag::get(#"active") && isdefined(var_6b610739.exploder)) {
            exploder::stop_exploder(var_6b610739.exploder);
        }
        var_6b610739 flag::clear(#"hash_cc22690baa3184b");
        var_6b610739 flag::clear(#"active");
    }
    foreach (var_e03bba7e in var_b4488d57.var_c2b5aaa4) {
        if (isdefined(var_e03bba7e)) {
            var_e03bba7e delete();
        }
    }
    level thread zm_utility::function_9ad5aeb1(0, 1, 1, 0);
    objective_manager::stop_timer();
    foreach (e_player in getplayers()) {
        if (level.var_3c3b40c7 sr_orda_health_bar::is_open(e_player)) {
            level.var_3c3b40c7 sr_orda_health_bar::close(e_player);
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0x5e941ba5, Offset: 0x1e5b0
// Size: 0x84
function function_98f5bf8c(var_b4488d57, var_5beedbc3) {
    if (!(isdefined(var_b4488d57) && isdefined(var_5beedbc3))) {
        return;
    }
    level endon(#"end_game");
    var_5beedbc3 scene::play(#"aib_t9_zm_tmpst_boss_fight", "death", var_5beedbc3);
    var_b4488d57 flag::set(#"hash_d5f599d69a4362a");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 4, eflags: 0x2 linked
// Checksum 0x4aae9c66, Offset: 0x1e640
// Size: 0x4c4
function function_56529f40(var_b4488d57, var_5beedbc3, var_7fd775e2, var_37fce2a8) {
    level endon(#"end_game");
    var_b4488d57 endon(#"failed", #"defeated");
    var_5beedbc3 endon(#"death");
    while (true) {
        v_spawn = var_5beedbc3 gettagorigin("tag_heart");
        mdl_orb = spawncollision(#"hash_54ae3ca6346eae5f", "sr_ee_hulk_impact", v_spawn, (0, 0, 0));
        if (isdefined(mdl_orb)) {
            break;
        }
        waitframe(1);
    }
    mdl_orb endon(#"death");
    if (!isdefined(var_b4488d57.a_mdl_orbs)) {
        var_b4488d57.a_mdl_orbs = [];
    } else if (!isarray(var_b4488d57.a_mdl_orbs)) {
        var_b4488d57.a_mdl_orbs = array(var_b4488d57.a_mdl_orbs);
    }
    var_b4488d57.a_mdl_orbs[var_b4488d57.a_mdl_orbs.size] = mdl_orb;
    level thread function_64b681ba(var_b4488d57, mdl_orb, var_7fd775e2);
    mdl_orb.mdl_fx = util::spawn_model(#"tag_origin", mdl_orb.origin, mdl_orb.angles);
    mdl_orb.mdl_fx linkto(mdl_orb);
    mdl_orb.mdl_fx clientfield::set("" + #"hash_723ddf6790b39408", 3);
    v_up = anglestoup(var_5beedbc3.angles);
    v_right = anglestoright(var_5beedbc3.angles);
    switch (var_7fd775e2) {
    case 1:
        v_offset = v_right * 200 + v_up * 200;
        break;
    case 2:
        v_offset = -1 * v_right * 200;
        break;
    case 3:
        v_offset = v_right * 200 + -1 * v_up * 200;
        break;
    }
    v_dest = v_spawn + v_offset;
    n_time = distance(mdl_orb.origin, v_dest) / 80;
    if (n_time > 0) {
        mdl_orb moveto(v_dest, n_time);
        mdl_orb waittilltimeout(n_time, #"movedone");
        mdl_orb playsound(#"hash_3873744f3aaf092f" + var_7fd775e2);
    }
    mdl_orb.origin = v_dest;
    var_b4488d57 flag::wait_till(#"hash_2274961e1855105a");
    if (!isdefined(var_37fce2a8)) {
        var_37fce2a8 = v_spawn;
    }
    n_time = distance(mdl_orb.origin, var_37fce2a8) / 80;
    if (n_time > 0) {
        mdl_orb moveto(var_37fce2a8, n_time);
        mdl_orb playsound(#"hash_3020158138dcec69" + var_7fd775e2);
        mdl_orb waittilltimeout(n_time, #"movedone");
    }
    if (isdefined(mdl_orb.mdl_fx)) {
        mdl_orb.mdl_fx delete();
    }
    mdl_orb deletedelay();
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 3, eflags: 0x2 linked
// Checksum 0x2e00fe8f, Offset: 0x1eb10
// Size: 0x5ac
function function_64b681ba(var_b4488d57, mdl_orb, var_7fd775e2) {
    level endon(#"end_game");
    var_b4488d57 endon(#"failed", #"defeated");
    if (!isdefined(mdl_orb)) {
        return;
    }
    if (var_b4488d57.var_1046ec68[var_7fd775e2] < 5000) {
        var_b4488d57.var_1046ec68[var_7fd775e2] = 5000;
    }
    mdl_orb val::set(#"hash_215b4314d6912196", "takedamage", 1);
    mdl_orb val::set(#"hash_215b4314d6912196", "allowdeath", 0);
    mdl_orb.health = 1;
    mdl_orb.var_95ee6823 = 0.3;
    while (isdefined(mdl_orb)) {
        s_waitresult = mdl_orb waittill(#"death", #"damage");
        if (s_waitresult._notify === "death") {
            return;
        }
        e_player = s_waitresult.attacker;
        if (isplayer(e_player)) {
            damage = s_waitresult.amount;
            weapon = s_waitresult.weapon;
            inflictor = s_waitresult.inflictor;
            flags = s_waitresult.flags;
            meansofdeath = s_waitresult.mod;
            var_fd90b0bb = s_waitresult.var_fd90b0bb;
            vpoint = s_waitresult.position;
            vdir = s_waitresult.direction;
            shitloc = s_waitresult.shitloc;
            psoffsettime = s_waitresult.psoffsettime;
            boneindex = s_waitresult.boneindex;
            surfacetype = s_waitresult.surfacetype;
            if (isdefined(weapon) && zm_weapons::is_wonder_weapon(weapon) && meansofdeath === "MOD_PROJECTILE_SPLASH") {
                continue;
            }
            b_destroyed = 0;
            damage = mdl_orb function_d8f3e6bb(inflictor, e_player, damage, flags, meansofdeath, weapon, var_fd90b0bb, vpoint, vdir, shitloc, psoffsettime, boneindex, surfacetype);
            damage *= 2;
            var_6e859516 = function_1bf5ba61(meansofdeath, weapon, var_b4488d57.var_720d5b8e, 1);
            if (isdefined(var_6e859516) && damage > var_6e859516) {
                damage = var_6e859516;
            }
            damage = int(damage);
            if (var_b4488d57 flag::get(#"stunned")) {
                var_b4488d57.var_1046ec68[var_7fd775e2] = int(max(var_b4488d57.var_1046ec68[var_7fd775e2] - damage, 0));
                if (var_b4488d57.var_1046ec68[var_7fd775e2] <= 0) {
                    b_destroyed = 1;
                }
            }
            if (isdefined(vpoint) && isdefined(vdir)) {
                playfx(#"hash_669491f4b6d548a", vpoint, anglestoforward(vdir), anglestoup(vdir));
            }
            if (isplayer(e_player)) {
                level thread hud::function_c9800094(e_player, vpoint, damage, 2);
                e_player thread damagefeedback::update(meansofdeath, e_player, undefined, weapon, mdl_orb, psoffsettime, shitloc, b_destroyed, flags, 0);
            }
            if (b_destroyed) {
                break;
            }
        }
    }
    arrayremovevalue(var_b4488d57.a_mdl_orbs, mdl_orb);
    arrayremoveindex(var_b4488d57.var_1046ec68, var_7fd775e2, 1);
    if (isdefined(mdl_orb.mdl_fx)) {
        mdl_orb.mdl_fx thread util::delayed_delete(1);
        mdl_orb.mdl_fx clientfield::set("" + #"hash_723ddf6790b39408", 4);
    }
    if (isdefined(mdl_orb)) {
        playsoundatposition(#"hash_4a6ea5b2c3b0bd7a", mdl_orb.origin);
        mdl_orb deletedelay();
    }
    var_b4488d57 flag::set(#"hash_4da63fe4689abc76");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 4, eflags: 0x2 linked
// Checksum 0x6e584633, Offset: 0x1f0c8
// Size: 0x49c
function function_5bb78300(var_b4488d57, var_5beedbc3, s_teleport, var_dfa819d9 = 1) {
    level endon(#"end_game");
    var_b4488d57 endon(#"failed", #"defeated");
    var_5beedbc3 endon(#"death");
    function_90ed61b8(var_b4488d57);
    level thread function_91f25de8(var_b4488d57, 0, 0.2, 3);
    level thread function_40793058(var_b4488d57);
    var_5beedbc3 scene::play(#"aib_t9_zm_tmpst_boss_fight", "teleport_start", var_5beedbc3);
    var_b4488d57 notify(#"hash_799045ab34e28e5f");
    earthquake(0.4, 3, var_b4488d57.origin, 10000);
    level thread function_40793058(var_b4488d57, 1);
    playsoundatposition(#"hash_5a5bdd4bb0b69eb7", var_5beedbc3.origin);
    var_19e9b9d0 = util::spawn_model(#"tag_origin", var_5beedbc3 gettagorigin("j_spine4"), var_5beedbc3 gettagangles("j_spine4"));
    var_19e9b9d0 clientfield::set("" + #"hash_723ddf6790b39408", 1);
    var_6976f577 = util::spawn_model(#"tag_origin", var_5beedbc3.origin, var_5beedbc3.angles);
    var_5beedbc3 linkto(var_6976f577);
    var_6976f577 moveto(s_teleport.origin, 0.01);
    var_6976f577 rotateto(s_teleport.angles, 0.01);
    var_6976f577 waittilltimeout(0.01, #"movedone");
    var_6976f577 delete();
    var_5beedbc3.origin = s_teleport.origin;
    var_5beedbc3.angles = s_teleport.angles;
    var_49626b4e = util::spawn_model(#"tag_origin", var_5beedbc3 gettagorigin("j_spine4"), var_5beedbc3 gettagangles("j_spine4"));
    var_49626b4e clientfield::set("" + #"hash_723ddf6790b39408", 2);
    if (isdefined(var_19e9b9d0)) {
        var_19e9b9d0 thread util::delayed_delete(2);
    }
    if (isdefined(var_49626b4e)) {
        var_49626b4e thread util::delayed_delete(2);
    }
    level thread function_40793058(var_b4488d57);
    var_5beedbc3 scene::play(#"aib_t9_zm_tmpst_boss_fight", "teleport_end", var_5beedbc3);
    var_5beedbc3 thread scene::play(#"aib_t9_zm_tmpst_boss_fight", "idle", var_5beedbc3);
    var_b4488d57 notify(#"hash_51c6afa4c4a038b7");
    waitframe(1);
    if (var_dfa819d9) {
        function_aa6c9b40(var_b4488d57);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 3, eflags: 0x2 linked
// Checksum 0xaeba2e6f, Offset: 0x1f570
// Size: 0x254
function function_c5f4c7d8(var_b4488d57, var_5beedbc3, var_6b610739) {
    level endon(#"end_game");
    var_b4488d57 endon(#"failed", #"defeated");
    var_5beedbc3 endon(#"death");
    function_90ed61b8(var_b4488d57);
    arrayremovevalue(var_b4488d57.var_a88b8e1e, var_6b610739);
    var_b4488d57.var_1466fe12 = var_6b610739;
    var_b4488d57.var_912276d3++;
    var_6b610739 flag::increment(#"disabled");
    foreach (var_57adde7 in var_6b610739.var_e3106c76) {
        var_57adde7 flag::increment(#"disabled");
    }
    function_5bb78300(var_b4488d57, var_5beedbc3, var_6b610739, 0);
    level thread function_9c96a95e(var_b4488d57, var_6b610739);
    var_5beedbc3 scene::play(#"aib_t9_zm_tmpst_boss_fight", "aether_storm_start", var_5beedbc3);
    var_5beedbc3 thread scene::play(#"aib_t9_zm_tmpst_boss_fight", "aether_storm_loop", var_5beedbc3);
    wait(5);
    var_5beedbc3 scene::play(#"aib_t9_zm_tmpst_boss_fight", "aether_storm_end", var_5beedbc3);
    level thread function_51bcd8c6(var_b4488d57, var_5beedbc3, #"storm");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x41ee244, Offset: 0x1f7d0
// Size: 0x2c
function function_58fffbb8(s_position) {
    return !s_position flag::get(#"disabled");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0x8d3fc21, Offset: 0x1f808
// Size: 0x3f4
function function_9c96a95e(var_b4488d57, var_6b610739) {
    level endon(#"end_game");
    var_b4488d57 endon(#"failed", #"defeated");
    var_6b610739 flag::set(#"active");
    var_6b610739 flag::set(#"hash_cc22690baa3184b");
    if (isdefined(var_6b610739.exploder)) {
        exploder::exploder(var_6b610739.exploder);
    }
    var_926c0a68 = var_6b610739.contentgroups[#"block"][0];
    var_e03bba7e = util::spawn_model(#"hash_bc01edf8191a2b1", var_926c0a68.origin - (0, 0, 200), var_926c0a68.angles);
    if (!isdefined(var_b4488d57.var_c2b5aaa4)) {
        var_b4488d57.var_c2b5aaa4 = [];
    } else if (!isarray(var_b4488d57.var_c2b5aaa4)) {
        var_b4488d57.var_c2b5aaa4 = array(var_b4488d57.var_c2b5aaa4);
    }
    var_b4488d57.var_c2b5aaa4[var_b4488d57.var_c2b5aaa4.size] = var_e03bba7e;
    var_e03bba7e clientfield::set("" + #"hash_723ddf6790b39408", 1);
    var_e03bba7e movez(200, 5);
    level thread function_59c58c97(var_6b610739);
    level thread function_b0805efc(var_6b610739);
    wait(60);
    var_6b610739 flag::clear(#"hash_cc22690baa3184b");
    var_e03bba7e movez(-200, 5);
    var_e03bba7e waittilltimeout(5, #"movedone", #"death");
    if (isdefined(var_6b610739.exploder)) {
        exploder::stop_exploder(var_6b610739.exploder);
    }
    arrayremovevalue(var_b4488d57.var_c2b5aaa4, var_e03bba7e);
    if (isdefined(var_e03bba7e)) {
        var_e03bba7e delete();
    }
    var_b4488d57.var_912276d3--;
    var_6b610739 flag::decrement(#"disabled");
    foreach (var_57adde7 in var_6b610739.var_e3106c76) {
        var_57adde7 flag::decrement(#"disabled");
    }
    var_6b610739 flag::clear(#"active");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x6213dba0, Offset: 0x1fc08
// Size: 0x280
function function_59c58c97(var_6b610739) {
    var_c61426bf = getent(var_6b610739.targetname, "target");
    var_56b52ecb = [];
    while (var_6b610739 flag::get(#"hash_cc22690baa3184b")) {
        foreach (e_player in getplayers()) {
            if (isdefined(e_player.var_749332e7)) {
                if (isalive(e_player) && e_player istouching(var_c61426bf)) {
                    if (!isinarray(var_56b52ecb, e_player)) {
                        e_player.var_749332e7++;
                        if (!isdefined(var_56b52ecb)) {
                            var_56b52ecb = [];
                        } else if (!isarray(var_56b52ecb)) {
                            var_56b52ecb = array(var_56b52ecb);
                        }
                        if (!isinarray(var_56b52ecb, e_player)) {
                            var_56b52ecb[var_56b52ecb.size] = e_player;
                        }
                    }
                    continue;
                }
                if (isinarray(var_56b52ecb, e_player)) {
                    e_player.var_749332e7--;
                    arrayremovevalue(var_56b52ecb, e_player);
                }
            }
        }
        waitframe(1);
    }
    foreach (var_fca542e in var_56b52ecb) {
        if (isdefined(var_fca542e.var_749332e7)) {
            var_fca542e.var_749332e7--;
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 0, eflags: 0x2 linked
// Checksum 0x7704a49f, Offset: 0x1fe90
// Size: 0x170
function function_287438e9() {
    self notify("51ebd91d525813cc");
    self endon("51ebd91d525813cc");
    self endon(#"disconnect", #"hash_74539100531d340");
    self.var_749332e7 = 0;
    while (true) {
        while (self.var_749332e7 <= 0) {
            waitframe(1);
        }
        self clientfield::set_to_player("" + #"hash_583ce51cd4d9a904", 3);
        var_8fc81e63 = gettime();
        while (self.var_749332e7 > 0) {
            n_time_passed = (gettime() - var_8fc81e63) / 1000;
            n_damage = 10;
            if (n_time_passed >= 2) {
                n_damage = 50;
                if (n_time_passed >= 4) {
                    n_damage = 75;
                }
            }
            if (n_damage > 0) {
                level thread function_b1d3121(self, n_damage);
            }
            waitframe(1);
        }
        self clientfield::set_to_player("" + #"hash_583ce51cd4d9a904", 4);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0xe05f15d4, Offset: 0x20008
// Size: 0x10c
function function_b1d3121(e_player, n_damage) {
    if (!isdefined(e_player) || e_player flag::get(#"hash_588c5e4899014d52")) {
        return;
    }
    e_player flag::set(#"hash_588c5e4899014d52");
    e_player playsoundtoplayer(#"hash_11f49f9aedeeff5e", e_player);
    e_player function_bc82f900(#"damage_light");
    if (zm_utility::is_player_valid(e_player)) {
        e_player dodamage(n_damage, e_player.origin);
    }
    wait(1);
    if (isdefined(e_player)) {
        e_player flag::clear(#"hash_588c5e4899014d52");
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0xddf93a4e, Offset: 0x20120
// Size: 0x10c
function function_b0805efc(var_6b610739) {
    if (!var_6b610739 flag::get(#"hash_5756258692cb7bd1")) {
        var_6b610739 flag::set(#"hash_5756258692cb7bd1");
        if (isstring(var_6b610739.var_bd67006) || ishash(var_6b610739.var_bd67006)) {
            level thread function_7956a6a4(var_6b610739, var_6b610739.var_bd67006);
        }
    }
    if (isstring(var_6b610739.var_6923530f) || ishash(var_6b610739.var_6923530f)) {
        level thread function_7956a6a4(var_6b610739, var_6b610739.var_6923530f);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0xbf4c52b4, Offset: 0x20238
// Size: 0xf8
function function_7956a6a4(var_6b610739, str_targetname) {
    var_32c7b4e0 = struct::get_array(str_targetname);
    var_32c7b4e0 = array::randomize(var_32c7b4e0);
    foreach (var_e041976b in var_32c7b4e0) {
        level thread function_a71fb834(var_6b610739, var_e041976b);
        wait(randomfloatrange(0.25, 0.5));
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x8be2b53b, Offset: 0x20338
// Size: 0xe8
function function_6188d81a(a_ents) {
    if (!self flag::get(#"hash_25ca5532adebb859")) {
        self flag::set(#"hash_25ca5532adebb859");
        foreach (ent in a_ents) {
            if (isentity(ent)) {
                ent disconnectpaths();
            }
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 2, eflags: 0x2 linked
// Checksum 0x79049a3c, Offset: 0x20428
// Size: 0x18c
function function_a71fb834(var_6b610739, var_e041976b) {
    if (var_e041976b flag::get(#"hash_25ca5532adebb859")) {
        a_ents = var_e041976b.scene_ents;
        if (isarray(a_ents)) {
            foreach (ent in a_ents) {
                if (isentity(ent)) {
                    ent connectpaths();
                    ent notsolid();
                }
            }
        }
    }
    var_e041976b scene::play("float");
    while (var_6b610739 flag::get(#"hash_cc22690baa3184b")) {
        var_e041976b scene::play("loop");
    }
    var_e041976b thread scene::play("drop");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x88a83dd6, Offset: 0x205c0
// Size: 0xfae
function function_8dba2029(var_b4488d57) {
    level endon(#"end_game");
    var_b4488d57 endon(#"failed", #"defeated");
    a_s_spawns = [];
    foreach (var_36a27d79 in isdefined(var_b4488d57.contentgroups[#"hash_49e2aa83d2171445"]) ? var_b4488d57.contentgroups[#"hash_49e2aa83d2171445"] : []) {
        if (!isdefined(var_36a27d79.num_points)) {
            var_36a27d79.num_points = 20;
        }
        var_36a27d79.num_points = int(var_36a27d79.num_points);
        if (!isdefined(var_36a27d79.var_48d0f926)) {
            var_36a27d79.var_48d0f926 = 128;
        }
        var_36a27d79.var_48d0f926 = float(var_36a27d79.var_48d0f926);
        if (!isdefined(var_36a27d79.radius)) {
            var_36a27d79.radius = 512;
        }
        var_36a27d79.radius = float(var_36a27d79.radius);
        while (true) {
            a_s_points = namespace_85745671::function_e4791424(var_36a27d79.origin, var_36a27d79.num_points, var_36a27d79.var_48d0f926, var_36a27d79.radius, 0);
            if (isdefined(a_s_points) && a_s_points.size > 0) {
                break;
            }
            waitframe(1);
        }
        foreach (s_point in a_s_points) {
            if (!isdefined(a_s_spawns)) {
                a_s_spawns = [];
            } else if (!isarray(a_s_spawns)) {
                a_s_spawns = array(a_s_spawns);
            }
            a_s_spawns[a_s_spawns.size] = s_point;
        }
    }
    var_63685494 = arraycopy(a_s_spawns);
    var_63685494 = array::randomize(var_63685494);
    var_b4488d57 flag::wait_till(#"hash_945cb91246f709e");
    var_68241066 = namespace_679a22ba::function_77be8a83(#"sr_ee_hulk_beast_adds");
    var_5cdb48ca = [];
    var_6ad6ec8f = [];
    var_e1aa4386 = [];
    var_9af85d11 = [];
    var_c5f342a7 = [];
    var_6782fa22 = [];
    var_e8ed4d48 = [#"hash_4f87aa2a203d37d0", #"spawner_bo5_mimic", #"spawner_zm_steiner", #"spawner_bo5_mechz_sr"];
    while (true) {
        function_1eaaceab(var_5cdb48ca);
        if (!var_b4488d57 flag::get(#"hash_1e2734204ab845a2") && var_5cdb48ca.size < 25) {
            var_6017f33e = namespace_679a22ba::function_ca209564(#"sr_ee_hulk_beast_adds", var_68241066);
            var_7ecdee63 = var_6017f33e.var_990b33df;
            if (isdefined(var_7ecdee63)) {
                b_skip = 0;
                var_f8b1c5ab = isinarray(var_e8ed4d48, var_7ecdee63);
                if (var_f8b1c5ab) {
                    function_1eaaceab(var_6ad6ec8f);
                    n_players = function_a1ef346b().size;
                    if (n_players < 1) {
                        n_players = 1;
                    } else if (n_players > 4) {
                        n_players = 4;
                    }
                    switch (n_players) {
                    case 1:
                        var_61c57c53 = 4;
                        break;
                    case 2:
                        var_61c57c53 = 4;
                        break;
                    case 3:
                        var_61c57c53 = 5;
                        break;
                    case 4:
                        var_61c57c53 = 5;
                        break;
                    }
                    if (var_6ad6ec8f.size >= var_61c57c53) {
                        b_skip = 1;
                    }
                    if (!b_skip) {
                        switch (var_7ecdee63) {
                        case #"hash_4f87aa2a203d37d0":
                            function_1eaaceab(var_e1aa4386);
                            switch (n_players) {
                            case 1:
                                var_7cca02dc = 4;
                                break;
                            case 2:
                                var_7cca02dc = 4;
                                break;
                            case 3:
                                var_7cca02dc = 5;
                                break;
                            case 4:
                                var_7cca02dc = 5;
                                break;
                            }
                            b_skip = var_e1aa4386.size >= var_7cca02dc || var_b4488d57 flag::get(#"hash_79e134005f262293");
                            break;
                        case #"spawner_bo5_mimic":
                            function_1eaaceab(var_9af85d11);
                            switch (n_players) {
                            case 1:
                                var_f4778abe = 4;
                                break;
                            case 2:
                                var_f4778abe = 4;
                                break;
                            case 3:
                                var_f4778abe = 5;
                                break;
                            case 4:
                                var_f4778abe = 5;
                                break;
                            }
                            b_skip = var_9af85d11.size >= var_f4778abe || var_b4488d57 flag::get(#"hash_79e134005f262293");
                            break;
                        case #"spawner_zm_steiner":
                            function_1eaaceab(var_c5f342a7);
                            switch (n_players) {
                            case 1:
                                var_ca5cfa1d = 2;
                                break;
                            case 2:
                                var_ca5cfa1d = 2;
                                break;
                            case 3:
                                var_ca5cfa1d = 3;
                                break;
                            case 4:
                                var_ca5cfa1d = 3;
                                break;
                            }
                            b_skip = var_c5f342a7.size >= var_ca5cfa1d || var_b4488d57 flag::get(#"hash_30c3ee099687b5c3");
                            break;
                        case #"spawner_bo5_mechz_sr":
                            function_1eaaceab(var_6782fa22);
                            switch (n_players) {
                            case 1:
                                var_a706eda6 = 2;
                                break;
                            case 2:
                                var_a706eda6 = 2;
                                break;
                            case 3:
                                var_a706eda6 = 3;
                                break;
                            case 4:
                                var_a706eda6 = 3;
                                break;
                            }
                            b_skip = var_6782fa22.size >= var_a706eda6 || var_b4488d57 flag::get(#"hash_528e1a74e9615882");
                            break;
                        }
                    }
                }
                if (!b_skip) {
                    if (var_63685494.size <= 0) {
                        var_63685494 = arraycopy(a_s_spawns);
                        var_63685494 = array::randomize(var_63685494);
                    }
                    s_spawn = undefined;
                    var_d1e85d3 = 0;
                    foreach (s_option in var_63685494) {
                        var_3be9bd30 = function_a1ef346b(undefined, s_option.origin, 1024);
                        if (isarray(var_3be9bd30) && var_3be9bd30.size <= 0) {
                            s_spawn = s_option;
                            break;
                        }
                        var_d1e85d3++;
                        if (var_d1e85d3 % 10 == 0) {
                            waitframe(1);
                        }
                    }
                    if (!isdefined(s_spawn)) {
                        s_spawn = array::random(a_s_spawns);
                        var_63685494 = arraycopy(a_s_spawns);
                        var_63685494 = array::randomize(var_63685494);
                    }
                    if (!var_b4488d57 flag::get(#"hash_1e2734204ab845a2") && isvec(s_spawn.origin)) {
                        v_spawn = getclosestpointonnavmesh(s_spawn.origin, 64);
                        if (isvec(v_spawn)) {
                            var_fff91355 = namespace_85745671::function_9d3ad056(var_7ecdee63, s_spawn.origin, (0, randomfloat(360), 0), undefined, 0);
                            if (isdefined(var_fff91355)) {
                                if (!isdefined(var_5cdb48ca)) {
                                    var_5cdb48ca = [];
                                } else if (!isarray(var_5cdb48ca)) {
                                    var_5cdb48ca = array(var_5cdb48ca);
                                }
                                var_5cdb48ca[var_5cdb48ca.size] = var_fff91355;
                                if (var_f8b1c5ab) {
                                    if (!isdefined(var_6ad6ec8f)) {
                                        var_6ad6ec8f = [];
                                    } else if (!isarray(var_6ad6ec8f)) {
                                        var_6ad6ec8f = array(var_6ad6ec8f);
                                    }
                                    var_6ad6ec8f[var_6ad6ec8f.size] = var_fff91355;
                                    switch (var_7ecdee63) {
                                    case #"hash_4f87aa2a203d37d0":
                                        if (!isdefined(var_e1aa4386)) {
                                            var_e1aa4386 = [];
                                        } else if (!isarray(var_e1aa4386)) {
                                            var_e1aa4386 = array(var_e1aa4386);
                                        }
                                        var_e1aa4386[var_e1aa4386.size] = var_fff91355;
                                        var_211414bb = #"hash_79e134005f262293";
                                        n_cooldown = 5;
                                        break;
                                    case #"spawner_bo5_mimic":
                                        if (!isdefined(var_9af85d11)) {
                                            var_9af85d11 = [];
                                        } else if (!isarray(var_9af85d11)) {
                                            var_9af85d11 = array(var_9af85d11);
                                        }
                                        var_9af85d11[var_9af85d11.size] = var_fff91355;
                                        var_211414bb = #"hash_79e134005f262293";
                                        n_cooldown = 5;
                                        break;
                                    case #"spawner_zm_steiner":
                                        if (!isdefined(var_c5f342a7)) {
                                            var_c5f342a7 = [];
                                        } else if (!isarray(var_c5f342a7)) {
                                            var_c5f342a7 = array(var_c5f342a7);
                                        }
                                        var_c5f342a7[var_c5f342a7.size] = var_fff91355;
                                        var_211414bb = #"hash_30c3ee099687b5c3";
                                        n_cooldown = 30;
                                        break;
                                    case #"spawner_bo5_mechz_sr":
                                        if (!isdefined(var_6782fa22)) {
                                            var_6782fa22 = [];
                                        } else if (!isarray(var_6782fa22)) {
                                            var_6782fa22 = array(var_6782fa22);
                                        }
                                        var_6782fa22[var_6782fa22.size] = var_fff91355;
                                        var_211414bb = #"hash_528e1a74e9615882";
                                        n_cooldown = 30;
                                        break;
                                    }
                                    if (isdefined(var_211414bb) && isdefined(n_cooldown) && n_cooldown > 0) {
                                        var_b4488d57 flag::set(var_211414bb);
                                        var_b4488d57 util::delay(n_cooldown, undefined, &flag::clear, var_211414bb);
                                    }
                                }
                                arrayremovevalue(var_63685494, s_spawn);
                                var_fff91355 thread objective_retrieval::function_bf606a73();
                                namespace_679a22ba::function_266ee075(#"sr_ee_hulk_beast_adds", var_68241066);
                            }
                        }
                    }
                }
            }
        }
        wait(1);
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 3, eflags: 0x2 linked
// Checksum 0x7591b74e, Offset: 0x21578
// Size: 0x55c
function function_e0e5c765(var_b4488d57, var_5beedbc3, var_dbbe30cd) {
    level endon(#"end_game");
    var_b4488d57 endon(#"failed", #"defeated");
    var_5beedbc3 endon(#"death");
    function_90ed61b8(var_b4488d57);
    var_dbbe30cd flag::set(#"active");
    v_trace_start = var_dbbe30cd.origin + (0, 0, 64);
    a_trace = bullettrace(v_trace_start, v_trace_start - (0, 0, 256), 0, var_dbbe30cd);
    v_center = a_trace[#"position"];
    if (isdefined(v_center)) {
        v_offset = v_center + (0, 0, 250);
        v_angles = (270, 0, 0);
        var_dbbe30cd fx::play(#"hash_3ccd156dce20e5c9", v_offset, v_angles, #"hash_35b801f2cfc15551");
        var_dbbe30cd.var_f5c75ddf = util::spawn_model(#"tag_origin", v_offset, v_angles);
        var_dbbe30cd.var_f5c75ddf clientfield::set("" + #"hash_723ddf6790b39408", 5);
    }
    level thread function_1de45527(var_dbbe30cd);
    level thread function_fe64262f(var_dbbe30cd);
    playsoundatposition(#"hash_468ecd2f2269a7d0", var_dbbe30cd.origin);
    var_8fc81e63 = gettime();
    var_5beedbc3 scene::play(#"aib_t9_zm_tmpst_boss_fight", "aether_bolt_start", var_5beedbc3);
    var_5beedbc3 thread scene::play(#"aib_t9_zm_tmpst_boss_fight", "aether_bolt_loop", var_5beedbc3);
    n_time_remaining = 5 - (gettime() - var_8fc81e63) / 1000;
    if (n_time_remaining > 0) {
        wait(n_time_remaining);
    }
    if (isdefined(var_dbbe30cd.var_f5c75ddf)) {
        var_dbbe30cd.var_f5c75ddf playsound(#"hash_95684428de4a916");
    }
    wait(1);
    var_dbbe30cd flag::clear(#"active");
    var_dbbe30cd notify(#"hash_35b801f2cfc15551");
    if (isdefined(var_dbbe30cd.var_f5c75ddf)) {
        var_dbbe30cd.var_f5c75ddf delete();
    }
    if (isdefined(v_center)) {
        playfx(#"hash_594007ffcf5839a0", v_center, anglestoforward((270, 0, 0)), anglestoup((270, 0, 0)));
    }
    playrumbleonposition(#"hash_23d2bd226d92f76b", var_dbbe30cd.origin);
    foreach (e_player in function_a1ef346b(undefined, var_dbbe30cd.origin, 512)) {
        if (zm_utility::is_player_valid(e_player)) {
            e_player dodamage(666, var_dbbe30cd.origin);
        }
    }
    var_5beedbc3 scene::play(#"aib_t9_zm_tmpst_boss_fight", "aether_bolt_end", var_5beedbc3);
    var_5beedbc3 thread scene::play(#"aib_t9_zm_tmpst_boss_fight", "idle", var_5beedbc3);
    waitframe(1);
    level thread function_51bcd8c6(var_b4488d57, var_5beedbc3, #"bolt");
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x311c1754, Offset: 0x21ae0
// Size: 0x224
function function_1de45527(var_dbbe30cd) {
    var_56b52ecb = [];
    while (var_dbbe30cd flag::get(#"active")) {
        foreach (e_player in function_a1ef346b()) {
            if (isdefined(e_player.var_749332e7)) {
                if (distancesquared(var_dbbe30cd.origin, e_player.origin) <= sqr(512)) {
                    if (!isinarray(var_56b52ecb, e_player)) {
                        if (!isdefined(var_56b52ecb)) {
                            var_56b52ecb = [];
                        } else if (!isarray(var_56b52ecb)) {
                            var_56b52ecb = array(var_56b52ecb);
                        }
                        var_56b52ecb[var_56b52ecb.size] = e_player;
                    }
                    continue;
                }
                if (isinarray(var_56b52ecb, e_player)) {
                    arrayremovevalue(var_56b52ecb, e_player);
                }
            }
        }
        waitframe(1);
    }
    foreach (var_fca542e in var_56b52ecb) {
        if (isdefined(var_fca542e.var_749332e7)) {
        }
    }
}

// Namespace namespace_1b312da5/namespace_1b312da5
// Params 1, eflags: 0x2 linked
// Checksum 0x14e036e0, Offset: 0x21d10
// Size: 0x60
function function_fe64262f(var_dbbe30cd) {
    var_dbbe30cd endon(#"hash_35b801f2cfc15551");
    while (true) {
        playrumbleonposition(#"hash_10e919ef3cc3ff6", var_dbbe30cd.origin);
        wait(0.2);
    }
}

/#

    // Namespace namespace_1b312da5/namespace_1b312da5
    // Params 0, eflags: 0x0
    // Checksum 0x1f2548e9, Offset: 0x21d78
    // Size: 0xd4
    function devgui_setup() {
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        zm_devgui::add_custom_devgui_callback(&function_6361fb61);
    }

    // Namespace namespace_1b312da5/namespace_1b312da5
    // Params 1, eflags: 0x0
    // Checksum 0xe9df3ed3, Offset: 0x21e58
    // Size: 0xd2
    function function_6361fb61(str_cmd) {
        if (!isdefined(str_cmd)) {
            return;
        }
        switch (str_cmd) {
        case #"hash_1a1d15f1da1fd948":
            function_37ef5d65();
            break;
        case #"hash_fd941f96de7919":
        case #"hash_239fbfa8fbf645a":
        case #"hash_17949ccf213e0dfa":
        case #"hash_4eac357749804545":
        case #"hash_587b8bb1b413b542":
        case #"hash_6132b6246336c917":
            function_49fca7d8(str_cmd);
            break;
        }
    }

    // Namespace namespace_1b312da5/namespace_1b312da5
    // Params 0, eflags: 0x0
    // Checksum 0x8bb53652, Offset: 0x21f38
    // Size: 0x32
    function function_37ef5d65() {
        var_b4488d57 = level.var_b4488d57;
        if (!isdefined(var_b4488d57)) {
            return;
        }
        var_b4488d57.var_9d7dfc4c = undefined;
    }

    // Namespace namespace_1b312da5/namespace_1b312da5
    // Params 1, eflags: 0x0
    // Checksum 0xa5aa659f, Offset: 0x21f78
    // Size: 0x3e
    function function_49fca7d8(str_state) {
        var_b4488d57 = level.var_b4488d57;
        if (!isdefined(var_b4488d57)) {
            return;
        }
        var_b4488d57.var_9d7dfc4c = str_state;
    }

#/
