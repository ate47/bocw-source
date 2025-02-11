#using script_1fd2c6e5fc8cb1c3;
#using script_2d443451ce681a;
#using script_32399001bdb550da;
#using script_4ccd0c3512b52a10;
#using script_4ec222619bffcfd1;
#using script_7901e9dc8618be8a;
#using script_7d0013bbc05623b9;
#using scripts\core_common\ai_shared;
#using scripts\core_common\animation_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\colors_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\scene_shared;
#using scripts\core_common\spawner_shared;
#using scripts\core_common\struct;
#using scripts\core_common\trigger_shared;
#using scripts\core_common\util_shared;
#using scripts\core_common\values_shared;
#using scripts\cp_common\dialogue;
#using scripts\cp_common\gametypes\battlechatter;
#using scripts\cp_common\skipto;
#using scripts\cp_common\util;

#namespace namespace_c9a185d4;

// Namespace namespace_c9a185d4/namespace_7fbf03f6
// Params 1, eflags: 0x0
// Checksum 0x431df1e7, Offset: 0x560
// Size: 0x24
function starting(*var_d3440450) {
    level thread namespace_e77bf565::function_277bceaa(0);
}

// Namespace namespace_c9a185d4/namespace_7fbf03f6
// Params 2, eflags: 0x0
// Checksum 0x10543248, Offset: 0x590
// Size: 0x274
function main(var_d3440450, var_50cc0d4f) {
    level flag::set("aslt_vault_approach_begin");
    level battlechatter::function_2ab9360b(1);
    if (is_true(var_50cc0d4f)) {
        level.adler = namespace_e77bf565::function_52fe0eb3(var_d3440450);
        level.adler namespace_e77bf565::function_5770c74("assault");
        level thread scene::skipto_end_noai("scene_kgb_door_kick", "Last_Frame", undefined, 1);
        level thread scene::init("scene_kgb_utility_room_adler");
        level thread scene::init("scene_kgb_utility_room_player");
        level thread namespace_2c3ec4f9::function_a0d18564();
        level thread namespace_e77bf565::function_1067ebf5("rotating_object_bunker", "player_grabbed_armor");
        level thread scene::init("scene_kgb_elevator_intro");
    }
    namespace_353d803e::music("11.0_sabotage");
    spawner::add_spawn_function_group("vault_guards", "script_noteworthy", &function_e38e5c6e);
    level thread namespace_e77bf565::function_7feb07bb(var_d3440450, var_50cc0d4f);
    level thread function_b735db01();
    level thread scene::init("scene_kgb_open_vault");
    level thread scene::init("scene_kgb_door_shoulder");
    level flag::wait_till("aslt_vault_approach_complete");
    if (isdefined(var_d3440450)) {
        skipto::function_4e3ab877(var_d3440450);
    }
}

// Namespace namespace_c9a185d4/namespace_7fbf03f6
// Params 4, eflags: 0x0
// Checksum 0x11958963, Offset: 0x810
// Size: 0x24
function cleanup(*name, *starting, *direct, *player) {
    
}

// Namespace namespace_c9a185d4/namespace_7fbf03f6
// Params 0, eflags: 0x0
// Checksum 0xc099e20f, Offset: 0x840
// Size: 0xe4
function init_flags() {
    level flag::init("aslt_vault_approach_begin");
    level flag::init("aslt_vault_approach_complete");
    level flag::init("player_plant_gas_started");
    level flag::init("player_planted_gas");
    level flag::init("vault_approach_runners_dead");
    level flag::init("assault_plant_gas_org_obj_created");
    level flag::init("scene_kgb_elevator_intro_inited");
}

// Namespace namespace_c9a185d4/namespace_7fbf03f6
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x930
// Size: 0x4
function init_clientfields() {
    
}

// Namespace namespace_c9a185d4/namespace_7fbf03f6
// Params 0, eflags: 0x0
// Checksum 0xb201981f, Offset: 0x940
// Size: 0x5c
function function_22b7fffd() {
    animation::add_notetrack_func("kgb_aslt_vault_approach::vault_approach_runners", &vault_approach_runners);
    scene::add_scene_func("scene_kgb_elevator_intro", &function_dacdaa59, "init");
}

