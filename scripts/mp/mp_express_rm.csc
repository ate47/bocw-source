#using script_383bd58abf4b2c2c;
#using scripts\core_common\callbacks_shared;
#using scripts\core_common\load_shared;
#using scripts\core_common\util_shared;

#namespace mp_express_rm;

// Namespace mp_express_rm/level_init
// Params 1, eflags: 0x20
// Checksum 0xa364032f, Offset: 0xb0
// Size: 0x1a4
function event_handler[level_init] main(*eventstruct) {
    setsaveddvar(#"enable_global_wind", 1);
    setsaveddvar(#"wind_global_vector", "88 0 0");
    setsaveddvar(#"wind_global_low_altitude", 0);
    setsaveddvar(#"wind_global_hi_altitude", 10000);
    setsaveddvar(#"wind_global_low_strength_percent", 100);
    callback::on_gameplay_started(&on_gameplay_started);
    if (is_true(getgametypesetting(#"allowmapscripting"))) {
        namespace_af0fb818::function_39da2f0();
    }
    load::main();
    util::waitforclient(0);
    if (is_true(getgametypesetting(#"allowmapscripting"))) {
        namespace_af0fb818::main();
    }
}

// Namespace mp_express_rm/mp_express_rm
// Params 1, eflags: 0x0
// Checksum 0x2c1f26e0, Offset: 0x260
// Size: 0x2c
function on_gameplay_started(*localclientnum) {
    waitframe(1);
    util::function_8eb5d4b0(700, 2.125);
}

