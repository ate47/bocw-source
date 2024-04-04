// Atian COD Tools GSC CW decompiler test
#using script_39ee47b0c71ab0f1;
#using script_13ba67412d79c7f;
#using scripts\zm_common\zm_utility.csc;
#using scripts\zm_common\zm_trial.csc;
#using scripts\core_common\postfx_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\system_shared.csc;

#namespace zm_trial_util;

// Namespace zm_trial_util/zm_trial_util
// Params 0, eflags: 0x5
// Checksum 0x7ddb897b, Offset: 0x450
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"zm_trial_util", &preinit, &finalize_clientfields, undefined, undefined);
}

// Namespace zm_trial_util/zm_trial_util
// Params 0, eflags: 0x6 linked
// Checksum 0x7d5b276a, Offset: 0x4a8
// Size: 0xfc
function private preinit() {
    level.var_940b67bb = getuimodel(function_5f72e972(#"zm_trials"), "roundTitle");
    level.var_63e5f17c = getuimodel(function_5f72e972(#"zm_trials"), "roundDescription");
    if (!zm_trial::is_trial_mode()) {
        return;
    }
    callback::on_localclient_connect(&on_localplayer_connect);
    level.var_a2859227 = 0;
    level.var_f995ece6 = zm_trial_timer::register();
    level.var_e7295382 = zm_trial_weapon_locked::register_clientside();
}

// Namespace zm_trial_util/zm_trial_util
// Params 1, eflags: 0x6 linked
// Checksum 0x3b98e827, Offset: 0x5b0
// Size: 0x44
function private on_localplayer_connect(localclientnum) {
    timer_model = function_c8b7588d(localclientnum);
    setuimodelvalue(timer_model, 0);
}

// Namespace zm_trial_util/zm_trial_util
// Params 1, eflags: 0x6 linked
// Checksum 0xe5854129, Offset: 0x600
// Size: 0x984
function private finalize_clientfields(*localclientnum) {
    if (!zm_trial::is_trial_mode()) {
        return;
    }
    clientfield::register("world", "ZMHudGlobal.trials.trialIndex", 1, getminbitcountfornum(15), "int", &function_741dae5b, 0, 0);
    clientfield::register("toplayer", "" + #"hash_6536ca4fb2858a9f", 16000, 1, "int", &function_ff287922, 0, 0);
    clientfield::function_5b7d846d("ZMHudGlobal.trials.roundNumber", #"zm_trials", #"roundnumber", 1, getminbitcountfornum(30), "int", &function_88806df3, 0, 0);
    clientfield::function_5b7d846d("ZMHudGlobal.trials.roundSuccess", #"zm_trials", #"roundsuccess", 1, getminbitcountfornum(1), "int", undefined, 0, 0);
    clientfield::function_5b7d846d("ZMHudGlobal.trials.strikes", #"zm_trials", #"strikes", 1, getminbitcountfornum(3), "int", undefined, 0, 0);
    clientfield::function_5b7d846d("ZMHudGlobal.trials.disableGun", #"zm_trials", #"disablegun", 1, getminbitcountfornum(1), "int", undefined, 0, 0);
    clientfield::function_5b7d846d("ZMHudGlobal.trials.disableEquip", #"zm_trials", #"disableequip", 1, getminbitcountfornum(1), "int", undefined, 0, 0);
    clientfield::function_5b7d846d("ZMHudGlobal.trials.disableSpecial", #"zm_trials", #"disablespecial", 1, getminbitcountfornum(1), "int", undefined, 0, 0);
    clientfield::function_5b7d846d("ZMHudGlobal.trials.disablePerks", #"zm_trials", #"disableperks", 1, getminbitcountfornum(1), "int", undefined, 0, 0);
    clientfield::function_5b7d846d("ZMHudGlobal.trials.disableAbilities", #"zm_trials", #"disableabilities", 1, getminbitcountfornum(1), "int", undefined, 0, 0);
    clientfield::register("toplayer", "zm_trials_timer", 1, getminbitcountfornum(540), "int", &function_bb753058, 0, 1);
    clientfield::register("toplayer", "zm_trials_weapon_locked", 1, 1, "counter", &function_4b6a4a84, 0, 0);
    clientfield::function_5b7d846d("ZMHudGlobal.trials.playerCounterMax", #"zm_trials", #"playercountermax", 1, getminbitcountfornum(1000), "int", undefined, 0, 0);
    clientfield::function_5b7d846d("ZMHudGlobal.trials.gameState", #"zm_trials", #"gamestate", 1, 2, "int", &function_686840b2, 0, 1);
    clientfield::function_5b7d846d("ZMHudGlobal.trials.failurePlayer", #"zm_trials", #"failureplayer", 1, 4, "int", undefined, 0, 0);
    clientfield::function_d89771ec("string", "ZMHudGlobal.trials.failureReason", #"zm_trials", #"failurereason", 1, &function_b9a5a377, 0, 0);
    clientfield::function_5b7d846d("ZMHudGlobal.trials.gameStartTime", #"zm_trials", #"gamestarttime", 1, 31, "int", undefined, 0, 0);
    clientfield::function_5b7d846d("ZMHudGlobal.trials.showScoreboard", #"zm_trials", #"showscoreboard", 1, getminbitcountfornum(1), "int", undefined, 0, 0);
    clientfield::function_5b7d846d("ZMHudGlobal.trials.globalCheckState", #"zm_trials", #"globalcheckstate", 1, getminbitcountfornum(2), "int", undefined, 0, 0);
    clientfield::function_5b7d846d("ZMHudGlobal.trials.globalCounterValue", #"zm_trials", #"globalcountervalue", 1, getminbitcountfornum(1000), "int", undefined, 0, 0);
    clientfield::function_5b7d846d("ZMHudGlobal.trials.globalCounterMax", #"zm_trials", #"globalcountermax", 1, getminbitcountfornum(1000), "int", undefined, 0, 0);
    clientfield::function_5b7d846d("ZMHudGlobal.trials.hudDeactivated", #"zm_trials", #"huddeactivated", 1, 1, "int", undefined, 0, 0);
    for (i = 0; i < 5; i++) {
        clientfield::function_5b7d846d("PlayerList.client" + i + "." + "trialsCheckState", #"hash_97df1852304b867", [hash(isdefined(i) ? "" + i : ""), #"trialscheckstate"], 1, 2, "int", undefined, 0, 0);
        clientfield::function_5b7d846d("PlayerList.client" + i + "." + "trialsCounterValue", #"hash_97df1852304b867", [hash(isdefined(i) ? "" + i : ""), #"trialscountervalue"], 1, getminbitcountfornum(1000), "int", undefined, 0, 0);
    }
}

// Namespace zm_trial_util/zm_trial_util
// Params 7, eflags: 0x6 linked
// Checksum 0xaed5d3cf, Offset: 0xf90
// Size: 0x74
function private function_ff287922(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (bwastimejump) {
        self function_3862d4bd(1);
        return;
    }
    self function_3862d4bd(0);
}

// Namespace zm_trial_util/zm_trial_util
// Params 7, eflags: 0x6 linked
// Checksum 0x3240606, Offset: 0x1010
// Size: 0x5c
function private function_741dae5b(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    level.var_6d87ac05 = zm_trial::function_ce2fdd3b(bwastimejump);
}

// Namespace zm_trial_util/zm_trial_util
// Params 7, eflags: 0x6 linked
// Checksum 0x27b12aa5, Offset: 0x1078
// Size: 0x104
function private function_88806df3(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    round_index = bwastimejump - 1;
    if (isdefined(level.var_6d87ac05) && isdefined(level.var_6d87ac05.rounds[round_index])) {
        on_challenge_end(fieldname);
        level.var_1420e3f6 = level.var_6d87ac05.rounds[round_index];
        function_c3febfe1(fieldname);
    } else {
        on_challenge_end(fieldname);
        level.var_1420e3f6 = undefined;
    }
    function_d59810a5();
}

// Namespace zm_trial_util/zm_trial_util
// Params 7, eflags: 0x6 linked
// Checksum 0x722b6ed3, Offset: 0x1188
// Size: 0x88
function private function_686840b2(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    level.var_a2859227 = bwastimejump;
    function_d59810a5();
    if (level.var_a2859227 != 0) {
        waittillframeend();
        level notify(#"hash_7646638df88a3656");
    }
}

// Namespace zm_trial_util/zm_trial_util
// Params 7, eflags: 0x6 linked
// Checksum 0x7cf3d4ec, Offset: 0x1218
// Size: 0x5c
function private function_b9a5a377(*localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    level.var_411ba6f4 = bwastimejump;
    function_d59810a5();
}

// Namespace zm_trial_util/zm_trial_util
// Params 7, eflags: 0x6 linked
// Checksum 0xc8146791, Offset: 0x1280
// Size: 0xc4
function private function_bb753058(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!function_65b9eb0f(fieldname)) {
        timer_model = function_c8b7588d(fieldname);
        duration_msec = bwastimejump * 1000;
        setuimodelvalue(timer_model, getservertime(fieldname, 1) + duration_msec);
    }
}

// Namespace zm_trial_util/zm_trial_util
// Params 7, eflags: 0x6 linked
// Checksum 0xd0d5d1cd, Offset: 0x1350
// Size: 0x54
function private function_4b6a4a84(localclientnum, *oldval, *newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    self function_97444b02(bwastimejump);
}

// Namespace zm_trial_util/zm_trial_util
// Params 1, eflags: 0x6 linked
// Checksum 0x8d0e1196, Offset: 0x13b0
// Size: 0xd8
function private function_c3febfe1(local_client_num) {
    if (isdefined(level.var_1420e3f6)) {
        for (i = 0; i < level.var_1420e3f6.challenges.size; i++) {
            challenge = level.var_1420e3f6.challenges[i];
            if (isdefined(level.var_75e93a54[challenge.name]) && isdefined(level.var_75e93a54[challenge.name].var_c5dd8620)) {
                [[ level.var_75e93a54[challenge.name].var_c5dd8620 ]](local_client_num, challenge.params);
            }
        }
    }
}

// Namespace zm_trial_util/zm_trial_util
// Params 1, eflags: 0x6 linked
// Checksum 0xba0eb368, Offset: 0x1490
// Size: 0xe0
function private on_challenge_end(local_client_num) {
    if (isdefined(level.var_1420e3f6)) {
        level notify(#"hash_7646638df88a3656");
        for (i = 0; i < level.var_1420e3f6.challenges.size; i++) {
            challenge = level.var_1420e3f6.challenges[i];
            if (isdefined(level.var_75e93a54[challenge.name]) && isdefined(level.var_75e93a54[challenge.name].var_bbcdbff5)) {
                [[ level.var_75e93a54[challenge.name].var_bbcdbff5 ]](local_client_num);
            }
        }
    }
}

// Namespace zm_trial_util/zm_trial_util
// Params 0, eflags: 0x6 linked
// Checksum 0x1e8a94ce, Offset: 0x1578
// Size: 0x102
function private function_d59810a5() {
    assert(isdefined(level.var_a2859227));
    setuimodelvalue(level.var_940b67bb, #"");
    setuimodelvalue(level.var_63e5f17c, #"");
    switch (level.var_a2859227) {
    default:
        if (isdefined(level.var_1420e3f6)) {
            setuimodelvalue(level.var_940b67bb, level.var_1420e3f6.name_str);
            setuimodelvalue(level.var_63e5f17c, level.var_1420e3f6.desc_str);
        }
        break;
    }
}

// Namespace zm_trial_util/zm_trial_util
// Params 1, eflags: 0x6 linked
// Checksum 0xed460c0b, Offset: 0x1688
// Size: 0x42
function private function_c8b7588d(localclientnum) {
    return createuimodel(function_1df4c3b0(localclientnum, #"zm_hud"), "trialsTimer");
}

// Namespace zm_trial_util/zm_trial_util
// Params 1, eflags: 0x2 linked
// Checksum 0xf01c90fa, Offset: 0x16d8
// Size: 0x94
function function_97444b02(localclientnum) {
    if (!level.var_e7295382 zm_trial_weapon_locked::is_open(localclientnum)) {
        level.var_e7295382 zm_trial_weapon_locked::open(localclientnum);
    }
    level.var_e7295382 zm_trial_weapon_locked::function_1e74977(localclientnum);
    self playsound(localclientnum, #"hash_17c7895c4b5180ce");
}

