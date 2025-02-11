#using script_32399001bdb550da;
#using script_4ae261b2785dda9f;
#using scripts\core_common\flag_shared;
#using scripts\core_common\lui_shared;
#using scripts\core_common\music_shared;
#using scripts\core_common\system_shared;
#using scripts\core_common\util_shared;
#using scripts\core_common\values_shared;
#using scripts\cp_common\dialogue;
#using scripts\cp_common\snd;

#namespace ending;

// Namespace ending/ending
// Params 0, eflags: 0x5
// Checksum 0xc3e2e290, Offset: 0xfe8
// Size: 0x34
function private autoexec __init__system__() {
    system::register("ending_montage", &preinit, undefined, undefined, undefined);
}

// Namespace ending/ending
// Params 0, eflags: 0x4
// Checksum 0x7f76f1d7, Offset: 0x1028
// Size: 0x13c
function private preinit() {
    /#
        if (!isdefined(level.var_3cf0e895)) {
            level.var_3cf0e895 = [];
        }
        util::init_dvar("<dev string:x38>", -1, &function_db698ba5);
        util::init_dvar("<dev string:x4f>", -1, &function_db698ba5);
        util::init_dvar("<dev string:x6a>", -1, &function_db698ba5);
        util::init_dvar("<dev string:x83>", -1, &function_db698ba5);
        util::init_dvar("<dev string:x9a>", -1, &function_db698ba5);
        util::init_dvar("<dev string:xb2>", -1, &function_db698ba5);
        util::init_dvar("<dev string:xcf>", -1, &function_db698ba5);
    #/
}

/#

    // Namespace ending/ending
    // Params 1, eflags: 0x4
    // Checksum 0x6ffc6ffb, Offset: 0x1170
    // Size: 0x2c
    function private function_db698ba5(dvar) {
        level.var_3cf0e895[dvar.name] = dvar.value;
    }

#/

