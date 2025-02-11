#using script_1fd2c6e5fc8cb1c3;
#using script_2856038948e153b5;
#using script_2d443451ce681a;
#using script_3dc93ca9902a9cda;
#using script_4ccd0c3512b52a10;
#using script_4ec222619bffcfd1;
#using script_4fdb32cc1d125464;
#using script_7d0013bbc05623b9;
#using scripts\core_common\ai_shared;
#using scripts\core_common\animation_shared;
#using scripts\core_common\array_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\colors_shared;
#using scripts\core_common\districts;
#using scripts\core_common\doors_shared;
#using scripts\core_common\exploder_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\lui_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\spawner_shared;
#using scripts\core_common\struct;
#using scripts\core_common\trigger_shared;
#using scripts\core_common\util_shared;
#using scripts\core_common\values_shared;
#using scripts\cp\cp_rus_kgb;
#using scripts\cp_common\dialogue;
#using scripts\cp_common\gametypes\battlechatter;
#using scripts\cp_common\skipto;
#using scripts\cp_common\snd;
#using scripts\cp_common\util;

#namespace namespace_925d57a5;

// Namespace namespace_925d57a5/namespace_7ab70467
// Params 1, eflags: 0x0
// Checksum 0xaf7a0da9, Offset: 0xa30
// Size: 0x24
function starting(*var_d3440450) {
    level thread namespace_e77bf565::function_277bceaa(0);
}

// Namespace namespace_925d57a5/namespace_7ab70467
// Params 2, eflags: 0x0
// Checksum 0x7c8f8dbe, Offset: 0xa60
// Size: 0x3dc
function main(var_d3440450, var_50cc0d4f) {
    level flag::set("aslt_exfil_begin");
    level battlechatter::function_2ab9360b(1);
    if (is_true(var_50cc0d4f)) {
        level.adler = namespace_e77bf565::function_52fe0eb3(var_d3440450, "adler_shotgun");
        level.adler namespace_a01bd292::function_dfe94ac6();
        level.adler namespace_a01bd292::function_7dbd8101();
        level.inside_man = namespace_e77bf565::function_e4660071(var_d3440450, "inside_man_shotgun");
        level.inside_man namespace_a01bd292::function_bd86663d();
        level.inside_man namespace_a01bd292::function_ba4e8f8f();
        level thread scene::skipto_end_noai("scene_kgb_door_kick", "Last_Frame", undefined, 1);
        level thread scene::skipto_end_noai("scene_kgb_utility_room_adler", "Door_Closed", undefined, 1);
        level thread namespace_7d6f213d::function_1f999428();
        level.player clientfield::set_to_player("set_player_pbg_bank", 2);
        level thread function_3b4bc579();
        level flag::set("turn_on_elevator_alarm_light");
        level thread scene::init("scene_kgb_elevator_exfil_intro_adler");
        level thread scene::init("scene_kgb_elevator_exfil_intro_insideman");
        level thread scene::init("scene_kgb_elevator_exfil_intro_player");
        level.player namespace_e77bf565::gasmask_on();
        level thread namespace_e77bf565::function_1067ebf5("rotating_object_bunker", "player_grabbed_armor");
    }
    namespace_e77bf565::function_e2e72d4(0, 1);
    level thread namespace_e77bf565::escape_objective(var_d3440450, var_50cc0d4f);
    wait 0.05;
    namespace_353d803e::music("deactivate_14.0b_full_alert");
    level thread function_67c25994(var_d3440450);
    level thread function_b735db01();
    level thread function_d883a464();
    level thread doors::close_all();
    level thread doors::function_f35467ac();
    level thread namespace_e77bf565::function_e2e72d4(0, 1);
    level flag::wait_till("aslt_exfil_player_left_elevator");
    level flag::wait_till("aslt_exfil_complete");
    if (isdefined(var_d3440450)) {
        skipto::function_4e3ab877(var_d3440450);
    }
}

