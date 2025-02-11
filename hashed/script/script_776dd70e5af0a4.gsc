#using script_155b17ff7c8b315c;
#using script_1aa56b3bc89b63e5;
#using script_32399001bdb550da;
#using script_3dc93ca9902a9cda;
#using script_446752c03c555e16;
#using script_4489198b8bcf36e8;
#using script_57d05cf093ffba5c;
#using script_6cd35fe7afb1f231;
#using script_719116534f2a623f;
#using script_7d0013bbc05623b9;
#using script_97b74052c477c23;
#using script_9d8189b6b799089;
#using scripts\core_common\ai_shared;
#using scripts\core_common\array_shared;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\colors_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\fx_shared;
#using scripts\core_common\math_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\spawner_shared;
#using scripts\core_common\stealth\utility;
#using scripts\core_common\struct;
#using scripts\core_common\trigger_shared;
#using scripts\core_common\util_shared;
#using scripts\core_common\values_shared;
#using scripts\core_common\vehicle_shared;
#using scripts\core_common\vehicleriders_shared;
#using scripts\cp\cp_rus_amerika;
#using scripts\cp_common\achievements;
#using scripts\cp_common\gametypes\battlechatter;
#using scripts\cp_common\hms_util;
#using scripts\cp_common\objectives;
#using scripts\cp_common\skipto;
#using scripts\cp_common\snd;
#using scripts\cp_common\spawn_manager;
#using scripts\cp_common\util;

#namespace namespace_b767a37e;

