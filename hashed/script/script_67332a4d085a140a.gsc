#using script_3dc93ca9902a9cda;
#using script_54412fb3a6fab34c;
#using script_85cd2e9a28ea8a1;
#using scripts\core_common\array_shared;
#using scripts\core_common\audio_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\music_shared;
#using scripts\core_common\struct;
#using scripts\core_common\util_shared;
#using scripts\cp_common\snd;
#using scripts\cp_common\snd_utility;

#namespace namespace_61150688;

// Namespace namespace_61150688/level_preinit
// Params 1, eflags: 0x24
// Checksum 0x294d2290, Offset: 0x238
// Size: 0x2c
function private event_handler[level_preinit] function_b489bb7b(*eventstruct) {
    snd::function_5e69f468(&_objective);
}

// Namespace namespace_61150688/event_cc819519
// Params 1, eflags: 0x24
// Checksum 0x86176bc7, Offset: 0x270
// Size: 0x44
function private event_handler[event_cc819519] function_686b88aa(*eventstruct) {
    snd::function_294cb4fa();
    snd::waitforplayers();
    level thread exfil();
}

// Namespace namespace_61150688/namespace_fdf485e5
// Params 1, eflags: 0x4
// Checksum 0x1e243d3d, Offset: 0x2c0
// Size: 0x162
function private _objective(objective) {
    switch (objective) {
    case #"tkdn_heli_intro":
        level thread heli_intro();
        break;
    case #"tkdn_heli_trailer_park":
    case #"tkdn_heli_hotel_parking_lot":
    case #"tkdn_heli_convoy_aslt":
        music("combat");
        break;
    case #"tkdn_heli_hotel_breach":
        music("");
        break;
    case #"tkdn_heli_exfil":
        music("");
        break;
    case #"no_game":
        break;
    default:
        /#
            snd::function_81fac19d(snd::function_d78e3644(), "<dev string:x38>" + objective + "<dev string:x5b>");
        #/
        break;
    }
}

// Namespace namespace_61150688/namespace_fdf485e5
// Params 1, eflags: 0x0
// Checksum 0xc313f6bc, Offset: 0x430
// Size: 0x15c
function music(var_b12adf3) {
    level.var_825fa088 = [];
    level.var_825fa088[#"intro"] = "1_0_intro";
    level.var_825fa088[#"combat"] = "2_1_combat";
    level.var_825fa088[#"breach"] = "3_0_breach";
    level.var_825fa088[#"kill_confirmed"] = "4_0_kill_confirmed";
    level.var_825fa088[#"chopper_down"] = "5_0_chopper_down";
    level.var_825fa088[#"escape"] = "6_1_escape";
    level.var_825fa088[#"exfil"] = "7_0_exfil";
    state = level.var_825fa088[var_b12adf3];
    if (!isdefined(var_b12adf3) || !isdefined(state)) {
        state = "";
    }
    snd::waitforplayers();
    music::setmusicstate(state);
}

// Namespace namespace_61150688/namespace_fdf485e5
// Params 0, eflags: 0x0
// Checksum 0xe1d7373f, Offset: 0x598
// Size: 0xb4
function heli_intro() {
    level waittill(#"hash_7fd5da39cde7ddef");
    music("intro");
    snd::client_msg("heli_intro_music");
    level waittill(#"hash_6bd0c3833569cd67");
    snd::client_msg("heli_door_open");
    level waittill(#"hash_68135a607affd904");
    wait 1;
    music("combat");
}

// Namespace namespace_61150688/namespace_fdf485e5
// Params 0, eflags: 0x0
// Checksum 0xcb8b015a, Offset: 0x658
// Size: 0x7c
function breach() {
    level waittill(#"hash_30f8c0265810bdb1");
    wait 0.1;
    music("breach");
    level flag::wait_till("aldrich_dead");
    wait 1;
    music("kill_confirmed");
}

// Namespace namespace_61150688/namespace_fdf485e5
// Params 0, eflags: 0x0
// Checksum 0x71e4d66c, Offset: 0x6e0
// Size: 0x54
function function_e6aee48f() {
    wait 2.2;
    snd::play("evt_sm_tkd_heli_spinout_rpg", level.var_9a3944f4);
    wait 5.08;
    snd::play("evt_sm_tkd_heli_crash_mountain_explo", level.var_9a3944f4);
}

// Namespace namespace_61150688/namespace_fdf485e5
// Params 0, eflags: 0x0
// Checksum 0xbcf61562, Offset: 0x740
// Size: 0x5c
function function_d27e1651() {
    music("");
    wait 0.3;
    music("chopper_down");
    wait 6;
    music("escape");
}

// Namespace namespace_61150688/namespace_fdf485e5
// Params 0, eflags: 0x0
// Checksum 0x676f0c08, Offset: 0x7a8
// Size: 0x3c
function exfil() {
    level flag::wait_till("gas_station_escape_complete");
    music("exfil");
}

