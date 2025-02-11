#using script_1478fbd17fe393cf;
#using script_1fd2c6e5fc8cb1c3;
#using script_32399001bdb550da;
#using script_35ae72be7b4fec10;
#using script_3626f1b2cf51a99c;
#using script_3b82b8c68189025e;
#using script_4134e1e2e7684c4c;
#using script_44aef2868ad2e317;
#using script_4ae261b2785dda9f;
#using script_4ccd0c3512b52a10;
#using script_4ec222619bffcfd1;
#using script_5dcd6dc4b2161186;
#using script_744ba1f2f99cf072;
#using scripts\core_common\doors_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\math_shared;
#using scripts\core_common\player\player_stats;
#using scripts\core_common\scene_shared;
#using scripts\core_common\spawner_shared;
#using scripts\core_common\stealth\utility;
#using scripts\core_common\struct;
#using scripts\core_common\values_shared;
#using scripts\cp_common\dialogue;
#using scripts\cp_common\gametypes\battlechatter;
#using scripts\cp_common\objectives;
#using scripts\cp_common\util;

#namespace namespace_94c47ce5;

// Namespace namespace_94c47ce5/namespace_9d0478f0
// Params 0, eflags: 0x0
// Checksum 0x4da91b7c, Offset: 0x590
// Size: 0x170
function function_ef6de0f0() {
    function_771e686b();
    level dialogue::function_96171f6d("vox_cp_rkgb_01000_adlr_andonemorething_89");
    wait 0.7;
    level dialogue::function_96171f6d("vox_cp_rkgb_01000_adlr_heknowstoomucha_c9");
    var_6ac302b4 = dialog_tree::new_tree(undefined, undefined, 1, 1);
    var_6ac302b4 dialog_tree::add_option(#"hash_32b4eefcf1a1af51", undefined, undefined, undefined, 1, undefined, undefined, &kgb_ins_activation::function_3d2a48a7, "vox_cp_rkgb_01000_adlr_goodmannowiknow_b0");
    var_6ac302b4 dialog_tree::add_option(#"hash_32b4edfcf1a1ad9e", undefined, undefined, undefined, 1, undefined, undefined, &kgb_ins_activation::function_3d2a48a7, "vox_cp_rkgb_01000_adlr_understood_55");
    var_6ac302b4 dialog_tree::add_option(#"hash_32b4ecfcf1a1abeb", undefined, undefined, undefined, 1, undefined, undefined, &kgb_ins_activation::function_3d2a48a7, "vox_cp_rkgb_01000_adlr_understood_55");
    choice = var_6ac302b4 dialog_tree::run();
    wait 0.7;
}

// Namespace namespace_94c47ce5/namespace_9d0478f0
// Params 0, eflags: 0x0
// Checksum 0x76cbc056, Offset: 0x708
// Size: 0x19c
function function_771e686b() {
    level.player endon(#"death");
    namespace_6f1d35e1::function_14291ddf(#"uie_computer_informant");
    namespace_6f1d35e1::function_487b4340(#"hash_3e13db919d477bb2");
    namespace_6f1d35e1::function_5d2e6f6a(9);
    thread namespace_353d803e::function_5ec3080d();
    wait 1;
    namespace_6f1d35e1::function_4951a2c8(1, 50);
    level waittill(#"typing_complete");
    namespace_6f1d35e1::function_4951a2c8(2, 50);
    level waittill(#"typing_complete");
    namespace_6f1d35e1::function_4951a2c8(3, 50);
    level waittill(#"typing_complete");
    namespace_6f1d35e1::function_4951a2c8(4, 50);
    level waittill(#"typing_complete");
    namespace_6f1d35e1::function_4951a2c8(5, 50);
    level waittill(#"typing_complete");
    namespace_6f1d35e1::function_93dd719c(#"hash_7c531daa5491c19");
}

// Namespace namespace_94c47ce5/namespace_9d0478f0
// Params 0, eflags: 0x0
// Checksum 0xcba43f5e, Offset: 0x8b0
// Size: 0x34c
function function_9b596d4d() {
    level.player endon(#"death");
    level.var_a21e79c9 = getent("vol_recruitmentoffice", "targetname");
    if (!function_11b2b847()) {
        var_9dce83fe = getent("sm_informant_file_model", "targetname");
        if (isdefined(var_9dce83fe)) {
            var_9dce83fe delete();
        }
        if (isdefined(level.var_a21e79c9)) {
            level.var_a21e79c9 delete();
        }
        return;
    }
    thread function_477a3a8();
    level.informant = spawner::simple_spawn_single("kgb_informant_spawner", &function_429cb29f);
    objectives::goto(#"hash_76daa952e81173e7", level.informant.origin, #"hash_5da41b58c699fab8", 0);
    struct = struct::get("obj_informant_struct", "targetname");
    objectives::update_position(#"hash_76daa952e81173e7", struct.origin);
    objectives_ui::function_49dec5b(#"hash_76daa952e81173e7", undefined, #"hash_7a9aa670bcff290");
    objectives::hide(#"hash_76daa952e81173e7");
    s_result = level.informant waittill(#"death");
    if (isdefined(s_result.mod) && s_result.mod == "MOD_UNKNOWN") {
        objectives::remove(#"hash_76daa952e81173e7");
        return;
    }
    level.var_1b4de43[level.var_1b4de43.size] = "informant";
    level notify(#"ping_map");
    level flag::set("flag_informant_killed");
    objectives::complete(#"hash_76daa952e81173e7");
    player_decision::function_8c0836dd(2);
    player_decision::function_83bb4d9c(1);
    level.player stats::function_dad108fa(#"hash_40745959404663d3", 1);
    function_b7d0119e();
}

// Namespace namespace_94c47ce5/namespace_9d0478f0
// Params 0, eflags: 0x0
// Checksum 0x45015bc7, Offset: 0xc08
// Size: 0x11c
function function_b7d0119e() {
    level.player endon(#"death");
    level endon(#"flag_player_swap");
    waitframe(1);
    if (level flag::get("flag_keycard_acquired")) {
        level dialogue::function_96171f6d("vox_cp_rkgb_01650_blkv_thattakescareof_b8");
    } else {
        level dialogue::function_96171f6d("vox_cp_rkgb_01650_blkv_adlerwillbeplea_e6");
    }
    while (true) {
        level waittill(#"hash_7158dbd72a2043b0");
        if (level.player istouching(level.var_a21e79c9)) {
            break;
        }
        wait 1;
    }
    level thread savegame::checkpoint_save(1);
    level dialogue::function_96171f6d("vox_cp_rkgb_01650_blkv_itisnoteasybein_9a");
}

// Namespace namespace_94c47ce5/namespace_9d0478f0
// Params 0, eflags: 0x0
// Checksum 0xfbf39540, Offset: 0xd30
// Size: 0x23c
function function_429cb29f() {
    self endon(#"death", #"deleted", #"entitydeleted");
    self setteam("axis");
    self thread function_72472b59();
    self thread function_7fb0c444();
    self battlechatter::function_2ab9360b(0);
    level thread scene::play("scene_kgb_office_informant");
    self namespace_979752dc::function_2324f175(0);
    self.threatsight = 0;
    chair = getent("informant_chair", "targetname");
    self.var_a08ba405 = chair;
    self.var_c681e4c1 = 0;
    self.propername = #"hash_32ec1ebb26836258";
    self actions::function_df6077("body_shield", 0);
    self.var_d3f0031c = "td_scene_nonlethal_behind_b_informant";
    self.var_4f8ed4b2 = #"hash_6a4c1594be34b79f";
    self.var_59212ad0 = "td_scene_nonlethal_behind_b_informant";
    self.var_f535b314 = #"hash_6a4c1594be34b79f";
    self.var_1f1bd6ed = chair.origin;
    self.var_598a8a9 = chair.angles;
    self.var_caa295ea = 0;
    self.var_7b026ceb = 48;
    self thread namespace_5f58ebe5::function_6f070100();
    self function_3d5afd29();
    level flag::wait_till("flag_player_swap");
    self delete();
}

// Namespace namespace_94c47ce5/namespace_9d0478f0
// Params 0, eflags: 0x0
// Checksum 0x28c2a041, Offset: 0xf78
// Size: 0x54
function function_3d5afd29() {
    self namespace_979752dc::set_event_override("cover_blown", &function_5f368d67);
    self namespace_979752dc::set_event_override("combat", &function_5f368d67);
}

// Namespace namespace_94c47ce5/namespace_9d0478f0
// Params 1, eflags: 0x0
// Checksum 0xa04e087f, Offset: 0xfd8
// Size: 0xec
function function_5f368d67(*event) {
    self endon(#"death");
    if (!level flag::get_any(level.var_dae73e42) && level flag::get("player_doing_stealth_action")) {
        self.spotted = 1;
        level.var_f695d653 = namespace_5f58ebe5::function_37c2fed8();
        level flag::set("kgb_fail_mission");
        level flag::set("stealth_spotted");
        self namespace_979752dc::function_2324f175(0);
        return false;
    }
    return true;
}

// Namespace namespace_94c47ce5/namespace_9d0478f0
// Params 0, eflags: 0x0
// Checksum 0xd9e88fd, Offset: 0x10d0
// Size: 0x186
function function_7fb0c444() {
    self endon(#"death", #"deleted", #"entitydeleted", #"hash_39550364a879e1d4");
    level endon(#"flag_player_swap");
    var_bb3b46c7 = 1;
    var_a21e79c9 = getent("vol_recruitmentoffice", "targetname");
    while (var_bb3b46c7) {
        wait 0.5;
        corpses = getcorpsearray();
        if (isdefined(corpses) && corpses.size) {
            for (i = 0; i < corpses.size; i++) {
                if (corpses[i] istouching(var_a21e79c9)) {
                    if (util::within_fov(self.origin, self.angles, corpses[i].origin, cos(120))) {
                        var_bb3b46c7 = 0;
                        level flag::set("flag_social_stealth_failed");
                    }
                }
            }
        }
        waitframe(1);
    }
}

// Namespace namespace_94c47ce5/namespace_9d0478f0
// Params 0, eflags: 0x0
// Checksum 0xeb5ab08f, Offset: 0x1260
// Size: 0x1e8
function function_72472b59() {
    self endon(#"death", #"deleted", #"entitydeleted", #"hash_39550364a879e1d4");
    level endon(#"flag_player_swap");
    door = getent("recruitment_office_door", "targetname");
    door doors::waittill_door_opened();
    self thread function_67c8f49b();
    var_1db7eb00 = 1;
    while (true) {
        if (var_1db7eb00) {
            self dialogue::queue("vox_cp_rkgb_01640_info_ohareyouhereabo_37");
            wait randomfloatrange(5, 10);
            self dialogue::queue("vox_cp_rkgb_01640_info_humming_46");
            wait randomfloatrange(0.5, 1.5);
            self dialogue::queue("vox_cp_rkgb_01640_info_loudsigh_d0");
            var_1db7eb00 = 0;
        } else if (math::cointoss()) {
            self dialogue::queue("vox_cp_rkgb_01640_info_humming_46");
        } else {
            self dialogue::queue("vox_cp_rkgb_01640_info_loudsigh_d0");
        }
        wait randomfloatrange(10, 25);
    }
}

// Namespace namespace_94c47ce5/namespace_9d0478f0
// Params 0, eflags: 0x0
// Checksum 0x92b348dd, Offset: 0x1450
// Size: 0x94
function function_67c8f49b() {
    level.player endon(#"death");
    level endon(#"flag_player_swap");
    self endon(#"death");
    self waittill(#"hash_39550364a879e1d4");
    self stopsounds();
    wait 0.6;
    self thread dialogue::queue("vox_cp_rkgb_01640_info_whamuffledchoki_9f");
}

// Namespace namespace_94c47ce5/namespace_9d0478f0
// Params 0, eflags: 0x0
// Checksum 0xf89a4c4c, Offset: 0x14f0
// Size: 0xe4
function function_477a3a8() {
    level.player endon(#"death");
    struct = struct::get("kgb_informant_file", "targetname");
    struct util::create_cursor_hint(undefined, (0, 0, 0), #"hash_563db985365ec0a9", 50, undefined, &function_acea38c0, undefined, undefined, undefined, undefined, undefined, 0, &function_e533aeee);
    level flag::wait_till("flag_player_swap");
    struct util::remove_cursor_hint();
    struct struct::delete();
}

// Namespace namespace_94c47ce5/namespace_9d0478f0
// Params 1, eflags: 0x0
// Checksum 0xdd14e605, Offset: 0x15e0
// Size: 0x58
function function_e533aeee(*var_248cbbcf) {
    if (level.player flag::get("encumbered") || level flag::get("informant_file_open")) {
        return false;
    }
    return true;
}

// Namespace namespace_94c47ce5/namespace_9d0478f0
// Params 1, eflags: 0x0
// Checksum 0x9ced42f2, Offset: 0x1640
// Size: 0x1b4
function function_acea38c0(*var_248cbbcf) {
    level.player endon(#"death");
    level flag::set("informant_file_open");
    namespace_e77bf565::function_f6eb250d("cinematicmotion_static");
    level.player val::set(#"hash_2463ab97c65a943c", "freezecontrols", 1);
    level.player notifyonplayercommandremove("show_itin", "+actionslot 4");
    level.player note_display::function_97c69304(#"hash_5ca93292f4e979ef");
    namespace_353d803e::function_28897188();
    level.player namespace_61e6d095::function_b0bad5ff(undefined, undefined, 1);
    hint_tutorial::function_9f427d88(0);
    level.player notifyonplayercommand("show_itin", "+actionslot 4");
    level.player val::reset(#"hash_2463ab97c65a943c", "freezecontrols");
    level flag::clear("informant_file_open");
    namespace_e77bf565::function_f6eb250d();
}

// Namespace namespace_94c47ce5/namespace_9d0478f0
// Params 0, eflags: 0x0
// Checksum 0xe482aa59, Offset: 0x1800
// Size: 0x4c
function function_11b2b847() {
    level.player endon(#"death");
    if (!isdefined(level.player)) {
        return false;
    }
    return !level.player player_decision::function_2da4c32c();
}

// Namespace namespace_94c47ce5/namespace_9d0478f0
// Params 0, eflags: 0x0
// Checksum 0x3993dec7, Offset: 0x1858
// Size: 0xdc
function function_aa622b93() {
    var_9dce83fe = getent("sm_informant_file_model", "targetname");
    if (isdefined(var_9dce83fe)) {
        var_9dce83fe delete();
    }
    chair = getent("informant_chair", "targetname");
    if (isdefined(chair)) {
        chair delete();
    }
    var_a21e79c9 = getent("vol_recruitmentoffice", "targetname");
    if (isdefined(var_a21e79c9)) {
        var_a21e79c9 delete();
    }
}

