// Atian COD Tools GSC CW decompiler test
#using script_4052585f7ae90f3a;
#using script_19971192452f4209;
#using script_eb1a9e047313195;
#using script_32399001bdb550da;
#using script_48a4cce0f86a3f65;
#using script_4ccd0c3512b52a10;
#using scripts\cp_common\gametypes\globallogic_ui.gsc;
#using script_5513c8efed5ff300;
#using scripts\cp_common\util.gsc;
#using script_4ae261b2785dda9f;
#using scripts\cp_common\objectives.gsc;
#using script_2d443451ce681a;
#using scripts\cp_common\snd.gsc;
#using scripts\cp_common\load.gsc;
#using script_3b82b8c68189025e;
#using scripts\cp_common\skipto.gsc;
#using scripts\cp_common\dialogue.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\ai\archetype_utility.gsc;
#using scripts\core_common\animation_shared.gsc;
#using scripts\core_common\districts.gsc;
#using scripts\core_common\lui_shared.gsc;
#using scripts\core_common\music_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\exploder_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_fdde5f3d;

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0xbb0c197b, Offset: 0xea8
// Size: 0xc4
function function_f50bc4b9() {
    level flag::init("flag_post_prisoner_ally_enter");
    level flag::init("flag_post_prisoner_ally_exit");
    level flag::init("flag_post_prisoner_lie");
    level flag::init("flag_post_prisoner_truth");
    level flag::init("flag_post_prisoner_radio");
    level flag::init("flag_post_prisoner_complete");
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 1, eflags: 0x0
// Checksum 0x5e4bcede, Offset: 0xf78
// Size: 0xc
function starting(*var_d3440450) {
    
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 2, eflags: 0x2 linked
// Checksum 0xbcc52919, Offset: 0xf90
// Size: 0x31c
function main(var_d3440450, *var_50cc0d4f) {
    if (level.var_b28c2c3a == "dev_post_prisoner_park_survived") {
        level.player player_decision::function_ff7e19cb(0);
    }
    if (level.var_b28c2c3a == "dev_post_prisoner_lazar_survived") {
        level.player player_decision::function_ff7e19cb(1);
    }
    if (level.var_b28c2c3a == "dev_post_prisoner_no_survivors") {
        level.player player_decision::function_ff7e19cb(2);
    }
    level.player districts::function_a7d79fcb("safehouse", 1);
    level thread scene::init_streamer(#"hash_70ddb2bd2755b3f6", getplayers());
    level thread scene::init_streamer(#"hash_203b0513592c4f28", getplayers());
    level thread scene::init_streamer(#"hash_46c2976baaaa055", getplayers());
    level thread scene::init_streamer(#"hash_b878b39b11d8757", getplayers());
    level thread namespace_31c67f6d::function_12e3ea01();
    level namespace_31c67f6d::function_6194f34a("post_prisoner", 1);
    level thread function_dbf5481b();
    level thread namespace_4ed3ce47::function_7edafa59(var_50cc0d4f + "_briefing");
    level thread exploder::exploder("exp_post_armada_lazar_workbench");
    level thread exploder::exploder("exp_lgt_post_prioner_dialog");
    collision = getent("gurney_collision", "targetname");
    collision hide();
    level thread function_c21e258e();
    level thread namespace_31c67f6d::function_b0558ba2("8");
    level function_3b9f24df();
    skipto::function_4e3ab877("post_prisoner");
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0x40948d14, Offset: 0x12b8
// Size: 0x40c
function function_3b9f24df() {
    level.player endon(#"death");
    level.var_ea95c1e7 = namespace_31c67f6d::function_c9dc0e79();
    level.player thread clientfield::set_to_player("set_hub_fov", 1);
    level.player val::set("safehouse", "freezecontrols_allowlook", 1);
    level.player val::set("safehouse", "allow_melee", 0);
    level.player val::set("safehouse", "allow_jump", 0);
    level.player.var_c681e4c1 = 1;
    level.player disableweapons(1);
    level thread function_270a48e0();
    level flag::wait_till("level_is_go");
    while (!isdefined(level.player_connected) || isdefined(level.player_connected) && level.player_connected != 1) {
        waitframe(1);
    }
    level thread function_474dc7d3();
    wait(2);
    if (isdefined(level.var_d7d201ba) && isdefined(level.var_28c22d88)) {
        level.player flag::set(level.var_d7d201ba);
    }
    level flag::wait_till(#"gameplay_started");
    level thread namespace_31c67f6d::function_abeb9b2d(2, 1, 1, 1);
    wait(2);
    level thread function_f8e379f0();
    level thread util::delay(1, undefined, &globallogic_ui::function_7bc0e4b9, 0, 0);
    level function_3812af3b();
    level function_5091c7b2();
    level function_5e48631f();
    level function_92141ec2();
    level function_8c5e0f4f();
    level function_3c0e1eab();
    level function_b96d7941();
    level function_4f7ea045();
    level function_40dc24e2();
    level function_af645aa();
    level function_49bbba06();
    level function_96eb5464();
    level function_47f7d061();
    level function_8c6c6957();
    level function_855165f7();
    level function_a53df109();
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0xa02f695a, Offset: 0x16d0
// Size: 0xa2
function function_270a48e0() {
    var_ea95c1e7 = namespace_31c67f6d::function_c9dc0e79();
    switch (var_ea95c1e7) {
    case #"park":
        level.str_scene_name = "scene_hub_post_prisoner_dialog_park_survived";
        break;
    case #"lazar":
        level.str_scene_name = "scene_hub_post_prisoner_dialog_lazar_survived";
        break;
    case #"sims":
        level.str_scene_name = "scene_hub_post_prisoner_dialog_no_survivor";
        break;
    }
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0x29e5a6f, Offset: 0x1780
// Size: 0x34
function function_474dc7d3() {
    level thread scene::init(level.str_scene_name, "dt_01_enter", level.var_58ccee4);
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0x1818d58d, Offset: 0x17c0
// Size: 0x7c
function function_3812af3b() {
    level thread namespace_4ed3ce47::function_e522e5de();
    level scene::play(level.str_scene_name, "dt_01_enter", level.var_58ccee4);
    level thread scene::play(level.str_scene_name, "dt_01_waiting_idle", level.var_58ccee4);
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0xdc287b72, Offset: 0x1848
// Size: 0x15c
function function_5091c7b2() {
    level thread scene::play(level.str_scene_name, "dt_01_waiting_idle", level.var_58ccee4);
    level.adler.var_dfbbd0a = dialog_tree::function_82b16606(undefined, undefined, 1, 1, level.str_scene_name);
    level.adler.var_dfbbd0a dialog_tree::function_58d27b23(#"hash_14ea8d0dbbc54b93", undefined, "dt_1a", "dt_01_waiting_idle", 1);
    level.adler.var_dfbbd0a dialog_tree::function_58d27b23(#"hash_14f4bd0dbbcdf1a8", undefined, "dt_1b", "dt_01_waiting_idle", 1);
    level dialog_tree::function_21780fc5(level.adler.var_dfbbd0a, array(1224, 650));
    level.adler.var_dfbbd0a dialog_tree::run(level.adler);
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0x91bd707c, Offset: 0x19b0
// Size: 0x1a4
function function_5e48631f() {
    level thread scene::play(level.str_scene_name, "dt_01_waiting_idle", level.var_58ccee4);
    level.adler.var_fc421997 = dialog_tree::function_82b16606(undefined, undefined, 1, 1, level.str_scene_name);
    level.adler.var_fc421997 dialog_tree::function_58d27b23(#"hash_54b2eb15279dd690", undefined, "dt_2a", "dt_01_waiting_idle");
    level.adler.var_fc421997 dialog_tree::function_58d27b23(#"hash_54a8fb1527959d3b", undefined, undefined, undefined, 1, undefined, undefined, &function_5271d49a);
    level.adler.var_fc421997 dialog_tree::function_58d27b23(#"hash_54abdf152797a37e", undefined, undefined, undefined, 1, undefined, undefined, &function_3c3aa82c);
    level dialog_tree::function_21780fc5(level.adler.var_fc421997, array(1224, 650));
    level.adler.var_fc421997 dialog_tree::run(level.adler);
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0xc6034964, Offset: 0x1b60
// Size: 0x1c
function function_5271d49a() {
    function_ab329090("dt_2b");
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0xcc44dd81, Offset: 0x1b88
// Size: 0x1c
function function_3c3aa82c() {
    function_ab329090("dt_2c");
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 1, eflags: 0x2 linked
// Checksum 0xf10c5bb, Offset: 0x1bb0
// Size: 0xc4
function function_ab329090(str_shotname) {
    level thread scene::play(level.str_scene_name, str_shotname, level.var_58ccee4);
    level waittill(#"hash_77c12f83fb0438ea");
    level thread namespace_31c67f6d::function_abeb9b2d(1, 1, 1, undefined, 1);
    wait(1);
    level scene::stop();
    level thread scene::play(level.str_scene_name, "dt_03_waiting_idle", level.var_58ccee4);
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0xfa3db277, Offset: 0x1c80
// Size: 0x25c
function function_92141ec2() {
    function_b663575e();
    snd::function_7db65a93(#"hash_1b78b54c338981ad");
    level thread namespace_4ed3ce47::function_a59705f8();
    wait(0.75);
    level.player districts::function_a7d79fcb("airstrip", 1);
    level flag::set("af_player_start_ride");
    level scene::stop(level.str_scene_name);
    level.var_20047fb0 = getdvar(#"hash_62b11f12963c68d4");
    setdvar(#"hash_62b11f12963c68d4", 2000);
    level.var_f9247f8c = getdvar(#"hash_4af7f2a3b5e31c77");
    setdvar(#"hash_4af7f2a3b5e31c77", 0.5);
    level.var_3b87c282 = getdvar(#"hash_7b06b8037c26b99b");
    setdvar(#"hash_7b06b8037c26b99b", 255);
    function_cbd66c4c();
    setdvar(#"hash_62b11f12963c68d4", level.var_20047fb0);
    setdvar(#"hash_4af7f2a3b5e31c77", level.var_f9247f8c);
    setdvar(#"hash_7b06b8037c26b99b", level.var_3b87c282);
    level.player districts::function_a7d79fcb("safehouse", 1);
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0xf96126de, Offset: 0x1ee8
// Size: 0xd4
function function_b663575e() {
    function_f7c7ce51();
    level.player = getplayers()[0];
    level thread scene::init("scene_hub_post_prisoner_flashback_overlook", "overlook_shot", [level.arash, level.var_e2e0716f]);
    level thread scene::init("scene_tkd_hit3_intro_overlook", "overlook_shot", undefined);
    level thread scene::init("scene_tkd_hit3_intro_overlook_enemy4", "overlook_shot", undefined);
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0x9d0b3ecb, Offset: 0x1fc8
// Size: 0x394
function function_cbd66c4c() {
    setsaveddvar(#"hash_7bf40e4b6a830d11", 0);
    level.player setcinematicmotionoverride("cinematicmotion_handheld_heavy");
    level.player playrumblelooponentity("chopper_gunner_rumble_intro");
    vehicle::add_spawn_function_group("airport_truck_approach", "targetname", &function_78bc26d5);
    vehicle::simple_spawn("airport_truck_approach");
    plane = function_5431431d();
    function_c8381339(plane, 0);
    level thread function_5dd4ff85();
    thread function_82ab6677();
    thread function_f406d0f4();
    vehicle::add_spawn_function_group("af_intro_vehicle", "targetname", &function_78bc26d5);
    guys = ai::array_spawn("af_unloader_guy");
    thread function_c6f0c41a(guys);
    level music::setmusicstate("b2.0_recon", undefined, 6);
    level thread scene::play_from_time("scene_hub_post_prisoner_flashback_overlook", "overlook_shot", [level.arash, level.var_e2e0716f]);
    level thread scene::play_from_time("scene_tkd_hit3_intro_overlook", "overlook_shot", undefined);
    level thread scene::play_from_time("scene_tkd_hit3_intro_overlook_enemy4", "overlook_shot", undefined);
    level thread util::delay("play_b3.0_iced_mus", undefined, &music::function_edda155f, "b3.0_iced");
    level thread util::delay("play_b3.0_iced_mus", undefined, &music::setmusicstate, "b4.0_hold_fire");
    level thread util::delay("play_b4.1_identify_mus", undefined, &music::function_edda155f, "b4.1_identify");
    wait(1);
    level.player val::set(#"hash_50cb2a8c58c8ad4", "ignoreme", 1);
    wait(50);
    level thread namespace_31c67f6d::function_abeb9b2d("white_screen_over", 1, 1, 0, 3);
    level.arash dialogue::queue("vox_cp_sh8_00010_adlr_voweweretherewe_12");
    waitframe(1);
    thread function_cd682321(guys, plane);
    snd::function_7db65a93(#"hash_5c379cf8b486919b");
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0x4d8578fd, Offset: 0x2368
// Size: 0x14
function function_f8e379f0() {
    thread namespace_31c67f6d::function_77a7721();
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0xaf5a29a3, Offset: 0x2388
// Size: 0xa4
function function_82ab6677() {
    level waittill(#"hash_2b4e106c6a717410");
    level.player setcinematicmotionoverride("default_cinematicmotion");
    level.player stoprumble("chopper_gunner_rumble_intro");
    var_fe4a8480 = getent("intel_dossier", "targetname");
    var_fe4a8480 setmodel("p9_sr_evidence_perseus_bloody_dossier_01a_anim");
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0x6930f35a, Offset: 0x2438
// Size: 0xe4
function function_f406d0f4() {
    level.player val::set("intro_player_anim", "takedamage", 1);
    level waittill(#"hash_5f328340bea67520");
    level.player dodamage(20, level.player.origin + (0, 0, 60));
    level waittill(#"hash_5f328340bea67520");
    level.player dodamage(20, level.player.origin + (0, 0, 60));
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 1, eflags: 0x2 linked
// Checksum 0x8e6d2dd1, Offset: 0x2528
// Size: 0xa0
function function_c6f0c41a(guys) {
    foreach (guy in guys) {
        guy val::set("tarmac", "ignoreall", 1);
    }
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 2, eflags: 0x2 linked
// Checksum 0xf87a7e8a, Offset: 0x25d0
// Size: 0x18c
function function_cd682321(guys, plane) {
    level thread scene::stop("scene_hub_post_prisoner_flashback_overlook", 1);
    level thread scene::stop("scene_tkd_hit3_intro_overlook", 1);
    level thread scene::stop("scene_tkd_hit3_intro_overlook_enemy4", 1);
    plane thread scene::stop("scene_tkd_hit3_chase_plane", 1);
    foreach (guy in guys) {
        if (isdefined(guy)) {
            guy delete();
        }
    }
    if (isdefined(plane)) {
        plane delete();
    }
    if (isdefined(level.arash)) {
        level.arash delete();
    }
    if (isdefined(level.var_e2e0716f)) {
        level.var_e2e0716f delete();
    }
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0xdbbeaa45, Offset: 0x2768
// Size: 0x278
function function_5431431d() {
    plane = getent("cargo_plane", "targetname");
    plane notsolid();
    var_853687bd = getentarray("af_plane_triggers", "targetname");
    var_853687bd = arraycombine(var_853687bd, getentarray("plane_floor_clip", "targetname"));
    var_853687bd = arraycombine(var_853687bd, getentarray("plane_cargo", "targetname"));
    foreach (thing in var_853687bd) {
        thing enablelinkto();
        thing linkto(plane, "tag_body_animate");
    }
    scene::add_scene_func("scene_tkd_hit3_chase_plane", &function_d804fc99, "init");
    plane thread scene::init("scene_tkd_hit3_chase_plane");
    thread function_d60a1c78(plane);
    level.af_plane = plane;
    level.var_c7b3a621 = util::spawn_model("tag_origin", plane.origin - (200, 0, 175), plane.angles);
    level.var_c7b3a621 linkto(plane);
    function_c8381339(plane, 1);
    return plane;
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 2, eflags: 0x2 linked
// Checksum 0x90c87d7c, Offset: 0x29e8
// Size: 0x33c
function function_c8381339(plane, var_857b0901) {
    probe = getent("cargo_probe_1", "targetname");
    if (isdefined(probe)) {
        probe linkto(plane, "tag_body_animate", (-24, 0, 24), (0, 0, 0));
    }
    probe = getent("cargo_probe_2", "targetname");
    if (isdefined(probe)) {
        probe linkto(plane, "tag_body_animate", (-152, 0, 24), (0, 0, 0));
    }
    probe = getent("cargo_probe_3", "targetname");
    if (isdefined(probe)) {
        probe linkto(plane, "tag_body_animate", (-288, 0, 24), (0, 0, 0));
    }
    probe = getent("cargo_probe_4", "targetname");
    if (isdefined(probe)) {
        probe linkto(plane, "tag_body_animate", (-408, 0, -40), (0, 0, 0));
    }
    if (var_857b0901) {
        probe = getent("cargo_probe_5", "targetname");
        if (isdefined(probe)) {
            probe linkto(plane, "tag_body_animate", (-72, 0, -88), (0, 0, 0));
        }
        probe = getent("cargo_probe_6", "targetname");
        if (isdefined(probe)) {
            probe linkto(plane, "tag_body_animate", (72, 280, -48), (0, 0, 0));
        }
        probe = getent("cargo_probe_7", "targetname");
        if (isdefined(probe)) {
            probe linkto(plane, "tag_body_animate", (72, -280, -48), (0, 0, 0));
        }
        probe = getent("cargo_probe_8", "targetname");
        if (isdefined(probe)) {
            probe linkto(plane, "tag_body_animate", (-664, 200, -40), (0, 0, 0));
        }
        probe = getent("cargo_probe_9", "targetname");
        if (isdefined(probe)) {
            probe linkto(plane, "tag_body_animate", (-664, -200, -40), (0, 0, 0));
        }
    }
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 1, eflags: 0x2 linked
// Checksum 0x4d3678f9, Offset: 0x2d30
// Size: 0x148
function function_d804fc99(a_ents) {
    var_936fb5e7 = ["Prop 1", "Prop 2", "Prop 3", "Prop 4"];
    foreach (prop in var_936fb5e7) {
        if (isdefined(a_ents[prop]) && !isdefined(a_ents[prop].clip)) {
            clip = getent(prop, "script_noteworthy");
            a_ents[prop].clip = clip;
            clip linkto(a_ents[prop], undefined, (0, 0, 0), (0, 0, 0));
        }
    }
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 1, eflags: 0x2 linked
// Checksum 0x251e7fa2, Offset: 0x2e80
// Size: 0x6c
function function_d60a1c78(plane) {
    wait(0.2);
    level.plane_mover = util::spawn_model("tag_origin", plane.origin, plane.angles);
    plane linkto(level.plane_mover, undefined, (0, 0, 0), (0, 0, 0));
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0x7308a4fd, Offset: 0x2ef8
// Size: 0x44
function function_5dd4ff85() {
    level waittill(#"hash_59132013626fbab6");
    level thread scene::play("scene_tkd_hit3_intro_overlook_enemy4", "overlook_shot");
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0x81679744, Offset: 0x2f48
// Size: 0x1ec
function function_f7c7ce51() {
    level.driver = ai::array_spawn("driver")[0];
    level.driver.var_c681e4c1 = 1;
    level.arash = ai::array_spawn("arash")[0];
    level.arash.var_c681e4c1 = 1;
    level.var_518cefe2 = ai::array_spawn("af_enemy1")[0];
    level.var_518cefe2.var_c681e4c1 = 1;
    level.var_fac9425c = ai::array_spawn("af_enemy2")[0];
    level.var_fac9425c.var_c681e4c1 = 1;
    level.af_enemy3 = ai::array_spawn("af_enemy3")[0];
    level.af_enemy3.var_c681e4c1 = 1;
    level.af_enemy4 = ai::array_spawn("af_enemy4")[0];
    level.af_enemy4.var_c681e4c1 = 1;
    weapon = getweapon(#"hash_7b2fff6ff4ea2c93");
    level.arash aiutility::setprimaryweapon(weapon);
    level.arash ai::gun_switchto(weapon, "right");
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0xce2f6d64, Offset: 0x3140
// Size: 0x40
function function_78bc26d5() {
    self vehicle::lights_on();
    self vehicle::toggle_force_driver_taillights(1);
    level.var_e2e0716f = self;
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0xf0370501, Offset: 0x3188
// Size: 0xdc
function function_8c5e0f4f() {
    level thread namespace_4ed3ce47::function_f526df02();
    wait(1);
    level util::create_streamer_hint((19, -597, 46), (-10, -77, -2), 1, 1000);
    level function_55851873(#"hash_6ebae1c8430f4e3d");
    level thread scene::play(level.str_scene_name, "dt_03_waiting_idle", level.var_58ccee4);
    level thread namespace_31c67f6d::function_abeb9b2d(2.25, 1, 1, 1);
    wait(0.25);
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0xb5c2d84b, Offset: 0x3270
// Size: 0x15c
function function_3c0e1eab() {
    wait(2);
    level.adler.var_eae6f6e1 = dialog_tree::function_82b16606(undefined, undefined, 1, 1, level.str_scene_name);
    level.adler.var_eae6f6e1 dialog_tree::function_58d27b23(#"hash_72bc6a5ab99e461d", undefined, "dt_3ab", "character_creation", 1, undefined, undefined, &function_1af4ad41);
    level.adler.var_eae6f6e1 dialog_tree::function_58d27b23(#"hash_72b8825ab99a860e", undefined, "dt_3ab", "character_creation", 1, undefined, undefined, &function_1af4ad41);
    level dialog_tree::function_21780fc5(level.adler.var_eae6f6e1, array(240, 650));
    level.adler.var_eae6f6e1 dialog_tree::run(level.adler);
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0x26da5719, Offset: 0x33d8
// Size: 0x44
function function_1af4ad41() {
    level waittill(#"hash_77c12f83fb0438ea");
    level thread namespace_31c67f6d::function_abeb9b2d(0.25, 1, 1, undefined, 1);
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0x2bfa8c6b, Offset: 0x3428
// Size: 0x88
function function_b96d7941() {
    wait(1);
    level.player thread namespace_70eba6e6::function_5a4cb86d(0, 0);
    wait(0.25);
    function_80996e77();
    level thread namespace_31c67f6d::function_abeb9b2d("white_screen_over", 1, 1, undefined, 1);
    wait(1);
    level notify(#"personnel_profile_closed");
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0x865e9318, Offset: 0x34b8
// Size: 0x6a
function function_80996e77() {
    level.adler dialogue::queue("vox_cp_sh8_00010_adlr_weneededtogivey_ee");
    wait(1);
    level.adler util::dialog_faction_vo("vox_cp_sh8_00010_adlr_simsandibothwan_44", "vox_cp_sh8_00010_adlr_itwasparksideat_fd", "vox_cp_sh8_00010_adlr_hudsonthoughtwe_d6", "vox_cp_sh8_00010_adlr_intheendnospeci_e0");
    wait(1);
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0xf976b1c0, Offset: 0x3530
// Size: 0xc4
function function_4f7ea045() {
    level thread scene::play(level.str_scene_name, "dt_04_waiting_idle", level.var_58ccee4);
    level thread function_4af4a400();
    level function_55851873(#"hash_79f67753e1008c25");
    level thread namespace_31c67f6d::function_abeb9b2d(0.25, 1, 1, 1);
    level.player val::set("safehouse", "freezecontrols_allowlook", 1);
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0x1383aeb3, Offset: 0x3600
// Size: 0x24
function function_4af4a400() {
    level.adler dialogue::queue("vox_cp_sh8_00010_adlr_andwewereableto_cd");
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0x974885a9, Offset: 0x3630
// Size: 0x2c
function function_40dc24e2() {
    thread function_d8f4275c();
    level waittill(#"hash_77c12f83fb0438ea");
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0x519e8708, Offset: 0x3668
// Size: 0x64
function function_d8f4275c() {
    level scene::play(level.str_scene_name, "mind_control_explanation", level.var_58ccee4);
    level thread scene::play(level.str_scene_name, "dt_04_waiting_idle", level.var_58ccee4);
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0x921bdf8, Offset: 0x36d8
// Size: 0xd4
function function_af645aa() {
    level thread namespace_4ed3ce47::function_3f60bc38();
    level thread namespace_31c67f6d::function_abeb9b2d("white_screen_over", 1, 1, undefined, 1);
    wait(0.25);
    wait(1);
    level thread scene::play(level.str_scene_name, "dt_04_waiting_idle", level.var_58ccee4);
    level function_55851873(#"hash_567390b2aed44f14");
    level thread namespace_31c67f6d::function_abeb9b2d(0.25, 1, 1, 1);
    wait(0.25);
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0xf9e6e25d, Offset: 0x37b8
// Size: 0x19c
function function_49bbba06() {
    level thread namespace_4ed3ce47::function_4825c155();
    wait(2);
    level.adler.var_d924535c = dialog_tree::function_82b16606(undefined, undefined, 1, 1, level.str_scene_name);
    level.adler.var_d924535c dialog_tree::function_58d27b23(#"hash_4543be1afb05e83a", undefined, "dt_4a", "dt_04_waiting_idle");
    level.adler.var_d924535c dialog_tree::function_58d27b23(#"hash_4546a61afb07f549", undefined, "dt_4b", "dt_04_waiting_idle");
    level.adler.var_d924535c.var_2fad984e = level.adler.var_d924535c dialog_tree::function_58d27b23(#"hash_454a8a1afb0bae8c", undefined, "dt_4c", "dt_05_waiting_idle", 1);
    level dialog_tree::function_21780fc5(level.adler.var_d924535c, array(240, 650));
    level.adler.var_d924535c dialog_tree::run(level.adler);
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0x38c65f7, Offset: 0x3960
// Size: 0x184
function function_96eb5464() {
    level thread scene::play(level.str_scene_name, "dt_05_waiting_idle", level.var_58ccee4);
    level.adler.var_5900d313 = dialog_tree::function_82b16606(undefined, undefined, 1, 1, level.str_scene_name);
    level.adler.var_5900d313 dialog_tree::function_58d27b23(#"hash_454a8d1afb0bb3a5", undefined, "dt_5a", "dt_05_waiting_idle", 1, undefined, undefined, &function_495d14d2);
    level.adler.var_5900d313 dialog_tree::function_58d27b23(#"hash_4532821afaf70f13", undefined, "dt_5b", "dt_05_waiting_idle", 1, undefined, undefined, &function_495d14d2);
    level dialog_tree::function_21780fc5(level.adler.var_5900d313, array(240, 650));
    level.adler.var_5900d313 dialog_tree::run(level.adler);
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0x5c8422eb, Offset: 0x3af0
// Size: 0x64
function function_495d14d2() {
    level waittill(#"hash_77c12f83fb0438ea");
    level thread namespace_31c67f6d::function_abeb9b2d("white_screen_over", 1, 1, undefined, 1);
    wait(1);
    level.adler scene::stop();
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0x672d0286, Offset: 0x3b60
// Size: 0x5c
function function_47f7d061() {
    wait(0.25);
    level function_55851873(#"hash_414a0ea2bb7b7c1a");
    level thread namespace_31c67f6d::function_abeb9b2d(0.5, 1, 1, 1);
    wait(0.05);
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x3bc8
// Size: 0x4
function function_558f09c7() {
    
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0x3db70ff5, Offset: 0x3bd8
// Size: 0xcc
function function_8c6c6957() {
    thread function_a5852747();
    level waittill(#"hash_77c12f83fb0438ea");
    level thread namespace_4ed3ce47::function_85d1dd20();
    level thread namespace_31c67f6d::function_abeb9b2d("white_screen_over", 1, 1, undefined, 1);
    wait(0.25);
    wait(1);
    level function_55851873(#"hash_6c55001895364f06");
    level thread namespace_31c67f6d::function_abeb9b2d(0.25, 1, 1, 1);
    wait(0.05);
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0x4b5922a2, Offset: 0x3cb0
// Size: 0x4c
function function_a5852747() {
    level scene::play(level.str_scene_name, "red_door_explanation", level.var_58ccee4);
    level thread namespace_4ed3ce47::function_32eb5fd4();
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0xb661a162, Offset: 0x3d08
// Size: 0xc4
function function_855165f7() {
    thread function_ab7cf798();
    level waittill(#"hash_77c12f83fb0438ea");
    level thread namespace_31c67f6d::function_abeb9b2d("white_screen_over", 1, 1, undefined, 1);
    wait(0.25);
    wait(1);
    level thread namespace_4ed3ce47::function_d73cc011();
    level function_55851873(#"hash_62923ce4f14e135");
    level thread namespace_31c67f6d::function_abeb9b2d(0.25, 1, 1, 1);
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x3dd8
// Size: 0x4
function function_d1620daa() {
    
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0x23679ac7, Offset: 0x3de8
// Size: 0x84
function function_ab7cf798() {
    level scene::play(level.str_scene_name, "adlers_plea", level.var_58ccee4);
    level thread scene::play(level.str_scene_name, "dt_06_waiting_idle", level.var_58ccee4);
    level flag::set("adler_done_with_plea");
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0xa19af11b, Offset: 0x3e78
// Size: 0x254
function function_a53df109() {
    level thread namespace_4ed3ce47::function_7aef4705();
    level flag::wait_till("adler_done_with_plea");
    level scene::play(level.str_scene_name, "dt_06_enter", level.var_58ccee4);
    level thread scene::play(level.str_scene_name, "dt_06_waiting_idle", level.var_58ccee4);
    var_b688fbdc = struct::get("hint_projector_remote", "targetname");
    level.var_5538ea31 = util::spawn_model("tag_origin", var_b688fbdc.origin, var_b688fbdc.angles);
    level thread function_688ad7f0();
    level.adler.var_37378f81 = dialog_tree::function_82b16606(undefined, undefined, 1, 1, level.str_scene_name);
    level.adler.var_37378f81 dialog_tree::function_58d27b23(#"hash_52b14f9f73548cd5", undefined, undefined, undefined, 1, undefined, "forever", &function_46d26798);
    level.adler.var_37378f81 dialog_tree::function_58d27b23(#"hash_6bbcd96077b1429a", undefined, undefined, undefined, 1, undefined, "forever", &function_f1eacff2);
    level dialog_tree::function_21780fc5(level.adler.var_37378f81, array(240, 650));
    level.adler.var_37378f81 dialog_tree::run(level.adler);
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0x746a6a07, Offset: 0x40d8
// Size: 0x74
function function_688ad7f0() {
    level endon(#"hash_7c4cadf8854821e0");
    level.player thread dialogue::radio("vox_cp_sh8_00010_pers_fromthesafetyof_d1_1", undefined, 1);
    wait(4);
    level.player thread dialogue::radio("vox_cp_sh8_00010_pers_solovetsky_fb", undefined, 1);
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0x92985cd7, Offset: 0x4158
// Size: 0x9c
function function_46d26798() {
    level notify(#"hash_7c4cadf8854821e0");
    level scene::play(level.str_scene_name, "dt_6a", level.var_58ccee4);
    level thread function_5662c89e("str_truth");
    wait(17);
    level flag::set("flag_post_prisoner_truth");
    player_decision::function_8c0836dd(0);
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0x14321c48, Offset: 0x4200
// Size: 0x23c
function function_f1eacff2() {
    level notify(#"hash_7c4cadf8854821e0");
    level scene::play(level.str_scene_name, "dt_6b", level.var_58ccee4);
    level thread function_5662c89e("str_lie");
    level.adler thread entname::add(#"hash_7edabf22111a04da", #"axis");
    level.adler setteam(#"axis");
    level.sims thread entname::add(#"hash_726674254495739e", #"axis");
    level.sims setteam(#"axis");
    if (isdefined(level.lazar)) {
        level.lazar thread entname::add(#"hash_6a46f5c74f586cb6", #"axis");
        level.lazar setteam(#"axis");
    }
    if (isdefined(level.park)) {
        level.park thread entname::add(#"hash_a0d642b09afc71a", #"axis");
        level.park setteam(#"axis");
    }
    wait(14);
    level flag::set("flag_post_prisoner_lie");
    player_decision::function_8c0836dd(1);
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 1, eflags: 0x2 linked
// Checksum 0x79a3800f, Offset: 0x4448
// Size: 0x9c
function function_5662c89e(str_state) {
    level thread function_f2c15144(str_state);
    level thread function_3606874a();
    level scene::play(level.str_scene_name, "dt_06_exit", level.var_58ccee4);
    level thread scene::play(level.str_scene_name, "zone_idle", level.var_58ccee4);
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 1, eflags: 0x2 linked
// Checksum 0xa1d6df44, Offset: 0x44f0
// Size: 0x15c
function function_f2c15144(str_state) {
    if (str_state == "str_lie") {
        level waittill(#"hash_4d17a18e02811363");
        playsoundatposition("vox_cp_sh8_00010_adlr_simsgetwashingt_5a_1", level.adler gettagorigin("j_neck"));
        level waittill(#"hash_2c4c87e30305fbaa");
        playsoundatposition("vox_cp_sh8_00010_adlr_youmadetheright_ea_1", level.adler gettagorigin("j_neck"));
        return;
    }
    level waittill(#"hash_4d17a18e02811363");
    playsoundatposition("vox_cp_sh8_00010_adlr_simsgetwashingt_5a", level.adler gettagorigin("j_neck"));
    level waittill(#"hash_2c4c87e30305fbaa");
    playsoundatposition("vox_cp_sh8_00010_adlr_youmadetheright_ea", level.adler gettagorigin("j_neck"));
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0xc677c687, Offset: 0x4658
// Size: 0xdc
function function_3606874a() {
    level waittill(#"hash_53021dd99bc5b45e");
    level.adler dialogue::queue("vox_cp_sh8_00020_adlr_adler_16");
    wait(3);
    level.adler dialogue::queue("vox_cp_sh8_00020_adlr_right_2c");
    wait(3);
    level.adler dialogue::queue("Vox_cp_sh8_00020_adlr_yeah_c6");
    wait(5);
    level.adler dialogue::queue("Vox_cp_sh8_00020_adlr_wellleavewithin_dc");
    wait(5);
    level.adler dialogue::queue("Vox_cp_sh8_00020_adlr_wewontletthepre_39");
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0x38d6e511, Offset: 0x4740
// Size: 0x34
function function_dbf5481b() {
    level thread namespace_4ed3ce47::function_dd79396d();
    level thread namespace_4ed3ce47::function_d3856f8a();
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0xea486cfd, Offset: 0x4780
// Size: 0x4c
function function_49369331() {
    level thread namespace_4ed3ce47::function_849d7772();
    level thread namespace_4ed3ce47::function_7f23d560();
    level thread namespace_4ed3ce47::function_ef8c9b18();
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 1, eflags: 0x0
// Checksum 0x6e7d769b, Offset: 0x47d8
// Size: 0x9c
function function_c649acda(*var_d3440450) {
    level thread scene::play(level.str_scene_name, "zone_idle", level.var_58ccee4);
    level thread exploder::exploder("exp_post_armada_lazar_workbench");
    level thread namespace_31c67f6d::function_b0558ba2("8");
    level flag::set("flag_post_prisoner_lie");
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 1, eflags: 0x2 linked
// Checksum 0x53f7e85f, Offset: 0x4880
// Size: 0x48
function function_55851873(str_scene_name) {
    level lui::play_movie(str_scene_name, "fullscreen", 0, 0);
    level notify(#"hash_1ef111b68fdd0da2");
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 1, eflags: 0x0
// Checksum 0x525d02c5, Offset: 0x48d0
// Size: 0x9c
function function_6be7ec40(*var_d3440450) {
    level thread scene::play(level.str_scene_name, "zone_idle", level.var_58ccee4);
    level thread exploder::exploder("exp_post_armada_lazar_workbench");
    level thread namespace_31c67f6d::function_b0558ba2("8");
    level flag::set("flag_post_prisoner_truth");
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 2, eflags: 0x0
// Checksum 0x6cc56057, Offset: 0x4978
// Size: 0xd4
function function_82c37b22(var_d3440450, *var_50cc0d4f) {
    while (!isdefined(level.player_connected) || isdefined(level.player_connected) && level.player_connected != 1) {
        waitframe(1);
    }
    if (isdefined(level.var_d7d201ba) && isdefined(level.var_28c22d88)) {
        level.player flag::set(level.var_d7d201ba);
    }
    level function_d6d3bd92();
    if (isdefined(var_50cc0d4f)) {
        skipto::function_4e3ab877(var_50cc0d4f);
    }
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0x60c01b37, Offset: 0x4a58
// Size: 0x1d4
function function_d6d3bd92() {
    if (level flag::get("flag_post_prisoner_truth")) {
        wait(5);
        skipto::function_1c2dfc20("cp_rus_siege");
        return;
    }
    if (level flag::get("flag_post_prisoner_lie")) {
        level thread savegame::function_7790f03();
        level thread namespace_4ed3ce47::function_e25181b5();
        level.player enableweapons();
        level.player playgestureviewmodel("dem_lowreadyup");
        level.player val::set("safehouse", "freezecontrols_allowlook", 0);
        level.player val::set("safehouse", "allow_jump", 1);
        wait(3);
        level thread function_af3dcba6();
        wait(7);
        level thread function_2a020b14();
        level flag::wait_till_all_timeout(30, array("flag_post_prisoner_radio"));
        if (level flag::get("flag_post_prisoner_radio")) {
            wait(5);
        }
        skipto::function_1c2dfc20("cp_rus_duga");
    }
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0x1032eca1, Offset: 0x4c38
// Size: 0x480
function function_af3dcba6() {
    level.player notify(#"hash_542efe3d2dcb6459");
    level thread scene::play("scene_hub_env_chain_link_gate");
    var_e7a55046 = getent("chain_link_gate_clip", "targetname");
    if (isdefined(var_e7a55046)) {
        var_e7a55046 delete();
    }
    struct = struct::get("struct_obj_radio", "targetname");
    objectives::function_4eb5c04a("radio_objective", struct.origin + (0, 0, 8), #"hash_6d27d69a4d24a684", 1, undefined, #"hash_5099fd7b8025bec5");
    objectives::function_6a43edf3("radio_objective");
    namespace_96850e69::function_49dec5b("radio_objective", undefined, #"hash_696adfeed5b67f39");
    waitframe(1);
    e_tag = spawn("script_model", struct.origin);
    e_tag setmodel("tag_origin");
    level thread function_cb6a2e9b();
    while (true) {
        if (level flag::get("flag_post_prisoner_radio")) {
            return;
        }
        e_tag util::create_cursor_hint("tag_origin", (0, 0, 8), #"hash_696adfeed5b67f39");
        level thread function_b93309a5(e_tag, "radio_objective");
        e_tag waittill(#"trigger");
        level.player playrumbleonentity("damage_light");
        level.player val::set("safehouse_dt", "freezecontrols", 1);
        level.player val::set("safehouse_dt", "allow_crouch", 0);
        level.player val::set("safehouse_dt", "allow_prone", 0);
        level.player val::set("safehouse_dt", "allow_stand", 1);
        var_93193d3a = dialog_tree::function_82b16606(undefined, undefined, 1, 1);
        var_93193d3a dialog_tree::function_58d27b23(#"hash_55ea9de6f02d4ad8", undefined, undefined, undefined, 1, undefined, undefined, &function_8bd27331, e_tag);
        var_93193d3a dialog_tree::function_58d27b23(#"hash_6dac763351e3c08c", undefined, undefined, undefined, 1);
        var_93193d3a dialog_tree::run(var_93193d3a);
        wait(1);
        level.player val::set("safehouse_dt", "freezecontrols", 0);
        level.player val::set("safehouse_dt", "allow_crouch", 1);
        level.player val::set("safehouse_dt", "allow_prone", 1);
        level.player val::set("safehouse_dt", "allow_stand", 1);
    }
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 1, eflags: 0x2 linked
// Checksum 0x4077cbdb, Offset: 0x50c0
// Size: 0x184
function function_8bd27331(e_tag) {
    level notify(#"hash_4185bee517600b33");
    namespace_4ed3ce47::function_8bd27331();
    playsoundatposition("vox_cp_sh8_00010_rms1_yessir_1e", e_tag.origin);
    objectives::complete("radio_objective");
    level.player player_decision::function_cde4f4e9(1);
    player_decision::function_8c0836dd(2);
    waitframe(1);
    level flag::set("flag_post_prisoner_radio");
    wait(1);
    level.player val::set("safehouse_dt", "freezecontrols", 0);
    level.player val::set("safehouse_dt", "allow_crouch", 1);
    level.player val::set("safehouse_dt", "allow_prone", 1);
    level.player val::set("safehouse_dt", "allow_stand", 1);
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 2, eflags: 0x2 linked
// Checksum 0xaaec6bb4, Offset: 0x5250
// Size: 0xf4
function function_b93309a5(e_tag, str_objective) {
    e_tag endon(#"trigger");
    while (true) {
        var_9da15859 = distance2dsquared(e_tag.origin, level.player.origin);
        if (var_9da15859 <= 57600) {
            objectives::hide(str_objective);
            while (true) {
                var_9da15859 = distance2dsquared(e_tag.origin, level.player.origin);
                if (var_9da15859 > 57600) {
                    objectives::show(str_objective);
                    break;
                }
                waitframe(1);
            }
        }
        waitframe(1);
    }
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0x35def5bd, Offset: 0x5350
// Size: 0x44
function function_2a020b14() {
    collision = getent("gurney_collision", "targetname");
    collision show();
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0xf6613b7a, Offset: 0x53a0
// Size: 0x24
function function_c21e258e() {
    level.player player_decision::function_cde4f4e9(0);
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 1, eflags: 0x0
// Checksum 0x7c35860e, Offset: 0x53d0
// Size: 0xc
function function_fb10b77d(*var_d3440450) {
    
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 2, eflags: 0x0
// Checksum 0x1163ba3c, Offset: 0x53e8
// Size: 0x254
function function_cbf93ca7(*var_d3440450, *var_50cc0d4f) {
    level thread namespace_31c67f6d::function_f2cd5fc0();
    level namespace_31c67f6d::function_1f4ed1b4("dev_burn_safehouse");
    level scene::init("scene_hub_safehouse_burns");
    level thread function_49369331();
    level thread namespace_31c67f6d::function_b0558ba2("1");
    while (!isdefined(level.player_connected) || isdefined(level.player_connected) && level.player_connected != 1) {
        waitframe(1);
    }
    wait(3);
    level.player stopgestureviewmodel();
    if (isdefined(level.var_d7d201ba) && isdefined(level.var_28c22d88)) {
        level.player flag::set(level.var_d7d201ba);
    }
    setlightingstate(1);
    level.var_3b87c282 = getdvar(#"hash_7b06b8037c26b99b");
    setdvar(#"hash_7b06b8037c26b99b", 255);
    animation::add_notetrack_func("hub_post_prisoner::burn_pstfx", &function_95b1e0d9);
    thread function_374843a();
    thread function_62a6be7();
    scene::play("scene_hub_safehouse_burns");
    setdvar(#"hash_7b06b8037c26b99b", level.var_3b87c282);
    level waittill(#"forever");
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 1, eflags: 0x2 linked
// Checksum 0xd5148b9a, Offset: 0x5648
// Size: 0x34
function function_95b1e0d9(*player) {
    level.player clientfield::set_to_player("clf_pstfx_burn_safehouse", 1);
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0x259c9861, Offset: 0x5688
// Size: 0x2c
function function_374843a() {
    level waittill(#"hash_32de83776213afe5");
    namespace_4ed3ce47::function_89070bfe();
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0x205afb8e, Offset: 0x56c0
// Size: 0x2c
function function_62a6be7() {
    level waittill(#"hash_50e95b22fb132786");
    namespace_4ed3ce47::function_8d5b23ae();
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 4, eflags: 0x0
// Checksum 0x54293fb4, Offset: 0x56f8
// Size: 0x24
function function_6bb0fd28(*str_objective, *var_50cc0d4f, *var_aa1a6455, *player) {
    
}

// Namespace namespace_fdde5f3d/namespace_db1ba63f
// Params 0, eflags: 0x2 linked
// Checksum 0xf461a861, Offset: 0x5728
// Size: 0x6c
function function_cb6a2e9b() {
    wait(7);
    level thread namespace_ae270045::function_cfcd9b92(30, #"hash_1f7c6dd82a346f10");
    level waittill(#"hash_56a61cb4fe8b8e79");
    level flag::set("mission_timer_fail");
}

