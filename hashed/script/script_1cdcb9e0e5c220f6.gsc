#using script_16a28d93ee216f6f;
#using script_1fd2c6e5fc8cb1c3;
#using script_32399001bdb550da;
#using script_3b82b8c68189025e;
#using script_3dc93ca9902a9cda;
#using script_44aef2868ad2e317;
#using script_47734f62e0b3b388;
#using script_48a4cce0f86a3f65;
#using script_4ccd0c3512b52a10;
#using script_4ec222619bffcfd1;
#using script_5450c003e8a913b7;
#using script_5513c8efed5ff300;
#using script_779f525443585713;
#using script_7d0013bbc05623b9;
#using scripts\core_common\ai_shared;
#using scripts\core_common\animation_shared;
#using scripts\core_common\array_shared;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\doors_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\gameobjects_shared;
#using scripts\core_common\lui_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\spawner_shared;
#using scripts\core_common\stealth\threat_sight;
#using scripts\core_common\stealth\utility;
#using scripts\core_common\struct;
#using scripts\core_common\trigger_shared;
#using scripts\core_common\util_shared;
#using scripts\core_common\values_shared;
#using scripts\cp\cp_rus_kgb;
#using scripts\cp_common\dialogue;
#using scripts\cp_common\gametypes\globallogic_ui;
#using scripts\cp_common\objectives;
#using scripts\cp_common\skipto;
#using scripts\cp_common\snd;
#using scripts\cp_common\util;

#namespace kgb_ins_rv;