// Namespace namespace_c9a185d4/namespace_7fbf03f6
// Params 0, eflags: 0x0
// Checksum 0x12ec45ec, Offset: 0x9a8
// Size: 0x204
function function_3dacefac() {
    level.player endon(#"death");
    assault_plant_gas_org = struct::get("assault_plant_gas_org", "targetname");
    assault_plant_gas_org util::create_cursor_hint(undefined, undefined, #"hash_3047884ddd4a1374", undefined, undefined, undefined, undefined, undefined, undefined, 0, 0);
    level flag::wait_till("assault_plant_gas_org_obj_created");
    assault_plant_gas_org prompts::set_objective("obj_goto");
    level thread function_a133f1c5();
    assault_plant_gas_org waittill(#"trigger");
    level flag::set("player_plant_gas_started");
    level notify(#"hash_f7174846bbb8709");
    assault_plant_gas_org util::remove_cursor_hint();
    level thread namespace_e77bf565::cleanup_corpses();
    level.player val::set(#"scene_kgb_utility_room_player", "disable_weapons", 1);
    scene::play("scene_kgb_utility_room_player");
    level.player val::reset(#"scene_kgb_utility_room_player", "disable_weapons");
    level thread savegame::checkpoint_save();
    level flag::set("player_planted_gas");
}

// Namespace namespace_c9a185d4/namespace_7fbf03f6
// Params 0, eflags: 0x0
// Checksum 0x2319e28c, Offset: 0xbb8
// Size: 0x1f4
function function_b735db01() {
    level.adler thread dialogue::queue("vox_cp_rkgb_03500_adlr_ifthingsgosouth_e6");
    level thread function_3dacefac();
    level.adler colors::disable();
    level scene::play("scene_kgb_utility_room_adler", "Intro");
    level thread scene::play("scene_kgb_utility_room_adler", "Loop");
    level flag::set("adler_at_vault_approach");
    level flag::wait_till("player_planted_gas");
    level.adler dialogue::queue("vox_cp_rkgb_03500_adlr_goodletsgettoth_a8");
    namespace_353d803e::music("11.3_combat2");
    level flag::wait_till("vault_approach_move_00");
    level scene::play("scene_kgb_utility_room_adler", "Outro");
    level.adler colors::set_force_color("g");
    level.adler colors::enable();
    level flag::wait_till("vault_approach_move_20");
    level thread savegame::checkpoint_save();
    level.adler dialogue::queue("vox_cp_rkgb_03600_adlr_werealmosttothe_1c");
}

// Namespace namespace_c9a185d4/namespace_7fbf03f6
// Params 0, eflags: 0x0
// Checksum 0xbbbe7393, Offset: 0xdb8
// Size: 0x104
function function_a133f1c5() {
    level endon(#"hash_f7174846bbb8709");
    level.player endon(#"death");
    var_a133f1c5 = [];
    var_a133f1c5[var_a133f1c5.size] = "vox_cp_rkgb_03500_adlr_hurryupandsetth_c8";
    var_a133f1c5[var_a133f1c5.size] = "vox_cp_rkgb_03500_adlr_clockstickingbe_65";
    var_a133f1c5[var_a133f1c5.size] = "vox_cp_rkgb_03500_adlr_getthegasreadyw_fe";
    wait 10;
    i = 0;
    while (true) {
        level.player thread objectives_ui::show_objectives();
        level.adler dialogue::queue("" + var_a133f1c5[i]);
        i++;
        if (i + 1 > var_a133f1c5.size) {
            i = 0;
        }
        wait 10;
    }
}

// Namespace namespace_c9a185d4/namespace_7fbf03f6
// Params 1, eflags: 0x0
// Checksum 0x25d8acfb, Offset: 0xec8
// Size: 0x64
function vault_approach_runners(*params) {
    enemies = spawner::simple_spawn("vault_approach_runners");
    ai::waittill_dead_or_dying(enemies);
    level flag::set("vault_approach_runners_dead");
}

// Namespace namespace_c9a185d4/namespace_7fbf03f6
// Params 0, eflags: 0x0
// Checksum 0x866886ed, Offset: 0xf38
// Size: 0x12
function function_e38e5c6e() {
    self.ignoresuppression = 1;
}

// Namespace namespace_c9a185d4/namespace_7fbf03f6
// Params 1, eflags: 0x0
// Checksum 0x2786d7cc, Offset: 0xf58
// Size: 0x2c
function function_dacdaa59(*params) {
    level flag::set("scene_kgb_elevator_intro_inited");
}

