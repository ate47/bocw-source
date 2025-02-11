#using scripts\core_common\compass;
#using scripts\core_common\flag_shared;
#using scripts\core_common\load_shared;
#using scripts\core_common\util_shared;

#namespace mp_echelon;

// Namespace mp_echelon/level_init
// Params 1, eflags: 0x20
// Checksum 0x7b1a13, Offset: 0xf0
// Size: 0x4c
function event_handler[level_init] main(*eventstruct) {
    load::main();
    compass::setupminimap("");
    level thread function_29584e41();
}

// Namespace mp_echelon/mp_echelon
// Params 0, eflags: 0x0
// Checksum 0x7ac0d021, Offset: 0x148
// Size: 0x170
function function_29584e41() {
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

