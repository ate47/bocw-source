#using script_122afd04d0de2423;
#using script_15a7051a4ff0cf46;
#using script_30cfffd6b7b2b212;
#using script_31e02d627cf2fc9d;
#using script_3890e6e179f6ed13;
#using script_52e44090bd3b849d;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\clientfield_shared;
#using scripts\core_common\flag_shared;
#using scripts\core_common\load_shared;
#using scripts\core_common\util_shared;
#using scripts\core_common\vehicle_shared;
#using scripts\cp_common\skipto;
#using scripts\cp_common\util;

#namespace namespace_3da2ad62;

// Namespace namespace_3da2ad62/level_init
// Params 1, eflags: 0x20
// Checksum 0x5e18f5bc, Offset: 0x358
// Size: 0x17c
function event_handler[level_init] main(*eventstruct) {
    setclearanceceiling(16);
    init_clientfields();
    function_37dfd679();
    load::main();
    init_callbacks();
    level.player = getplayers()[0];
    level.var_30eb363 = #"hash_4e516e60f6798859";
    level.var_85b00b2b = #"hash_42cabf1b1466580";
    setdvar(#"compassmaxrange", "2100");
    if (!function_72a9e321()) {
        setdvar(#"r_maxspotshadowupdates", 6);
        setdvar(#"r_localshadowdropsizescale", 4);
    } else {
        setdvar(#"r_maxspotshadowupdates", 12);
    }
    /#
        namespace_42da7c51::devgui();
    #/
}

// Namespace namespace_3da2ad62/cp_sidemission_takedown
// Params 0, eflags: 0x0
// Checksum 0x91343621, Offset: 0x4e0
// Size: 0xd0
function function_f4dca234() {
    var_653081c8 = getentarray("script_lights_trucks_headlights", "script_noteworthy");
    foreach (light in var_653081c8) {
        light.var_43a76d63 = light getlightintensity();
        light setlightintensity(0);
    }
}

// Namespace namespace_3da2ad62/cp_sidemission_takedown
// Params 0, eflags: 0x0
// Checksum 0x9784b3ba, Offset: 0x5b8
// Size: 0x1e4
function function_37dfd679() {
    skipto::function_eb91535d("tkdn_heli_intro", &namespace_347b95ee::main, &namespace_347b95ee::starting, "Chaos: Heli", &namespace_347b95ee::cleanup);
    skipto::function_eb91535d("tkdn_heli_convoy_aslt", &namespace_9c42e5f3::main, &namespace_9c42e5f3::starting, "Chaos: Convoy Assault", &namespace_9c42e5f3::cleanup);
    skipto::function_eb91535d("tkdn_heli_trailer_park", &namespace_1ca393d1::main, &namespace_1ca393d1::starting, "Chaos: Trailer Park", &namespace_1ca393d1::cleanup);
    skipto::function_eb91535d("tkdn_heli_hotel_parking_lot", &namespace_f464d565::function_b474f6be, &namespace_f464d565::function_dbf2a80e, "Chaos: Hotel Parking Lot", &namespace_f464d565::function_a81c2225);
    skipto::function_eb91535d("tkdn_heli_hotel_breach", &namespace_f464d565::main, &namespace_f464d565::starting, "Chaos: Hotel Breach", &namespace_f464d565::cleanup);
    skipto::function_eb91535d("tkdn_heli_exfil", &namespace_fe8e156a::main, &namespace_fe8e156a::starting, "Chaos: Exfil", &namespace_fe8e156a::cleanup);
}

// Namespace namespace_3da2ad62/cp_sidemission_takedown
// Params 0, eflags: 0x0
// Checksum 0x420ef876, Offset: 0x7a8
// Size: 0x144
function init_clientfields() {
    clientfield::register("toplayer", "toggle_gameplayer_character_vis", 1, 1, "int");
    clientfield::register("scriptmover", "heli_rpg_trail", 1, 1, "int");
    clientfield::register("vehicle", "exfil_heli_exp", 1, 1, "int");
    clientfield::register("toplayer", "force_stream_weapons", 1, 1, "int");
    clientfield::register("world", "stream_heli_woods", 1, 1, "int");
    clientfield::register("world", "stream_heli", 1, 1, "int");
    namespace_347b95ee::init_clientfields();
    namespace_42da7c51::init_clientfields();
}

// Namespace namespace_3da2ad62/cp_sidemission_takedown
// Params 0, eflags: 0x0
// Checksum 0x8e0dd260, Offset: 0x8f8
// Size: 0x44
function init_callbacks() {
    callback::on_spawned(&function_8106e2e1);
    callback::on_connect(&function_5507f3ad);
}

// Namespace namespace_3da2ad62/cp_sidemission_takedown
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x948
// Size: 0x4
function function_5507f3ad() {
    
}

// Namespace namespace_3da2ad62/cp_sidemission_takedown
// Params 0, eflags: 0x0
// Checksum 0x53e17824, Offset: 0x958
// Size: 0x102
function function_8106e2e1() {
    self setcharacterbodytype(1);
    self setcharacteroutfit(2);
    thread namespace_42da7c51::setup_objectives(level.var_28c22d88[0]);
    knife = getweapon(#"knife_held");
    if (self hasweapon(knife, 1)) {
        self takeweapon(knife, 1);
    }
    switch (level.var_28c22d88[0]) {
    default:
        namespace_42da7c51::function_6154e4c2();
        break;
    }
}

// Namespace namespace_3da2ad62/checkpoint_restore
// Params 1, eflags: 0x24
// Checksum 0x2425e3e5, Offset: 0xa68
// Size: 0xf8
function private event_handler[checkpoint_restore] function_50a91b64(*eventstruct) {
    level thread function_fbd3dbf7();
    foreach (truck in level.var_abaa6487) {
        if (truck.targetname == "intro_enemy_trucks3") {
            truck vehicle::toggle_force_driver_taillights(0);
            continue;
        }
        truck thread namespace_42da7c51::function_3958f4d7("lights_intro_truck_" + truck.var_5eafe61e);
    }
}

// Namespace namespace_3da2ad62/cp_sidemission_takedown
// Params 0, eflags: 0x0
// Checksum 0xcb2022de, Offset: 0xb68
// Size: 0xe4
function function_fbd3dbf7() {
    level flag::wait_till(#"all_players_spawned");
    level flag::wait_till(#"gameplay_started");
    if (level flag::get("flag_rpg_struck_heli")) {
        return;
    }
    while (!isdefined(level.var_9a3944f4) || !isdefined(level.var_9a3944f4.light)) {
        waitframe(1);
    }
    wait 0.5;
    playfxontag(#"hash_7d057d370983507f", level.var_9a3944f4.light, "tag_origin");
}

