// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_fasttravel.gsc;
#using scripts\zm_common\ai\zm_ai_utility.gsc;
#using scripts\zm_common\zm_blockers.gsc;
#using scripts\zm_common\zm_round_logic.gsc;
#using script_3411bb48d41bd3b;
#using scripts\zm\zm_silver_vo.gsc;
#using scripts\zm\zm_silver_util.gsc;
#using scripts\zm\zm_silver.gsc;
#using script_4d1e366b77f0b4b;
#using scripts\core_common\ai\zombie_utility.gsc;
#using scripts\zm_common\zm_ui_inventory.gsc;
#using scripts\zm_common\zm_stats.gsc;
#using scripts\zm_common\zm_powerups.gsc;
#using scripts\zm_common\zm_vo.gsc;
#using scripts\zm_common\zm_player.gsc;
#using scripts\zm_common\zm_zonemgr.gsc;
#using scripts\zm_common\zm_utility.gsc;
#using scripts\zm_common\zm_unitrigger.gsc;
#using scripts\zm_common\zm_weapons.gsc;
#using scripts\zm_common\zm_sq.gsc;
#using script_4421226bbc54b398;
#using scripts\zm_common\zm_intel.gsc;
#using scripts\zm_common\zm_items.gsc;
#using script_448683444db21d61;
#using scripts\zm_common\zm_equipment.gsc;
#using scripts\zm_common\zm_crafting.gsc;
#using scripts\zm_common\zm_audio.gsc;
#using script_7b1cd3908a825fdd;
#using scripts\zm_common\objective_manager.gsc;
#using scripts\core_common\ai_shared.gsc;
#using script_36f4be19da8eb6d0;
#using scripts\core_common\popups_shared.gsc;
#using scripts\core_common\gameobjects_shared.gsc;
#using scripts\core_common\item_drop.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\exploder_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\callbacks_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\music_shared.gsc;
#using scripts\core_common\content_manager.gsc;
#using script_92d4d637814fefa;
#using script_113dd7f0ea2a1d4f;