// Namespace namespace_b767a37e/namespace_ff025add
// Params 1, eflags: 0x0
// Checksum 0x9dc7fad6, Offset: 0x1af8
// Size: 0xb4
function function_1bfb5e75(*str_objective) {
    clientfield::set("SetPBGExposureBank", 1);
    namespace_fc3e8cb::function_2987fd4c("s_teleport_woods_video_store", 0, 0);
    level thread namespace_fc3e8cb::function_869f213d();
    level flag::set("flg_arcade_end_gundown");
    level thread namespace_fc3e8cb::function_6fe40e14("video_store_gun_rack1", "video_store_gun_rack2", "video_store_gun_rack3");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 2, eflags: 0x0
// Checksum 0x2418a20b, Offset: 0x1bb8
// Size: 0xd4
function function_6fc923cc(str_objective, *var_50cc0d4f) {
    /#
        namespace_fc3e8cb::function_44a6fc04(var_50cc0d4f);
    #/
    level thread function_50c0c9bc();
    level thread function_ab2e5181();
    level thread function_58d0b9b2();
    level thread function_c3206d47();
    level thread function_bdbde0c9();
    flag::wait_till("flg_main_street_start");
    skipto::function_4e3ab877(var_50cc0d4f);
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 4, eflags: 0x0
// Checksum 0x7014ad6b, Offset: 0x1c98
// Size: 0x64
function function_b85d7b0c(*str_objective, var_50cc0d4f, *var_aa1a6455, *player) {
    if (player == 1) {
        level flag::set("flg_arcade_end_gundown");
        level thread function_bdbde0c9();
    }
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x166d259a, Offset: 0x1d08
// Size: 0x9c
function function_50c0c9bc() {
    if (!isdefined(objectives::function_285e460("obj_video_store_main"))) {
        objectives::scripted("obj_video_store_main", undefined, #"hash_5e0c26968547ac5d", 0);
    }
    level breadcrumb::function_61037c6c("s_obj_video_store_breadcrumb");
    flag::wait_till("flg_main_street_start");
    objectives::complete("obj_video_store_main");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0xd99718dc, Offset: 0x1db0
// Size: 0x27c
function function_ab2e5181() {
    level flag::wait_till("flg_amk_player_spawned");
    level.player endon(#"death");
    level.woods ai::set_behavior_attribute("vignette_mode", "fast");
    level.woods ai::set_behavior_attribute("disablepeek", 1);
    level.woods ai::set_behavior_attribute("disablelean", 1);
    level.woods battlechatter::function_2ab9360b(0);
    level thread namespace_4bd68414::function_7bd5886a();
    level thread namespace_fc3e8cb::function_5c5b6ea7("nd_video_store_woods_start");
    level.woods namespace_fc3e8cb::function_4171ba27();
    level flag::wait_till("flg_video_store_alert");
    level.woods clearforcedgoal();
    level.woods colors::set_force_color("blue");
    level.woods namespace_fc3e8cb::function_d74bffa7();
    level.woods ai::set_behavior_attribute("vignette_mode", "off");
    level.woods ai::set_behavior_attribute("disablepeek", 0);
    level.woods ai::set_behavior_attribute("disablelean", 0);
    level flag::wait_till("flg_main_street_start");
    var_bb96f34c = getent("t_b71", "targetname");
    var_bb96f34c triggerenable(0);
    level hms_util::function_53531f27("t_b85");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x119b1c96, Offset: 0x2038
// Size: 0x4c
function function_c3206d47() {
    a_targets = getentarray("video_store_spring_loaded_target", "script_noteworthy");
    array::notify_all(a_targets, "force_down");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0xaeb1a6ee, Offset: 0x2090
// Size: 0x310
function function_58d0b9b2() {
    level flag::wait_till("flg_amk_player_spawned");
    level.player endon(#"death");
    level flag::wait_till("flg_video_store_start");
    var_2ec7538d = spawner::simple_spawn("sp_enemy_video_store_wave1_upper", &function_8669752c);
    level.var_d6840b = spawner::simple_spawn("sp_enemy_video_store_wave1", &function_1feb729d);
    level thread namespace_fc3e8cb::function_85939627(level.var_d6840b, "flg_main_street_start", 2);
    level function_dd54be7d();
    level thread function_55b55bb4("sm_video_store_smoke_1");
    level battlechatter::function_2ab9360b(0, #"axis");
    level thread function_6add98b3();
    level thread function_25f2d4c0();
    level thread function_5d7508c1();
    level flag::wait_till("flg_video_store_alert");
    level thread namespace_4bd68414::function_59872c12();
    level battlechatter::function_2ab9360b(1, #"axis");
    level flag::wait_till("flg_video_store_start_2");
    var_eec4445f = spawner::simple_spawn("sp_enemy_video_store_wave2");
    level flag::wait_till("flg_main_street_start");
    vol_amerika_outside_video_store = getent("vol_amerika_outside_video_store", "targetname");
    foreach (ai in level.var_d6840b) {
        if (isalive(ai)) {
            ai setgoal(vol_amerika_outside_video_store);
        }
    }
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0xd3885c4e, Offset: 0x23a8
// Size: 0x304
function function_1feb729d() {
    level flag::wait_till("flg_amk_player_spawned");
    level.player endon(#"death");
    self endon(#"death");
    self val::set(#"video_store", "ignoreall", 1);
    self val::set(#"video_store", "ignoreme", 1);
    self ai::set_pacifist(1);
    self battlechatter::function_2ab9360b(0);
    self ai::set_behavior_attribute("disablepeek", 1);
    self ai::set_behavior_attribute("disablelean", 1);
    if (self.script_noteworthy === "video_store_tactical_path_1") {
        self thread function_34781cde();
    }
    if (self.script_noteworthy === "video_store_tactical_path_2") {
        self thread function_62bdf969();
    }
    if (self.script_noteworthy === "video_store_tactical_path_3") {
        self thread function_e2c27980();
    }
    level flag::wait_till("flg_video_store_alert");
    wait randomfloatrange(0.5, 1.5);
    self notify(#"stop_going_to_node");
    self ai::set_behavior_attribute("disablepeek", 0);
    self ai::set_behavior_attribute("disablelean", 0);
    self ai::stop_shoot_at_target();
    self ai::function_3a5e9945(0);
    self ai::set_pacifist(0);
    self ai::set_behavior_attribute("demeanor", "combat");
    self ai::set_goal("vol_amerika_video_store", "targetname");
    self val::reset_all(#"video_store");
    self.favoriteenemy = level.player;
    self battlechatter::function_2ab9360b(1);
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x54752726, Offset: 0x26b8
// Size: 0x31c
function function_34781cde() {
    self endon(#"death");
    level endon(#"flg_video_store_alert");
    level flag::wait_till("flg_video_store_player_los");
    level flag::set("flg_video_store_path_1_1_exit");
    self thread namespace_4bd68414::function_849737a4();
    self ai::set_behavior_attribute("disablepeek", 0);
    self ai::set_behavior_attribute("disablelean", 0);
    level flag::wait_till("flg_video_store_path_2_2_arrive");
    level flag::set("flg_video_store_path_1_2_exit");
    self thread namespace_4bd68414::function_ffebd43c();
    self ai::set_behavior_attribute("demeanor", "cqb");
    self thread function_83f318f4("e_video_target_1_1", undefined, randomfloatrange(0.5, 0.75));
    level flag::wait_till("flg_video_store_path_1_3_arrive");
    level flag::wait_till("flg_video_store_path_2_3_arrive");
    level flag::set("flg_video_store_path_1_3_exit");
    self thread namespace_4bd68414::function_ffebd43c();
    self thread function_83f318f4("e_video_target_1_2", undefined, randomfloatrange(0.25, 0.5));
    level flag::wait_till("flg_video_store_path_1_3_arrive");
    wait randomfloatrange(2, 3);
    level flag::set("flg_video_store_path_1_4_exit");
    self thread namespace_4bd68414::function_437af554();
    self ai::function_3a5e9945(1);
    level flag::wait_till_all(["flg_video_store_path_1_5_arrive", "flg_video_store_path_2_4_arrive", "flg_video_store_path_3_3_arrive"]);
    level flag::set("flg_video_store_alert");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x84a00e60, Offset: 0x29e0
// Size: 0x24c
function function_62bdf969() {
    self endon(#"death");
    level endon(#"flg_video_store_alert");
    level flag::wait_till("flg_video_store_path_1_2_arrive");
    level flag::set("flg_video_store_path_2_1_exit");
    self ai::set_behavior_attribute("disablepeek", 0);
    self ai::set_behavior_attribute("disablelean", 0);
    self ai::set_behavior_attribute("demeanor", "cqb");
    self thread function_83f318f4("e_video_target_2_1", undefined, randomfloatrange(0.5, 0.75));
    level flag::wait_till("flg_video_store_path_2_2_arrive");
    level flag::wait_till("flg_video_store_path_3_2_arrive");
    level flag::set("flg_video_store_path_2_2_exit");
    self thread namespace_4bd68414::function_ffebd43c();
    self thread function_83f318f4("e_video_target_2_2", undefined, randomfloatrange(0.25, 0.5));
    level flag::wait_till("flg_video_store_path_2_3_arrive");
    level flag::wait_till("flg_video_store_path_1_4_exit");
    wait randomfloatrange(0.5, 1.5);
    level flag::set("flg_video_store_path_2_3_exit");
    self ai::function_3a5e9945(1);
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x95587540, Offset: 0x2c38
// Size: 0x1b4
function function_e2c27980() {
    self endon(#"death");
    level endon(#"flg_video_store_alert");
    level flag::wait_till("flg_video_store_path_1_3_arrive");
    level flag::set("flg_video_store_path_3_1_exit");
    self ai::set_behavior_attribute("disablepeek", 0);
    self ai::set_behavior_attribute("disablelean", 0);
    self thread namespace_4bd68414::function_ffebd43c();
    self ai::set_behavior_attribute("demeanor", "cqb");
    self thread function_83f318f4("e_video_target_3_1", undefined, randomfloatrange(0.5, 0.75));
    level flag::wait_till("flg_video_store_path_3_2_arrive");
    level flag::wait_till("flg_video_store_path_1_4_exit");
    wait randomfloatrange(2, 3);
    level flag::set("flg_video_store_path_3_2_exit");
    self ai::function_3a5e9945(1);
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 3, eflags: 0x0
// Checksum 0x303427ce, Offset: 0x2df8
// Size: 0x168
function function_83f318f4(var_e7369c35, var_7928fb3d, n_delay) {
    self endon(#"death");
    level endon(#"flg_video_store_alert");
    level endon(var_7928fb3d);
    if (isdefined(n_delay)) {
        wait n_delay;
    }
    var_9848256 = getentarray(var_e7369c35, "targetname");
    var_9848256 = arraysortclosest(var_9848256, self.origin);
    foreach (var_342ae5a4 in var_9848256) {
        self ai::shoot_at_target("normal", var_342ae5a4, "tag_origin", randomfloatrange(1.25, 1.75), 100, 1);
    }
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x8f3971fb, Offset: 0x2f68
// Size: 0x186
function function_8669752c() {
    self endon(#"death");
    level flag::wait_till("flg_amk_player_spawned");
    level.player endon(#"death");
    self endon(#"death");
    self thread function_cc1f8e0c();
    self namespace_979752dc::function_2324f175(0);
    self.stealth.funcs[#"hash_623a36156c703e70"] = &function_2113900e;
    self val::set(#"video_store", "ignoreall", 1);
    level flag::wait_till("flg_video_store_alert");
    self val::reset(#"video_store", "ignoreall");
    self namespace_979752dc::enable_stealth_for_ai(0);
    self ai::set_goal("vol_amerika_video_store_upper", "targetname");
    self.favoriteenemy = level.player;
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 1, eflags: 0x0
// Checksum 0x182df16f, Offset: 0x30f8
// Size: 0x4e
function function_2113900e(*event) {
    level flag::set("flg_video_store_alert");
    self.stealth.funcs[#"hash_623a36156c703e70"] = undefined;
    return false;
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x558fd333, Offset: 0x3150
// Size: 0x4c
function function_cc1f8e0c() {
    self endon(#"death");
    level flag::wait_till("flg_main_street_start");
    self namespace_979752dc::enable_stealth_for_ai(0);
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x862c7085, Offset: 0x31a8
// Size: 0x194
function function_dd54be7d() {
    level flag::wait_till("flg_amk_player_spawned");
    level.player endon(#"death");
    level endon(#"flg_video_store_alert");
    s_video_store_entrance = struct::get("s_video_store_entrance", "targetname");
    while (level flag::get("flg_video_store_player_los") == 0) {
        var_e88b5bd1 = util::within_fov(level.player getplayercamerapos(), level.player getplayerangles(), s_video_store_entrance.origin, 0.5);
        var_d94cabb4 = sighttracepassed(level.player getplayercamerapos(), s_video_store_entrance.origin, 1, level.woods);
        if (var_e88b5bd1 === 1 && var_d94cabb4 === 1) {
            break;
        }
        waitframe(1);
    }
    level flag::set("flg_video_store_player_los");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x7d64bbbc, Offset: 0x3348
// Size: 0x5c
function function_6add98b3() {
    level endon(#"flg_video_store_alert");
    ai::waittill_dead_or_dying(level.var_d6840b, 1);
    level flag::set("flg_video_store_alert");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x7ecd36d9, Offset: 0x33b0
// Size: 0xac
function function_25f2d4c0() {
    level flag::wait_till("flg_amk_player_spawned");
    level.player endon(#"death");
    level endon(#"flg_video_store_alert");
    level.player waittill(#"weapon_fired", #"grenade_fire", #"offhand_fire");
    level flag::set("flg_video_store_alert");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x39757f73, Offset: 0x3468
// Size: 0xac
function function_5d7508c1() {
    level endon(#"flg_video_store_alert");
    var_429925fd = getentarray("t_video_store_exposed_alert", "targetname");
    array::thread_all(var_429925fd, &function_25d833bf);
    var_192939d9 = getentarray("t_video_store_no_stand_alert", "targetname");
    array::thread_all(var_192939d9, &function_791d098d);
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x11f2ddeb, Offset: 0x3520
// Size: 0xcc
function function_25d833bf() {
    level flag::wait_till("flg_amk_player_spawned");
    level.player endon(#"death");
    level endon(#"flg_video_store_alert");
    level flag::wait_till("flg_video_store_enemies_aware1");
    while (true) {
        if (istouching(level.player.origin, self)) {
            break;
        }
        waitframe(1);
    }
    level flag::set("flg_video_store_alert");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x112e7f41, Offset: 0x35f8
// Size: 0x144
function function_791d098d() {
    level flag::wait_till("flg_amk_player_spawned");
    level.player endon(#"death");
    level endon(#"flg_video_store_alert");
    level flag::wait_till("flg_video_store_enemies_aware1");
    while (true) {
        if (istouching(level.player.origin, self)) {
            if (level flag::get("flg_video_store_enemies_aware2") == 1 || level flag::get("flg_video_store_drills_done") == 1 || level.player getstance() == "stand") {
                break;
            }
        }
        waitframe(1);
    }
    level flag::set("flg_video_store_alert");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 1, eflags: 0x0
// Checksum 0x39fb43f8, Offset: 0x3748
// Size: 0x9c
function function_bc754782(*str_objective) {
    level thread function_a76c968c();
    level thread function_c6c88d08();
    level thread namespace_fc3e8cb::function_869f213d();
    level thread namespace_fc3e8cb::function_6fe40e14("video_store_gun_rack1", "video_store_gun_rack2", "video_store_gun_rack3");
    level thread function_eea61ebe();
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x28e8bdf, Offset: 0x37f0
// Size: 0x104
function function_c6c88d08() {
    namespace_fc3e8cb::function_2987fd4c("s_teleport_woods_main_street", 0, 0);
    var_bb96f34c = getent("t_b72", "targetname");
    var_bb96f34c triggerenable(0);
    var_f2e43740 = getent("t_b85", "targetname");
    var_f2e43740 triggerenable(0);
    var_196f0459 = getent("t_b71", "targetname");
    var_196f0459 triggerenable(0);
    level hms_util::function_53531f27("t_b86");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x1d2fb5f9, Offset: 0x3900
// Size: 0x26
function function_a76c968c() {
    var_eec4445f = spawner::simple_spawn("sp_enemy_video_store_wave2");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0xed7f74ce, Offset: 0x3930
// Size: 0xc4
function function_eea61ebe() {
    level flag::set("flg_video_store_at_catwalk");
    level flag::set("flg_video_store_path_1_2_exit");
    level flag::set("flg_video_store_path_1_3_exit");
    level flag::set("flg_video_store_path_2_1_exit");
    level flag::set("flg_video_store_path_2_2_exit");
    level flag::set("flg_video_store_path_3_1_exit");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 2, eflags: 0x0
// Checksum 0x9011df78, Offset: 0x3a00
// Size: 0x1c4
function function_c5b43ce(str_objective, var_50cc0d4f) {
    /#
        namespace_fc3e8cb::function_44a6fc04(str_objective);
    #/
    level thread cp_rus_amerika::function_f6b6f426("terminal");
    if (!var_50cc0d4f) {
        savegame::checkpoint_save(1);
    }
    level thread function_a6a02518();
    level thread namespace_4bd68414::function_92d726be();
    level thread namespace_4bd68414::function_88753bbe();
    level thread namespace_4bd68414::function_cb23defe();
    level thread namespace_4bd68414::function_68bed476();
    level thread namespace_4bd68414::main_street_bubby_optional_dialogue();
    level thread function_65e83155();
    level thread function_fd24a190();
    level thread function_11a7fafb();
    level thread function_8a32e8b0();
    level thread function_3261875f();
    level namespace_979752dc::disable_stealth_system();
    level flag::wait_till("flg_main_street_end");
    skipto::function_4e3ab877(str_objective);
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 4, eflags: 0x0
// Checksum 0x5184b04b, Offset: 0x3bd0
// Size: 0x6c
function function_c76d36b0(*str_objective, var_50cc0d4f, *var_aa1a6455, *player) {
    if (player) {
        level flag::set("flg_stop_corner_area_main_street_optional_spawns");
        level thread namespace_f6d09d1a::function_7b9feaa3("lgtexp_perf_mainstreet_keys_a", 1);
    }
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x4f2aecb4, Offset: 0x3c48
// Size: 0xfc
function function_a6a02518() {
    level flag::wait_till("flg_amk_player_spawned");
    level.player endon(#"death");
    self notify("5cba3124ee1ed7bc");
    self endon("5cba3124ee1ed7bc");
    if (!isdefined(objectives::function_285e460("obj_main_street_advance"))) {
        objectives::scripted("obj_main_street_advance", undefined, #"hash_1ce39c29b923f2b9", 0);
    }
    level breadcrumb::function_61037c6c("s_obj_main_street_breadcrumb");
    level flag::wait_till("flg_main_street_end");
    objectives::complete("obj_main_street_advance");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x8ac74b9f, Offset: 0x3d50
// Size: 0x112
function function_65e83155() {
    level flag::wait_till("flg_amk_player_spawned");
    level.player endon(#"death");
    level thread function_ce8bced();
    level thread namespace_4bd68414::function_6aa4492a();
    level.woods colors::set_force_color("blue");
    var_1dcd05ba = level.woods.script_accuracy;
    level.woods battlechatter::function_2ab9360b(1);
    level.woods.script_accuracy = 0.8;
    level flag::wait_till("flg_main_street_end");
    level.woods.script_accuracy = var_1dcd05ba;
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x89ccda2c, Offset: 0x3e70
// Size: 0xe8
function function_ce8bced() {
    level flag::wait_till_any(["flg_stop_first_area_woods_color_triggers", "flg_burger_town_resistance"]);
    trigs = getentarray("t_main_street_woods_colors_preburgertown", "script_noteworthy");
    foreach (trig in trigs) {
        trig delete();
    }
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0xd8139481, Offset: 0x3f60
// Size: 0xec
function function_fd24a190() {
    level flag::wait_till("flg_main_street_parking_lot_clear");
    level.woods ai::set_behavior_attribute("disablepeek", 1);
    level.woods ai::set_behavior_attribute("disablelean", 1);
    level flag::wait_till_any(["flg_burger_town_resistance", "flg_burger_town_resistance_pizza_store"]);
    level.woods ai::set_behavior_attribute("disablepeek", 0);
    level.woods ai::set_behavior_attribute("disablelean", 0);
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x6e8f414a, Offset: 0x4058
// Size: 0x61c
function function_11a7fafb() {
    level flag::wait_till("flg_amk_player_spawned");
    level.player endon(#"death");
    level flag::wait_till("flg_main_street_start");
    level thread function_f7306dbb("flg_main_street_parking_lot_clear");
    level thread function_f7306dbb("flg_main_street_autosave_1");
    level thread function_f7306dbb("flg_video_store_upper_catwalk_autosave");
    var_7ad3e751 = spawner::simple_spawn("sp_enemy_street_wave1");
    level thread function_2f0a158();
    level thread function_7972340e();
    level thread function_e65284ff();
    level thread function_1ce0335a();
    level thread function_99afde3b("flg_tv_store_sniper", "flg_player_down_from_perch", "s_player_perch");
    level thread function_99afde3b("flg_upper_route_enemy_grenades", "flg_stop_corner_area_main_street_optional_spawns", "s_player_perch_tv_store");
    var_a8c5f13d = getaiarray("sp_enemy_video_store_wave1_upper", "targetname");
    var_b05b51c6 = getaiarray("sp_enemy_video_store_wave1", "targetname");
    var_48ac31fb = getaiarray("sp_enemy_video_store_wave2", "targetname");
    var_b05b51c6 = arraycombine(var_b05b51c6, var_48ac31fb);
    var_b05b51c6 = arraycombine(var_b05b51c6, var_a8c5f13d);
    level.var_bcd79d81 = arraycombine(var_b05b51c6, var_7ad3e751);
    function_1eaaceab(level.var_bcd79d81);
    level thread namespace_fc3e8cb::function_85939627(level.var_bcd79d81, "flg_main_street_fallback_2", level.var_bcd79d81.size - 4);
    level thread function_b211098e();
    var_63d2d7ec = level flag::wait_till_any(["flg_main_street_parking_lot_truck_unloaded", "flg_main_street_parking_lot_truck_dead", "flg_main_street_2_start", "flg_main_street_pizza_store"]);
    if (var_63d2d7ec._notify === #"flg_main_street_parking_lot_truck_unloaded") {
        wait 1;
    }
    function_1eaaceab(level.var_bcd79d81);
    level thread namespace_fc3e8cb::function_85939627(level.var_bcd79d81, "flg_main_street_rush_player", level.var_bcd79d81.size - 3);
    level thread function_d29ab5a4();
    var_63d2d7ec = level flag::wait_till_any(["flg_main_street_2_start", "flg_main_street_pizza_store"]);
    level thread function_f7306dbb("flg_main_street_autosave_2");
    level thread function_c67de6da();
    level thread function_1adb1a72();
    level thread function_92386a2b();
    level thread function_d81575af();
    level thread function_1061068e();
    level flag::wait_till("flg_main_street_3_start");
    function_1eaaceab(level.var_bcd79d81);
    array::thread_all(level.var_bcd79d81, &function_e5b395e2);
    var_bb9595e = getent("vol_amerika_streets_end", "targetname");
    level.var_b665de74 = spawner::simple_spawn("sp_enemy_street_wave3");
    array::thread_all(level.var_b665de74, &function_7c0c35ef);
    level thread function_19527a34();
    level thread function_8f7156c0();
    level thread function_3589af50();
    level flag::wait_till("flg_main_street_end");
    var_5c5d4c59 = getactorteamarray("axis");
    function_1eaaceab(var_5c5d4c59);
    array::thread_all(var_5c5d4c59, &function_e5b395e2);
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x7076414d, Offset: 0x4680
// Size: 0x54
function function_19527a34() {
    var_c11a868a = getent("main_street_bridge_animated_shotgunner", "script_noteworthy");
    level scene::play("scene_amk_4090_mst_bridge", "enter", var_c11a868a);
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0xe1542b87, Offset: 0x46e0
// Size: 0x13c
function function_b211098e() {
    level flag::wait_till("flg_main_street_vehicle_complete_1");
    wait 3;
    var_42bbb731 = level.var_bcd79d81;
    var_f5de75be = getaiarray("sp_enemy_street_theater_sniper", "targetname");
    var_42bbb731 = arraycombine(var_42bbb731, var_f5de75be);
    var_375e33bd = getaiarray("sp_enemy_tv_store_roof", "targetname");
    var_42bbb731 = arraycombine(var_42bbb731, var_375e33bd);
    var_65d94d4a = getaiarray("sp_enemy_vehicle_backup", "targetname");
    var_42bbb731 = arraycombine(var_42bbb731, var_65d94d4a);
    function_1eaaceab(var_42bbb731);
    level thread namespace_fc3e8cb::function_85939627(var_42bbb731, "flg_main_street_parking_lot_clear", var_42bbb731.size);
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x823bfc0c, Offset: 0x4828
// Size: 0x19c
function function_2f0a158() {
    level flag::wait_till("flg_spawn_theater_sniper");
    var_44589d99 = spawner::simple_spawn("sp_enemy_street_theater_sniper");
    level flag::wait_till_any(["flg_main_street_theater_move_sniper_inside", "flg_main_street_side_spawns_disable"]);
    function_1eaaceab(var_44589d99);
    vol_amerika_streets_theater_catwalks = getent("vol_amerika_streets_theater_catwalks", "targetname");
    foreach (ai in var_44589d99) {
        ai thread ai::force_goal(vol_amerika_streets_theater_catwalks);
    }
    level flag::wait_till("flg_main_street_sniper_despawn");
    function_1eaaceab(var_44589d99);
    array::thread_all(var_44589d99, &function_e5b395e2);
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x93c9cd3a, Offset: 0x49d0
// Size: 0x84
function function_7c0c35ef() {
    level.player endon(#"death");
    self endon(#"death");
    level endon(#"flg_main_street_end_rush_player");
    level flag::wait_till("flg_wave_3_bridge_alternate_positions");
    self ai::set_goal("vol_amerika_streets_wave_3_bridge_stairs", "targetname");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x8f008f56, Offset: 0x4a60
// Size: 0x2f4
function function_8f7156c0() {
    level.player endon(#"death");
    foreach (ai in level.var_6969aed2) {
        if (!isdefined(level.var_b665de74)) {
            level.var_b665de74 = [];
        } else if (!isarray(level.var_b665de74)) {
            level.var_b665de74 = array(level.var_b665de74);
        }
        level.var_b665de74[level.var_b665de74.size] = ai;
    }
    function_1eaaceab(level.var_b665de74);
    level thread namespace_fc3e8cb::function_85939627(level.var_b665de74, "flg_main_street_all_dead", level.var_b665de74.size);
    level flag::wait_till_any(["flg_main_street_all_dead", "flg_main_street_play_woods_animated_stairs"]);
    level hms_util::function_53531f27("t_b78");
    level hms_util::function_53531f27("t_b87");
    level hms_util::function_53531f27("t_b370");
    level hms_util::function_53531f27("t_b372");
    level scene::play("scene_amk_4040_mst_stairs", "stairs_start", level.woods);
    level flag::set("flg_main_street_woods_bridge_stairs_animation_finished");
    level hms_util::function_53531f27("t_b90");
    level.woods colors::disable();
    level thread namespace_fc3e8cb::function_5c5b6ea7("nd_elevator_fight_woods_start");
    level flag::wait_till("flg_main_street_play_woods_animated_stairs");
    level hms_util::function_53531f27("t_main_street_end");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x2534b225, Offset: 0x4d60
// Size: 0x118
function function_d29ab5a4() {
    level.player endon(#"death");
    self endon(#"death");
    level endon(#"flg_main_street_all_dead");
    level flag::wait_till("flg_main_street_rush_player");
    function_1eaaceab(level.var_bcd79d81);
    foreach (ai in level.var_bcd79d81) {
        if (ai.script_noteworthy !== "main_street_parking_lot_sniper") {
            ai setgoal(level.player);
        }
    }
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0xa0f58d42, Offset: 0x4e80
// Size: 0x198
function function_3589af50() {
    level.player endon(#"death");
    self endon(#"death");
    level endon(#"flg_main_street_all_dead");
    level.var_b665de74 = arraycombine(level.var_bcd79d81, level.var_b665de74);
    function_1eaaceab(level.var_b665de74);
    level thread namespace_fc3e8cb::function_85939627(level.var_b665de74, "flg_main_street_end_rush_player", level.var_b665de74.size - 3);
    level flag::wait_till("flg_main_street_end_rush_player");
    function_1eaaceab(level.var_b665de74);
    foreach (ai in level.var_b665de74) {
        if (ai.script_noteworthy !== "main_street_bridge_sniper") {
            ai setgoal(level.player);
        }
    }
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0xd9444f58, Offset: 0x5020
// Size: 0x2e4
function function_7972340e() {
    level.player endon(#"death");
    level endon(#"flg_main_street_3_start");
    self endon(#"death");
    level flag::wait_till_any(["flg_main_street_vehicle_1", "flg_main_street_fallback_2"]);
    level flag::wait_till("flg_main_street_vehicle_can_go");
    var_65d94d4a = spawner::simple_spawn("sp_enemy_vehicle_backup");
    var_4e65d853 = undefined;
    while (!isdefined(var_4e65d853)) {
        var_4e65d853 = spawner::simple_spawn_single("sp_enemy_main_street_vehicle");
        waitframe(1);
    }
    var_4e65d853 thread function_635c7674();
    level thread function_19b7c1a4();
    level thread namespace_4bd68414::function_20228cc();
    level thread function_3e2d3b05();
    snd::client_targetname(var_4e65d853, "evt_audio_main_street_truck_drive_up");
    var_4e65d853 thread function_83da82d0();
    level flag::wait_till("flg_main_street_vehicle_complete_1");
    if (isalive(var_4e65d853)) {
        arrayremovevalue(var_4e65d853.var_761c973.riders, undefined, 1);
        array::thread_all(var_4e65d853.var_761c973.riders, &function_58c0a827);
        s_result = var_4e65d853 waittill(#"unloaded", #"death");
        if (s_result._notify === "unloaded") {
            level flag::set("flg_main_street_parking_lot_truck_unloaded");
            var_4e65d853 waittill(#"death");
        }
        level flag::set("flg_main_street_parking_lot_truck_dead");
        snd::client_msg("flg_audio_truck_engine_idle_stop");
    }
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x7a07d05f, Offset: 0x5310
// Size: 0x94
function function_19b7c1a4() {
    level waittill(#"hash_6af63ea12bc00914");
    var_ed84f686 = getent("sm_main_street_mannequin_hit", "targetname");
    physicsexplosionsphere(var_ed84f686.origin, 100, 100, 1);
    radiusdamage(var_ed84f686.origin, 100, 10, 10);
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x3310f2d7, Offset: 0x53b0
// Size: 0x84
function function_635c7674() {
    self endon(#"death");
    level thread scene::play("scene_amk_4030_mst_truck_enter", "enter", self);
    self waittill(#"unload");
    level flag::set("flg_main_street_vehicle_complete_1");
    self vehicle::unload();
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x2d817d75, Offset: 0x5440
// Size: 0x6c
function function_83da82d0() {
    wait 1;
    self playrumblelooponentity(#"hash_7fc39fdf17d37513");
    level flag::wait_till("flg_main_street_vehicle_complete_1");
    self stoprumble(#"hash_7fc39fdf17d37513");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x4
// Checksum 0x38c2f5d4, Offset: 0x54b8
// Size: 0x4c
function private function_dac000c0() {
    self endon(#"death");
    wait 1;
    self.var_e7ea517e = 1;
    self val::reset("guy_truck", "ignoreall");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0xa435441c, Offset: 0x5510
// Size: 0x21c
function function_58c0a827() {
    if (!isdefined(self.target)) {
        return;
    }
    self endon(#"death");
    self waittill(#"exited_vehicle");
    self setgoal(self.origin, 0, 64, 128);
    self.var_e7ea517e = 0;
    self val::set("guy_truck", "ignoreall", 1);
    while (self isplayinganimscripted()) {
        waitframe(1);
    }
    waitframe(2);
    if (!isdefined(level.var_bcd79d81)) {
        level.var_bcd79d81 = [];
    } else if (!isarray(level.var_bcd79d81)) {
        level.var_bcd79d81 = array(level.var_bcd79d81);
    }
    level.var_bcd79d81[level.var_bcd79d81.size] = self;
    to = getnode(self.target, "targetname");
    if (!isdefined(to)) {
        to = getent(self.target, "targetname");
    }
    self thread function_dac000c0();
    if (isdefined(to)) {
        self setgoal(to, 1);
        self waittill(#"goal");
    }
    goalvolume = getent("vol_amerika_main_street_vehicle_drop_off", "targetname");
    self setgoal(goalvolume);
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x6ddfb280, Offset: 0x5738
// Size: 0x54
function function_3261875f() {
    level flag::wait_till("flg_main_street_vehicle_can_go");
    namespace_b61bbd82::music("6.0_main_street");
    snd::client_msg("audio_main_street_music_started");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 1, eflags: 0x0
// Checksum 0x899bb095, Offset: 0x5798
// Size: 0x3c
function function_f7306dbb(flag) {
    level flag::wait_till(flag);
    savegame::checkpoint_save(1);
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 3, eflags: 0x0
// Checksum 0xeaa6d45a, Offset: 0x57e0
// Size: 0x16a
function function_99afde3b(flag1, flag2, struct) {
    level flag::wait_till("flg_amk_player_spawned");
    level.player endon(#"death");
    level flag::wait_till(flag1);
    wait 13;
    s_player_perch = struct::get(struct, "targetname");
    while (!level flag::get(flag2)) {
        while (distance2d(level.player.origin, s_player_perch.origin) < 500) {
            wait 8;
            var_5c5d4c59 = getactorteamarray("axis");
            if (isdefined(var_5c5d4c59) && var_5c5d4c59.size > 0) {
                var_5c5d4c59[0] hms_util::throw_grenade(level.player.origin, 1);
            }
            wait 8;
        }
        waitframe(1);
    }
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 2, eflags: 0x0
// Checksum 0x53e5799d, Offset: 0x5958
// Size: 0x16c
function function_c231897a(var_a7dc1f6a, var_ed4d350b) {
    var_44589d99 = spawner::simple_spawn(var_a7dc1f6a);
    foreach (ai in var_44589d99) {
        if (!isdefined(level.var_bcd79d81)) {
            level.var_bcd79d81 = [];
        } else if (!isarray(level.var_bcd79d81)) {
            level.var_bcd79d81 = array(level.var_bcd79d81);
        }
        level.var_bcd79d81[level.var_bcd79d81.size] = ai;
    }
    level flag::wait_till(var_ed4d350b);
    function_1eaaceab(var_44589d99);
    array::thread_all(var_44589d99, &function_e5b395e2);
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x97accfbb, Offset: 0x5ad0
// Size: 0x194
function function_e5b395e2() {
    level flag::wait_till("flg_amk_player_spawned");
    level.player endon(#"death");
    self endon(#"death");
    if (self == level.woods) {
        return;
    }
    while (level flag::get("flg_elevator_fight_start") == 0) {
        if (self scene::function_c935c42()) {
            wait 1;
            continue;
        }
        n_dist = distance2dsquared(level.player.origin, self.origin);
        var_e88b5bd1 = util::within_fov(level.player getplayercamerapos(), level.player getplayerangles(), self geteye(), 0.707107);
        if (var_e88b5bd1 == 0 && n_dist > sqr(800)) {
            break;
        }
        wait 0.2;
    }
    self delete();
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0xbcd229d6, Offset: 0x5c70
// Size: 0x4c
function function_e65284ff() {
    level flag::wait_till("flg_spawn_theater_sniper");
    level thread function_c231897a("sp_enemy_tv_store_roof", "flg_stop_first_area_main_street_optional_spawns");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x880a564, Offset: 0x5cc8
// Size: 0x76
function function_1ce0335a() {
    level endon(#"flg_stop_first_area_main_street_optional_spawns");
    level flag::wait_till("flg_theater_second_floor_start");
    level flag::set("flg_tv_store_sniper");
    var_92f176a4 = spawner::simple_spawn("sp_enemy_theater_second_floor");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0xf46433e5, Offset: 0x5d48
// Size: 0x66
function function_15a4d1ad() {
    level endon(#"flg_stop_first_area_main_street_optional_spawns", #"flg_main_street_2_start");
    level flag::wait_till("flg_main_street_pizza_store");
    var_d4e072a8 = spawner::simple_spawn("sp_enemy_pizza_store");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x2700c50b, Offset: 0x5db8
// Size: 0x4e
function function_168221f7() {
    level endon(#"flg_main_street_end");
    var_9ae64bc5 = spawner::simple_spawn_single("sp_enemy_street_burger_town_anim", &function_96f5e83c);
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0xce4cb61d, Offset: 0x5e10
// Size: 0x21c
function function_96f5e83c() {
    self endon(#"death");
    level endon(#"hash_446c3e9ed3b224a5", #"flg_main_street_3_start");
    var_ca5a68ed = getent("t_b310", "targetname");
    var_bd50edd6 = getent("t_b331", "targetname");
    s_scene = struct::get("scene_ai_sdr_com_intro_run_slide01_to_exposed_crouch_long_6 ", "targetname");
    while (isalive(self)) {
        if (level.player istouching(var_ca5a68ed)) {
            level scene::init(#"scene_ai_sdr_com_intro_run_slide01_to_exposed_crouch_long_6 ", self);
            level thread scene::play(#"scene_ai_sdr_com_intro_run_slide01_to_exposed_crouch_long_6 ", self);
            break;
        } else if (level.player istouching(var_bd50edd6)) {
            wait 0.2;
            level scene::init(#"hash_7a98107e637a8e92", self);
            level thread scene::play(#"hash_7a98107e637a8e92", self);
            break;
        }
        waitframe(1);
    }
    e_goal = getnode("slide_guy_node", "targetname");
    self setgoal(e_goal);
    level thread namespace_fc3e8cb::function_18e5080e("flg_main_street_end", self);
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x9c0c07b, Offset: 0x6038
// Size: 0x140
function function_c67de6da() {
    level flag::wait_till("flg_burger_town_floor_enemies");
    level thread function_168221f7();
    var_16cec532 = spawner::simple_spawn("sp_enemy_street_burger_town");
    level flag::wait_till("flg_burgertown_enemies_fallback_to_final_fight");
    var_bb9595e = getent("vol_amerika_streets_wave_3_left", "targetname");
    function_1eaaceab(var_16cec532);
    foreach (ai in var_16cec532) {
        ai thread ai::force_goal(var_bb9595e);
    }
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x3a2917fc, Offset: 0x6180
// Size: 0x74
function function_1adb1a72() {
    level flag::wait_till_any(["flg_upper_route_snipers", "flg_burger_town_resistance"]);
    level thread namespace_4bd68414::function_aaa79e50();
    function_c231897a("sp_enemy_street_wave2_alt", "flg_main_street_3_start");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x72337b7f, Offset: 0x6200
// Size: 0x12e
function function_92386a2b() {
    var_63d2d7ec = level flag::wait_till_any(["flg_burger_town_resistance", "flg_burger_town_resistance_pizza_store"]);
    var_9eac748 = spawner::simple_spawn("sp_enemy_burger_town_resistance");
    level thread namespace_fc3e8cb::function_85939627(var_9eac748, "flg_main_street_resistance_wave_2_spawn", 2);
    if (var_63d2d7ec._notify === #"flg_burger_town_resistance_pizza_store") {
        level thread function_55b55bb4("sm_main_street_smoke_2");
    } else {
        level thread function_55b55bb4("sm_main_street_smoke_1");
    }
    level flag::wait_till("flg_main_street_resistance_wave_2_spawn");
    wait 1.5;
    var_2426c268 = spawner::simple_spawn("sp_enemy_burger_town_resistance_2");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0xd0e24bcb, Offset: 0x6338
// Size: 0x44
function function_d81575af() {
    level flag::wait_till("flg_main_street_behind_burger_town_encounter");
    level.var_6969aed2 = spawner::simple_spawn("sp_main_street_behind_burger_town_encounter");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 1, eflags: 0x0
// Checksum 0x56d3f67e, Offset: 0x6388
// Size: 0x92
function function_55b55bb4(var_f41f62c0) {
    var_c9ec79c6 = getent(var_f41f62c0, "targetname");
    e_grenade = level.player magicgrenadeplayer(getweapon(#"willy_pete"), var_c9ec79c6.origin, (0, 0, 0));
    e_grenade.var_3791d005 = 0;
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0xab4166c3, Offset: 0x6428
// Size: 0x56
function function_1061068e() {
    level endon(#"flg_stop_corner_area_main_street_optional_spawns");
    level flag::wait_till("flg_bar_stairs_start");
    var_eb831daf = spawner::simple_spawn("sp_enemy_bar");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0xf536511d, Offset: 0x6488
// Size: 0x54
function function_eac97f7a() {
    self endon(#"death");
    self waittill(#"damage", #"bulletwhizby");
    self function_f46ca8fb(150);
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 1, eflags: 0x0
// Checksum 0xd9fce9ab, Offset: 0x64e8
// Size: 0xb4
function function_f46ca8fb(goal_radius = 350) {
    level flag::wait_till("flg_amk_player_spawned");
    level.player endon(#"death");
    self endon(#"death");
    wait randomfloatrange(0.5, 2.5);
    self setgoal(level.player, 1, goal_radius);
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 1, eflags: 0x0
// Checksum 0xd514fe1e, Offset: 0x65a8
// Size: 0xe4
function function_e169c9d8(*str_objective) {
    level thread namespace_fc3e8cb::function_2e7c81f6(0);
    namespace_fc3e8cb::function_2987fd4c("s_teleport_woods_elevator_fight", 0, 0);
    level thread namespace_fc3e8cb::function_6fe40e14("video_store_gun_rack1", "video_store_gun_rack2", "video_store_gun_rack3");
    level flag::set("flg_main_street_woods_bridge_stairs_animation_finished");
    level flag::set("flg_stop_corner_area_main_street_optional_spawns");
    level thread namespace_fc3e8cb::function_869f213d();
    level thread function_8a32e8b0();
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 2, eflags: 0x0
// Checksum 0xf6f95ac0, Offset: 0x6698
// Size: 0x134
function function_f7a489fd(str_objective, var_50cc0d4f) {
    /#
        namespace_fc3e8cb::function_44a6fc04(str_objective);
    #/
    if (var_50cc0d4f) {
        level thread cp_rus_amerika::function_f6b6f426("terminal");
    }
    level thread function_d6440d09();
    level thread function_a15139a6();
    level thread function_c5a2a18f();
    level thread function_97fe34c();
    level thread function_1dba4c53();
    level util::delay("flg_elevator_all_enemies_dead", undefined, &namespace_b61bbd82::music, "deactivate_7.0_juggernaut");
    level flag::wait_till("flg_elevator_ready");
    skipto::function_4e3ab877(str_objective);
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 4, eflags: 0x0
// Checksum 0x4b25fd6c, Offset: 0x67d8
// Size: 0x24
function function_5ce25b5(*str_objective, *var_50cc0d4f, *var_aa1a6455, *player) {
    
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0xb0cf6ea2, Offset: 0x6808
// Size: 0x154
function function_1dba4c53() {
    level.player endon(#"death");
    if (!isdefined(objectives::function_285e460("obj_elevator_goto"))) {
        objectives::scripted("obj_elevator_goto", undefined, #"hash_233d6343fbeb9550", 0);
    }
    level breadcrumb::function_61037c6c("s_obj_elevator_fight_breadcrumb");
    level flag::wait_till("flg_elevator_fight_start");
    level flag::wait_till("flg_elevator_fight_jugg_intro_complete");
    objectives::kill("obj_elevator_kill_juggernaut", level.var_74fa4108, #"hash_2037cc845e66293b", 0, 0);
    level flag::wait_till("flg_elevator_juggernauts_dead");
    objectives::complete("obj_elevator_kill_juggernaut");
    wait 1;
    savegame::checkpoint_save(1);
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x9b0101da, Offset: 0x6968
// Size: 0x13c
function function_a15139a6() {
    level.player endon(#"death");
    level flag::wait_till("flg_elevator_fight_start");
    level.var_74fa4108 = spawner::simple_spawn("sp_enemy_main_street_elevator_jugg", &function_3c0bc573);
    level thread namespace_fc3e8cb::function_85939627(level.var_74fa4108, "flg_elevator_juggernauts_dead", level.var_74fa4108.size);
    level thread namespace_fc3e8cb::function_18e5080e("flg_terminal_player_interact", level.var_74fa4108);
    level flag::wait_till("flg_elevator_juggernauts_dead");
    level thread namespace_4bd68414::function_951c664b();
    level flag::wait_till("flg_elevator_regular_enemies_dead");
    level flag::set("flg_elevator_all_enemies_dead");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x49c734e1, Offset: 0x6ab0
// Size: 0x3a8
function function_c5a2a18f() {
    level.player endon(#"death");
    level flag::wait_till_any(["flg_elevator_fight_advance", "flg_elevator_juggernauts_dead"]);
    var_d1700a09 = spawner::simple_spawn("sp_enemy_elevator_smg", &function_4b1daaaa);
    level thread scene::play("scene_amk_5020_elv_enemy_loop", var_d1700a09);
    var_d5535d9a = getvehiclearray("control_tower_elevator", "targetname")[0];
    foreach (ai in var_d1700a09) {
        ai linkto(var_d5535d9a);
    }
    level thread namespace_fc3e8cb::function_18e5080e("flg_terminal_player_interact", var_d1700a09);
    level thread namespace_fc3e8cb::function_85939627(var_d1700a09, "flg_elevator_most_enemies_dead", var_d1700a09.size - 1);
    level thread namespace_fc3e8cb::function_85939627(var_d1700a09, "flg_elevator_regular_enemies_dead", var_d1700a09.size);
    wait 1;
    level thread namespace_f6d09d1a::function_a677563d();
    level thread namespace_4bd68414::function_41f45773();
    level thread namespace_fc3e8cb::function_1bf51572();
    level flag::wait_till("flg_main_street_elevator_reached_ground");
    vol_elevator_bottom = getent("vol_elevator_bottom", "targetname");
    foreach (ai in var_d1700a09) {
        ai unlink();
    }
    level flag::wait_till("flg_amk_player_spawned");
    level thread function_575c124a(var_d1700a09);
    level thread namespace_fc3e8cb::function_bd7f6a68();
    foreach (ai in var_d1700a09) {
        ai unlink();
    }
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 1, eflags: 0x0
// Checksum 0x22dc7f1d, Offset: 0x6e60
// Size: 0x4c
function function_575c124a(ai_array) {
    level scene::play("scene_amk_5020_elv_enemy_exit", ai_array);
    level flag::set("flg_elevator_unload_animation_complete");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0xb7b7d8e6, Offset: 0x6eb8
// Size: 0x55c
function function_3c0bc573() {
    level flag::wait_till("flg_amk_player_spawned");
    level.player endon(#"death");
    self endon(#"death");
    s_mainst_elevator_jugpos_start = struct::get("s_mainst_elevator_jugpos_start");
    s_mainst_elevator_jugpos_center = struct::get("s_mainst_elevator_jugpos_center");
    s_mainst_elevator_jugpos_back = struct::get("s_mainst_elevator_jugpos_back");
    n_health_threshold = int(self.health * 0.4);
    self.favoriteenemy = level.woods;
    self.holdfire = 1;
    self namespace_631d466b::function_57a875b1(0);
    self val::set(#"hash_53057a865bc8cde7", "magic_bullet_shield", 1);
    level.player val::set(#"hash_9ca6389832f4abf", "ignoreme", 1);
    self thread function_d30dfbf8();
    level thread namespace_4bd68414::function_163c82e7();
    self thread function_538bceed();
    self thread function_b1c9c908();
    self.juggernautdisablemovebehavior = 1;
    self.var_419d64f3 = 1;
    waitframe(2);
    self ai::set_behavior_attribute("demeanor", "cqb");
    self setdesiredspeed(120);
    self.ignorepathenemyfightdist = 1;
    self setgoal(s_mainst_elevator_jugpos_start.origin, 1, s_mainst_elevator_jugpos_start.radius, 32);
    self thread function_e0c8603d(2);
    waitresult = self waittill(#"goal", #"damage", #"player_close");
    self.ignorepathenemyfightdist = 0;
    self.juggernautdisablemovebehavior = 0;
    self.var_419d64f3 = undefined;
    level flag::set("flg_elevator_fight_jugg_intro_at_goal");
    str_notify = waitresult._notify;
    if (str_notify === "goal") {
        self namespace_631d466b::function_cd09bfcf();
        self waittilltimeout(2, #"damage", #"player_close");
    }
    self thread namespace_4bd68414::function_9ab4952e();
    self function_9ae1c50();
    level.player val::set(#"hash_9ca6389832f4abf", "ignoreme", 0);
    self.favoriteenemy = level.player;
    level flag::wait_till("flg_elevator_fight_jugg_intro_complete");
    self val::reset_all(#"hash_53057a865bc8cde7");
    self namespace_631d466b::function_6aedb63(s_mainst_elevator_jugpos_center.origin, s_mainst_elevator_jugpos_center.radius);
    while (level flag::get("flg_elevator_fight_advance") == 0) {
        if (self.health < n_health_threshold) {
            self thread namespace_4bd68414::function_aa33d336();
            break;
        }
        if (level flag::get("flg_elevator_fight_jugg_helmet_off") == 1) {
            self thread namespace_4bd68414::function_31c14ca2(n_health_threshold);
            break;
        }
        waitframe(1);
    }
    self namespace_631d466b::function_6aedb63(s_mainst_elevator_jugpos_back.origin, s_mainst_elevator_jugpos_back.radius);
    level flag::set("flg_elevator_fight_advance");
    self thread function_a7ba2bbe();
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 1, eflags: 0x0
// Checksum 0x1a3e3042, Offset: 0x7420
// Size: 0x72
function function_e0c8603d(n_delay = 1) {
    self endon(#"death");
    self waittilltimeout(n_delay, #"goal", #"damage", #"player_close");
    self.holdfire = 0;
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x4ace1707, Offset: 0x74a0
// Size: 0x82
function function_d30dfbf8() {
    self endon(#"death");
    while (true) {
        if (self.var_afc00716 === 1) {
            level flag::set("flg_elevator_fight_jugg_helmet_off");
            self ai::set_behavior_attribute("demeanor", "combat");
            break;
        }
        waitframe(1);
    }
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x9a5ecbb3, Offset: 0x7530
// Size: 0x2ec
function function_538bceed() {
    level flag::wait_till("flg_amk_player_spawned");
    level.player endon(#"death");
    var_7a1c52df = 500;
    var_6c76f1a4 = 0.5;
    var_dc01518d = sqr(280);
    var_cf1eeb88 = sqr(140);
    var_3ba4d952 = 0;
    var_953da0a8 = struct::get("s_elevator_fight_mb_start", "targetname");
    var_ea066846 = struct::get("s_elevator_fight_mb_end", "targetname");
    v_fwd = anglestoforward(level.player getplayerangles());
    v_right = anglestoright(level.player getplayerangles());
    var_a6be6a4f = level.player getplayercamerapos() + (0, 0, -32) + v_fwd * 20 + v_right * 20;
    var_a75f2965 = getweapon(#"hash_58a74d179a004add");
    var_38ffd5df = vectornormalize(var_a6be6a4f - var_953da0a8.origin) * var_7a1c52df;
    e_grenade = self magicgrenadetype(var_a75f2965, var_953da0a8.origin, var_38ffd5df, var_6c76f1a4);
    while (true) {
        if (!isdefined(e_grenade)) {
            break;
        } else {
            n_dist = distance2dsquared(e_grenade.origin, level.player getplayercamerapos());
            if (n_dist < var_dc01518d) {
                break;
            }
        }
        waitframe(1);
    }
    namespace_b61bbd82::music("7.0_juggernaut");
    self thread function_b6283110(e_grenade);
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 1, eflags: 0x0
// Checksum 0xb290e6ae, Offset: 0x7828
// Size: 0x144
function function_b6283110(*e_grenade) {
    level flag::wait_till("flg_amk_player_spawned");
    level.player endon(#"death");
    var_e88b5bd1 = 1;
    wait 0.3;
    setslowmotion(1, 0.4, 0.2);
    level.player thread function_82bbbc5f(2);
    level flag::wait_till_timeout(2, "flg_elevator_fight_jugg_intro_at_goal");
    setslowmotion(0.4, 1, 0.5);
    level flag::set("flg_elevator_fight_jugg_intro_complete");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 1, eflags: 0x0
// Checksum 0xaeb5c390, Offset: 0x7978
// Size: 0xc4
function function_82bbbc5f(var_7fb467c) {
    self endon(#"death");
    self playgestureviewmodel(#"hash_6cb04aab2ccc6f0a");
    self function_912b1fe1();
    level flag::wait_till_any_timeout(var_7fb467c, ["flg_elevator_fight_jugg_intro_at_goal", "flg_elevator_fight_player_weapon_fired"]);
    self stopgestureviewmodel(#"hash_6cb04aab2ccc6f0a");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0xcd328fb9, Offset: 0x7a48
// Size: 0x114
function function_912b1fe1() {
    self endon(#"death");
    level endon(#"flg_elevator_fight_jugg_intro_complete");
    wait 2.5;
    while (true) {
        if (self adsbuttonpressed() || self meleebuttonpressed() || self sprintbuttonpressed() || self jumpbuttonpressed() || self attackbuttonpressed() || self fragbuttonpressed() || self secondaryoffhandbuttonpressed()) {
            break;
        }
        waitframe(1);
    }
    level flag::set("flg_elevator_fight_player_weapon_fired");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0xa7958aa9, Offset: 0x7b68
// Size: 0xd0
function function_b1c9c908() {
    self endon(#"death");
    level endon(#"flg_elevator_fight_jugg_intro_complete");
    var_3af9ba8b = sqr(200);
    while (level flag::get("flg_elevator_fight_jugg_intro_complete") == 0) {
        n_dist = distance2dsquared(self.origin, level.player.origin);
        if (n_dist < var_3af9ba8b) {
            self notify(#"player_close");
            break;
        }
        wait 0.1;
    }
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x763956dc, Offset: 0x7c40
// Size: 0x1ec
function function_4b1daaaa() {
    self endon(#"death");
    self.grenadeammo = 0;
    s_notify = self waittill(#"anim_pose = crouch", #"hash_236a61d135bc2b0e");
    if (s_notify._notify == "anim_pose = crouch") {
        self allowedstances("crouch");
        var_ea0d336b = spawn("script_origin", self.origin);
        self linkto(var_ea0d336b);
        wait 4;
        var_ea0d336b delete();
        self allowedstances("crouch", "stand", "prone");
        vol = getent("vol_elevator_bottom", "targetname");
        self setgoal(vol, 1);
        return;
    }
    var_6fd474cd = getnode(self.script_noteworthy, "targetname");
    self setgoal(var_6fd474cd, 1, 16);
    self waittill(#"goal");
    self ai::set_goal("vol_elevator_bottom", "targetname");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0xdae94afc, Offset: 0x7e38
// Size: 0x228
function function_97fe34c() {
    level flag::wait_till("flg_amk_player_spawned");
    level.player endon(#"death");
    level endon(#"flg_elevator_player_interact");
    level flag::wait_till("flg_main_street_woods_bridge_stairs_animation_finished");
    level.woods colors::disable();
    level thread namespace_fc3e8cb::function_5c5b6ea7("nd_elevator_fight_woods_start");
    level thread namespace_4bd68414::function_a57510fb();
    level thread function_a13a87f2();
    level flag::wait_till("flg_elevator_fight_start");
    level.woods.favoriteenemy = level.var_74fa4108[0];
    level flag::wait_till("flg_elevator_fight_jugg_intro_complete");
    level.woods clearforcedgoal();
    level.woods colors::set_force_color("blue");
    level flag::wait_till_any(["flg_elevator_fight_advance", "flg_elevator_juggernauts_dead"]);
    trig = getent("t_elevator_fight_advance1", "targetname");
    trig notify(#"trigger");
    level flag::wait_till("flg_elevator_most_enemies_dead");
    trig = getent("t_elevator_fight_advance2", "targetname");
    trig notify(#"trigger");
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x7671cc8d, Offset: 0x8068
// Size: 0xc4
function function_a13a87f2() {
    level flag::wait_till("flg_amk_player_spawned");
    level.player endon(#"death");
    level flag::wait_till("flg_elevator_fight_start");
    e_elevator_fight_mantle_wood = getent("e_elevator_fight_mantle_wood", "targetname");
    e_elevator_fight_mantle_wood delete();
    while (true) {
        if (isdefined(level.var_74fa4108[0])) {
            break;
        }
        waitframe(1);
    }
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x31dd70c7, Offset: 0x8138
// Size: 0xb4
function function_d6440d09() {
    level flag::wait_till("flg_elevator_fight_start");
    e_elevator_fight_catwalk_clip = getent("e_elevator_fight_catwalk_clip", "targetname");
    e_elevator_fight_catwalk_clip movez(512, 0.2, 0.05, 0.05);
    level flag::wait_till("flg_elevator_player_interact");
    e_elevator_fight_catwalk_clip deletedelay();
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0xd355ba26, Offset: 0x81f8
// Size: 0x1bc
function function_a7ba2bbe() {
    level flag::wait_till("flg_amk_player_spawned");
    level.player endon(#"death");
    self endon(#"death");
    level flag::wait_till("flg_elevator_player_interact");
    level.player util::stop_magic_bullet_shield();
    level.player disableinvulnerability();
    v_fwd = anglestoforward(level.player getplayerangles());
    var_1c8839e = level.player geteye() + v_fwd * -80;
    magicbullet(getweapon(#"hash_228ab35af2dae712"), var_1c8839e, level.player geteye(), self);
    waitframe(1);
    if (level.player util::function_a1d6293() == 0) {
        while (!level.player.allowdeath) {
            waitframe(1);
        }
        level.player kill();
    }
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0x9c47bf4, Offset: 0x83c0
// Size: 0x168
function function_3e2d3b05() {
    var_4371e76f = getentarray("veh_main_street_destructibles", "script_noteworthy");
    foreach (veh in var_4371e76f) {
        veh val::set("veh_main_street_destructibles", "takedamage", 0);
    }
    level flag::wait_till("flg_main_street_vehicle_complete_1");
    foreach (veh in var_4371e76f) {
        veh val::set("veh_main_street_destructibles", "takedamage", 1);
    }
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0xaa3d63b5, Offset: 0x8530
// Size: 0x468
function function_8a32e8b0() {
    level flag::wait_till("flg_amk_player_spawned");
    level.player endon(#"death");
    level endon(#"flg_elevator_fight_start");
    s_obj_bubby_button_interact = struct::get("s_obj_bubby_button_interact", "targetname");
    s_obj_bubby_button_interact util::create_cursor_hint(undefined, undefined, #"hash_4f0d1e085fec7281", 40, 0.2, undefined, #"use", 40);
    level thread function_414b79c1(s_obj_bubby_button_interact);
    n_counter = 0;
    while (true) {
        s_obj_bubby_button_interact waittill(#"trigger");
        level.player val::set(#"hash_5e3d5f34c6ed6ceb", "disable_weapons", 1);
        level.player val::set(#"hash_5e3d5f34c6ed6ceb", "freezecontrols_allowlook", 1);
        level.player val::set(#"hash_5e3d5f34c6ed6ceb", "ignoreme", 1);
        wait 0.5;
        s_scene = struct::get("s_scene_main_street_bubby_button_press", "targetname");
        level.player playrumbleonentity("anim_light");
        s_scene scene::play("scene_amk_6090_stg_garage");
        level.player val::reset_all(#"hash_5e3d5f34c6ed6ceb");
        s_obj_bubby_button_interact util::delay(0.2, undefined, &util::remove_cursor_hint);
        if (n_counter > 2 && level flag::get("flg_main_street_bubby_gave_prize") == 0) {
            s_bubby = struct::get("s_bubby_prize", "targetname");
            playfx(level._effect[#"hash_3dc2bb118ce21336"], s_bubby.origin, anglestoforward(s_bubby.angles));
            level.player playrumbleonentity("anim_med");
            snd::play("exp_facade_debris_mannequin", s_bubby.origin);
            var_b0a915d9 = spawnweapon(getweapon(#"special_grenadelauncher_t9"), s_bubby.origin, s_bubby.angles, 0);
            var_b0a915d9 thread function_c0160b76();
            level namespace_4bd68414::main_street_bubby_button_prize_react_dialogue();
            level flag::set("flg_main_street_bubby_gave_prize");
        } else {
            level namespace_4bd68414::main_street_bubby_button_react_dialogue();
            n_counter++;
        }
        wait 1;
        s_obj_bubby_button_interact util::create_cursor_hint(undefined, undefined, #"hash_4f0d1e085fec7281", 40, 0.2, undefined, #"use", 40);
    }
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0xc2a53b7d, Offset: 0x89a0
// Size: 0x124
function function_c0160b76() {
    level flag::wait_till("flg_amk_player_spawned");
    level.player endon(#"death");
    var_7bf9152a = getweapon(#"special_grenadelauncher_t9");
    s_result = self waittill(#"trigger");
    while (true) {
        if (level.player getcurrentweapon() == getweapon(#"special_grenadelauncher_t9")) {
            level.player setweaponammoclip(var_7bf9152a, 1);
            level.player setweaponammostock(var_7bf9152a, 3);
            break;
        }
        wait 0.1;
    }
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 1, eflags: 0x0
// Checksum 0xc7ca8536, Offset: 0x8ad0
// Size: 0x74
function function_414b79c1(s_obj_bubby_button_interact) {
    level flag::wait_till("flg_elevator_fight_start");
    s_obj_bubby_button_interact util::remove_cursor_hint();
    waitframe(1);
    if (isdefined(level.var_c39cfb7a)) {
        level.var_c39cfb7a deletedelay();
    }
}

// Namespace namespace_b767a37e/namespace_ff025add
// Params 0, eflags: 0x0
// Checksum 0xdb750b20, Offset: 0x8b50
// Size: 0xec
function function_bdbde0c9() {
    self notify("67fdfd4d08da7360");
    self endon("67fdfd4d08da7360");
    level flag::wait_till(#"flg_amk_player_spawned");
    var_8168f074 = 0;
    while (!level flag::get("flg_terminal_end")) {
        level.player waittill(#"hash_36ed55f18d8e407");
        var_8168f074++;
        if (var_8168f074 >= 15) {
            /#
                hms_util::print("<dev string:x38>");
            #/
            level.player achievements::give_achievement(#"cp_achievement_firing_range");
            break;
        }
    }
}

