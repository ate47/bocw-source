// Atian COD Tools GSC CW decompiler test
#using script_4052585f7ae90f3a;
#using script_19971192452f4209;
#using script_2a4a480476a0184f;
#using scripts\cp_common\dialogue.gsc;
#using script_3b82b8c68189025e;
#using script_5513c8efed5ff300;
#using scripts\cp_common\skipto.gsc;
#using script_32399001bdb550da;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\flag_shared.gsc;

#namespace hub_post_yamantau;

// Namespace hub_post_yamantau/cp_ger_hub_post_yamantau
// Params 1, eflags: 0x2 linked
// Checksum 0x8bfff931, Offset: 0xbe8
// Size: 0xc
function starting(*var_d3440450) {
    
}

// Namespace hub_post_yamantau/cp_ger_hub_post_yamantau
// Params 2, eflags: 0x2 linked
// Checksum 0x1bd6353e, Offset: 0xc00
// Size: 0x1d4
function main(var_d3440450, *var_50cc0d4f) {
    level namespace_31c67f6d::function_6194f34a("post_yamantau");
    level thread function_81c3adaf();
    setlightingstate(2);
    level thread function_4a614026();
    level thread namespace_31c67f6d::function_15231086("eboard_ready");
    level thread namespace_31c67f6d::function_29279de1("post_yamantau");
    level thread namespace_31c67f6d::function_b0558ba2("5");
    s_player_start = struct::get("s_post_yamantau_player_start", "targetname");
    level.player setorigin(s_player_start.origin);
    level.player setplayerangles(s_player_start.angles);
    level thread function_f84afd22();
    scene::init("scene_hub_post_yamantau_dialog_park");
    level thread function_cfce0b24();
    level namespace_31c67f6d::function_7fd3a4d8(undefined, undefined, 3, 1);
    if (isdefined(var_50cc0d4f)) {
        skipto::function_4e3ab877(var_50cc0d4f);
    }
}

// Namespace hub_post_yamantau/cp_ger_hub_post_yamantau
// Params 0, eflags: 0x2 linked
// Checksum 0x48ee1a27, Offset: 0xde0
// Size: 0x24
function function_f84afd22() {
    level thread scene::play("scene_hub_env_reel_to_reel");
}

