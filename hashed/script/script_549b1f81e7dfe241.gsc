#using script_20b8e1a789215df0;
#using script_3b7c3b99b28b21b7;
#using script_3c70d86dfe255354;
#using script_3dc93ca9902a9cda;
#using script_3de86a21a0c8d47b;
#using script_4b6505921addc7bc;
#using script_708fc8496e63a128;
#using script_758226507b1afa11;
#using script_86ebb5dd573a003;
#using scripts\core_common\ai_shared;
#using scripts\core_common\animation_shared;
#using scripts\core_common\array_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\doors_shared;
#using scripts\core_common\exploder_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\music_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\spawner_shared;
#using scripts\core_common\stealth\utility;
#using scripts\core_common\struct;
#using scripts\core_common\teleport_shared;
#using scripts\core_common\trigger_shared;
#using scripts\core_common\util_shared;
#using scripts\core_common\values_shared;
#using scripts\cp_common\dialogue;
#using scripts\cp_common\objectives;
#using scripts\cp_common\skipto;
#using scripts\cp_common\util;

#namespace namespace_afd0968c;

// Namespace namespace_afd0968c/namespace_afd0968c
// Params 0, eflags: 0x0
// Checksum 0x9b03c434, Offset: 0x870
// Size: 0x34
function function_22b7fffd() {
    scene::add_scene_func("scene_z_stk_electronics_store", &function_9df174aa, "init");
}

// Namespace namespace_afd0968c/namespace_afd0968c
// Params 1, eflags: 0x0
// Checksum 0x87e4ed9a, Offset: 0x8b0
// Size: 0x194
function start(*str_objective) {
    player = getplayers()[0];
    player namespace_979752dc::set_disguised(1);
    level thread namespace_fba81a7f::function_37acd633();
    level thread namespace_fba81a7f::function_47620ece();
    doors::unlock("alley_1_tutorial_door");
    doors::open("alley_1_tutorial_door");
    util::function_268bdf4f("lazar", &namespace_11998b8f::function_2f0f0a84);
    level.lazar val::set("meetup", "ignoreme", 1);
    level.lazar val::set("meetup", "ignoreall", 1);
    level thread scene::init("scene_z_stk_electronics_store");
    level thread scene::play("scene_z_stk_lazar_meetup_doors_only", "door_start_loop");
    level thread namespace_11998b8f::function_de88eefd();
}

