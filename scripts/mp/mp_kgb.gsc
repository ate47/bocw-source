// Atian COD Tools GSC CW decompiler test
#using scripts\killstreaks\killstreaks_shared.gsc;
#using scripts\core_common\util_shared.gsc;
#using scripts\core_common\load_shared.gsc;
#using scripts\core_common\flag_shared.gsc;
#using scripts\core_common\compass.gsc;
#using scripts\core_common\callbacks_shared.gsc;

#namespace mp_kgb;

// Namespace mp_kgb/level_init
// Params 1, eflags: 0x20
// Checksum 0x34043a8a, Offset: 0x148
// Size: 0x154
function event_handler[level_init] main(*eventstruct) {
    level.levelkothdisable = [];
    level.levelkothdisable[level.levelkothdisable.size] = spawn("trigger_radius", (600, 1045, -68), 0, 50, 150);
    level.levelkothdisable[level.levelkothdisable.size] = spawn("trigger_radius", (633, 214, 0), 0, 65, 150);
    callback::on_game_playing(&on_game_playing);
    level thread function_29584e41();
    killstreaks::function_257a5f13("straferun", 40);
    killstreaks::function_257a5f13("helicopter_comlink", 75);
    load::main();
    compass::setupminimap("");
    level.var_947cc86b = 1000;
}

// Namespace mp_kgb/mp_kgb
// Params 0, eflags: 0x2 linked
// Checksum 0x6abd59c5, Offset: 0x2a8
// Size: 0x1c
function on_game_playing() {
    hidemiscmodels("intro_gameplay_models");
}

// Namespace mp_kgb/mp_kgb
// Params 0, eflags: 0x2 linked
// Checksum 0xc66b28e6, Offset: 0x2d0
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

