// Atian COD Tools GSC CW decompiler test
#using scripts\core_common\callbacks_shared.csc;
#using scripts\core_common\clientfield_shared.csc;
#using script_2f226180773b89b9;
#using script_13ba67412d79c7f;
#using script_151cd5772fe546db;
#using scripts\zm_common\zm_powerups.csc;
#using scripts\core_common\system_shared.csc;
#using scripts\core_common\struct.csc;

#namespace zstandard;

// Namespace zstandard/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x27e99916, Offset: 0x160
// Size: 0x214
function event_handler[gametype_init] main(*eventstruct) {
    callback::on_localclient_connect(&on_localplayer_connect);
    finalize_clientfields();
    level.var_f5682bb8 = zm_arcade_timer::register();
    level.var_f995ece6 = zm_trial_timer::register();
    level.var_b9f167ba = self_revive_visuals_rush::register();
    level._zombie_gamemodeprecache = &onprecachegametype;
    level._zombie_gamemodemain = &onstartgametype;
    for (i = 0; i < 5; i++) {
        clientfield::function_5b7d846d("PlayerList.client" + i + ".multiplier_count", #"hash_97df1852304b867", [hash(isdefined(i) ? "" + i : ""), #"multiplier_count"], 1, 12, "int", undefined, 0, 0);
        clientfield::function_5b7d846d("PlayerList.client" + i + ".multiplier_blink", #"hash_97df1852304b867", [hash(isdefined(i) ? "" + i : ""), #"multiplier_blink"], 1, 1, "int", undefined, 0, 0);
    }
}

// Namespace zstandard/zstandard
// Params 1, eflags: 0x4
// Checksum 0x451d1fbe, Offset: 0x380
// Size: 0xb4
function private finalize_clientfields(*localclientnum) {
    clientfield::register("toplayer", "zm_trials_timer", 1, getminbitcountfornum(540), "int", &function_bb753058, 0, 1);
    clientfield::function_5b7d846d("ZMHudGlobal.trials.gameStartTime", #"zm_trials", #"gamestarttime", 1, 31, "int", undefined, 0, 0);
}

// Namespace zstandard/zstandard
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x440
// Size: 0x4
function onprecachegametype() {
    
}

// Namespace zstandard/zstandard
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x450
// Size: 0x4
function onstartgametype() {
    
}

// Namespace zstandard/zstandard
// Params 1, eflags: 0x4
// Checksum 0xfe2d3db7, Offset: 0x460
// Size: 0x44
function private on_localplayer_connect(localclientnum) {
    timer_model = function_c8b7588d(localclientnum);
    setuimodelvalue(timer_model, 0);
}

// Namespace zstandard/zstandard
// Params 1, eflags: 0x4
// Checksum 0xdf3c8594, Offset: 0x4b0
// Size: 0x42
function private function_c8b7588d(localclientnum) {
    return createuimodel(function_1df4c3b0(localclientnum, #"zm_hud"), "trialsTimer");
}

// Namespace zstandard/zstandard
// Params 7, eflags: 0x4
// Checksum 0xdf401675, Offset: 0x500
// Size: 0xc4
function private function_bb753058(localclientnum, *oldval, newval, *bnewent, *binitialsnap, *fieldname, *bwastimejump) {
    if (!function_65b9eb0f(fieldname)) {
        timer_model = function_c8b7588d(fieldname);
        duration_msec = bwastimejump * 1000;
        setuimodelvalue(timer_model, getservertime(fieldname, 1) + duration_msec);
    }
}

