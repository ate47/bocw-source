// Atian COD Tools GSC CW decompiler test
#using scripts\zm_common\zm_player.gsc;
#using scripts\core_common\struct.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\system_shared.gsc;

#namespace zm_tungsten_ffotd;

// Namespace zm_tungsten_ffotd/zm_tungsten_ffotd
// Params 0, eflags: 0x5
// Checksum 0xf4d32c52, Offset: 0x1f8
// Size: 0x4c
function private autoexec __init__system__() {
    system::register(#"zm_tungsten_ffotd", &preinit, &postinit, undefined, undefined);
}

// Namespace zm_tungsten_ffotd/zm_tungsten_ffotd
// Params 0, eflags: 0x6 linked
// Checksum 0x80f724d1, Offset: 0x250
// Size: 0x4
function private preinit() {
    
}

// Namespace zm_tungsten_ffotd/zm_tungsten_ffotd
// Params 0, eflags: 0x6 linked
// Checksum 0x89b035a3, Offset: 0x260
// Size: 0x1e4
function private postinit() {
    level thread function_e0cfb01("zone_service_tunnels_02_spawns", (4938.35, -2918.99, -3247.5));
    level thread function_e0cfb01("zone_service_tunnels_01_spawns", (6619.54, -2900.19, -3207));
    level thread function_e0cfb01("zone_board_room_02_spawns", (5439.51, -3917.67, -3207));
    level thread function_e0cfb01("zone_bunker_entrance_02_spawns", (6918, -4223.5, -3208));
    spawncollision("collision_clip_512x512x512", "collider", (3670, 7762, 165), (0, 0, 0));
    level thread function_6526f34b();
    level thread function_13b9705e();
    zm_player::spawn_kill_brush((1373, 7298, -681), 1000, 128);
    zm_player::spawn_kill_brush((5409, 4150, -681), 1000, 128);
    zm_player::spawn_kill_brush((6282, 4972, -681), 1000, 128);
    spawncollision("collision_clip_64x64x128", "collider", (4939.5, 1818.5, -185.5), (0, 0, 0));
}

// Namespace zm_tungsten_ffotd/zm_tungsten_ffotd
// Params 0, eflags: 0x2 linked
// Checksum 0xe626cb8c, Offset: 0x450
// Size: 0xf4
function function_6526f34b() {
    level endon(#"game_ended");
    var_f7336730 = spawncollision("collision_clip_wall_256x256x10", "collider", (3357, 906, 109), (0, 0, 0));
    var_84e50295 = spawncollision("collision_clip_wall_512x512x10", "collider", (3357, 1558, 140), (0, 0, 0));
    level flag::wait_till("connect_anytown_usa_rooftops");
    if (isdefined(var_f7336730)) {
        var_f7336730 delete();
    }
    if (isdefined(var_84e50295)) {
        var_84e50295 delete();
    }
}

// Namespace zm_tungsten_ffotd/zm_tungsten_ffotd
// Params 0, eflags: 0x2 linked
// Checksum 0x7bb41e72, Offset: 0x550
// Size: 0x1cc
function function_13b9705e() {
    level endon(#"game_ended");
    var_f7336730 = spawncollision("collision_clip_wall_512x512x10", "collider", (4489, 6969, 156), (0, 270, 0));
    var_84e50295 = spawncollision("collision_clip_wall_512x512x10", "collider", (3977, 6969, 156), (0, 270, 0));
    var_a30d3edd = spawncollision("collision_clip_wall_512x512x10", "collider", (3788, 6969, 156), (0, 270, 0));
    var_ae7355a9 = spawncollision("collision_clip_wall_512x512x10", "collider", (3537, 6708, 156), (0, 0, 0));
    level flag::wait_till("connect_diner");
    if (isdefined(var_f7336730)) {
        var_f7336730 delete();
    }
    if (isdefined(var_84e50295)) {
        var_84e50295 delete();
    }
    if (isdefined(var_a30d3edd)) {
        var_a30d3edd delete();
    }
    if (isdefined(var_ae7355a9)) {
        var_ae7355a9 delete();
    }
}

// Namespace zm_tungsten_ffotd/zm_tungsten_ffotd
// Params 3, eflags: 0x0
// Checksum 0x6087b40a, Offset: 0x728
// Size: 0x5e
function function_67a43327(str_struct, v_origin, v_angles) {
    s_loc = struct::get(str_struct);
    if (isdefined(s_loc)) {
        s_loc.origin = v_origin;
        s_loc.angles = v_angles;
    }
}

// Namespace zm_tungsten_ffotd/zm_tungsten_ffotd
// Params 2, eflags: 0x2 linked
// Checksum 0x5e66b485, Offset: 0x790
// Size: 0xb6
function function_e0cfb01(str_zone_name, v_origin) {
    foreach (s_loc in struct::get_array(str_zone_name)) {
        if (s_loc.script_noteworthy === "wait_location") {
            s_loc.origin = v_origin;
        }
    }
}

