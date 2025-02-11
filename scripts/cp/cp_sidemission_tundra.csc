#using script_1cf5be218e9adb0f;
#using script_4cf7b14ad21db4a0;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\load_shared;
#using scripts\core_common\util_shared;
#using scripts\cp_common\util;

#namespace cp_sidemission_tundra;

// Namespace cp_sidemission_tundra/level_init
// Params 1, eflags: 0x20
// Checksum 0x9fba5277, Offset: 0x130
// Size: 0x12c
function event_handler[level_init] main(*eventstruct) {
    setsaveddvar(#"enable_global_wind", 1);
    setsaveddvar(#"wind_global_vector", "88 0 0");
    setsaveddvar(#"wind_global_low_altitude", 0);
    setsaveddvar(#"wind_global_hi_altitude", 10000);
    setsaveddvar(#"wind_global_low_strength_percent", 100);
    callback::on_spawned(&on_spawned);
    load::main();
    util::waitforclient(0);
    spy_camera::function_cd91501d(70000);
}

// Namespace cp_sidemission_tundra/cp_sidemission_tundra
// Params 1, eflags: 0x0
// Checksum 0x96c5184, Offset: 0x268
// Size: 0xd4
function on_spawned(localclientnum) {
    self endon(#"death", #"disconnect");
    waitframe(1);
    weapons = [];
    weapons[weapons.size] = getweapon(#"tr_longburst_t9", "scope3x", "stalker2", "quickdraw2");
    self thread util::force_stream_weapons(localclientnum, weapons);
    forcestreamxmodel("c_t9_cp_rus_soviet_army_rudnik_body");
    forcestreamxmodel("c_t9_cp_rus_soviet_army_rudnik_head");
}

