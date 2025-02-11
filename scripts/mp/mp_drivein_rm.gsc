#using scripts\core_common\array_shared;
#using scripts\core_common\compass;
#using scripts\core_common\flag_shared;
#using scripts\core_common\load_shared;
#using scripts\core_common\util_shared;

#namespace mp_drivein_rm;

// Namespace mp_drivein_rm/level_init
// Params 1, eflags: 0x20
// Checksum 0x9d22fb31, Offset: 0x100
// Size: 0x4c
function event_handler[level_init] main(*eventstruct) {
    level thread function_be535c3();
    load::main();
    compass::setupminimap("");
}

// Namespace mp_drivein_rm/mp_drivein_rm
// Params 0, eflags: 0x0
// Checksum 0x171045e3, Offset: 0x158
// Size: 0xf4
function function_be535c3() {
    var_f7d8aaa7 = strtok("sd sd_hc sd_bb sd_cdl sd_cdlpro dem dem_hc", " ");
    gametype = util::get_game_type();
    if (isinarray(var_f7d8aaa7, gametype)) {
        hidemiscmodels("sd_table");
        array::delete_all(getentarray("sd_table", "targetname"));
        return;
    }
    array::run_all(getentarray("sd_table", "targetname"), &disconnectpaths, undefined, 0);
}