#namespace zm_silver_main_quest;

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x67a9e4da, Offset: 0x1788
// Size: 0x9dc
function init() {
    function_f4ac09f8();
    table = getent("zm_mid_table", "targetname");
    if (isdefined(table)) {
        table function_619a5c20();
    }
    if (!zm_utility::is_ee_enabled()) {
        return;
    }
    level.var_465f425d = getent("ent_prf", "script_noteworthy");
    v_pos = level.var_465f425d gettagorigin("tag_origin");
    v_ang = level.var_465f425d gettagangles("tag_origin");
    level.var_5e8ab0 = util::spawn_model("p9_zm_ndu_purifier_tank01", v_pos, v_ang);
    level.var_e25a63e = util::spawn_model("p9_zm_ndu_purifier_tank02", v_pos, v_ang);
    level.var_39acfd4c = util::spawn_model("p9_zm_ndu_purifier_tank03", v_pos, v_ang);
    level.var_c77198d7 = util::spawn_model("p9_zm_ndu_purifier_tank04", v_pos, v_ang);
    init_steps();
    level.var_3034d7b8 = &function_d5d67561;
    callback::on_item_pickup(&on_item_pickup);
    callback::on_spawned(&on_player_spawned);
    level callback::on_actor_killed(&function_17468758);
    level.var_fc5dfa9 = gettime();
    level.var_a36cb684 = gettime();
    level.var_c7557d2f = gettime();
    level.var_46a47223 = [];
    level.var_c8dda611 = [];
    level.var_41a245ae = [];
    level.var_90f0a494 = [];
    level.var_cc18747e = 0;
    level.var_6084dd15 = 0;
    level.var_581a776e = 0;
    level.var_bf3f1109 = 0;
    level.var_3738589 = 0;
    level.var_b3d5a24f = 0;
    level.var_e2d64235 = [];
    level.var_b59d1162 = [];
    level.var_e8ed599 = 0.5;
    level.var_82947ea7 = 0;
    level.var_3df02306 = undefined;
    level.var_e0712ded = [];
    level.var_24de243e = [];
    clientfield::register("scriptmover", "" + #"hash_8358a32177aa60e", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_654274a0648df21d", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_6dc2bf4e960f0495", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_77df0b1fb17c3a18", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_17ea9211637fa6cf", 1, 1, "int");
    clientfield::register("scriptmover", "" + #"hash_2f17676fe2c8e396", 1, 1, "int");
    clientfield::register("toplayer", "" + #"hash_3f49ce049c9da7d", 1, 1, "int");
    clientfield::register("toplayer", "" + #"hash_404a977ff0098cf", 1, 1, "counter");
    clientfield::register("toplayer", "" + #"hash_3cc984f9a32f1508", 1, 1, "int");
    clientfield::register("toplayer", "" + #"hash_41658211f38c2b02", 1, 1, "int");
    clientfield::register("world", "" + #"hash_5c2cc65ae866b3f4", 1, 1, "int");
    clientfield::register("world", "" + #"hash_48df238a087c684e", 1, 1, "int");
    clientfield::register("world", "" + #"hash_17466a1bb2380af6", 1, getminbitcountfornum(4), "int");
    clientfield::register("world", "" + #"hash_6f13307bc53f2de5", 1, 1, "int");
    clientfield::register("world", "" + #"hash_570bb58b50e9db2e", 1, 1, "int");
    clientfield::register("world", "" + #"hash_718b0f4fd6db0bb4", 1, 1, "int");
    clientfield::register("world", "" + #"hash_575a337754ccd980", 1, 1, "int");
    clientfield::register("world", "" + #"hash_3fd05810b220d13a", 1, 1, "int");
    scene::add_scene_func("aib_t9_zm_silver_echo_1_vogel_01", &function_332ca53e, "done", #"done_echo_scene_vogel_01");
    scene::add_scene_func("aib_t9_zm_silver_echo_2_vogel_01", &function_332ca53e, "done", #"done_echo_scene_vogel_02");
    scene::add_scene_func("aib_t9_zm_silver_echo_3_vogel_01", &function_332ca53e, "done", #"done_echo_scene_vogel_03");
    scene::add_scene_func("aib_t9_zm_silver_secretecho_2_lastsoldier_01", &function_299c9b7f, "done");
    scene::add_scene_func("aib_t9_zm_silver_secretecho_1_kurtzandvogel_01", &function_acc98467, "done");
    scene::add_scene_func("aib_t9_zm_silver_secretecho_3_dmitriyev_kalashnik_01_throw", &function_2214bfa4, "done");
    scene::add_scene_func("aib_t9_zm_silver_secretecho_4_orlovandmedved", &function_e920684, "done");
    scene::add_scene_func("aib_t9_zm_silver_secretecho_5_valentinaandpeck", &function_68fb1270, "done");
    scene::add_scene_func("aib_t9_zm_silver_echo_5_orlov_01", &function_4afbb1fa, "done");
    scene::add_scene_func("aib_t9_zm_silver_echo_4_dmitriyev_kalashnik_01", &function_fc0ced31, "done");
    level thread function_3f559b17();
    level thread function_58ce052e(0);
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xf3bb4f0c, Offset: 0x2170
// Size: 0x10c
function function_f4ac09f8() {
    var_f04dd3ef = getentarray("exfil_aether_clip", "targetname");
    foreach (e_clip in var_f04dd3ef) {
        e_clip notsolid();
        e_clip connectpaths();
    }
    level thread scene::init(#"hash_1da91e1000776d72");
    level thread scene::init(#"hash_60241ccceaf44d2a");
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xc8cac2ec, Offset: 0x2288
// Size: 0x40c
function init_steps() {
    level zm_sq::register(#"main_quest", #"hash_31615b8387c7fe75", #"hash_31615b8387c7fe75", &function_5c9f6aa5, &function_d280572e);
    level zm_sq::register(#"main_quest", #"hash_1e814d4b4714c618", #"hash_1e814d4b4714c618", &function_f8065ad8, &function_bdfb3840);
    level zm_sq::register(#"main_quest", #"hash_61ed135b2872c893", #"hash_61ed135b2872c893", &function_6e538fed, &function_2bc04c1);
    level zm_sq::register(#"main_quest", #"hash_92c2f3cbebbdf63", #"hash_92c2f3cbebbdf63", &function_7d5e3785, &function_3520ea1b);
    var_767ca252 = getent("vol_trap_zone", "script_noteworthy");
    level zm_sq::register(#"main_quest", #"hash_3d0833fa6be461ba", #"hash_3d0833fa6be461ba", &function_ea72075c, &function_9c7d7ce3);
    level zm_sq::register(#"main_quest", #"hash_a9a2facc1258eb5", #"hash_a9a2facc1258eb5", &function_54ad1c95, &function_afbc77b5);
    level zm_sq::register(#"main_quest", #"hash_76f226ea4b16acdf", #"hash_76f226ea4b16acdf", &function_cb0e55f0, &function_70ffca9c);
    level zm_sq::register(#"main_quest", #"photograph", #"photograph", &function_1bddc36a, &function_d5e55496);
    level zm_sq::register(#"main_quest", #"defend", #"defend", &function_34c29791, &function_d7ef969f);
    level zm_sq::register(#"main_quest", #"hash_48ee9c10dd3affe2", #"hash_48ee9c10dd3affe2", &function_852146cc, &function_e3bd1289, 1);
    level thread function_5f94604c();
}

/#

    // Namespace zm_silver_main_quest/zm_silver_main_quest
    // Params 1, eflags: 0x4
    // Checksum 0x26f79323, Offset: 0x26a0
    // Size: 0x106
    function private function_7a4e3128(var_77f5a825) {
        if (!getdvarint(#"zm_debug_ee", 0)) {
            return;
        }
        self notify(#"hash_706c332950c29a");
        self endon(#"death", #"trigger_activated", #"hash_706c332950c29a");
        if (isdefined(var_77f5a825)) {
            level endon(var_77f5a825);
        }
        while (true) {
            print3d(self.origin, isdefined(self.targetname) ? self.targetname : "p9_zm_ndu_blank_book_v", (1, 1, 0));
            circle(self.origin, 50, (1, 0, 0));
            waitframe(1);
        }
    }

#/

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x6 linked
// Checksum 0x4a2e7c80, Offset: 0x27b0
// Size: 0x5c
function private function_5f94604c() {
    level flag::wait_till(#"pap_quest_completed");
    level thread function_42da022b();
    level zm_sq::start(#"main_quest");
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x902e8bdc, Offset: 0x2818
// Size: 0x8c
function function_5c9f6aa5(b_skipped) {
    if (!b_skipped) {
        zm_crafting::function_d1f16587("ztable_silver_aetherscope", &aetherscope_assembled);
        level thread function_16b7f990();
        level notify(#"hash_64a65262c4492d98");
        level flag::wait_till(#"hash_6aad5c2eec44c8a0");
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x353cd139, Offset: 0x28b0
// Size: 0x93c
function function_16b7f990() {
    level endon(#"end_game", #"hash_6aad5c2eec44c8a0");
    level flag::set("on_mq_step_0_2");
    level flag::wait_till_clear(#"dark_aether_active");
    var_32b1f567 = struct::get_array("zm_ptl_scope", "targetname");
    level.var_44aa636e = getent("zm_mid_table", "targetname");
    level childthread function_b2f3498a();
    var_7588c69f = 0;
    var_952641e5 = 0;
    var_2d4fbfe0 = undefined;
    var_9463599a = undefined;
    while (true) {
        if (var_32b1f567.size == 0) {
            level.var_ba3a0e1f = 0;
            var_f29ccbc4 = getentarray("crafting_trigger", "targetname");
            if (isdefined(var_f29ccbc4)) {
                array::run_all(var_f29ccbc4, &setinvisibletoall);
            }
            level flag::wait_till_clear(#"dark_aether_active");
            if (isdefined(var_f29ccbc4)) {
                array::run_all(var_f29ccbc4, &setvisibletoall);
            }
            break;
        }
        if (!isdefined(var_2d4fbfe0)) {
            var_2d4fbfe0 = var_32b1f567[randomint(var_32b1f567.size)];
        }
        if (!level flag::get(#"dark_aether_active")) {
            if (var_2d4fbfe0 flag::get(#"hash_7a42d508140ae262")) {
                level flag::wait_till(#"hash_4d6700553ede7078");
            }
            var_f2484ed9 = util::spawn_model("tag_origin", var_2d4fbfe0.origin);
            var_f2484ed9 clientfield::set("" + #"hash_7ec80a02e9bb051a", 1);
            var_2d4fbfe0 function_19986231();
            if (!isdefined(level.var_83de12b4)) {
                level.var_83de12b4 = [];
            } else if (!isarray(level.var_83de12b4)) {
                level.var_83de12b4 = array(level.var_83de12b4);
            }
            level.var_83de12b4[level.var_83de12b4.size] = var_f2484ed9;
            /#
                var_f2484ed9 thread function_7a4e3128(#"hash_2dd625fe64fe0cd3");
            #/
            if (var_7588c69f) {
            }
            if (!isdefined(var_9463599a)) {
                var_9463599a = var_f2484ed9 zm_silver_util::function_3be9e71a();
            }
            var_f2484ed9 function_58e278a1();
            waitresult = level waittill(#"dark_tear_activated", #"into_the_dark_side");
            if (waitresult._notify == "dark_tear_activated") {
                var_2d4fbfe0 flag::set(#"hash_7a42d508140ae262");
                level notify(#"into_the_dark_side");
                level flag::set(#"hash_314875ee06541bf1");
            }
            var_f2484ed9.mdl_gameobject thread zm_silver_util::function_1194b9bc();
            level flag::wait_till(#"dark_aether_active");
            if (isdefined(var_9463599a)) {
                var_9463599a delete();
            }
            var_f2484ed9 clientfield::set("" + #"hash_7ec80a02e9bb051a", 0);
            var_f2484ed9 delete();
            if (!var_2d4fbfe0 flag::get(#"hash_7a42d508140ae262")) {
                wait(1);
                continue;
            }
        }
        level flag::wait_till(#"dark_aether_active");
        if (!level flag::get(#"hash_314875ee06541bf1")) {
            wait(1);
            continue;
        }
        showmiscmodels(var_2d4fbfe0.var_96dbe9c2);
        var_f6425d8c = struct::get(var_2d4fbfe0.target2, "targetname");
        point = function_4ba8fde(var_f6425d8c.itemname);
        mdl_part = item_drop::drop_item(0, undefined, 1, 0, point.id, var_f6425d8c.origin, var_f6425d8c.angles, 0);
        /#
            mdl_part thread function_7a4e3128(#"hash_2dd625fe64fe0cd3");
        #/
        waitresult = level waittill(#"manage_to_find_aetherscope_part", #"dark_aether_active");
        if (waitresult._notify === "manage_to_find_aetherscope_part") {
            waitresult.player thread function_829dde5f();
            zm_items::player_pick_up(waitresult.player, zm_crafting::get_component(var_2d4fbfe0.var_813c4285));
            hidemiscmodels(var_2d4fbfe0.var_96dbe9c2);
            showmiscmodels(level.var_44aa636e.var_96dbe9c2);
            var_7588c69f = 1;
            if (!var_952641e5) {
                var_952641e5 = 1;
            }
            arrayremovevalue(var_32b1f567, var_2d4fbfe0);
            var_2d4fbfe0 = undefined;
            var_9f928cb9 = util::spawn_model(var_f6425d8c.model, struct::get(var_f6425d8c.target, "targetname").origin, struct::get(var_f6425d8c.target, "targetname").angles);
            var_9f928cb9 thread function_6e288d90();
            continue;
        }
        if (isdefined(mdl_part)) {
            mdl_part delete();
        }
        level flag::clear(#"hash_314875ee06541bf1");
    }
    level flag::wait_till("aetherscope_assembled");
    point = function_4ba8fde("item_zmintel_silver_requiem_artifact_3");
    var_9d20261b = item_drop::drop_item(0, undefined, 1, 0, point.id, struct::get("zm_mid_scope").origin, struct::get("zm_mid_scope").angles, 0);
    var_9d20261b.var_dd21aec2 = 1 | 16;
    level flag::wait_till("aetherscope_collected");
    /#
        iprintlnbold("notebook_given");
    #/
    level function_a3de347d();
    level flag::set(#"hash_6aad5c2eec44c8a0");
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xb0544573, Offset: 0x31f8
// Size: 0x10c
function function_829dde5f() {
    zone_name = self.zone_name;
    level flag::clear("spawn_zombies");
    var_2eb22136 = 4 + getplayers().size * 2;
    if (isdefined(level.var_e2aef122)) {
        level.var_e2aef122 += var_2eb22136;
    }
    while (var_2eb22136 > 0) {
        ai = zm_utility::function_cce73165("dog_location", #"hash_12a17ab3df5889eb", zone_name);
        if (isdefined(ai)) {
            var_2eb22136--;
            ai.var_ba75c6dc = 1;
        }
        waitframe(1);
    }
    level flag::set("spawn_zombies");
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xf3aa02ca, Offset: 0x3310
// Size: 0x162
function function_58e278a1(t_override = undefined) {
    if (!isdefined(self.mdl_gameobject)) {
        self.require_look_at = 1;
        self gameobjects::init_game_objects(#"hash_76653e6fda4bdfd1", undefined, undefined, t_override);
        self.mdl_gameobject gameobjects::allow_use(#"hash_5ccfd7bbbf07c770");
        self.mdl_gameobject gameobjects::set_onuse_event(&function_bd02699e);
        self.mdl_gameobject gameobjects::set_onbeginuse_event(&zm_silver_util::function_e6830825);
        self.mdl_gameobject gameobjects::set_onenduse_event(&zm_silver_util::function_834fd6bc);
        self.mdl_gameobject.trigger thread function_cf1b6a29();
        self.mdl_gameobject.dontlinkplayertotrigger = 1;
        self.mdl_gameobject.keepweapon = 1;
        self.mdl_gameobject.canuseobject = &zm_silver_util::function_dd9482b7;
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x22e966fc, Offset: 0x3480
// Size: 0x14a
function function_cf1b6a29() {
    self endon(#"death");
    while (isdefined(self)) {
        foreach (player in function_a1ef346b()) {
            self setcursorhint("HINT_NOICON");
            self usetriggerignoreuseholdtime();
            self function_268e4500();
            b_enabled = self function_2a90006d(player);
            if (b_enabled) {
                self setvisibletoplayer(player);
                continue;
            }
            self setinvisibletoplayer(player);
        }
        wait(1);
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x2ec19cda, Offset: 0x35d8
// Size: 0xf8
function function_2a90006d(e_player) {
    if (level flag::get(#"hash_3e765c26047c9f54") || level flag::get("in_exfil_event")) {
        self sethintstringforplayer(e_player, #"hash_4480b689c4039dac");
        return 1;
    }
    if (!e_player usebuttonpressed()) {
        self sethintstringforplayer(e_player, #"hash_622731cfc9a72bfa");
        return 1;
    }
    self sethintstringforplayer(e_player, #"");
    return 0;
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x8e0eb53a, Offset: 0x36d8
// Size: 0x44
function function_bd02699e(*player) {
    self notify(#"hash_2330fdbe6e3eb567");
    level notify(#"dark_tear_activated");
    self thread zm_silver_util::function_cc15b58a();
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x0
// Checksum 0xc512a44d, Offset: 0x3728
// Size: 0x128
function function_97000481() {
    self endon(#"death");
    while (isdefined(self)) {
        waitresult = self waittill(#"trigger");
        e_player = waitresult.activator;
        if (!zm_utility::can_use(e_player)) {
            continue;
        }
        if (isplayer(e_player)) {
            e_player clientfield::increment_to_player("" + #"hash_6696d96a08b9701d");
        }
        level notify(#"dark_tear_activated");
        if (isdefined(self.stub) && isdefined(self.stub.related_parent)) {
            self.stub.related_parent notify(#"trigger_activated", {#e_who:e_player});
        }
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x29b7bc85, Offset: 0x3858
// Size: 0x130
function function_b2f3498a() {
    while (!level flag::get("aetherscope_assembled")) {
        waitresult = level waittill(#"crafting_started");
        level thread scene::play("p9_fxanim_zm_gp_crafting_variant_bundle", level.var_44aa636e);
        var_1377a1e8 = waitresult.activator;
        var_1377a1e8 clientfield::set_to_player("" + #"hash_3f49ce049c9da7d", 1);
        waitresult.unitrigger waittill(#"hash_6db03c91467a21f5");
        level thread scene::stop("p9_fxanim_zm_gp_crafting_variant_bundle");
        if (isdefined(var_1377a1e8)) {
            var_1377a1e8 clientfield::set_to_player("" + #"hash_3f49ce049c9da7d", 0);
        }
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xd152480c, Offset: 0x3990
// Size: 0x6c
function aetherscope_assembled(*var_1377a1e8) {
    /#
        iprintlnbold("zm_con_rec");
    #/
    hidemiscmodels(level.var_44aa636e.var_96dbe9c2);
    level flag::set("aetherscope_assembled");
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x4fc6b03c, Offset: 0x3a08
// Size: 0x4c
function function_6e288d90() {
    level endon(#"end_game");
    level waittill(#"aetherscope_assembled");
    self delete();
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x7d11bcf0, Offset: 0x3a60
// Size: 0x14
function function_a3de347d() {
    zm_silver_util::function_8fbe908e();
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 2, eflags: 0x2 linked
// Checksum 0x593f6eee, Offset: 0x3a80
// Size: 0xe4
function function_d280572e(b_skipped, var_19e802fa) {
    if (b_skipped || var_19e802fa) {
        if (isarray(level.var_83de12b4)) {
            arrayremovevalue(level.var_83de12b4, undefined);
            array::run_all(level.var_83de12b4, &delete);
        }
        level flag::set("aetherscope_collected");
        level flag::set(#"hash_6aad5c2eec44c8a0");
        level function_a3de347d();
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xe512b0c6, Offset: 0x3b70
// Size: 0x64
function function_f8065ad8(b_skipped) {
    if (!b_skipped) {
        level thread function_6498e65c();
        level notify(#"hash_360f9258b1f19bcb");
        level flag::wait_till(#"init_purifier_finished");
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x6aafa288, Offset: 0x3be0
// Size: 0xf0
function function_3f559b17() {
    level endon(#"end_game", #"hash_737db8433b93b7ae", #"init_purifier_finished");
    level.var_3bc06d8a = getent("zm_re_com", "script_noteworthy");
    while (true) {
        level thread function_e1352bc9();
        level flag::wait_till(#"dark_aether_active");
        level.var_3bc06d8a zm_unitrigger::unregister_unitrigger(level.var_3bc06d8a.s_unitrigger);
        level flag::wait_till_clear(#"dark_aether_active");
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x6dc6fde4, Offset: 0x3cd8
// Size: 0x240
function function_e1352bc9() {
    level endon(#"end_game", #"hash_737db8433b93b7ae", #"dark_aether_active");
    while (true) {
        level.var_3bc06d8a zm_unitrigger::unregister_unitrigger(level.var_3bc06d8a.s_unitrigger);
        level.var_3bc06d8a zm_unitrigger::create(#"hash_597a0ba4f4b5aa8", 48, &function_ce94e1d2);
        level.var_3bc06d8a.s_unitrigger.origin += (0, 24, 0);
        level.var_3bc06d8a waittill(#"trigger_activated");
        level.var_3bc06d8a zm_unitrigger::unregister_unitrigger(level.var_3bc06d8a.s_unitrigger);
        level.var_3bc06d8a.s_unitrigger = undefined;
        if (!is_true(level.var_b46e7e38)) {
            level.var_b46e7e38 = 1;
            level.var_3bc06d8a playsound(#"hash_98bcba1225bfa3");
            level.var_3bc06d8a zm_vo::function_d6f8bbd9(#"hash_1dafefe0169ec35e");
            level.var_3bc06d8a zm_vo::function_d6f8bbd9(#"hash_27b891a644e4399");
            continue;
        }
        level.var_3bc06d8a playsound(#"hash_1b8526005ad2bb44");
        level.var_3bc06d8a zm_vo::function_d6f8bbd9(#"hash_2499b044fab62925");
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x39f06720, Offset: 0x3f20
// Size: 0x5e4
function function_6498e65c() {
    level endon(#"init_purifier_finished");
    level flag::wait_till_clear("in_dark_side");
    level flag::set(#"hash_2aecb7319e5a0d11");
    level thread function_34a1157d("aib_t9_zm_silver_secretecho_2_lastsoldier_01", "scn_lastsoldier", "zone_proto_interior_lower", "init_purifier_finished", "done_echo_scene_lastsoldier");
    level thread function_34a1157d("aib_t9_zm_silver_secretecho_1_kurtzandvogel_01", "echo_scene_kurtzandvogel", "zone_center_upper_north", "init_purifier_finished", "done_echo_scene_kurtzandvogel");
    var_617f86a3 = struct::get("control_room_tear", "script_noteworthy");
    level thread function_a3d3d7c2(var_617f86a3);
    function_7b6e6199();
    hidemiscmodels(var_617f86a3.var_96dbe9c2);
    /#
        level.var_3bc06d8a thread function_7a4e3128(#"hash_1a730a397ac55112");
    #/
    level.var_3bc06d8a function_619a5c20();
    level.var_3bc06d8a zm_unitrigger::unregister_unitrigger(level.var_3bc06d8a.s_unitrigger);
    level.var_3bc06d8a zm_unitrigger::create(&function_f67c8bbb, 48, &function_ce94e1d2);
    level.var_3bc06d8a.s_unitrigger.origin += (0, 24, 0);
    level.var_3bc06d8a waittill(#"trigger_activated");
    level.var_3bc06d8a function_23a29590();
    level.var_3bc06d8a zm_unitrigger::unregister_unitrigger(level.var_3bc06d8a.s_unitrigger);
    level.var_3bc06d8a.s_unitrigger = undefined;
    /#
        iprintlnbold("recovered");
    #/
    if (isdefined(level.var_6c682532)) {
        level.var_6c682532 delete();
    }
    level.var_7c6e836b = util::spawn_model(#"hash_23c2423afaccc4e5", level.var_b2371398.origin, level.var_b2371398.angles);
    level.var_3a734155 = util::spawn_model(#"hash_2a7c99f5ca0f1bbd", level.var_b2371398.origin, level.var_b2371398.angles);
    level.var_7c6e836b playsound(#"hash_98bcba1225bfa3");
    wait(1);
    if (isdefined(level.var_3a734155)) {
        level.var_3a734155 delete();
    }
    level.var_fc67035a = util::spawn_model(#"hash_23c2493afaccd0ca", level.var_b2371398.origin, level.var_b2371398.angles);
    level.var_50356cd9 = util::spawn_model(#"hash_2a7c98f5ca0f1a0a", level.var_b2371398.origin, level.var_b2371398.angles);
    level.var_fc67035a playsound(#"hash_98bcba1225bfa3");
    wait(1);
    if (isdefined(level.var_50356cd9)) {
        level.var_50356cd9 delete();
    }
    level.var_729c7023 = util::spawn_model(#"hash_23c24b3afaccd430", level.var_b2371398.origin, level.var_b2371398.angles);
    level.var_729c7023 playsound(#"hash_425afc32b2eb6c0c");
    wait(1);
    var_465f425d = getent("ent_prf", "script_noteworthy");
    var_465f425d clientfield::set("" + #"hash_77df0b1fb17c3a18", 1);
    level.var_3bc06d8a zm_vo::function_d6f8bbd9(#"hash_27bba296634d1ae1");
    level notify(#"hash_222af38f51671594");
    level flag::set(#"init_purifier_finished");
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xa5743b4a, Offset: 0x4510
// Size: 0x54
function function_f67c8bbb(*e_player) {
    if (!level flag::get(#"dark_aether_active")) {
        self sethintstring(#"hash_2a4e3990e91343b9");
        return true;
    }
    return false;
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x6 linked
// Checksum 0x144330ea, Offset: 0x4570
// Size: 0xc
function private function_51cc09e(var_f2484ed9) {
    
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xf61ea4cf, Offset: 0x46b8
// Size: 0x7f4
function function_a3d3d7c2(var_a3496a80) {
    level endon(#"end_game");
    tear = util::spawn_model("tag_origin", var_a3496a80.origin);
    var_ff8e8b10 = getent("zm_note_left", "script_noteworthy");
    var_5297399c = util::spawn_model("p9_zm_ndu_blank_book_a", var_ff8e8b10.origin, var_ff8e8b10.angles);
    var_5297399c hide();
    var_d27db96b = util::spawn_model("p9_zm_ndu_blank_book_h", var_ff8e8b10.origin, var_ff8e8b10.angles);
    var_d27db96b hide();
    var_8ab5297b = util::spawn_model("p9_zm_ndu_blank_book_v", var_ff8e8b10.origin, var_ff8e8b10.angles);
    var_8ab5297b hide();
    level thread function_51cc09e(tear);
    var_9463599a = undefined;
    while (!level flag::get(#"hash_737db8433b93b7ae")) {
        if (tear flag::get(#"hash_7a42d508140ae262")) {
            level flag::wait_till(#"hash_4d6700553ede7078");
        }
        tear clientfield::set("" + #"hash_7ec80a02e9bb051a", 1);
        /#
            tear thread function_7a4e3128(#"hash_1a730a397ac55112");
        #/
        tear function_19986231();
        if (!isdefined(var_9463599a)) {
            var_9463599a = tear zm_silver_util::function_3be9e71a();
        }
        t_override = spawn("trigger_radius_use", tear.origin + (0, 0, 48), 0, 96, 48, 1);
        t_override usetriggerrequirelookat(1);
        tear function_58e278a1(t_override);
        waitresult = level waittill(#"dark_tear_activated", #"into_the_dark_side");
        if (waitresult._notify == "into_the_dark_side") {
            tear.mdl_gameobject thread zm_silver_util::function_1194b9bc();
            if (isdefined(t_override)) {
                t_override delete();
            }
            level flag::wait_till(#"dark_aether_active");
            if (isdefined(var_9463599a)) {
                var_9463599a delete();
            }
            tear clientfield::set("" + #"hash_7ec80a02e9bb051a", 0);
            level flag::wait_till_clear(#"dark_aether_active");
            continue;
        }
        tear.mdl_gameobject thread zm_silver_util::function_1194b9bc();
        if (isdefined(t_override)) {
            t_override delete();
        }
        level notify(#"into_the_dark_side");
        level flag::set(#"hash_4fa1234f7156acb5");
        level flag::wait_till(#"dark_aether_active");
        tear flag::set(#"hash_7a42d508140ae262");
        if (isdefined(var_9463599a)) {
            var_9463599a delete();
        }
        tear clientfield::set("" + #"hash_7ec80a02e9bb051a", 0);
        showmiscmodels(var_a3496a80.var_96dbe9c2);
        var_ff8e8b10 hide();
        var_5297399c hide();
        var_d27db96b hide();
        if (!level flag::get("someone_has_notebook")) {
            point = function_4ba8fde("item_zmintel_silver_requiem_artifact_4");
            var_59a8717 = item_drop::drop_item(0, undefined, 1, 0, point.id, struct::get("zm_re_note", "script_noteworthy").origin, struct::get("zm_re_note", "script_noteworthy").angles, 0);
            var_59a8717.var_dd21aec2 = 1 | 16;
            /#
                var_59a8717 thread function_7a4e3128(#"hash_1a730a397ac55112");
            #/
        }
        level flag::wait_till_clear(#"dark_aether_active");
        level flag::clear(#"hash_4fa1234f7156acb5");
        if (isdefined(var_59a8717)) {
            var_59a8717 delete();
        }
        var_ff8e8b10 show();
        if (level flag::get("collect_letter_h")) {
            var_5297399c show();
            var_d27db96b show();
            continue;
        }
        if (level flag::get("collect_letter_a")) {
            var_5297399c show();
        }
    }
    level flag::wait_till_clear(#"dark_aether_active");
    var_ff8e8b10 show();
    var_5297399c show();
    var_d27db96b show();
    var_8ab5297b show();
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x6155f358, Offset: 0x4eb8
// Size: 0x310
function function_7b6e6199() {
    level endon(#"init_purifier_finished");
    level.var_3d0030f2 = [struct::get("vogel_echo_1", "script_noteworthy"), struct::get("vogel_echo_3", "script_noteworthy"), struct::get("vogel_echo_2", "script_noteworthy")];
    while (true) {
        if (level.var_3d0030f2.size == 0) {
            level flag::set(#"hash_737db8433b93b7ae");
            break;
        }
        level flag::wait_till(#"dark_aether_active");
        if (!level flag::get(#"hash_4fa1234f7156acb5")) {
            wait(1);
            continue;
        }
        level.var_3d0030f2[0].var_94c7397b = util::spawn_model("tag_origin", level.var_3d0030f2[0].origin);
        level.var_3d0030f2[0].var_94c7397b thread function_de34115();
        level.var_3d0030f2[0].var_94c7397b zm_unitrigger::create(&function_45fed3bf, (64, 64, 64), &function_1876812b);
        level.var_3d0030f2[0].var_94c7397b thread function_19cc9adc();
        waitresult = level waittill(#"notebook_given", #"dark_aether_active");
        wait(1);
        zm_unitrigger::unregister_unitrigger(level.var_3d0030f2[0].var_94c7397b.s_unitrigger);
        level.var_3d0030f2[0].var_94c7397b.s_unitrigger = undefined;
        if (isdefined(level.var_3d0030f2[0].var_94c7397b)) {
            level.var_3d0030f2[0].var_94c7397b delete();
        }
        if (waitresult._notify === "notebook_given") {
            arrayremovevalue(level.var_3d0030f2, level.var_3d0030f2[0]);
        }
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x9401606a, Offset: 0x51d0
// Size: 0x7c
function function_45fed3bf(*e_player) {
    if (level flag::get("dark_aether_active") && !level flag::get("start_back_to_normal")) {
        self sethintstring(#"hash_51eee553370b6580");
        return true;
    }
    return false;
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xee7147c0, Offset: 0x5258
// Size: 0x244
function function_1876812b() {
    level endon(#"end_game", #"dark_aether_active", #"notebook_given");
    self endon(#"death");
    waitresult = self waittill(#"trigger");
    waitresult.activator thread flag::set_for_time(2, #"hash_7ef7aab6a305d0b0");
    if (isdefined(self.stub.related_parent)) {
        self.stub.related_parent flag::set("orb_is_deciphered");
    }
    if (isplayer(waitresult.activator)) {
        waitresult.activator clientfield::increment_to_player("" + #"hash_6696d96a08b9701d");
    }
    if (!isdefined(level.var_3d0030f2[0].script_noteworthy)) {
        return;
    }
    switch (level.var_3d0030f2[0].script_noteworthy) {
    case #"vogel_echo_1":
        level thread function_28cbcd87("aib_t9_zm_silver_echo_1_vogel_01", "init");
        break;
    case #"vogel_echo_2":
        level thread function_28cbcd87("aib_t9_zm_silver_echo_2_vogel_01", "init");
        break;
    case #"vogel_echo_3":
        level thread function_28cbcd87("aib_t9_zm_silver_echo_3_vogel_01", "init");
        break;
    }
    if (isdefined(self.stub.related_parent)) {
        self.stub.related_parent notify(#"trigger_activated");
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x8a401842, Offset: 0x54a8
// Size: 0x370
function function_19cc9adc() {
    level endon(#"end_game", #"dark_aether_active");
    self endon(#"death");
    self waittill(#"trigger_activated");
    zm_unitrigger::unregister_unitrigger(self.s_unitrigger);
    self.s_unitrigger = undefined;
    wait(1);
    e_activator = self zm_unitrigger::function_fac87205(&function_59f2369, (64, 64, 64));
    if (isplayer(e_activator)) {
        e_activator clientfield::increment_to_player("" + #"hash_6696d96a08b9701d");
    }
    switch (level.var_3d0030f2[0].script_noteworthy) {
    case #"vogel_echo_1":
        level thread function_28cbcd87("aib_t9_zm_silver_echo_1_vogel_01", "main");
        var_c74251a4 = scene::function_8582657c("aib_t9_zm_silver_echo_1_vogel_01", "main");
        level thread function_c5a2352(var_c74251a4, e_activator.zone_name, "done_echo_scene_vogel_01");
        level flag::set("collect_letter_a");
        break;
    case #"vogel_echo_2":
        level thread function_28cbcd87("aib_t9_zm_silver_echo_2_vogel_01", "main");
        var_c74251a4 = scene::function_8582657c("aib_t9_zm_silver_echo_2_vogel_01", "main");
        level thread function_c5a2352(var_c74251a4, e_activator.zone_name, "done_echo_scene_vogel_02");
        level flag::set("collect_letter_h");
        break;
    case #"vogel_echo_3":
        level thread function_28cbcd87("aib_t9_zm_silver_echo_3_vogel_01", "main");
        var_c74251a4 = scene::function_8582657c("aib_t9_zm_silver_echo_3_vogel_01", "main");
        level thread function_c5a2352(var_c74251a4, e_activator.zone_name, "done_echo_scene_vogel_03");
        level flag::set("collect_letter_v");
        break;
    }
    if (level.var_ba3a0e1f < var_c74251a4) {
        level.var_ba3a0e1f = var_c74251a4;
    } else if (level.var_3d0030f2[0].script_noteworthy === "vogel_echo_3") {
        level.var_ba3a0e1f = var_c74251a4;
    }
    level notify(#"notebook_given");
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x12d11864, Offset: 0x5820
// Size: 0x9c
function function_59f2369(*e_player) {
    if (level flag::get("someone_has_notebook") && level flag::get("dark_aether_active") && !level flag::get("start_back_to_normal")) {
        self sethintstring(#"hash_79ebe2a27b154ea0");
        return true;
    }
    return false;
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 3, eflags: 0x2 linked
// Checksum 0x37bbc6ad, Offset: 0x58c8
// Size: 0x164
function function_c5a2352(time, zone, var_87451728) {
    function_cd1efeed(zone, 0);
    a_players = getplayers();
    foreach (player in a_players) {
        player thread function_a7f549b0(zone, var_87451728);
    }
    level callback::on_actor_damage(&function_e1e6ef8d);
    if (isdefined(time) && time > 1) {
        wait(time - 1);
    }
    function_165ebd72(zone);
    function_cd1efeed(zone, 1);
    level callback::remove_on_actor_damage(&function_e1e6ef8d);
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 2, eflags: 0x2 linked
// Checksum 0x298b2712, Offset: 0x5a38
// Size: 0x94
function function_28cbcd87(scene_name, shot_name) {
    if (isdefined(shot_name)) {
        level thread scene::play(scene_name, shot_name);
    } else {
        level thread scene::play(scene_name);
    }
    level flag::wait_till("start_back_to_normal");
    level scene::delete_scene_spawned_ents(scene_name);
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x277c6183, Offset: 0x5ad8
// Size: 0x34
function function_de34115() {
    self function_d2fe6299();
    self function_79d4f5fd();
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x73aff023, Offset: 0x5b18
// Size: 0x21e
function function_d2fe6299() {
    level endon(#"end_game");
    /#
        self thread function_7a4e3128(#"hash_1a730a397ac55112");
    #/
    while (!self flag::get("orb_is_deciphered") && level flag::get(#"dark_aether_active") && !level flag::get("start_back_to_normal")) {
        var_a330507a = 0;
        foreach (player in function_a1ef346b()) {
            if (distancesquared(self.origin, player.origin) > 65536) {
                if (player.var_51cff0f8 === self) {
                    player.var_51cff0f8 = undefined;
                    player flag::clear(#"hash_1154242c9b1e4518");
                }
                continue;
            }
            var_a330507a = 1;
            if (!isdefined(player.var_51cff0f8)) {
                player.var_51cff0f8 = self;
                player flag::set(#"hash_1154242c9b1e4518");
            }
        }
        self clientfield::set("" + #"hash_8358a32177aa60e", var_a330507a);
        waitframe(1);
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x828af8bb, Offset: 0x5d40
// Size: 0xf4
function function_79d4f5fd() {
    all_players = getplayers();
    foreach (player in all_players) {
        if (player.var_51cff0f8 === self) {
            player.var_51cff0f8 = undefined;
            player flag::clear(#"hash_1154242c9b1e4518");
        }
    }
    self clientfield::set("" + #"hash_8358a32177aa60e", 0);
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 2, eflags: 0x2 linked
// Checksum 0x99acb788, Offset: 0x5e40
// Size: 0x44
function function_bdfb3840(b_skipped, var_19e802fa) {
    if (b_skipped || var_19e802fa) {
        level flag::set(#"init_purifier_finished");
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x2cdee521, Offset: 0x5e90
// Size: 0x64
function function_6e538fed(b_skipped) {
    if (!b_skipped) {
        level thread function_dd3b6aa2();
        level notify(#"hash_c28b252525633da");
        level flag::wait_till(#"hash_5d063793500cc512");
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x98146b9a, Offset: 0x5f00
// Size: 0x24c
function function_dd3b6aa2() {
    level endon(#"hash_5d063793500cc512");
    if (isdefined(level.var_7c6e836b)) {
        level.var_7c6e836b delete();
    }
    if (isdefined(level.var_fc67035a)) {
        level.var_fc67035a delete();
    }
    if (isdefined(level.var_729c7023)) {
        level.var_729c7023 delete();
    }
    level.var_59b6e9a5 setmodel(#"hash_ae53eff256fd336");
    level.var_59b6e9a5 playsound(#"hash_691b9c2488253fde");
    level flag::clear("on_mq_step_0_2");
    level.var_5e8ab0 thread function_3536208d("receptacle_dmg_01");
    level.var_e25a63e thread function_3536208d("receptacle_dmg_02");
    level.var_39acfd4c thread function_3536208d("receptacle_dmg_03");
    level.var_c77198d7 thread function_3536208d("receptacle_dmg_04");
    playsoundatposition(#"hash_212665295f429897", (266, 1681, -312));
    level flag::wait_till_all(["power_particle_collected", "power_gas_collected", "power_nitrogen_collected", "power_plasma_collected"]);
    /#
        iprintlnbold("clp_prf_rit");
    #/
    level flag::set(#"hash_5d063793500cc512");
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 2, eflags: 0x0
// Checksum 0xe6aed721, Offset: 0x6158
// Size: 0x4e
function function_f5edeec7(player, time) {
    if (time >= 2000) {
        self notify(#"hash_323bacd5b189fc1e", {#player:player});
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x2bb40e34, Offset: 0x61b0
// Size: 0x552
function function_3536208d(trig_name) {
    self endon(#"hash_6d87c51108eb2436");
    var_6e56e8a6 = getent(trig_name, "targetname");
    var_6e56e8a6 enablegrenadetouchdamage();
    flag = function_27f2ef17(var_6e56e8a6);
    function_4e3bb793(var_6e56e8a6, flag & ~512);
    /#
        self thread function_7a4e3128(#"hash_5be263faf0397bd");
    #/
    while (true) {
        waitresult = var_6e56e8a6 waittill(#"damage");
        if (isplayer(waitresult.attacker) && !isdefined(waitresult.var_98e101b0) && waitresult.mod !== "MOD_MELEE") {
            if (self == level.var_5e8ab0) {
                if (namespace_b376a999::function_f17bb85a(waitresult.weapon) && !level flag::get("power_plasma_collected")) {
                    level flag::set("power_plasma_collected");
                    self scene::play("aib_t9_zm_silver_megaton_intro_purifier_tank_01", self);
                    self linkto(level.var_465f425d);
                    /#
                        iprintlnbold("des_steiner_1");
                    #/
                    self flag::set(#"hash_6d87c51108eb2436");
                    /#
                        self notify(#"hash_706c332950c29a");
                    #/
                }
                continue;
            }
            if (self == level.var_e25a63e) {
                if (namespace_b376a999::function_f1c015e1(waitresult.weapon) && !level flag::get("power_gas_collected")) {
                    level flag::set("power_gas_collected");
                    self scene::play("aib_t9_zm_silver_megaton_intro_purifier_tank_02", self);
                    self linkto(level.var_465f425d);
                    /#
                        iprintlnbold("mq_exfil_direct_spawn_loc_tnl");
                    #/
                    self flag::set(#"hash_6d87c51108eb2436");
                    /#
                        self notify(#"hash_706c332950c29a");
                    #/
                }
                continue;
            }
            if (self == level.var_39acfd4c) {
                if (namespace_b376a999::function_8fbb3409(waitresult.weapon) && !level flag::get("power_nitrogen_collected")) {
                    level flag::set("power_nitrogen_collected");
                    self scene::play("aib_t9_zm_silver_megaton_intro_purifier_tank_03", self);
                    self linkto(level.var_465f425d);
                    /#
                        iprintlnbold("aib_t9_vign_cust_zm_silver_steiner_left_levitate");
                    #/
                    self flag::set(#"hash_6d87c51108eb2436");
                    /#
                        self notify(#"hash_706c332950c29a");
                    #/
                }
                continue;
            }
            if (namespace_b376a999::function_c988c217(waitresult.weapon) && !level flag::get("power_particle_collected")) {
                level flag::set("power_particle_collected");
                self scene::play("aib_t9_zm_silver_megaton_intro_purifier_tank_04", self);
                self linkto(level.var_465f425d);
                /#
                    iprintlnbold("<unknown string>");
                #/
                self flag::set(#"hash_6d87c51108eb2436");
                /#
                    self notify(#"hash_706c332950c29a");
                #/
            }
        }
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 2, eflags: 0x2 linked
// Checksum 0x6bf83c1, Offset: 0x6710
// Size: 0x44
function function_2bc04c1(b_skipped, var_19e802fa) {
    if (b_skipped || var_19e802fa) {
        level flag::set(#"hash_5d063793500cc512");
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xdc0e8bc1, Offset: 0x6760
// Size: 0x64
function function_7d5e3785(b_skipped) {
    if (!b_skipped) {
        level thread function_2555092e();
        level notify(#"hash_147d728c7bf9fa75");
        level flag::wait_till(#"hash_6ddc7fc43d014f02");
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xeddc068b, Offset: 0x67d0
// Size: 0xa64
function function_2555092e() {
    level endon(#"hash_6ddc7fc43d014f02");
    level flag::wait_till_clear(#"dark_aether_active");
    var_1d1beaf9 = getent("zm_rec_do", "targetname");
    var_1d1beaf9 rotateto(var_1d1beaf9.angles + (0, -135, 0), 1, 0.25, 0.25);
    var_1d1beaf9 playsound(#"hash_fe68e6bc00c17f6");
    level.var_59b6e9a5 setmodel(#"hash_3198b312a1aa0a17");
    level.var_59b6e9a5 playsound(#"hash_691b9c2488253fde");
    level thread function_34a1157d("aib_t9_zm_silver_secretecho_3_dmitriyev_kalashnik_01_throw", "echo_scene_dmitriyev_kalashnik_throw", "zone_proto_plane_exterior", #"hash_6ddc7fc43d014f02", "done_echo_scene_dmitriyev_kalashnik_01_throw");
    var_1304fdf9 = struct::get("zm_con_rec", "script_noteworthy");
    level.var_e5b2e1c9 = util::spawn_model("tag_origin", var_1304fdf9.origin, var_1304fdf9.angles);
    /#
        level.var_e5b2e1c9 thread function_7a4e3128(#"hash_53506d2bbecd0fad");
    #/
    level notify(#"hash_5d4ec14886878368");
    var_617f86a3 = struct::get("gold_container_tear", "script_noteworthy");
    var_617f86a3 thread function_a1bf0a43("soldier_dark_echo_found", #"hash_70d6bf6ca2ca3285");
    /#
        var_617f86a3 thread function_7a4e3128(#"soldier_dark_echo_found");
    #/
    level flag::wait_till(#"dark_aether_active");
    showmiscmodels("text_clue_stolen");
    function_34a1157d("aib_t9_zm_silver_echo_4_dmitriyev_kalashnik_01", "zm_exp_energy", "zone_trans_north", "done_echo_scene_thiefsoldier", "done_echo_scene_thiefsoldier", #"hash_70d6bf6ca2ca3285");
    level flag::set("soldier_dark_echo_found");
    level.var_ba3a0e1f = 0;
    level flag::wait_till_clear(#"dark_aether_active");
    point = function_4ba8fde("item_zmintel_silver_darkaether_artifact_4");
    item_drop::drop_item(0, undefined, 1, 0, point.id, struct::get("zm_exp_energy", "script_noteworthy").origin, undefined, 1);
    level flag::wait_till("wrench_collected");
    tank = getent("panzer_tank", "targetname");
    e_activator = tank zm_unitrigger::function_fac87205(#"hash_137a43a0f69e43b3", (256, 256, 256));
    e_activator playsound(#"hash_d760771fc3882e8");
    if (isplayer(e_activator)) {
        e_activator clientfield::increment_to_player("" + #"hash_7a769c728c89b6b5");
    }
    playsoundatposition(#"hash_6620249ce68801b", (1270, -486, 156));
    /#
        iprintlnbold("<unknown string>");
    #/
    wait(1);
    e_activator = tank zm_unitrigger::function_fac87205(#"hash_137a43a0f69e43b3", (256, 256, 256));
    e_activator playsound(#"hash_d760771fc3882e8");
    if (isplayer(e_activator)) {
        e_activator clientfield::increment_to_player("" + #"hash_7a769c728c89b6b5");
    }
    playsoundatposition(#"hash_6620349ce6881ce", (1270, -486, 156));
    /#
        iprintlnbold("<unknown string>");
    #/
    wait(1);
    e_activator = tank zm_unitrigger::function_fac87205(#"hash_137a43a0f69e43b3", (256, 256, 256));
    e_activator playsound(#"hash_d760771fc3882e8");
    if (isplayer(e_activator)) {
        e_activator clientfield::increment_to_player("" + #"hash_7a769c728c89b6b5");
    }
    /#
        iprintlnbold("<unknown string>");
    #/
    scene::add_scene_func(#"hash_60241ccceaf44d2a", &function_c491aefd, "intro");
    level thread scene::play(#"hash_60241ccceaf44d2a", "intro");
    level waittill(#"hash_4bfee280acdb622f");
    scene::remove_scene_func(#"hash_60241ccceaf44d2a", &function_c491aefd, "intro");
    var_29c2d57 = getent("tank_grenade_dmg", "targetname");
    while (true) {
        s_result = var_29c2d57 waittill(#"damage");
        mod = s_result.mod;
        if (mod === "MOD_EXPLOSIVE" || mod === "MOD_PROJECTILE_SPLASH" || mod === "MOD_GRENADE_SPLASH") {
            break;
        }
    }
    /#
        iprintlnbold("<unknown string>");
    #/
    wait(2);
    tank clientfield::set("" + #"hash_654274a0648df21d", 1);
    foreach (player in getplayers()) {
        if (distancesquared(tank.origin, player.origin) <= 262144) {
            player clientfield::set_to_player("" + #"hash_4119827af45a4ba7", 1);
        }
    }
    playsoundatposition(#"hash_3fd2219d3df800dd", (1201, -240, 157));
    tank scene::play(#"hash_58a47258b83a6579", tank);
    /#
        iprintlnbold("<unknown string>");
    #/
    scene::add_scene_func(#"hash_1da91e1000776d72", &function_a1dbe3ea, "play");
    level thread scene::play(#"hash_1da91e1000776d72", "play");
    level waittill(#"hash_3806f80cc5171e62");
    scene::remove_scene_func(#"hash_1da91e1000776d72", &function_a1dbe3ea, "play");
    function_460881cd();
    if (isdefined(var_29c2d57)) {
        var_29c2d57 delete();
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x2da5f7ea, Offset: 0x7240
// Size: 0xb8
function function_a1dbe3ea(a_ents) {
    mdl_tree = a_ents[#"hash_6e2391966ff3c21b"];
    wait(2);
    level.var_6f1da2d5 = mdl_tree gettagorigin("j_container_bone");
    level.var_6afe3ef2 = mdl_tree gettagangles("j_container_bone");
    mdl_tree hidepart("j_container_bone", "", 1);
    level notify(#"hash_3806f80cc5171e62");
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x28c3ecd4, Offset: 0x7300
// Size: 0xc8
function function_c491aefd(a_ents) {
    var_37779828 = a_ents[#"hash_580b6a4e3095fe19"];
    var_37779828.var_e8920729 = 1;
    var_37779828 val::set("tank_zombie", "allowdeath", 0);
    var_37779828 waittill(#"damage", #"death");
    level thread scene::play(#"hash_60241ccceaf44d2a", "end");
    wait(1.5);
    level notify(#"hash_4bfee280acdb622f");
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 2, eflags: 0x2 linked
// Checksum 0x210ed32c, Offset: 0x73d0
// Size: 0x44
function function_3520ea1b(b_skipped, var_19e802fa) {
    if (b_skipped || var_19e802fa) {
        level flag::set(#"hash_6ddc7fc43d014f02");
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xa952774a, Offset: 0x7420
// Size: 0x3c
function function_ea72075c(b_skipped) {
    if (b_skipped) {
        return;
    }
    level notify(#"hash_695a92826c9198a4");
    function_2a8262fa();
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 2, eflags: 0x2 linked
// Checksum 0xa4e02344, Offset: 0x7468
// Size: 0x294
function function_9c7d7ce3(b_skipped, var_19e802fa) {
    if (b_skipped || var_19e802fa) {
        var_a4dd4eab = struct::get("steiner_cpt_uprit", "script_noteworthy");
        var_61a235dc = struct::get("steiner_cpt_uplft", "script_noteworthy");
        var_22a16427 = getent("ent_prf", "script_noteworthy");
        var_93700de7 = spawnactor(#"spawner_zm_steiner_split_radiation_blast", var_a4dd4eab.origin, var_a4dd4eab.angles);
        var_7ffcff59 = spawnactor(#"spawner_zm_steiner_split_radiation_bomb", var_61a235dc.origin, var_61a235dc.angles);
        if (!isdefined(level.var_24de243e)) {
            level.var_24de243e = [];
        } else if (!isarray(level.var_24de243e)) {
            level.var_24de243e = array(level.var_24de243e);
        }
        level.var_24de243e[level.var_24de243e.size] = var_93700de7;
        if (!isdefined(level.var_24de243e)) {
            level.var_24de243e = [];
        } else if (!isarray(level.var_24de243e)) {
            level.var_24de243e = array(level.var_24de243e);
        }
        level.var_24de243e[level.var_24de243e.size] = var_7ffcff59;
        var_93700de7.ai.var_b90dccd6 = 1;
        var_7ffcff59.ai.var_b90dccd6 = 1;
        var_93700de7 linkto(var_22a16427);
        var_7ffcff59 linkto(var_22a16427);
        level flag::set(#"hash_77fa97e90fc553ec");
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xe607a7e8, Offset: 0x7708
// Size: 0x2c
function function_54ad1c95(b_skipped) {
    if (b_skipped) {
        return;
    }
    function_dbe6d6b3();
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 2, eflags: 0x2 linked
// Checksum 0x631309fc, Offset: 0x7740
// Size: 0x44
function function_afbc77b5(b_skipped, var_19e802fa) {
    if (b_skipped || var_19e802fa) {
        level flag::set(#"hash_3b2ee17e5ce02f9e");
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x4f091e67, Offset: 0x7790
// Size: 0x3c
function function_cb0e55f0(b_skipped) {
    if (b_skipped) {
        return;
    }
    level notify(#"hash_3bc9b27c09d93ae7");
    function_41e8018f();
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 2, eflags: 0x2 linked
// Checksum 0x5d7dffb9, Offset: 0x77d8
// Size: 0x44
function function_70ffca9c(b_skipped, var_19e802fa) {
    if (b_skipped || var_19e802fa) {
        level flag::set(#"hash_3e332b6888c86102");
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xc0b841a, Offset: 0x7828
// Size: 0x3c
function function_1bddc36a(b_skipped) {
    if (b_skipped) {
        return;
    }
    level notify(#"hash_6500b270bf5a1596");
    function_8c5dae74();
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 2, eflags: 0x2 linked
// Checksum 0xe6a68bba, Offset: 0x7870
// Size: 0x32c
function function_d5e55496(b_skipped, var_19e802fa) {
    if (b_skipped || var_19e802fa) {
        level clientfield::set("" + #"hash_718b0f4fd6db0bb4", 1);
        var_bc233708 = struct::get_array("mq_br_dr_fx_loc", "targetname");
        foreach (loc in var_bc233708) {
            if (!isdefined(level.var_e0712ded)) {
                level.var_e0712ded = [];
            } else if (!isarray(level.var_e0712ded)) {
                level.var_e0712ded = array(level.var_e0712ded);
            }
            level.var_e0712ded[level.var_e0712ded.size] = spawncollision(#"collision_clip_wall_128x128x10", "collider", loc.origin, loc.angles);
        }
        foreach (clip in level.var_e0712ded) {
            clip disconnectpaths();
        }
        function_9afd3ea2(0);
        level.no_powerups = 1;
        level flag::clear("spawn_zombies");
        level flag::set(#"pause_round_timeout");
        var_ccd37052 = struct::get("steiner_phtloc", "script_noteworthy");
        level.var_3df02306 = util::spawn_model(#"hash_11cbbc81a03c6ffe", var_ccd37052.origin, var_ccd37052.angles);
        level.var_3df02306 setscale(0.45);
        level flag::set(#"hash_322c7f92525e008e");
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xba4b1976, Offset: 0x7ba8
// Size: 0x12c
function function_34c29791(b_skipped) {
    if (b_skipped) {
        function_8f85d169();
        level clientfield::set("" + #"hash_575a337754ccd980", 1);
        level clientfield::set("" + #"hash_3fd05810b220d13a", 1);
        level clientfield::set("" + #"hash_48df238a087c684e", 1);
        level clientfield::set("" + #"hash_17466a1bb2380af6", 4);
        return;
    }
    level notify(#"hash_196792ac246fbe91");
    function_1226c0a6();
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 2, eflags: 0x2 linked
// Checksum 0x8c207743, Offset: 0x7ce0
// Size: 0x114
function function_d7ef969f(b_skipped, var_19e802fa) {
    if (b_skipped || var_19e802fa) {
        var_bf48e9e2 = function_b6a1fe09();
        foreach (var_2cbc18b7 in var_bf48e9e2) {
        }
    }
    level flag::set(#"hash_3a617ab5e651c2a9");
    level flag::set(#"hash_4a49aa778b3cdd8");
    level flag::set(#"hash_1aab687832f4e02b");
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x13ed94dc, Offset: 0x7e00
// Size: 0x134
function function_852146cc(b_skipped) {
    if (b_skipped) {
        return;
    }
    level flag::clear(#"hash_2aecb7319e5a0d11");
    level notify(#"hash_6f1392a5c4774e60");
    level.var_c29bf3b6 = "none";
    level.var_139ceb46 = #"hash_6084efb2631b6331";
    level.var_6363395e = #"none";
    level.var_f1a8b5e6 = #"none";
    level.var_6ceeb30a = #"none";
    level.var_f9d84559 = #"none";
    level.var_7c027cbe = #"none";
    level.var_29a33c08 = 1;
    level.var_aaf7505f = 90;
    level.contentmanager.var_14f09b99 = &function_14f09b99;
    function_39f889a2();
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 2, eflags: 0x2 linked
// Checksum 0xd2333a59, Offset: 0x7f40
// Size: 0x54
function function_e3bd1289(b_skipped, var_19e802fa) {
    if (b_skipped || var_19e802fa) {
    }
    array::thread_all(getplayers(), &zm_silver_util::close_hud);
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xd8e4681c, Offset: 0x7fa0
// Size: 0x24
function function_d5d67561() {
    level flag::set(#"main_quest_completed");
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x56b3bcfa, Offset: 0x7fd0
// Size: 0xa0
function function_14f09b99(s_result) {
    self endon(#"end_game");
    if (is_true(s_result.completed)) {
        str_reason = #"hash_6ebafb1370ab6c93";
    } else {
        str_reason = #"hash_22a0611dcd352614";
    }
    waitframe(1);
    level notify(#"end_game", {#reason:str_reason});
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x8fff4fb4, Offset: 0x8078
// Size: 0xba
function function_e3cee79f() {
    assert(isdefined(self.var_6f1da2d5));
    assert(isdefined(self.var_6afe3ef2));
    point = function_4ba8fde("item_zmintel_silver_requiem_artifact_5");
    e_container = item_drop::drop_item(0, undefined, 1, 0, point.id, self.var_6f1da2d5, self.var_6afe3ef2, 0);
    e_container.var_dd21aec2 = 1 | 16;
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x27f0b9c7, Offset: 0x8140
// Size: 0x17c
function function_460881cd() {
    level.var_5e824298 = getweapon("equip_gold_container_zm");
    level function_e3cee79f();
    var_2de34b7c = getent("zm_mb_re_scope", "targetname");
    var_2de34b7c thread function_e0960594();
    var_5cce521e = level.var_e5b2e1c9 zm_unitrigger::create(&function_e8030fb1, (24, 48, 64), &function_8b8ae486);
    var_5cce521e.origin += (0, -20, 0);
    zm_unitrigger::unitrigger_force_per_player_triggers(var_5cce521e, 1);
    zm_player::function_a827358a(&on_player_damage);
    callback::on_disconnect(&on_player_disconnect);
    level waittill(#"hash_3b0c1d89e0879d06");
    if (isdefined(var_2de34b7c)) {
        var_2de34b7c delete();
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xaa46fc1f, Offset: 0x82c8
// Size: 0x28c
function function_e0960594() {
    self endon(#"death");
    waitresult = self waittill(#"trigger");
    if (zm_utility::is_player_valid(waitresult.activator)) {
        self triggerenable(0);
        level flag::clear("spawn_zombies");
        for (var_2eb22136 = 4 + getplayers().size * 2; var_2eb22136 > 0; var_2eb22136--) {
            zm_utility::function_cce73165("dog_location", #"hash_12a17ab3df5889eb", waitresult.activator.zone_name);
        }
        var_9677f2f9 = undefined;
        foreach (sp_zombie in level.zombie_spawners) {
            if (is_true(sp_zombie.var_5d6331b7)) {
                var_9677f2f9 = sp_zombie;
            }
        }
        for (var_7ee30bbb = 4 + getplayers().size * 2; var_7ee30bbb > 0; var_7ee30bbb--) {
            if (getfreeactorcount() < 1) {
                a_zombie = getaiarchetypearray(#"zombie");
                if (isdefined(a_zombie)) {
                    a_zombie[0] kill();
                }
            }
            zombie_utility::spawn_zombie(var_9677f2f9, undefined, undefined, level.round_number);
        }
        level flag::set("spawn_zombies");
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x6 linked
// Checksum 0x63da702d, Offset: 0x8560
// Size: 0x5e
function private function_35e288c2(e_player) {
    return zm_utility::is_player_valid(e_player) && e_player getcurrentweapon() === level.var_5e824298 && !e_player isswitchingweapons();
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xa4c3a455, Offset: 0x85c8
// Size: 0x1ec
function function_8b8ae486() {
    self endon(#"death");
    waitresult = self waittill(#"trigger");
    e_player = waitresult.activator;
    if (isdefined(self.stub) && isdefined(self.stub.related_parent)) {
        self.stub.related_parent notify(#"trigger_activated", {#e_who:e_player});
        var_693201b7 = util::spawn_model("wpn_t9_zm_gold_container_b", level.var_e5b2e1c9.origin);
        var_693201b7 clientfield::set("" + #"hash_2f17676fe2c8e396", 1);
        var_693201b7 playsound(#"hash_29ebd9e0d7e566a");
        level notify(#"hash_3b0c1d89e0879d06");
        /#
            iprintlnbold("<unknown string>");
        #/
        var_1d1beaf9 = getent("zm_rec_do", "targetname");
        var_1d1beaf9 rotateto(var_1d1beaf9.angles + (0, 135, 0), 1, 0.25, 0.25);
        var_1d1beaf9 playsound(#"hash_1d88d624566db32");
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x8f6ef9b7, Offset: 0x87c0
// Size: 0x15e
function function_714e14de() {
    level endon(#"end_game");
    v_start = self.origin + (0, 0, 32);
    v_end = self.origin - (0, 0, 1000);
    a_trace = groundtrace(v_start, v_end, 0, self, 1);
    v_ground_pos = isdefined(a_trace[#"position"]) ? a_trace[#"position"] : self.origin;
    self playsound(#"hash_118722f1108139ea");
    point = function_4ba8fde("item_zmintel_silver_requiem_artifact_5");
    level.e_container = item_drop::drop_item(0, undefined, 1, 0, point.id, v_ground_pos, undefined, 0);
    level.e_container.var_dd21aec2 = 1 | 16;
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x40ec6925, Offset: 0x8928
// Size: 0x54
function function_e8030fb1(e_player) {
    if (level function_35e288c2(e_player)) {
        self sethintstringforplayer(e_player, #"hash_5d9e8fd25c0e4991");
        return true;
    }
    return false;
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xe1b0752d, Offset: 0x8988
// Size: 0x106
function function_85e60c0a() {
    self notify("3f5fa92be2cdbec");
    self endon("3f5fa92be2cdbec");
    level endon(#"end_game", #"hash_1f20be24ebb9923c");
    wait(60);
    level notify(#"hash_e853f57d046c3c0");
    if (isdefined(level.e_container)) {
        level.e_container.origin = level.var_6f1da2d5;
        return;
    }
    point = function_4ba8fde("item_zmintel_silver_requiem_artifact_5");
    level.e_container = item_drop::drop_item(0, undefined, 1, 0, point.id, level.var_6f1da2d5, level.var_6afe3ef2, 0);
    level.e_container.var_dd21aec2 = 1 | 16;
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 10, eflags: 0x2 linked
// Checksum 0xc7834763, Offset: 0x8a98
// Size: 0xb6
function on_player_damage(*einflictor, *eattacker, idamage, *idflags, *smeansofdeath, *weapon, *vpoint, *vdir, *shitloc, *psoffsettime) {
    if (psoffsettime >= self.health) {
        if (self getcurrentweapon() === level.var_5e824298) {
            self notify(#"hash_46a03eeac0661b25", {#str_result:"dropped"});
        }
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xdab200d, Offset: 0x8b58
// Size: 0xd0
function on_player_disconnect() {
    if (!self util::is_spectating()) {
        var_2e07b8ff = self getweaponslistprimaries();
        foreach (w_weapon in var_2e07b8ff) {
            if (w_weapon === level.var_5e824298) {
                self thread function_86404122();
            }
        }
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xe6dce8e8, Offset: 0x8c30
// Size: 0x74
function function_86404122() {
    self function_714e14de();
    level thread function_85e60c0a();
    callback::remove_on_weapon_change(&function_e9df7768);
    callback::function_824d206(&function_7904960c);
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x71bf1158, Offset: 0x8cb0
// Size: 0x210
function function_7acfbb3a(e_player) {
    e_player endon(#"hash_46a03eeac0661b25", #"disconnect");
    e_player playsound(#"hash_7de2e7ddb5eb901b");
    e_player val::set(#"hash_754e9e4a6ccbcb80", "disable_weapon_cycling", 1);
    e_player giveweapon(level.var_5e824298);
    e_player switchtoweapon(level.var_5e824298, 1);
    e_player thread function_f4b436d5();
    e_player waittill(#"weapon_change_complete");
    callback::on_weapon_change(&function_e9df7768);
    callback::function_33f0ddd3(&function_7904960c);
    e_player thread function_50d04ccb();
    e_player val::reset(#"hash_754e9e4a6ccbcb80", "disable_weapon_cycling");
    e_player thread zm_equipment::show_hint_text(#"hash_5b87d46ce24aa2cf", 10);
    level thread function_114098ba(e_player);
    if (isdefined(level.var_e5b2e1c9)) {
        level.var_e5b2e1c9 waittill(#"trigger_activated");
    }
    e_player notify(#"hash_46a03eeac0661b25", {#str_result:"recovered"});
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x4722b800, Offset: 0x8ec8
// Size: 0x27c
function function_f4b436d5() {
    self endon(#"disconnect");
    self.is_drinking = 1;
    self val::set(#"hash_754e9e4a6ccbcb80", "disable_weapon_fire", 1);
    self val::set(#"hash_754e9e4a6ccbcb80", "allow_melee", 0);
    self val::set(#"hash_754e9e4a6ccbcb80", "allow_mantle", 0);
    self val::set(#"hash_754e9e4a6ccbcb80", "allow_sprint", 0);
    self val::set(#"hash_754e9e4a6ccbcb80", "allow_jump", 0);
    self val::set(#"hash_754e9e4a6ccbcb80", "allow_crouch", 0);
    self val::set(#"hash_754e9e4a6ccbcb80", "allow_prone", 0);
    self waittill(#"hash_46a03eeac0661b25");
    self.is_drinking = 0;
    self val::reset(#"hash_754e9e4a6ccbcb80", "disable_weapon_fire");
    self val::reset(#"hash_754e9e4a6ccbcb80", "allow_melee");
    self val::reset(#"hash_754e9e4a6ccbcb80", "allow_mantle");
    self val::reset(#"hash_754e9e4a6ccbcb80", "allow_sprint");
    self val::reset(#"hash_754e9e4a6ccbcb80", "allow_jump");
    self val::reset(#"hash_754e9e4a6ccbcb80", "allow_crouch");
    self val::reset(#"hash_754e9e4a6ccbcb80", "allow_prone");
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x84d2a9a, Offset: 0x9150
// Size: 0x16c
function function_114098ba(e_player) {
    e_player endon(#"disconnect");
    s_result = e_player waittill(#"hash_46a03eeac0661b25", #"fake_death");
    callback::remove_on_weapon_change(&function_e9df7768);
    callback::function_824d206(&function_7904960c);
    e_player takeweapon(level.var_5e824298);
    e_player notify(#"hide_equipment_hint_text");
    if (s_result.str_result === "dropped" || s_result._notify == "fake_death") {
        e_player function_714e14de();
        level thread function_85e60c0a();
        return;
    }
    if (is_true(s_result.str_result === "recovered")) {
        level flag::set(#"hash_6ddc7fc43d014f02");
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x4b0cec7f, Offset: 0x92c8
// Size: 0x36
function function_e9df7768(*s_params) {
    self notify(#"hash_46a03eeac0661b25", {#str_result:"dropped"});
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x1c229b27, Offset: 0x9308
// Size: 0xb6
function function_7904960c(s_event) {
    w_weapon = s_event.weapon;
    if (w_weapon.inventorytype === "ability") {
        return;
    }
    if (s_event.event === "take_weapon" && (w_weapon.inventorytype === "offhand" || w_weapon.inventorytype === "offhand_primary")) {
        return;
    }
    self notify(#"hash_46a03eeac0661b25", {#str_result:"dropped"});
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x3aac4908, Offset: 0x93c8
// Size: 0x76
function function_50d04ccb() {
    self endon(#"disconnect", #"hash_46a03eeac0661b25", #"fake_death");
    self waittill(#"craft_item");
    self notify(#"hash_46a03eeac0661b25", {#str_result:"dropped"});
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xd34d0a7c, Offset: 0x9448
// Size: 0x71a
function function_2a8262fa() {
    level endon(#"hash_77fa97e90fc553ec");
    hidemiscmodels("text_clue_stolen");
    level.var_59b6e9a5 setmodel(#"hash_2d1765d7129d576b");
    level.var_59b6e9a5 playsound(#"hash_691b9c2488253fde");
    var_a2e870fa = struct::get("steiner_cpt_grnd", "script_noteworthy");
    var_a0cd95e3 = struct::get("steiner_cpt_lwer", "script_noteworthy");
    var_c39b55d8 = struct::get("steiner_cpt_uplft", "script_noteworthy");
    var_5aeca601 = struct::get("steiner_cpt_uprit", "script_noteworthy");
    var_cec31715 = getent("steiner_cpt_rit", "script_noteworthy");
    var_21a98a47 = getent("steiner_cpt_lft", "script_noteworthy");
    var_465f425d = getent("ent_prf", "script_noteworthy");
    var_41d71fcc = [];
    var_211fb567 = [];
    while (true) {
        var_743a066e = getaiarchetypearray(#"hash_7c0d83ac1e845ac2");
        arrayremovevalue(var_211fb567, undefined, 0);
        arrayremovevalue(var_41d71fcc, undefined, 0);
        foreach (actor in var_743a066e) {
            if (isalive(actor) && distancesquared(actor.origin, var_a2e870fa.origin) <= 1600 && isdefined(actor.var_9fde8624)) {
                if (actor.var_9fde8624 == #"hash_70162f4bc795092") {
                    if (!is_true(actor.ai.var_b90dccd6) && !is_true(actor.var_8576e0be)) {
                        actor.ai.var_b90dccd6 = 1;
                        actor.takedamage = 0;
                        actor.ignore_nuke = 1;
                        actor thread function_8d1b6fd8(var_21a98a47, var_a0cd95e3, var_c39b55d8, var_465f425d);
                        if (!isdefined(var_211fb567)) {
                            var_211fb567 = [];
                        } else if (!isarray(var_211fb567)) {
                            var_211fb567 = array(var_211fb567);
                        }
                        var_211fb567[var_211fb567.size] = actor;
                    }
                    if (var_41d71fcc.size === 0 && var_211fb567.size === 1) {
                        level notify(#"hash_4337abdaab1fc730");
                    }
                    if (var_211fb567.size > 1) {
                        level notify(#"hash_3f9e5836a14975bc");
                        foreach (var_fbed7bd8 in var_211fb567) {
                            var_fbed7bd8 kill();
                        }
                    }
                }
                if (actor.var_9fde8624 == #"hash_5653bbc44a034094") {
                    if (!is_true(actor.ai.var_b90dccd6) && !is_true(actor.var_8576e0be)) {
                        actor.ai.var_b90dccd6 = 1;
                        actor.takedamage = 0;
                        actor.ignore_nuke = 1;
                        actor thread function_8d1b6fd8(var_cec31715, var_a0cd95e3, var_5aeca601, var_465f425d);
                        if (!isdefined(var_41d71fcc)) {
                            var_41d71fcc = [];
                        } else if (!isarray(var_41d71fcc)) {
                            var_41d71fcc = array(var_41d71fcc);
                        }
                        var_41d71fcc[var_41d71fcc.size] = actor;
                    }
                    if (var_41d71fcc.size === 1 && var_211fb567.size === 0) {
                        level notify(#"hash_4337abdaab1fc730");
                    }
                    if (var_41d71fcc.size > 1) {
                        level notify(#"hash_3f9e5836a14975bc");
                        foreach (var_1d1995be in var_41d71fcc) {
                            var_1d1995be kill();
                        }
                    }
                }
            }
        }
        if (var_41d71fcc.size == 1 && var_211fb567.size == 1) {
            level.var_24de243e = arraycombine(var_41d71fcc, var_211fb567);
            level notify(#"hash_395eb3958f40a0cd");
            level flag::set(#"hash_77fa97e90fc553ec");
            break;
        }
        waitframe(1);
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x22af2ebe, Offset: 0x9b70
// Size: 0x234
function function_dbe6d6b3() {
    level endon(#"hash_3b2ee17e5ce02f9e");
    level flag::wait_till(#"hash_77fa97e90fc553ec");
    if (isdefined(level.var_e5b2e1c9)) {
        level.var_e5b2e1c9 delete();
    }
    level.var_3bc06d8a = getent("zm_re_com", "script_noteworthy");
    level.var_3bc06d8a function_619a5c20();
    var_465f425d = getent("ent_prf", "script_noteworthy");
    var_448b5a02 = getent("vol_medical_lab_ctrlrm", "script_noteworthy");
    var_465f425d clientfield::set("" + #"hash_17ea9211637fa6cf", 1);
    /#
        iprintlnbold("<unknown string>");
    #/
    var_ed980865 = level.var_3bc06d8a zm_unitrigger::create(&function_b7c5dc4, (130, 130, 130), &function_ce94e1d2);
    level thread function_179c33b9(var_448b5a02);
    level.var_3bc06d8a waittill(#"trigger_activated");
    level.var_3bc06d8a function_23a29590();
    function_6492d9db(var_ed980865);
    level thread function_479a6396();
    level flag::set(#"hash_3b2ee17e5ce02f9e");
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xfa8ea48e, Offset: 0x9db0
// Size: 0x6c
function function_b7c5dc4(*e_player) {
    if (level.var_82947ea7 && !level flag::get(#"in_dark_side")) {
        self sethintstring(#"hash_57620d2432a64bf9");
        return true;
    }
    return false;
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x9c8b0c41, Offset: 0x9e28
// Size: 0x110
function function_ce94e1d2() {
    self endon(#"death");
    while (true) {
        waitresult = self waittill(#"trigger");
        e_player = waitresult.activator;
        if (!zm_utility::can_use(e_player)) {
            continue;
        }
        if (isplayer(e_player)) {
            e_player clientfield::increment_to_player("" + #"hash_6696d96a08b9701d");
        }
        if (isdefined(self.stub) && isdefined(self.stub.related_parent)) {
            self.stub.related_parent notify(#"trigger_activated", {#e_who:e_player});
        }
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xc094b945, Offset: 0x9f40
// Size: 0x11a
function function_179c33b9(var_cfc8323c) {
    level endon(#"hash_3b2ee17e5ce02f9e");
    while (true) {
        var_9a92e103 = 1;
        players = getplayers();
        foreach (player in players) {
            if (!player istouching(var_cfc8323c) && !player util::is_spectating()) {
                var_9a92e103 = 0;
                break;
            }
        }
        level.var_82947ea7 = var_9a92e103;
        wait(1);
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x74f80b4b, Offset: 0xa068
// Size: 0x9f4
function function_41e8018f() {
    level flag::wait_till(#"hash_3b2ee17e5ce02f9e");
    level notify(#"hash_795783e3edb7670");
    function_8f85d169();
    level.var_59b6e9a5 setmodel(#"hash_4a5671156b3bf14d");
    level.var_59b6e9a5 playsound(#"hash_425afc32b2eb6c0c");
    var_465f425d = getent("ent_prf", "script_noteworthy");
    var_dc67de8c = getent("ctrlrm_door_lft", "script_noteworthy");
    var_f059f398 = getent("ctrlrm_door_rt", "script_noteworthy");
    var_de54286c = struct::get("clp_prf_lft", "script_noteworthy");
    var_a8bef0e5 = struct::get("clp_prf_rit", "script_noteworthy");
    foreach (player in getplayers()) {
        player.var_1a4a768c = 1;
    }
    level flag::set(#"hash_4ae22bd566ad08c3");
    var_32c3c05c = getaiarchetypearray(#"hash_7c0d83ac1e845ac2");
    foreach (steiner in var_32c3c05c) {
        steiner.ai.cansplit = 0;
    }
    a_zombies = getaispeciesarray(level.zombie_team);
    if (isdefined(level.var_24de243e)) {
        foreach (steiner in level.var_24de243e) {
            arrayremovevalue(a_zombies, steiner);
        }
    }
    foreach (zombie in a_zombies) {
        zombie.allowdeath = 1;
        zombie kill();
    }
    var_dc67de8c moveto(var_dc67de8c.origin + (0, 0, -265), 1, 0, 0.5);
    var_f059f398 moveto(var_f059f398.origin + (0, 0, -265), 1, 0, 0.5);
    var_dc67de8c playsound(#"hash_3b49d7b126d7c509");
    var_f059f398 playsound(#"hash_429d103970d8dc6a");
    level clientfield::set("" + #"hash_6f13307bc53f2de5", 1);
    level flag::clear("spawn_zombies");
    level.var_45ef153 = 1;
    level.disable_nuke_delay_spawning = 1;
    /#
        iprintlnbold("<unknown string>");
    #/
    var_465f425d clientfield::set("" + #"hash_6dc2bf4e960f0495", 1);
    namespace_88795f45::function_67a0e9a2(level.var_24de243e);
    level waittill(#"fuse_fade_out");
    var_465f425d clientfield::set("" + #"hash_17ea9211637fa6cf", 0);
    level flag::wait_till(#"steiner_merge_done");
    music::setmusicstate("mq_6_emotional");
    level util::delay(37, undefined, &flag::set, #"hash_821afd1816759c2");
    s_scene = struct::get("scn_steiner_itr", "targetname");
    level thread function_a2a695e3();
    s_scene scene::play("aib_t9_zm_silver_megaton_intro_01", var_465f425d);
    spawncollision(#"collision_clip_wall_64x64x10", "collider", var_de54286c.origin, var_de54286c.angles);
    spawncollision(#"collision_clip_wall_64x64x10", "collider", var_a8bef0e5.origin, var_a8bef0e5.angles);
    level flag::set(#"spawn_zombies");
    level.var_45ef153 = undefined;
    level.disable_nuke_delay_spawning = 0;
    var_dc67de8c moveto(var_dc67de8c.origin + (0, 0, 272), 1, 0, 0.5);
    var_f059f398 moveto(var_f059f398.origin + (0, 0, 272), 1, 0, 0.5);
    var_dc67de8c playsound(#"hash_34df32180a9011fb");
    var_f059f398 playsound(#"hash_6d94f77a25928744");
    level flag::set(#"hash_12a655d1c62ddb76");
    level clientfield::set("" + #"hash_6f13307bc53f2de5", 0);
    function_8f85d169(0);
    foreach (player in getplayers()) {
        player.var_1a4a768c = undefined;
    }
    var_457de445 = getplayers().size;
    var_2eb22136 = 4 + getplayers().size * 2;
    while (var_457de445 > 0) {
        zm_utility::function_cce73165("steiner_location", #"spawner_zm_steiner", "zone_trans_north");
        var_457de445--;
    }
    while (var_2eb22136 > 0) {
        zm_utility::function_cce73165("dog_location", #"hash_12a17ab3df5889eb", "zone_trans_north");
        var_2eb22136--;
    }
    level flag::set(#"hash_3e332b6888c86102");
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x447f493c, Offset: 0xaa68
// Size: 0x8dc
function function_8c5dae74() {
    level flag::wait_till(#"hash_3e332b6888c86102");
    level.var_59b6e9a5 setmodel(#"hash_1fbce5805347884");
    var_924f0bf0 = struct::get("fml_pht_sploc", "script_noteworthy");
    var_9bb7cfb8 = struct::get("pht_ter", "script_noteworthy");
    var_ccd37052 = struct::get("steiner_phtloc", "script_noteworthy");
    var_bc233708 = struct::get_array("mq_br_dr_fx_loc", "targetname");
    level thread function_34a1157d("aib_t9_zm_silver_secretecho_4_orlovandmedved", "scn_orlovandmedved", "zone_proto_exterior_rear2", #"hash_22a4a6dd73981ef1", "done_echo_scene_orlovandmedved");
    level thread function_34a1157d("aib_t9_zm_silver_secretecho_5_valentinaandpeck", "scn_valentinaandpeck", "zone_power_room", #"hash_22a4a6dd73981ef1", "done_echo_scene_valentinaandpeck");
    level thread function_77e5b46f();
    level thread function_d65411e();
    level flag::set(#"hash_94bda7ad49639f5");
    function_abc0783b("steiner_spker");
    players = getplayers();
    foreach (player in players) {
        player thread function_9951a0d8();
    }
    var_9bb7cfb8 thread function_a1bf0a43(#"hash_1dd7e5ac52d2221c", #"hash_7a104127b995be32");
    level thread function_34a1157d("aib_t9_zm_silver_echo_5_orlov_01", "pht_eco", "zone_proto_interior_cave", #"hash_322c7f92525e008e", #"hash_1dd7e5ac52d2221c", #"hash_7a104127b995be32");
    level flag::wait_till(#"hash_1dd7e5ac52d2221c");
    level notify(#"hash_61e8a39b3a4bee6a");
    wait(10);
    showmiscmodels("txt_clu_fml");
    point = function_4ba8fde("item_zmintel_silver_omega_artifact_1");
    var_4da8bc2b = item_drop::drop_item(0, undefined, 1, 0, point.id, var_924f0bf0.origin, var_924f0bf0.angles, 0);
    var_4da8bc2b setscale(0.45);
    var_4da8bc2b moveto(var_924f0bf0.origin + (0, 0, -93), 2, 1, 1);
    var_4da8bc2b.var_dd21aec2 = 1 | 16;
    var_4da8bc2b.itementry.var_4cd830a = 1;
    level flag::wait_till(#"hash_16f2a408c50fab14");
    level clientfield::increment("" + #"hash_5cf186464ce9cdd6");
    level thread zm_silver_util::function_4cc5fca6();
    wait(7);
    function_129e09f3();
    a_players = function_a1ef346b();
    var_f7e3ca3b = struct::get_array("mq_pto_tlpt_loc", "targetname");
    for (i = 0; i < a_players.size; i++) {
        var_82aaa7f4 = struct::spawn(var_f7e3ca3b[i].origin, var_f7e3ca3b[i].angles);
        a_players[i] thread zm_fasttravel::function_66d020b0(undefined, undefined, undefined, undefined, var_82aaa7f4, undefined, undefined, 1, 0, 0);
    }
    level clientfield::set("" + #"hash_51ed1d1064cfb0e", 1);
    level clientfield::set("" + #"hash_718b0f4fd6db0bb4", 1);
    function_9afd3ea2(0);
    level.no_powerups = 1;
    level flag::clear("spawn_zombies");
    level flag::set(#"pause_round_timeout");
    foreach (loc in var_bc233708) {
        if (!isdefined(level.var_e0712ded)) {
            level.var_e0712ded = [];
        } else if (!isarray(level.var_e0712ded)) {
            level.var_e0712ded = array(level.var_e0712ded);
        }
        level.var_e0712ded[level.var_e0712ded.size] = spawncollision(#"collision_clip_wall_128x128x10", "collider", loc.origin, loc.angles);
    }
    foreach (clip in level.var_e0712ded) {
        clip disconnectpaths();
    }
    scene::function_27f5972e("aib_t9_zm_silver_megaton_monologue_01");
    level.var_3df02306 = util::spawn_model(#"hash_11cbbc81a03c6ffe", var_ccd37052.origin, var_ccd37052.angles);
    level.var_3df02306 setscale(0.45);
    level.var_3df02306 playsound(#"");
    level flag::set(#"hash_22a4a6dd73981ef1");
    hidemiscmodels("text_clue_family");
    level flag::set(#"hash_322c7f92525e008e");
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x2e0c650, Offset: 0xb350
// Size: 0xb0
function function_9d3a3c54() {
    slots = namespace_85745671::function_bdb2b85b(self, self.origin, self.angles, 32, 10, 16);
    if (!isdefined(slots) || slots.size <= 0) {
        return;
    }
    self.is_active = 1;
    self.var_b79a8ac7 = {#var_f019ea1a:6000, #slots:slots};
    level.attackables[level.attackables.size] = self;
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xd3b38803, Offset: 0xb408
// Size: 0x24
function function_1c0daa38() {
    self.is_active = 0;
    namespace_85745671::function_b70e2a37(self);
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x60927302, Offset: 0xb438
// Size: 0x147c
function function_1226c0a6() {
    level flag::wait_till(#"hash_322c7f92525e008e");
    level.zones[#"zone_trans_north"].is_enabled = 0;
    level.zones[#"zone_trans_north_pap_room"].is_enabled = 0;
    level.zones[#"zone_trans_south"].is_enabled = 0;
    level.zones[#"zone_trans_south_pap_room"].is_enabled = 0;
    level.zones[#"zone_trans_south_tunnel"].is_enabled = 0;
    level.zones[#"zone_power_tunnel"].is_enabled = 0;
    level.var_ccf1f0ee = 1;
    function_8f85d169();
    var_ccd37052 = struct::get("steiner_photo_loc", "script_noteworthy");
    var_c257a44 = struct::get("des_steiner_1", "script_noteworthy");
    var_fe76dee7 = struct::get("des_steiner_2", "script_noteworthy");
    var_28a53343 = struct::get("des_steiner_3", "script_noteworthy");
    var_ddfe70e = struct::get("rot_steiner_0", "script_noteworthy");
    var_9f3609bc = struct::get("rot_steiner_1", "script_noteworthy");
    var_b058ac01 = struct::get("rot_steiner_2", "script_noteworthy");
    s_scene = struct::get("scn_steiner_mlg", "targetname");
    var_b17c7251 = struct::get("f_steiner_sploc", "script_noteworthy");
    var_e5d4d76 = struct::get("des_steiner_0", "script_noteworthy");
    var_91a2766f = struct::get("steiner_phtloc", "script_noteworthy");
    var_65d3ed53 = getplayers().size;
    var_201095d5 = ceil((var_65d3ed53 * 4 + 6) * 0.6);
    var_a3d1dedb = ceil((var_65d3ed53 * 4 + 6) * 0.2);
    var_5cd38a5b = int((var_65d3ed53 * 4 + 6) * 0.2);
    level.var_3738589 = int(5 + var_65d3ed53 * 1);
    level.var_cc18747e = int(2 + var_65d3ed53 * 2);
    level.var_6084dd15 = int(4 + var_65d3ed53 * 4);
    function_b8e662e5(0);
    function_9afd3ea2(0);
    while (true) {
        level.var_b0eb5e2 = namespace_88795f45::function_f045e7c(var_b17c7251, 0);
        if (isdefined(level.var_b0eb5e2)) {
            break;
        }
        waitframe(1);
    }
    level.var_b0eb5e2 namespace_88795f45::function_7e855c12(getclosestpointonnavmesh(var_e5d4d76.origin), "walk");
    if (isdefined(level.var_3df02306)) {
        level.var_3df02306 delete();
    }
    var_aa2444c4 = spawncollision(#"hash_1d1c56a494aa468e", "collider", var_91a2766f.origin, var_91a2766f.angles);
    var_aa2444c4 setscale(2);
    music::setmusicstate("mq_8_emotional", undefined, 4);
    s_scene scene::play("aib_t9_zm_silver_megaton_monologue_01", level.var_b0eb5e2);
    scene::function_f81475ae("aib_t9_zm_silver_megaton_monologue_01");
    if (isdefined(var_aa2444c4)) {
        var_aa2444c4 delete();
    }
    music::setmusicstate("mq_8_mid");
    level clientfield::set("" + #"hash_3fd05810b220d13a", 1);
    /#
        iprintlnbold("<unknown string>");
    #/
    level thread function_55958387();
    level flag::clear(#"hash_50afb2ec0a1fac0");
    level flag::clear(#"hash_a7e154a1957a04c");
    level flag::clear(#"hash_1731d238bd7ce8ad");
    level thread function_5cf1fe48(1, var_201095d5, var_a3d1dedb, var_5cd38a5b);
    level thread function_7e751ad9(0, #"hash_50afb2ec0a1fac0");
    level thread function_7e751ad9(0.33, #"hash_a7e154a1957a04c");
    level thread function_7e751ad9(0.66, #"hash_1731d238bd7ce8ad");
    level.var_581a776e = int(4 + var_65d3ed53 * 2);
    level.var_bf3f1109 = 0;
    if (!isdefined(level.var_704c79ef)) {
        level thread function_e59122de(level.var_cc18747e);
    }
    level flag::clear(#"hash_94bda7ad49639f5");
    level notify(#"hash_6b2607b65009a00b");
    level namespace_207ea311::function_57cc7ff7();
    level thread function_21bfa736(5);
    level.var_b0eb5e2 namespace_88795f45::function_7e855c12(getclosestpointonnavmesh(var_c257a44.origin), "run");
    level flag::set(#"hash_f5da22dea5e85bf");
    level.var_b0eb5e2.ignore_player = getplayers();
    level.var_b0eb5e2 namespace_88795f45::function_c6579189(var_ddfe70e);
    var_c257a44 function_9d3a3c54();
    wait(1);
    level.var_b0eb5e2.ai.var_8c90ae8e = 1;
    level.var_b0eb5e2.pushable = 0;
    zm_sq::function_266d66eb(#"hash_909766ed99673eb", var_c257a44, undefined, #"hash_31c12596d6427df3");
    level thread function_b2645a24(#"hash_3a617ab5e651c2a9");
    level.var_b0eb5e2 thread function_be97976d(30, 1);
    level flag::wait_till(#"hash_3a617ab5e651c2a9");
    playsoundatposition("zmb_silver_mq_9_screenshake", (582, -103, -293));
    music::setmusicstate("mq_8_low");
    zm_sq::objective_complete(#"hash_909766ed99673eb", var_c257a44);
    level.var_b0eb5e2.ai.var_8c90ae8e = 0;
    level thread function_bdd8e757();
    a_players = getplayers();
    foreach (player in a_players) {
        player thread clientfield::increment_to_player("" + #"hash_404a977ff0098cf", 1);
    }
    function_8d1e3ba6(1);
    var_c257a44 function_1c0daa38();
    wait(3);
    level.var_b0eb5e2 namespace_88795f45::function_7e855c12(getclosestpointonnavmesh(var_fe76dee7.origin), "run");
    level flag::set(#"hash_4f6940328c97b402");
    level flag::clear(#"hash_50afb2ec0a1fac0");
    level flag::clear(#"hash_a7e154a1957a04c");
    level flag::clear(#"hash_1731d238bd7ce8ad");
    level thread function_5cf1fe48(2, var_201095d5, var_a3d1dedb, var_5cd38a5b);
    level thread function_7e751ad9(0, #"hash_50afb2ec0a1fac0");
    level thread function_7e751ad9(0.33, #"hash_a7e154a1957a04c");
    level thread function_7e751ad9(0.66, #"hash_1731d238bd7ce8ad");
    level.var_581a776e = int(6 + var_65d3ed53 * 2);
    level.var_bf3f1109 = 0;
    if (!isdefined(level.var_704c79ef)) {
        level thread function_e59122de(level.var_cc18747e);
    }
    wait(0.5);
    level.var_b0eb5e2.ignore_player = getplayers();
    level.var_b0eb5e2 namespace_88795f45::function_c6579189(var_9f3609bc);
    var_fe76dee7 function_9d3a3c54();
    wait(1);
    level.var_b0eb5e2.ai.var_8c90ae8e = 1;
    level.var_b0eb5e2.pushable = 0;
    music::setmusicstate("mq_8_mid");
    zm_sq::function_266d66eb(#"hash_909766ed99673eb", var_fe76dee7, undefined, #"hash_1a8fe6da75446f3b");
    level thread function_b2645a24(#"hash_4a49aa778b3cdd8");
    level.var_b0eb5e2 thread function_be97976d(30, 2);
    level flag::wait_till(#"hash_4a49aa778b3cdd8");
    playsoundatposition("zmb_silver_mq_9_screenshake", (582, -103, -293));
    music::setmusicstate("mq_8_low");
    zm_sq::objective_complete(#"hash_909766ed99673eb", var_fe76dee7);
    level.var_b0eb5e2.ai.var_8c90ae8e = 0;
    level thread function_bdd8e757();
    a_players = getplayers();
    foreach (player in a_players) {
        player thread clientfield::increment_to_player("" + #"hash_404a977ff0098cf", 1);
    }
    function_8d1e3ba6(2);
    var_fe76dee7 function_1c0daa38();
    wait(3);
    level.var_b0eb5e2 namespace_88795f45::function_7e855c12(getclosestpointonnavmesh(var_28a53343.origin), "run");
    level flag::set(#"hash_4f693f328c97b24f");
    level flag::clear(#"hash_50afb2ec0a1fac0");
    level flag::clear(#"hash_a7e154a1957a04c");
    level flag::clear(#"hash_1731d238bd7ce8ad");
    level thread function_5cf1fe48(3, var_201095d5, var_a3d1dedb, var_5cd38a5b);
    level thread function_7e751ad9(0, #"hash_50afb2ec0a1fac0");
    level thread function_7e751ad9(0.33, #"hash_a7e154a1957a04c");
    level thread function_7e751ad9(0.66, #"hash_1731d238bd7ce8ad");
    level.var_581a776e = int(8 + var_65d3ed53 * 2);
    level.var_bf3f1109 = 0;
    if (!isdefined(level.var_704c79ef)) {
        level thread function_e59122de(level.var_cc18747e);
    }
    wait(0.5);
    level.var_b0eb5e2.ignore_player = getplayers();
    level.var_b0eb5e2 namespace_88795f45::function_c6579189(var_b058ac01);
    var_28a53343 function_9d3a3c54();
    wait(1);
    level.var_b0eb5e2.ai.var_8c90ae8e = 1;
    level.var_b0eb5e2.pushable = 0;
    music::setmusicstate("mq_8_high");
    zm_sq::function_266d66eb(#"hash_909766ed99673eb", var_28a53343, undefined, #"hash_464a09c2d211b73e");
    level thread function_b2645a24(#"hash_1aab687832f4e02b");
    level.var_b0eb5e2 thread function_be97976d(30, 3);
    level flag::wait_till(#"hash_1aab687832f4e02b");
    zm_sq::objective_complete(#"hash_909766ed99673eb", var_28a53343);
    playsoundatposition("zmb_silver_mq_8_alarm_progress_oneshot", (582, -103, -293));
    music::setmusicstate("mq_8_low");
    level.var_b0eb5e2.ai.var_8c90ae8e = 0;
    level thread function_bdd8e757();
    a_players = getplayers();
    foreach (player in a_players) {
        player thread clientfield::increment_to_player("" + #"hash_404a977ff0098cf", 1);
    }
    function_8d1e3ba6(3);
    level clientfield::set("" + #"hash_48df238a087c684e", 1);
    var_28a53343 function_1c0daa38();
    level.var_b0eb5e2 val::set(#"hash_7c1752bc83bf0b3c", "ignoreme", 1);
    function_9afd3ea2(1);
    level util::delay(25, undefined, &flag::set, #"hash_3dc9f09d14c418d9");
    level flag::wait_till(#"hash_3dc9f09d14c418d9");
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x9c90c0f1, Offset: 0xc8c0
// Size: 0x90
function function_b2645a24(var_626fc69e) {
    self notify("2714f5e892d0172a");
    self endon("2714f5e892d0172a");
    level endon(#"end_game", var_626fc69e);
    while (true) {
        waitresult = level waittill(#"hash_2af49a26c2d2b8");
        level zm_sq::sndonoverride_eye_(waitresult.progress);
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x9dc64dff, Offset: 0xc958
// Size: 0x4b0
function function_39f889a2() {
    level endon(#"end_game");
    level util::delay_notify(40, #"hash_4e734bad5161c1e7");
    level waittill(#"hash_4e734bad5161c1e7");
    level notify(#"hash_795783e3edb7670");
    level flag::set(#"hash_6dae739b31c68d72");
    /#
        iprintlnbold("<unknown string>");
    #/
    music::setmusicstate("silver_mq_exfil");
    level thread exfil_aether_trigger();
    function_b86587a6();
    level.zones[#"zone_trans_north"].is_enabled = 1;
    level.zones[#"zone_trans_north_pap_room"].is_enabled = 1;
    level.zones[#"zone_trans_south"].is_enabled = 1;
    level.zones[#"zone_trans_south_pap_room"].is_enabled = 1;
    level.zones[#"zone_trans_south_tunnel"].is_enabled = 1;
    level.zones[#"zone_power_tunnel"].is_enabled = 1;
    level.var_ccf1f0ee = undefined;
    level clientfield::set("" + #"hash_718b0f4fd6db0bb4", 0);
    foreach (clip in level.var_e0712ded) {
        clip connectpaths();
    }
    foreach (clip in level.var_e0712ded) {
        if (isdefined(clip)) {
            clip delete();
        }
    }
    level function_3b4a24e2();
    level thread function_cc7a52ed();
    level thread function_d53c41b3();
    level thread function_fb092189("weapon_lab_spawned", "mq_exfil_spawn_trigger_wlb", "mq_exfil_direct_spawn_loc_wlb");
    level thread function_fb092189("medical_lab_spawned", "mq_exfil_spawn_trigger_mlb", "mq_exfil_direct_spawn_loc_mlb");
    level thread function_fb092189("tunnel_spawned", "mq_exfil_spawn_trigger_tnl", "mq_exfil_direct_spawn_loc_tnl");
    level thread function_fb092189("yard_spawned", "mq_exfil_spawn_trigger_yrd", "mq_exfil_direct_spawn_loc_yrd");
    level thread function_fb092189("crash_site_spawned", "mq_exfil_spawn_trigger_crsh", "mq_exfil_direct_spawn_loc_crsh");
    level clientfield::set("" + #"hash_5c2cc65ae866b3f4", 1);
    level.var_fdcaf3a6 waittill(#"objective_ended");
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xafd7bf51, Offset: 0xce10
// Size: 0x374
function function_3b4a24e2() {
    if (isdefined(level.var_fdcaf3a6)) {
        return;
    }
    foreach (destination in level.contentmanager.var_d60029a6) {
        if (destination.targetname === "zm_silver_destination") {
            instance = namespace_591b4396::function_5a957da0(destination);
            break;
        }
    }
    assert(isdefined(instance));
    level.var_fdcaf3a6 = instance;
    level.no_powerups = 1;
    level flag::wait_till(#"gameplay_started");
    script = content_manager::get_script(instance.content_script_name);
    objective_manager::function_9751c453(script.var_331b7cc3, instance.contentgroups[#"hash_216188a7e7b381a6"][0].origin, instance);
    if (level clientfield::get("dog_round_fog_bank")) {
        level thread clientfield::set("dog_round_fog_bank", 0);
    }
    level callback::callback(#"hash_594217387367ebb4");
    var_28bf3706 = instance.contentgroups[#"heli_spawn"][0];
    var_3ec7083c = instance.contentgroups[#"hash_216188a7e7b381a6"][0];
    if (!isdefined(var_3ec7083c.radius)) {
        var_3ec7083c.radius = 2000;
    }
    if (!isdefined(var_3ec7083c.height)) {
        var_3ec7083c.height = 500;
    }
    var_3ec7083c.radius = int(var_3ec7083c.radius);
    var_3ec7083c.height = int(var_3ec7083c.height);
    if (isdefined(level.var_26ed6a07)) {
        var_3ec7083c.radius = level.var_26ed6a07;
    }
    if (isdefined(level.var_c86f12d4)) {
        var_3ec7083c.height = level.var_c86f12d4;
    }
    level thread function_664ae3fd();
    level thread function_3d325174();
    level thread function_25dd8ca9(var_28bf3706, var_3ec7083c);
    level thread function_ba172400();
    level thread function_31125f54(#"hash_139be8e926dda5d5");
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x5d911bd7, Offset: 0xd190
// Size: 0xec
function function_3d325174() {
    var_652c0aa1 = 0;
    while (!var_652c0aa1) {
        foreach (player in getplayers()) {
            if (player zm_zonemgr::is_player_in_zone(level.var_ad5e81fe)) {
                var_652c0aa1 = 1;
                break;
            }
        }
        wait(0.5);
    }
    level flag::set(#"hash_3babb5bf72d208da");
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 2, eflags: 0x2 linked
// Checksum 0xc151703d, Offset: 0xd288
// Size: 0x14c
function function_25dd8ca9(var_28bf3706, var_3ec7083c) {
    waitresult = level flag::wait_till_timeout(10, #"hash_3babb5bf72d208da");
    /#
        iprintlnbold("<unknown string>");
    #/
    do {
        waitframe(1);
        level.var_117d5f10 = vehicle::spawn(undefined, "exfil_heli", #"hash_437293ae239af1ab", var_28bf3706.origin, var_28bf3706.angles);
    } while (!isdefined(level.var_117d5f10));
    level.var_117d5f10 function_d733412a(0);
    level.var_117d5f10 thread namespace_591b4396::function_c70a47c(var_3ec7083c);
    wait(10);
    if (!is_true(level.var_979630b4)) {
        level.var_979630b4 = 1;
        zm_vo::function_7622cb70(#"hash_17a5b1277d5ccb3b");
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x9d8fda3c, Offset: 0xd3e0
// Size: 0x64
function function_ba172400() {
    level flag::wait_till_all(array("exfil_heli_arrived", #"hash_3babb5bf72d208da"));
    waitframe(1);
    level flag::set(#"exfil_cleared");
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x5ed1b66f, Offset: 0xd450
// Size: 0x15c
function function_664ae3fd() {
    level endon(#"objective_ended");
    foreach (player in getplayers()) {
        level.var_31028c5d prototype_hud::set_active_objective_string(player, #"hash_2138b0d3ea594968");
        level.var_31028c5d prototype_hud::function_817e4d10(player, 1);
    }
    level thread objective_manager::start_timer(90, "exfil");
    level thread function_c504b2d1();
    level thread function_8fcb0a(90);
    array::thread_all(getplayers(), &function_f885bcd1);
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x722611ef, Offset: 0xd5b8
// Size: 0x314
function function_8fcb0a(var_3aeede0b) {
    level endon(#"objective_ended", #"hash_158779eefe4893d1", #"hash_4fbe4720f6f13107", #"end_game");
    if (var_3aeede0b >= 60) {
        var_cb54863d = var_3aeede0b - 60.4;
        wait(var_cb54863d);
        level thread zm_silver_vo::function_5bd32264(#"hash_a20a9fe0eca6e47");
        wait(15);
        if (!is_true(level.var_979630b4)) {
            level.var_979630b4 = 1;
            level thread zm_vo::function_7622cb70(#"hash_17a5b1277d5ccb3b");
        }
        wait(15);
        level thread zm_vo::function_7622cb70(#"hash_5d7eb59f636a2e09");
        level thread zm_silver_vo::function_5bd32264(#"hash_4c20a2b005668364");
        wait(10);
        level thread zm_silver_vo::function_5bd32264(#"hash_70a4846d29e9194b");
        wait(5);
        level thread zm_vo::function_7622cb70(#"hash_dea3051b8e963f2");
        wait(5);
        level thread zm_silver_vo::function_5bd32264(#"hash_efaab96dfce6fd");
        wait(1);
        level thread zm_silver_vo::function_5bd32264(#"hash_efa9b96dfce54a");
        wait(1);
        level thread zm_silver_vo::function_5bd32264(#"hash_efa8b96dfce397");
        wait(1);
        level thread zm_silver_vo::function_5bd32264(#"hash_efa7b96dfce1e4");
        wait(1);
        level thread zm_silver_vo::function_5bd32264(#"hash_efa6b96dfce031");
        wait(1);
        level thread zm_silver_vo::function_5bd32264(#"hash_efa5b96dfcde7e");
        wait(1);
        level thread zm_silver_vo::function_5bd32264(#"hash_efa4b96dfcdccb");
        wait(1);
        level thread zm_silver_vo::function_5bd32264(#"hash_efa3b96dfcdb18");
        wait(1);
        level thread zm_silver_vo::function_5bd32264(#"hash_efa2b96dfcd965");
        wait(1);
        level thread zm_silver_vo::function_5bd32264(#"hash_efa1b96dfcd7b2");
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x2842310c, Offset: 0xd8d8
// Size: 0x19c
function function_f885bcd1() {
    self endon(#"death");
    self.v_train_inbound_igc = 0;
    while (!level flag::get(#"exfil_cleared") || !level flag::get(#"hash_fdc24944f59c262")) {
        if (is_true(self.var_2c27f919) || !self.v_train_inbound_igc && self namespace_591b4396::function_591cb2f4()) {
            level flag::set(#"hash_fdc24944f59c262");
            if (!level flag::get(#"exfil_cleared")) {
                level.var_31028c5d prototype_hud::set_active_objective_string(self, #"hash_caeceb18a45aa58");
            }
            self.v_train_inbound_igc = 1;
        } else if (self.v_train_inbound_igc && !self namespace_591b4396::function_591cb2f4()) {
            level.var_31028c5d prototype_hud::set_active_objective_string(self, #"hash_2138b0d3ea594968");
            self.v_train_inbound_igc = 0;
        }
        wait(0.5);
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x230093b8, Offset: 0xda80
// Size: 0x70
function function_c504b2d1() {
    level endon(#"objective_ended", #"hash_4fbe4720f6f13107");
    level waittill(#"hash_158779eefe4893d1");
    level notify(#"hash_4fbe4720f6f13107", {#b_success:0});
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x3fc2acff, Offset: 0xdaf8
// Size: 0x60c
function function_31125f54(var_8bb7479c) {
    level thread scene::init_streamer(var_8bb7479c, getplayers(), 0, 0);
    waitresult = level waittill(#"hash_4fbe4720f6f13107");
    level.var_117d5f10 makevehicleunusable();
    objective_setinvisibletoall(level.var_fdcaf3a6.var_e55c8b4e);
    level.var_117d5f10.animname = "helicopter";
    if (isdefined(level.var_fdcaf3a6.trigger)) {
        level.var_fdcaf3a6.trigger delete();
    }
    level clientfield::set("" + #"hash_3fd05810b220d13a", 0);
    b_success = waitresult.b_success;
    if (b_success) {
        music::setmusicstate("silver_mq_exfil_success");
        foreach (player in function_a1ef346b()) {
            player val::set("exfil", "takedamage", 0);
            player val::set("exfil", "allowdeath", 0);
            player namespace_d4ecbbf0::function_3a2e46e0(1);
            player zm_stats::increment_challenge_stat(#"hash_1a7ff6d1e1ff03b0");
        }
        foreach (player in getplayers()) {
            player.pers[#"outcome"] = #"win";
        }
        level thread namespace_591b4396::function_a7394b94(1);
        level zm_silver::function_4b29f610();
        level.var_117d5f10 unlink();
        level notify(#"hash_343f8b4d163b808f");
        level flag::set(#"main_quest_completed");
        level scene::play(var_8bb7479c, level.var_117d5f10);
        array::thread_all(getplayers(), &function_ee6da6f6);
    } else {
        music::setmusicstate("");
        playsoundatposition(#"hash_40520cccacd1532e", (0, 0, 0));
        foreach (player in getplayers()) {
            if (isdefined(var_8bb7479c) && isarray(player.var_231881b1) && isdefined(player.var_231881b1[var_8bb7479c])) {
                player playerstreamerrequest("clear", player.var_231881b1[var_8bb7479c]);
            }
        }
        level thread namespace_591b4396::function_a7394b94(0);
        array::thread_all(getplayers(), &function_1af4f450);
        wait(4);
        array::thread_all(getplayers(), &function_ee6da6f6);
    }
    level notify(#"objective_ended", {#completed:b_success});
    level callback::callback(#"objective_ended", {#instance:level.var_fdcaf3a6, #completed:b_success});
    level.var_fdcaf3a6.success = b_success;
    level.var_fdcaf3a6 notify(#"objective_ended");
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xc3bc82a2, Offset: 0xe110
// Size: 0x64
function function_1af4f450() {
    self endon(#"disconnect");
    self clientfield::set_to_player("" + #"hash_41658211f38c2b02", 1);
    wait(2);
    self lui::screen_fade_out(2, (1, 1, 1));
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x648bb22c, Offset: 0xe180
// Size: 0x24
function function_ee6da6f6() {
    self thread lui::screen_fade_out(0, (0, 0, 0), "end_game_blackscreen");
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x7c1ce89e, Offset: 0xe1b0
// Size: 0xb8
function exfil_aether_trigger() {
    level thread function_c5d3e5c();
    foreach (e_trigger in getentarray("exfil_aether_trigger", "targetname")) {
        e_trigger thread function_34d3837d();
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x603a5bbe, Offset: 0xe270
// Size: 0x74
function function_34d3837d() {
    level endon(#"end_game", #"exfil_aether_trigger");
    self endon(#"death");
    self waittill(#"trigger");
    level flag::set(#"exfil_aether_trigger");
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x7765202d, Offset: 0xe2f0
// Size: 0x12c
function function_c5d3e5c() {
    level endon(#"end_game");
    level flag::wait_till(#"exfil_aether_trigger");
    var_a0b86b5f = getentarray("exfil_aether_damage", "targetname");
    foreach (e_trigger in var_a0b86b5f) {
        /#
            e_trigger thread function_7a4e3128(#"main_quest_completed");
        #/
        e_trigger thread watch_for_player_trigger();
    }
    level thread function_58ce052e(1);
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x6ea35d94, Offset: 0xe428
// Size: 0x170
function function_58ce052e(b_enable) {
    var_f04dd3ef = getentarray("exfil_aether_clip", "targetname");
    if (b_enable) {
        foreach (e_clip in var_f04dd3ef) {
            e_clip solid();
            e_clip disconnectpaths();
        }
        return;
    }
    foreach (e_clip in var_f04dd3ef) {
        e_clip notsolid();
        e_clip connectpaths();
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x809942b1, Offset: 0xe5a0
// Size: 0xb0
function watch_for_player_trigger() {
    level endon(#"end_game");
    self endon(#"death");
    while (true) {
        waitresult = self waittill(#"trigger");
        e_activator = waitresult.activator;
        if (isplayer(e_activator) && !isdefined(e_activator.var_ccc1bcbf)) {
            self thread function_bf287595(e_activator);
        }
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x84e79718, Offset: 0xe658
// Size: 0x13e
function function_bf287595(e_player) {
    level endon(#"end_game");
    e_player endon(#"death", #"disconnect");
    e_player.var_ccc1bcbf = self;
    e_player clientfield::set_to_player("" + #"hash_3cc984f9a32f1508", 1);
    while (e_player istouching(self) && isalive(e_player)) {
        e_player dodamage(25, self.origin, self, self, "none", "MOD_DOT");
        wait(0.25);
    }
    e_player clientfield::set_to_player("" + #"hash_3cc984f9a32f1508", 0);
    e_player.var_ccc1bcbf = undefined;
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xa45d10e0, Offset: 0xe7a0
// Size: 0x3c
function function_8d1e3ba6(n_wave) {
    level clientfield::set("" + #"hash_17466a1bb2380af6", n_wave);
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x2990ba0a, Offset: 0xe7e8
// Size: 0x16
function function_4718251f() {
    self notify(#"auto_revive");
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 4, eflags: 0x2 linked
// Checksum 0xe37848af, Offset: 0xe808
// Size: 0x17c
function function_8d1b6fd8(var_26fccdce, var_6f9a60d5, var_80e903b2, var_465f425d) {
    self endon(#"hash_d215e9a497df471", #"death");
    var_d32ad63c = struct::get("steiner_left_levitate", "targetname");
    self.pushable = 0;
    var_26fccdce.origin = self.origin;
    self linktoblendtotag(var_26fccdce);
    var_26fccdce moveto(var_6f9a60d5.origin, 2.5, 0.5, 0);
    var_d32ad63c thread scene::play("aib_t9_vign_cust_zm_silver_steiner_left_levitate", var_465f425d);
    var_26fccdce waittill(#"movedone");
    var_26fccdce moveto(var_80e903b2.origin, 2.5, 0, 0.5);
    var_26fccdce waittill(#"movedone");
    self flag::set(#"hash_d215e9a497df471");
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x6 linked
// Checksum 0xfcee527c, Offset: 0xe990
// Size: 0x132
function private function_b6a1fe09() {
    steiners = getaiarchetypearray(#"hash_7c0d83ac1e845ac2");
    var_3fa8bde0 = [];
    foreach (steiner in steiners) {
        if (isalive(steiner) && steiner.team == #"allies") {
            if (!isdefined(var_3fa8bde0)) {
                var_3fa8bde0 = [];
            } else if (!isarray(var_3fa8bde0)) {
                var_3fa8bde0 = array(var_3fa8bde0);
            }
            var_3fa8bde0[var_3fa8bde0.size] = steiner;
        }
    }
    return var_3fa8bde0;
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x8270c225, Offset: 0xead0
// Size: 0x174
function function_9951a0d8() {
    self endon(#"disconnect");
    level endon(#"hash_16f2a408c50fab14");
    while (true) {
        var_2f39336 = self zm_zonemgr::get_player_zone();
        self waittill(#"zone_change");
        if (isdefined(var_2f39336)) {
            if (is_true(level.var_a760155a.var_2c085075) && (var_2f39336 == "zone_trans_south_tunnel" && self.cached_zone_name == "zone_center_upper_west" || var_2f39336 == "zone_trans_north" && self.cached_zone_name == "zone_center_upper_north" || var_2f39336 == "zone_power_tunnel" && self.cached_zone_name == "zone_center_upper" || var_2f39336 == "zone_power_tunnel" && self.cached_zone_name == "zone_center_lower") && randomfloat(1) > 0.2) {
                level notify(#"hash_59b1c24ec69056a4");
            }
        }
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x7ee1c459, Offset: 0xec50
// Size: 0x114
function function_abc0783b(var_3e9e754f) {
    var_fe2f597c = getent(var_3e9e754f, "script_noteworthy");
    level.var_a760155a = spawnstruct();
    level.var_a760155a.var_52fca55d = array(#"hash_2bf59e0b5ced6c91", #"hash_2bf59d0b5ced6ade", #"hash_2bf59c0b5ced692b", #"hash_2bf59b0b5ced6778", #"hash_2bf5a20b5ced735d");
    level.var_a760155a.var_400dbfbb = 0;
    level.var_a760155a.var_2c085075 = 1;
    var_fe2f597c thread function_52a4f924();
    var_fe2f597c thread function_6a06cd37();
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x8d8495db, Offset: 0xed70
// Size: 0xb0
function function_6a06cd37() {
    self endon(#"death");
    level endon(#"hash_59b1c24ec69056a4", #"hash_22a4a6dd73981ef1");
    n_delay = randomintrange(4, 7);
    wait(n_delay);
    while (true) {
        self zm_vo::function_d6f8bbd9(#"hash_29e1c245fd42f854");
        n_delay = randomintrange(20, 40);
        wait(n_delay);
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x2daa51e, Offset: 0xee28
// Size: 0x172
function function_52a4f924() {
    self endon(#"death");
    level endon(#"hash_22a4a6dd73981ef1", #"death");
    while (true) {
        level waittill(#"hash_59b1c24ec69056a4");
        if (level.var_a760155a.var_400dbfbb < level.var_a760155a.var_52fca55d.size) {
            /#
                iprintlnbold("<unknown string>" + level.var_a760155a.var_400dbfbb);
            #/
            self zm_vo::function_d6f8bbd9(level.var_a760155a.var_52fca55d[level.var_a760155a.var_400dbfbb]);
            level.var_a760155a.var_400dbfbb++;
            level flag::set(#"hash_781cedacdfef3f84");
        } else {
            level.var_a760155a.var_2c085075 = 0;
            break;
        }
        level.var_a760155a.var_2c085075 = 0;
        wait(20);
        level.var_a760155a.var_2c085075 = 1;
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xa8cd7150, Offset: 0xefa8
// Size: 0x1fa
function function_77e5b46f() {
    level endon(#"hash_6b2607b65009a00b");
    while (true) {
        a_players = getplayers();
        foreach (player in a_players) {
            var_c512de04 = player zm_zonemgr::get_player_zone();
            if (level flag::get(#"dark_aether_active")) {
                player clientfield::set("" + #"hash_63af42145e260fb5", 2);
                continue;
            }
            if ((var_c512de04 === "zone_center_upper" || var_c512de04 === "zone_center_lower" || var_c512de04 === "zone_center_upper_north" || var_c512de04 === "zone_center_upper_west") && !player util::is_spectating()) {
                player clientfield::set("" + #"hash_63af42145e260fb5", 1);
                continue;
            }
            player clientfield::set("" + #"hash_63af42145e260fb5", 0);
        }
        wait(1);
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x0
// Checksum 0x2aa5e924, Offset: 0xf1b0
// Size: 0xc0
function function_57cc7ff7() {
    a_players = getplayers();
    foreach (player in a_players) {
        player clientfield::set("" + #"hash_63af42145e260fb5", 0);
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 4, eflags: 0x2 linked
// Checksum 0x3d844bca, Offset: 0xf278
// Size: 0x30c
function function_5cf1fe48(var_9f23569a, var_201095d5, var_a3d1dedb, var_5cd38a5b) {
    level flag::wait_till(#"hash_50afb2ec0a1fac0");
    level.var_b3d5a24f = 0;
    level.var_90f0a494 = [];
    level thread function_912f5a00(var_201095d5, #"hash_a7e154a1957a04c");
    level thread function_c6bf1890(var_a3d1dedb, #"hash_a7e154a1957a04c");
    level thread function_d6ff31d6(var_5cd38a5b, #"hash_a7e154a1957a04c");
    level thread function_969699c6();
    if (var_9f23569a > 1) {
        function_637141d0();
    }
    level flag::wait_till(#"hash_a7e154a1957a04c");
    level.var_b3d5a24f = 0;
    level.var_90f0a494 = [];
    level thread function_912f5a00(var_201095d5, #"hash_1731d238bd7ce8ad");
    level thread function_c6bf1890(var_a3d1dedb, #"hash_1731d238bd7ce8ad");
    level thread function_d6ff31d6(var_5cd38a5b, #"hash_1731d238bd7ce8ad");
    level thread function_969699c6();
    level flag::wait_till(#"hash_1731d238bd7ce8ad");
    level.var_b3d5a24f = 0;
    level.var_90f0a494 = [];
    switch (var_9f23569a) {
    case 1:
        var_790823ce = #"hash_3a617ab5e651c2a9";
        break;
    case 2:
        var_790823ce = #"hash_4a49aa778b3cdd8";
        break;
    case 3:
        var_790823ce = #"hash_1aab687832f4e02b";
        break;
    }
    level thread function_912f5a00(var_201095d5, var_790823ce);
    level thread function_c6bf1890(var_a3d1dedb, var_790823ce);
    level thread function_d6ff31d6(var_5cd38a5b, var_790823ce);
    level thread function_969699c6();
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 2, eflags: 0x2 linked
// Checksum 0x323ed98f, Offset: 0xf590
// Size: 0x7e
function function_7e751ad9(var_f870ca5, var_2c1b9289) {
    level endon(var_2c1b9289);
    while (true) {
        waitresult = level waittill(#"hash_2af49a26c2d2b8");
        if (waitresult.progress > var_f870ca5) {
            level flag::set(var_2c1b9289);
        }
        waitframe(1);
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 2, eflags: 0x2 linked
// Checksum 0xc90d87dc, Offset: 0xf618
// Size: 0xb6
function function_912f5a00(var_ee4872c1, var_7928fb3d) {
    level endon(var_7928fb3d, #"hash_2281b58db5d2dad");
    level.var_fc5dfa9 = gettime();
    while (true) {
        function_1eaaceab(level.var_46a47223);
        if (gettime() >= level.var_fc5dfa9) {
            if (level.var_46a47223.size < var_ee4872c1) {
                function_5237db24();
                level.var_fc5dfa9 = gettime() + 500;
            }
        }
        waitframe(1);
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x2835f9f3, Offset: 0xf6d8
// Size: 0xd4
function function_5237db24() {
    ai = zombie_utility::spawn_zombie(level.zombie_spawners[0], undefined, undefined, 20);
    if (isdefined(ai)) {
        set_zombie(ai);
        if (!isdefined(level.var_46a47223)) {
            level.var_46a47223 = [];
        } else if (!isarray(level.var_46a47223)) {
            level.var_46a47223 = array(level.var_46a47223);
        }
        level.var_46a47223[level.var_46a47223.size] = ai;
    }
    return ai;
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 2, eflags: 0x2 linked
// Checksum 0x91c88dad, Offset: 0xf7b8
// Size: 0x20a
function function_c6bf1890(var_ee4872c1, var_7928fb3d) {
    level endon(var_7928fb3d, #"hash_2281b58db5d2dad");
    level.var_a36cb684 = gettime();
    var_9677f2f9 = undefined;
    foreach (sp_zombie in level.zombie_spawners) {
        if (is_true(sp_zombie.var_5d6331b7)) {
            var_9677f2f9 = sp_zombie;
        }
    }
    while (true) {
        function_1eaaceab(level.var_c8dda611);
        if (gettime() >= level.var_a36cb684) {
            if (level.var_c8dda611.size < var_ee4872c1) {
                ai = zombie_utility::spawn_zombie(var_9677f2f9, undefined, undefined, 20);
                if (isdefined(ai)) {
                    set_zombie(ai);
                    if (!isdefined(level.var_c8dda611)) {
                        level.var_c8dda611 = [];
                    } else if (!isarray(level.var_c8dda611)) {
                        level.var_c8dda611 = array(level.var_c8dda611);
                    }
                    level.var_c8dda611[level.var_c8dda611.size] = ai;
                    level.var_a36cb684 = gettime() + 1500;
                }
            }
        }
        waitframe(1);
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 2, eflags: 0x2 linked
// Checksum 0x5003086d, Offset: 0xf9d0
// Size: 0x172
function function_d6ff31d6(var_ee4872c1, var_7928fb3d) {
    level endon(var_7928fb3d, #"hash_2281b58db5d2dad");
    level.var_c7557d2f = gettime();
    while (true) {
        function_1eaaceab(level.var_41a245ae);
        if (gettime() >= level.var_c7557d2f) {
            if (level.var_41a245ae.size < var_ee4872c1) {
                ai = zm_utility::function_cce73165("dog_location", #"hash_12a17ab3df5889eb", "zone_center_upper");
                if (isdefined(ai)) {
                    ai.no_powerups = 1;
                    if (!isdefined(level.var_41a245ae)) {
                        level.var_41a245ae = [];
                    } else if (!isarray(level.var_41a245ae)) {
                        level.var_41a245ae = array(level.var_41a245ae);
                    }
                    level.var_41a245ae[level.var_41a245ae.size] = ai;
                    level.var_c7557d2f = gettime() + 2500;
                }
            }
        }
        waitframe(1);
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xbd1581c8, Offset: 0xfb50
// Size: 0x7e
function function_969699c6() {
    level endon(#"hash_4e68fa195d35d63f");
    while (true) {
        if (level.var_90f0a494.size >= level.var_3738589) {
            level flag::set(#"hash_4e68fa195d35d63f");
        }
        function_78507a9f(level.var_3738589);
        waitframe(1);
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 2, eflags: 0x2 linked
// Checksum 0x6f3bdb20, Offset: 0xfbd8
// Size: 0x6c
function function_74e188b0(n_wait_time, var_b2eb7b6b) {
    if (level flag::get(#"hash_4e68fa195d35d63f") && level.var_b3d5a24f <= level.var_6084dd15) {
        wait(n_wait_time);
        function_78507a9f(var_b2eb7b6b);
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xcbf1f14c, Offset: 0xfc50
// Size: 0x23c
function function_78507a9f(var_b2eb7b6b) {
    var_7fbbd018 = undefined;
    var_67840931 = 0;
    var_ebc9e3d = [];
    if (level.var_c8dda611.size > 0 && level.var_46a47223.size > 0) {
        var_ebc9e3d = arraycombine(level.var_c8dda611, level.var_46a47223);
    }
    if (level.var_90f0a494.size < var_b2eb7b6b) {
        if (var_ebc9e3d.size > 0) {
            foreach (attacker in var_ebc9e3d) {
                if (!isinarray(level.var_90f0a494, attacker)) {
                    var_7fbbd018 = attacker;
                    var_67840931 = 1;
                    break;
                }
            }
            if (!is_true(var_67840931)) {
                var_7fbbd018 = function_5237db24();
            }
        } else {
            var_7fbbd018 = function_5237db24();
        }
        if (isdefined(var_7fbbd018)) {
            var_7fbbd018.var_12af7864 = 0;
            if (!isdefined(level.var_90f0a494)) {
                level.var_90f0a494 = [];
            } else if (!isarray(level.var_90f0a494)) {
                level.var_90f0a494 = array(level.var_90f0a494);
            }
            level.var_90f0a494[level.var_90f0a494.size] = var_7fbbd018;
            level.var_b3d5a24f += 1;
        }
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x9d557c49, Offset: 0xfe98
// Size: 0x7e
function function_55958387() {
    level endon(#"hash_1aab687832f4e02b");
    while (true) {
        function_1eaaceab(level.var_90f0a494);
        if (level.var_b3d5a24f > level.var_6084dd15) {
            level flag::set(#"hash_2281b58db5d2dad");
        }
        waitframe(1);
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xfd4a9a43, Offset: 0xff20
// Size: 0x92
function function_637141d0() {
    if (level.var_90f0a494.size > 0) {
        foreach (attacker in level.var_90f0a494) {
            attacker.var_12af7864 = 0;
        }
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x55e78e41, Offset: 0xffc0
// Size: 0xb6
function function_e59122de(var_14fd7c9) {
    level endon(#"hash_6d5f0babef82cff6");
    var_39c83b76 = struct::get("mq_hvt_steiner_spawner", "script_noteworthy");
    var_cd7e3d74 = gettime() + 15000;
    while (true) {
        if (gettime() >= var_cd7e3d74) {
            function_cf8d916f(var_14fd7c9);
            level flag::set(#"hash_6d5f0babef82cff6");
        }
        waitframe(1);
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xd235c365, Offset: 0x10080
// Size: 0xcc
function function_cf8d916f(var_14fd7c9) {
    level.var_704c79ef = zm_utility::function_cce73165("steiner_location", #"hash_53f4e0daa341a161", "zone_center_upper");
    function_480605d8(level.var_704c79ef, 1);
    if (isdefined(level.var_704c79ef)) {
        level.var_704c79ef.ai.cansplit = 0;
        level.var_704c79ef thread function_106bc9f8(var_14fd7c9);
        level.var_704c79ef thread function_d76cb937(var_14fd7c9);
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x55e0ae8c, Offset: 0x10158
// Size: 0x310
function function_d76cb937(var_14fd7c9) {
    self endon(#"death");
    var_ea78a7cd = self.health;
    var_f7b87e0 = 0;
    while (true) {
        function_1eaaceab(level.var_e2d64235);
        var_f7b87e0 += var_ea78a7cd - self.health;
        if (var_f7b87e0 >= self.maxhealth * 0.1) {
            if (level.var_e2d64235.size < var_14fd7c9 - 1 && level.var_bf3f1109 < level.var_581a776e) {
                var_93700de7 = spawnactor(#"spawner_zm_steiner_split_radiation_blast", self.origin, self.angles);
                var_7ffcff59 = spawnactor(#"spawner_zm_steiner_split_radiation_bomb", self.origin, self.angles);
                if (isdefined(var_93700de7)) {
                    var_93700de7 flag::set_val("steiner_split_invulnerable", 0);
                    if (!isdefined(level.var_e2d64235)) {
                        level.var_e2d64235 = [];
                    } else if (!isarray(level.var_e2d64235)) {
                        level.var_e2d64235 = array(level.var_e2d64235);
                    }
                    level.var_e2d64235[level.var_e2d64235.size] = var_93700de7;
                    level.var_bf3f1109 += 1;
                    function_480605d8(var_93700de7, 0.25);
                }
                if (isdefined(var_7ffcff59)) {
                    var_7ffcff59 flag::set_val("steiner_split_invulnerable", 0);
                    if (!isdefined(level.var_e2d64235)) {
                        level.var_e2d64235 = [];
                    } else if (!isarray(level.var_e2d64235)) {
                        level.var_e2d64235 = array(level.var_e2d64235);
                    }
                    level.var_e2d64235[level.var_e2d64235.size] = var_7ffcff59;
                    level.var_bf3f1109 += 1;
                    function_480605d8(var_7ffcff59, 0.25);
                }
                var_f7b87e0 = 0;
            }
        }
        var_ea78a7cd = self.health;
        waitframe(1);
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x71238201, Offset: 0x10470
// Size: 0x3c
function function_106bc9f8(var_14fd7c9) {
    self endon(#"death");
    self function_f7968d5b(15, var_14fd7c9);
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 2, eflags: 0x2 linked
// Checksum 0xf8258a62, Offset: 0x104b8
// Size: 0x2e0
function function_f7968d5b(n_interval, var_f0d05ee7) {
    var_c666969c = gettime() + n_interval * 1000;
    while (true) {
        function_1eaaceab(level.var_e2d64235);
        if (gettime() >= var_c666969c) {
            if (level.var_e2d64235.size < var_f0d05ee7 - 1 && level.var_bf3f1109 < level.var_581a776e) {
                var_93700de7 = spawnactor(#"spawner_zm_steiner_split_radiation_blast", self.origin, self.angles);
                var_7ffcff59 = spawnactor(#"spawner_zm_steiner_split_radiation_bomb", self.origin, self.angles);
                if (isdefined(var_93700de7)) {
                    var_93700de7 flag::set_val("steiner_split_invulnerable", 0);
                    if (!isdefined(level.var_e2d64235)) {
                        level.var_e2d64235 = [];
                    } else if (!isarray(level.var_e2d64235)) {
                        level.var_e2d64235 = array(level.var_e2d64235);
                    }
                    level.var_e2d64235[level.var_e2d64235.size] = var_93700de7;
                    level.var_bf3f1109 += 1;
                    function_480605d8(var_93700de7, 0.25);
                }
                if (isdefined(var_7ffcff59)) {
                    var_7ffcff59 flag::set_val("steiner_split_invulnerable", 0);
                    if (!isdefined(level.var_e2d64235)) {
                        level.var_e2d64235 = [];
                    } else if (!isarray(level.var_e2d64235)) {
                        level.var_e2d64235 = array(level.var_e2d64235);
                    }
                    level.var_e2d64235[level.var_e2d64235.size] = var_7ffcff59;
                    level.var_bf3f1109 += 1;
                    function_480605d8(var_7ffcff59, 0.25);
                }
                var_c666969c = gettime() + n_interval * 1000;
            }
        }
        wait(1);
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 3, eflags: 0x2 linked
// Checksum 0x5614f4eb, Offset: 0x107a0
// Size: 0x320
function function_5a6268b8(n_interval, var_f0d05ee7, var_2c1b9289) {
    level endon(var_2c1b9289);
    var_c666969c = gettime() + n_interval * 1000;
    while (true) {
        function_1eaaceab(level.var_e2d64235);
        if (gettime() >= var_c666969c) {
            if (level.var_e2d64235.size < var_f0d05ee7 - 1 && level.var_bf3f1109 < level.var_581a776e) {
                var_93700de7 = zm_utility::function_cce73165("steiner_location", #"hash_7f957e36b4f6160f", "zone_center_upper");
                var_7ffcff59 = zm_utility::function_cce73165("steiner_location", #"hash_6904f5c7bef64405", "zone_center_lower");
                if (isdefined(var_93700de7)) {
                    var_93700de7 flag::set_val("steiner_split_invulnerable", 0);
                    var_93700de7 thread namespace_88795f45::function_f0811059();
                    if (!isdefined(level.var_e2d64235)) {
                        level.var_e2d64235 = [];
                    } else if (!isarray(level.var_e2d64235)) {
                        level.var_e2d64235 = array(level.var_e2d64235);
                    }
                    level.var_e2d64235[level.var_e2d64235.size] = var_93700de7;
                    level.var_bf3f1109 += 1;
                    function_480605d8(var_93700de7, 0.25);
                }
                if (isdefined(var_7ffcff59)) {
                    var_7ffcff59 flag::set_val("steiner_split_invulnerable", 0);
                    var_7ffcff59 thread namespace_88795f45::function_f0811059();
                    if (!isdefined(level.var_e2d64235)) {
                        level.var_e2d64235 = [];
                    } else if (!isarray(level.var_e2d64235)) {
                        level.var_e2d64235 = array(level.var_e2d64235);
                    }
                    level.var_e2d64235[level.var_e2d64235.size] = var_7ffcff59;
                    level.var_bf3f1109 += 1;
                    function_480605d8(var_7ffcff59, 0.25);
                }
                var_c666969c = gettime() + n_interval * 1000;
            }
        }
        wait(1);
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 2, eflags: 0x2 linked
// Checksum 0x1d1972fe, Offset: 0x10ac8
// Size: 0xba
function function_480605d8(ai, var_5a8e6bf6) {
    if (isdefined(ai)) {
        ai.ignore_enemy_count = 1;
        ai.no_powerups = 1;
        if (level.round_number < 20) {
            var_1af62beb = ai ai::function_9139c839().var_15c336d1;
            ai.maxhealth = (2000 + 20 * var_1af62beb[2].var_928e93a0) * var_5a8e6bf6;
            ai.health = int(ai.maxhealth);
        }
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xb8486aff, Offset: 0x10b90
// Size: 0xe6
function function_d65411e() {
    level endon(#"hash_6b2607b65009a00b");
    exploder::exploder("lgt_env_photo_spotlight");
    while (true) {
        level flag::wait_till(#"dark_aether_active");
        exploder::exploder("lgt_env_photo_spotlight_aether");
        exploder::kill_exploder("lgt_env_photo_spotlight");
        level flag::wait_till_clear(#"dark_aether_active");
        exploder::kill_exploder("lgt_env_photo_spotlight_aether");
        exploder::exploder("lgt_env_photo_spotlight");
        waitframe(1);
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x78a6049e, Offset: 0x10c80
// Size: 0x2c
function function_21bfa736(n_duration) {
    wait(n_duration);
    exploder::kill_exploder("lgt_env_photo_spotlight");
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 2, eflags: 0x2 linked
// Checksum 0x34049933, Offset: 0x10cb8
// Size: 0x2a4
function function_be97976d(var_8286522a, var_3f612bdd) {
    self endon(#"death");
    switch (var_3f612bdd) {
    case 1:
        level endon(#"hash_3a617ab5e651c2a9");
        break;
    case 2:
        level endon(#"hash_4a49aa778b3cdd8");
        break;
    case 3:
        level endon(#"hash_1aab687832f4e02b");
        break;
    }
    n_defend_time = var_8286522a * 1000;
    n_duration = n_defend_time;
    n_progress = 1 - float(n_duration) / n_defend_time;
    level notify(#"hash_2af49a26c2d2b8", {#progress:n_progress});
    lasttime = gettime();
    while (true) {
        if (isdefined(self)) {
            if (self.ai.var_a49798e7) {
            } else {
                n_duration -= gettime() - lasttime;
                n_progress = 1 - float(n_duration) / n_defend_time;
                level notify(#"hash_2af49a26c2d2b8", {#progress:n_progress});
            }
            lasttime = gettime();
            if (n_duration <= 0) {
                switch (var_3f612bdd) {
                case 1:
                    level flag::set(#"hash_3a617ab5e651c2a9");
                    break;
                case 2:
                    level flag::set(#"hash_4a49aa778b3cdd8");
                    break;
                case 3:
                    level flag::set(#"hash_1aab687832f4e02b");
                    break;
                }
            }
        }
        waitframe(1);
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x0
// Checksum 0xc52968ea, Offset: 0x10f68
// Size: 0x2e
function function_7d583dd() {
    var_bf48e9e2 = function_b6a1fe09();
    self.favoriteenemy = var_bf48e9e2[0];
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 2, eflags: 0x2 linked
// Checksum 0x2299b02c, Offset: 0x10fa0
// Size: 0x298
function function_a1bf0a43(var_743c16e0, var_93bdf906) {
    level endon(#"end_game", var_743c16e0);
    var_f2484ed9 = util::spawn_model("tag_origin", self.origin);
    var_9463599a = undefined;
    while (true) {
        if (var_f2484ed9 flag::get(#"hash_7a42d508140ae262")) {
            level flag::wait_till(#"hash_4d6700553ede7078");
        }
        var_f2484ed9 clientfield::set("" + #"hash_7ec80a02e9bb051a", 1);
        if (!isdefined(var_9463599a)) {
            var_9463599a = var_f2484ed9 zm_silver_util::function_3be9e71a();
        }
        var_f2484ed9 function_19986231();
        var_f2484ed9 function_58e278a1();
        waitresult = level waittill(#"dark_tear_activated", #"into_the_dark_side");
        if (waitresult._notify == "dark_tear_activated") {
            var_f2484ed9 flag::set(#"hash_7a42d508140ae262");
            level notify(#"into_the_dark_side");
            level flag::set(var_93bdf906);
        }
        var_f2484ed9.mdl_gameobject thread zm_silver_util::function_1194b9bc();
        level flag::wait_till(#"dark_aether_active");
        var_f2484ed9 clientfield::set("" + #"hash_7ec80a02e9bb051a", 0);
        if (isdefined(var_9463599a)) {
            var_9463599a delete();
        }
        level flag::wait_till_clear(#"dark_aether_active");
        level flag::clear(var_93bdf906);
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 6, eflags: 0x2 linked
// Checksum 0xa6868305, Offset: 0x11240
// Size: 0x310
function function_34a1157d(var_3b3f5ecb, var_7965c97b, str_zone_name, var_712035de, var_d51151ec, var_93bdf906) {
    level endon(var_712035de);
    var_906de1e0 = struct::get(var_7965c97b, "script_noteworthy");
    while (true) {
        level flag::wait_till(#"dark_aether_active");
        if (isdefined(var_93bdf906) && !level flag::get(var_93bdf906)) {
            wait(1);
            continue;
        }
        var_cbd423bc = util::spawn_model("tag_origin", var_906de1e0.origin);
        var_cbd423bc thread function_de34115();
        trigger = var_cbd423bc zm_unitrigger::create(&function_45fed3bf, (128, 128, 128), &function_ce94e1d2);
        if (!isdefined(level.var_b59d1162)) {
            level.var_b59d1162 = [];
        } else if (!isarray(level.var_b59d1162)) {
            level.var_b59d1162 = array(level.var_b59d1162);
        }
        level.var_b59d1162[level.var_b59d1162.size] = trigger;
        var_cbd423bc clientfield::set("" + #"hash_8358a32177aa60e", 0);
        zm_unitrigger::unitrigger_force_per_player_triggers(trigger, 1);
        wait_locations = level.zones[str_zone_name].a_loc_types[#"wait_location"];
        var_cbd423bc thread function_eedc944b(trigger, var_3b3f5ecb, str_zone_name, var_d51151ec);
        level flag::wait_till_clear(#"dark_aether_active");
        level scene::delete_scene_spawned_ents(var_3b3f5ecb);
        function_165ebd72(str_zone_name);
        function_cd1efeed(str_zone_name, 1);
        level callback::remove_on_actor_damage(&function_e1e6ef8d);
        if (isdefined(wait_locations)) {
            level.zones[str_zone_name].a_loc_types[#"wait_location"] = wait_locations;
        }
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x5539dcbc, Offset: 0x11558
// Size: 0x2a0
function function_8b256066(str_scene) {
    switch (str_scene) {
    case #"done_echo_scene_vogel_01":
        stat_name = #"hash_7c24f6ffd4fe3ad5";
        break;
    case #"done_echo_scene_vogel_02":
        stat_name = #"hash_629e6a7ec564645a";
        break;
    case #"done_echo_scene_vogel_03":
        stat_name = #"hash_104a0f324ff449a3";
        break;
    case #"done_echo_scene_thiefsoldier":
        stat_name = #"hash_1639debe5cf290cb";
        break;
    case #"hash_32065ff0cf2dbf89":
        stat_name = #"hash_8a6100b519878ac";
        break;
    case #"done_echo_scene_kurtzandvogel":
        stat_name = #"hash_55279bc6926c7ea4";
        break;
    case #"done_echo_scene_lastsoldier":
        stat_name = #"hash_2b58c53a46eb853";
        break;
    case #"done_echo_scene_dmitriyev_kalashnik_01_throw":
        stat_name = #"hash_362b361c9c686ebf";
        break;
    case #"done_echo_scene_orlovandmedved":
        stat_name = #"hash_3d79550a031d56bf";
        break;
    case #"done_echo_scene_valentinaandpeck":
        stat_name = #"hash_2be6eda2d188e1fa";
        break;
    default:
        return;
    }
    players = getplayers();
    foreach (player in players) {
        if (!player zm_stats::function_165a4e7b(stat_name)) {
            player zm_stats::function_b4cc2b13(stat_name, 1);
            player zm_stats::increment_challenge_stat(#"hash_1b624464514f34b1");
        }
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 4, eflags: 0x2 linked
// Checksum 0xbfc65a66, Offset: 0x11800
// Size: 0x250
function function_eedc944b(var_b2419dd, var_3b3f5ecb, str_zone_name, var_7928fb3d) {
    level endon(#"dark_side_timeout", #"hash_61e8a39b3a4bee6a");
    while (true) {
        waitresult = self waittill(#"trigger_activated");
        level.zones[str_zone_name].a_loc_types[#"wait_location"] = [];
        self playsound(#"hash_7c5c78e1489169ba");
        waitresult.e_who thread flag::set_for_time(2, #"hash_7ef7aab6a305d0b0");
        function_cd1efeed(str_zone_name, 0);
        a_players = getplayers();
        foreach (player in a_players) {
            player thread function_a7f549b0(str_zone_name, var_7928fb3d);
        }
        level callback::on_actor_damage(&function_e1e6ef8d);
        if (level.var_ba3a0e1f <= scene::function_12479eba(var_3b3f5ecb)) {
            level.var_ba3a0e1f = scene::function_12479eba(var_3b3f5ecb);
        }
        level thread scene::play(var_3b3f5ecb);
        function_6492d9db(var_b2419dd);
        self flag::set("orb_is_deciphered");
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 2, eflags: 0x2 linked
// Checksum 0xb77c86f0, Offset: 0x11a58
// Size: 0x110
function function_a7f549b0(str_zone_name, var_7928fb3d) {
    self endon(#"death");
    level endon(#"dark_side_timeout", #"hash_61e8a39b3a4bee6a", var_7928fb3d);
    var_3e3471b2 = self zm_zonemgr::get_player_zone();
    if (var_3e3471b2 === str_zone_name) {
        self function_ec732196(1);
    }
    while (true) {
        self waittill(#"zone_change");
        str_zone = self zm_zonemgr::get_player_zone();
        if (str_zone === str_zone_name) {
            self function_ec732196(1);
            continue;
        }
        self function_ec732196(0);
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x11dd2722, Offset: 0x11b70
// Size: 0xd8
function function_165ebd72(str_zone_name) {
    a_players = getplayers();
    foreach (player in a_players) {
        var_bdf9e3c2 = player zm_zonemgr::get_player_zone();
        if (var_bdf9e3c2 === str_zone_name) {
            player function_ec732196(0);
        }
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 2, eflags: 0x2 linked
// Checksum 0x614ba360, Offset: 0x11c50
// Size: 0x42
function function_cd1efeed(str_zone_name, var_e7f5b3e0) {
    if (isdefined(level.zones[str_zone_name])) {
        level.zones[str_zone_name].is_spawning_allowed = var_e7f5b3e0;
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xab0eb30a, Offset: 0x11ca0
// Size: 0x208
function function_ec732196(var_bd357ae) {
    if (var_bd357ae) {
        self val::set(#"hash_6316e79204ae05eb", "ignoreme", 1);
        var_743a066e = getaiarchetypearray(#"hash_7c0d83ac1e845ac2");
        if (isdefined(var_743a066e)) {
            foreach (steiner in var_743a066e) {
                steiner val::set(#"hash_1fa97fcb67f9befc", "ignoreall", 1);
                steiner clearenemy();
            }
        }
        return;
    }
    self val::set(#"hash_6316e79204ae05eb", "ignoreme", 0);
    var_743a066e = getaiarchetypearray(#"hash_7c0d83ac1e845ac2");
    if (isdefined(var_743a066e)) {
        foreach (steiner in var_743a066e) {
            steiner val::reset(#"hash_1fa97fcb67f9befc", "ignoreall");
        }
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x69ae6bc4, Offset: 0x11eb0
// Size: 0x108
function function_42da022b() {
    level endon(#"end_game");
    while (true) {
        level flag::wait_till(#"dark_aether_active");
        level flag::wait_till_clear(#"dark_aether_active");
        if (level.var_b59d1162.size > 0) {
            foreach (trigger in level.var_b59d1162) {
                function_6492d9db(trigger);
            }
            level.var_b59d1162 = [];
        }
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x426e0ea9, Offset: 0x11fc0
// Size: 0x2a
function function_6492d9db(unitrigger) {
    zm_unitrigger::unregister_unitrigger(unitrigger);
    unitrigger = undefined;
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x168453c8, Offset: 0x11ff8
// Size: 0x5c
function function_e1e6ef8d(params) {
    if (self.team == level.zombie_team && isplayer(params.eattacker)) {
        params.eattacker function_ec732196(0);
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 2, eflags: 0x2 linked
// Checksum 0x712c18e9, Offset: 0x12060
// Size: 0x36
function function_332ca53e(*ents, str_notify) {
    level function_8b256066(str_notify);
    level notify(str_notify);
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x34a6a352, Offset: 0x120a0
// Size: 0x94
function function_fc0ced31(*ents) {
    level notify(#"done_echo_scene_thiefsoldier");
    level function_8b256066("done_echo_scene_thiefsoldier");
    function_165ebd72("zone_trans_north");
    function_cd1efeed("zone_trans_north", 1);
    level callback::remove_on_actor_damage(&function_e1e6ef8d);
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x6e1cdfa9, Offset: 0x12140
// Size: 0x94
function function_299c9b7f(*ents) {
    level notify(#"done_echo_scene_lastsoldier");
    level function_8b256066("done_echo_scene_lastsoldier");
    function_165ebd72("zone_proto_interior_lower");
    function_cd1efeed("zone_proto_interior_lower", 1);
    level callback::remove_on_actor_damage(&function_e1e6ef8d);
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x773fd432, Offset: 0x121e0
// Size: 0x94
function function_acc98467(*ents) {
    level notify(#"done_echo_scene_kurtzandvogel");
    level function_8b256066("done_echo_scene_kurtzandvogel");
    function_165ebd72("zone_center_upper_north");
    function_cd1efeed("zone_center_upper_north", 1);
    level callback::remove_on_actor_damage(&function_e1e6ef8d);
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xc13eedd8, Offset: 0x12280
// Size: 0x94
function function_68fb1270(*ents) {
    level notify(#"done_echo_scene_valentinaandpeck");
    level function_8b256066("done_echo_scene_valentinaandpeck");
    function_165ebd72("zone_power_room");
    function_cd1efeed("zone_power_room", 1);
    level callback::remove_on_actor_damage(&function_e1e6ef8d);
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xd2c9a4bb, Offset: 0x12320
// Size: 0x94
function function_e920684(*ents) {
    level notify(#"done_echo_scene_orlovandmedved");
    level function_8b256066("done_echo_scene_orlovandmedved");
    function_165ebd72("zone_proto_exterior_rear2");
    function_cd1efeed("zone_proto_exterior_rear2", 1);
    level callback::remove_on_actor_damage(&function_e1e6ef8d);
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x4b3176bf, Offset: 0x123c0
// Size: 0x94
function function_2214bfa4(*ents) {
    level notify(#"done_echo_scene_dmitriyev_kalashnik_01_throw");
    level function_8b256066("done_echo_scene_dmitriyev_kalashnik_01_throw");
    function_165ebd72("zone_proto_plane_exterior");
    function_cd1efeed("zone_proto_plane_exterior", 1);
    level callback::remove_on_actor_damage(&function_e1e6ef8d);
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x522c1ec1, Offset: 0x12460
// Size: 0xb4
function function_4afbb1fa(*ents) {
    if (level.var_ba3a0e1f > 0) {
        level flag::set(#"hash_1dd7e5ac52d2221c");
    }
    level function_8b256066(#"hash_32065ff0cf2dbf89");
    function_165ebd72("zone_proto_interior_cave");
    function_cd1efeed("zone_proto_interior_cave", 1);
    level callback::remove_on_actor_damage(&function_e1e6ef8d);
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x3607910c, Offset: 0x12520
// Size: 0x7e
function function_b8e662e5(var_c76bbbcc) {
    level.zones[#"zone_trans_north"].is_spawning_allowed = var_c76bbbcc;
    level.zones[#"zone_trans_south_tunnel"].is_spawning_allowed = var_c76bbbcc;
    level.zones[#"zone_power_tunnel"].is_spawning_allowed = var_c76bbbcc;
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x9a8ef690, Offset: 0x125a8
// Size: 0x76
function function_b86587a6() {
    level.zones[#"zone_trans_north"].is_spawning_allowed = 1;
    level.zones[#"zone_trans_south_tunnel"].is_spawning_allowed = 1;
    level.zones[#"zone_power_tunnel"].is_spawning_allowed = 1;
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x6 linked
// Checksum 0x7dda6cf3, Offset: 0x12628
// Size: 0xa6
function private set_zombie(e_zombie) {
    if (isdefined(e_zombie)) {
        e_zombie.var_126d7bef = 1;
        e_zombie.ignore_round_spawn_failsafe = 1;
        e_zombie.b_ignore_cleanup = 1;
        e_zombie.ignore_enemy_count = 1;
        e_zombie.no_powerups = 1;
        if (isinarray(level.var_90f0a494, e_zombie)) {
            e_zombie.var_12af7864 = 0;
        } else {
            e_zombie.var_12af7864 = 1;
        }
        if (e_zombie.health < 2000) {
            e_zombie.health = 2000;
        }
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x9d4dbb60, Offset: 0x126d8
// Size: 0xd8
function function_19986231() {
    if (!self flag::get(#"hash_7a42d508140ae262")) {
        foreach (player in getplayers()) {
            player clientfield::set_to_player("" + #"hash_1fa45e1c3652d753", 1);
        }
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xcbe1ffbb, Offset: 0x127b8
// Size: 0x644
function on_item_pickup(params) {
    item = params.item;
    if (isplayer(self)) {
        if (isdefined(item.itementry.name)) {
            switch (item.itementry.name) {
            case #"hash_2ebe3fb8c0af6e5b":
                level zm_ui_inventory::function_7df6bb60(#"hash_1f87150a0632f418", 1);
                level notify(#"manage_to_find_aetherscope_part", {#player:self});
                self clientfield::increment_to_player("" + #"hash_6696d96a08b9701d");
                break;
            case #"hash_2ebe40b8c0af700e":
                level zm_ui_inventory::function_7df6bb60(#"hash_1f87180a0632f931", 1);
                level notify(#"manage_to_find_aetherscope_part", {#player:self});
                self clientfield::increment_to_player("" + #"hash_6696d96a08b9701d");
                break;
            case #"hash_2ebe41b8c0af71c1":
                level zm_ui_inventory::function_7df6bb60(#"hash_1f87170a0632f77e", 1);
                level notify(#"manage_to_find_aetherscope_part", {#player:self});
                self clientfield::increment_to_player("" + #"hash_6696d96a08b9701d");
                break;
            case #"item_zmintel_silver_darkaether_artifact_4":
                level flag::set("wrench_collected");
                level zm_ui_inventory::function_7df6bb60(#"hash_1b836a89598ddaa4", 1);
                array::thread_all(function_a1ef346b(), &zm_intel::collect_intel, "zmintel_silver_darkaether_artifact_4");
                self clientfield::increment_to_player("" + #"hash_6696d96a08b9701d");
                break;
            case #"item_zmintel_silver_requiem_artifact_3":
                level flag::set(#"hash_1e2c6b7b99b8706b");
                level flag::set("aetherscope_collected");
                array::thread_all(function_a1ef346b(), &zm_intel::collect_intel, "zmintel_silver_requiem_artifact_3");
                self clientfield::increment_to_player("" + #"hash_6696d96a08b9701d");
                break;
            case #"item_zmintel_silver_requiem_artifact_4":
                level flag::set("someone_has_notebook");
                level zm_ui_inventory::function_7df6bb60(#"hash_6df578dd42812c70", 1);
                array::thread_all(function_a1ef346b(), &zm_intel::collect_intel, "zmintel_silver_requiem_artifact_4");
                self clientfield::increment_to_player("" + #"hash_6696d96a08b9701d");
                /#
                    iprintlnbold("<unknown string>");
                #/
                break;
            case #"item_zmintel_silver_omega_artifact_1":
                level flag::set(#"hash_16f2a408c50fab14");
                level zm_ui_inventory::function_7df6bb60(#"hash_2d5b26565a3e1ea1", 1);
                array::thread_all(function_a1ef346b(), &zm_intel::collect_intel, "zmintel_silver_omega_artifact_1");
                self clientfield::increment_to_player("" + #"hash_6696d96a08b9701d");
                break;
            case #"item_zmintel_silver_requiem_artifact_5":
                level notify(#"hash_1f20be24ebb9923c");
                if (!level flag::get(#"hash_626c3cc90d7a0cdb")) {
                    self thread zm_intel::collect_intel("zmintel_silver_requiem_artifact_5");
                    level flag::set(#"hash_626c3cc90d7a0cdb");
                }
                level thread function_7acfbb3a(self);
                self clientfield::increment_to_player("" + #"hash_6696d96a08b9701d");
                break;
            default:
                return;
            }
            level thread popups::function_87604884(#"hash_4cacf78219f8fca", self, self.team, item.itementry.displayname);
        }
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x882ba257, Offset: 0x12e08
// Size: 0x52
function function_5080c483(item) {
    if (item.itementry.name === "item_zmintel_silver_requiem_artifact_5") {
        return !self function_7f1e56d8("stand");
    }
    return true;
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x5a7dbf8c, Offset: 0x12e68
// Size: 0x6c
function on_player_spawned() {
    if (is_true(self.is_hotjoining) || self util::is_spectating()) {
        return;
    }
    if (level flag::get("aetherscope_collected")) {
        self thread zm_silver_util::function_b9adea4e();
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x0
// Checksum 0xa36f45df, Offset: 0x12ee0
// Size: 0x174
function function_2b6da102(var_89479f25) {
    var_21995124 = util::spawn_model("tag_origin", self.origin);
    var_21995124 thread zm_vo::function_1ac9c00e(var_89479f25);
    var_830266a7 = 0;
    foreach (alias in var_89479f25) {
        var_830266a7 += float(max(isdefined(soundgetplaybacktime(alias)) ? soundgetplaybacktime(alias) : 500, 500)) / 1000;
    }
    if (level.var_ba3a0e1f < var_830266a7) {
        level.var_ba3a0e1f = var_830266a7;
    }
    wait(var_830266a7);
    if (isdefined(var_21995124)) {
        var_21995124 delete();
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xde491b2e, Offset: 0x13060
// Size: 0x15c
function function_cc7a52ed() {
    level endon(#"end_game", #"hash_4fbe4720f6f13107");
    var_1b35991d = gettime();
    while (true) {
        if (gettime() > var_1b35991d) {
            a_players = function_a1ef346b();
            foreach (player in a_players) {
                level thread function_bdd8e757();
                player thread clientfield::increment_to_player("" + #"hash_404a977ff0098cf", 1);
            }
            wait(4);
            var_1b35991d = gettime() + randomintrange(5, 8) * 1000;
        }
        wait(0.5);
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x5446194a, Offset: 0x131c8
// Size: 0x264
function function_17468758(*params) {
    if (self.team == level.zombie_team && isinarray(level.var_90f0a494, self)) {
        arrayremovevalue(level.var_90f0a494, self);
        n_interval = 0;
        if (function_a1ef346b().size > 1) {
            n_interval = 2;
        } else {
            n_interval = 2;
        }
        level thread function_74e188b0(n_interval, level.var_3738589);
    }
    if (self.team == level.zombie_team && self.aitype == #"hash_acac3fe7a341329" && level flag::get(#"hash_322c7f92525e008e")) {
        if (!level flag::get(#"hash_3a617ab5e651c2a9")) {
            level thread function_5a6268b8(15, level.var_cc18747e, #"hash_3a617ab5e651c2a9");
            return;
        }
        if (level flag::get(#"hash_3a617ab5e651c2a9") && !level flag::get(#"hash_4a49aa778b3cdd8")) {
            level thread function_5a6268b8(15, level.var_cc18747e, #"hash_4a49aa778b3cdd8");
            return;
        }
        if (level flag::get(#"hash_4a49aa778b3cdd8") && !level flag::get(#"hash_1aab687832f4e02b")) {
            level thread function_5a6268b8(15, level.var_cc18747e, #"hash_1aab687832f4e02b");
        }
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x8b409c36, Offset: 0x13438
// Size: 0x74
function function_bdd8e757() {
    level clientfield::set("" + #"hash_570bb58b50e9db2e", 1);
    wait(4);
    level clientfield::set("" + #"hash_570bb58b50e9db2e", 0);
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x0
// Checksum 0xf2ecb491, Offset: 0x134b8
// Size: 0x7e
function function_e2f745e1() {
    level endon(#"hash_44078192bcaf5372");
    while (true) {
        a_zombies = getaispeciesarray(level.zombie_team);
        if (a_zombies.size == 0) {
            level flag::set(#"hash_44078192bcaf5372");
        }
        wait(1);
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0xf1458ca9, Offset: 0x13540
// Size: 0x1b0
function function_8f85d169(var_dbd74b22 = 1) {
    if (var_dbd74b22) {
        level thread zm_audio::sndmusicsystem_stopandflush();
        level.musicsystemoverride = 1;
        foreach (player in getplayers()) {
            player clientfield::set_to_player("" + #"hash_4be33f9c734f0cb9", 2);
        }
        return;
    }
    level.musicsystemoverride = 0;
    foreach (player in getplayers()) {
        player clientfield::set_to_player("" + #"hash_4be33f9c734f0cb9", 3);
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 1, eflags: 0x2 linked
// Checksum 0x31d8849a, Offset: 0x136f8
// Size: 0xd4
function function_9afd3ea2(var_1784db6) {
    var_32c3c05c = getaiarchetypearray(#"hash_7c0d83ac1e845ac2");
    foreach (steiner in var_32c3c05c) {
        steiner.ai.cansplit = 0;
    }
    level zm_utility::function_9ad5aeb1(0, 1, 0, var_1784db6);
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xbc90d5a5, Offset: 0x137d8
// Size: 0x94
function function_129e09f3() {
    players = getplayers();
    for (i = 0; i < players.size; i++) {
        e_player = players[i];
        e_player zm_player::spectator_respawn_player();
    }
    array::thread_all(getplayers(), &function_4718251f);
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x9f410872, Offset: 0x13878
// Size: 0x318
function function_a2a695e3() {
    level waittill(#"hash_168c974a32574db3");
    a_players = function_a1ef346b();
    foreach (player in a_players) {
        player thread clientfield::increment_to_player("" + #"hash_7a769c728c89b6b5", 1);
    }
    level waittill(#"hash_168c984a32574f66");
    a_players = function_a1ef346b();
    foreach (player in a_players) {
        player thread clientfield::increment_to_player("" + #"hash_7a769c728c89b6b5", 1);
    }
    level waittill(#"hash_168c994a32575119");
    a_players = function_a1ef346b();
    foreach (player in a_players) {
        player thread clientfield::increment_to_player("" + #"hash_7a769c728c89b6b5", 1);
    }
    level waittill(#"hash_168c9a4a325752cc");
    a_players = function_a1ef346b();
    foreach (player in a_players) {
        player thread clientfield::increment_to_player("" + #"hash_7a769c728c89b6b5", 1);
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0x26b44d1f, Offset: 0x13b98
// Size: 0xec
function function_479a6396() {
    level endon(#"steiner_merge_done");
    while (true) {
        a_players = function_a1ef346b();
        foreach (player in a_players) {
            player thread clientfield::increment_to_player("" + #"hash_6696d96a08b9701d", 1);
        }
        wait(0.5);
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 3, eflags: 0x2 linked
// Checksum 0xeb00b28e, Offset: 0x13c90
// Size: 0x272
function function_fb092189(var_426f34de, str_trigger_name, var_4fd582e7) {
    level endon(var_426f34de, #"end_game");
    var_33507048 = struct::get(str_trigger_name, "script_noteworthy");
    var_2bf42f31 = struct::get_array(var_4fd582e7, "script_noteworthy");
    while (true) {
        a_players = function_a1ef346b();
        foreach (player in a_players) {
            if (distancesquared(player.origin, var_33507048.origin) <= 10000) {
                foreach (loc in var_2bf42f31) {
                    ai = spawnactor("spawner_zm_zombie_silver", loc.origin, loc.angles, 1);
                    set_zombie(ai);
                    if (isdefined(ai)) {
                        ai.zombie_move_speed = "sprint";
                        ai pathmode("move allowed");
                        ai.completed_emerging_into_playable_area = 1;
                        ai.zombie_think_done = 1;
                    }
                }
                level flag::set(var_426f34de);
            }
        }
        waitframe(1);
    }
}

// Namespace zm_silver_main_quest/zm_silver_main_quest
// Params 0, eflags: 0x2 linked
// Checksum 0xee241a4e, Offset: 0x13f10
// Size: 0x9c
function function_d53c41b3() {
    level endon(#"end_game");
    level flag::wait_till(#"hash_3babb5bf72d208da");
    level flag::set(#"spawn_zombies");
    level flag::set(#"infinite_round_spawning");
    level flag::set(#"pause_round_timeout");
}

