// Atian COD Tools GSC CW decompiler test
#using script_4052585f7ae90f3a;
#using script_19971192452f4209;
#using script_13114d8a31c6152a;
#using script_32399001bdb550da;
#using scripts\cp_common\dialogue.gsc;
#using scripts\cp_common\util.gsc;
#using script_3b82b8c68189025e;
#using scripts\cp_common\skipto.gsc;
#using scripts\core_common\array_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;
#using scripts\core_common\values_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\exploder_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\flag_shared.gsc;

#namespace hub_post_kgb;

// Namespace hub_post_kgb/cp_ger_hub_post_kgb
// Params 1, eflags: 0x2 linked
// Checksum 0xa5ce39e3, Offset: 0x708
// Size: 0xc
function starting(*var_d3440450) {
    
}

// Namespace hub_post_kgb/cp_ger_hub_post_kgb
// Params 2, eflags: 0x2 linked
// Checksum 0xfb966e46, Offset: 0x720
// Size: 0x23c
function main(var_d3440450, *var_50cc0d4f) {
    level namespace_31c67f6d::function_6194f34a("post_kgb", 1);
    level thread function_53ea6532();
    setlightingstate(3);
    level thread function_9a76d250();
    level thread namespace_31c67f6d::function_15231086("eboard_ready");
    var_a2279767 = getent("map_table", "targetname");
    var_a2279767 hide();
    var_475021af = getent("hub_mdl_car_01_clip", "targetname");
    var_475021af hide();
    s_player_start = struct::get("s_post_kgb_player_start", "targetname");
    level.player setorigin(s_player_start.origin);
    level.player setplayerangles(s_player_start.angles);
    level thread namespace_31c67f6d::function_29279de1("post_kgb");
    level thread namespace_31c67f6d::function_b0558ba2("6");
    level thread function_ae2b72b9();
    level thread namespace_31c67f6d::function_7fd3a4d8(undefined, undefined, 3, 1);
    level waittill(#"hash_5ae6599dd9f93170");
    if (isdefined(var_50cc0d4f)) {
        skipto::function_4e3ab877(var_50cc0d4f);
    }
}

// Namespace hub_post_kgb/cp_ger_hub_post_kgb
// Params 0, eflags: 0x2 linked
// Checksum 0xd6426efd, Offset: 0x968
// Size: 0x88
function function_ae2b72b9() {
    wait(1);
    level.player val::set(#"hash_1758bde589c2e32c", "freezecontrols", 1);
    wait(4);
    level.player val::set(#"hash_1758bde589c2e32c", "freezecontrols", 0);
    level notify(#"hash_6b714d5d8d203c49");
}

// Namespace hub_post_kgb/cp_ger_hub_post_kgb
// Params 0, eflags: 0x2 linked
// Checksum 0xaf6afdbc, Offset: 0x9f8
// Size: 0x34
function function_9a76d250() {
    level.woods thread function_2ed9170();
    level.hudson thread function_c350b5c7();
}

// Namespace hub_post_kgb/cp_ger_hub_post_kgb
// Params 0, eflags: 0x2 linked
// Checksum 0xdeb8bc05, Offset: 0xa38
// Size: 0x71c
function function_2ed9170() {
    self thread function_22967a29();
    self.var_ba1eee16 = spawnstruct();
    self.var_ba1eee16.var_c5c9acca[0] = [["vox_cp_sh6_06200_wood_lookaliveitsadl_25", 0.5, 1], ["vox_cp_sh6_06200_masn_agentbell_bc", 0, 0.5, level.mason]];
    self.var_ba1eee16.var_c5c9acca[1] = [["vox_cp_sh6_06200_masn_holdupdingusish_50", 1, 0.5, level.mason], ["vox_cp_sh6_06200_wood_laughwhatsupbel_93"]];
    self.var_ba1eee16.var_c5c9acca[2] = ["vox_cp_sh6_06200_wood_yeah_c6", 0.5, 1];
    self.var_ba1eee16.var_c5c9acca[3] = ["vox_cp_sh6_06200_masn_agentbell_bc", 1, 1, level.mason];
    self.var_ba1eee16.var_962cbf19[0] = ["vox_cp_sh6_06200_wood_ithinkweredoneh_0d", 0.5];
    self.var_ba1eee16.var_962cbf19[1] = ["vox_cp_sh6_06200_masn_goonovertothebo_14", 0.5, level.mason];
    self.var_ba1eee16.var_f2190d3d = "scene_hub_" + (isdefined(level.var_f5552371) ? level.var_f5552371 : "") + "_dialog_" + self.animname;
    self.var_ba1eee16.s_tree = dialog_tree::function_82b16606(&function_d762b8f7, &function_937dad6a, 1, 1, self.var_ba1eee16.var_f2190d3d);
    self.var_ba1eee16.s_tree dialog_tree::function_58d27b23(#"hash_18cd8df4f7d56ea5", undefined, "dt_1a", "waiting_idle");
    self.var_ba1eee16.s_tree dialog_tree::function_58d27b23(#"hash_18cd8af4f7d5698c", undefined, "dt_1b", "waiting_idle");
    self.var_ba1eee16.s_tree dialog_tree::function_9e36808(#"hash_7aacdc411fa2adda", undefined, "dt_1b2", "waiting_idle");
    self.var_ba1eee16.s_tree dialog_tree::function_9e36808(#"hash_7aacdd411fa2af8d", undefined, "dt_1b3", "waiting_idle");
    self.var_ba1eee16.s_tree dialog_tree::function_58d27b23(#"hash_18cd8bf4f7d56b3f", undefined, "dt_1c", "waiting_idle");
    self.var_ba1eee16.s_tree dialog_tree::function_9e36808(#"hash_7aafde411fa4e717", undefined, "dt_1c2", "waiting_idle", 1, undefined, undefined, &function_d67f91df);
    self.var_ba1eee16.var_cb67e512 = self.var_ba1eee16.s_tree dialog_tree::function_7fe78745(1, "woods_convo_exit", 1, #"hash_18589726ffc5a631", undefined, undefined, undefined, 1, "flag_dialog_nevermind", "forever");
    self.var_ba1eee16.s_tree dialog_tree::function_6bbbf87("woods_convo_exit", #"hash_7d30c89656f6b000", undefined, undefined, undefined, 1, undefined, "forever");
    level.var_d9ba130a = dialog_tree::function_82b16606(undefined, undefined, 1, 1, self.var_ba1eee16.var_f2190d3d);
    level.var_d9ba130a dialog_tree::function_58d27b23(#"hash_7aafdd411fa4e564", undefined, "dt_1c3", "waiting_idle", 1, undefined, undefined, &function_854a536d);
    level.var_d9ba130a dialog_tree::function_58d27b23(#"hash_7aafdc411fa4e3b1", undefined, "dt_1c4", "waiting_idle", 1, undefined, undefined, &function_854a536d);
    self.var_ba1eee16.str_location = "van";
    self.var_ba1eee16.var_17b38a0e = undefined;
    self.var_ba1eee16.var_e1eebb0b = 1;
    self.var_ba1eee16.var_142355f9 = array(240, 650);
    self.var_ba1eee16.var_9b7161e6 = array(240, 650);
    self.var_ba1eee16.var_e9797a7f = array(240, 650);
    self.var_ba1eee16.var_cbdef43f = array(240, 650);
    self.var_ba1eee16.var_89db7e3d = 1;
    self thread namespace_31c67f6d::function_7b0516d7();
}

// Namespace hub_post_kgb/cp_ger_hub_post_kgb
// Params 0, eflags: 0x2 linked
// Checksum 0x6c03a895, Offset: 0x1160
// Size: 0x6c
function function_22967a29() {
    self waittill(#"hash_733b5b04b1674e79");
    transient = savegame::function_6440b06b(#"transient");
    transient.var_16e4161b = 1;
    level thread savegame::function_7790f03();
}

// Namespace hub_post_kgb/cp_ger_hub_post_kgb
// Params 0, eflags: 0x2 linked
// Checksum 0xa4b16f7e, Offset: 0x11d8
// Size: 0xb4
function function_d762b8f7() {
    if (level flag::get("woods_sub_tree")) {
        level flag::clear("woods_sub_tree");
        return;
    }
    if (!level flag::get("alder_passing_by_woods")) {
        level.adler ghost();
        level.park ghost();
    }
    level.woods namespace_31c67f6d::function_282ccb63();
}

// Namespace hub_post_kgb/cp_ger_hub_post_kgb
// Params 0, eflags: 0x2 linked
// Checksum 0x37f4fb7c, Offset: 0x1298
// Size: 0x8c
function function_937dad6a() {
    if (!level flag::get("woods_sub_tree")) {
        level flag::clear("alder_passing_by_woods");
        level.adler show();
        level.park show();
        level.woods namespace_31c67f6d::function_7b9b6d21();
    }
}

// Namespace hub_post_kgb/cp_ger_hub_post_kgb
// Params 0, eflags: 0x2 linked
// Checksum 0x7ee7da8f, Offset: 0x1330
// Size: 0x9c
function function_d67f91df() {
    level.woods waittill(#"hash_48ace2900075b6e8", #"hash_12324459eb2bc76d");
    level flag::set("woods_sub_tree");
    level dialog_tree::function_21780fc5(level.var_d9ba130a, self.var_ba1eee16.var_30dc5656);
    level.var_d9ba130a thread dialog_tree::run(level.woods);
}

// Namespace hub_post_kgb/cp_ger_hub_post_kgb
// Params 0, eflags: 0x2 linked
// Checksum 0x8b20b9fe, Offset: 0x13d8
// Size: 0x64
function function_854a536d() {
    level.woods waittill(#"hash_48ace2900075b6e8", #"hash_12324459eb2bc76d");
    level.woods.var_ba1eee16.s_tree thread dialog_tree::run(level.woods);
}

// Namespace hub_post_kgb/cp_ger_hub_post_kgb
// Params 0, eflags: 0x2 linked
// Checksum 0x1971b27b, Offset: 0x1448
// Size: 0x4b4
function function_c350b5c7() {
    self.var_ba1eee16 = spawnstruct();
    self.var_ba1eee16.var_c5c9acca[0] = ["vox_cp_sh6_06300_hdsn_makeitquickimbu_c8", 2.5];
    self.var_ba1eee16.var_c5c9acca[1] = ["vox_cp_sh6_06300_hdsn_whatisit_cc", 3];
    self.var_ba1eee16.var_c5c9acca[2] = ["vox_cp_sh6_06300_hdsn_agentbellprocee_ea", 2];
    self.var_ba1eee16.var_962cbf19[0] = ["vox_cp_sh6_06300_hdsn_wrapupanythinge_65", 0.5];
    self.var_ba1eee16.var_962cbf19[1] = ["vox_cp_sh6_06300_hdsn_readyupagent_83", 0.5];
    self.var_ba1eee16.var_f2190d3d = "scene_hub_" + (isdefined(level.var_f5552371) ? level.var_f5552371 : "") + "_dialog_" + self.animname;
    self.var_ba1eee16.s_tree = dialog_tree::function_82b16606(&namespace_31c67f6d::function_282ccb63, &namespace_31c67f6d::function_7b9b6d21, 1, 1, self.var_ba1eee16.var_f2190d3d);
    self.var_ba1eee16.s_tree dialog_tree::function_58d27b23(#"hash_20f85c1191383760", undefined, "dt_1a", "waiting_idle");
    self.var_ba1eee16.s_tree dialog_tree::function_9e36808(#"hash_3e3bc3d9c2860056", undefined, "dt_1a2", "waiting_idle");
    self.var_ba1eee16.s_tree dialog_tree::function_58d27b23(#"hash_20f85f1191383c79", undefined, "dt_1b", "waiting_idle");
    self.var_ba1eee16.s_tree dialog_tree::function_58d27b23(#"hash_20f85e1191383ac6", undefined, "dt_1c", "waiting_idle");
    self.var_ba1eee16.s_tree dialog_tree::function_9e36808(#"hash_3e42cbd9c28c2c9c", undefined, "dt_1c2", "waiting_idle");
    self.var_ba1eee16.var_cb67e512 = self.var_ba1eee16.s_tree dialog_tree::function_7fe78745(1, "hudson_convo_exit", 1, #"hash_18589726ffc5a631", undefined, undefined, undefined, 1, "flag_dialog_nevermind", "forever");
    self.var_ba1eee16.s_tree dialog_tree::function_6bbbf87("hudson_convo_exit", #"hash_52d822a2a38b7e4d", undefined, undefined, undefined, 1, undefined, "forever", &function_82af6494);
    self.var_fc9bb816 = ["vox_cp_sh6_06300_hdsn_carryon_2c", "vox_cp_sh6_06300_hdsn_goodluck_86"];
    self flag::set("flag_hudson_dialog_option1_unlocked");
    self.var_ba1eee16.str_location = "tv_table";
    self.var_ba1eee16.var_17b38a0e = undefined;
    self.var_ba1eee16.var_e1eebb0b = undefined;
    self.var_ba1eee16.var_142355f9 = undefined;
    self.var_ba1eee16.var_9b7161e6 = undefined;
    self.var_ba1eee16.var_e9797a7f = undefined;
    self.var_ba1eee16.var_cbdef43f = undefined;
    self.var_ba1eee16.var_89db7e3d = 1;
    self thread namespace_31c67f6d::function_7b0516d7();
}

// Namespace hub_post_kgb/cp_ger_hub_post_kgb
// Params 0, eflags: 0x2 linked
// Checksum 0xdf6a3717, Offset: 0x1908
// Size: 0xb2
function function_82af6494() {
    if (!isdefined(self.var_35893d9c)) {
        self.var_35893d9c = -1;
    }
    if (self.var_35893d9c == -1) {
        level scene::play(self.var_ba1eee16.var_f2190d3d, "dt_first_exit");
    } else {
        self thread dialogue::queue(self.var_fc9bb816[self.var_35893d9c]);
    }
    self.var_35893d9c++;
    if (self.var_35893d9c >= self.var_fc9bb816.size) {
        self.var_35893d9c = 0;
    }
}

// Namespace hub_post_kgb/cp_ger_hub_post_kgb
// Params 0, eflags: 0x2 linked
// Checksum 0xc4f290a7, Offset: 0x19c8
// Size: 0x1a0
function function_77e1542b() {
    var_5179bfff = "vox_cp_sh6_06300_hdsn_youavailable_3d";
    var_a57eb785 = "vox_cp_sh6_06300_hdsn_goon_e1";
    var_4cd38ab9 = ["vox_cp_sh6_06300_hdsn_yeah_b5", "vox_cp_sh6_06300_hdsn_goon_e1", "vox_cp_sh6_06300_hdsn_ofcourseitscuba_c6", "vox_cp_sh6_06300_hdsn_uhhuh_50", "vox_cp_sh6_06300_hdsn_youcanaskadlert_f5", "vox_cp_sh6_06300_hdsn_woodsyeah_2d", "vox_cp_sh6_06300_hdsn_mmm_55"];
    self dialogue::queue(var_5179bfff);
    wait(5);
    var_c47e3e56 = 0;
    while (true) {
        if (!self flag::get("flag_in_dialog")) {
            if (!self flag::get("looking_away_from_phone")) {
                self dialogue::queue(var_4cd38ab9[var_c47e3e56]);
                var_c47e3e56++;
                if (var_c47e3e56 >= var_4cd38ab9.size) {
                    var_c47e3e56 = 0;
                }
            }
        } else {
            self flag::wait_till_clear("flag_in_dialog");
            self dialogue::queue(var_a57eb785);
        }
        wait(randomfloatrange(10, 25));
    }
}

// Namespace hub_post_kgb/cp_ger_hub_post_kgb
// Params 0, eflags: 0x2 linked
// Checksum 0x306bdb93, Offset: 0x1b70
// Size: 0x4c
function function_53ea6532() {
    level thread namespace_4ed3ce47::function_46f173b2();
    level thread namespace_4ed3ce47::function_2d62fc6f();
    level thread namespace_4ed3ce47::function_91962847();
}

// Namespace hub_post_kgb/cp_ger_hub_post_kgb
// Params 0, eflags: 0x2 linked
// Checksum 0xbe863599, Offset: 0x1bc8
// Size: 0x3c
function function_f50bc4b9() {
    flag::init("flag_post_kgb_complete");
    level thread exploder::exploder("exp_post_kgb_briefing");
}

// Namespace hub_post_kgb/cp_ger_hub_post_kgb
// Params 1, eflags: 0x2 linked
// Checksum 0x895a0778, Offset: 0x1c10
// Size: 0x144
function function_b58272a1(*var_d3440450) {
    level namespace_31c67f6d::function_6194f34a("post_kgb");
    level thread function_53ea6532();
    setlightingstate(3);
    var_a2279767 = getent("map_table", "targetname");
    var_a2279767 hide();
    var_475021af = getent("hub_mdl_car_01_clip", "targetname");
    var_475021af hide();
    level notify(#"hash_92004b21ffa8edc");
    level thread function_d51cce5a();
    level thread namespace_31c67f6d::function_29279de1("post_kgb");
    level thread namespace_31c67f6d::function_b0558ba2("6");
}

// Namespace hub_post_kgb/cp_ger_hub_post_kgb
// Params 0, eflags: 0x2 linked
// Checksum 0xa46a950c, Offset: 0x1d60
// Size: 0xec
function function_d51cce5a() {
    level thread function_9a76d250();
    level namespace_31c67f6d::function_7fd3a4d8(1, undefined, 1);
    level thread scene::play("scene_hub_post_kgb_dialog_woods", "zone_idle");
    phone = getent("cellphone", "targetname");
    level thread scene::play("scene_hub_post_kgb_dialog_hudson", "zone_idle", [phone]);
    level.hudson util::delay_notify(0.5, "dialog_ready");
}

// Namespace hub_post_kgb/cp_ger_hub_post_kgb
// Params 2, eflags: 0x2 linked
// Checksum 0xfaf5805c, Offset: 0x1e58
// Size: 0xcc
function function_223f05aa(var_d3440450, *var_50cc0d4f) {
    level.hudson waittill(#"hash_733b5b04b1674e79");
    level.hudson thread function_77e1542b();
    flag::wait_till("flag_post_kgb_complete");
    if (isdefined(var_50cc0d4f)) {
        skipto::function_4e3ab877(var_50cc0d4f);
    }
    if (isdefined(level.var_d7d201ba) && isdefined(level.var_28c22d88)) {
        level.player flag::set(level.var_d7d201ba);
    }
}

