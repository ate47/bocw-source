// Atian COD Tools GSC CW decompiler test
#using scripts\cp_common\objectives.gsc;
#using script_31e9b35aaacbbd93;
#using script_3dc93ca9902a9cda;
#using scripts\cp_common\dialogue.gsc;
#using scripts\core_common\values_shared.gsc;
#using script_70b6424f429d140;
#using scripts\core_common\array_shared.gsc;
#using scripts\cp_common\gametypes\globallogic_ui.gsc;
#using script_2d443451ce681a;
#using scripts\cp_common\skipto.gsc;
#using scripts\core_common\ai_shared.gsc;
#using scripts\core_common\vehicle_shared.gsc;
#using scripts\core_common\vehicle_ai_shared.gsc;
#using scripts\core_common\vehicleriders_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\spawner_shared.gsc;
#using scripts\core_common\scene_shared.gsc;
#using scripts\core_common\trigger_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\clientfield_shared.gsc;

#namespace namespace_cb0d537d;

// Namespace namespace_cb0d537d/namespace_1e07c90b
// Params 1, eflags: 0x0
// Checksum 0x50dcb360, Offset: 0x398
// Size: 0x34
function starting(*var_d3440450) {
    level.var_aece851d = [];
    flag::set("heli_door_opening");
}

// Namespace namespace_cb0d537d/namespace_1e07c90b
// Params 2, eflags: 0x0
// Checksum 0x67027ecb, Offset: 0x3d8
// Size: 0x84
function main(var_d3440450, *var_50cc0d4f) {
    level.var_33621ea7 = 0;
    thread function_a7dc18f3();
    thread namespace_a052577e::function_e04b45ab();
    level flag::wait_till("heli_convoy_aslt_complete");
    if (isdefined(var_50cc0d4f)) {
        skipto::function_4e3ab877(var_50cc0d4f);
    }
}

// Namespace namespace_cb0d537d/namespace_1e07c90b
// Params 4, eflags: 0x0
// Checksum 0x95c9a269, Offset: 0x468
// Size: 0x24
function cleanup(*name, *starting, *direct, *player) {
    
}

// Namespace namespace_cb0d537d/namespace_1e07c90b
// Params 0, eflags: 0x2 linked
// Checksum 0xd3857ac6, Offset: 0x498
// Size: 0x84
function init_flags() {
    level flag::init("heli_convoy_aslt_complete");
    level flag::init("intro_takeout_driver");
    level flag::init("intro_takeout_target");
    level flag::init("intro_takeout_never");
}

// Namespace namespace_cb0d537d/namespace_1e07c90b
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x528
// Size: 0x4
function init_clientfields() {
    
}

// Namespace namespace_cb0d537d/namespace_1e07c90b
// Params 0, eflags: 0x2 linked
// Checksum 0x80f724d1, Offset: 0x538
// Size: 0x4
function function_22b7fffd() {
    
}

// Namespace namespace_cb0d537d/namespace_1e07c90b
// Params 0, eflags: 0x2 linked
// Checksum 0xbb3fec4, Offset: 0x548
// Size: 0x4a2
function function_46693791() {
    driver = getent("intro_driver_assassinate", "targetname", 1);
    if (!isdefined(level.var_664fd741)) {
        level.var_664fd741 = getent("woods_chopper_from_scene", "script_noteworthy", 1);
        if (!isdefined(level.var_664fd741)) {
            spawners = getspawnerarray("intro_assault_ally_hudson", "targetename");
            if (!isdefined(spawners) || spawners.size == 0) {
                spawners = getspawnerarray("intro_assault_ally_hudson", "script_noteworthy");
            }
            level.var_664fd741 = spawners[0] spawner::spawn(1);
        } else {
            level flag::wait_till("heli_intro_path_ally");
            level.var_664fd741 thread spawner::go_to_node();
        }
        level.var_664fd741.ignoreall = 1;
        level.var_664fd741.ignoreme = 1;
        level.var_aece851d[level.var_aece851d.size] = level.var_664fd741;
        level thread util::magic_bullet_shield(level.var_664fd741);
    }
    flag::set("woods_gogo");
    if (isdefined(driver)) {
        driver ai::bloody_death(0.2);
    }
    wait(1.2);
    level.var_664fd741.ignoreall = 0;
    wait(1);
    objectives::follow("woods_hit1", level.var_664fd741);
    level.var_95a74232 = 1;
    aiarray = ai::array_spawn("intro_assault_extra_guys");
    aiarray = arraycombine(aiarray, getentarray("intro_enemy_truck_guys", "script_noteworthy"), 1, 0);
    foreach (guy in aiarray) {
        guy.ignoreall = 1;
        guy.ignoreme = 1;
        if (!isdefined(driver)) {
            if (isdefined(guy.script_parameters) && guy.script_parameters == "intro_driver_assassinate") {
                driver = guy;
            }
        }
    }
    wait(0.2);
    foreach (guy in aiarray) {
        if (isdefined(guy)) {
            guy.ignoreme = 0;
        }
    }
    level.var_664fd741.ignoreall = 0;
    level.var_664fd741.ignoreme = 0;
    foreach (guy in aiarray) {
        if (isdefined(guy)) {
            if (!(isdefined(guy.script_parameters) && guy.script_parameters == "squirter")) {
                guy.ignoreall = 0;
            }
        }
    }
}

