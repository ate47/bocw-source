// Atian COD Tools GSC CW decompiler test
#using scripts\zm\zm_gold_vo.gsc;
#using scripts\zm\zm_gold_util.gsc;
#using scripts\zm_common\zm_vo.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_power.gsc;
#using scripts\zm_common\zm_sq.gsc;
#using scripts\zm_common\zm_unitrigger.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\animation_shared.gsc;

#namespace zm_gold_pap_quest;

// Namespace zm_gold_pap_quest/zm_gold_pap_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x39da63b0, Offset: 0x360
// Size: 0x1c4
function init() {
    clientfield::register("world", "" + #"hash_666ad912cb4541f1", 16000, 1, "int");
    clientfield::register("world", "" + #"hash_18c31f1201f7c968", 16000, 1, "counter");
    clientfield::register("world", "" + #"hash_4d477a055c04e499", 16000, 1, "counter");
    level.var_ce45839f = #"pap_quest_completed";
    level.var_2645bbc0 = 0;
    function_675b2881();
    level thread function_2be12d47();
    level thread function_4313bea3();
    level thread function_34427db();
    level thread function_5a72edf0();
    callback::on_start_gametype(&function_ed6d34fb);
    callback::add_callback(#"hash_594217387367ebb4", &function_d81240c3);
    level thread function_aaf8fd90();
}

// Namespace zm_gold_pap_quest/zm_gold_pap_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x5dd985fb, Offset: 0x530
// Size: 0xb4
function function_d81240c3() {
    callback::remove_callback(#"hash_594217387367ebb4", &function_d81240c3);
    zm_sq::objective_complete(#"hash_42ebe8f41ed5edc8");
    zm_sq::objective_complete(#"hash_968256af57af0db");
    zm_sq::objective_complete(#"hash_69cca9825b7edc33");
    zm_sq::objective_complete(#"hash_2b663a5dd7beb565");
}

// Namespace zm_gold_pap_quest/zm_gold_pap_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x15081dea, Offset: 0x5f0
// Size: 0x6c
function function_aaf8fd90() {
    level endon(#"end_game");
    level flag::wait_till(#"all_players_spawned");
    level clientfield::increment("" + #"hash_4d477a055c04e499");
}

// Namespace zm_gold_pap_quest/zm_gold_pap_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xc76de34b, Offset: 0x668
// Size: 0x1a8
function function_34427db() {
    level endon(#"end_game");
    hidemiscmodels("mdl_env_omega_defence_01");
    hidemiscmodels("mdl_env_omega_defence_02");
    hidemiscmodels("mdl_env_omega_defence_03");
    level thread function_1ff92a8e();
    while (true) {
        waitresult = level waittill(#"power_on1", #"power_on2", #"power_on3");
        switch (waitresult._notify) {
        case #"power_on1":
            str_models = "mdl_env_omega_defence_01";
            break;
        case #"power_on2":
            str_models = "mdl_env_omega_defence_02";
            break;
        case #"power_on3":
            str_models = "mdl_env_omega_defence_03";
            break;
        }
        if (level flag::get(waitresult._notify)) {
            showmiscmodels(str_models);
            continue;
        }
        hidemiscmodels(str_models);
    }
}

// Namespace zm_gold_pap_quest/zm_gold_pap_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x60bfe00b, Offset: 0x818
// Size: 0x98
function function_1ff92a8e() {
    hidemiscmodels("mdl_env_village");
    while (true) {
        level flag::wait_till("power_on");
        showmiscmodels("mdl_env_village");
        level flag::wait_till_clear("power_on");
        hidemiscmodels("mdl_env_village");
    }
}

// Namespace zm_gold_pap_quest/zm_gold_pap_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x108290e2, Offset: 0x8b8
// Size: 0x134
function function_4313bea3() {
    level endon(#"end_game");
    var_9febe337 = struct::get("pap_machine_pos", "targetname");
    var_695c9ed4 = util::spawn_model(#"hash_7336039cd7e006a4", var_9febe337.origin, var_9febe337.angles);
    var_a5927988 = struct::get("pap_prompt_pos", "targetname");
    var_5bf94905 = var_a5927988 zm_unitrigger::create(#"zombie/need_power", 63);
    level flag::wait_till(#"pap_quest_completed");
    var_695c9ed4 thread util::delayed_delete(0.5);
    zm_unitrigger::unregister_unitrigger(var_5bf94905);
}

// Namespace zm_gold_pap_quest/zm_gold_pap_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x2a88a665, Offset: 0x9f8
// Size: 0x9c
function function_2be12d47() {
    level.var_9674d6e2 = struct::get("omega_soldier", "targetname");
    scene::add_scene_func("aib_t9_zm_vign_rav_seated_01", &function_5a6cc369, "seated_loop_1");
    level thread scene::play("aib_t9_zm_vign_rav_seated_01", "seated_loop_1");
    level thread function_31abb662();
}

// Namespace zm_gold_pap_quest/zm_gold_pap_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x163875d7, Offset: 0xaa0
// Size: 0xcc
function function_5a6cc369(a_ents) {
    level.ravenov = a_ents[#"ravenov"];
    level.ravenov_chair = a_ents[#"ravenov_chair"];
    level.var_3ebc9062 = array(level.ravenov, level.ravenov_chair);
    level.ravenov.targetname = "ravenov";
    level.ravenov_chair.targetname = "ravenov_chair";
    scene::remove_scene_func("aib_t9_zm_vign_rav_seated_01", &function_5a6cc369, "seated_loop_1");
}

// Namespace zm_gold_pap_quest/zm_gold_pap_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x328c5f17, Offset: 0xb78
// Size: 0x29c
function function_31abb662() {
    level endon(#"pap_quest_completed");
    level flag::wait_till("match_start_vo_done");
    level thread function_63193c65();
    if (level.round_number == 1) {
        s_waitresult = level waittill(#"end_of_round", #"hash_5cdcf4e238ae5f1f");
    }
    level.ravenov scene::stop(level.ravenov.current_scene);
    level.ravenov_chair animation::stop();
    if (!level flag::get("enable_firebase_zone")) {
        if (s_waitresult._notify === #"hash_5cdcf4e238ae5f1f") {
            zm_utility::function_d729de6a(1, [#"zone_atrium"]);
        }
        level flag::set(#"hash_7b872eebd26623c5");
        var_dbe98535 = randomintrange(1, 6);
        level thread zm_vo::function_7622cb70(#"hash_3afb47d4b7211560" + var_dbe98535);
        level scene::play("aib_t9_zm_vign_cust_frbz_rav_vignette_01_alt_0" + var_dbe98535, level.var_3ebc9062);
        level scene::stop("aib_t9_zm_vign_cust_frbz_rav_vignette_01_alt_0" + var_dbe98535);
        level.ravenov_chair animation::stop();
        zm_utility::function_d729de6a(0, [#"zone_atrium"]);
    }
    level thread scene::play("aib_t9_zm_vign_rav_seated_01", "seated_loop_1", level.var_3ebc9062);
    level flag::clear(#"hash_7b872eebd26623c5");
}

// Namespace zm_gold_pap_quest/zm_gold_pap_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x4d3f8574, Offset: 0xe20
// Size: 0x54
function function_a79d2a2d(*str_notify) {
    level.var_9674d6e2 zm_unitrigger::unregister_unitrigger(level.var_9674d6e2.s_unitrigger);
    level flag::clear(#"ravenov_interact_vo_playing");
}

// Namespace zm_gold_pap_quest/zm_gold_pap_quest
// Params 0, eflags: 0x6 linked
// Checksum 0x88ed049e, Offset: 0xe80
// Size: 0x37c
function private function_63193c65() {
    level endoncallback(&function_a79d2a2d, #"hash_2ef294d4837fda33");
    level.var_9674d6e2 zm_unitrigger::function_fac87205(&function_db073473, 64);
    if (level.round_number == 1) {
        level notify(#"hash_5cdcf4e238ae5f1f");
        waitframe(1);
        level flag::wait_till_clear(#"hash_7b872eebd26623c5");
        wait(5);
        level.var_9674d6e2 zm_unitrigger::function_fac87205(&function_db073473, 64);
    }
    zm_gold_vo::function_e0948550();
    level.ravenov zm_vo::function_d6f8bbd9(#"hash_25d5a996ae1d37cb");
    level.ravenov zm_vo::function_d6f8bbd9(#"hash_25d5a896ae1d3618");
    zm_gold_vo::function_767d8cf3();
    wait(5);
    level.var_9674d6e2 zm_unitrigger::function_fac87205(&function_db073473, 64);
    zm_gold_vo::function_e0948550();
    level.ravenov zm_vo::function_d6f8bbd9(#"hash_389b4390cad9a65c");
    level.ravenov zm_vo::function_d6f8bbd9(#"hash_389b4490cad9a80f");
    zm_gold_vo::function_767d8cf3();
    wait(5);
    level.var_9674d6e2 zm_unitrigger::function_fac87205(&function_db073473, 64);
    zm_gold_vo::function_e0948550();
    level.ravenov zm_vo::function_d6f8bbd9(#"hash_2a0aa41936ba305");
    level.ravenov zm_vo::function_d6f8bbd9(#"hash_2a0a941936ba152");
    zm_gold_vo::function_767d8cf3();
    wait(5);
    level.var_9674d6e2 zm_unitrigger::function_fac87205(&function_db073473, 64);
    zm_gold_vo::function_e0948550();
    level.ravenov zm_vo::function_d6f8bbd9(#"hash_7135542825eb95c6");
    zm_gold_vo::function_767d8cf3();
    wait(5);
    level.var_9674d6e2 zm_unitrigger::function_fac87205(&function_db073473, 64);
    zm_gold_vo::function_e0948550();
    level.ravenov zm_vo::function_d6f8bbd9(#"hash_d3f91bb458d42df");
    zm_gold_vo::function_767d8cf3();
}

// Namespace zm_gold_pap_quest/zm_gold_pap_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xa712d120, Offset: 0x1208
// Size: 0x78
function function_db073473(*e_player) {
    if (level flag::get(#"hash_3e765c26047c9f54") || level flag::get(#"hash_7b872eebd26623c5")) {
        return false;
    }
    self sethintstring(#"hash_78573012d7272fae");
    return true;
}

// Namespace zm_gold_pap_quest/zm_gold_pap_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xdcca97b, Offset: 0x1288
// Size: 0x124
function function_675b2881() {
    level zm_sq::register(#"hash_29e235392e9e49f8", #"hash_4351d45c325720cc", #"hash_3cf982e6179123fe", &function_da010d65, &function_c3ff2857);
    level zm_sq::register(#"hash_29e235392e9e49f8", #"hash_2a1f2228a0ffb82e", #"hash_3cf981e61791224b", &function_1574da8d, &function_40d62928);
    level zm_sq::register(#"hash_29e235392e9e49f8", #"hash_3163e5e53e7ce6fc", #"hash_3cf980e617912098", &function_9855e2a1, &function_db63534f);
}

// Namespace zm_gold_pap_quest/zm_gold_pap_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xb65f55e4, Offset: 0x13b8
// Size: 0x4c
function function_5a72edf0() {
    level flag::wait_till("start_zombie_round_logic");
    level zm_sq::start(#"hash_29e235392e9e49f8", 1);
}

// Namespace zm_gold_pap_quest/zm_gold_pap_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xd3883e9f, Offset: 0x1410
// Size: 0x2fc
function function_da010d65(b_skipped) {
    level endon(#"end_game", #"hash_4351d45c325720cc" + "_ended_early", #"hash_3e765c26047c9f54");
    level.var_2645bbc0 = 2;
    if (b_skipped || zm_utility::function_c4b020f8()) {
        level clientfield::increment("" + #"hash_18c31f1201f7c968", 1);
        return;
    }
    zm_sq::function_266d66eb(#"hash_68f0c1062d24257e", undefined, undefined, #"hash_47909976fbca363c", #"hash_42ebe8f41ed5edc8", undefined, &zm_gold_util::function_13ebb331, "vol_player_in_village");
    var_5c96cc94 = struct::get_array("fasttravel_trigger", "targetname");
    foreach (var_f4560d61 in var_5c96cc94) {
        if (isdefined(var_f4560d61) && var_f4560d61.script_string === "firebase") {
            zm_sq::function_266d66eb(#"hash_68f0c1062d24257e", var_f4560d61, undefined, undefined, #"hash_968256af57af0db", undefined, &zm_gold_util::function_13ebb331, "vol_player_in_village");
            break;
        }
    }
    if (isdefined(level.var_9674d6e2)) {
        zm_sq::function_266d66eb(#"hash_3fa48a6ce34459eb", level.var_9674d6e2, undefined, undefined, #"hash_69cca9825b7edc33", undefined, &zm_gold_util::function_13ebb331, "vol_player_in_village");
    }
    level thread function_a2854e57();
    level flag::wait_till("enable_firebase_zone");
    zm_sq::objective_complete(#"hash_69cca9825b7edc33");
    level clientfield::increment("" + #"hash_18c31f1201f7c968", 1);
}

// Namespace zm_gold_pap_quest/zm_gold_pap_quest
// Params 2, eflags: 0x2 linked
// Checksum 0x7b85a46f, Offset: 0x1718
// Size: 0xbc
function function_c3ff2857(b_skipped, var_19e802fa) {
    if (!level flag::get(#"hash_3e765c26047c9f54") && (b_skipped || var_19e802fa)) {
        level flag::set(#"hash_31d6edbd6e9f7243");
        level.var_2645bbc0 = 2;
        zm_sq::objective_complete(#"hash_69cca9825b7edc33");
        zm_sq::objective_complete(#"hash_42ebe8f41ed5edc8");
    }
}

// Namespace zm_gold_pap_quest/zm_gold_pap_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xe0ef4ec9, Offset: 0x17e0
// Size: 0x170
function function_ed6d34fb() {
    if (!level flag::get("open_fasttravel_to_hill")) {
        level flag::set("open_fasttravel_to_hill");
        var_73524bb4 = getentarray("portal_fx", "targetname");
        foreach (portal_fx in var_73524bb4) {
            portal_fx.var_2c517d4c = util::spawn_model("tag_origin", portal_fx.origin, portal_fx.angles);
            level clientfield::set("" + #"hash_666ad912cb4541f1", 1);
            playsoundatposition(#"hash_5f27432854b069c9", portal_fx.var_2c517d4c.origin);
        }
    }
}

// Namespace zm_gold_pap_quest/zm_gold_pap_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xdc10ddf6, Offset: 0x1958
// Size: 0x34
function function_e7aacbc9() {
    level clientfield::set("" + #"hash_666ad912cb4541f1", 0);
}

// Namespace zm_gold_pap_quest/zm_gold_pap_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x215e0301, Offset: 0x1998
// Size: 0x142
function function_1574da8d(b_skipped) {
    level endon(#"end_game", #"hash_2a1f2228a0ffb82e" + "_ended_early", #"hash_3e765c26047c9f54");
    if (b_skipped) {
        return;
    }
    zm_sq::objective_complete(#"hash_42ebe8f41ed5edc8");
    function_b8854133();
    level flag::wait_till_all(array("power_on1", "power_on2", "power_on3"));
    if (level.var_9583b85c < level.round_number) {
        level.var_9583b85c = level.round_number + 1;
    }
    level.var_2645bbc0 = 3;
    zm_sq::objective_complete(#"hash_968256af57af0db");
    zm_sq::objective_complete(#"hash_2b663a5dd7beb565");
    wait(1);
}

// Namespace zm_gold_pap_quest/zm_gold_pap_quest
// Params 2, eflags: 0x2 linked
// Checksum 0x6f71bd18, Offset: 0x1ae8
// Size: 0x13c
function function_40d62928(b_skipped, var_19e802fa) {
    if (!level flag::get(#"hash_3e765c26047c9f54") && (b_skipped || var_19e802fa)) {
        zm_power::turn_power_on_and_open_doors(1);
        zm_power::turn_power_on_and_open_doors(2);
        zm_power::turn_power_on_and_open_doors(3);
        foreach (control_point in level.var_cc43b632) {
            control_point = 2;
        }
        level.var_2645bbc0 = 3;
        zm_sq::objective_complete(#"hash_2b663a5dd7beb565");
    }
}

// Namespace zm_gold_pap_quest/zm_gold_pap_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x21512211, Offset: 0x1c30
// Size: 0x1f4
function function_b8854133() {
    if (level.var_2645bbc0 === 1) {
        zm_sq::function_266d66eb(#"hash_3fa48a6ce34459eb", level.var_9674d6e2, undefined, #"hash_32932aa868c8519d", #"hash_69cca9825b7edc33", undefined, &zm_gold_util::function_13ebb331, "vol_player_in_village");
        return;
    }
    if (level.var_2645bbc0 === 2) {
        foreach (control_point in level.var_cc43b632) {
            if (control_point.var_269ad176 === 0) {
                zm_sq::function_266d66eb(#"hash_3fa48b6ce3445b9e", control_point.var_af9beb09, undefined, #"hash_329327a868c84c84", #"hash_2b663a5dd7beb565", undefined, &zm_gold_util::function_13ebb331, "vol_player_in_firebase");
            }
        }
        return;
    }
    if (level.var_2645bbc0 === 3) {
        zm_sq::function_266d66eb(#"hash_3fa48c6ce3445d51", level.var_9674d6e2, undefined, #"hash_329328a868c84e37", #"hash_69cca9825b7edc33", undefined, &zm_gold_util::function_13ebb331, "vol_player_in_village");
    }
}

// Namespace zm_gold_pap_quest/zm_gold_pap_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x273113a2, Offset: 0x1e30
// Size: 0x2f4
function function_9855e2a1(b_skipped) {
    level endon(#"end_game", #"hash_3163e5e53e7ce6fc" + "_ended_early", #"hash_3e765c26047c9f54");
    if (b_skipped || zm_utility::function_c4b020f8()) {
        return;
    }
    var_5c96cc94 = struct::get_array("fasttravel_trigger", "targetname");
    foreach (var_f4560d61 in var_5c96cc94) {
        if (isdefined(var_f4560d61) && var_f4560d61.script_string === "village") {
            zm_sq::function_266d66eb(#"hash_68f0c1062d24257e", var_f4560d61, undefined, undefined, #"hash_968256af57af0db", undefined, &zm_gold_util::function_13ebb331, "vol_player_in_firebase");
            break;
        }
    }
    zm_sq::function_266d66eb(#"hash_3fa48c6ce3445d51", level.var_9674d6e2, undefined, #"hash_329328a868c84e37", #"hash_69cca9825b7edc33", undefined, &zm_gold_util::function_13ebb331, "vol_player_in_village");
    while (true) {
        foreach (player in function_a1ef346b()) {
            var_cf81848f = distance2d(player.origin, level.var_9674d6e2.origin);
            if (var_cf81848f <= 350) {
                function_e361ce1b();
                zm_sq::objective_complete(#"hash_968256af57af0db");
                zm_sq::objective_complete(#"hash_69cca9825b7edc33");
                return;
            }
        }
        wait(1);
    }
}

// Namespace zm_gold_pap_quest/zm_gold_pap_quest
// Params 2, eflags: 0x2 linked
// Checksum 0xc4ddd2c4, Offset: 0x2130
// Size: 0x9c
function function_db63534f(b_skipped, var_19e802fa) {
    if (!level flag::get(#"hash_3e765c26047c9f54") && (b_skipped || var_19e802fa)) {
        function_e361ce1b();
        zm_sq::objective_complete(#"hash_968256af57af0db");
        zm_sq::objective_complete(#"hash_69cca9825b7edc33");
    }
}

// Namespace zm_gold_pap_quest/zm_gold_pap_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xebb2005d, Offset: 0x21d8
// Size: 0x74
function function_e361ce1b() {
    level flag::set(#"pap_quest_completed");
    level.var_2645bbc0 = 4;
    function_d18f9441();
    zm_unitrigger::unregister_unitrigger(level.var_a02e68a7);
    level thread function_9d367ce1();
}

// Namespace zm_gold_pap_quest/zm_gold_pap_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xf7c0210f, Offset: 0x2258
// Size: 0x128
function function_9d367ce1() {
    level endon(#"end_game");
    while (true) {
        level flag::wait_till_clear_any([#"power_on1", #"power_on2", #"power_on3"]);
        level flag::set(#"disable_weapon_machine");
        level flag::wait_till_all([#"power_on1", #"power_on2", #"power_on3"]);
        level flag::clear(#"disable_weapon_machine");
    }
}

// Namespace zm_gold_pap_quest/zm_gold_pap_quest
// Params 0, eflags: 0x6 linked
// Checksum 0xc889dacc, Offset: 0x2388
// Size: 0x126
function private function_a2854e57() {
    level endon(#"enable_firebase_zone", #"hash_3e765c26047c9f54");
    while (true) {
        a_players = function_a1ef346b();
        foreach (player in a_players) {
            if (distancesquared(player.origin, level.var_9674d6e2.origin) <= 90000) {
                zm_sq::objective_complete(#"hash_69cca9825b7edc33");
                break;
            }
        }
        wait(2);
    }
}

// Namespace zm_gold_pap_quest/zm_gold_pap_quest
// Params 0, eflags: 0x6 linked
// Checksum 0x7d960afc, Offset: 0x24b8
// Size: 0x108
function private function_d18f9441() {
    var_63a065c3 = struct::get("pap_prompt_pos", "targetname");
    a_players = function_a1ef346b();
    foreach (player in a_players) {
        if (distancesquared(var_63a065c3.origin, player.origin) < 250000) {
            player function_bc82f900(#"hash_9547d6aac0a0ad3");
        }
    }
}

