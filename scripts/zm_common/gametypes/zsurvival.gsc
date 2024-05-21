// Atian COD Tools GSC CW decompiler test
#using script_2165c026c30690da;
#using script_3cee888ba45292c8;
#using script_2fe8f3019ef027c7;
#using script_4dca2ab120688fc;
#using script_69d94a292b5a26e3;
#using script_4d1e366b77f0b4b;
#using script_35b8a6927c851193;
#using script_6dd97fb55af61274;
#using script_2cc90e725816de14;
#using script_20dc0f45753888c7;
#using script_789f2367a00401d8;
#using script_3e57cc1a9084fdd6;
#using script_5a0c35b811c39bea;
#using script_5961deb533dad533;
#using script_62caa307a394c18c;
#using scripts\zm_common\gametypes\zm_gametype.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_score.gsc;
#using scripts\zm_common\zm_powerups.gsc;
#using scripts\zm_common\zm_magicbox.gsc;
#using script_3357acf79ce92f4b;
#using script_3411bb48d41bd3b;
#using script_ba80d805da91a0b;
#using script_654423edfcdca394;
#using script_5ab5be2e8aaf56f8;
#using script_2125dd4d7e4788a5;
#using script_31de501a61836a3a;
#using script_5dd920e119223a7c;
#using script_6fc1886ffe877d6;
#using script_7b1cd3908a825fdd;
#using script_2593b2b2f6452617;
#using scripts\zm_common\objective_manager.gsc;
#using script_64ff5579f12454a8;
#using script_66b094f566d08b1c;
#using script_3b2abb7986f4ae7c;
#using script_7f978b097b77bf98;
#using script_40859a8b9c8becd;
#using script_18723fb52cbb6224;
#using script_194827006298caa3;
#using script_5b1e7b7ff6869723;
#using script_5b2a3c052bf17d0e;
#using script_59212975210c5bf2;
#using script_34328dad68218b76;
#using script_5ff9bbe37f3310b0;
#using script_1cd534c7e79b126f;
#using script_556db1e330468414;
#using script_1e72319526fef936;
#using script_5ff04d724da1c002;
#using script_6b2d896ac43eb90;
#using script_32b18d9fb454babf;
#using script_fec6e2b970dd864;
#using script_2618e0f3e5e11649;
#using scripts\zm_common\zm_behavior.gsc;
#using script_13d5d0aa9140d362;
#using script_6155d71e1c9a57eb;
#using script_215d7818c548cb51;
#using script_5725a8301835a95d;
#using script_6fc2be37feeb317b;
#using script_7a5293d92c61c788;
#using script_4ccfb58a9443a60b;
#using script_12538a87a80a2978;
#using script_34ab99a4ca1a43d;
#using script_355c6e84a79530cb;
#using script_176597095ddfaa17;
#using script_3751b21462a54a7d;
#using script_16b1b77a76492c6a;
#using script_6708b08fd2751700;
#using script_19367cd29a4485db;
#using script_113dd7f0ea2a1d4f;
#using scripts\zm_common\zm_utility_zsurvival.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_vo.gsc;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm_player.gsc;
#using script_437ce686d29bb81b;
#using scripts\zm_common\zm_destination_manager.gsc;
#using scripts\zm_common\zm_intel.gsc;
#using scripts\zm_common\ai\zm_ai_utility.gsc;
#using scripts\zm_common\zm.gsc;
#using script_18077945bb84ede7;
#using scripts\zm_common\gametypes\globallogic_ui.gsc;
#using scripts\zm_common\gametypes\globallogic.gsc;
#using script_41b18a77720c5395;
#using scripts\weapons\weapon_utils.gsc;
#using scripts\core_common\aat_shared.gsc;
#using script_45fdb6cec5580007;
#using script_1cc417743d7c262d;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\content_manager.gsc;
#using scripts\core_common\item_world.gsc;
#using script_1caf36ff04a85ff6;
#using scripts\core_common\item_inventory.gsc;
#using scripts\core_common\dev_shared.gsc;
#using scripts\core_common\loadout_shared.gsc;
#using scripts\core_common\system_shared.gsc;
#using script_6167e26342be354b;
#using script_44b0b8420eabacad;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\music_shared.gsc;
#using scripts\core_common\math_shared.gsc;
#using scripts\core_common\player\player_free_fall.gsc;
#using scripts\core_common\laststand_shared.gsc;
#using script_67ce8e728d8f37ba;
#using scripts\core_common\hud_shared.gsc;
#using scripts\core_common\gamestate.gsc;
#using scripts\core_common\flag_shared.gsc;
#using script_60a02fbff0e39512;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\struct.gsc;

#namespace zsurvival;