// Namespace ending/ending
// Params 0, eflags: 0x0
// Checksum 0x73d328e9, Offset: 0x11a8
// Size: 0x294
function function_103cd64c() {
    /#
        if (level.var_3cf0e895[#"hash_244a98ad9954177e"] >= 1) {
            return;
        }
    #/
    snd::client_msg("end_montage");
    level flag::init("flag_video_finished");
    if (!isdefined(level.player)) {
        level.player = getplayers()[0];
    }
    level.var_ae3bb477 = 1;
    /#
        if (level.var_3cf0e895[#"hash_cb74cb1ec96ff41"] >= 1) {
            level.var_ae3bb477 = 1;
        }
    #/
    if (!isdefined(level.map_name)) {
        return;
    }
    level.player val::set("ending_montage_controls", "freezecontrols", 1);
    level.player val::set("ending_montage_weapons", "disable_weapons", 1);
    if (level.map_name == "cp_rus_siege") {
        music::setmusicstate("8.1_good_ending_montage_title");
    } else {
        music::setmusicstate("8.0_bad_ending_montage");
    }
    level function_b029aa08();
    level function_a3694b1c();
    level function_eeb15395();
    level function_52e90476();
    level function_9bb5d1d8();
    music::setmusicstate("");
    level.player val::reset("ending_montage_controls", "freezecontrols");
    level.player val::reset("ending_montage_weapons", "disable_weapons");
    snd::client_msg("end_montage_end");
}

// Namespace ending/ending
// Params 0, eflags: 0x0
// Checksum 0x60ceffc6, Offset: 0x1448
// Size: 0x11c
function function_b029aa08() {
    /#
        if (level.var_3cf0e895[#"hash_9f87e8c9152584a"] >= 1 || level.var_3cf0e895[#"hash_1ec1b7c6632fb450"] >= 1 || level.var_3cf0e895[#"hash_378064960a84d05b"] >= 1 || level.var_3cf0e895[#"hash_5fb1dc41b5d1876e"] >= 1) {
            return;
        }
    #/
    level thread function_7c927add(#"hash_728ac2c0929fbffe");
    if (level.map_name == "cp_rus_siege") {
        level function_491ef059();
    } else {
        level function_1a7218fb();
    }
    level flag::wait_till("flag_video_finished");
    wait 0.5;
}

// Namespace ending/ending
// Params 0, eflags: 0x0
// Checksum 0xfbd63694, Offset: 0x1570
// Size: 0x1fc
function function_491ef059() {
    wait 1;
    if (isdefined(level.var_ae3bb477)) {
        dialogue::radio("vox_cp_mont_01215_blck_youhaveanupdate_59");
        wait 0.5;
    } else {
        wait 1;
    }
    if (level.player player_decision::function_251a57bb()) {
        if (isdefined(level.var_ae3bb477)) {
            dialogue::radio("vox_cp_mont_01215_hdsn_yeahwithbothhea_af");
            wait 0.5;
            dialogue::radio("vox_cp_mont_01215_hdsn_approximately72_df");
        } else {
            dialogue::radio("vox_cp_mont_01210_blck_ihavetosayimdis_37");
            wait 0.5;
            dialogue::radio("vox_cp_mont_01210_hdsn_yourenotgonnabe_8f");
            wait 0.5;
            dialogue::radio("vox_cp_mont_01210_blck_wellwithbothhea_66");
        }
        return;
    }
    if (isdefined(level.var_ae3bb477)) {
        dialogue::radio("vox_cp_mont_01215_hdsn_yeahaftercaptur_e1");
        wait 0.5;
        dialogue::radio("vox_cp_mont_01215_hdsn_hellgiveusadeep_d6");
        return;
    }
    dialogue::radio("vox_cp_mont_01210_blck_imlookingforwar_be");
    wait 0.5;
    dialogue::radio("vox_cp_mont_01210_hdsn_whatyouactually_17");
    wait 0.5;
    dialogue::radio("vox_cp_mont_01210_blck_hellbeavaluable_15");
    wait 0.5;
    dialogue::radio("vox_cp_mont_01210_hdsn_maybeifhedoesnt_3f");
    wait 0.5;
    dialogue::radio("vox_cp_mont_01210_blck_ithinkyoullbepl_4a");
}

// Namespace ending/ending
// Params 0, eflags: 0x0
// Checksum 0xbf756044, Offset: 0x1778
// Size: 0xd4
function function_1a7218fb() {
    wait 5;
    if (level.player player_decision::function_251a57bb()) {
        if (level.player player_decision::function_d9f060cc()) {
            dialogue::radio("vox_cp_mont_01110_pers_qasimjavadiiamn_73");
        } else {
            dialogue::radio("vox_cp_mont_01110_pers_qasimjavadinoon_a9");
        }
        return;
    }
    if (level.player player_decision::function_d9f060cc()) {
        dialogue::radio("vox_cp_mont_01110_pers_qasimjavadiyoul_c2");
        return;
    }
    dialogue::radio("vox_cp_mont_01110_pers_qasimjavadifell_39");
}

// Namespace ending/ending
// Params 0, eflags: 0x0
// Checksum 0x286de6a1, Offset: 0x1858
// Size: 0x11c
function function_a3694b1c() {
    /#
        if (level.var_3cf0e895[#"hash_1ec1b7c6632fb450"] >= 1 || level.var_3cf0e895[#"hash_378064960a84d05b"] >= 1 || level.var_3cf0e895[#"hash_5fb1dc41b5d1876e"] >= 1) {
            return;
        }
    #/
    level thread function_7c927add(#"hash_4f17e7146f08aabe");
    level flag::clear("flag_video_finished");
    if (level.map_name == "cp_rus_siege") {
        level function_abc6fa12();
    } else {
        level function_f23deb5();
    }
    level flag::wait_till("flag_video_finished");
    wait 0.5;
}

// Namespace ending/ending
// Params 0, eflags: 0x0
// Checksum 0xbbd5a252, Offset: 0x1980
// Size: 0x19c
function function_abc6fa12() {
    wait 1;
    if (isdefined(level.var_ae3bb477)) {
        dialogue::radio("vox_cp_mont_01225_blck_andantonvolkov_13");
        wait 0.5;
    } else {
        wait 1;
    }
    if (level.player player_decision::function_5584c739()) {
        if (isdefined(level.var_ae3bb477)) {
            dialogue::radio("vox_cp_mont_01225_hdsn_afterthedeathof_28");
            wait 0.5;
            dialogue::radio("vox_cp_mont_01225_hdsn_menwomenandchil_ba");
        } else {
            dialogue::radio("vox_cp_mont_01220_hdsn_volkovontheothe_ae");
            wait 0.5;
            dialogue::radio("vox_cp_mont_01220_blck_ithinkadlerpref_7a");
            wait 1;
            dialogue::radio("vox_cp_mont_01220_hdsn_atleastwithvolk_0b");
        }
        return;
    }
    if (isdefined(level.var_ae3bb477)) {
        dialogue::radio("vox_cp_mont_01225_hdsn_volkovhasbecome_51");
        wait 1;
        dialogue::radio("vox_cp_mont_01225_hdsn_theyvealreadyin_26");
        return;
    }
    dialogue::radio("vox_cp_mont_01220_hdsn_volkovontheothe_da");
    wait 0.5;
    dialogue::radio("vox_cp_mont_01220_blck_thatswhatifinds_6f");
}

// Namespace ending/ending
// Params 0, eflags: 0x0
// Checksum 0xacf4d027, Offset: 0x1b28
// Size: 0x14c
function function_f23deb5() {
    wait 5;
    if (level.player player_decision::function_5584c739()) {
        if (level.player player_decision::function_d9f060cc()) {
            dialogue::radio("vox_cp_mont_01120_pers_itisashameyouha_15");
        } else {
            dialogue::radio("vox_cp_mont_01120_pers_itisashamewelos_5a");
        }
        return;
    }
    if (level.player player_decision::function_d9f060cc()) {
        if (level.player player_decision::function_251a57bb()) {
            dialogue::radio("vox_cp_mont_01120_pers_itpleasesmethat_fd");
        } else {
            dialogue::radio("vox_cp_mont_01120_pers_aswithqasimthec_e0");
        }
        return;
    }
    if (level.player player_decision::function_251a57bb()) {
        dialogue::radio("vox_cp_mont_01120_pers_iamrelievedthat_17");
        return;
    }
    dialogue::radio("vox_cp_mont_01120_pers_aswithqasimthec_0b");
}

// Namespace ending/ending
// Params 0, eflags: 0x0
// Checksum 0xdbacb148, Offset: 0x1c80
// Size: 0x1d4
function function_eeb15395() {
    /#
        if (level.var_3cf0e895[#"hash_378064960a84d05b"] >= 1 || level.var_3cf0e895[#"hash_5fb1dc41b5d1876e"] >= 1) {
            return;
        }
    #/
    var_1584d516 = level.player player_decision::function_1c4fb6d4();
    switch (var_1584d516) {
    case 0:
        level thread function_7c927add(#"hash_1396a11eae4b6d17");
        level flag::clear("flag_video_finished");
        break;
    case 1:
        level thread function_7c927add(#"hash_739ebef66711bb91");
        level flag::clear("flag_video_finished");
        break;
    case 2:
        level thread function_10ca8022();
        break;
    }
    if (level.map_name == "cp_rus_siege") {
        level function_a0610bbf(var_1584d516);
    } else {
        level function_f057699(var_1584d516);
    }
    level flag::wait_till("flag_video_finished");
    wait 0.5;
}

// Namespace ending/ending
// Params 0, eflags: 0x0
// Checksum 0x55ffb980, Offset: 0x1e60
// Size: 0x8c
function function_10ca8022() {
    level function_7c927add(#"hash_1396a11eae4b6d17");
    level flag::clear("flag_video_finished");
    waitframe(1);
    level thread function_7c927add(#"hash_739ebef66711bb91");
    level flag::clear("flag_video_finished");
}

// Namespace ending/ending
// Params 1, eflags: 0x0
// Checksum 0xfd227ee7, Offset: 0x1ef8
// Size: 0x1d4
function function_a0610bbf(var_1584d516) {
    if (var_1584d516 == 2) {
        wait 2;
    } else {
        wait 0.5;
    }
    dialogue::radio("vox_cp_mont_01230_blck_howdidcleanupin_4f");
    wait 0.5;
    if (var_1584d516 == 0) {
        dialogue::radio("vox_cp_mont_01230_hdsn_wewereabletorec_fa");
        wait 0.5;
        dialogue::radio("vox_cp_mont_01230_hdsn_asyouknowhelenp_08");
    }
    if (var_1584d516 == 1) {
        dialogue::radio("vox_cp_mont_01230_hdsn_wewereabletorec_28");
        wait 0.5;
        dialogue::radio("vox_cp_mont_01230_blck_wevespokentomi6_86");
        wait 1;
        dialogue::radio("vox_cp_mont_01230_hdsn_lazarazoulayisr_88");
    }
    if (var_1584d516 == 2) {
        wait 1;
        dialogue::radio("vox_cp_mont_01230_hdsn_wewereabletorec_c3");
        wait 1;
        dialogue::radio("vox_cp_mont_01230_hdsn_theircasketsare_d2");
        wait 2;
        level function_726c99a5(2);
        wait 2;
        dialogue::radio("vox_cp_mont_01230_blck_wevespokentomi6_86");
    }
    wait 1;
    dialogue::radio("vox_cp_mont_01230_blck_whatabouttheres_6a");
    wait 0.5;
    dialogue::radio("vox_cp_mont_01230_hdsn_theygotoffsolov_55");
}

// Namespace ending/ending
// Params 1, eflags: 0x0
// Checksum 0x4fb157ff, Offset: 0x20d8
// Size: 0x27c
function function_f057699(var_1584d516) {
    wait 3;
    if (var_1584d516 == 0) {
        if (level.player player_decision::function_d9f060cc()) {
            dialogue::radio("vox_cp_mont_01130_pers_yousaythateleaz_9b");
        } else {
            dialogue::radio("vox_cp_mont_01130_pers_eleazarazoulayp_00");
        }
    }
    if (var_1584d516 == 1) {
        if (level.player player_decision::function_d9f060cc()) {
            dialogue::radio("vox_cp_mont_01130_pers_yousaythathelen_69");
        } else {
            dialogue::radio("vox_cp_mont_01130_pers_helenparkperish_ce");
        }
        dialogue::radio("vox_cp_mont_01130_pers_shehadbeensniff_27");
    }
    if (var_1584d516 == 2) {
        if (level.player player_decision::function_d9f060cc()) {
            wait 3;
            dialogue::radio("vox_cp_mont_01130_pers_yousaythateleaz_9b");
            wait 3;
            level function_726c99a5(2);
            wait 2;
            dialogue::radio("vox_cp_mont_01130_pers_andhelenparkwas_51");
            wait 0.5;
            dialogue::radio("vox_cp_mont_01130_pers_shehadbeensniff_27");
        } else {
            wait 3;
            dialogue::radio("vox_cp_mont_01130_pers_eleazarazoulayp_00");
            wait 3;
            level function_726c99a5(2);
            wait 2;
            dialogue::radio("vox_cp_mont_01130_pers_andhelenparkwas_51");
            wait 0.5;
            dialogue::radio("vox_cp_mont_01130_pers_shehadbeensniff_27");
        }
    }
    wait 1;
    if (level.player player_decision::function_d9f060cc()) {
        dialogue::radio("vox_cp_mont_01130_pers_asfortherestitw_4c");
        return;
    }
    dialogue::radio("vox_cp_mont_01130_pers_theothershoweve_2d");
}

// Namespace ending/ending
// Params 0, eflags: 0x0
// Checksum 0x2b98598c, Offset: 0x2360
// Size: 0xdc
function function_52e90476() {
    /#
        if (level.var_3cf0e895[#"hash_5fb1dc41b5d1876e"] >= 1) {
            return;
        }
    #/
    level thread function_7c927add(#"hash_394855f758700797");
    level flag::clear("flag_video_finished");
    if (level.map_name == "cp_rus_siege") {
        level function_a0223881();
    } else {
        level function_a08b9968();
    }
    level flag::wait_till("flag_video_finished");
    wait 0.5;
}

// Namespace ending/ending
// Params 0, eflags: 0x0
// Checksum 0xc64d9828, Offset: 0x2448
// Size: 0x164
function function_a0223881() {
    if (!player_decision::function_c8718964() && !player_decision::function_ee124ba3()) {
        wait 1;
    } else {
        wait 3;
    }
    dialogue::radio("vox_cp_mont_01240_blck_wemayhavestoppe_ec");
    wait 0.5;
    if (player_decision::function_c8718964()) {
        if (player_decision::function_ee124ba3()) {
            wait 1;
            dialogue::radio("vox_cp_mont_01240_hdsn_notanymorewetoo_b4");
        } else {
            wait 1;
            dialogue::radio("vox_cp_mont_01240_hdsn_wellwedidfinall_8d");
        }
        return;
    }
    if (player_decision::function_ee124ba3()) {
        wait 1;
        dialogue::radio("vox_cp_mont_01240_hdsn_weeliminatedsom_f7");
        return;
    }
    wait 0.5;
    dialogue::radio("vox_cp_mont_01240_hdsn_truehisnetworkh_07");
    wait 0.5;
    dialogue::radio("vox_cp_mont_01240_blck_notyet_d1");
}

// Namespace ending/ending
// Params 0, eflags: 0x0
// Checksum 0xc775fc32, Offset: 0x25b8
// Size: 0xfc
function function_a08b9968() {
    wait 5;
    if (player_decision::function_c8718964()) {
        if (player_decision::function_ee124ba3()) {
            dialogue::radio("vox_cp_mont_01140_pers_eventhoughwehav_47");
            wait 0.5;
            dialogue::radio("vox_cp_mont_01140_pers_robertaldrichha_ad");
        } else {
            dialogue::radio("vox_cp_mont_01140_pers_unfortunatelyou_a1");
        }
        return;
    }
    if (player_decision::function_ee124ba3()) {
        dialogue::radio("vox_cp_mont_01140_pers_theciamanagedto_a9");
        return;
    }
    dialogue::radio("vox_cp_mont_01140_pers_withthewestinch_fb");
    wait 2;
    level function_726c99a5(3);
}

// Namespace ending/ending
// Params 0, eflags: 0x0
// Checksum 0x173221b3, Offset: 0x26c0
// Size: 0xac
function function_9bb5d1d8() {
    level thread function_7c927add(#"hash_596ad799563eca3a");
    level flag::clear("flag_video_finished");
    if (level.map_name == "cp_rus_siege") {
        level function_7cb1accf();
    } else {
        level function_6dcbf617();
    }
    level flag::wait_till("flag_video_finished");
}

// Namespace ending/ending
// Params 0, eflags: 0x0
// Checksum 0xcb1a0d2f, Offset: 0x2778
// Size: 0x21c
function function_7cb1accf() {
    wait 2;
    dialogue::radio("vox_cp_mont_01250_blck_whatabouteurope_9e");
    wait 0.5;
    if (player_decision::function_fc8e281d()) {
        dialogue::radio("vox_cp_mont_01250_hdsn_notonlydidwesto_1d");
        wait 0.5;
        var_220ead81 = level.player player_decision::function_e40c7d56();
        switch (var_220ead81) {
        case 0:
            dialogue::radio("vox_cp_mont_01250_hdsn_wedidnteliminat_19");
            break;
        case 1:
            dialogue::radio("vox_cp_mont_01250_hdsn_wealsoflushedon_49");
            wait 0.5;
            dialogue::radio("vox_cp_mont_01250_blck_youreawordsmith_7c");
            break;
        case 2:
            dialogue::radio("vox_cp_mont_01250_hdsn_wealsoflushedtw_9a");
            wait 0.5;
            dialogue::radio("vox_cp_mont_01250_blck_suchpoetryhudso_41");
            break;
        case 3:
            dialogue::radio("vox_cp_mont_01250_hdsn_wealsoflushedal_ca");
            wait 0.5;
            dialogue::radio("vox_cp_mont_01250_blck_hudsonyourethes_e8");
            break;
        }
    } else {
        wait 1;
        dialogue::radio("vox_cp_mont_01250_hdsn_wemayhavesavedi_bc");
        wait 3;
    }
    wait 2;
    music::setmusicstate("");
    dialogue::radio("vox_cp_mont_01230_blck_andbell_f1");
}

// Namespace ending/ending
// Params 0, eflags: 0x0
// Checksum 0x149c4a44, Offset: 0x29a0
// Size: 0x284
function function_6dcbf617() {
    wait 1;
    if (player_decision::function_fc8e281d()) {
        dialogue::radio("vox_cp_mont_01150_pers_thedeathofmajor_ff");
        wait 0.5;
        var_220ead81 = level.player player_decision::function_e40c7d56();
        switch (var_220ead81) {
        case 0:
            util::delay(5, undefined, &music::setmusicstate, "");
            dialogue::radio("vox_cp_mont_01150_pers_fortunatelythec_f8");
            break;
        case 1:
            util::delay(4.1, undefined, &music::setmusicstate, "");
            dialogue::radio("vox_cp_mont_01150_pers_theciaalsomanag_5c");
            break;
        case 2:
            util::delay(4.5, undefined, &music::setmusicstate, "");
            dialogue::radio("vox_cp_mont_01150_pers_theciaalsomanag_f4");
            break;
        case 3:
            util::delay(9.1, undefined, &music::setmusicstate, "");
            dialogue::radio("vox_cp_mont_01150_pers_theciaalsomanag_8a");
            break;
        }
        music::setmusicstate("");
        wait 1;
        dialogue::radio("vox_cp_mont_01150_pers_buthavenodoubtt_59");
        return;
    }
    wait 2;
    util::delay(4, undefined, &music::setmusicstate, "");
    dialogue::radio("vox_cp_mont_01150_pers_nowthateuropeis_09");
}

// Namespace ending/ending
// Params 1, eflags: 0x0
// Checksum 0x6d77027f, Offset: 0x2c30
// Size: 0x5c
function function_7c927add(var_ec670c03) {
    if (isdefined(var_ec670c03)) {
        level lui::play_movie(var_ec670c03, "fullscreen_additive", 1, 0, 0);
    }
    level flag::set("flag_video_finished");
}

// Namespace ending/ending
// Params 1, eflags: 0x0
// Checksum 0x3baa67ca, Offset: 0x2c98
// Size: 0xcc
function function_726c99a5(fade_out_time) {
    level thread lui::screen_fade_out(fade_out_time, "black");
    wait fade_out_time;
    level.player notify(#"menuresponse", {#menu:#"full_screen_movie", #response:#"finished_movie_playback", #value:1});
    level thread lui::screen_fade_in(0, "black");
}

