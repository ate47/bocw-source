#using script_237e957844a8197c;
#using script_32399001bdb550da;
#using script_7728aa611ab72ad9;
#using scripts\core_common\ai_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\spawner_shared;
#using scripts\core_common\struct;
#using scripts\core_common\trigger_shared;
#using scripts\core_common\util_shared;
#using scripts\core_common\vehicle_shared;
#using scripts\cp_common\hms_util;
#using scripts\cp_common\objectives;
#using scripts\cp_common\skipto;
#using scripts\cp_common\spawn_manager;
#using scripts\cp_common\util;

#namespace namespace_ee4af661;

// Namespace namespace_ee4af661/namespace_ee4af661
// Params 1, eflags: 0x0
// Checksum 0x1e15a396, Offset: 0x330
// Size: 0x7c
function start(*str_objective) {
    level hms_util::function_ee1d1df6("woods", "Woods", "woods_rooftop_exit_start");
    trigger::use("defend_wave_2_woods_trigger", "targetname");
    level flag::set("flg_turn_on_rooftop_kill_volume");
}

// Namespace namespace_ee4af661/namespace_ee4af661
// Params 2, eflags: 0x0
// Checksum 0x2bae8b09, Offset: 0x3b8
// Size: 0x1c4
function main(*str_objective, *var_50cc0d4f) {
    /#
        hms_util::print("<dev string:x38>");
    #/
    hms_util::function_eaa0342e("rooftop_containment_warnings", "rooftop_containment_fails");
    savegame::checkpoint_save();
    level thread function_75a82f0a();
    wait 4;
    var_ebb73e3 = spawner::simple_spawn("defend_3_enemies", &hms_util::function_23271c2f, #"axis");
    trigger::use("defend_wave_3_woods_trigger", "targetname");
    level.var_f65bf003 usevehicle(level.player, getdvarint(#"hash_669568df1908398d", 1) ? 5 : 2);
    level.player setplayerangles(level.player.angles + (0, -90, 0));
    level.player hms_util::function_2e7c81f6(#"lmg_light_t9");
    savegame::checkpoint_save();
    skipto::function_4e3ab877("rooftop_exit");
}

/#

    // Namespace namespace_ee4af661/namespace_ee4af661
    // Params 4, eflags: 0x0
    // Checksum 0x1b590921, Offset: 0x588
    // Size: 0x44
    function cleanup(*str_objective, *var_50cc0d4f, *var_aa1a6455, *player) {
        hms_util::print("<dev string:x51>");
    }

#/

// Namespace namespace_ee4af661/namespace_ee4af661
// Params 0, eflags: 0x0
// Checksum 0x61f7076f, Offset: 0x5d8
// Size: 0x1a4
function function_75a82f0a() {
    level endon(#"end_game");
    level.woods hms_util::dialogue("Blackbird, where the fuck are you!? We can't hold these guys off forever!");
    level.var_f65bf003 = vehicle::simple_spawn_single("exfil_chopper_fly_in");
    var_1cb288cc = getaiarray("chopper_pilot", "targetname");
    var_96b618f3 = var_1cb288cc[0];
    level.var_f65bf003 hms_util::function_150e9e66();
    level.var_f65bf003 thread vehicle::go_path();
    var_96b618f3 hms_util::dialogue("(Radio) I found a soft spot on the north end! Get your asses over there!", 1, "allies", "Blackbird");
    var_96b618f3 hms_util::dialogue("(Radio) It won't stay quiet for long!", 1, "allies", "Blackbird");
    level flag::wait_till("flg_exfil_heli_rumble");
    earthquake(0.2, 3, level.player.origin, 200);
    level.woods hms_util::dialogue("Mason! Get to the chopper!");
}

// Namespace namespace_ee4af661/namespace_ee4af661
// Params 1, eflags: 0x0
// Checksum 0xa2f99d66, Offset: 0x788
// Size: 0xd0
function play_smoke_fx(str_targetname) {
    var_1fa85f59 = struct::get_array(str_targetname);
    foreach (var_d83df459 in var_1fa85f59) {
        playfx(level._effect[#"hash_b63f0232a3d5f82"], var_d83df459.origin);
    }
}