// Namespace namespace_cb0d537d/namespace_1e07c90b
// Params 0, eflags: 0x2 linked
// Checksum 0xd0c7b7e2, Offset: 0x9f8
// Size: 0xa8
function function_149bd557() {
    if (!isdefined(level.var_abaa6487)) {
        return;
    }
    wait(0.1);
    foreach (truck in level.var_abaa6487) {
        thread function_d8f00fe0(truck);
    }
}

// Namespace namespace_cb0d537d/namespace_1e07c90b
// Params 0, eflags: 0x0
// Checksum 0x3e2148ed, Offset: 0xaa8
// Size: 0x116
function function_c42508f4() {
    self endon(#"death");
    self endon(#"exited_vehicle");
    start = gettime();
    while (true) {
        /#
            print3d(self.origin + (0, 0, 72), "<unknown string>", (1, 0, 0), 1, 0.5, 1, 1);
            self.unload_time = int((gettime() - start) / 10) / 100;
            print3d(self.origin + (0, 0, 60), "<unknown string>" + self.unload_time, (1, 0, 0), 1, 0.5, 1);
        #/
        waitframe(1);
    }
}

// Namespace namespace_cb0d537d/namespace_1e07c90b
// Params 0, eflags: 0x2 linked
// Checksum 0x51112481, Offset: 0xbc8
// Size: 0xc4
function function_77937c90() {
    self.ignoreme = 0;
    if (!isdefined(self.target)) {
        return;
    }
    self endon(#"death");
    self waittill(#"exited_vehicle");
    waitframe(2);
    to = getnode(self.target, "targetname");
    if (!isdefined(to)) {
        to = getent(self.target, "targetname");
    }
    if (isdefined(to)) {
        self setgoal(to, 1);
    }
}

// Namespace namespace_cb0d537d/namespace_1e07c90b
// Params 1, eflags: 0x2 linked
// Checksum 0x560f45ed, Offset: 0xc98
// Size: 0x1a4
function function_d8f00fe0(truck) {
    if (truck.script_parameters == "truck_bustout_unload") {
        foreach (rider in truck.var_761c973.riders) {
            if (isdefined(rider)) {
                rider.ignoreme = 1;
            }
        }
    }
    level flag::wait_till(truck.script_parameters);
    if (isalive(truck)) {
        arrayremovevalue(truck.var_761c973.riders, undefined, 1);
        array::thread_all(truck.var_761c973.riders, &function_77937c90);
        truck thread vehicle::unload("crew");
        truck thread vehicle::unload("passenger1");
        truck thread vehicle::unload("driver");
    }
}

// Namespace namespace_cb0d537d/namespace_1e07c90b
// Params 0, eflags: 0x2 linked
// Checksum 0xb74b06de, Offset: 0xe48
// Size: 0x1f4
function function_a7dc18f3() {
    aiarray = array();
    if (!isdefined(level.var_40b02b72)) {
        player = getplayers()[0];
        player val::set("takedown_hit1_intro", "show_weapon_hud", 0);
        thread tkdn_heli_intro::function_c6662dbb("intro_enemy_trucks", 1);
        waitframe(4);
        level flag::set("intro_heli_lights_on");
        thread tkdn_heli_intro::function_3d66ebcc("intro_heli_player", 1, 1);
        wait(2.5);
    }
    aiarray = getentarray("intro_enemy_truck_guys", "script_noteworthy", 1);
    thread function_46693791();
    array::wait_till(aiarray, "death");
    level.var_664fd741.ignoreall = 1;
    level.var_664fd741.ignoreme = 1;
    thread function_83cd8600();
    level flag::wait_till("intro_takeout_target");
    dialogue::radio("vox_cp_tdwn_01300_chp1_notsureithought_5a");
    level flag::set("truck_bustout_unload");
    wait(2);
    level flag::set("heli_convoy_aslt_complete");
}

// Namespace namespace_cb0d537d/namespace_1e07c90b
// Params 0, eflags: 0x2 linked
// Checksum 0xf8f9e37e, Offset: 0x1048
// Size: 0x4a
function function_83cd8600() {
    flag::wait_till("intro_moving_to_bustout");
    wait(1);
    level.var_664fd741.ignoreall = 0;
    level.var_664fd741.ignoreme = 0;
}