// Namespace zsurvival/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x83eddf0d, Offset: 0x970
// Size: 0x123c
function event_handler[gametype_init] main(*eventstruct) {
    register_clientfields = 0;
    println("super_sprint");
    foreach (map in namespace_18bbc38e::function_3cdae979()) {
        fields = getmapfields(map.name);
        var_d0972d81 = !sessionmodeisonlinegame() && (!isdefined(fields.var_694983ad) || getdvarint(fields.var_694983ad, 0));
        var_bb63d618 = sessionmodeisonlinegame() && is_true(getgametypesetting(map.gts));
        /#
            println(map.name + "<unknown string>");
            println("<unknown string>" + (var_d0972d81 ? "<unknown string>" : "<unknown string>") + "<unknown string>" + (isdefined(fields.var_694983ad) ? function_9e72a96(fields.var_694983ad) : "<unknown string>") + "<unknown string>" + (isdefined(fields.var_cf58b6a2) ? "<unknown string>" : is_true(getdvarint(fields.var_694983ad, 0)) ? "<unknown string>" : "<unknown string>"));
            println("<unknown string>" + (var_bb63d618 ? "<unknown string>" : "<unknown string>") + "<unknown string>" + function_9e72a96(map.gts) + "<unknown string>" + (is_true(getgametypesetting(map.gts)) ? "<unknown string>" : "<unknown string>"));
        #/
        if (util::get_map_name() === map.name && (var_bb63d618 || var_d0972d81)) {
            register_clientfields = 1;
            break;
        }
    }
    /#
        if (!getdvarint(#"hash_1613782fc04deff", 0)) {
            register_clientfields = 1;
        }
    #/
    if (is_true(getgametypesetting(#"hash_1e8998fd7f271bb7"))) {
        setgametypesetting(#"autoheal", 0);
        setgametypesetting(#"zmstartingweaponenabled", 0);
        setgametypesetting(#"hash_2d9172b182d08475", 1);
        setgametypesetting(#"hash_a564dde6ee3c657", 0);
        setgametypesetting(#"hash_241e17e13da23de2", 0);
        setgametypesetting(#"disablecompass", 1);
        level.var_3a2ad19b = [#"item_zmquest_sr_ltm_food_banana", #"item_zmquest_sr_ltm_food_burger", #"item_zmquest_sr_ltm_food_canned_corn", #"item_zmquest_sr_ltm_food_cauliflower", #"item_zmquest_sr_ltm_food_cheese", #"item_zmquest_sr_ltm_food_chicken_soup", #"item_zmquest_sr_ltm_food_chips", #"item_zmquest_sr_ltm_food_cookie", #"item_zmquest_sr_ltm_food_croissant", #"item_zmquest_sr_ltm_food_pizza_full", #"item_zmquest_sr_ltm_food_pizza_slice", #"item_zmquest_sr_ltm_food_poutine"];
    }
    level.is_survival = 1;
    level.aat_in_use = 1;
    level.var_28ebc1e8 = 1;
    level.player_out_of_playable_area_monitor = 0;
    level.var_fdba6f4b = &function_889c6660;
    level.var_9602c8b2 = &function_5d7d3382;
    level.random_pandora_box_start = 1;
    level.var_3f945d0d = 1;
    level.var_f3901984 = undefined;
    level.var_8179368e = &function_452e5ad6;
    setdvar(#"hash_34cae673a047c202", 1);
    level.var_ea32773 = &on_end_game;
    level.var_68e3cf24 = 1;
    zm_intel::function_88645994(#"zmintel_list_survival_document_drops", #"zmintel_list_survival_darkaether_computer", #"zmintel_list_survival_radio_transmissions_requiem", #"zmintel_list_survival_radio_transmissions_maxis", #"zmintel_list_survival_radio_transmissions_omega", #"zmintel_list_survival_omega_intel_all", #"zmintel_list_survival_darkaether_intel_all", #"zmintel_list_survival_maxis_intel_all", #"zmintel_list_survival_requiem_intel_all");
    val::register("b_ignore_fow_damage", 1);
    val::default_value("b_ignore_fow_damage", 0);
    level thread function_9663b13b();
    /#
        level.var_37778628 = &function_37778628;
        level thread namespace_ce1f29cc::function_9b928fad();
        level function_4ddaff8e();
    #/
    level.var_72a4153b = 0;
    if (register_clientfields) {
        clientfield::register_clientuimodel("hudItems.streamerLoadFraction", 1, 5, "float", 1);
        clientfield::register_clientuimodel("hudItems.wzLoadFinished", 1, 1, "int", 1);
        clientfield::function_5b7d846d("hudItems.warzone.reinsertionPassengerCount", 1, 7, "int");
        clientfield::register_clientuimodel("hudItems.alivePlayerCount", 1, 7, "int", 0);
        clientfield::register_clientuimodel("hudItems.aliveTeammateCount", 1, 7, "int", 1);
        clientfield::register_clientuimodel("hudItems.spectatorsCount", 1, 7, "int", 1);
        clientfield::register_clientuimodel("hudItems.playerKills", 1, 9, "int", 0);
        clientfield::register_clientuimodel("hudItems.playerCleanUps", 1, 7, "int", 0);
        clientfield::register_clientuimodel("presence.modeparam", 1, 7, "int", 1);
        clientfield::register_clientuimodel("hudItems.showReinsertionPassengerCount", 1, 1, "int", 0);
        clientfield::register_clientuimodel("hudItems.playerLivesRemaining", 1, 3, "int");
        clientfield::register_clientuimodel("hudItems.playerCanRedeploy", 1, 1, "int");
        clientfield::register_clientuimodel("hudItems.zombiesSurvivalRespawn", 1, 1, "int");
        clientfield::function_5b7d846d("hudItems.warzone.collapse", 1, 21, "int");
        clientfield::function_5b7d846d("hudItems.warzone.waveRespawnTimer", 1, 21, "int");
        clientfield::function_5b7d846d("hudItems.warzone.collapseIndex", 1, 3, "int");
        clientfield::function_5b7d846d("hudItems.warzone.collapseCount", 1, 3, "int");
        clientfield::function_5b7d846d("hudItems.warzone.reinsertionIndex", 1, 3, "int");
        clientfield::register("world", "set_objective_fog", 1, 2, "int");
        clientfield::function_5b7d846d("hudItems.team1.roundsWon", 1, 4, "int");
        clientfield::function_5b7d846d("hudItems.team2.roundsWon", 1, 4, "int");
    }
    level thread function_57292af3();
    zm_gametype::main();
    level.onprecachegametype = &onprecachegametype;
    level.onrespawndelay = &function_72d130aa;
    level.onstartgametype = &onstartgametype;
    level._game_module_custom_spawn_init_func = &zm_gametype::custom_spawn_init_func;
    level._game_module_stat_update_func = &zm_stats::survival_classic_custom_stat_update;
    level.customspawnlogic = &function_716def93;
    level.var_16918506 = &function_58d07657;
    level.var_4e1e5411 = &function_f30d46d0;
    level.var_d0ab70a2 = #"hash_2e67a581bd97b96c";
    level.var_946a4954 = 90;
    level.var_38743886 = &function_d7cf81e;
    callback::on_game_playing(&on_game_playing);
    callback::function_14dae612(&function_14dae612);
    callback::on_ai_spawned(&on_ai_spawned);
    callback::on_ai_killed(&on_ai_killed);
    callback::on_bleedout(&on_bleedout);
    callback::on_item_pickup(&on_item_pickup);
    callback::add_callback(#"hash_17028f0b9883e5be", &function_e58dff05);
    callback::add_callback(#"objective_ended", &function_37c1c391);
    spawner::add_global_spawn_function(level.zombie_team, &namespace_85745671::function_2089690e);
    callback::on_spawned(&on_player_spawn);
    callback::on_connect(&on_player_connect);
    if (namespace_cf6efd05::function_85b812c9()) {
        var_cc6e64ae = namespace_cf6efd05::function_21d402f4(#"hash_1601cc3215f4f8b3");
    } else {
        var_cc6e64ae = getdvarint(#"hash_7255c78e5d6bfa33", 1);
        if (var_cc6e64ae > 1) {
            callback::on_spawned(&function_938991d2);
        }
    }
    var_cc6e64ae = int(max(var_cc6e64ae, 1));
    namespace_553954de::function_7c97e961(var_cc6e64ae);
    namespace_ce1f29cc::function_15bf0b91(level.realm);
    setdvar(#"hash_50b18a791b1b5d34", 6);
    setdvar(#"hash_6e5f4d21ec1124ec", 4);
    setdvar(#"hash_51d59b9e94c5ff87", 1);
    setdvar(#"hash_40eb8467241c4747", 1);
    setdvar(#"hash_2f4280545354c82c", 1);
    setdvar(#"hash_2ac8ade37339f558", 0);
    if (getdvarint(#"hash_17936e1c487cc606", 1)) {
        loadsentienteventparameters("sentientevents_sr");
    }
    setdvar(#"hkai_navmeshusehierarchialpathfind", 0);
    setdvar(#"hkai_pathfinditerationlimit", 2000);
    setsaveddvar(#"hash_1677d88b90b7fcf8", 1);
    level.var_13339abf = array(#"ammo_small_caliber_item_t9_sr", #"ammo_ar_item_t9_sr", #"ammo_large_caliber_item_t9_sr", #"ammo_sniper_item_t9_sr", #"ammo_shotgun_item_t9_sr", #"ammo_special_item_t9_sr");
    namespace_58949729::function_5a12541e();
    level.var_dcf5a517 = 1;
    namespace_d0ab5955::init();
    namespace_2c949ef8::init();
    level thread function_33cac8e7();
    level.var_bc21b9a = &namespace_591b4396::function_b5019d74;
    callback::add_callback(#"hash_3b7d3ed9e484ef72", &give_match_bonus);
    callback::add_callback(#"hash_29edd9425510b40d", &function_f09350a0);
    callback::add_callback(#"hash_4ce318cfe14b54e7", &function_fa60a76c);
    spawner::add_ai_spawn_function(&function_4a9444dc);
    level thread function_56a7980();
    level thread function_aa5d57c6();
    level thread function_68b4ecc9();
}

// Namespace zsurvival/zsurvival
// Params 2, eflags: 0x2 linked
// Checksum 0x807b231e, Offset: 0x1bb8
// Size: 0x124
function function_68b4ecc9(*var_d5fa8477, *var_f014519d) {
    level flag::wait_till("spawn_intel_at_start_complete");
    str_map_name = util::get_map_name();
    if (str_map_name === #"mp_dune") {
        var_99bf2e73 = struct::get(#"zmintel_survival_maxis_audiolog_15", "scriptbundlename");
        if (isdefined(var_99bf2e73)) {
            level thread zm_intel::function_d0e6ff7a("zmintel_survival_maxis_audiolog_15", undefined, 250);
        }
        var_99bf2e73 = struct::get(#"zmintel_survival_maxis_audiolog_17", "scriptbundlename");
        if (isdefined(var_99bf2e73)) {
            level thread zm_intel::function_d0e6ff7a("zmintel_survival_maxis_audiolog_17", undefined, 500);
        }
    }
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x2 linked
// Checksum 0x6e57d934, Offset: 0x1ce8
// Size: 0x1bc
function function_aa5d57c6() {
    level flag::wait_till("spawn_intel_at_start_complete");
    if (util::get_map_name() === #"wz_forest") {
        var_e5b9ea93 = struct::get("zmintel_survival_omega_artifact_2", "scriptbundlename");
        if (!isdefined(var_e5b9ea93)) {
            var_e5b9ea93 = {#origin:(-4034, 799, -736), #angles:(90, 0, 48), #scriptbundlename:"zmintel_survival_omega_artifact_2", #modelscale:1, #script_enable_on_start:1, #classname:"scriptbundle_zmintel"};
            if (!isdefined(level.var_238bd723)) {
                level.var_238bd723 = [];
            } else if (!isarray(level.var_238bd723)) {
                level.var_238bd723 = array(level.var_238bd723);
            }
            if (!isinarray(level.var_238bd723, var_e5b9ea93)) {
                level.var_238bd723[level.var_238bd723.size] = var_e5b9ea93;
            }
            var_e5b9ea93 thread zm_intel::function_23255935();
        }
    }
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x2 linked
// Checksum 0x968434cf, Offset: 0x1eb0
// Size: 0xde
function function_9663b13b() {
    a_dynents = getdynentarray();
    foreach (dynent in a_dynents) {
        if (dynent.var_15d44120 === #"hash_1247e397ea2ac1d4" && !isdefined(dynent.ondamaged)) {
            dynent.ondamaged = &namespace_f3e83343::function_c743094d;
            dynent.maxhealth = dynent.health;
        }
    }
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x2 linked
// Checksum 0x746f8256, Offset: 0x1f98
// Size: 0x8ec
function function_56a7980() {
    zm_vo::function_778b84a3(#"hash_6cb5ce936e173b1", 3.41);
    zm_vo::function_778b84a3(#"hash_10af694bf1804f26", 7.21);
    zm_vo::function_778b84a3(#"hash_4fd9990138176447", 8.5);
    zm_vo::function_778b84a3(#"hash_5d57325a60949e7", 6.36);
    zm_vo::function_778b84a3(#"hash_554ddb2d9623c514", 5.67);
    zm_vo::function_778b84a3(#"hash_3f1a3e196f1283a1", 8.96);
    zm_vo::function_778b84a3(#"hash_2a80b288016e01c5", 6.29);
    zm_vo::function_778b84a3(#"hash_2a80b188016e0012", 4.27);
    zm_vo::function_778b84a3(#"hash_554487f97b3b2e5d", 3.97);
    zm_vo::function_778b84a3(#"hash_5c43ce1da5774d76", 3.82);
    zm_vo::function_778b84a3(#"hash_3ddd66fa47ae9d9b", 3.84);
    zm_vo::function_778b84a3(#"hash_48e838216e6ae9bc", 3.75);
    zm_vo::function_778b84a3(#"hash_6805f41751646fb1", 3.97);
    zm_vo::function_778b84a3(#"hash_67028e2fe1c8128c", 3.99);
    zm_vo::function_778b84a3(#"hash_c15ace851c6b900", 2.45);
    zm_vo::function_778b84a3(#"hash_c15ade851c6bab3", 2.58);
    zm_vo::function_778b84a3(#"hash_c15aee851c6bc66", 2.43);
    zm_vo::function_778b84a3(#"hash_c15afe851c6be19", 2.65);
    zm_vo::function_778b84a3(#"hash_c15b0e851c6bfcc", 2.6);
    zm_vo::function_778b84a3(#"hash_c15b1e851c6c17f", 2.517);
    zm_vo::function_778b84a3(#"hash_c15b2e851c6c332", 2.56);
    zm_vo::function_778b84a3(#"hash_c15b3e851c6c4e5", 2.39);
    zm_vo::function_778b84a3(#"hash_c15b4e851c6c698", 2.39);
    zm_vo::function_778b84a3(#"hash_c15b5e851c6c84b", 2.62);
    zm_vo::function_778b84a3(#"hash_56ca9f18d08d5880", 15.13);
    zm_vo::function_778b84a3(#"hash_56caa018d08d5a33", 16.85);
    zm_vo::function_778b84a3(#"hash_56caa118d08d5be6", 7.34);
    zm_vo::function_778b84a3(#"hash_56caa218d08d5d99", 15.49);
    zm_vo::function_778b84a3(#"hash_56caa318d08d5f4c", 8.02);
    zm_vo::function_778b84a3(#"hash_56caa418d08d60ff", 3.48);
    zm_vo::function_778b84a3(#"hash_56caa518d08d62b2", 0.9);
    zm_vo::function_778b84a3(#"hash_68609aac048f6529", 13.482);
    zm_vo::function_778b84a3(#"hash_686099ac048f6376", 13.119);
    zm_vo::function_778b84a3(#"hash_686098ac048f61c3", 10.303);
    zm_vo::function_778b84a3(#"hash_686097ac048f6010", 6.485);
    zm_vo::function_778b84a3(#"hash_68609eac048f6bf5", 5.183);
    zm_vo::function_778b84a3(#"hash_622e25d4968b2342", 11.285);
    zm_vo::function_778b84a3(#"hash_d1d5b71f103a352", 3.818);
    zm_vo::function_778b84a3(#"hash_1618ca4289b92ebe", 4.223);
    zm_vo::function_778b84a3(#"hash_fb13438776cc35e", 3.989);
    zm_vo::function_778b84a3(#"hash_53a6965ac6107949", 4.33);
    zm_vo::function_778b84a3(#"hash_22001bd16117103e", 3.114);
    zm_vo::function_778b84a3(#"hash_4720bba0428b2d2f", 6.079);
    zm_vo::function_778b84a3(#"hash_4720baa0428b2b7c", 5.311);
    zm_vo::function_778b84a3(#"hash_4720bda0428b3095", 7.103);
    zm_vo::function_778b84a3(#"hash_4720bca0428b2ee2", 3.69);
    zm_vo::function_778b84a3(#"hash_2701d0d78a8247a1", 3.583);
    zm_vo::function_778b84a3(#"hash_f989ca1918b80a", 4.202);
    zm_vo::function_778b84a3(#"hash_688083ca0ba9e298", 4.373);
    zm_vo::function_778b84a3(#"hash_6fcf9dca0f6bd0c6", 7.274);
    zm_vo::function_778b84a3(#"hash_55a3b3ca008b9668", 9.279);
    zm_vo::function_778b84a3(#"hash_605851ca072fdae2", 11.647);
    zm_vo::function_778b84a3(#"hash_447963c9f6de0538", 6.57);
    zm_vo::function_778b84a3(#"hash_4f2dfdc9fd8242e6", 7.445);
    zm_vo::function_778b84a3(#"hash_3f2d23ca3cc5c478", 6.527);
    zm_vo::function_778b84a3(#"hash_467bc9ca4086ed8a", 7.551);
    zm_vo::function_778b84a3(#"hash_131b61c9015481d2", 5.333);
}

// Namespace zsurvival/zsurvival
// Params 2, eflags: 0x6 linked
// Checksum 0xc8b4e086, Offset: 0x2890
// Size: 0x160
function private function_d7cf81e(targetplayer, &points) {
    valid_points = [];
    players = getplayers();
    for (index = 0; index < points.size; index++) {
        point = points[index];
        valid = 1;
        foreach (player in players) {
            if (player === targetplayer || player == self) {
                continue;
            }
            dist_sq = distancesquared(player.origin, point);
            if (dist_sq < 256) {
                valid = 0;
                break;
            }
        }
        if (valid) {
            valid_points[valid_points.size] = point;
        }
    }
    return valid_points;
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x2 linked
// Checksum 0x4311882, Offset: 0x29f8
// Size: 0x24
function function_4a9444dc() {
    self.var_34923ea4 = 1;
    self thread function_acafdd66();
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x2 linked
// Checksum 0x4bb24aa, Offset: 0x2a28
// Size: 0x2d8
function function_acafdd66() {
    self endon(#"death");
    while (true) {
        self waittill(#"bad_path");
        self callback::callback(#"bad_path");
        if (!is_false(self.var_7a6bf645)) {
            self.var_4fe4e626 = 1;
        }
        enemy = zm_ai_utility::function_825317c(self);
        if (isdefined(self.enemy.var_125d950b) && isdefined(enemy)) {
            enemy.var_125d950b = undefined;
        }
        if (!ispointonnavmesh(self.origin, self) && !self flag::get(#"hash_7b1f9f26f086bf39")) {
            if (!isdefined(self.var_eb221ba)) {
                self.var_eb221ba = 0;
            }
            self.var_eb221ba++;
            if (self.var_eb221ba <= 2) {
                new_origin = getclosestpointonnavmesh(self.origin, 200, min(40 + self.var_eb221ba * 50, 90));
                if (isdefined(new_origin)) {
                    println("<unknown string>" + self getentitynumber() + "<unknown string>" + self.origin);
                    self forceteleport(new_origin);
                    if (ispointonnavmesh(new_origin, self)) {
                        self.var_eb221ba = 0;
                    }
                }
            }
        } else if (isdefined(enemy)) {
            var_ca9a5b88 = distancesquared(self.origin, enemy.origin);
            if (var_ca9a5b88 < sqr(500)) {
                self flag::set(#"hash_29e9ce4afa4f11d2");
                zm_ai_utility::function_68ab868a(self);
                if (isplayer(self.enemy)) {
                    self.enemy.var_dbb28b34 = -1;
                }
            }
        }
        wait(0.5);
    }
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x2 linked
// Checksum 0x9e7333df, Offset: 0x2d08
// Size: 0x51c
function function_57292af3() {
    callback::on_connect(&function_ee7f9c09);
    level flag::set(#"hash_4930756571725d11");
    level flag::wait_till(#"hash_7ace2c0d668c5128");
    if (!namespace_cf6efd05::function_85b812c9()) {
        s_destination = level.var_7767cea8[0];
        if (isdefined(s_destination.target2) && !getdvarint(#"hash_2682124b2df6958e", 0)) {
            foreach (player in getplayers()) {
                player.var_f4e33249 = 1;
            }
            level.var_3dfa8db4 = 1;
            s_scene = struct::get(s_destination.target2);
            level scene::function_27f5972e(s_scene.scriptbundlename);
            level flag::wait_till("initial_blackscreen_passed");
            util::wait_network_frame(2);
            if (is_true(getgametypesetting(#"hash_1e8998fd7f271bb7"))) {
                util::delay(2, #"intro_scene_done", &zm_vo::function_7622cb70, "infilhardcore");
            }
            level thread namespace_9b972177::function_57292af3();
            namespace_66d6aa44::function_bb17da18();
            scene::function_497689f6(s_scene.scriptbundlename, "helicopter", "tag_probe_cabin", "prb_tn_us_heli_lg_cabin");
            scene::function_497689f6(s_scene.scriptbundlename, "helicopter", "tag_probe_cockpit", "prb_tn_us_heli_lg_cockpit");
            level scene::play(s_destination.target2, "targetname");
            level scene::function_f81475ae(s_scene.scriptbundlename);
            namespace_66d6aa44::function_db62d086();
            /#
                if (getdvarint(#"hash_6a54249f0cc48945", 0)) {
                    adddebugcommand("<unknown string>");
                }
            #/
            foreach (player in getplayers()) {
                player dontinterpolate();
                player setorigin(player.resurrect_origin);
                player setplayerangles(player.resurrect_angles);
                player.var_f4e33249 = undefined;
            }
        }
    } else {
        level thread function_c8160daa();
    }
    music::setmusicstate("");
    level flag::clear(#"hash_4930756571725d11");
    callback::remove_on_connect(&function_ee7f9c09);
    array::thread_all(getplayers(), &val::reset, "intro_scene", "b_ignore_fow_damage");
    gamestate::set_state(#"playing");
    level flag::set(#"intro_scene_done");
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x2 linked
// Checksum 0x86cc3385, Offset: 0x3230
// Size: 0x3c
function function_c8160daa() {
    level flag::wait_till("initial_blackscreen_passed");
    music::setmusicstate("capsule_teleport_end");
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x2 linked
// Checksum 0xe02676d, Offset: 0x3278
// Size: 0x2c
function function_ee7f9c09() {
    self val::set("intro_scene", "b_ignore_fow_damage", 1);
}

// Namespace zsurvival/zsurvival
// Params 1, eflags: 0x2 linked
// Checksum 0x2813d8c9, Offset: 0x32b0
// Size: 0xca
function function_716def93(ispredictedspawn) {
    if (ispredictedspawn) {
        self.resurrect_origin = (0, 0, 0);
        self.resurrect_angles = (0, 0, 0);
        spawn_point = {#origin:self.resurrect_origin, #angles:self.var_2e25e3b6};
        return spawn_point;
    }
    if (game.state == #"pregame" || game.state == #"playing") {
        return function_aad874d();
    }
    return function_182a24df();
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x2 linked
// Checksum 0x6a1852fc, Offset: 0x3388
// Size: 0x3e0
function function_aad874d() {
    if (!isdefined(level.var_7767cea8)) {
        return undefined;
    }
    if (util::get_map_name() === "mp_black_sea" && (is_true(level.var_53bc31ad) || level flag::get(#"gameplay_started")) && level.var_7767cea8[0].script_int === 3 && isdefined(level.contentmanager.currentdestination)) {
        var_58b02068 = zm_destination_manager::function_e4254bac(level.contentmanager.currentdestination, 1);
        function_e93291ff(array(var_58b02068));
    }
    teammask = getteammask(self.team);
    for (teamindex = 0; teammask > 1; teamindex++) {
        teammask >>= 1;
    }
    destindex = teamindex % level.var_7767cea8.size;
    dest = level.var_7767cea8[destindex];
    var_c1a973a4 = int(teamindex / level.var_7767cea8.size);
    var_92438b9c = var_c1a973a4 * level.maxteamplayers % dest.spawns.size;
    self.var_25fe2d03 = dest.globalindex;
    spawn = undefined;
    spawntime = gettime();
    if (!isdefined(dest.spawns[var_92438b9c].spawntime)) {
        dest.spawns[var_92438b9c].spawntime = spawntime;
        spawn = dest.spawns[var_92438b9c];
    } else {
        var_f5bb80c2 = var_92438b9c;
        var_e34bb789 = dest.spawns[var_f5bb80c2].spawntime;
        for (idx = 0; idx < level.maxteamplayers; idx++) {
            spawnindex = (idx + var_92438b9c) % dest.spawns.size;
            if (!isdefined(dest.spawns[spawnindex].spawntime)) {
                dest.spawns[spawnindex].spawntime = spawntime;
                spawn = dest.spawns[spawnindex];
                break;
            }
            if (dest.spawns[spawnindex].spawntime < var_e34bb789) {
                var_f5bb80c2 = spawnindex;
                var_e34bb789 = dest.spawns[spawnindex].spawntime;
            }
        }
        if (!isdefined(spawn)) {
            dest.spawns[var_f5bb80c2].spawntime = spawntime;
            spawn = dest.spawns[var_f5bb80c2];
        }
    }
    self.resurrect_origin = spawn.origin;
    self.resurrect_angles = spawn.angles;
    self spawn(spawn.origin, spawn.angles, "zsurvival");
    return spawn;
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x2 linked
// Checksum 0xaea3e013, Offset: 0x3770
// Size: 0x294
function function_182a24df() {
    targetorigin = self.lastdeathpos;
    targetangles = self.angles;
    players = [];
    foreach (player in getplayers(self.team)) {
        if (player != self && isalive(player)) {
            players[players.size] = player;
        }
    }
    if (players.size > 0) {
        player = players[randomint(players.size)];
        targetorigin = player.origin;
        targetangles = player.angles;
    } else if (isdefined(self.lastdeathpos)) {
        targetorigin = self.lastdeathpos;
        if (isdefined(level.deathcircle) && isdefined(level.deathcircle.var_5c54ab33)) {
            targetangles = vectortoangles(level.deathcircle.var_5c54ab33.origin - targetorigin);
        }
    } else {
        return function_aad874d();
    }
    fwd = anglestoforward(targetangles);
    spawnorigin = targetorigin - fwd * 64 + (0, 0, 50);
    self.resurrect_origin = spawnorigin;
    self.resurrect_angles = vectortoangles(fwd);
    self spawn(self.resurrect_origin, self.resurrect_angles, "zsurvival");
    spawn_point = {#origin:self.resurrect_origin, #angles:self.resurrect_angles};
    return spawn_point;
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x2 linked
// Checksum 0x3a1c30bd, Offset: 0x3a10
// Size: 0x3cc
function on_player_spawn() {
    self.specialty = [];
    self.playleaderdialog = 1;
    targetplayer = undefined;
    if (isdefined(level.contentmanager.activeobjective.var_543569ce)) {
        spawn = level.contentmanager.activeobjective [[ level.contentmanager.activeobjective.var_543569ce ]](self getentitynumber());
    } else if (isdefined(self.var_f4710251)) {
        targetplayer = getentbynum(self.var_f4710251);
    } else if (is_false(self.wasaliveatmatchstart) && getdvarint(#"hash_11cc747390ab2f74", 1)) {
        var_67e0ed8d = array::randomize(function_a1ef346b());
        foreach (player in var_67e0ed8d) {
            if (player != self) {
                targetplayer = player;
                break;
            }
        }
    }
    self.var_f4710251 = undefined;
    if (isdefined(targetplayer) && isalive(targetplayer)) {
        spawn = squad_spawn::function_e402b74e(self, targetplayer);
        if (isdefined(spawn.angles) && (isfloat(spawn.angles[1]) || isint(spawn.angles[1]))) {
            spawn.angles = (0, spawn.angles[1], 0);
        }
    }
    if (isdefined(spawn.origin) && isdefined(spawn.angles)) {
        self dontinterpolate();
        self setorigin(spawn.origin);
        self setplayerangles(spawn.angles);
    }
    self player_free_fall::allow_player_basejumping(1);
    self squads::function_c70b26ea();
    if (namespace_cf6efd05::function_85b812c9() && !is_true(self.uspawn_already_spawned) && !is_true(self.is_hotjoin)) {
        self luinotifyevent(#"hash_5b1ff06d07e9002a", 3, 2, level.var_b48509f9, 0);
    }
    self clientfield::set_player_uimodel("hudItems.zombiesSurvivalRespawn", 0);
    self thread namespace_553954de::function_d55a8df1();
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x2 linked
// Checksum 0x27f6e0a1, Offset: 0x3de8
// Size: 0x102
function on_player_connect() {
    level endon(#"game_ended");
    self endon(#"death", #"disconnect");
    level flag::wait_till(#"all_players_connected");
    waitframe(1);
    if (namespace_cf6efd05::function_99df13e0(self)) {
        self flag::wait_till(#"hash_4e456290f8bfa93c");
    }
    if (isdefined(self) && self.var_afe4efeb !== 1 && !getdvarint(#"hash_325beef6162dc9c9", 0)) {
        self globallogic_ui::function_bc2eb1b8();
        self.var_afe4efeb = 1;
    }
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x2 linked
// Checksum 0xf82d9c9c, Offset: 0x3ef8
// Size: 0x1c
function onprecachegametype() {
    level.canplayersuicide = &zm_gametype::canplayersuicide;
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x2 linked
// Checksum 0x24243de9, Offset: 0x3f20
// Size: 0x18c
function onstartgametype() {
    zm_behavior::preinit();
    level.spawnmins = (0, 0, 0);
    level.spawnmaxs = (0, 0, 0);
    structs = struct::get_array("player_respawn_point", "targetname");
    foreach (struct in structs) {
        level.spawnmins = math::expand_mins(level.spawnmins, struct.origin);
        level.spawnmaxs = math::expand_maxs(level.spawnmaxs, struct.origin);
    }
    level.mapcenter = math::find_box_center(level.spawnmins, level.spawnmaxs);
    setmapcenter(level.mapcenter);
    spawning::function_7a87efaa();
    level thread function_e93291ff();
}

// Namespace zsurvival/zsurvival
// Params 1, eflags: 0x2 linked
// Checksum 0x2a70ac5b, Offset: 0x40b8
// Size: 0x326
function function_e93291ff(destinations) {
    if (!isarray(destinations)) {
        destinations = array(function_fef3deb1());
    }
    if (destinations.size <= 0 || !isdefined(destinations[0])) {
        return;
    }
    destinations = arraysortclosest(destinations, (0, 0, 0));
    for (destindex = 0; destindex < destinations.size; destindex++) {
        destinations[destindex].globalindex = destindex;
    }
    level.var_7767cea8 = [];
    /#
        if (getdvarint(#"hash_270a21a654a1a79f", 0)) {
            level.totalspawnpoints = [];
            foreach (destination in destinations) {
                level.totalspawnpoints = arraycombine(level.totalspawnpoints, content_manager::get_children(destination), 0, 0);
            }
        }
    #/
    var_137456fd = getdvarint(#"wz_dest_id", -1);
    if (var_137456fd >= 0 && var_137456fd < destinations.size) {
        level.var_7767cea8[0] = destinations[var_137456fd];
        arrayremoveindex(destinations, var_137456fd);
    } else {
        while (destinations.size > 0 && level.var_7767cea8.size < 5) {
            destindex = randomint(destinations.size);
            level.var_7767cea8[level.var_7767cea8.size] = destinations[destindex];
            arrayremoveindex(destinations, destindex);
        }
    }
    foreach (dest in level.var_7767cea8) {
        dest.spawns = content_manager::get_children(dest);
    }
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x43e8
// Size: 0x4
function function_14dae612() {
    
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x2 linked
// Checksum 0x29b7e6bd, Offset: 0x43f8
// Size: 0x24c
function on_game_playing() {
    level thread function_9420630a();
    level flag::wait_till(#"intro_scene_done");
    array::delete_all(level.oob_triggers);
    /#
        if (getdvarint(#"hash_33b0be96bf3cd69a", 0)) {
            level waittill(#"hash_581a9d913f67821a");
        }
    #/
    level thread namespace_ce1f29cc::update_hotzone_states();
    level thread namespace_ce1f29cc::function_9e0aba37();
    level thread zm_powerups::powerup_round_start();
    level thread namespace_9b972177::function_5d985962(1);
    level thread function_45e86af0();
    function_d547b972();
    level thread function_fbb2b180();
    if (namespace_cf6efd05::function_85b812c9()) {
        callback::on_connect(&function_bcd35efc);
        level flag::wait_till("initial_blackscreen_passed");
    }
    wait(1);
    if (!namespace_cf6efd05::function_85b812c9()) {
        if (is_true(getgametypesetting(#"hash_1e8998fd7f271bb7"))) {
            level thread zm_vo::function_7622cb70("objectiveBoostStartHardcore");
            return;
        }
        if (!is_true(getgametypesetting(#"hash_1e1a5ebefe2772ba"))) {
            level thread zm_vo::function_7622cb70("objectiveBoostStart");
        }
    }
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x2 linked
// Checksum 0x9d843e41, Offset: 0x4650
// Size: 0x12a
function function_bcd35efc() {
    self endon(#"death", #"disconnect");
    level flag::wait_till(#"all_players_connected");
    if (namespace_cf6efd05::function_99df13e0(self)) {
        if (!isdefined(level.var_de636733)) {
            level.var_de636733 = 0;
        }
        level.var_de636733++;
        if (level.var_de636733) {
            level.var_c6dc0337 = 1;
        }
        level namespace_cf6efd05::function_642cc595(self);
        if (isdefined(self)) {
            level namespace_cf6efd05::function_53721fc4(self, #"valid", 0);
        }
        level.var_de636733--;
        if (level.var_de636733 <= 0) {
            level.var_de636733 = 0;
            level.var_c6dc0337 = undefined;
        }
    }
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x6 linked
// Checksum 0x494d4d94, Offset: 0x4788
// Size: 0xc2
function private function_fbb2b180() {
    function_3ca3c6e4();
    resetglass();
    if (isdefined(level.var_82eb1dab)) {
        foreach (deathmodel in level.var_82eb1dab) {
            deathmodel delete();
        }
        level.var_82eb1dab = undefined;
    }
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x2 linked
// Checksum 0x4fb29ac4, Offset: 0x4858
// Size: 0xde
function function_45e86af0() {
    level endon(#"game_ended");
    while (true) {
        while (!getplayers().size) {
            waitframe(1);
        }
        for (i = 0; i < getplayers().size; i++) {
            player = getplayers()[i];
            if (!isdefined(player) || player.sessionstate === "spectator") {
                waitframe(1);
                continue;
            }
            namespace_85745671::function_dce54c8d(player, 1500);
            waitframe(1);
        }
    }
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x4
// Checksum 0xb5a41e1a, Offset: 0x4940
// Size: 0x10a
function private function_b0492e83() {
    level endon(#"game_ended");
    level flag::wait_till(#"all_players_connected");
    item_world::function_1b11e73c();
    level.var_c6dc0337 = 1;
    foreach (player in getplayers()) {
        if (namespace_cf6efd05::function_99df13e0(player)) {
            thread namespace_cf6efd05::function_642cc595(player);
        }
    }
    level.var_c6dc0337 = undefined;
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x2 linked
// Checksum 0xc515a60f, Offset: 0x4a58
// Size: 0xac
function on_ai_spawned() {
    if (!isactor(self)) {
        return;
    }
    self function_8f8f0c52(800);
    self zm_score::function_82732ced();
    if (self.archetype === #"hash_7c0d83ac1e845ac2" && !isdefined(self.var_9fde8624) && self.team === level.zombie_team) {
        self thread function_398dbc69();
    }
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x2 linked
// Checksum 0x9d18de73, Offset: 0x4b10
// Size: 0xb8
function function_398dbc69() {
    level endon(#"end_game", #"game_ended");
    self endon(#"death");
    n_delay = randomintrange(4, 7);
    wait(n_delay);
    while (true) {
        self zm_vo::function_d6f8bbd9(#"hash_2713f6cca57189d3");
        n_delay = randomintrange(60, 80);
        wait(n_delay);
    }
}

// Namespace zsurvival/zsurvival
// Params 1, eflags: 0x2 linked
// Checksum 0xe1863d53, Offset: 0x4bd0
// Size: 0x64
function on_ai_killed(s_params) {
    if (!isactor(self)) {
        return;
    }
    if (!isplayer(s_params.eattacker)) {
        return;
    }
    self thread zm_powerups::function_b753385f(s_params.weapon);
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x2 linked
// Checksum 0x450be1a8, Offset: 0x4c40
// Size: 0x80
function on_bleedout() {
    level endon(#"end_game");
    self endon(#"disconnect");
    wait(2);
    self clientfield::set_player_uimodel("hudItems.zombiesSurvivalRespawn", 1);
    self thread function_3fd71c32();
    self thread [[ level.spawnclient ]](0);
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x2 linked
// Checksum 0xdcae21c6, Offset: 0x4cc8
// Size: 0x62
function function_3fd71c32() {
    self endon(#"disconnect");
    level endon(#"game_ended");
    self waittill(#"spawned");
    if (self.currentspectatingclient > -1) {
        self.var_f4710251 = self.currentspectatingclient;
    }
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x2 linked
// Checksum 0x2ce019ec, Offset: 0x4d38
// Size: 0xa
function function_889c6660() {
    wait(1);
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x2 linked
// Checksum 0x78ed8cbc, Offset: 0x4d50
// Size: 0x118
function function_fef3deb1() {
    level flag::wait_till(#"hash_7ace2c0d668c5128");
    var_842cdacd = zm_destination_manager::function_f3be07d7(level.contentmanager.var_5f2429b1);
    var_58b02068 = struct::get(var_842cdacd[0].target, "targetname");
    level flag::set(#"hash_39574fd530246717");
    assert(isdefined(level.contentmanager.var_5f2429b1.targetname), "<unknown string>");
    assert(isdefined(var_58b02068), "<unknown string>" + level.contentmanager.var_5f2429b1.targetname);
    return var_58b02068;
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x6 linked
// Checksum 0x4c310324, Offset: 0x4e70
// Size: 0x1ec
function private function_33cac8e7() {
    level endon(#"game_ended");
    level flag::wait_till(#"hash_7ace2c0d668c5128");
    destinations = zm_destination_manager::function_2e165386();
    triggers = undefined;
    if (isdefined(destinations) && getdvarint(#"hash_d07e35f920d16a8", 1)) {
        triggers = [];
        foreach (destination in destinations) {
            if (isdefined(destination.contentgroups[#"hash_3460aae6bb799a99"])) {
                foreach (struct in destination.contentgroups[#"hash_3460aae6bb799a99"]) {
                    triggers[triggers.size] = getent(struct.targetname, "target");
                }
            }
        }
    }
    namespace_85745671::function_b7dc3ab4(triggers);
}

// Namespace zsurvival/zsurvival
// Params 1, eflags: 0x2 linked
// Checksum 0x3c41e849, Offset: 0x5068
// Size: 0x124
function on_end_game(waitresult) {
    if (!is_true(level.var_1726e2c7)) {
        if (waitresult.reason === #"hash_4e5756202af6ae94" || waitresult.reason === #"last_player_died") {
            level notify(#"hash_8202877a3aadac8");
            if (level.contentmanager.activeobjective.content_script_name !== "holdout") {
                str_vo = "matchEndLose";
                if (isstring(level.var_2e73af9b) || ishash(level.var_2e73af9b)) {
                    str_vo = level.var_2e73af9b;
                }
                level zm_vo::function_7622cb70(str_vo);
            }
        }
    }
    namespace_9b972177::on_end_game();
}

// Namespace zsurvival/zsurvival
// Params 1, eflags: 0x0
// Checksum 0xc48d5d22, Offset: 0x5198
// Size: 0x330
function give_custom_loadout(takeoldweapon) {
    self endon(#"disconnect");
    if (!isdefined(takeoldweapon)) {
        takeoldweapon = 0;
    }
    if (takeoldweapon) {
        oldweapon = self getcurrentweapon();
        weapons = self getweaponslist();
        foreach (weapon in weapons) {
            self takeweapon(weapon);
        }
    }
    nullprimary = getweapon(#"null_offhand_primary");
    self giveweapon(nullprimary);
    self setweaponammoclip(nullprimary, 0);
    self switchtooffhand(nullprimary);
    if (self.firstspawn !== 0) {
    }
    bare_hands = getweapon(#"bare_hands");
    self giveweapon(bare_hands);
    self function_c9a111a(bare_hands);
    self switchtoweapon(bare_hands, 1);
    if (self.firstspawn !== 0) {
        self setspawnweapon(bare_hands);
    }
    self.specialty = self getloadoutperks(0);
    self zm::register_perks();
    var_69126206 = [];
    var_2e1bd530 = [];
    var_2e1bd530[0] = 3;
    var_2e1bd530[1] = 1;
    var_2e1bd530[2] = 0;
    if (level.usingmomentum === 1) {
        for (sortindex = 0; sortindex < var_69126206.size && sortindex < var_2e1bd530.size; sortindex++) {
            if (var_69126206[sortindex].weapon != level.weaponnone) {
                self setkillstreakweapon(var_2e1bd530[sortindex], var_69126206[sortindex].weapon);
            }
        }
    }
    self thread function_798c4aa9();
    return bare_hands;
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x2 linked
// Checksum 0x56792f21, Offset: 0x54d0
// Size: 0x284
function function_798c4aa9() {
    self endon(#"disconnect");
    self notify("59a98f67be584019");
    self endon("59a98f67be584019");
    item_world::function_1b11e73c();
    while (!isdefined(self.inventory) || self.sessionstate !== "playing" || game.state !== #"playing") {
        waitframe(1);
    }
    backpack = function_4ba8fde(#"backpack_item");
    backpack.count = 1;
    var_fa3df96 = self item_inventory::function_e66dcff5(backpack);
    item_world::function_de2018e3(backpack, self, var_fa3df96);
    var_ea8725b3 = getdvarstring(#"hash_7187c1ee48f0a1a");
    if (!isdefined(var_ea8725b3) || var_ea8725b3 == "") {
        var_ea8725b3 = array::random(array(#"ar_accurate_t9_item_sr", #"shotgun_pump_t9_item_sr", #"shotgun_semiauto_t9_item_sr", #"smg_standard_t9_item_sr", #"tr_longburst_t9_item_sr"));
    }
    item_weapon = function_4ba8fde(var_ea8725b3);
    var_fa3df96 = self item_inventory::function_e66dcff5(item_weapon);
    self item_world::function_de2018e3(item_weapon, self, var_fa3df96);
    weapon = namespace_a0d533d1::function_2b83d3ff(item_weapon);
    self setweaponammostock(weapon, weapon.maxammo);
    level flag::set(#"hash_394b4c458bf65ee1");
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x2 linked
// Checksum 0x7c3c9986, Offset: 0x5760
// Size: 0x398
function give_match_bonus() {
    players = getplayers();
    foreach (player in players) {
        var_22ba849f = getdvarint(#"hash_3f0689f4ecc2fbab", 0);
        var_19a80e4c = level.var_b48509f9;
        var_900d44db = zm::function_d3113f01(level.var_b48509f9);
        var_191f8e5e = var_900d44db.var_c6f2635d;
        var_7c032359 = var_900d44db.var_b93abbed[getplayers().size - 1];
        var_f65fd621 = function_7a2da789()[#"hash_31b5b9e273560fa9"];
        if (!isdefined(player.var_3b4f6b37)) {
            player.var_3b4f6b37 = 0;
        }
        var_c602cc83 = player.var_3b4f6b37;
        var_c602cc83 += player function_a37a8258();
        var_370ac26d = int(max(var_c602cc83, randomintrangeinclusive(1000, 1250)));
        player zm::function_78e7b549(var_370ac26d);
        if (var_370ac26d > 0) {
            player display_transition::function_d7b5082e();
        }
        /#
            println("<unknown string>" + player getentnum() + "<unknown string>" + player.name + "<unknown string>" + var_370ac26d);
            println("<unknown string>" + var_22ba849f);
            println("<unknown string>" + player.var_3b4f6b37);
            println("<unknown string>" + player.var_f2922211);
            println("<unknown string>" + var_19a80e4c);
            println("<unknown string>" + var_191f8e5e);
            println("<unknown string>" + var_f65fd621);
            println("<unknown string>" + var_7c032359);
            println("<unknown string>" + var_c602cc83);
            println("<unknown string>");
        #/
    }
}

// Namespace zsurvival/zsurvival
// Params 1, eflags: 0x6 linked
// Checksum 0xc3687818, Offset: 0x5b00
// Size: 0x168
function private function_fa60a76c(var_b48509f9 = level.var_b48509f9) {
    if (!isdefined(level.var_64606faa)) {
        level.var_64606faa = 0;
    }
    if (level.var_64606faa) {
        return;
    }
    level.var_64606faa = 1;
    var_370ac26d = zm::function_d3113f01(var_b48509f9).var_bd588afd;
    foreach (player in getplayers()) {
        if (!zm_utility::function_1a01f2f7(player)) {
            player luinotifyevent(#"hash_3e6dd0ad7b864154", 1, var_370ac26d);
            player addrankxpvalue("capsule_end_xp", var_370ac26d, 4);
        }
    }
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x6 linked
// Checksum 0xbcf29365, Offset: 0x5c70
// Size: 0xfa
function private function_f09350a0() {
    if (!isdefined(level.var_9b98246a)) {
        level.var_9b98246a = 0;
    }
    if (level.var_9b98246a) {
        return;
    }
    level.var_9b98246a = 1;
    foreach (player in getplayers()) {
        if (!isdefined(player.var_3b4f6b37)) {
            player.var_3b4f6b37 = 0;
        }
        player.var_3b4f6b37 += player function_a37a8258();
    }
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x6 linked
// Checksum 0xdd635dff, Offset: 0x5d78
// Size: 0xd2
function private function_a37a8258() {
    var_1529f18e = getdvarint(#"hash_36b205ca21f0d3e2", 18);
    var_6474e59d = getdvarint(#"hash_3f0689f4ecc2fbab", 0);
    var_24ec72ea = isdefined(self.var_f2922211) ? self.var_f2922211 : 0;
    var_3b5551ee = min(var_24ec72ea / 60, var_1529f18e);
    return int(var_6474e59d * var_3b5551ee);
}

// Namespace zsurvival/zsurvival
// Params 1, eflags: 0x2 linked
// Checksum 0x1295e88e, Offset: 0x5e58
// Size: 0x214
function function_37c1c391(params) {
    completed = params.completed;
    instance = params.instance;
    scriptname = instance.content_script_name;
    var_5fc990bf = 0;
    if (isdefined(scriptname)) {
        var_5fc990bf = objective_manager::function_ae039b4(scriptname);
    }
    foreach (player in getplayers()) {
        player luinotifyevent(#"hash_5b1ff06d07e9002a", 3, completed, 0, var_5fc990bf);
        if (is_true(completed)) {
            player zm_stats::function_945c7ce2(#"hash_629e66bd82d8cd38", 1);
            player zm_stats::increment_challenge_stat(#"hash_5381188bbb5fca9b");
            if (player.sessionstate === "spectator") {
                player notify(#"force_spawn");
            }
        }
    }
    util::delay(30, "game_ended", &namespace_ce1f29cc::function_fca72198);
    level util::delay(20, "game_ended", &flag::set, #"hash_44074059e3987765");
}

// Namespace zsurvival/zsurvival
// Params 1, eflags: 0x2 linked
// Checksum 0xea31912f, Offset: 0x6078
// Size: 0x3c
function function_e58dff05(*params) {
    namespace_ce1f29cc::function_368a7cde();
    level flag::clear(#"hash_44074059e3987765");
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x2 linked
// Checksum 0x477ffbe9, Offset: 0x60c0
// Size: 0x224
function function_5d7d3382() {
    if (is_true(self.var_4439c2d9)) {
        return;
    }
    var_481bf1b8 = isdefined(level.var_b48509f9) ? level.var_b48509f9 : 1;
    var_3f20795a = var_481bf1b8 - 1;
    if (var_3f20795a <= 0) {
        var_3f20795a = 0;
    }
    var_30c91b24 = int(100 * (pow(1.1, var_3f20795a) - 1));
    var_16359d49 = int(100 * (pow(1.33, var_3f20795a) - 1));
    n_random = randomint(100);
    if (level.var_b48509f9 >= 10 && !is_true(self.var_4a44f930)) {
        self namespace_85745671::function_9758722("super_sprint");
        return;
    }
    if (n_random <= var_30c91b24) {
        if (level.var_b48509f9 >= 5 && !is_true(self.var_4a44f930)) {
            self namespace_85745671::function_9758722("super_sprint");
        } else {
            self namespace_85745671::function_9758722("sprint");
        }
        return;
    }
    if (n_random <= var_16359d49) {
        self namespace_85745671::function_9758722("sprint");
        return;
    }
    self namespace_85745671::function_9758722("run");
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x2 linked
// Checksum 0x7e67579d, Offset: 0x62f0
// Size: 0x174
function function_58d07657() {
    var_697d7ff9 = 0;
    foreach (player in getplayers()) {
        if (is_true(player.var_16735873)) {
            var_697d7ff9 = 1;
            break;
        }
    }
    while (var_697d7ff9) {
        var_697d7ff9 = 0;
        foreach (player in getplayers()) {
            if (is_true(player.var_16735873)) {
                var_697d7ff9 = 1;
                break;
            }
        }
        if (!var_697d7ff9) {
            break;
        }
        wait(1);
    }
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x2 linked
// Checksum 0x5658b814, Offset: 0x6470
// Size: 0x3e
function function_f30d46d0() {
    if (!is_true(self.hasspawned)) {
        return true;
    }
    if (zm_player::function_3799b373()) {
        return true;
    }
    return false;
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x6 linked
// Checksum 0x3c18e5ea, Offset: 0x64b8
// Size: 0xf8
function private function_9420630a() {
    level flag::wait_till(#"hash_5aca8d24a1f56ee1");
    if (!isdefined(level.var_86e072a5)) {
        return;
    }
    var_86e072a5 = array::randomize(level.var_86e072a5);
    var_7005086c = min(level.var_b48509f9, 7);
    for (i = 0; i < var_86e072a5.size; i++) {
        struct = var_86e072a5[i];
        namespace_58949729::function_7e02195f(struct, struct.var_3a053962, struct.var_dae71351);
        if (i + 1 >= var_7005086c) {
            return;
        }
        waitframe(1);
    }
}

// Namespace zsurvival/zsurvival
// Params 2, eflags: 0x2 linked
// Checksum 0x3f70763, Offset: 0x65b8
// Size: 0x3ee
function function_452e5ad6(*player, var_f1c949d7 = 0) {
    if (isdefined(level.contentmanager.activeobjective) && level.contentmanager.activeobjective.content_script_name === "holdout") {
        s_instance = level.contentmanager.activeobjective;
        if (isdefined(s_instance.var_75bfdd78)) {
            for (i = 0; i < s_instance.var_75bfdd78.size; i++) {
                if (!positionwouldtelefrag(s_instance.var_75bfdd78[i].origin)) {
                    v_teleport = s_instance.var_75bfdd78[i];
                    return v_teleport;
                }
            }
        }
    }
    a_spots = namespace_85745671::function_e4791424(self.origin, 16, 80, 2000, 1000, 0, !var_f1c949d7);
    a_spots = array::randomize(a_spots);
    v_teleport = {#origin:self.origin};
    b_found = 0;
    foreach (spot in a_spots) {
        if (ispointonnavmesh(spot.origin, 15) && !function_8dd547b3(spot.origin)) {
            v_dest = function_9cc082d2(spot.origin, 128);
            if (isdefined(v_dest) && namespace_d0ab5955::function_3824d2dc(v_dest[#"point"]) && function_18fb55bd(v_dest[#"point"])) {
                b_found = 1;
                v_teleport = {#origin:v_dest[#"point"]};
                break;
            }
        }
    }
    if (!b_found && isarray(level.var_273ba18f)) {
        var_7ca8f17b = arraysortclosest(level.var_273ba18f, self.origin);
        foreach (s_backup in var_7ca8f17b) {
            if (isvec(s_backup.origin) && !positionwouldtelefrag(s_backup.origin)) {
                v_teleport = s_backup;
                break;
            }
        }
    }
    return v_teleport;
}

// Namespace zsurvival/zsurvival
// Params 1, eflags: 0x6 linked
// Checksum 0x3cc2e9c5, Offset: 0x69b0
// Size: 0x1c6
function private function_8dd547b3(v_destination) {
    if (isarray(level.var_9ff8ac77)) {
        foreach (var_55363a21 in level.var_9ff8ac77) {
            if (isdefined(var_55363a21.v_position) && isdefined(var_55363a21.n_radius)) {
                if (distancesquared(v_destination, var_55363a21.v_position) <= sqr(var_55363a21.n_radius)) {
                    return true;
                }
            }
            if (isstring(var_55363a21.var_faa5f280)) {
                var_5ea34012 = getentarray(var_55363a21.var_faa5f280, "targetname");
                foreach (var_9efd28d0 in var_5ea34012) {
                    if (istouching(v_destination, var_9efd28d0)) {
                        return true;
                    }
                }
            }
        }
    }
    return false;
}

// Namespace zsurvival/zsurvival
// Params 1, eflags: 0x6 linked
// Checksum 0x7aa1c20b, Offset: 0x6b80
// Size: 0x72
function private function_18fb55bd(var_ab528fee) {
    v_trace_start = var_ab528fee + (0, 0, 70);
    trace = physicstraceex(v_trace_start, var_ab528fee);
    if (trace[#"fraction"] < 0.99) {
        return false;
    }
    return true;
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x2 linked
// Checksum 0x8576ae11, Offset: 0x6c00
// Size: 0x4a
function function_72d130aa() {
    n_delay = is_true(self.var_6d71557a) ? level.playerrespawndelay / 2 : level.playerrespawndelay;
    return n_delay;
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x6 linked
// Checksum 0xacf456c2, Offset: 0x6c58
// Size: 0x194
function private function_938991d2() {
    self endon(#"death");
    wait(1);
    var_cc6e64ae = getdvarint(#"hash_7255c78e5d6bfa33", 1);
    var_cc6e64ae = int(max(var_cc6e64ae, 1));
    var_c6b6dcea = (var_cc6e64ae - 1) * 70000;
    self.pers[#"score"] = var_c6b6dcea;
    self.score = self.pers[#"score"];
    self.score_total = self.score;
    self.objscore = self.score_total;
    var_ef5aac55 = (var_cc6e64ae - 1) * 4000;
    var_a9b93bb4 = (var_cc6e64ae - 1) * 2000;
    self thread namespace_2a9f256a::function_afab250a(var_ef5aac55);
    self thread namespace_2a9f256a::function_a6d4221f(var_a9b93bb4);
    self zm_weapons::function_98776900(function_4ba8fde(#"ray_gun_item_sr"), 1, 0);
}

// Namespace zsurvival/zsurvival
// Params 2, eflags: 0x6 linked
// Checksum 0xe709029b, Offset: 0x6df8
// Size: 0x254
function private function_d48a4cc6(*itemname, rarity) {
    if (!isdefined(self.var_639ceafc)) {
        self.var_639ceafc = 0;
    }
    currenthealth = self.health;
    switch (rarity) {
    case #"uncommon":
        self.health += 50;
        self.health = math::clamp(self.health, 0, self.var_66cb03ad);
        break;
    case #"rare":
        self.health += 100;
        self.health = math::clamp(self.health, 0, self.var_66cb03ad);
        break;
    case #"epic":
        self.health += 150;
        self.health = math::clamp(self.health, 0, self.var_66cb03ad);
        break;
    case #"legendary":
        self.health += 200;
        self.health = math::clamp(self.health, 0, self.var_66cb03ad);
        self thread function_7990b88f();
        break;
    }
    var_a2af6935 = self.health - currenthealth;
    if (var_a2af6935 > 0) {
        self.var_639ceafc += var_a2af6935;
    }
    if (self.var_639ceafc >= 500 && !is_true(self.var_5e004f50)) {
        self.var_5e004f50 = 1;
        self zm_stats::function_17ee4529(#"hash_5a973e436e73a0f", 1, #"hash_6abe83944d701459");
    }
}

// Namespace zsurvival/zsurvival
// Params 0, eflags: 0x6 linked
// Checksum 0xfb7878da, Offset: 0x7058
// Size: 0x84
function private function_7990b88f() {
    self endon(#"death");
    count = 0;
    while (count <= 60) {
        self.health += 1;
        self.health = math::clamp(self.health, 0, self.var_66cb03ad);
        count++;
        wait(1);
    }
}

// Namespace zsurvival/zsurvival
// Params 1, eflags: 0x6 linked
// Checksum 0xfd6bd2fa, Offset: 0x70e8
// Size: 0x14c
function private on_item_pickup(params) {
    if (is_true(getgametypesetting(#"hash_1e8998fd7f271bb7"))) {
        if (isdefined(params.item.itementry.name) && isdefined(params.item.itementry.rarity)) {
            var_b74300d3 = params.item.itementry.name;
            rarity = params.item.itementry.rarity;
            if (isarray(level.var_3a2ad19b) && isinarray(level.var_3a2ad19b, hash(var_b74300d3))) {
                if (isplayer(self)) {
                    self function_d48a4cc6(var_b74300d3, rarity);
                }
            }
        }
    }
}

/#

    // Namespace zsurvival/zsurvival
    // Params 1, eflags: 0x0
    // Checksum 0xe6251d5c, Offset: 0x7240
    // Size: 0x1be
    function function_37778628(var_cc6e64ae) {
        if (var_cc6e64ae > 0) {
            if (!isdefined(level.var_7a303742)) {
                level.var_7a303742 = level.var_b48509f9;
            }
            namespace_553954de::function_7c97e961(var_cc6e64ae);
            iprintlnbold("<unknown string>" + var_cc6e64ae);
        } else if (isdefined(level.var_7a303742)) {
            namespace_553954de::function_7c97e961(level.var_7a303742);
            level.var_7a303742 = undefined;
            iprintlnbold("<unknown string>");
        }
        a_ai = getaiarray();
        foreach (ai in a_ai) {
            if (isalive(ai)) {
                if (var_cc6e64ae > 0) {
                    if (!isdefined(ai.var_fd23b38f)) {
                        ai.var_fd23b38f = ai.health;
                    }
                    continue;
                }
                if (isdefined(ai.var_fd23b38f)) {
                    ai.health = ai.var_fd23b38f;
                    ai.var_fd23b38f = undefined;
                }
            }
        }
    }

    // Namespace zsurvival/zsurvival
    // Params 0, eflags: 0x0
    // Checksum 0x9987e35c, Offset: 0x7408
    // Size: 0x64
    function function_4ddaff8e() {
        function_128f8f9f();
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
        level.var_c7b02cfe = &function_447a93ab;
    }

    // Namespace zsurvival/zsurvival
    // Params 0, eflags: 0x4
    // Checksum 0xc27d77dc, Offset: 0x7478
    // Size: 0x134
    function private function_128f8f9f() {
        foreach (map in namespace_18bbc38e::function_3cdae979()) {
            util::add_debug_command("<unknown string>" + map.name + "<unknown string>" + map.name + "<unknown string>");
            util::add_debug_command("<unknown string>" + map.name + "<unknown string>" + map.name + "<unknown string>");
        }
        util::add_debug_command("<unknown string>");
        util::add_debug_command("<unknown string>");
    }

    // Namespace zsurvival/zsurvival
    // Params 0, eflags: 0x4
    // Checksum 0x74913291, Offset: 0x75b8
    // Size: 0x16c
    function private function_2531fcc8() {
        foreach (map in namespace_18bbc38e::function_3cdae979()) {
            foreach (category in level.var_4e996a3f) {
                util::add_debug_command("<unknown string>" + map.name + "<unknown string>" + function_9e72a96(category) + "<unknown string>" + map.name + "<unknown string>" + function_9e72a96(category) + "<unknown string>");
            }
        }
    }

    // Namespace zsurvival/zsurvival
    // Params 1, eflags: 0x0
    // Checksum 0x87b46311, Offset: 0x7730
    // Size: 0x302
    function function_447a93ab(params) {
        switch (params.value) {
        case #"hash_1460b3afd614fb6c":
            namespace_ce1f29cc::function_368a7cde();
            wait(1);
            level flag::set(#"hash_1460b3afd614fb6c");
            level notify(#"objective_ended", {#completed:1});
            break;
        case #"hash_579280d018cff87a":
            function_2531fcc8();
            break;
        default:
            if (issubstr(params.value, "<unknown string>")) {
                foreach (player in getplayers()) {
                    player.var_5d80a93b = player getcurrentweapon();
                }
                cmd_tokens = strtok(params.value, "<unknown string>");
                switch (cmd_tokens.size) {
                case 3:
                    namespace_18bbc38e::function_8e64a2b1(cmd_tokens[1], cmd_tokens[2]);
                case 2:
                    namespace_553954de::function_1aa044d3(cmd_tokens[1]);
                    break;
                case 1:
                    zm_destination_manager::function_dafa6af4();
                    break;
                }
            }
            if (issubstr(params.value, "<unknown string>")) {
                cmd_tokens = strtok(params.value, "<unknown string>");
                objective = level.contentmanager.var_407236bf.list[level.contentmanager.var_407236bf.index];
                namespace_18bbc38e::function_8e64a2b1(cmd_tokens[1], objective);
            }
            break;
        }
    }

#/