// Namespace kgb_ins_rv/namespace_2de23526
// Params 1, eflags: 0x0
// Checksum 0xf2ced8f5, Offset: 0xba0
// Size: 0x7c
function starting(*var_d3440450) {
    level thread namespace_e77bf565::function_277bceaa(1);
    level thread scene::init("scene_kgb_poison_tea");
    level thread scene::init("scene_kgb_elevator_holdup");
    namespace_e77bf565::function_e2e72d4(0);
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 2, eflags: 0x0
// Checksum 0x96928ae6, Offset: 0xc28
// Size: 0x1ec
function main(var_d3440450, var_50cc0d4f) {
    level thread function_9987ec40();
    level scene::add_scene_func("scene_kgb_walkup_charkov", &function_ec6bb2ec);
    level thread function_57279bf6();
    if (is_true(var_50cc0d4f)) {
        level thread scene::init("scene_kgb_walkup_adler");
        namespace_5f58ebe5::function_52f0fcb3(var_d3440450);
        namespace_5f58ebe5::function_84d00884();
        level thread namespace_99e99ffa::function_99e99ffa(var_d3440450);
        level thread namespace_e77bf565::function_ada6d016();
        level thread namespace_5f58ebe5::function_799b3854();
        level thread function_1f4d29f8();
        level thread namespace_e77bf565::function_1067ebf5("rotating_object_inside_man", "team_in_elevator");
    }
    level flag::set("no_corpse_pickup");
    level flag::wait_till("ins_rv_complete");
    level thread namespace_e77bf565::function_8191bcdc();
    level flag::clear("no_corpse_pickup");
    if (isdefined(var_d3440450)) {
        skipto::function_4e3ab877(var_d3440450);
    }
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 4, eflags: 0x0
// Checksum 0xe5d54c66, Offset: 0xe20
// Size: 0x24
function cleanup(*name, *starting, *direct, *player) {
    
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 0, eflags: 0x0
// Checksum 0xc15af2bc, Offset: 0xe50
// Size: 0x204
function init_flags() {
    level flag::init("ins_rv_complete");
    level flag::init("flag_player_swap");
    level flag::init("flag_player_swap_complete");
    level flag::init("flag_takedown_success");
    level flag::init("flag_elevator_activated");
    level flag::init("remove_takedown_prompt");
    level flag::init("remove_clothing_prompt");
    level flag::init("flag_prep_elevator");
    level flag::init("flag_checkpoint_done");
    level flag::init("flag_player_bag");
    level flag::init("flag_player_passed_checkpoint");
    level flag::init("flag_start_rv_bread");
    level flag::init("flag_gate_pass");
    level flag::init("checkpoint_crossed");
    level flag::init("flag_door_picked");
    level flag::init("flag_fake_touch");
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x1060
// Size: 0x4
function init_clientfields() {
    
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 0, eflags: 0x0
// Checksum 0xe98cab89, Offset: 0x1070
// Size: 0x34
function function_22b7fffd() {
    spawner::add_spawn_function_group("prison_guys", "script_noteworthy", &function_c1e43496);
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 0, eflags: 0x0
// Checksum 0xf7935b66, Offset: 0x10b0
// Size: 0x484
function function_1f4d29f8() {
    level flag::set("flag_start_rv_bread");
    if (isdefined(level.var_bbfad301)) {
        var_53aae2e9 = struct::get("prison_door_interact", "targetname");
        objectives::function_4eb5c04a(#"hash_7c076479fd71fa98", var_53aae2e9.origin, #"hash_4e76340f1479c31a");
        level.var_bbfad301 prompts::set_objective(#"hash_7c076479fd71fa98");
        level flag::wait_till("flag_open_basement");
    } else {
        var_b81aabcb = struct::get("rv_bread_2", "targetname");
        objectives::function_4eb5c04a(#"hash_7c076479fd71fa98", var_b81aabcb.origin, #"hash_4e76340f1479c31a");
    }
    level flag::wait_till_any(["flag_rv_bread_1", "flag_rv_bread_2", "flag_rv_bread_3", "flag_open_basement"]);
    var_b81aabcb = struct::get("rv_bread_2", "targetname");
    objectives::update_position(#"hash_7c076479fd71fa98", var_b81aabcb.origin);
    level flag::wait_till_any(["flag_rv_bread_2", "flag_rv_bread_3", "flag_rv_bread_4"]);
    var_a9f00f76 = struct::get("rv_bread_3", "targetname");
    objectives::update_position(#"hash_7c076479fd71fa98", var_a9f00f76.origin);
    level flag::wait_till_any(["flag_rv_bread_3", "flag_rv_bread_4"]);
    var_1accf12e = struct::get("rv_bread_4", "targetname");
    objectives::update_position(#"hash_7c076479fd71fa98", var_1accf12e.origin);
    level flag::wait_till("flag_rv_bread_4");
    var_c8754a3 = struct::get("struct_swap_door_handle", "targetname");
    objectives::update_position(#"hash_7c076479fd71fa98", var_c8754a3.origin);
    level flag::wait_till("flag_player_swap");
    callback::remove_on_ai_killed(&namespace_e77bf565::function_efb66186);
    namespace_e77bf565::function_a43c15af();
    level flag::clear("kgb_enable_context_melee");
    namespace_e77bf565::function_c4de67de();
    objectives::complete(#"hash_7c076479fd71fa98");
    namespace_353d803e::music("deactivate_6.0_basement");
    level flag::wait_till("flag_player_swap_complete");
    level thread function_eb4677fe();
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 0, eflags: 0x0
// Checksum 0x452ee28a, Offset: 0x1540
// Size: 0x244
function function_eb4677fe() {
    location = struct::get("struct_elevator_activate", "targetname");
    objectives::follow(#"hash_7013ad55135deb2e", [level.adler], #"hash_440a805ccf9d5df8", 0);
    level flag::wait_till("flag_aslt_entry_prompt_door");
    objectives::hide(#"hash_7013ad55135deb2e", [level.adler]);
    spot = struct::get("checkpoint_interact");
    objectives::function_4eb5c04a(#"hash_418d7e86c7441a8b", spot.origin, undefined, 0, 1);
    spot prompts::set_objective(#"hash_418d7e86c7441a8b");
    objectives_ui::function_49dec5b(#"hash_418d7e86c7441a8b", undefined, #"hash_1b2da47a0dd85d2d");
    level flag::wait_till("flag_aslt_entry_door");
    objectives::remove(#"hash_418d7e86c7441a8b");
    objectives::show(#"hash_7013ad55135deb2e", [level.adler]);
    level flag::wait_till("team_in_elevator");
    objectives::complete(#"hash_7013ad55135deb2e", [level.adler]);
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 0, eflags: 0x0
// Checksum 0xbe0a7c1e, Offset: 0x1790
// Size: 0xbc
function function_165e5918() {
    level endon(#"hash_43fb421b5c84be9d");
    var_2757e05d = ["vox_cp_rkgb_02000_blkv_adleriswaitingo_9d", "vox_cp_rkgb_02000_blkv_mykeycardtaskis_5b"];
    var_67f23465 = 25;
    for (count = 0; !level flag::get("flag_player_swap"); count++) {
        wait var_67f23465 + count * 5;
        level.players[0] thread objectives_ui::show_objectives();
    }
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 0, eflags: 0x0
// Checksum 0xacfe0140, Offset: 0x1858
// Size: 0x5c
function function_9987ec40() {
    level thread function_a459deb9();
    level flag::wait_till("flag_checkpoint_done");
    level flag::set("ins_rv_complete");
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 0, eflags: 0x0
// Checksum 0x924c794c, Offset: 0x18c0
// Size: 0x64
function function_57279bf6() {
    level thread scene::init("scene_kgb_prisoner_vignette");
    level flag::wait_till("flag_prison_scene");
    level thread scene::play("scene_kgb_prisoner_vignette");
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 1, eflags: 0x0
// Checksum 0xc8b8a09, Offset: 0x1930
// Size: 0x2a
function function_32137f1e(*prompt) {
    return level flag::get("flag_allow_boiler_door");
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 0, eflags: 0x0
// Checksum 0x73e70546, Offset: 0x1968
// Size: 0x8c4
function function_a459deb9() {
    level.player endon(#"death");
    level.player clientfield::set_to_player("stream_belikov_rv_assets", 1);
    var_d21147d1 = getent("basement_door_clip_open", "targetname");
    var_d21147d1 notsolid();
    level thread scene::init("scene_kgb_acquire_disguises_player");
    level flag::wait_till("flag_allow_boiler_door");
    struct = struct::get("struct_swap_door_handle", "targetname");
    struct util::create_cursor_hint(undefined, (0, 0, 0), #"hash_1b2da47a0dd85d2d", 32, 0.25, undefined, undefined, undefined, undefined, undefined, undefined, undefined, &function_32137f1e);
    struct prompts::set_objective(#"hash_7c076479fd71fa98");
    struct waittill(#"trigger");
    function_9b6d9815(1);
    level.var_aa67bce = namespace_e77bf565::function_e4660071(undefined);
    level.var_aa67bce.ignoreme = 1;
    level.var_aa67bce.ignoreall = 1;
    level.var_aa67bce util::stop_magic_bullet_shield();
    level.adler = namespace_e77bf565::function_52fe0eb3("kgb_ins_rv");
    level.adler.ignoreme = 1;
    level.adler.ignoreall = 1;
    level.adler namespace_e77bf565::function_5770c74("civ");
    doorclip = getent("basement_door_clip", "targetname");
    doorclip notsolid();
    var_d21147d1 solid();
    level.player setmovespeedscale(0.5);
    level notify(#"hash_43fb421b5c84be9d");
    level flag::set("flag_player_swap");
    level.player.ignoreme = 1;
    level.player.ignoreall = 1;
    level.player notify(#"show_itin");
    level thread function_4105690c();
    level notify(#"hash_2b4c93f5ce723277");
    function_ea00197c();
    level notify(#"hash_58a05e82d72c9b91");
    level thread function_4a8d44b7();
    level thread function_7c1c5aff("Fail", 0);
    util::delay_notify(6.5, "takedown_logic_cleanup");
    level waittill(#"hash_2a29732c8cdf857f");
    level thread function_44416c38();
    level thread scene::play("scene_kgb_acquire_disguises_inside", "Insideman_Exit");
    level thread scene::play("scene_kgb_acquire_disguises_player", "Insideman_Exit");
    level function_484bfb02();
    level.player clientfield::set_to_player("stream_belikov_rv_assets", 0);
    level thread scene::stop("scene_kgb_acquire_disguises_player");
    waitframe(1);
    level thread scene::init("scene_kgb_acquire_disguises_player");
    doorclip = getent("basement_door_clip", "targetname");
    doorclip solid();
    if (isdefined(var_d21147d1)) {
        var_d21147d1 delete();
    }
    level notify(#"hash_1f303ec0c8e6bc2b");
    level thread function_203098f4();
    level.adler namespace_e77bf565::function_5770c74();
    struct = struct::get("tag_align_security");
    door = getent("kgb_boiler_room_door", "targetname");
    door animation::first_frame("t9_kgb_walkup_boilerroom_door", struct.origin, struct.angles);
    level thread scene::play("scene_kgb_acquire_disguises_player", "Outro");
    level thread scene::play("scene_kgb_acquire_disguises_bag", "Outro");
    level scene::play("scene_kgb_acquire_disguises_actors", "Outro");
    level thread scene::init("scene_kgb_walkup_adler");
    level flag::set("flag_player_swap_complete");
    snd::client_msg(#"hash_260009c64f919000");
    thread namespace_353d803e::function_3390e801();
    level thread function_1e56b6d7();
    function_9b6d9815(0);
    level thread scene::play("scene_kgb_walkup_gate_guard", "Shot 1");
    level scene::play("scene_kgb_walkup_adler", "Shot 1", [level.adler]);
    level thread scene::play("scene_kgb_walkup_adler", "Shot 2", [level.adler]);
    level flag::wait_till("flag_aslt_upstairs");
    level thread kgb_aslt_entry::function_272c06e0();
    level flag::set("flag_prep_elevator");
    level thread scene::play("scene_kgb_walkup_gate_guard", "Shot 2");
    level thread scene::play("scene_kgb_walkup_adler", "Shot 3", [level.adler]);
    snd::client_msg(#"hash_66f0b482b018f16c");
    namespace_353d803e::music("8.2_cello_stingers_1");
    level flag::set("flag_checkpoint_done");
    level thread function_f59868de();
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 0, eflags: 0x0
// Checksum 0xc217b8c3, Offset: 0x2238
// Size: 0x24
function function_f59868de() {
    wait 15;
    level flag::set("flag_aslt_entry_prompt_door");
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 1, eflags: 0x0
// Checksum 0xe3e1848a, Offset: 0x2268
// Size: 0x3f4
function function_7f604b6c(a_ents) {
    level.player endon(#"death");
    var_6c8e469b = a_ents[#"guard1"];
    var_6c8e469b endon(#"entitydeleted");
    var_6c8e469b.ignoreme = 1;
    var_6c8e469b.ignoreall = 1;
    var_56c10933 = a_ents[#"guard2"];
    var_56c10933 endon(#"entitydeleted");
    var_56c10933.ignoreme = 1;
    var_56c10933.ignoreall = 1;
    var_4040d2b7 = "c_t9_cp_rus_kgb_hq_officer_nude_body1";
    var_732d50b1 = "c_t9_shg_npc_a_smirnov_kgb";
    level thread function_62724642();
    var_6c8e469b thread function_f5422572();
    var_56c10933 thread function_f5422572();
    var_dd7544b0 = level.player namespace_70eba6e6::function_33bf99f8(2);
    if (var_dd7544b0 == 2) {
        var_6c8e469b setmodel("c_t9_cp_rus_female_kgb_hq_officer_body1");
        var_6c8e469b detach(var_6c8e469b.head);
        if (isdefined(var_6c8e469b.hatmodel)) {
            var_6c8e469b detach(var_6c8e469b.hatmodel);
        }
        waitframe(1);
        var_6c8e469b attach("c_t9_ger_civ_female_head06");
        var_4040d2b7 = "c_t9_base_female_nude_body";
        var_732d50b1 = "c_t9_ger_civ_female_head01";
    } else {
        var_6c8e469b detach(var_6c8e469b.head);
        var_6c8e469b attach("c_t9_shg_npc_a_smirnov_kgb");
    }
    var_56c10933 detach(var_56c10933.head);
    waitframe(1);
    var_56c10933 attach("c_t9_shg_npc_e_reshetnikov_kgb");
    level waittill(#"hash_2a29732c8cdf857f");
    var_6c8e469b notsolid();
    var_56c10933 notsolid();
    level waittill(#"hash_1f303ec0c8e6bc2b");
    var_56c10933 setmodel("c_t9_cp_rus_kgb_hq_officer_nude_body1");
    var_6c8e469b setmodel(var_4040d2b7);
    if (var_dd7544b0 != 2) {
        var_6c8e469b detach(var_6c8e469b.head);
    }
    waitframe(1);
    if (var_dd7544b0 != 2) {
    }
    level.player thread cp_rus_kgb::function_e876a652("kgb_officer", 0);
    waitframe(1);
    if (isdefined(var_6c8e469b.hatmodel)) {
        var_6c8e469b detach(var_6c8e469b.hatmodel);
    }
    if (isdefined(var_56c10933.hatmodel)) {
        var_56c10933 detach(var_56c10933.hatmodel);
    }
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 0, eflags: 0x0
// Checksum 0x6d591227, Offset: 0x2668
// Size: 0xaa
function function_f5422572() {
    level.player endon(#"death");
    level endon(#"takedown_logic_cleanup");
    guy = self;
    while (true) {
        if (guy function_7f7143e4(level.player, 1) && !level.var_2f043e81) {
            level flag::set("flag_player_caught");
            break;
        }
        waitframe(1);
    }
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 0, eflags: 0x0
// Checksum 0xe6b45ed1, Offset: 0x2720
// Size: 0x8c
function function_62724642() {
    level endon(#"takedown_logic_cleanup");
    level flag::wait_till("flag_player_caught");
    if (level flag::get("flag_takedown_success")) {
        return;
    }
    util::missionfailedwrapper(#"hash_550c07dd465d6af7", #"hash_279386ca165e2a02");
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 0, eflags: 0x0
// Checksum 0x8e1fd269, Offset: 0x27b8
// Size: 0xec
function function_ea00197c() {
    level scene::add_scene_func("scene_kgb_acquire_disguises_actors", &function_7f604b6c);
    level thread scene::play("scene_kgb_acquire_disguises_player", "Intro");
    level thread scene::play("scene_kgb_acquire_disguises_actors", "Intro");
    level thread scene::play("scene_kgb_acquire_disguises_bag", "Intro");
    level thread function_18aea9a4();
    level thread scene::play("scene_kgb_acquire_disguises_inside", "Intro");
    wait 59.8;
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 0, eflags: 0x0
// Checksum 0xfd89f699, Offset: 0x28b0
// Size: 0xcc
function function_18aea9a4() {
    level.var_2f043e81 = 0;
    wait 38;
    level thread function_98815e2e();
    struct = struct::get("struct_takedown_hide", "targetname");
    objectives::goto("hide_spot", struct.origin, undefined, undefined, 0, "cp_waypoint_kgb_hide");
    level thread function_b6b893f4();
    level waittill(#"hash_58a05e82d72c9b91");
    objectives::complete("hide_spot");
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 0, eflags: 0x0
// Checksum 0xefe22cda, Offset: 0x2988
// Size: 0x106
function function_b6b893f4() {
    level endon(#"takedown_logic_cleanup");
    level.player endon(#"death");
    vol = getent("vol_takedown_hide", "targetname");
    while (true) {
        if (level.player istouching(vol)) {
            level.var_2f043e81 = 1;
            objectives::hide("hide_spot");
            while (level.player istouching(vol)) {
                waitframe(1);
            }
            level.var_2f043e81 = 0;
            objectives::show("hide_spot");
        }
        waitframe(1);
    }
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 0, eflags: 0x0
// Checksum 0xa1e13f0e, Offset: 0x2a98
// Size: 0x54
function function_e006a09a() {
    level thread scene::play("scene_kgb_acquire_disguises_inside", "Kill_Loop");
    level thread scene::play("scene_kgb_acquire_disguises_actors", "Kill_Loop");
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 2, eflags: 0x0
// Checksum 0x7a1a5a12, Offset: 0x2af8
// Size: 0x108
function function_7c1c5aff(shot_name, var_8cb24cdb) {
    level notify(#"hash_37cef3976d327d1f");
    level endon(#"hash_37cef3976d327d1f");
    if (var_8cb24cdb) {
        level childthread scene::play("scene_kgb_acquire_disguises_player", shot_name);
        level childthread function_15386625(shot_name);
        level scene::play("scene_kgb_acquire_disguises_inside", shot_name);
    } else {
        level childthread scene::play("scene_kgb_acquire_disguises_bag", shot_name);
        level childthread function_15386625(shot_name);
        level scene::play("scene_kgb_acquire_disguises_inside", shot_name);
    }
    level notify(#"hash_2a29732c8cdf857f");
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 1, eflags: 0x0
// Checksum 0xbae3fec3, Offset: 0x2c08
// Size: 0x9c
function function_15386625(shot_name) {
    level thread scene::play("scene_kgb_acquire_disguises_bag", shot_name);
    level scene::play("scene_kgb_acquire_disguises_actors", shot_name);
    level thread scene::play("scene_kgb_acquire_disguises_bag", "Fail_Loop");
    level thread scene::play("scene_kgb_acquire_disguises_actors", "Fail_Loop");
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 0, eflags: 0x0
// Checksum 0x9e3850ed, Offset: 0x2cb0
// Size: 0x54
function function_8f07753c() {
    level thread scene::play("scene_kgb_acquire_disguises_bag", "Fail_Loop");
    level thread scene::play("scene_kgb_acquire_disguises_actors", "Fail_Loop");
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 0, eflags: 0x0
// Checksum 0x6000ee36, Offset: 0x2d10
// Size: 0x44
function function_203098f4() {
    level.player endon(#"death");
    wait 0.5;
    level.player thread lui::screen_fade_in(1);
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 0, eflags: 0x0
// Checksum 0xd94ac220, Offset: 0x2d60
// Size: 0x5c
function function_ab071d71() {
    level.player endon(#"death");
    level waittill(#"hash_4261efb41698295d");
    level.player lui::screen_fade_out(1.5, "black");
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 0, eflags: 0x0
// Checksum 0x524c6ea, Offset: 0x2dc8
// Size: 0x1fe
function function_4a8d44b7() {
    level.player endon(#"death");
    level endon(#"takedown_logic_cleanup");
    wait 0.05;
    level.player notifyonplayercommand("weapon_melee", "+melee");
    level.player notifyonplayercommand("weapon_melee", "+melee_zoom");
    struct = struct::get("struct_takedown_prompt", "targetname");
    trig = spawn("trigger_radius", struct.origin, 0, 96, 96);
    trig sethintstring(#"hash_56cec4baa5332ed0");
    trig setteamfortrigger(level.player.team);
    trig thread function_b3dcc32f();
    level thread function_6cff03c4();
    while (true) {
        if (level.player istouching(trig)) {
            level flag::set("flag_fake_touch");
            while (level.player istouching(trig)) {
                waitframe(1);
            }
            level flag::clear("flag_fake_touch");
        }
        waitframe(1);
    }
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 0, eflags: 0x0
// Checksum 0xe48269de, Offset: 0x2fd0
// Size: 0x9a
function function_6cff03c4() {
    level.player endon(#"death");
    level endon(#"takedown_logic_cleanup");
    while (true) {
        level.player waittill(#"weapon_melee");
        if (level flag::get("flag_fake_touch")) {
            level thread function_5f64631f();
            break;
        }
        waitframe(1);
    }
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 1, eflags: 0x0
// Checksum 0xe11b26c6, Offset: 0x3078
// Size: 0x7c
function function_5f64631f(*var_248cbbcf) {
    level flag::set("flag_takedown_success");
    level notify(#"takedown_logic_cleanup");
    namespace_353d803e::music("7.1_attack_sting");
    level thread function_7c1c5aff("Success", 1);
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 0, eflags: 0x0
// Checksum 0xcde74e7d, Offset: 0x3100
// Size: 0x54
function function_b3dcc32f() {
    level waittill(#"takedown_logic_cleanup");
    level flag::set("remove_takedown_prompt");
    self delete();
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 0, eflags: 0x0
// Checksum 0x216d965, Offset: 0x3160
// Size: 0x22c
function function_484bfb02() {
    level.player endon(#"death");
    wait 9;
    struct = struct::get("struct_takedown_clothes", "targetname");
    tag = spawn("script_model", struct.origin);
    tag setmodel("tag_origin");
    tag util::create_cursor_hint("tag_origin", (0, 0, 0), #"hash_2d8a46f8111bd39c", 80);
    tag waittill(#"trigger");
    namespace_353d803e::music("8.0_undercover", 3.5);
    diff = tag.origin - level.player.origin;
    tag delete();
    level thread function_3262752b(2);
    level flag::set("remove_clothing_prompt");
    if (diff[0] < 0) {
        level thread scene::play("scene_kgb_acquire_disguises_actors", "Change_Clothes");
        level scene::play("scene_kgb_acquire_disguises_player", "Change_Clothes");
        return;
    }
    level thread scene::play("scene_kgb_acquire_disguises_actors", "Change_Clothes_Alt");
    level scene::play("scene_kgb_acquire_disguises_player", "Change_Clothes_Alt");
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 1, eflags: 0x0
// Checksum 0x4c450b59, Offset: 0x3398
// Size: 0x54
function function_3262752b(time) {
    level.player endon(#"death");
    wait time;
    level.player thread lui::screen_fade_out(1.5, "black");
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x33f8
// Size: 0x4
function function_3f5c3b7c() {
    
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 0, eflags: 0x0
// Checksum 0x7b463bbe, Offset: 0x3408
// Size: 0x10c
function function_4105690c() {
    level.player endon(#"death");
    level waittill(#"hash_64846a612e785746");
    level.player lui::screen_fade_out(0.75, "black");
    wait 0.8;
    level.player thread cp_rus_kgb::function_e876a652("civilian", 1);
    wait 0.2;
    level.player lui::screen_fade_in(0.5);
    wait 0.5;
    level thread globallogic_ui::function_7bc0e4b9(0, 1);
    level thread savegame::checkpoint_save();
    namespace_353d803e::music("7.0_tunnels");
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 0, eflags: 0x0
// Checksum 0x2b1496ca, Offset: 0x3520
// Size: 0xb4
function function_1e56b6d7() {
    level thread function_3209e378();
    level thread function_49f1319a();
    level flag::wait_till("flag_player_checkpoint_start");
    level scene::stop("scene_kgb_walkup_hall_talk", 1);
    level scene::stop("scene_kgb_walkup_stairs_duo", 1);
    level scene::stop("scene_kgb_walkup_charkov", 1);
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 0, eflags: 0x0
// Checksum 0x313fc573, Offset: 0x35e0
// Size: 0xcc
function function_3209e378() {
    level thread scene::play("scene_kgb_walkup_hall_talk", "Shot 1");
    level.adler waittill(#"hash_2c9839971e87b765");
    namespace_353d803e::music("8.2_cello_stingers_1");
    level thread scene::play("scene_kgb_walkup_hall_talk", "Shot 2");
    if (level flag::get("flag_checkpoint_moment_done")) {
        level thread scene::play("scene_kgb_walkup_charkov");
    }
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 0, eflags: 0x0
// Checksum 0xc7b6c986, Offset: 0x36b8
// Size: 0x44
function function_49f1319a() {
    level.adler waittill(#"hash_5f3452bc1c48bf4d");
    level thread scene::play("scene_kgb_walkup_stairs_duo", "Shot 1");
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 2, eflags: 0x0
// Checksum 0x3e270889, Offset: 0x3708
// Size: 0x182
function function_7f7143e4(player, var_7b20e52b) {
    if (isdefined(self.targetname) && self.targetname == "prisoner") {
        return false;
    }
    angles = self gettagangles("tag_eye");
    v_forward = anglestoforward(angles);
    v_loc = player geteye();
    v_dir = vectornormalize(v_loc - self gettagorigin("tag_eye"));
    dp = vectordot(v_forward, v_dir);
    if (dp > 0.1) {
        if (is_true(var_7b20e52b)) {
            v_loc = player.origin + (0, 0, 48);
            if (sighttracepassed(self gettagorigin("tag_eye"), v_loc, 0, self)) {
                return true;
            }
        }
        return false;
    }
    return false;
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 2, eflags: 0x0
// Checksum 0xa5661eaa, Offset: 0x3898
// Size: 0x344
function function_ce801c8b(skipto, *var_50cc0d4f) {
    level flag::set("flag_player_swap");
    level.player endon(#"death");
    level scene::add_scene_func("scene_kgb_walkup_charkov", &function_ec6bb2ec);
    level flag::set("flag_player_swap_complete");
    level flag::set("flag_checkpoint_moment_done");
    level thread function_9987ec40();
    level.adler = namespace_e77bf565::function_52fe0eb3("kgb_ins_rv");
    level.adler.ignoreme = 1;
    level.adler.ignoreall = 1;
    level thread namespace_99e99ffa::function_99e99ffa(var_50cc0d4f);
    level thread scene::play("scene_kgb_acquire_disguises_player", "Outro");
    level thread scene::play("scene_kgb_acquire_disguises_bag", "Outro");
    level scene::play("scene_kgb_acquire_disguises_actors", "Outro");
    level.adler namespace_e77bf565::function_5770c74();
    level thread function_1e56b6d7();
    level.player setmovespeedscale(0.5);
    level thread scene::play("scene_kgb_walkup_gate_guard", "Shot 1");
    level scene::play("scene_kgb_walkup_adler", "Shot 1", [level.adler]);
    level thread scene::play("scene_kgb_walkup_adler", "Shot 2", [level.adler]);
    level flag::wait_till("flag_aslt_upstairs");
    level flag::set("flag_prep_elevator");
    level thread kgb_aslt_entry::function_272c06e0();
    level thread scene::play("scene_kgb_walkup_gate_guard", "Shot 2");
    level thread scene::play("scene_kgb_walkup_adler", "Shot 3", [level.adler]);
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 1, eflags: 0x0
// Checksum 0x98901027, Offset: 0x3be8
// Size: 0x4c
function function_7a89c7d8(a_ents) {
    a_ents[#"hash_25c349eb26f191d7"] thread function_c1e43496();
    a_ents[#"hash_25c34aeb26f1938a"] thread function_c1e43496();
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 1, eflags: 0x0
// Checksum 0x902551ab, Offset: 0x3c40
// Size: 0x6c
function function_32e58509(a_ents) {
    a_ents[#"warden"] thread function_c1e43496();
    a_ents[#"hash_7f2c000ee8773ab1"] thread function_c1e43496();
    a_ents[#"hash_7f2bfd0ee8773598"] thread function_c1e43496();
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 0, eflags: 0x0
// Checksum 0x92aedb28, Offset: 0x3cb8
// Size: 0x74
function function_c1e43496() {
    self.ignoreme = 1;
    self.ignoreall = 1;
    self.propername = namespace_5f58ebe5::function_70594daa();
    weapon = getweapon("smg_heavy_t9");
    self setweapon(weapon);
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 1, eflags: 0x0
// Checksum 0xd3f00a91, Offset: 0x3d38
// Size: 0x5c
function function_ec6bb2ec(a_ents) {
    var_8a3834d = a_ents[#"hash_22e4f0609e73cccc"];
    var_8a3834d thread entname::add(#"hash_50d58662d307f9c7", #"axis");
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 1, eflags: 0x0
// Checksum 0x8faebc64, Offset: 0x3da0
// Size: 0x184
function function_9b6d9815(off = 1) {
    clip = getent("boiler_room_exit_clip", "targetname");
    level.player endon(#"death");
    if (off) {
        level.player setstance("stand");
        level.player val::set(#"hash_5814be4ed0ae9e2b", "allow_stand", 1);
        level.player val::set(#"hash_5814be4ed0ae9e2b", "allow_crouch", 0);
        level.player val::set(#"hash_5814be4ed0ae9e2b", "allow_prone", 0);
        clip.origin += (0, 0, -256);
        return;
    }
    level.player val::reset_all(#"hash_5814be4ed0ae9e2b");
    clip delete();
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 0, eflags: 0x0
// Checksum 0xc974f4fe, Offset: 0x3f30
// Size: 0x4e
function function_98815e2e() {
    var_c2958343 = getent("kgb_boiler_room_door_2", "targetname");
    var_c2958343.origin += (0, 0, -256);
}

// Namespace kgb_ins_rv/namespace_2de23526
// Params 0, eflags: 0x0
// Checksum 0x8bf9d41f, Offset: 0x3f88
// Size: 0x4c
function function_44416c38() {
    wait 0.25;
    var_c2958343 = getent("kgb_boiler_room_door_2", "targetname");
    var_c2958343 delete();
}

