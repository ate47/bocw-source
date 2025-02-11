#using script_35bcb1965d840fd1;
#using scripts\core_common\array_shared;
#using scripts\core_common\compass;
#using scripts\core_common\load_shared;
#using scripts\core_common\util_shared;

#namespace mp_firebase;

// Namespace mp_firebase/level_init
// Params 1, eflags: 0x20
// Checksum 0xd73eb5b, Offset: 0xe0
// Size: 0x54
function event_handler[level_init] main(*eventstruct) {
    level thread function_876cf680();
    load::main();
    level.var_23e297bc = undefined;
    compass::setupminimap("");
}

// Namespace mp_firebase/mp_firebase
// Params 0, eflags: 0x0
// Checksum 0x52616f9a, Offset: 0x140
// Size: 0xf4
function function_876cf680() {
    var_a139d000 = strtok("sd sd_cdl", " ");
    str_gametype = util::get_game_type();
    if (isinarray(var_a139d000, str_gametype)) {
        hidemiscmodels("cave_cover_01");
        array::delete_all(getentarray("cave_cover_01", "targetname"));
    }
    array::run_all(getentarray("cave_cover_01", "targetname"), &disconnectpaths, undefined, 0);
}