// Namespace namespace_925d57a5/namespace_7ab70467
// Params 0, eflags: 0x0
// Checksum 0xdef8b5ef, Offset: 0xe48
// Size: 0x58
function function_3b4bc579() {
    level flag::wait_till("elevator_clips_ready");
    level thread scene::init("scene_kgb_elevator_exfil");
    level notify(#"hash_75603f5b1241ba55");
}

// Namespace namespace_925d57a5/namespace_7ab70467
// Params 4, eflags: 0x0
// Checksum 0x8347238f, Offset: 0xea8
// Size: 0x24
function cleanup(*name, *starting, *direct, *player) {
    
}

// Namespace namespace_925d57a5/namespace_7ab70467
// Params 0, eflags: 0x0
// Checksum 0x66d41f8a, Offset: 0xed8
// Size: 0x124
function init_flags() {
    level flag::init("aslt_exfil_begin");
    level flag::init("aslt_exfil_complete");
    level flag::init("player_grabbed_armor");
    level flag::init("exfil_move_adler_to_elevator");
    level flag::init("exfil_adler_in_elevator");
    level flag::init("enable_gas_mask_interact");
    level flag::init("start_scene_kgb_elevator_exfil");
    level flag::init("slow_mo_stopped");
    level flag::init("exfil_player_grab_armor_org_obj_created");
}

// Namespace namespace_925d57a5/namespace_7ab70467
// Params 0, eflags: 0x0
// Checksum 0xdb8e0ce1, Offset: 0x1008
// Size: 0x64
function init_clientfields() {
    clientfield::register("scriptmover", "clf_fx_c4_on", 1, 1, "int");
    clientfield::register("scriptmover", "clf_fx_c4_blink", 1, 1, "int");
}

// Namespace namespace_925d57a5/namespace_7ab70467
// Params 0, eflags: 0x0
// Checksum 0x30dc3494, Offset: 0x1078
// Size: 0x194
function function_22b7fffd() {
    animation::add_notetrack_func("kgb_audio::snd_play_cin_kgb_exfil_amb_lp_lr", &namespace_353d803e::function_d4ea305a);
    animation::add_notetrack_func("kgb_aslt_exfil::c4_on", &function_3e23839f);
    animation::add_notetrack_func("kgb_aslt_exfil::lazar_vo", &function_52d9841f);
    animation::add_notetrack_func("kgb_aslt_exfil::elevator_breach_slow_mo", &function_595d8864);
    animation::add_notetrack_func("kgb_aslt_exfil::make_guy_killable", &function_a02bf06e);
    animation::add_notetrack_func("kgb_aslt_exfil::elevator_exfil_outro_gesture", &function_7750b07d);
    animation::add_notetrack_func("kgb_aslt_exfil::elevator_exfil_outro_enable_player_control", &function_d32c245c);
    animation::add_notetrack_func("kgb_aslt_exfil::allow_look_control_after_readying_weapon", &function_c0303dd1);
    animation::add_notetrack_func("kgb_aslt_exfil::lock_look_control_when_readying_explosive", &function_2ad193ed);
    animation::add_notetrack_func("kgb_aslt_exfil::take_off_gasmask", &function_c230d01c);
}

// Namespace namespace_925d57a5/namespace_7ab70467
// Params 1, eflags: 0x0
// Checksum 0xad3de803, Offset: 0x1218
// Size: 0x5fc
function function_67c25994(*var_d3440450) {
    level.player endon(#"death");
    level flag::set("enable_gas_mask_interact");
    exfil_player_grab_armor_org = struct::get("exfil_player_grab_armor_org", "targetname");
    exfil_player_grab_armor_org util::create_cursor_hint(undefined, undefined, #"hash_410efc195dd1d8d", 64, undefined, undefined, undefined, 700, undefined, 0, 1);
    level flag::wait_till("exfil_player_grab_armor_org_obj_created");
    exfil_player_grab_armor_org prompts::set_objective("obj_goto");
    level thread function_9bdd4147();
    level.player clientfield::set_to_player("stream_elevator_exfil_assets", 1);
    level thread scene::function_27f5972e(#"scene_kgb_elevator_exfil");
    exfil_player_grab_armor_org waittill(#"trigger");
    level.player val::set(#"hash_6979003f12a8b0e4", "show_hud", 0);
    level.player freezecontrolsallowlook(1);
    level.player val::set(#"hash_6979003f12a8b0e4", "disable_weapons", 1);
    level.player val::set(#"hash_6979003f12a8b0e4", "disable_weapon_fire", 1);
    level.player val::set(#"hash_6979003f12a8b0e4", "disable_weapon_reload", 1);
    level.player val::set(#"hash_6979003f12a8b0e4", "disable_weapon_cycling", 1);
    level.player val::set(#"hash_6979003f12a8b0e4", "disable_offhand_weapons", 1);
    level.player val::set(#"hash_6979003f12a8b0e4", "disable_offhand_special", 1);
    level.player val::set(#"hash_6979003f12a8b0e4", "allow_ads", 0);
    exfil_player_grab_armor_org util::remove_cursor_hint();
    snd::client_msg(#"hash_182e794f60a3848b");
    snd::client_msg(#"hash_2b88d5deda9b0cb8");
    level flag::set("player_grabbed_armor");
    level thread function_e58b5a12();
    wait 1;
    level.adler util::stop_magic_bullet_shield();
    level.adler delete();
    level.adler = namespace_e77bf565::function_52fe0eb3(undefined, "adler_casual_killer");
    level.adler namespace_a01bd292::function_f8337223();
    level.adler thread namespace_7d6f213d::function_8484087e();
    level.adler thread namespace_7d6f213d::function_aba34b0e();
    level.inside_man util::stop_magic_bullet_shield();
    level.inside_man delete();
    level.inside_man = namespace_e77bf565::function_52fe0eb3(undefined, "inside_man_casual_killer");
    level.inside_man namespace_a01bd292::function_59131084();
    level.inside_man thread namespace_7d6f213d::function_8484087e();
    level.inside_man thread namespace_7d6f213d::function_aba34b0e();
    exploder::exploder_stop("gas");
    exploder::exploder_stop("vault_breach");
    exploder::exploder_stop("vault_breach_aftermath");
    level flag::wait_till("start_scene_kgb_elevator_exfil");
    level thread namespace_7d6f213d::alarm_lights();
    thread namespace_353d803e::function_6556551a();
    scene::play("scene_kgb_elevator_exfil", "elevator_exfil_main");
    level.player clientfield::set_to_player("stream_elevator_exfil_assets", 0);
    level flag::set("aslt_exfil_complete");
}

// Namespace namespace_925d57a5/namespace_7ab70467
// Params 1, eflags: 0x0
// Checksum 0x94327360, Offset: 0x1820
// Size: 0x4c
function function_7750b07d(*params) {
    level.player playgestureviewmodel(#"hash_76ab310d2a89b823", undefined, 1, 0.2, undefined, 1, 1);
}

// Namespace namespace_925d57a5/namespace_7ab70467
// Params 1, eflags: 0x0
// Checksum 0x95176cd2, Offset: 0x1878
// Size: 0x74
function function_c0303dd1(*params) {
    if (isdefined(level.player) && isdefined(level.player getlinkedent())) {
        level.player lerpviewangleclamp(0.5, 0.5, 0, 10, 10, 10, 10);
    }
}

// Namespace namespace_925d57a5/namespace_7ab70467
// Params 1, eflags: 0x0
// Checksum 0xc9e95064, Offset: 0x18f8
// Size: 0x6c
function function_2ad193ed(*params) {
    if (isdefined(level.player) && isdefined(level.player getlinkedent())) {
        level.player lerpviewangleclamp(0.5, 0.5, 0, 0, 0, 0, 0);
    }
}

// Namespace namespace_925d57a5/namespace_7ab70467
// Params 1, eflags: 0x0
// Checksum 0xbb5ebbc9, Offset: 0x1970
// Size: 0x1fc
function function_d32c245c(*params) {
    self hide();
    if (isdefined(level.player) && isdefined(level.player getlinkedent())) {
        level.player lerpviewangleclamp(0.2, 0.1, 0, 20, 20, 20, 20);
    }
    level.player val::reset(#"hash_6979003f12a8b0e4", "disable_weapon_fire");
    level.player val::reset(#"hash_6979003f12a8b0e4", "disable_weapon_reload");
    level.player val::reset(#"hash_6979003f12a8b0e4", "disable_weapon_cycling");
    level.player val::reset(#"hash_6979003f12a8b0e4", "disable_offhand_weapons");
    level.player val::reset(#"hash_6979003f12a8b0e4", "disable_offhand_special");
    level.player val::reset(#"hash_6979003f12a8b0e4", "allow_ads");
    level.player val::reset(#"hash_6979003f12a8b0e4", "show_hud");
    level.player freezecontrolsallowlook(0);
}

// Namespace namespace_925d57a5/namespace_7ab70467
// Params 0, eflags: 0x0
// Checksum 0xd00ed5e5, Offset: 0x1b78
// Size: 0xdc
function function_b735db01() {
    while (!isdefined(level.adler)) {
        waitframe(1);
    }
    level.adler endon(#"death");
    level.adler colors::disable();
    level.adler ai::set_behavior_attribute("demeanor", "combat");
    level thread scene::play("scene_kgb_elevator_exfil_intro_adler");
    level flag::wait_till("player_grabbed_armor");
    level thread scene::stop("scene_kgb_elevator_exfil_intro_adler");
}

// Namespace namespace_925d57a5/namespace_7ab70467
// Params 0, eflags: 0x0
// Checksum 0x794c1517, Offset: 0x1c60
// Size: 0xdc
function function_d883a464() {
    while (!isdefined(level.inside_man)) {
        waitframe(1);
    }
    level.inside_man endon(#"death");
    level.inside_man colors::disable();
    level.inside_man ai::set_behavior_attribute("demeanor", "combat");
    level thread scene::play("scene_kgb_elevator_exfil_intro_insideman");
    level flag::wait_till("player_grabbed_armor");
    level thread scene::stop("scene_kgb_elevator_exfil_intro_insideman");
}

// Namespace namespace_925d57a5/namespace_7ab70467
// Params 0, eflags: 0x0
// Checksum 0xc2ebcb64, Offset: 0x1d48
// Size: 0x29c
function function_e58b5a12() {
    level.player endon(#"death");
    level.player util::delay(5.2, undefined, &lui::screen_fade_out, 0.25, "black");
    level util::delay(6, undefined, &dialogue::radio, "vox_cp_rkgb_08000_adlr_letsgetuptop_99");
    scene::play("scene_kgb_elevator_exfil_intro_player");
    level thread namespace_e77bf565::cleanup_corpses();
    level.player districts::function_930f8c81(["kgb_und_vault_bunker_main"]);
    level.player districts::function_a7d79fcb(["kgb_hq_front_04", "kgb_hq_intersection", "kgb_hq_east_wing", "kgb_hq_elevator", "kgb_hq_armory_wing", "kgb_hq_courtyard", "kgb_hq_second_floor"]);
    level.player clientfield::set_to_player("set_player_pbg_bank", 0);
    level.player cp_rus_kgb::function_69e3b754(undefined, "kgb_officer_exfil", 1, 1);
    level thread function_45ba6f18();
    wait 3;
    level.player val::reset(#"hash_6979003f12a8b0e4", "disable_weapons");
    level flag::set("start_scene_kgb_elevator_exfil");
    wait 0.5;
    level.player thread lui::screen_fade_in(1);
    snd::client_msg(#"hash_71b18c4ea1c4cea2");
    namespace_353d803e::music("14.1_elevator");
}

// Namespace namespace_925d57a5/namespace_7ab70467
// Params 1, eflags: 0x0
// Checksum 0x8d85ffb8, Offset: 0x1ff0
// Size: 0x7c
function function_c230d01c(*params) {
    level.player endon(#"death");
    level.player lui::screen_fade_out(0.1);
    level.player namespace_e77bf565::function_eeb18216();
    level.player thread lui::screen_fade_in(0.2);
}

// Namespace namespace_925d57a5/namespace_7ab70467
// Params 0, eflags: 0x0
// Checksum 0xeb6ec1fd, Offset: 0x2078
// Size: 0x260
function function_45ba6f18() {
    exfil_escape_cover_clip = getentarray("exfil_escape_cover_clip", "targetname");
    foreach (clip in exfil_escape_cover_clip) {
        if (isdefined(clip.script_noteworthy) && clip.script_noteworthy == "link_to_elevator") {
            clip linkto(level.elevator);
        }
        if (isdefined(clip.script_string) && clip.script_string == "delete_on_gear_up") {
            clip delete();
        }
    }
    exfil_escape_cover_model = struct::get_array("exfil_escape_cover_model", "targetname");
    foreach (model in exfil_escape_cover_model) {
        if (isdefined(model.script_noteworthy) && model.script_noteworthy == "link_to_elevator") {
            if (isdefined(model.script_model)) {
                model.script_model linkto(level.elevator);
            }
        }
        if (isdefined(model.script_string) && model.script_string == "delete_on_gear_up") {
            if (isdefined(model.script_model)) {
                model.script_model delete();
            }
        }
    }
}

// Namespace namespace_925d57a5/namespace_7ab70467
// Params 1, eflags: 0x0
// Checksum 0x338507d6, Offset: 0x22e0
// Size: 0xc4
function function_3e23839f(*params) {
    self clientfield::set("clf_fx_c4_on", 1);
    level waittill(#"hash_1945b16f8963fc51");
    self clientfield::set("clf_fx_c4_on", 0);
    self clientfield::set("clf_fx_c4_blink", 1);
    level flag::wait_till("exfil_escape_elevator_guards_explosion_triggered");
    self clientfield::set("clf_fx_c4_blink", 0);
}

// Namespace namespace_925d57a5/namespace_7ab70467
// Params 1, eflags: 0x0
// Checksum 0xb19f1694, Offset: 0x23b0
// Size: 0x54
function function_52d9841f(*params) {
    /#
        if (getdvarint(#"hash_33523a56cb31ab62", 0)) {
            return;
        }
    #/
    dialogue::radio("vox_cp_rkgb_08000_lazr_plentyofroomint_32");
}

// Namespace namespace_925d57a5/namespace_7ab70467
// Params 1, eflags: 0x0
// Checksum 0x7a41c053, Offset: 0x2410
// Size: 0x124
function function_595d8864(*params) {
    level notify(#"hash_1945b16f8963fc51");
    namespace_353d803e::music("deactivate_14.1_elevator");
    var_a1b2be39 = 0.3;
    var_8f6ebef8 = 0.5;
    var_e949dab8 = 0.1;
    setslowmotion(1, var_a1b2be39, var_8f6ebef8);
    level waittilltimeout(4, #"hash_1849d5500c113ddd", #"hash_44155301ad2081b0");
    level flag::set("slow_mo_stopped");
    snd::client_msg(#"hash_2d7e4cbd73ad29fb");
    setslowmotion(var_a1b2be39, 1, var_e949dab8);
}

// Namespace namespace_925d57a5/namespace_7ab70467
// Params 1, eflags: 0x0
// Checksum 0x93a1b52d, Offset: 0x2540
// Size: 0x2e
function function_a02bf06e(*params) {
    self.allowdeath = 1;
    self.takedamage = 1;
    self.magic_bullet_shield = undefined;
}

// Namespace namespace_925d57a5/namespace_7ab70467
// Params 0, eflags: 0x0
// Checksum 0xc0fc2788, Offset: 0x2578
// Size: 0xc4
function function_9bdd4147() {
    level.adler endon(#"death");
    level.inside_man endon(#"death");
    level endon(#"player_grabbed_armor");
    wait 2;
    level.inside_man dialogue::queue("vox_cp_rkgb_08000_blkv_theresthegear_b4");
    wait 0.25;
    level.inside_man dialogue::queue("vox_cp_rkgb_08000_blkv_bodyarmorhelmet_79");
    wait 0.25;
    level.adler dialogue::queue("vox_cp_rkgb_08000_adlr_gearupbell_7d");
}

// Namespace namespace_925d57a5/namespace_7ab70467
// Params 0, eflags: 0x0
// Checksum 0x9c17c0c0, Offset: 0x2648
// Size: 0xd0
function function_8090dd99() {
    destructibles = getentarray("destructible", "targetname");
    foreach (destructible in destructibles) {
        if (isdefined(destructible) && destructible.origin[2] < 1200) {
            destructible delete();
        }
    }
}