// Namespace hub_post_yamantau/cp_ger_hub_post_yamantau
// Params 0, eflags: 0x2 linked
// Checksum 0xbfa8ad21, Offset: 0xe10
// Size: 0x9c
function function_cfce0b24() {
    clip = getent("clip_post_yamantau_briefing", "script_string");
    wait(46);
    clip delete();
    transient = savegame::function_6440b06b(#"transient");
    transient.var_16e4161b = 1;
    level thread savegame::function_7790f03();
}

// Namespace hub_post_yamantau/cp_ger_hub_post_yamantau
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0xeb8
// Size: 0x4
function function_ae2b72b9() {
    
}

// Namespace hub_post_yamantau/cp_ger_hub_post_yamantau
// Params 0, eflags: 0x2 linked
// Checksum 0x2d4ee757, Offset: 0xec8
// Size: 0x94
function function_4a614026() {
    level.adler thread function_d16e71e6();
    level.park thread function_f5cec8cd();
    level.lazar thread function_db46f2d7();
    level.sims thread function_eb65bc98();
    level.hudson thread function_72ecde0e();
    level thread function_fa0444c9();
}

// Namespace hub_post_yamantau/cp_ger_hub_post_yamantau
// Params 0, eflags: 0x2 linked
// Checksum 0x5b4c849f, Offset: 0xf68
// Size: 0x7bc
function function_d16e71e6() {
    self.var_ba1eee16 = spawnstruct();
    self.var_ba1eee16.var_c5c9acca[0] = ["vox_cp_sh5_05300_adlr_whatsonyourmind_f5", 0.5, 0.5];
    self.var_ba1eee16.var_c5c9acca[1] = ["vox_cp_sh5_05300_adlr_youreadytodothi_7f", 0.5, 0.5];
    self.var_ba1eee16.var_c5c9acca[2] = ["vox_cp_sh5_05300_adlr_somethingelse_b6", 0.5, 0.5];
    self.var_ba1eee16.var_962cbf19[0] = ["vox_cp_sh5_05300_adlr_checkouttheboar_63", 0.5];
    self.var_ba1eee16.var_962cbf19[1] = ["vox_cp_sh5_05300_adlr_finishuphereand_e9", 0.5];
    self.var_ba1eee16.var_f2190d3d = "scene_hub_" + (isdefined(level.var_f5552371) ? level.var_f5552371 : "") + "_dialog_" + self.animname;
    self.var_ba1eee16.s_tree = dialog_tree::function_82b16606(&function_958c2188, &function_1bc95f5c, 1, 1, self.var_ba1eee16.var_f2190d3d);
    self.var_ba1eee16.s_tree dialog_tree::function_58d27b23(#"hash_50b51e6e500b3071", undefined, "dt_1a", "waiting_idle", undefined, "adler_one_questioned");
    self.var_ba1eee16.s_tree dialog_tree::function_58d27b23(#"hash_50b1366e50077062", undefined, "dt_2a", "waiting_idle", 1, "adler_one_questioned", undefined, &function_91258c81);
    self.var_ba1eee16.s_tree dialog_tree::function_58d27b23(#"hash_50ae126e5004fd5f", undefined, "dt_3a", "waiting_idle");
    self.var_ba1eee16.s_tree dialog_tree::function_9e36808(#"hash_1cc6be71f87aa037", undefined, "dt_3a_2", "waiting_idle");
    self.var_ba1eee16.s_tree dialog_tree::function_9e36808(#"hash_1cc6bd71f87a9e84", undefined, "dt_3a_3", "waiting_idle", undefined, "adler_one_questioned");
    switch (randomint(3)) {
    case 0:
        self.var_ba1eee16.s_tree dialog_tree::function_6bbbf87("adler_one_questioned", #"hash_50b51b6e500b2b58", undefined, ["dt_1b", "dt_1b_end1"], "waiting_idle");
        break;
    case 1:
        self.var_ba1eee16.s_tree dialog_tree::function_6bbbf87("adler_one_questioned", #"hash_50b51b6e500b2b58", undefined, ["dt_1b", "dt_1b_end2"], "waiting_idle");
        break;
    case 2:
        self.var_ba1eee16.s_tree dialog_tree::function_6bbbf87("adler_one_questioned", #"hash_50b51b6e500b2b58", undefined, ["dt_1b", "dt_1b_end3"], "waiting_idle");
        break;
    }
    self.var_ba1eee16.var_cb67e512 = self.var_ba1eee16.s_tree dialog_tree::function_7fe78745(1, "adler_convo_exit", 1, #"hash_18589726ffc5a631", undefined, undefined, undefined, 1, "flag_dialog_nevermind", "forever");
    self.var_ba1eee16.s_tree dialog_tree::function_6bbbf87("adler_convo_exit", #"hash_31876661817f34", ["vox_cp_sh5_05300_adlr_okay_c2", "vox_cp_sh5_05300_adlr_alright_f9"], undefined, "waiting_idle", 1, undefined, "forever");
    self.var_ba1eee16.s_tree dialog_tree::function_46f25b65();
    level.var_7256f687 = dialog_tree::function_82b16606(undefined, undefined, 1, 1, self.var_ba1eee16.var_f2190d3d);
    level.var_7256f687 dialog_tree::function_58d27b23(#"hash_248fd071fca3dd09", undefined, "dt_2a_1", "waiting_idle", 1, undefined, undefined, &function_70185d79);
    level.var_7256f687 dialog_tree::function_58d27b23(#"hash_248fcd71fca3d7f0", undefined, "dt_2a_2", "waiting_idle", 1, undefined, undefined, &function_70185d79);
    self.var_ba1eee16.str_location = "tv_table";
    self.var_ba1eee16.var_17b38a0e = undefined;
    self.var_ba1eee16.var_e1eebb0b = 3;
    self.var_ba1eee16.var_142355f9 = array(240, 650);
    self.var_ba1eee16.var_9b7161e6 = array(1224, 650);
    self.var_ba1eee16.var_e9797a7f = array(240, 650);
    self.var_ba1eee16.var_cbdef43f = array(1224, 650);
    self thread namespace_31c67f6d::function_7b0516d7();
}

// Namespace hub_post_yamantau/cp_ger_hub_post_yamantau
// Params 0, eflags: 0x2 linked
// Checksum 0xe816eede, Offset: 0x1730
// Size: 0x64
function function_958c2188() {
    if (level flag::get("adler_sub_tree")) {
        level flag::clear("adler_sub_tree");
        return;
    }
    level.adler namespace_31c67f6d::function_282ccb63();
}

// Namespace hub_post_yamantau/cp_ger_hub_post_yamantau
// Params 0, eflags: 0x2 linked
// Checksum 0xdd19ee00, Offset: 0x17a0
// Size: 0x44
function function_1bc95f5c() {
    if (!level flag::get("adler_sub_tree")) {
        level.adler namespace_31c67f6d::function_7b9b6d21();
    }
}

// Namespace hub_post_yamantau/cp_ger_hub_post_yamantau
// Params 0, eflags: 0x2 linked
// Checksum 0xe02695dd, Offset: 0x17f0
// Size: 0x9c
function function_91258c81() {
    level.adler waittill(#"hash_48ace2900075b6e8", #"hash_12324459eb2bc76d");
    level flag::set("adler_sub_tree");
    level dialog_tree::function_21780fc5(level.var_7256f687, self.var_ba1eee16.var_30dc5656);
    level.var_7256f687 thread dialog_tree::run(level.adler);
}

// Namespace hub_post_yamantau/cp_ger_hub_post_yamantau
// Params 0, eflags: 0x2 linked
// Checksum 0xf37d5234, Offset: 0x1898
// Size: 0x64
function function_70185d79() {
    level.adler waittill(#"hash_48ace2900075b6e8", #"hash_12324459eb2bc76d");
    level.adler.var_ba1eee16.s_tree thread dialog_tree::run(level.adler);
}

// Namespace hub_post_yamantau/cp_ger_hub_post_yamantau
// Params 0, eflags: 0x2 linked
// Checksum 0x1b1aae4c, Offset: 0x1908
// Size: 0x744
function function_f5cec8cd() {
    self setmodel(#"hash_1609907785128df0");
    self.var_ba1eee16 = spawnstruct();
    self.var_ba1eee16.var_c5c9acca[0] = ["vox_cp_sh5_05300_park_bellididntexpec_6b", 0.5];
    self.var_ba1eee16.var_c5c9acca[1] = ["vox_cp_sh5_05300_park_yes_70", 0.5];
    self.var_ba1eee16.var_c5c9acca[2] = ["vox_cp_sh5_05300_park_somethingonyour_a1", 0.5];
    self.var_ba1eee16.var_962cbf19[0] = ["vox_cp_sh5_05300_park_staysafeoutther_3e", 0.5];
    self.var_ba1eee16.var_962cbf19[1] = ["vox_cp_sh5_05300_park_comebacktousino_ed", 0.5];
    self.var_ba1eee16.var_f2190d3d = "scene_hub_" + (isdefined(level.var_f5552371) ? level.var_f5552371 : "") + "_dialog_" + self.animname;
    self.var_ba1eee16.s_tree = dialog_tree::function_82b16606(&function_f09c19a, &function_62d9689d, 1, 1, self.var_ba1eee16.var_f2190d3d);
    self.var_ba1eee16.s_tree dialog_tree::function_58d27b23(#"hash_93b9019659132a1", undefined, "dt_1a", "waiting_idle");
    self.var_ba1eee16.s_tree dialog_tree::function_9e36808(#"hash_41686e2795b8efc9", undefined, "dt_1a_2", "waiting_idle");
    self.var_ba1eee16.s_tree dialog_tree::function_9e36808(#"hash_41686d2795b8ee16", undefined, "dt_1a_3", "waiting_idle");
    self.var_ba1eee16.s_tree dialog_tree::function_58d27b23(#"hash_93b8d1965912d88", undefined, "dt_1b", "waiting_idle");
    self.var_ba1eee16.s_tree dialog_tree::function_9e36808(#"hash_415e7c2795b0b30e", undefined, "dt_1b_2", "waiting_idle");
    if (int(level.player savegame::function_2ee66e93(#"hash_30b0b66be957c385", 0))) {
        self.var_ba1eee16.s_tree dialog_tree::function_58d27b23(#"hash_93b8e1965912f3b", undefined, "dt_1c_alt_adler", "waiting_idle", 1, "ask_about_parks_scar", undefined, &function_42091602);
    } else {
        self.var_ba1eee16.s_tree dialog_tree::function_58d27b23(#"hash_93b8e1965912f3b", undefined, "dt_1c", "waiting_idle", 1, "ask_about_parks_scar", undefined, &function_42091602);
    }
    self.var_ba1eee16.var_cb67e512 = self.var_ba1eee16.s_tree dialog_tree::function_7fe78745(1, "park_convo_exit", 1, #"hash_18589726ffc5a631", undefined, undefined, undefined, 1, "flag_dialog_nevermind", "forever");
    self.var_ba1eee16.s_tree dialog_tree::function_6bbbf87("park_convo_exit", #"hash_7e58f4ac9998f844", ["vox_cp_sh5_05300_park_illbehereifyoun_0f", "vox_cp_sh5_05300_park_verywell_a8"], undefined, "waiting_idle", 1, undefined, "forever");
    self.var_ba1eee16.s_tree dialog_tree::function_46f25b65();
    level.var_b91aa91b = dialog_tree::function_82b16606(undefined, undefined, 1, 1, level.park.var_ba1eee16.var_f2190d3d);
    level.var_b91aa91b dialog_tree::function_58d27b23(#"hash_3991c627918429b9", undefined, "dt_2a_strength", "waiting_idle", 1, undefined, undefined, &function_93672bfc);
    level.var_b91aa91b dialog_tree::function_58d27b23(#"hash_3991c327918424a0", undefined, "dt_2a_beauty", "waiting_idle", 1, undefined, undefined, &function_93672bfc);
    level.var_b91aa91b dialog_tree::function_58d27b23(#"hash_3991c42791842653", undefined, "dt_2a_disgust", "waiting_idle", 1, undefined, undefined, &function_93672bfc);
    self.var_ba1eee16.str_location = "dark_room";
    self.var_ba1eee16.var_17b38a0e = undefined;
    self.var_ba1eee16.var_e1eebb0b = 3;
    self.var_ba1eee16.var_142355f9 = array(240, 650);
    self.var_ba1eee16.var_9b7161e6 = array(240, 650);
    self.var_ba1eee16.var_e9797a7f = array(240, 650);
    self.var_ba1eee16.var_cbdef43f = array(1224, 650);
    self thread namespace_31c67f6d::function_7b0516d7();
}

// Namespace hub_post_yamantau/cp_ger_hub_post_yamantau
// Params 0, eflags: 0x2 linked
// Checksum 0x8055c415, Offset: 0x2058
// Size: 0xa4
function function_f09c19a() {
    if (level.player namespace_78e9b80::function_e538e340("tv_flashback_safehouse_video")) {
        level flag::set("flag_player_approached_flashback_TV");
    }
    if (level flag::get("ask_about_parks_scar")) {
        level flag::clear("ask_about_parks_scar");
        return;
    }
    level.park namespace_31c67f6d::function_282ccb63();
}

// Namespace hub_post_yamantau/cp_ger_hub_post_yamantau
// Params 0, eflags: 0x2 linked
// Checksum 0x224bd493, Offset: 0x2108
// Size: 0x44
function function_62d9689d() {
    if (!level flag::get("ask_about_parks_scar")) {
        level.park namespace_31c67f6d::function_7b9b6d21();
    }
}

// Namespace hub_post_yamantau/cp_ger_hub_post_yamantau
// Params 0, eflags: 0x2 linked
// Checksum 0x30971da5, Offset: 0x2158
// Size: 0x9c
function function_42091602() {
    level.park waittill(#"hash_48ace2900075b6e8", #"hash_12324459eb2bc76d");
    level flag::set("ask_about_parks_scar");
    level dialog_tree::function_21780fc5(level.var_b91aa91b, self.var_ba1eee16.var_30dc5656);
    level.var_b91aa91b thread dialog_tree::run(level.park);
}

// Namespace hub_post_yamantau/cp_ger_hub_post_yamantau
// Params 0, eflags: 0x2 linked
// Checksum 0xc57e9616, Offset: 0x2200
// Size: 0x64
function function_93672bfc() {
    level.park waittill(#"hash_48ace2900075b6e8", #"hash_12324459eb2bc76d");
    level.park.var_ba1eee16.s_tree thread dialog_tree::run(level.park);
}

// Namespace hub_post_yamantau/cp_ger_hub_post_yamantau
// Params 0, eflags: 0x2 linked
// Checksum 0x15a83768, Offset: 0x2270
// Size: 0x224
function function_eb65bc98() {
    self setmodel(#"hash_1c333f0270f01215");
    namespace_31c67f6d::function_a0abc8d3(#"hash_11c590d92c5473d5");
    self.var_ba1eee16 = spawnstruct();
    self.var_ba1eee16.var_962cbf19[0] = ["vox_cp_sh5_05300_sims_nope_c0", 0.5];
    self.var_ba1eee16.var_962cbf19[1] = ["vox_cp_sh5_05400_sims_donttouchmylegs_d2", 0.5];
    self.var_ba1eee16.var_962cbf19[2] = ["vox_cp_sh5_05300_sims_youboredorwhat_7d", 0.5];
    self.var_ba1eee16.var_962cbf19[3] = ["vox_cp_sh5_05300_sims_guysbellslonely_aa", 0.5];
    self.var_ba1eee16.s_tree = dialog_tree::function_82b16606(&namespace_31c67f6d::function_282ccb63, &namespace_31c67f6d::function_7b9b6d21, 1, 1, self.var_ba1eee16.var_f2190d3d);
    self.var_ba1eee16.var_890ce7a8 = 1;
    self.var_ba1eee16.var_18674cfa = 0;
    self.var_ba1eee16.v_offset = (0, 0, 0);
    self flag::set("flag_dialog_exhausted");
    self flag::set("flag_speak_while_fidgeting");
    self thread namespace_31c67f6d::function_7b0516d7("j_knee_ri");
}

// Namespace hub_post_yamantau/cp_ger_hub_post_yamantau
// Params 0, eflags: 0x2 linked
// Checksum 0xee95ccff, Offset: 0x24a0
// Size: 0x5e4
function function_db46f2d7() {
    self setmodel(#"hash_7bc6d7eff92fbe14");
    self.var_ba1eee16 = spawnstruct();
    self.var_ba1eee16.var_c5c9acca[0] = ["vox_cp_sh5_05300_lazr_timetobreakouty_1c_1", 0.5, 1];
    self.var_ba1eee16.var_c5c9acca[1] = ["vox_cp_sh5_05300_lazr_yougonnakeepmak_3c_1", 0.5, 1];
    self.var_ba1eee16.var_c5c9acca[2] = ["vox_cp_sh5_05300_lazr_andyoureback_41_1", 0.5, 1];
    self.var_ba1eee16.var_c5c9acca[3] = ["vox_cp_sh5_05300_lazr_yeah_c6_1", 0.5];
    self.var_ba1eee16.var_962cbf19[0] = ["vox_cp_sh5_05300_lazr_ithinkadlerwant_68_1", 0.5];
    self.var_ba1eee16.var_962cbf19[1] = ["vox_cp_sh5_05300_lazr_welltalkmoreont_c6_1", 0.5];
    self.var_ba1eee16.var_f2190d3d = "scene_hub_" + (isdefined(level.var_f5552371) ? level.var_f5552371 : "") + "_dialog_" + self.animname;
    self.var_ba1eee16.s_tree = dialog_tree::function_82b16606(&function_53d6abef, &function_bac07041, 1, 1, self.var_ba1eee16.var_f2190d3d);
    self.var_ba1eee16.s_tree dialog_tree::function_58d27b23(#"hash_fae37590b46fe81", undefined, "dt_1a", "waiting_idle");
    if (level.player namespace_70eba6e6::function_b6a02677() != 3) {
        self.var_ba1eee16.s_tree dialog_tree::function_58d27b23(#"hash_fae34590b46f968", undefined, "dt_1b", "waiting_idle");
    } else {
        self.var_ba1eee16.s_tree dialog_tree::function_58d27b23(#"hash_fae34590b46f968", undefined, ["dt_1b", "dt_1b_if_kgb"], "waiting_idle", 1, "lazar_question", undefined, &function_708ca96d);
        level.var_ba909cc8 = dialog_tree::function_82b16606(undefined, undefined, 1, 1, level.lazar.var_ba1eee16.var_f2190d3d);
        level.var_ba909cc8 dialog_tree::function_58d27b23(#"hash_faa0f590b42d1b2", undefined, "dt_2a", "waiting_idle", 1, undefined, undefined, &function_67105bb3);
        level.var_ba909cc8 dialog_tree::function_58d27b23(#"hash_faa0e590b42cfff", undefined, "dt_2a", "waiting_idle", 1, undefined, undefined, &function_67105bb3);
    }
    self.var_ba1eee16.var_cb67e512 = self.var_ba1eee16.s_tree dialog_tree::function_7fe78745(1, "lazar_convo_exit", 1, #"hash_18589726ffc5a631", undefined, undefined, undefined, 1, "flag_dialog_nevermind", "forever");
    self.var_ba1eee16.s_tree dialog_tree::function_6bbbf87("lazar_convo_exit", #"hash_4aa1bc3224a18ea4", ["vox_cp_sh5_05300_lazr_yepitsalongwayt_32_1", "vox_cp_sh5_05300_lazr_bell_ad_1"], undefined, "waiting_idle", 1, undefined, "forever");
    self.var_ba1eee16.s_tree dialog_tree::function_46f25b65();
    self.var_ba1eee16.str_location = "car";
    self.var_ba1eee16.var_17b38a0e = undefined;
    self.var_ba1eee16.var_e1eebb0b = 3;
    self.var_ba1eee16.var_89db7e3d = 1;
    self.var_ba1eee16.var_142355f9 = undefined;
    self.var_ba1eee16.var_9b7161e6 = undefined;
    self.var_ba1eee16.var_e9797a7f = undefined;
    self.var_ba1eee16.var_cbdef43f = undefined;
    self thread namespace_31c67f6d::function_7b0516d7();
}

// Namespace hub_post_yamantau/cp_ger_hub_post_yamantau
// Params 0, eflags: 0x2 linked
// Checksum 0xe86467ba, Offset: 0x2a90
// Size: 0x4c
function function_53d6abef() {
    if (is_true(level.var_cbf98853)) {
        level.var_cbf98853 = 0;
        return;
    }
    level.lazar namespace_31c67f6d::function_282ccb63();
}

// Namespace hub_post_yamantau/cp_ger_hub_post_yamantau
// Params 0, eflags: 0x2 linked
// Checksum 0x581ccac9, Offset: 0x2ae8
// Size: 0x3c
function function_bac07041() {
    if (!is_true(level.var_cbf98853)) {
        level.lazar namespace_31c67f6d::function_7b9b6d21();
    }
}

// Namespace hub_post_yamantau/cp_ger_hub_post_yamantau
// Params 0, eflags: 0x2 linked
// Checksum 0xeaa3fb53, Offset: 0x2b30
// Size: 0x8c
function function_708ca96d() {
    level.var_cbf98853 = 1;
    level.lazar waittill(#"hash_48ace2900075b6e8", #"hash_12324459eb2bc76d");
    level dialog_tree::function_21780fc5(level.var_b91aa91b, self.var_ba1eee16.var_30dc5656);
    level.var_ba909cc8 thread dialog_tree::run(level.lazar);
}

// Namespace hub_post_yamantau/cp_ger_hub_post_yamantau
// Params 0, eflags: 0x2 linked
// Checksum 0x6617da6e, Offset: 0x2bc8
// Size: 0x64
function function_67105bb3() {
    level.lazar waittill(#"hash_48ace2900075b6e8", #"hash_12324459eb2bc76d");
    level.lazar.var_ba1eee16.s_tree thread dialog_tree::run(level.lazar);
}

// Namespace hub_post_yamantau/cp_ger_hub_post_yamantau
// Params 0, eflags: 0x2 linked
// Checksum 0xf0bac637, Offset: 0x2c38
// Size: 0x5ec
function function_72ecde0e() {
    self.var_ba1eee16 = spawnstruct();
    self.var_ba1eee16.var_c5c9acca[0] = ["vox_cp_sh5_05300_hdsn_haveyoucometoco_4e", 0.5];
    self.var_ba1eee16.var_c5c9acca[1] = ["vox_cp_sh5_05300_hdsn_yeah_c6", 0.5];
    self.var_ba1eee16.var_c5c9acca[2] = ["vox_cp_sh5_05300_hdsn_yougotsomething_f6", 0.5];
    self.var_ba1eee16.var_962cbf19[0] = ["vox_cp_sh5_05300_hdsn_isnttheresometh_ca", 0.5];
    self.var_ba1eee16.var_962cbf19[1] = ["vox_cp_sh5_05300_hdsn_movealong_f6", 0.5];
    self.var_ba1eee16.var_f2190d3d = "scene_hub_" + (isdefined(level.var_f5552371) ? level.var_f5552371 : "") + "_dialog_" + self.animname;
    self.var_ba1eee16.s_tree = dialog_tree::function_82b16606(&namespace_31c67f6d::function_282ccb63, &namespace_31c67f6d::function_7b9b6d21, 1, 1, self.var_ba1eee16.var_f2190d3d);
    self.var_ba1eee16.s_tree dialog_tree::function_7fe78745(1, "hudson_intro_over", 0, #"hash_527bd51edfa7c532", undefined, "dt_1a", "waiting_idle", undefined, "hudson_intro_over");
    self.var_ba1eee16.s_tree dialog_tree::function_7fe78745(1, "hudson_intro_over", 0, #"hash_527bd41edfa7c37f", undefined, "dt_1b", "waiting_idle", undefined, "hudson_intro_over");
    self.var_ba1eee16.s_tree dialog_tree::function_7fe78745(1, "hudson_intro_over", 0, #"hash_527bd31edfa7c1cc", undefined, "dt_1c", "waiting_idle", undefined, "hudson_intro_over");
    self.var_ba1eee16.s_tree dialog_tree::function_6bbbf87("hudson_intro_over", #"hash_527ffd1edfabf201", undefined, "dt_2a", "waiting_idle");
    self.var_ba1eee16.s_tree dialog_tree::function_6bbbf87("hudson_intro_over", #"hash_527ffa1edfabece8", undefined, "dt_2b", "waiting_idle");
    self.var_ba1eee16.s_tree dialog_tree::function_6bbbf87("hudson_intro_over", #"hash_527ffb1edfabee9b", undefined, "dt_2c", "waiting_idle");
    self.var_ba1eee16.s_tree dialog_tree::function_9e36808(#"hash_5b665f7611268ade", undefined, "dt_2c_1", "waiting_idle");
    self.var_ba1eee16.var_cb67e512 = self.var_ba1eee16.s_tree dialog_tree::function_7fe78745(1, "hudson_convo_exit", 1, #"hash_18589726ffc5a631", undefined, undefined, undefined, 1, "flag_dialog_nevermind", "forever");
    self.var_ba1eee16.s_tree dialog_tree::function_6bbbf87("hudson_convo_exit", #"hash_2914a53aab8d4627", ["vox_cp_sh5_05300_hdsn_anexcellentprop_a7", "vox_cp_sh5_05300_hdsn_thankyou_a1", "vox_cp_sh5_05300_hdsn_godspeedsoldier_97"], undefined, "waiting_idle", 1, undefined, "forever");
    self.var_ba1eee16.s_tree dialog_tree::function_46f25b65();
    self.var_ba1eee16.str_location = "clerk_desk";
    self.var_ba1eee16.var_17b38a0e = undefined;
    self.var_ba1eee16.var_e1eebb0b = 3;
    self.var_ba1eee16.var_142355f9 = array(1224, 650);
    self.var_ba1eee16.var_9b7161e6 = array(1224, 650);
    self.var_ba1eee16.var_e9797a7f = array(1224, 650);
    self.var_ba1eee16.var_cbdef43f = array(1224, 650);
    self.var_ba1eee16.var_89db7e3d = 1;
    self thread namespace_31c67f6d::function_7b0516d7();
}

// Namespace hub_post_yamantau/cp_ger_hub_post_yamantau
// Params 0, eflags: 0x2 linked
// Checksum 0x80dcb8e2, Offset: 0x3230
// Size: 0x1c
function function_f50bc4b9() {
    flag::init("flag_post_yamantau_complete");
}

// Namespace hub_post_yamantau/cp_ger_hub_post_yamantau
// Params 1, eflags: 0x2 linked
// Checksum 0x49a6fc8f, Offset: 0x3258
// Size: 0x134
function function_6b03a78e(*var_d3440450) {
    level namespace_31c67f6d::function_6194f34a("post_yamantau");
    level thread function_81c3adaf();
    setlightingstate(2);
    level notify(#"hash_92004b21ffa8edc");
    clip = getent("clip_post_yamantau_briefing", "script_string");
    if (isdefined(clip)) {
        clip hide();
    }
    level thread namespace_31c67f6d::function_29279de1("post_yamantau");
    level thread namespace_31c67f6d::function_b0558ba2("5");
    level thread scene::play("scene_hub_env_reel_to_reel");
    level thread function_bbf2586d();
}

// Namespace hub_post_yamantau/cp_ger_hub_post_yamantau
// Params 0, eflags: 0x2 linked
// Checksum 0x28ff932, Offset: 0x3398
// Size: 0x4c
function function_81c3adaf() {
    level thread namespace_4ed3ce47::function_d89aa829();
    level thread namespace_4ed3ce47::function_938891c9();
    level thread namespace_4ed3ce47::function_d701d197();
}

// Namespace hub_post_yamantau/cp_ger_hub_post_yamantau
// Params 2, eflags: 0x2 linked
// Checksum 0x724c57ae, Offset: 0x33f0
// Size: 0x4c
function function_29390787(var_d3440450, *var_50cc0d4f) {
    flag::wait_till("flag_post_yamantau_complete");
    if (isdefined(var_50cc0d4f)) {
        skipto::function_4e3ab877(var_50cc0d4f);
    }
}

// Namespace hub_post_yamantau/cp_ger_hub_post_yamantau
// Params 0, eflags: 0x2 linked
// Checksum 0x7d1cae1e, Offset: 0x3448
// Size: 0x11c
function function_bbf2586d() {
    level thread function_4a614026();
    level namespace_31c67f6d::function_7fd3a4d8(1);
    level thread scene::play("scene_hub_env_reel_to_reel");
    level thread scene::play("scene_hub_post_yamantau_dialog_adler", "zone_idle");
    level thread scene::play("scene_hub_post_yamantau_dialog_lazar", "zone_idle");
    level thread scene::play("scene_hub_post_yamantau_dialog_park", "zone_idle");
    level thread scene::play("scene_hub_post_yamantau_dialog_sims", "zone_idle");
    level thread scene::play("scene_hub_post_yamantau_dialog_hudson", "zone_idle");
}

// Namespace hub_post_yamantau/cp_ger_hub_post_yamantau
// Params 0, eflags: 0x2 linked
// Checksum 0x900749a0, Offset: 0x3570
// Size: 0x154
function function_fa0444c9() {
    a_str_vo = spawnstruct();
    a_str_vo.sims = spawnstruct();
    a_str_vo.sims.dialog[0] = ["vox_cp_sh5_05300_sims_whistling_2a"];
    a_str_vo.sims.dialog[1] = ["vox_cp_sh5_05300_sims_goddammit_c4"];
    a_str_vo.sims.dialog[2] = ["vox_cp_sh5_05300_sims_therewego_18"];
    a_str_vo.sims.dialog[3] = ["vox_cp_sh5_05300_sims_whistling_2a_1"];
    a_str_vo.sims.dialog[5] = ["vox_cp_sh5_05300_sims_singlewhistle_f3"];
    level.sims thread namespace_31c67f6d::function_5bd9de0f(a_str_vo.sims.dialog, "notify_sims_speak", "flag_in_briefing", "flag_player_using_evidence_board");
}

