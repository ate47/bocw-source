// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_trial.csc;
#using script_45657e86e8f90414;
#using script_1793e0dffb81a6c8;
#using script_70ab01a7690ea256;
#using scripts\zm_common\trials\zm_trial_disable_hud.csc;
#using scripts\zm_common\trials\zm_trial_disable_buys.csc;
#using script_5afd8ff8f8304cc4;
#using scripts\zm_common\zm_trial_util.csc;
#using scripts\core_common\flag_shared.csc;
#using scripts\core_common\struct.csc;

#namespace ztrials;

// Namespace ztrials/gametype_init
// Params 1, eflags: 0x20
// Checksum 0x69a99c97, Offset: 0xd0
// Size: 0x84
function event_handler[gametype_init] main(*eventstruct) {
    level._zombie_gamemodeprecache = &onprecachegametype;
    level._zombie_gamemodemain = &onstartgametype;
    level flag::init(#"ztrial", 1);
    println("<unknown string>");
}

// Namespace ztrials/ztrials
// Params 0, eflags: 0x0
// Checksum 0xf6806555, Offset: 0x160
// Size: 0x24
function onprecachegametype() {
    println("<unknown string>");
}

// Namespace ztrials/ztrials
// Params 0, eflags: 0x0
// Checksum 0xc27454c6, Offset: 0x190
// Size: 0x24
function onstartgametype() {
    println("<unknown string>");
}

// Namespace ztrials/event_b72c1844
// Params 1, eflags: 0x24
// Checksum 0x54ba9e2a, Offset: 0x1c0
// Size: 0x5c
function private event_handler[event_b72c1844] function_df05c5d(eventstruct) {
    if (namespace_fcd611c3::is_active() && self namespace_fcd611c3::function_26f124d8()) {
        return;
    }
    self thread zm_trial_util::function_97444b02(eventstruct.localclientnum);
}

