#using script_44b0b8420eabacad;
#using scripts\core_common\compass;
#using scripts\core_common\flag_shared;
#using scripts\core_common\load_shared;
#using scripts\core_common\util_shared;

#namespace mp_slums_rm;

// Namespace mp_slums_rm/level_init
// Params 1, eflags: 0x20
// Checksum 0x6ad67e5a, Offset: 0x180
// Size: 0x1ec
function event_handler[level_init] main(*eventstruct) {
    function_24198689();
    load::main();
    compass::setupminimap("");
    spawncollision("collision_clip_wall_64x64x10", "collider", (-615, -740.5, 561.5), (0, 285, -90));
    spawncollision("collision_clip_wall_64x64x10", "collider", (-592.5, -734.5, 561.5), (0, 285, -90));
    spawncollision("collision_clip_wall_64x64x10", "collider", (-612.5, -749.5, 561.5), (0, 285, -90));
    spawncollision("collision_clip_wall_64x64x10", "collider", (-590, -743.5, 561.5), (0, 285, -90));
    spawncollision("collision_clip_wall_64x64x10", "collider", (-610, -759, 561.5), (0, 285, -90));
    spawncollision("collision_clip_wall_64x64x10", "collider", (-587.5, -753, 561.5), (0, 285, -90));
    level thread function_29584e41();
}

// Namespace mp_slums_rm/mp_slums_rm
// Params 0, eflags: 0x0
// Checksum 0x80f724d1, Offset: 0x378
// Size: 0x4
function precache() {
    
}

// Namespace mp_slums_rm/mp_slums_rm
// Params 0, eflags: 0x0
// Checksum 0xee23841d, Offset: 0x388
// Size: 0x9c
function function_24198689() {
    var_780f74b5 = [];
    var_780f74b5[var_780f74b5.size] = "mp_spawn_point";
    var_780f74b5[var_780f74b5.size] = "mp_spawn_point_axis";
    var_780f74b5[var_780f74b5.size] = "mp_spawn_point_allies";
    spawning::move_spawn_point(var_780f74b5, (950.875, -3229.85, 456.125), (919, -3225, 516), (0, 120, 0));
}

// Namespace mp_slums_rm/mp_slums_rm
// Params 0, eflags: 0x0
// Checksum 0x8f37caa7, Offset: 0x430
// Size: 0x1c0
function function_29584e41() {
    e_break_glass = getent("e_break_glass", "targetname");
    if (isdefined(e_break_glass)) {
        e_break_glass util::break_glass(128);
    }
    level flag::wait_till(#"item_world_reset");
    if (util::get_game_type() !== #"spy") {
        var_94c44cac = getdynentarray("spy_special_weapon_stash");
        var_de285f77 = getdynentarray("spy_ammo_stash");
        var_ffd6a2d3 = getdynentarray("spy_equipment_stash");
        var_3c1644b6 = arraycombine(var_94c44cac, var_de285f77);
        var_3c1644b6 = arraycombine(var_3c1644b6, var_ffd6a2d3);
        foreach (dynent in var_3c1644b6) {
            function_e2a06860(dynent, 3);
        }
    }
}

