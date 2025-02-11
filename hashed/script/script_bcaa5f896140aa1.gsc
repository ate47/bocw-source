#using script_1351b3cdb6539f9b;
#using script_2d443451ce681a;
#using script_32399001bdb550da;
#using script_5a7c9cfbe3d9580c;
#using script_61fee52bb750ac99;
#using scripts\abilities\ability_util;
#using scripts\core_common\ai_shared;
#using scripts\core_common\array_shared;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\doors_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\healthoverlay;
#using scripts\core_common\load_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\spawner_shared;
#using scripts\core_common\struct;
#using scripts\core_common\util_shared;
#using scripts\cp\cp_nam_prisoner;
#using scripts\cp_common\bb;
#using scripts\cp_common\dialogue;
#using scripts\cp_common\gametypes\battlechatter;
#using scripts\cp_common\objectives;
#using scripts\cp_common\skipto;
#using scripts\cp_common\util;

#namespace namespace_bf7b1fb2;

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 1, eflags: 0x0
// Checksum 0xf43abc22, Offset: 0x9d8
// Size: 0xc
function start(*str_objective) {
    
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 2, eflags: 0x0
// Checksum 0x8c2d1dbd, Offset: 0x9f0
// Size: 0x11c
function main(str_objective, *var_50cc0d4f) {
    if (level.var_731c10af.var_42659717 == 0) {
        next_obj = "path_end_1";
    }
    if (level.var_731c10af.var_42659717 == 1) {
        next_obj = "path_end_2";
    }
    if (level.var_731c10af.var_42659717 == 2) {
        next_obj = "path_end_3";
    }
    if (level.var_731c10af.var_42659717 == 3) {
        next_obj = "path_end_4";
    }
    level thread cp_nam_prisoner::function_1f911b89(next_obj);
    flag = "caves";
    level flag::wait_till(flag + "_complete");
    level skipto::function_4e3ab877(var_50cc0d4f, 0);
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 4, eflags: 0x0
// Checksum 0xcc7d565f, Offset: 0xb18
// Size: 0x21c
function cleanup(*str_objective, *var_50cc0d4f, *var_aa1a6455, *player) {
    wait 1;
    caves1_room1_enemies1 = getentarray("caves1_room1_enemies1", "targetname");
    array::thread_all(caves1_room1_enemies1, &namespace_d9b153b9::ent_cleanup);
    caves1_room2_enemies1 = getentarray("caves1_room2_enemies1", "targetname");
    array::thread_all(caves1_room2_enemies1, &namespace_d9b153b9::ent_cleanup);
    caves1_room2_enemies1_rappel = getentarray("caves1_room2_enemies1_rappel", "targetname");
    array::thread_all(caves1_room2_enemies1_rappel, &namespace_d9b153b9::ent_cleanup);
    caves1_room3_enemies1 = getentarray("caves1_room3_enemies1", "targetname");
    array::thread_all(caves1_room3_enemies1, &namespace_d9b153b9::ent_cleanup);
    caves_triggers = getentarray("caves_triggers", "script_noteworthy");
    array::thread_all(caves_triggers, &namespace_d9b153b9::ent_cleanup);
    caves_volumes = getentarray("caves_volumes", "script_noteworthy");
    array::thread_all(caves_volumes, &namespace_d9b153b9::ent_cleanup);
    door_struct = namespace_d9b153b9::door_setup("caves_door_struct", 1, 1);
    door_struct thread namespace_d9b153b9::ent_cleanup();
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 0, eflags: 0x0
// Checksum 0xb3c8b2e8, Offset: 0xd40
// Size: 0x64
function function_c26b0bc0() {
    level flag::init("caves_complete");
    level flag::init("flag_caves_backtrack_blocker");
    level flag::init("flag_caves_room1_player_shot");
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 0, eflags: 0x0
// Checksum 0x16a053e8, Offset: 0xdb0
// Size: 0x194
function caves() {
    level endon(#"start_outro");
    var_c79d614f = "caves";
    level flag::wait_till("flag_" + var_c79d614f);
    level.var_3f5c80c8 = "caves";
    level thread savegame::checkpoint_save();
    var_2cf9fe23 = level.var_731c10af.var_42659717 + 1;
    str = "visit_" + var_2cf9fe23 + "_" + var_c79d614f;
    bb::function_cd497743(str, level.player);
    while (true) {
        level thread namespace_d9b153b9::function_a57f6629(var_c79d614f);
        level function_ea87c777(var_c79d614f);
        if (level flag::get(var_c79d614f + "_complete")) {
            break;
        }
        wait 0.5;
        level flag::wait_till("flag_" + var_c79d614f);
    }
    level flag::set("flag_caves_backtrack_blocker");
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 0, eflags: 0x0
// Checksum 0xa76ff276, Offset: 0xf50
// Size: 0x30
function function_ba477085() {
    level notify(#"waterfall_end_vo_idle");
    level notify(#"hash_411bceb4b6375aff");
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 1, eflags: 0x0
// Checksum 0xbbb44e12, Offset: 0xf88
// Size: 0x12c
function function_ea87c777(var_c79d614f) {
    level endon(#"visit_restart");
    level endon(#"start_outro");
    level endon(var_c79d614f + "_end");
    thread function_ba477085();
    if (level.var_731c10af.paths[var_c79d614f].count == 0) {
        thread function_7c946f81(var_c79d614f);
        function_8c82ed6e(var_c79d614f);
    }
    level flag::wait_till(var_c79d614f + "_door_opened");
    namespace_d9b153b9::function_e106e062(var_c79d614f);
    level flag::set(var_c79d614f + "_complete");
    level flag::set(var_c79d614f + "_exited");
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 1, eflags: 0x0
// Checksum 0x433a717c, Offset: 0x10c0
// Size: 0x264
function function_7c946f81(var_c79d614f) {
    level endon(#"visit_restart");
    level endon(#"start_outro");
    level endon(var_c79d614f + "_complete");
    level flag::wait_till(var_c79d614f + "_exited");
    level flag::clear("flag_" + var_c79d614f);
    level flag::clear("flag_caves1_room1_start");
    level flag::clear("caves1_room1_bundle1_flag_true");
    level flag::clear("flag_caves1_room1_finished");
    level flag::clear("flag_caves1_hallway1_start");
    level flag::clear("caves1_hallway1_bundle1_flag_true");
    level flag::clear("flag_caves1_hallway1_finished");
    level flag::clear("flag_caves1_room2_start");
    level flag::clear("flag_caves1_room2_half");
    level flag::clear("caves1_room2_bundle1_flag_true");
    level flag::clear("flag_caves1_room2_finished");
    level flag::clear("flag_caves1_room3_start");
    level flag::clear("caves1_room3_bundle1_flag_true");
    wait 1;
    level flag::wait_till("flag_" + var_c79d614f);
    level flag::clear(var_c79d614f + "_exited");
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 1, eflags: 0x0
// Checksum 0xeb46ddf4, Offset: 0x1330
// Size: 0xd4
function function_8c82ed6e(var_c79d614f) {
    level endon(#"visit_restart");
    level endon(#"start_outro");
    level endon(var_c79d614f + "_end");
    level thread namespace_b6fe1dbe::music("4.0_cave");
    level thread namespace_b6fe1dbe::function_366915c();
    function_f03a1080();
    function_5866c467(var_c79d614f);
    function_671561c4();
    level childthread function_e6c0e11d();
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 0, eflags: 0x0
// Checksum 0x8c50f39b, Offset: 0x1410
// Size: 0x1c
function function_f03a1080() {
    level thread namespace_b6fe1dbe::cave_footsteps();
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 1, eflags: 0x0
// Checksum 0xc8f2a178, Offset: 0x1438
// Size: 0x134
function function_5866c467(var_c79d614f) {
    thread function_3405a729(var_c79d614f);
    level flag::wait_till("flag_caves1_room1_start");
    spawner::add_spawn_function_group("caves1_room1_enemies1", "targetname", &function_9287467c);
    level flag::set("caves1_room1_bundle1_flag_true");
    wait 0.5;
    ai_array = getaiarray("caves1_room1_stealth1a", "script_aigroup");
    level thread scene::play("scene_cave_translator", ai_array);
    level childthread function_ca0f3aaf(ai_array);
    level thread function_f6d3c3c4(ai_array);
    level flag::wait_till("flag_caves1_room1_finished");
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 1, eflags: 0x0
// Checksum 0x9c10a491, Offset: 0x1578
// Size: 0xd4
function function_3405a729(var_c79d614f) {
    level.player clientfield::set_to_player("force_stream_weapons", 5);
    childthread namespace_d9b153b9::function_f6cbf7fd(&function_88ec9cf0, 1, 30);
    level flag::wait_till("flag_caves1_room1_start");
    level thread dialogue::radio("vox_cp_prsn_02400_adlr_youswitchedtoyo_00");
    wait 1.5;
    level thread namespace_d9b153b9::force_weapon_loadout(var_c79d614f);
    dialogue::radio("vox_cp_prsn_02400_adlr_thatswhenyoudis_03");
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x1658
// Size: 0x4
function function_88ec9cf0() {
    
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 1, eflags: 0x0
// Checksum 0xc2230dae, Offset: 0x1668
// Size: 0x2c4
function function_ca0f3aaf(ai_array) {
    level endon(#"stealth_spotted");
    level endon(#"flag_caves1_room1_finished");
    wait 4;
    if (isalive(ai_array[0]) && isalive(ai_array[1]) && isalive(ai_array[2])) {
        ai_array[0] dialogue::queue("vox_cp_prsn_35000_rms1_theweaponswillb_5d");
    }
    if (isalive(ai_array[0]) && isalive(ai_array[1]) && isalive(ai_array[2])) {
        ai_array[1] dialogue::queue("vox_cp_prsn_35000_vms1_hesaystheylldel_f1");
    }
    if (isalive(ai_array[0]) && isalive(ai_array[1]) && isalive(ai_array[2])) {
        ai_array[1] dialogue::queue("vox_cp_prsn_35000_vms2_whenoursoldiers_af");
    }
    if (isalive(ai_array[0]) && isalive(ai_array[1]) && isalive(ai_array[2])) {
        ai_array[1] dialogue::queue("vox_cp_prsn_35000_vms1_hewantstoknowwh_dc");
    }
    if (isalive(ai_array[0]) && isalive(ai_array[1]) && isalive(ai_array[2])) {
        ai_array[0] dialogue::queue("vox_cp_prsn_35000_rms1_soontheyllarriv_41");
    }
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 1, eflags: 0x0
// Checksum 0x964b416, Offset: 0x1938
// Size: 0x2a4
function function_f6d3c3c4(ai_array) {
    level childthread function_4e1614d();
    level flag::wait_till_any(array("stealth_spotted", "flag_caves1_room1_finished", "flag_caves_room1_player_shot"));
    foreach (ai in ai_array) {
        if (isalive(ai)) {
            ai stopanimscripted();
            ai.fixednode = 1;
        }
    }
    wait 0.5;
    level ai::function_3ff06c1e("caves1_room1_enemies1", "cave1_room1_volume1", 1);
    aiarray = getaiarray("caves1_room1_enemies1", "targetname");
    function_1eaaceab(aiarray);
    var_7921bd8a = int(floor(aiarray.size / 2));
    level ai::function_3ff06c1e("caves1_room1_enemies1", "cave1_room1_volume2", 1, var_7921bd8a, undefined, undefined);
    struct_lookat_out = struct::get("struct_lookat_out", "targetname");
    level.player childthread namespace_d9b153b9::function_d683b544(&function_7d7c3055, struct_lookat_out.origin, 10);
    struct_lookat_deeper = struct::get("struct_lookat_deeper", "targetname");
    level.player childthread namespace_d9b153b9::function_d683b544(&function_6f7282cd, struct_lookat_deeper.origin, 10);
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 0, eflags: 0x0
// Checksum 0x3967a51f, Offset: 0x1be8
// Size: 0xdc
function function_4e1614d() {
    level endon(#"flag_caves1_room1_finished");
    level.player endon(#"death");
    level.player notifyonplayercommand("weapon_fire", "+attack");
    while (true) {
        level.player waittill(#"weapon_fire");
        if (level.player getcurrentweapon().name != #"hash_165cf52ce418f5a1") {
            level flag::set("flag_caves_room1_player_shot");
            break;
        }
    }
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 0, eflags: 0x0
// Checksum 0xaee55acb, Offset: 0x1cd0
// Size: 0x1c
function function_7d7c3055() {
    dialogue::radio("vox_cp_prsn_14600_adlr_youcouldnthavec_5c");
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 0, eflags: 0x0
// Checksum 0x1a8c31ea, Offset: 0x1cf8
// Size: 0x1c
function function_6f7282cd() {
    dialogue::radio("vox_cp_prsn_14600_adlr_whatweredoingco_cd");
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 0, eflags: 0x0
// Checksum 0x96d5e122, Offset: 0x1d20
// Size: 0xdc
function function_9059fb31() {
    level flag::wait_till("flag_caves1_hallway1_start");
    spawner::add_spawn_function_group("caves1_hallway1_enemies1", "targetname", &function_9287467c);
    level flag::set("caves1_hallway1_bundle1_flag_true");
    wait 0.5;
    ai_array = getaiarray("caves1_room2_stealth1", "script_aigroup");
    childthread function_d4d6e2ff(ai_array[0]);
    level flag::wait_till("flag_caves1_hallway1_finished");
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 1, eflags: 0x0
// Checksum 0x80e1f2c8, Offset: 0x1e08
// Size: 0xc
function function_d4d6e2ff(*var_3b892962) {
    
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 0, eflags: 0x0
// Checksum 0x83731dda, Offset: 0x1e20
// Size: 0x19c
function function_671561c4() {
    level flag::wait_till("flag_caves1_room2_start");
    spawner::add_spawn_function_group("caves1_room2_enemies1", "targetname", &function_9287467c);
    spawner::add_spawn_function_group("caves1_room2_enemies1a", "targetname", &function_9287467c);
    spawner::add_spawn_function_group("caves1_room2_enemies1_rappel", "targetname", &function_9287467c);
    level flag::set("caves1_room2_bundle1_flag_true");
    var_d246885f = spawner::simple_spawn("caves1_room2_enemies1_rappel");
    thread function_fd697d53(var_d246885f);
    wait 0.25;
    ai_array = getaiarray("caves1_room2_stealth1", "script_aigroup");
    thread namespace_b6fe1dbe::function_cc72a5fb(ai_array);
    thread function_b3e0f5dc(ai_array[0]);
    thread function_1d747113();
    level flag::wait_till("flag_caves1_room2_finished");
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 1, eflags: 0x0
// Checksum 0x27f0d602, Offset: 0x1fc8
// Size: 0x164
function function_fd697d53(var_d246885f) {
    var_dfb4a863 = 0;
    foreach (var_15403e06 in var_d246885f) {
        if (var_dfb4a863 == 0) {
            thread function_b0b51e20(array(var_15403e06));
        } else if (var_dfb4a863 == 1) {
            thread function_4ef25971(array(var_15403e06));
        } else if (var_dfb4a863 == 2) {
            thread function_23ab02e3(array(var_15403e06));
        } else if (var_dfb4a863 == 3) {
            thread function_395e2e49(array(var_15403e06));
        }
        var_dfb4a863++;
    }
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 1, eflags: 0x0
// Checksum 0x35781e79, Offset: 0x2138
// Size: 0x44
function function_b0b51e20(var_d246885f) {
    scene::play("caves_wave", var_d246885f);
    thread function_e5bef436(var_d246885f, "caves_wave_struct");
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 1, eflags: 0x0
// Checksum 0xdc3177b, Offset: 0x2188
// Size: 0x44
function function_4ef25971(var_d246885f) {
    scene::play("caves_rappel1", var_d246885f);
    thread function_e5bef436(var_d246885f, "caves_rappel1_struct");
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 1, eflags: 0x0
// Checksum 0x9f343024, Offset: 0x21d8
// Size: 0x44
function function_23ab02e3(var_d246885f) {
    scene::play("caves_rappel2", var_d246885f);
    thread function_e5bef436(var_d246885f, "caves_rappel2_struct");
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 1, eflags: 0x0
// Checksum 0x22bbc439, Offset: 0x2228
// Size: 0x44
function function_395e2e49(var_d246885f) {
    scene::play("caves_rappel3", var_d246885f);
    thread function_e5bef436(var_d246885f, "caves_rappel3_struct");
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 2, eflags: 0x0
// Checksum 0x5ccc9670, Offset: 0x2278
// Size: 0xac
function function_e5bef436(var_d246885f, var_142cfe56) {
    if (!flag::get("stealth_spotted")) {
        struct = struct::get(var_142cfe56, "targetname");
        if (isdefined(var_d246885f[0])) {
            var_d246885f[0] spawner::go_to_node(struct);
        }
        return;
    }
    level thread ai::function_3ff06c1e("caves1_room2_enemies1_rappel", "cave1_room2_volume1", 1);
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 1, eflags: 0x0
// Checksum 0x3f420fa1, Offset: 0x2330
// Size: 0x2c
function function_b3e0f5dc(var_3b892962) {
    var_3b892962 dialogue::queue("vox_cp_prsn_35000_rms2_slowlyyougotitw_ec");
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 0, eflags: 0x0
// Checksum 0x6c2d05e3, Offset: 0x2368
// Size: 0x2ac
function function_1d747113() {
    level.player endon(#"death");
    level flag::wait_till_any(array("stealth_spotted", "flag_caves1_room2_half"));
    a_e_enemies = spawner::get_ai_group_ai("caves1_room2_stealth1");
    foreach (ai in a_e_enemies) {
        ai getenemyinfo(level.player);
        ai function_a3fcf9e0("attack", level.player, level.player.origin);
    }
    wait 1;
    level thread ai::function_3ff06c1e("caves1_room2_enemies1", "cave1_room2_volume1", 1);
    level thread ai::function_3ff06c1e("caves1_room2_enemies1a", "cave1_room2_volume3", 1);
    level thread ai::function_3ff06c1e("caves1_room2_enemies1_rappel", "cave1_room2_volume1", 1);
    aiarray = getaiarray();
    function_1eaaceab(aiarray);
    var_7921bd8a = int(floor(aiarray.size / 2));
    level ai::function_419b1881("caves1_room2_stealth1", "cave1_room2_volume3", 1, var_7921bd8a, undefined, undefined);
    struct_lookat_soviet = struct::get("struct_lookat_soviet", "targetname");
    level.player childthread namespace_d9b153b9::function_d683b544(&function_4e2edb0e, struct_lookat_soviet.origin);
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 0, eflags: 0x0
// Checksum 0xeb0c9659, Offset: 0x2620
// Size: 0x1c
function function_4e2edb0e() {
    dialogue::radio("vox_cp_prsn_14600_adlr_soyoukilledthem_85");
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 0, eflags: 0x0
// Checksum 0x4331d05e, Offset: 0x2648
// Size: 0x1f4
function function_e6c0e11d() {
    level flag::wait_till("flag_caves1_room3_start");
    spawner::add_spawn_function_group("caves1_room3_enemies1", "targetname", &function_9287467c);
    level flag::set("caves1_room3_bundle1_flag_true");
    wait 0.25;
    ai_array = getaiarray("caves1_room3_stealth1", "script_aigroup");
    level thread scene::play("scene_cave_bunker", ai_array);
    thread function_99d4a1d3(ai_array);
    level flag::wait_till("stealth_spotted");
    level notify(#"hash_2747c974439b3f3e");
    foreach (ai in ai_array) {
        if (isalive(ai)) {
            ai stopanimscripted();
        }
    }
    function_1eaaceab(ai_array);
    ai::waittill_dead(ai_array);
    thread function_6ba0fc9a();
    thread function_de1513ad();
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 0, eflags: 0x0
// Checksum 0xafd09dd5, Offset: 0x2848
// Size: 0x44
function function_6ba0fc9a() {
    level flag::wait_till("flag_caves1_room3_start_vo");
    wait 3;
    dialogue::radio("vox_cp_prsn_02400_adlr_yesbellthatwast_ec");
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 0, eflags: 0x0
// Checksum 0x57f3daa6, Offset: 0x2898
// Size: 0x44
function function_de1513ad() {
    level flag::wait_till("flag_caves1_room3_start_vo");
    level thread namespace_b6fe1dbe::music("5.0_door_1");
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 1, eflags: 0x0
// Checksum 0x848dc4b5, Offset: 0x28e8
// Size: 0x13c
function function_99d4a1d3(ai_array) {
    level endon(#"hash_2747c974439b3f3e");
    if (isalive(ai_array[0])) {
        ai_array[0] dialogue::queue("vox_cp_prsn_35500_rms1_whyareweguardin_4e");
    }
    if (isalive(ai_array[1])) {
        ai_array[1] dialogue::queue("vox_cp_prsn_35500_rms2_supersecretagen_11");
    }
    if (isalive(ai_array[0])) {
        ai_array[0] dialogue::queue("vox_cp_prsn_35500_rms1_waitreally_8b");
    }
    if (isalive(ai_array[1])) {
        ai_array[1] dialogue::queue("vox_cp_prsn_35500_rms2_nowefolloworder_51");
    }
    if (isalive(ai_array[0])) {
        ai_array[0] dialogue::queue("vox_cp_prsn_35500_rms1_asshole_fd");
    }
}

// Namespace namespace_bf7b1fb2/namespace_bf7b1fb2
// Params 0, eflags: 0x0
// Checksum 0x5e424ed8, Offset: 0x2a30
// Size: 0xb4
function function_9287467c() {
    self endon(#"death");
    self.grenadeammo = 0;
    self getenemyinfo(level.player);
    self getperfectinfo(level.player);
    self battlechatter::function_2ab9360b(0);
    level flag::wait_till("stealth_spotted");
    self battlechatter::function_2ab9360b(1);
}

