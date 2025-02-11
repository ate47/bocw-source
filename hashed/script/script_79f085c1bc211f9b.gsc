#using script_32399001bdb550da;
#using script_3dc93ca9902a9cda;
#using script_52da18c20f45c56a;
#using script_58524f08c3081cbb;
#using script_5c325a0a637fdc2e;
#using script_6fad88ff3ed4ff7d;
#using script_9d8189b6b799089;
#using script_c36b776c6718540;
#using scripts\core_common\animation_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\colors_shared;
#using scripts\core_common\doors_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\spawner_shared;
#using scripts\core_common\stealth\utility;
#using scripts\core_common\struct;
#using scripts\core_common\trigger_shared;
#using scripts\core_common\util_shared;
#using scripts\core_common\values_shared;
#using scripts\cp_common\hms_util;
#using scripts\cp_common\objectives;
#using scripts\cp_common\skipto;
#using scripts\cp_common\snd;

#namespace namespace_a2d2e744;

// Namespace namespace_a2d2e744/namespace_dad03593
// Params 2, eflags: 0x0
// Checksum 0x292af479, Offset: 0x9b8
// Size: 0x84
function function_965213e6(*str_objective, *var_50cc0d4f) {
    transient = savegame::function_6440b06b(#"transient");
    transient.var_296ec611 = 1;
    savegame::function_7790f03(1);
    wait 0.1;
    level thread function_32d297d8();
}

// Namespace namespace_a2d2e744/namespace_dad03593
// Params 2, eflags: 0x0
// Checksum 0xe8ffb873, Offset: 0xa48
// Size: 0x994
function function_32d297d8(*str_objective, var_50cc0d4f) {
    if (var_50cc0d4f) {
        level namespace_5d7a2dac::music("5.8_tension_2");
    }
    level.ai_woods colors::set_force_color("o");
    namespace_b73b9191::function_ee83e03a("cull_inside_bunkerext");
    catwalk_rail_1 = getent("catwalk_rail_1", "targetname");
    catwalk_rail_2 = getent("catwalk_rail_2", "targetname");
    catwalk_rail_mover_1 = getent("catwalk_rail_mover_1", "targetname");
    catwalk_rail_mover_2 = getent("catwalk_rail_mover_2", "targetname");
    catwalk_body_mover = getent("catwalk_body_mover", "targetname");
    platform_mover = getent("platform_mover", "targetname");
    e_unstable_catwalk_1 = getent("e_unstable_catwalk_1", "targetname");
    e_unstable_catwalk_2 = getent("e_unstable_catwalk_2", "targetname");
    var_cf034495 = getentarray("scripted_sanim_model", "targetname");
    foreach (e_model in var_cf034495) {
        if (isdefined(e_model.var_cc2ba3ab)) {
            e_model thread animation::play_siege(e_model.var_cc2ba3ab);
        }
    }
    transient = savegame::function_6440b06b(#"transient");
    level thread function_9dd6ca05();
    level thread function_b528b50();
    level flag::wait_till("f_catwalks_catwalk_vig_1");
    level.ai_woods pushplayer(1);
    level thread namespace_7468806b::function_9abd347e();
    level flag::wait_till("f_catwalks_catwalk_vig_2");
    while (!level.player isonground()) {
        waitframe(1);
    }
    snd::play("evt_catwalk_shift_lr", level.player);
    thread function_e82e21f2(0, e_unstable_catwalk_1, 0.4);
    platform_mover moveto(platform_mover.origin - (0, 0, 10), 0.5, 0.25, 0.25);
    platform_mover rotateroll(-5, 0.5, 0.25, 0.25);
    player_catwalk_collision = getent("player_catwalk_collision", "targetname");
    player_catwalk_collision util::delayed_delete(0.3);
    level flag::wait_till("flg_off_catwalks");
    level flag::clear("no_corpse_pickup");
    level.ai_woods pushplayer(0);
    savegame::function_7790f03(1);
    level thread function_171d6b6c();
    if (is_true(transient.var_296ec611)) {
        level thread namespace_b73b9191::function_e79ede39("f_catwalks_combat_end");
        level function_9539ca81();
    } else {
        level notify(#"hash_389991321cecac89");
        if (isdefined(level.e_steiner_radio)) {
            level.e_steiner_radio notify(#"hash_389991321cecac89");
        }
        level function_490c69f();
    }
    level namespace_5d7a2dac::music("5.10_combat_2");
    level.ai_woods colors::set_force_color("y");
    trigger::use("tr_y1", "targetname");
    level thread namespace_b73b9191::function_5d981106("ai_catwalks", 5, "flg_catwalks_fallback");
    level flag::wait_till_any(array("flg_catwalks_fallback", "flg_zipline_snap_approach"));
    level.ai_woods colors::set_force_color("o");
    trigger::use("tr_o8", "targetname");
    util::delay(5, "f_catwalks_combat_end", &trigger::use, "tr_o9", "targetname");
    if (!is_true(transient.var_296ec611)) {
        var_a4af17f3 = spawner::simple_spawn("ai_catwalks_second_wave");
        if (level flag::get("flg_catwalks_upper_approach")) {
            var_75bfdd78 = struct::get_array("s_catwalks_second_wave_upper", "targetname");
            var_a4af17f3[0] forceteleport(var_75bfdd78[0].origin, var_75bfdd78[0].angles);
            var_a4af17f3[1] forceteleport(var_75bfdd78[1].origin, var_75bfdd78[1].angles);
        }
        var_a4af17f3[0] setgoal(level.player);
        var_a4af17f3[1] setgoal(level.player);
    }
    waitframe(1);
    if (!level flag::get("flg_catwalks_upper_approach")) {
        foreach (ai in level.var_7c0c1b3d) {
            if (isalive(ai)) {
                var_d5f6d39e = getnode("nd_catwalk_stair_perch", "targetname");
                ai setgoal(var_d5f6d39e, 1);
                break;
            }
        }
    }
    level thread namespace_b73b9191::function_5d981106("ai_catwalks", 2, "f_catwalks_combat_end");
    level flag::wait_till_any(array("f_catwalks_combat_end", "flg_zipline_snap_approach"));
    level thread breadcrumb::function_61037c6c("bc_zipline_fall_1");
    skipto::function_4e3ab877("catwalks");
}

// Namespace namespace_a2d2e744/namespace_dad03593
// Params 0, eflags: 0x0
// Checksum 0x1e331044, Offset: 0x13e8
// Size: 0xc0
function function_9dd6ca05() {
    var_e08d3dcb = getent("catwalk_jump_watcher", "targetname");
    var_e08d3dcb endon(#"death");
    while (true) {
        s_notify = var_e08d3dcb waittill(#"trigger");
        if (s_notify.activator === level.ai_woods) {
            snd::play("fly_step_land_npc_catwalk_rickety", level.ai_woods);
            var_e08d3dcb delete();
        }
    }
}

// Namespace namespace_a2d2e744/namespace_dad03593
// Params 0, eflags: 0x0
// Checksum 0xbe92e0ac, Offset: 0x14b0
// Size: 0xb2
function function_b528b50() {
    level.player endon(#"death");
    level endon(#"flg_off_catwalks");
    while (true) {
        if (level flag::get("flg_player_approaching_catwalks")) {
            level.player notify(#"hash_4dff86580406a1af");
            level flag::set("no_corpse_pickup");
            level action_utility::function_396e2076();
            break;
        }
        waitframe(1);
    }
}

// Namespace namespace_a2d2e744/namespace_dad03593
// Params 1, eflags: 0x0
// Checksum 0x78b79662, Offset: 0x1570
// Size: 0x15c
function function_2445d847(*str_objective) {
    level thread objectives::scripted("obj_yamantau_1", undefined, #"hash_423da80c752f859f");
    var_5b7b93ad = getspawnerarray("woods", "targetname");
    var_5b7b93ad[0] colors::set_force_color_spawner("o");
    namespace_b73b9191::function_2683ec5d();
    var_b4bb921 = struct::get("woods_catwalks_teleport", "targetname");
    level.ai_woods forceteleport(var_b4bb921.origin, var_b4bb921.angles);
    doors::unlock("satcom_exit_door", "targetname", 1);
    level thread namespace_7468806b::function_ba5a28f(1);
    level thread namespace_8a404420::function_517fe722();
    level flag::set("flg_satcom_birds_trigger");
}

// Namespace namespace_a2d2e744/namespace_dad03593
// Params 0, eflags: 0x0
// Checksum 0x1611939b, Offset: 0x16d8
// Size: 0xcc
function function_9bf8df15() {
    self endon(#"death");
    level flag::wait_till("f_catwalks_catwalk_vig_1");
    nd_satcom_radio_balcony_alert = getnode("nd_satcom_radio_balcony_alert", "targetname");
    self setgoal(nd_satcom_radio_balcony_alert.origin, 1, 12, 0, nd_satcom_radio_balcony_alert.angles);
    self thread namespace_7468806b::function_dc6c4109();
    self namespace_979752dc::set_stealth_state("attack");
}

// Namespace namespace_a2d2e744/namespace_dad03593
// Params 0, eflags: 0x0
// Checksum 0xd3c00e2f, Offset: 0x17b0
// Size: 0x34
function function_854a1c32() {
    self endon(#"death");
    wait 2;
    self thread namespace_7468806b::function_f39da57c();
}

// Namespace namespace_a2d2e744/namespace_dad03593
// Params 0, eflags: 0x0
// Checksum 0x1263a6c3, Offset: 0x17f0
// Size: 0x214
function function_490c69f() {
    level flag::wait_till("flg_catwalks_ambush");
    e_catwalks_floor2_blocker = getent("e_catwalks_floor2_blocker", "targetname");
    e_catwalks_floor2_blocker delete();
    level.var_7c0c1b3d = spawner::simple_spawn("ai_catwalks_upper", &function_8c4596c);
    var_a38a8f8c = struct::get("ambush_grenade_origin", "targetname");
    var_1fb4acab = struct::get("ambush_grenade_target", "targetname");
    var_c6d90c31 = getweapon(#"frag_grenade");
    w_grenade = level.var_7c0c1b3d[0] magicgrenade(var_a38a8f8c.origin, var_1fb4acab.origin, 5, var_c6d90c31);
    var_9f4465f = spawner::simple_spawn("ai_catwalks_lower", &function_b12f2f76);
    var_d25787b0 = spawner::simple_spawn("ai_catwalks_rear", &function_76f8ca3b);
    ai_catwalks_anchor = spawner::simple_spawn_single("ai_catwalks_anchor", &function_76f8ca3b);
    level thread namespace_7468806b::function_b8f90aa9();
    wait 5;
    level flag::set("flg_catwalks_grenade_exploded");
}

// Namespace namespace_a2d2e744/namespace_dad03593
// Params 0, eflags: 0x0
// Checksum 0xcff9cbdf, Offset: 0x1a10
// Size: 0x374
function function_9539ca81() {
    level.ai_woods val::set("catwalks_stealth", "ignoreall", 1);
    var_7c0c1b3d = getspawnerarray("ai_catwalks_upper", "targetname");
    var_9f4465f = getspawnerarray("ai_catwalks_lower", "targetname");
    var_d25787b0 = getspawnerarray("ai_catwalks_rear", "targetname");
    var_2217e46d = arraycombine(var_7c0c1b3d, var_9f4465f);
    var_2217e46d = arraycombine(var_2217e46d, var_d25787b0);
    foreach (spawner in var_2217e46d) {
        spawner.script_stealthgroup = "stl_grp_catwalks";
    }
    level.var_7c0c1b3d = spawner::simple_spawn("ai_catwalks_upper", &function_d1a7a369);
    var_21829cfe = struct::get_array("nd_catwalks_stealth_upper", "targetname");
    for (i = 0; i < 3; i++) {
        level.var_7c0c1b3d[i] thread spawner::go_to_node(var_21829cfe[i]);
    }
    var_9f4465f = spawner::simple_spawn("ai_catwalks_lower", &function_cfe17850);
    var_8648a484 = struct::get_array("nd_catwalks_stealth_lower", "targetname");
    var_2e9e9c8d = struct::get_array("s_catwalks_stealth_lower_teleport", "targetname");
    for (i = 0; i < 3; i++) {
        var_9f4465f[i] forceteleport(var_2e9e9c8d[i].origin);
        waitframe(1);
        var_9f4465f[i] thread spawner::go_to_node(var_8648a484[i]);
    }
    var_d25787b0 = spawner::simple_spawn("ai_catwalks_rear", &function_46e76f7d);
    level flag::wait_till_any(array("stealth_spotted", "flg_zipline_snap_approach"));
    level.ai_woods val::reset("catwalks_stealth", "ignoreall");
}

// Namespace namespace_a2d2e744/namespace_dad03593
// Params 0, eflags: 0x0
// Checksum 0xea9c2f2f, Offset: 0x1d90
// Size: 0xc4
function function_171d6b6c() {
    v_woods_catwalks_teleport = getent("v_woods_catwalks_teleport", "targetname");
    s_woods_catwalk_jump = struct::get("s_woods_catwalk_jump", "targetname");
    level flag::wait_till("flg_catwalks_woods_check");
    if (!level.ai_woods istouching(v_woods_catwalks_teleport)) {
        level.ai_woods forceteleport(s_woods_catwalk_jump.origin, s_woods_catwalk_jump.angles);
    }
}

// Namespace namespace_a2d2e744/namespace_dad03593
// Params 3, eflags: 0x0
// Checksum 0xa5b496fd, Offset: 0x1e60
// Size: 0x124
function function_e82e21f2(var_f6ffdb5f, var_981fc6aa, n_scale) {
    if (isdefined(var_981fc6aa)) {
        level.player playersetgroundreferenceent(var_981fc6aa, 1);
    }
    earthquake(n_scale, 1.2, level.player.origin, 150);
    level.player playrumbleonentity("artillery_rumble_near");
    if (var_f6ffdb5f) {
        level.player playgestureviewmodel("ges_t9_blind_reaction");
    }
    wait 1;
    level.player stopgestureviewmodel("ges_t9_blind_reaction");
    level.player playersetgroundreferenceent(undefined);
    level.player setlowready(0);
}

// Namespace namespace_a2d2e744/namespace_dad03593
// Params 0, eflags: 0x0
// Checksum 0x8fc4b42d, Offset: 0x1f90
// Size: 0x1d4
function function_8c4596c() {
    self endon(#"death");
    level flag::wait_till_any(array("flg_catwalks_fallback", "flg_catwalks_upper_approach"));
    if (level flag::get("flg_catwalks_upper_approach")) {
        node = getnode(self.target2, "targetname");
        self setgoal(node, 1);
        level flag::wait_till("flg_catwalks_fallback");
    }
    vol_fallback = getent("vol_catwalks_fallback", "targetname");
    self setgoal(vol_fallback, 1);
    level flag::wait_till_any(array("f_catwalks_combat_end", "flg_zipline_snap_approach"));
    self.goalradius = 128;
    var_e9129078 = getent("vol_catwalks_fallback_2", "targetname");
    self setgoal(var_e9129078, 1);
    level waittill(#"hash_61b5e90b3844a5");
    util::delayed_delete(0.5);
}

// Namespace namespace_a2d2e744/namespace_dad03593
// Params 0, eflags: 0x0
// Checksum 0x8b701612, Offset: 0x2170
// Size: 0x64
function function_d1a7a369() {
    self endon(#"death");
    self.var_c5553760 = 1;
    self waittill(#"stealth_combat");
    self namespace_979752dc::stealth_override_goal(1);
    function_8c4596c();
}

// Namespace namespace_a2d2e744/namespace_dad03593
// Params 0, eflags: 0x0
// Checksum 0xf8ec32c3, Offset: 0x21e0
// Size: 0x16c
function function_b12f2f76() {
    self endon(#"death");
    wait 2;
    var_8e204805 = getent("vol_catwalks_first_floor", "targetname");
    self setgoal(var_8e204805);
    level flag::wait_till("flg_catwalks_fallback");
    vol_fallback = getent("vol_catwalks_fallback", "targetname");
    self setgoal(vol_fallback);
    level flag::wait_till_any(array("f_catwalks_combat_end", "flg_zipline_snap_approach"));
    var_e9129078 = getent("vol_catwalks_fallback_2", "targetname");
    self setgoal(var_e9129078, 1);
    level waittill(#"hash_61b5e90b3844a5");
    util::delayed_delete(0.5);
}

// Namespace namespace_a2d2e744/namespace_dad03593
// Params 0, eflags: 0x0
// Checksum 0xf4f2c924, Offset: 0x2358
// Size: 0x64
function function_cfe17850() {
    self endon(#"death");
    self.var_c5553760 = 1;
    self waittill(#"stealth_combat");
    self namespace_979752dc::stealth_override_goal(1);
    function_b12f2f76();
}

// Namespace namespace_a2d2e744/namespace_dad03593
// Params 0, eflags: 0x0
// Checksum 0x6370e2ff, Offset: 0x23c8
// Size: 0xcc
function function_76f8ca3b() {
    self endon(#"death");
    self.grenadeammo = 0;
    level flag::wait_till_any(array("f_catwalks_combat_end", "flg_zipline_snap_approach"));
    var_e9129078 = getent("vol_catwalks_fallback_2", "targetname");
    self setgoal(var_e9129078, 1);
    level waittill(#"hash_61b5e90b3844a5");
    util::delayed_delete(0.5);
}

// Namespace namespace_a2d2e744/namespace_dad03593
// Params 0, eflags: 0x0
// Checksum 0xa662917a, Offset: 0x24a0
// Size: 0x54
function function_46e76f7d() {
    self endon(#"death");
    self waittill(#"stealth_combat");
    self namespace_979752dc::stealth_override_goal(1);
    function_76f8ca3b();
}

// Namespace namespace_a2d2e744/namespace_dad03593
// Params 4, eflags: 0x0
// Checksum 0xfbe2584a, Offset: 0x2500
// Size: 0x44
function function_dfe7cd78(*str_objective, *var_50cc0d4f, *var_aa1a6455, *player) {
    waitframe(1);
    namespace_b73b9191::function_ee83e03a("cull_inside_bunkerext");
}

// Namespace namespace_a2d2e744/namespace_dad03593
// Params 2, eflags: 0x0
// Checksum 0xa213f35e, Offset: 0x2550
// Size: 0x2c4
function function_198e08b8(*str_objective, var_50cc0d4f) {
    level thread function_eeb0dce6();
    zipline_fall_position_1 = getent("zipline_fall_position_1", "targetname");
    collapsing_catwalk_mover = getent("collapsing_catwalk_mover", "targetname");
    collapsing_catwalk_end_ref = struct::get("collapsing_catwalk_end_ref", "targetname");
    level thread namespace_8a404420::function_85bd6953();
    level.ai_woods thread function_822e1b52(var_50cc0d4f);
    level thread namespace_7468806b::function_e208410b();
    level thread namespace_7468806b::function_e15849a0();
    level thread function_98887da();
    level waittill(#"hash_2f561fe92bdfa21e");
    level thread function_f1f4ca3e();
    level waittill(#"hash_61b5e90b3844a5");
    wait 0.5;
    level.player clientfield::set_to_player("zipline_player_free_fall_fx", 1);
    a_ai = spawner::get_ai_group_ai("ai_catwalks");
    foreach (ai in a_ai) {
        if (isalive(ai)) {
            ai deletedelay();
        }
    }
    level.player clientfield::set_to_player("zipline_player_free_fall_fx", 0);
    level waittill(#"hash_7abd2158f9add682");
    level.player.var_4d9b2bc3 = 1;
    skipto::function_4e3ab877("zipline_fall");
}

// Namespace namespace_a2d2e744/namespace_dad03593
// Params 0, eflags: 0x0
// Checksum 0xff9b63f9, Offset: 0x2820
// Size: 0x118
function function_98887da() {
    var_514baeeb = spawner::simple_spawn("sp_catwalk_helipad", &function_dfa8e867);
    var_b8a9b55c = spawner::simple_spawn_single("sp_catwalk_helipad_rpg", &function_dfa8e867);
    level thread namespace_b73b9191::function_5d981106("zipline_helipad_enemies", 0, "helipad_enemy_all_dead");
    level.player waittill(#"hash_1cafc79970a29eb1");
    var_8a72b686 = 2 - spawner::get_ai_group_sentient_count("zipline_helipad_enemies");
    for (i = 0; i < var_8a72b686; i++) {
        var_f7ebfab8 = spawner::simple_spawn_single("sp_zipline_fall_reinforce");
        wait 1;
    }
}

// Namespace namespace_a2d2e744/namespace_dad03593
// Params 0, eflags: 0x0
// Checksum 0x328cd57c, Offset: 0x2940
// Size: 0xd0
function function_dfa8e867() {
    self endon(#"death");
    self val::set("zipline_helipad_enemies", "ignoreall", 1);
    self val::set("zipline_helipad_enemies", "ignoreme", 1);
    level flag::wait_till("zipline_fall_helipad_dialog_finished");
    wait 2;
    self val::reset_all("zipline_helipad_enemies");
    level.player waittill(#"hash_1cafc79970a29eb1");
}

// Namespace namespace_a2d2e744/namespace_dad03593
// Params 2, eflags: 0x0
// Checksum 0xacfc5082, Offset: 0x2a18
// Size: 0xaa
function function_8e7fd8d5(var_6d2c41af, var_8a72b686) {
    level.player waittill(#"hash_1cafc79970a29eb1");
    function_1eaaceab(var_6d2c41af);
    var_8a72b686 = var_6d2c41af.size;
    for (i = 0; i < var_8a72b686; i++) {
        var_f7ebfab8 = spawner::simple_spawn_single("sp_zipline_fall_additional_reinforce");
        var_f7ebfab8.script_accuracy = 1000;
        var_f7ebfab8.perfectaim = 1;
    }
}

// Namespace namespace_a2d2e744/namespace_dad03593
// Params 1, eflags: 0x0
// Checksum 0xa12488f, Offset: 0x2ad0
// Size: 0x144
function function_822e1b52(var_50cc0d4f) {
    self endon(#"death");
    self pushplayer(1);
    if (!is_true(var_50cc0d4f)) {
        vol_catwalks_fallback = getent("vol_catwalks_fallback_woods", "targetname");
        self setgoal(vol_catwalks_fallback);
        level thread namespace_b73b9191::function_5d981106("ai_catwalks", 0, "f_catwalks_combat_dead");
        level flag::wait_till("f_catwalks_combat_dead");
    }
    nd_woods_snap_zipline = getnode("nd_woods_snap_zipline", "targetname");
    self.goalradius = 32;
    self setgoal(nd_woods_snap_zipline);
    self namespace_7468806b::function_67cb4f06();
}

// Namespace namespace_a2d2e744/namespace_dad03593
// Params 0, eflags: 0x0
// Checksum 0x2c7bbc57, Offset: 0x2c20
// Size: 0x156
function function_eeb0dce6() {
    var_6b924431 = getnodearray("n_zipline_fall_helipad_initial", "targetname");
    s_notify = level.player waittill(#"hash_1cafc79970a29eb1");
    if (s_notify.var_14af458a == "zipline_catwalks") {
        foreach (n in var_6b924431) {
            setenablenode(n, 0);
            /#
                hms_util::print("<dev string:x38>");
            #/
        }
    }
    snd::client_msg("audio_player_zipline_start");
    var_6b6b52d6 = spawner::simple_spawn("sp_zipline_fall_reinforce");
}

// Namespace namespace_a2d2e744/namespace_dad03593
// Params 0, eflags: 0x0
// Checksum 0x10b823bd, Offset: 0x2d80
// Size: 0x27c
function function_f1f4ca3e() {
    var_3ba4bf7d = level.player getweaponslistprimaries();
    foreach (w_primary in var_3ba4bf7d) {
        level.player takeweapon(w_primary);
    }
    var_539ec778 = getweapon(#"hash_37426bfcc5bf02ac");
    level.player giveweapon(var_539ec778);
    level.player switchtoweapon(var_539ec778);
    level.player val::set("zip_fall", "show_weapon_hud", 0);
    level.player val::set("zip_fall", "show_crosshair", 0);
    if (!(level.var_28c22d88[0] == "bunker_encounter")) {
        level waittill(#"hash_7abd2158f9add682");
        wait 2;
    }
    level.player takeweapon(var_539ec778);
    var_3f0059e8 = getweapon(#"knife_loadout");
    level.player giveweapon(var_3f0059e8);
    level.player switchtoweapon(var_3f0059e8);
    level.player val::reset("zip_fall", "show_weapon_hud");
    level.player val::reset("zip_fall", "show_crosshair");
}

// Namespace namespace_a2d2e744/namespace_dad03593
// Params 1, eflags: 0x0
// Checksum 0x27f8dcd2, Offset: 0x3008
// Size: 0x14c
function function_9539fa90(*str_objective) {
    level thread objectives::scripted("obj_yamantau_1", undefined, #"hash_423da80c752f859f");
    namespace_b73b9191::function_2683ec5d();
    var_b4bb921 = struct::get("woods_zipline_fall_teleport", "targetname");
    level.ai_woods forceteleport(var_b4bb921.origin, var_b4bb921.angles);
    level thread breadcrumb::function_61037c6c("bc_zipline_fall_2");
    level thread namespace_7468806b::function_ba5a28f(1);
    e_catwalks_floor2_blocker = getent("e_catwalks_floor2_blocker", "targetname");
    e_catwalks_floor2_blocker delete();
    level thread namespace_8a404420::function_517fe722();
    level flag::set("flg_satcom_birds_trigger");
}

// Namespace namespace_a2d2e744/namespace_dad03593
// Params 4, eflags: 0x0
// Checksum 0xe978d2f6, Offset: 0x3160
// Size: 0x24
function function_b366b7a9(*str_objective, *var_50cc0d4f, *var_aa1a6455, *player) {
    
}