// Namespace namespace_afd0968c/namespace_afd0968c
// Params 2, eflags: 0x0
// Checksum 0x41f17587, Offset: 0xa50
// Size: 0x59c
function main(str_objective, var_50cc0d4f) {
    player = getplayers()[0];
    level thread function_1c58d4d4();
    level thread namespace_11998b8f::function_7ad4f5cb();
    if (var_50cc0d4f) {
        level thread namespace_11998b8f::function_973a721b("alley_3_car");
        player util::delay(0.25, undefined, &util::function_749362d7, 1);
        level thread scene::play("scene_z_stk_electronics_store", "rr_wait_loop");
        level flag::wait_till("flag_go_in_store");
        thread namespace_5ceacc03::function_8a2f9a04();
        level scene::play("scene_z_stk_electronics_store", "repair_room_enter");
    }
    level flag::set("flag_show_vista_tower_03");
    exploder::stop_exploder("fx_exp_vista_tower2");
    exploder::exploder("fx_exp_vista_tower3");
    level thread function_8d76ed51();
    doors::lock("door_electronics_store");
    util::function_3e65fe0b(1);
    level scene::play("scene_z_stk_electronics_store", "lazar_traversal");
    if (level flag::get("flag_meetup_park")) {
        level scene::play("scene_z_stk_electronics_store", "call_listen_branch");
    } else {
        level scene::play("scene_z_stk_electronics_store", "shop_wait_intro");
        level thread scene::play("scene_z_stk_electronics_store", "shop_wait_loop");
        level flag::set("flag_meetup_start_kraus_delayed");
        level flag::wait_till("flag_meetup_park");
        level scene::play("scene_z_stk_electronics_store", "shop_wait_exit");
    }
    player util::blend_movespeedscale(0.72, 0.5);
    level thread function_36a9bec7();
    level thread util::delay(6, undefined, &namespace_11998b8f::function_973a721b, "meetup_car");
    level thread scene::play("scene_z_stk_electronics_store", "call_listen_intro");
    level flag::set("stop_supressed_hint");
    level thread function_a3fa5d6f();
    level waittill(#"hash_62cf567b9b989ec9");
    spy_camera::function_f785d9e9(level.var_49a292bb, 1);
    if (!isdefined(objectives::function_285e460(#"hash_60c266e75583e153"))) {
        objectives::goto(#"hash_60c266e75583e153", level.var_49a292bb.origin + (0, 0, 72), undefined, 0);
        objectives::function_67f87f80(#"hash_60c266e75583e153", undefined, #"hash_25690fa219cddf5a");
    }
    player thread function_36844b0c();
    level thread function_4f7317ce();
    level flag::wait_till("meetup_done");
    util::function_3e65fe0b(0);
    level thread function_a168b5dc();
    level thread namespace_11998b8f::function_25120710();
    skipto::function_4e3ab877(str_objective);
    level.lazar flag::wait_till_clear(#"scriptedanim");
    level thread scene::play("scene_z_stk_electronics_store", "end_loops");
}

// Namespace namespace_afd0968c/namespace_afd0968c
// Params 0, eflags: 0x0
// Checksum 0xcead3860, Offset: 0xff8
// Size: 0x234
function function_a3fa5d6f() {
    player = getplayers()[0];
    player val::set("electronics_store", "disable_weapons", 1);
    player util::function_749362d7(0);
    wait 0.7;
    a_weapons = player getweaponslistprimaries();
    foreach (weapon in a_weapons) {
        if (weapon != level.var_e3f5eafc) {
            player takeweapon(weapon);
        }
    }
    var_bd1c473f = getweapon(#"hash_32454fc6213eedd6");
    player giveweapon(var_bd1c473f);
    if (player getcurrentweapon() != level.var_e3f5eafc) {
        player switchtoweapon(var_bd1c473f);
    }
    player clientfield::set_to_player("camera_focal_distance_electronics_store", 1);
    player val::reset("electronics_store", "disable_weapons");
    player setcinematicmotionoverride("cinematicmotion_kgb");
    spy_camera::function_f91a82ef(0);
}

// Namespace namespace_afd0968c/namespace_afd0968c
// Params 0, eflags: 0x0
// Checksum 0x21462e3b, Offset: 0x1238
// Size: 0x5c
function function_36844b0c() {
    wait 3;
    if (self getcurrentweapon() != level.var_e3f5eafc) {
        self util::show_hint_text(#"hash_549b99af44962dbf", undefined, "ability_activated_camera", 8);
    }
}

// Namespace namespace_afd0968c/namespace_afd0968c
// Params 0, eflags: 0x0
// Checksum 0x84461d37, Offset: 0x12a0
// Size: 0x10c
function function_a168b5dc() {
    player = getplayers()[0];
    if (player adsbuttonpressed()) {
        while (player adsbuttonpressed()) {
            waitframe(1);
        }
    }
    player spy_camera::function_b83af2a9();
    player clientfield::set_to_player("camera_focal_distance_electronics_store", 0);
    var_bd1c473f = getweapon(#"hash_32454fc6213eedd6");
    if (player hasweapon(var_bd1c473f) && player getcurrentweapon() != var_bd1c473f) {
        player switchtoweapon(var_bd1c473f);
    }
}

// Namespace namespace_afd0968c/namespace_afd0968c
// Params 0, eflags: 0x0
// Checksum 0x1b2a7a1, Offset: 0x13b8
// Size: 0x9c
function function_4f7317ce() {
    level.var_49a292bb thread namespace_11998b8f::function_d3e635a9("saw_kraus_apt", "photo_taken", "meetup_done");
    level flag::wait_till_any(array("saw_kraus_apt", "meetup_done"));
    objectives::remove(#"hash_60c266e75583e153");
    spy_camera::function_b28ab5a9(level.var_49a292bb);
}

// Namespace namespace_afd0968c/namespace_afd0968c
// Params 1, eflags: 0x0
// Checksum 0x23e1364d, Offset: 0x1460
// Size: 0x28
function function_9df174aa(a_ents) {
    level.park = a_ents[#"park"];
}

// Namespace namespace_afd0968c/namespace_afd0968c
// Params 0, eflags: 0x0
// Checksum 0x1a9cfae4, Offset: 0x1490
// Size: 0x204
function function_8d76ed51() {
    level namespace_e6b6aea1::function_3141d875();
    level thread scene::play("aib_vign_stakeout_safehouse_surveillance_wife", "z_stk_surveillance_stove_smoking_edda_transition", level.var_3559e9e);
    kitchen_window_right_closed = getent("kitchen_window_right_closed", "targetname");
    kitchen_window_right_closed hide();
    kitchen_window_left_closed = getent("kitchen_window_left_closed", "targetname");
    kitchen_window_left_closed hide();
    level flag::wait_till("flag_meetup_park");
    if (level flag::get("flag_meetup_start_kraus_delayed")) {
        level thread scene::play_from_time("aib_vign_stakeout_safehouse_surveillance_kraus", "kraus_phone_start", level.var_49a292bb, 7.3, 1);
    } else {
        level thread scene::play_from_time("aib_vign_stakeout_safehouse_surveillance_kraus", "kraus_phone_start", level.var_49a292bb, 6.8, 1);
    }
    level flag::wait_till("flag_meetup_kraus_done");
    level scene::play("aib_vign_stakeout_safehouse_surveillance_kraus", "kraus_desk_exit", level.var_49a292bb);
    level.var_49a292bb animation::last_frame(#"z_stk_surveillance_desk_kraus_exit", level.var_bd5c9b86);
}

// Namespace namespace_afd0968c/namespace_afd0968c
// Params 4, eflags: 0x0
// Checksum 0x72784a8f, Offset: 0x16a0
// Size: 0xdc
function function_7451d8da(*str_objective, var_50cc0d4f, *var_aa1a6455, *player) {
    if (player) {
        level flag::set("flag_meetup_park");
        level flag::set("meetup_done");
        level flag::set("flag_show_vista_tower_03");
        exploder::stop_exploder("fx_exp_vista_tower2");
        exploder::exploder("fx_exp_vista_tower3");
        level flag::set("stop_supressed_hint");
    }
}

// Namespace namespace_afd0968c/namespace_afd0968c
// Params 1, eflags: 0x0
// Checksum 0x98573703, Offset: 0x1788
// Size: 0x1e4
function function_36a9bec7(var_50cc0d4f) {
    if (!is_true(var_50cc0d4f)) {
        level flag::wait_till("give_meetup_obj");
        doors::unlock("door_electronics_store", undefined, 0);
    }
    var_b6ac0499 = struct::get("obj_entry_lobby", "targetname");
    if (!isdefined(objectives::function_285e460(#"hash_315ac0f45babe4d3"))) {
        objectives::scripted(#"hash_315ac0f45babe4d3", undefined, #"hash_133aa27126e740cc");
    }
    if (!level flag::get("apt_street_lobby_entry")) {
        objectives::goto(#"hash_7dbafa92b506d5c", var_b6ac0499.origin, undefined, 0);
        objectives::function_67f87f80(#"hash_7dbafa92b506d5c", undefined, #"hash_5f670550d4e97f41");
        level flag::wait_till("apt_street_lobby_entry");
        objectives::complete(#"hash_7dbafa92b506d5c");
    }
    level flag::wait_till("apt_street_done");
    objectives::complete(#"hash_315ac0f45babe4d3");
}

// Namespace namespace_afd0968c/namespace_afd0968c
// Params 0, eflags: 0x0
// Checksum 0xbf24018a, Offset: 0x1978
// Size: 0x2ec
function function_1c58d4d4() {
    level endon(#"flag_meetup_park");
    var_678f6033 = spawner::simple_spawn_single("alley_3_lady_01");
    var_7a3f0596 = spawner::simple_spawn_single("alley_3_lady_02");
    var_678f6033 val::set("street_lady", "ignoreall", 1);
    var_678f6033 val::set("street_lady", "ignoreme", 1);
    var_7a3f0596 val::set("street_lady", "ignoreall", 1);
    var_7a3f0596 val::set("street_lady", "ignoreme", 1);
    var_678f6033 thread function_3bc02b4();
    var_7a3f0596 thread function_3bc02b4();
    var_678f6033 dialogue::queue("vox_cp_stkt_07230_gfc2_areyousureyouwe_5c");
    var_7a3f0596 dialogue::queue("vox_cp_stkt_07230_gfc3_imsureitsnotmet_4f");
    var_678f6033 dialogue::queue("vox_cp_stkt_07230_gfc2_whydidyouwantto_ed");
    var_7a3f0596 dialogue::queue("vox_cp_stkt_07230_gfc3_ididntwanttotel_4c");
    var_678f6033 dialogue::queue("vox_cp_stkt_07230_gfc2_leavingtogowher_38");
    var_7a3f0596 dialogue::queue("vox_cp_stkt_07230_gfc3_idontthinkicans_d0");
    var_678f6033 dialogue::queue("vox_cp_stkt_07230_gfc2_wellimgladyoudi_d3");
    var_7a3f0596 dialogue::queue("vox_cp_stkt_07230_gfc3_tonight_0b\t\t   ");
    var_678f6033 dialogue::queue("vox_cp_stkt_07230_gfc2_tonightbutstasi_ce");
    var_7a3f0596 dialogue::queue("vox_cp_stkt_07230_gfc3_ithastobetonigh_84");
    var_678f6033 dialogue::queue("vox_cp_stkt_07230_gfc2_wontyousaygoodb_04");
    var_7a3f0596 dialogue::queue("vox_cp_stkt_07230_gfc3_icantpleasetell_ce");
    var_7a3f0596 dialogue::queue("vox_cp_stkt_07230_gfc3_illmissyoumosto_c7");
    var_678f6033 dialogue::queue("vox_cp_stkt_07230_gfc2_pleasebesafeand_2f");
}

// Namespace namespace_afd0968c/namespace_afd0968c
// Params 0, eflags: 0x0
// Checksum 0xd66973ba, Offset: 0x1c70
// Size: 0x64
function function_3bc02b4() {
    level flag::wait_till("flag_meetup_park");
    self dialogue::function_47b06180();
    wait 0.5;
    if (isdefined(self)) {
        self delete();
    }
}

